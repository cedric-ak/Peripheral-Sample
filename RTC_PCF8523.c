#include "mcc_generated_files/mcc.h"
//#include "PCF8523.h"

void RTC_Init(void) {
    /*
     * 12.5pf,RTC time circuits running
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

void setTime(uint8_t hour, uint8_t minute, uint8_t second) {
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

void setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year) {
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

void setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay) {
    PCF8523_write(CONTROL_1, 0x80 | 0x02); // Alarm interrupt enabled
    PCF8523_write(alarmReg, decimalToBCD(minute + hour + weekDay)&0x7F); //only one alarm can be enabled at the time. set unused alarm value to zero
    PCF8523_write(CONTROL_2, 0x00); //clear all alarm interrupt flag (this function disabled WTAIE, CTAIE, CTBIE), 
}

void countDown(uint8_t timeUnit, uint8_t time) {
    PCF8523_write(TMR_CLKOUT_CTRL, 0xFA); //enable timer A pulse interrupt
    PCF8523_write(CONTROL_2, 0x02);       //countdown timer A interrupt is enabled
    PCF8523_write(TMR_A_FREQ_CTRL, timeUnit);
    PCF8523_write(TMR_A_REG, time);       //max 255 in decimal
}

uint8_t rtcRead(uint8_t address) {
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(address);
    I2C_stop();
    I2C_start();
    I2C_Write(SLAVE_ADDRESS|0x01);  //read command
    I2C_read(NACK);
    I2C_stop();
    return BCDtoDecimal(SSP2BUF);   //return time/date in decimal
}

void PCF8523_write(uint8_t regAdd, uint8_t data) {
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(regAdd);
    I2C_Write(data);
    I2C_stop();
}

int rtc_INTF_CLR(int interruptFlag) { //RTC interrupt flags clear   
    PCF8523_write(CONTROL_2, interruptFlag); //clear interrupt flag
    __delay_ms(5);
    return;
}

uint8_t decimalToBCD(int DecValue) {
    return (((DecValue / 10) << 4) | (DecValue % 10));
}

uint8_t BCDtoDecimal(int BCDvalue) {
    return (((BCDvalue >> 4)*10) + (BCDvalue & 0xF));
}