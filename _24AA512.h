/* 
 * File:   _24AA512.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:42 PM
 */

#ifndef _24AA512_H
#define	_24AA512_H

#ifdef	__cplusplus
extern "C" {
#endif

#define slaveAdd 0xA0

uint8_t EEPROM_24AA512_Read(int addHigh, int addLow);
void EEPROM_24AA512_Write(int addHigh, int AddLow, int data);
uint8_t EEPROM_24AA512_pageWrite(uint8_t page,uint16_t data);
uint8_t EEPROM_24AA512_pageRead(uint8_t page);





#ifdef	__cplusplus
}
#endif

#endif	/* _24AA512_H */

