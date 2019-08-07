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

void MCP23008_Init(uint8_t portDirection);
void MCP23008_Write(uint8_t data);


void MCP23008_Init(uint8_t portDirection){   //Simular to TRIS register in MCU
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);  //device address
    I2C_Write(0x00);  //GPIO Direction control bit (IODIR Register)
    I2C_Write(portDirection);
    I2C_stop();  
}

void MCP23008_Write(uint8_t data){
    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(0x0A);                  //select slave device LAT register
    I2C_Write(data);                  //write appropriate data to port
    I2C_stop();
}

void MCP23008_loop(void) {
    for (int leftShif = 0; leftShif < 8; leftShif++) {
        MCP23008_Write(0x01<<leftShif);
        __delay_ms(500);
    }
    __delay_ms(1000);

    for (int rightShif = 0; rightShif <8; rightShif++) {
        MCP23008_Write(0x80>>rightShif);
        __delay_ms(500);
    }
    __delay_ms(1000);
}