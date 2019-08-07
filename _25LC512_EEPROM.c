/* 
 * File:   _2A1024_EEPROM.c
 * Author: CEDRIC
 *
 * Created on June 25, 2019, 1:29 PM
 */
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

char sData[10];
void EEPROM_25LC512_Write(uint8_t address, uint8_t data);
uint8_t EEPROM_25LC512_Read(uint8_t address);
void chipErase(void);
void rStatus_Reg(void);
void wStatus_Reg(void);

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

//extern int d_Zise;

void EEPROM_25LC512_Write(uint8_t address, uint8_t data) {
    CS1_SetLow();
    SPI1_Exchange8bit(WREN);
    CS1_SetHigh();

    CS1_SetLow();
    __delay_ms(2);
    SPI1_Exchange8bit(WRITE);
    SPI1_Exchange8bit(address >> 8);
    SPI1_Exchange8bit(address);
    SPI1_Exchange8bit(data);
    __delay_ms(2);
#ifdef _WRITE_BYTE
      CS1_SetHigh();     
#endif
}

uint8_t EEPROM_25LC512_Read(uint8_t address) {
    CS1_SetLow();
    __delay_ms(2);
    SPI1_Exchange8bit(READ);
    SPI1_Exchange8bit(address >> 8);
    SPI1_Exchange8bit(address);
    SPI1_Exchange8bit(0xff); //write dummy data
    __delay_ms(2);
#ifdef _READ_BYTE
      CS1_SetHigh();
#endif
}

void chipErase(void) {
    CS1_SetLow();
    SPI1_Exchange8bit(WREN);
    CS1_SetHigh();
    __delay_ms(2);
    CS1_SetLow();
    __delay_ms(2);
    SPI1_Exchange8bit(CE);
    CS1_SetHigh();
}

void rStatus_Reg(void) {  //read status register
    CS1_SetLow();
    SPI1_Exchange8bit(RDSR);
    SPI1_Exchange8bit(0xff);
    CS1_SetHigh();
    __delay_ms(2);
}

void wStatus_Reg(void) {  // write status register
    CS1_SetLow();
    SPI1_Exchange8bit(WRSR);
    SPI1_Exchange8bit(0x00);
    CS1_SetHigh();
    __delay_ms(5);
}

void EEPROM_25LC512_loop(void) {
    if (Button1_GetValue()) {
        if (Button1_GetValue()) { //button write page data to EEPROM
            EEPROM_25LC512_Write(0x12, (0x00));
            for (int d_Zise = 0; d_Zise < 128; d_Zise++) {
                SPI1_Exchange8bit(0x00 + d_Zise);
            }
            CS1_SetHigh();
        }
        while (Button1_GetValue());
    }
    if (Button2_GetValue()) {       //button press for read page from EEPROM
        if (Button2_GetValue()) {
            EEPROM_25LC512_Read(0x12);
            for (int d_Zise = 0; d_Zise < 128; d_Zise++) {
                SPI1_Exchange8bit(0x12 + d_Zise);
            }
            CS1_SetHigh();
        }
        while (Button2_GetValue());
    }
}