/* 
 * File:   MCP79411.h
 * Author: CEDRIC
 *
 * Created on 06 April 2020, 9:17 PM
 */

#ifndef MCP79411_H
#define	MCP79411_H

#ifdef	__cplusplus
extern "C" {
#endif

#define MCP7941x_RTCC_ADDRESS 0xDE
#define MCP7941x_EEPROM_ADD   0xAE

/*RTCC Registers/SRAM*/
    /*Time and data*/
#define RTCSEC      0x00
#define RTCMIN      0x01
#define RTCHOUR     0x02
#define RTCWKDAY    0x03
#define RTCDATE     0x04
#define RTCMTH      0x05
#define RTCYEAR     0x06
    
    /*Configuration and Trimming*/
#define CONTROL     0x07
#define OSCTRIM     0x08
#define EEUNLOCK    0x09    //Protected EEPROM Unlock Register (not a physical register)

   /*Alarm 0*/ 
#define ALM0SEC     0x0A
#define ALM0MIN     0x0B
#define ALM0HOUR    0x0C
#define ALM0WKDAY   0x0D
#define ALM0DATE    0x0E
#define ALM0MTH     0x0F
    
    /*Alarm 1*/
#define ALM1SEC     0x11
#define ALM1MIN     0x12
#define ALM1HOUR    0x13
#define ALM1WKDAY   0x14
#define ALM1DATE    0x15
#define ALM1MTH     0x16
    
    /*Power-Fail/Power-Up Timestamps*/
#define PWRDNMIN    0x18
#define PWRDNHOUR   0x19
#define PWRDNDATE   0x1A
#define PWRDNMTH    0x1B
    
#define PWRUPMIN    0x1C
#define PWRUPHOUR   0x1D
#define PWRUPDATE   0x1E
#define PWRUPMTH    0x1F
    

void MCP794x_setTime(uint8_t hour, uint8_t minute, uint8_t second) ;
void MCP794x_setDate(uint8_t date, uint8_t weekDay, uint8_t month, uint8_t year);
void MCP794x_writeRtcc(uint8_t Register, uint8_t value);
void MCP794x_setAlarm(uint8_t alarmMask, uint8_t time);
uint8_t MCP794x_INTF_CLR(void);
uint8_t MCP7941x_read(uint8_t Register);
void MCP794x_writeEEPROM(uint8_t Register, uint8_t data);
uint8_t MCP794x_readEEPROM(uint8_t Register);
double* MCP794x_getID(void);

enum ALARM_MASK {second = 0x00, minute =  0x10, hour = 0x20, dayWk = 0x30, date = 0x40, SMHDD = 0x70};

#ifdef	__cplusplus
}
#endif

#endif	/* MCP79411_H */

