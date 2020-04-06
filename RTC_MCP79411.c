/* 
 * File:   RTC_MCP79411.c
 * Author: CEDRIC
 *
 * Created on 06 April 2020, 9:16 PM
 */

#include "mcc_generated_files/mcc.h"

void MCP794x_setTime(uint8_t hour, uint8_t minute, uint8_t second) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS);        //write command
    I2C_Write(RTCSEC);                       //address to start with sequential write
    I2C_Write(decimalToBCD(second |0x80));   //Oscillator enabled
    I2C_Write(decimalToBCD(minute));
    I2C_Write(decimalToBCD(hour &0x1F));     //24-hour format
    I2C_stop();
}

void MCP794x_setDate(uint8_t date, uint8_t weekDay, uint8_t month, uint8_t year) {
    I2C_start();
    I2C_Write(MCP7941x_RTCC_ADDRESS);       //write command
    I2C_Write(RTCWKDAY);                    //address to start with sequential write
    I2C_Write(decimalToBCD(weekDay |0x28)); //Oscillator is enabled and running,Primary power has not been lost,VBAT input is enabled
    I2C_Write(decimalToBCD(date));
    I2C_Write(decimalToBCD(month));         //set as not leap year
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