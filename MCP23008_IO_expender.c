/* 
 * File:   MCP23009_IO_expender.c
 * Author: CEDRIC
 *
 * Created on June 27, 2019, 1:20 AM
 */
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
#define MCP23008_WriteAddress  0x40
#define MCP23008_ReadAddress   0x41
#define MCP23008_IODIR         0x00
#define MCP23008_OLAT          0x0A
#define MCP23008_GPIO          0x09

void MCP23008_Init(uint8_t portDirection);
void MCP23008_Write(uint8_t data);


void MCP23008_Init(uint8_t portDirection){   //Simular to TRIS register in MCU
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);  //device address
    I2C_Write(MCP23008_IODIR);  //GPIO Direction control register address  (IODIR Register)
    I2C_Write(portDirection);   //write PORT direction input/output
    I2C_stop();            
}

void MCP23008_Write(uint8_t data){
    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_OLAT);         //select slave device LAT register
    I2C_Write(data);                  //write appropriate data to port low/high
    I2C_stop();
}

char MCP23008_read(void){
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_GPIO);
    I2C_repeated_Start();
    I2C_Write(MCP23008_ReadAddress);
    I2C_read(ACK);
    I2C_stop();
}
void MCP23008_loop(void) {
MCP23008_Write(0x7);
//    for (int leftShif = 0; leftShif < 8; leftShif++) {
//        MCP23008_Write(0x01<<leftShif);
//        __delay_ms(500);
//    }
//    __delay_ms(1000);
//
//    for (int rightShif = 0; rightShif <8; rightShif++) {
//        MCP23008_Write(0x80>>rightShif);
//        __delay_ms(500);
//    }
//    __delay_ms(1000);
}