/* 
 * File:   PCF8523.h
 * Author: CEDRIC
 *
 * Created on 05 April 2020, 4:34 PM
 */

#ifndef PCF8523_H
#define	PCF8523_H

#ifdef	__cplusplus
extern "C" {
#endif

#define SLAVE_ADDRESS   0xD0

    /*Control register*/
#define CONTROL_1       0X00
#define CONTROL_2       0x01
#define CONTROL_3       0x02
    /*Time and date Registers*/
#define SECONDS         0x03
#define MINUTES         0x04
#define HOURS           0x05
#define DAYS            0x06
#define WEEKDAYS        0x07
#define MONTHS          0x08
#define YEARS           0x09
    /*Alarm Registers*/
#define MINUTES_ALARM   0x0A
#define HOUR_ALARM      0x0B
#define DAY_ALARM       0x0C
#define WEEKDAY_ALARM   0x0D
    /*Offset Register*/
#define OFFSET          0x0E
    /*CLOCKOUT & Timer Register*/
#define TMR_CLKOUT_CTRL 0x0F
#define TMR_A_FREQ_CTRL 0x10
#define TMR_A_REG       0x11
#define TMR_B_FREQ_CTRL 0x12
#define TMR_B_REG       0x13

void RTC_Init(void);
void setTime(uint8_t hour, uint8_t minute, uint8_t second);
void setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year);
void CountDown_Init(uint8_t time, uint8_t timeUnit);
void setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay);
uint8_t decimalToBCD(int DecValue);
uint8_t BCDtoDecimal(int BCDvalue);

enum day { Sun = 0, Mon = 1, Tue = 2, Wed = 3, Thu = 4, Fri = 5, Sat = 6};
enum month {Jan =1, Feb =2, Mar =3, Apr =4, May =5, Jun =6, Jul =7, Aug =8, Sep =9, Oct =10, Nov =11, Dec =12};




#ifdef	__cplusplus
}
#endif

#endif	/* PCF8523_H */

