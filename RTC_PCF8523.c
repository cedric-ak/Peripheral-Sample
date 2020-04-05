#include "mcc_generated_files/mcc.h"
#include "PCF8523.h"

void RTC_Init(void) {
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(CONTROL_1);
    I2C_Write(0x80); //12.5pf,RTC time circuits running,RTC time circuits running,24 hour mode is selected, second and Alarm interrupt disabled,no correction interrupt generated
    I2C_stop();

    /*power management register*/
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(CONTROL_3);
    I2C_Write(0x80); //battery switch-over function is enabled in standard mode,battery low detection function is enabled, clear all power management interrupt flags
    I2C_stop();
    
     /*Clockout register*/   
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(TMR_CLKOUT_CTRL);
    I2C_Write(0xF8); //clockout disabled, timer A is disabled,timer B is disabled
    I2C_stop();
}
#ifdef cntDown
void CountDown_Init(uint8_t time, uint8_t timeUnit) { 

    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(CONTROL_2);
    I2C_Write(0x02); //enable time A interrupt count down and clear all interrupt flags
    I2C_stop();
}
#endif

void setTime(uint8_t hour, uint8_t minute, uint8_t second) {
    int Register[4] = {SECONDS, MINUTES, HOURS};
    for (int timeReg = 0; timeReg < 3; timeReg++) {
        I2C_start();
        I2C_Write(SLAVE_ADDRESS);
        I2C_Write(Register[timeReg]);
        if (Register[timeReg] == SECONDS) {
            I2C_Write(decimalToBCD(second)&0x7F); //update seconds
            I2C_stop();
        } else if (Register[timeReg] == MINUTES) {
            I2C_Write(decimalToBCD(minute)&0x7F); //update minute
            I2C_stop();
        } else if (Register[timeReg] == HOURS) {
            I2C_Write(decimalToBCD(hour)&0x7F); //update hour
            I2C_stop();
        }
    }
}

void setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year) {
    int Register[5] = {DAYS, WEEKDAYS, MONTHS, YEARS};
    for (int timeReg = 0; timeReg < 4; timeReg++) {
        I2C_start();
        I2C_Write(SLAVE_ADDRESS);
        I2C_Write(Register[timeReg]);
        if (Register[timeReg] == DAYS) {
            I2C_Write(decimalToBCD(day)&0x7F); // set seconds
            I2C_stop();
        } else if (Register[timeReg] == WEEKDAYS) {
            I2C_Write(decimalToBCD(weekday)&0x7F); // set seconds
            I2C_stop();
        } else if (Register[timeReg] == MONTHS) {
            I2C_Write(decimalToBCD(month)&0x7F); // set seconds
            I2C_stop();
        } else if (Register[timeReg] == YEARS) {
            I2C_Write(decimalToBCD(year)&0x7F); // set seconds
            I2C_stop();
        }
    }
}

void setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay) {
    /*enable alarm interrupt*/
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(CONTROL_1);
    I2C_Write(0x80|0x02); // Alarm interrupt enabled
    I2C_stop();
    
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(alarmReg);
    I2C_Write((minute + hour + weekDay)&0x7F);   //only one alarm can be enabled at the time. set unused alarm value to zero
    I2C_stop();
    
    /*clear alarm flag*/
    I2C_start();
    I2C_Write(SLAVE_ADDRESS);
    I2C_Write(CONTROL_2);
    I2C_Write(0x00); //clear all interrupt flags
    I2C_stop();
}

uint8_t decimalToBCD(int DecValue) {

    return (((DecValue / 10) << 4) | (DecValue % 10));
}

uint8_t BCDtoDecimal(int BCDvalue) {
    return (((BCDvalue >> 4)*10) + (BCDvalue & 0xF));
}