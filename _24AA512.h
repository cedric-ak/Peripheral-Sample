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
    
#define _1BYTE_SIZE  0xff
#define _2BYTES_SIZE 0xffff
#define _4BYTES_SIZE 0Xffffffff
#define _8BYTES_SIZE 0xffffffffffffffff
uint32_t dataOut;

uint8_t EEPROM_24AA512_Read(int addHigh, int addLow);
void EEPROM_24AA512_Write(int addHigh, int AddLow, int data);
uint8_t EEPROM_24AA512_pageWrite(uint8_t page,uint16_t *data);
uint8_t EEPROM_24AA512_pageRead(uint8_t page);
void EEPROM_put(uint8_t HighAddress, uint8_t LowAddress, uint32_t dataWrite);
uint32_t EEPROM_get(uint8_t HighAddress, uint8_t LowAddress, int dataSize);




#ifdef	__cplusplus
}
#endif

#endif	/* _24AA512_H */

