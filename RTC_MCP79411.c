/* 
 * File:   RTC_MCP79411.c
 * Author: CEDRIC
 *
 * Created on 06 April 2020, 9:16 PM
 */

#include "mcc_generated_files/mcc.h"

/**********************************************************
 **Name:     MCP7941x set time
 **Function: Initialize and set current MCP7941x time 
 **Input:    hour, minutes, second 
 **Output:   none
 **Note:     time is set in decimal 24hr format (HH:MM:SS)
 **********************************************************/
void MCP794x_setTime(uint8_t hour, uint8_t minute, uint8_t second) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS); //write command
    I2C_Write(RTCSEC); //address to start with sequential write
    I2C_Write(decimalToBCD(second | 0x80)); //Oscillator enabled
    I2C_Write(decimalToBCD(minute));
    I2C_Write(decimalToBCD(hour & 0x1F)); //24-hour format
    I2C_stop();
}

/**********************************************************
 **Name:     MCP7941x set Date
 **Function: Initialize and set current MCP7941x date
 **Input:    date, day of the week, month, year (DD/DW/MM/YY)
 **Output:   none 
 **********************************************************/
void MCP794x_setDate(uint8_t date, uint8_t weekDay, uint8_t month, uint8_t year) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS); //write command
    I2C_Write(RTCWKDAY); //address to start with sequential write
    I2C_Write(decimalToBCD(weekDay | 0x28)); //Oscillator is enabled and running,Primary power has not been lost,VBAT input is enabled
    I2C_Write(decimalToBCD(date));
    I2C_Write(decimalToBCD(month)); //set as not leap year
    I2C_Write(decimalToBCD(year));
    I2C_stop();
}

void MCP794x_writeRtcc(uint8_t Register, uint8_t value) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS);
    I2C_Write(Register);
    I2C_Write(value);
    I2C_stop();
}

/**********************************************************
 **Name:     MCP7941x set Alarm
 **Function: Initialize and set current MCP7941x alarm register
 **Input:    alarm mask(second, minute, hour, dayWk, date,  SMHDD), time variable 
 **Output:   none
 **Note:     alarm in hour is set in decimal 24hr format 
 **********************************************************/
void MCP794x_setAlarm(uint8_t alarmMask, uint8_t time) {
    MCP794x_writeRtcc(ALM0WKDAY, 0x00); //Asserted output state of MFP is a logic low level. falling edge interrupt, 
    MCP794x_writeRtcc(ALM0WKDAY, alarmMask); //chose alarm mask 
    //  MCP794x_INTF_CLR();                     //clear interrupt flag   --->//this line causing bugs
    switch (alarmMask) {
        case second:MCP794x_writeRtcc(ALM0SEC, decimalToBCD(time));
            break;
        case minute:MCP794x_writeRtcc(ALM0MIN, decimalToBCD(time));
            break;
        case hour:MCP794x_writeRtcc(ALM0HOUR, (decimalToBCD(time)) & 0xBF);
            break;
        case dayWk:MCP794x_writeRtcc(ALM0WKDAY, (decimalToBCD(time)) >> 6);
            break;
        case date:MCP794x_writeRtcc(ALM0DATE, decimalToBCD(time));
            break;
        case SMHDD:
            MCP794x_writeRtcc(ALM0SEC, decimalToBCD(time));
            MCP794x_writeRtcc(ALM0MIN, decimalToBCD(time));
            MCP794x_writeRtcc(ALM0HOUR, (decimalToBCD(time)) & 0xBF);
            MCP794x_writeRtcc(ALM0WKDAY, (decimalToBCD(time)) >> 6);
            MCP794x_writeRtcc(ALM0DATE, decimalToBCD(time));
            MCP794x_writeRtcc(ALM0MTH, decimalToBCD(time));
            break;
    }
    MCP794x_writeRtcc(CONTROL, 0x10); //enable alarm 0 module 
}

/**********************************************************
 **Name:     MCP7941x write EEPROM
 **Function: write data to EEPROM
 **Input:    EEPROM address location and data to be written 8bit
 **Output:   none
 **********************************************************/
