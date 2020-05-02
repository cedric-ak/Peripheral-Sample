#include "mcc_generated_files/mcc.h"

/**********************************************************
**Name:     PCF8523_RTC_Init
**Function: Initializes RTC chip
**Input:    none
**Output:   none
**note:     This function is to be called once prior running RTC
**********************************************************/
void PCF8523_RTC_Init(void) {
    /*
     * 12.5pf
     * RTC time circuits running
     * 24 hour mode is selected
     * second and Alarm interrupt disabled
     * no correction interrupt generated
     */
    PCF8523_write(CONTROL_1, 0x80);

    /*power management register
     * battery switch-over function is enabled in standard mode
     * battery low detection function is enabled
     * clear all power management interrupt flags
     */
    PCF8523_write(CONTROL_3, 0x80);

    /*Clockout register
     * clockout disabled
     * timer A and B disabled
     */
    PCF8523_write(TMR_CLKOUT_CTRL, 0xF8);
}

/**********************************************************
**Name:     PCF8523_setTime
**Function: Set time of the day 
**Input:    hour/minute and seconds in decimal
**Output:   none
**note:     This function is to be called once prior running RTC
**********************************************************/
void PCF8523_setTime(uint8_t hour, uint8_t minute, uint8_t second) {
    int Register[4] = {SECONDS, MINUTES, HOURS};
    for (int timeReg = 0; timeReg < 3; timeReg++) {
        if (Register[timeReg] == SECONDS)
            PCF8523_write(Register[timeReg], decimalToBCD(second)&0x7F);
        else if (Register[timeReg] == MINUTES)
            PCF8523_write(Register[timeReg], decimalToBCD(minute)&0x7F);
        else if (Register[timeReg] == HOURS)
            PCF8523_write(Register[timeReg], decimalToBCD(hour)&0x7F);
    }
}

/**********************************************************
**Name:     PCF8523_setDate
**Function: Set date of the year 
**Input:    day, week day, month, year in decimal
**Output:   none
**note:     week day and months are predefined in header file
 *          e.g: PCF8523_setDate(09, Tue, Mar, 21); Tuesday 09/03/2021 
**********************************************************/
void PCF8523_setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year) {
    uint8_t Register[5] = {DAYS, WEEKDAYS, MONTHS, YEARS};
    for (int timeReg = 0; timeReg < 4; timeReg++) {
        switch (Register[timeReg]) {
            case DAYS:PCF8523_write(Register[timeReg], decimalToBCD(day)&0x7F);
                break;
            case WEEKDAYS:PCF8523_write(Register[timeReg], decimalToBCD(weekday)&0x7F);
                break;
            case MONTHS:PCF8523_write(Register[timeReg], decimalToBCD(month)&0x7F);
                break;
            case YEARS:PCF8523_write(Register[timeReg], decimalToBCD(year)&0x7F);
                break;
        }
    }
}

/**********************************************************
**Name:     PCF8523_setAlarm
**Function: RTC Initialize alarm in hour/minutes or seconds
**Input:    Alarm register (defined in Header file), time variable
**Output:   none
**note:     One alarm can be used at the time, none used alarm set value to 0 in software, eg: PCF8523_setAlarm(MINUTE_ALARM, 15, 0 ,0 ,0);
**********************************************************/
void PCF8523_setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay) {
    PCF8523_write(CONTROL_1, 0x80 | 0x02);                               // Alarm interrupt enabled
    PCF8523_write(alarmReg, decimalToBCD(minute + hour + weekDay)&0x7F); //only one alarm can be enabled at the time. set unused alarm value to zero
    PCF8523_write(CONTROL_2, 0x00);                                      //clear all alarm interrupt flag (this function disabled WTAIE, CTAIE, CTBIE), 
}

/**********************************************************
**Name:     PCF8523_countDown
**Function: RTC Initialize count down of timer A
**Input:    time unit(hours, minutes, seconds), time in decimal format
**Output:   none
**note:     time variable maximum 255, e.g:PCF8523_countDown(hours, 2); 
            interrupt generated every 2 hours. interrupt flag must be cleared in software 
**********************************************************/
void PCF8523_countDown(uint8_t timeUnit, uint8_t time) {
    PCF8523_write(TMR_CLKOUT_CTRL, 0xFA); //enable timer A pulse interrupt
    PCF8523_write(CONTROL_2, 0x02);       //countdown timer A interrupt is enabled
    PCF8523_write(TMR_A_FREQ_CTRL, timeUnit);
    PCF8523_write(TMR_A_REG, time);       //max 255 in decimal
}

/**********************************************************
**Name:     PCF8523_rtcRead
**Function: Read RTC registers, can be used to read and return time
**Input:    Desired register address 
**Output:   Returns 1 byte unsigned value from register 
**note:     this function reads time/date (pass the address of desired variable to read) 
            e.g: PCF8523_rtcRead(HOURS);  returns current hour in decimal
**********************************************************/
uint8_t PCF8523_rtcRead(uint8_t address) {      
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(address);
    I2C_stop();
    I2C_start();
    I2C_Write(SLAVE_ADDRESS|0x01);  //read command
    I2C_read(NACK);
    I2C_stop();
    return BCDtoDecimal(SSP2BUF);   
}

/**********************************************************
**Name:     PCF8523_rtc_INTF_CLR
**Function: RTC interrupt flags clear
**Input:    watchdog timer INT flag (WTAF), count down timer A INT flag (CTAF), count down timer B INT flag(CTBF) 
**Output:   
**note:     watchdog timer and count down timer B interrupt not configured in this library
**********************************************************/
int PCF8523_rtc_INTF_CLR(int interruptFlag) {    
    PCF8523_write(CONTROL_2, interruptFlag); 
    __delay_ms(5);
    return;
}

/**********************************************************
**Name:     PCF8523_write
**Function: write to register 
**Input:    register address and data to be written
**Output:   
**note:     
**********************************************************/
void PCF8523_write(uint8_t regAdd, uint8_t data) {
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(regAdd);
    I2C_Write(data);
    I2C_stop();
}

uint8_t decimalToBCD(int DecValue) {
    return (((DecValue / 10) << 4) | (DecValue % 10));
}

uint8_t BCDtoDecimal(int BCDvalue) {
    return (((BCDvalue >> 4)*10) + (BCDvalue & 0xF));
}