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

#define SLAVE_ADDRESS   0xD0   //device write address

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
#define MINUTE_ALARM    0x0A
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

void PCF8523_RTC_Init(void);
void PCF8523_setTime(uint8_t hour, uint8_t minute, uint8_t second);
void PCF8523_setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year);
void PCF8523_countDown(uint8_t timeUnit, uint8_t time);
void PCF8523_setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay);
void PCF8523_write(uint8_t regAdd, uint8_t data);
int PCF8523_rtc_INTF_CLR(int interruptFlag);
uint8_t decimalToBCD(int DecValue);
uint8_t BCDtoDecimal(int BCDvalue);
uint8_t PCF8523_rtcRead(uint8_t address);

enum days { Sun = 0, Mon = 1, Tue = 2, Wed = 3, Thu = 4, Fri = 5, Sat = 6};
enum months {Jan =1, Feb =2, Mar =3, Apr =4, May =5, Jun =6, Jul =7, Aug =8, Sep =9, Oct =10, Nov =11, Dec =12};
enum TMR_SCLK_FREQ {hours = 7, minutes = 3, seconds = 2}; //count down time unit source clock frequency
enum interrupt_Flag {WTAF = 4, CTAF = 2, CTBF = 0};       //watchdog timer, count down timer A, count down timer B

#ifdef	__cplusplus
}
#endif

#endif	/* PCF8523_H */

