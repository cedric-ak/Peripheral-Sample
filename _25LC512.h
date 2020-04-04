/* 
 * File:   _25LC512.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:12 PM
 */

#ifndef _25LC512_H
#define	_25LC512_H

#ifdef	__cplusplus
extern "C" {
#endif

char sData[10];
void EEPROM_25LC512_Write(uint8_t address, uint8_t data);
uint8_t EEPROM_25LC512_Read(uint8_t address);
void chipErase(void);
void rStatus_Reg(void);
void wStatus_Reg(void);
void EEPROM_25LC512_loop(void);

//#define _WRITE_BYTE
#define _WRITE_PAGE
#define _READ_PAGE
//#define _READ_BYTE 

#define WRITE                  0x02     //write
#define READ                   0x03     //read
#define WREN                   0x06     //write enable
#define WRSR                   0x01     //write status register
#define RDSR                   0x05     //read status regisger
#define CE                     0xC7     //chip Erase


#ifdef	__cplusplus
}
#endif

#endif	/* _25LC512_H */

