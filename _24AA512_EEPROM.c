/* 
 * File:   _24AA512_EEPROM.c
 * Author: CEDRIC
 *
 * Created on 07 August 2019, 10:19 PM
 */

#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

void EEPROM_24AA512_Write(int addHigh, int AddLow, int data) {
    I2C_start();
    I2C_Write(slaveAdd); //write command
    I2C_Write(addHigh);
    I2C_Write(AddLow);
    I2C_Write(data);
    I2C_stop();
}

uint8_t EEPROM_24AA512_Read(int addHigh, int addLow) {
    I2C_start();
    I2C_Write(slaveAdd); //write command
    I2C_Write(addHigh);
    I2C_Write(addLow);
    I2C_repeated_Start();
    I2C_Write(slaveAdd | 0x01);
    I2C_read(NACK);
    I2C_stop();
}

uint8_t EEPROM_24AA512_pageWrite(uint8_t page, uint16_t data) {
    uint16_t address = (page * pow(2, 7) - pow(2, 7));
    I2C_start();
    I2C_Write(slaveAdd); //write command
    I2C_Write(address >> 8); //address high
    I2C_Write((address - (address >> 8)*256)); //address low
    for (int index = 0; index < 128; index++) {
        I2C_Write(data);
    }
    I2C_stop();
}

uint8_t EEPROM_24AA512_pageRead(uint8_t page) {
    uint16_t address = (page * pow(2, 7) - pow(2, 7));
    I2C_start();
    I2C_Write(slaveAdd);              //write command
    I2C_Write(address >> 8);          //address high
    I2C_Write((address - (address >> 8)*256)); //address low
    I2C_repeated_Start();
    I2C_Write(slaveAdd | 0x01);      //read command
    for (int index = 0; index < 128; index++) {
        I2C_read(ACK);
        EUSART1_Write(SSP2BUF);
    }
    I2C_read(NACK);
    I2C_stop();
}