void MCP794x_writeEEPROM(uint8_t Register, uint8_t data) {
    I2C_start();
    I2C_Write(MCP7941x_EEPROM_ADD);
    I2C_Write(Register);
    I2C_Write(data);
    I2C_stop();
    __delay_ms(10);
}

/**********************************************************
 **Name:     MCP7941x read EEPROM 
 **Function: read EEPROM data
 **Input:    EEPROM read address location 
 **Output:   none
 **********************************************************/
uint8_t MCP794x_readEEPROM(uint8_t Register) {
    I2C_start();
    I2C_Write(MCP7941x_EEPROM_ADD);
    I2C_Write(Register);
    I2C_repeated_Start();
    I2C_Write(MCP7941x_EEPROM_ADD | 0x01); //read command
    I2C_read(NACK);
    I2C_stop();
    return SSP2BUF;
}

/**********************************************************
 **Name:     MCP7941x get EEPROM 
 **Function: read multiple byte of EEPROM data 
 **Input:    EEPROM read address location and number of byte 
 **Output:   data read
 **********************************************************/
uint32_t MCP794x_getEEPROM(int address, int dataSize){
  dataOut = 0;
  for(int index = 0; index < dataSize; index++){
    dataOut += MCP794x_readEEPROM(address + index) * pow(256,index);
  }
    return dataOut;
}

/**********************************************************
 **Name:     MCP7941x put EEPROM 
 **Function: write multiple byte of EEPROM data 
 **Input:    EEPROM read address location and number of byte 
 **Output:   data read
 **********************************************************/
void MCP794x_putEEPROM(uint8_t address, uint32_t dataWrite, uint8_t byteNumb){
    
    for(int index = 0; index < byteNumb; index++){   //clear address for x number of bytes
      MCP794x_writeEEPROM((address + index), (0xff >> (index * 8)));
   }
     
 if(dataWrite <= _1BYTE_SIZE){
    MCP794x_writeEEPROM(address, dataWrite);
 }else if((dataWrite > _1BYTE_SIZE) && (dataWrite <= _2BYTES_SIZE)){
   for(int index = 0; index < 2; index++){
      MCP794x_writeEEPROM((address + index), (dataWrite >> (index * 8)));
   }
 }else if(dataWrite > _2BYTES_SIZE && dataWrite <= _4BYTES_SIZE){
   for(int index = 0; index < 4; index++){
      MCP794x_writeEEPROM((address + index), (dataWrite >> (index * 8)));
   }
 }else{
      for(int index = 0; index < 8; index++){
      MCP794x_writeEEPROM((address + index), (dataWrite >> (index * 8)));
   }
 }
}

/**********************************************************
 **Name:     MCP7941x get ID
 **Function: reads and print MCP7941x unique ID
 **Input:    none
 **Output:   return 8byte Device unique ID (read data sheet for UID length);
 **********************************************************/
double* MCP794x_getID(void) {
    char UID[10];
    I2C_start();
    I2C_Write(MCP7941x_EEPROM_ADD);
    I2C_Write(0xf0);
    I2C_repeated_Start();
    I2C_Write(MCP7941x_EEPROM_ADD | 0x01); //read command
    for (int index = 0; index < 8; index++) {
        I2C_read(ACK);
        UID[index] = SSP2BUF;
        /*if (UID[index] < 16)
//        EUSART1_Write_Text("0", 2);       //print out UID on uart terminal
//        EUSART1_itoa(UID[index], HEX);*/
    }
    //    EUSART1_Write_Text("\r", 2);
    I2C_read(NACK);
    I2C_stop();

    return UID;
}

uint8_t MCP794x_INTF_CLR(void) {
    MCP794x_writeRtcc(ALM0WKDAY, MCP7941x_read(ALM0WKDAY)& 0xF5);
    __delay_ms(10);
}

/**********************************************************
 **Name:     MCP7941x read 
 **Function: read MCP7941x RTCC time/date and registers 
 **Input:    desired register to read
 **Output:   none
 **********************************************************/
uint8_t MCP7941x_read(uint8_t Register) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS);
    I2C_Write(Register);
    I2C_repeated_Start();
    I2C_Write(MCP7941x_RTCC_ADDRESS | 0x01); //read command
    I2C_read(NACK);
    return SSP2BUF;
}