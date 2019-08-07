/* 
 * File:   MCP23S08_IO_expender.c
 * Author: CEDRIC
 *
 * Created on June 25, 2019, 1:05 PM
 */
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

void MCP23S08Write(uint8_t data);
void MCP23S08_Init(uint8_t portDirection);

#define MCP23S08_WriteAddress  0x40
#define MCP23S08_ReadAddress   0x41

void MCP23S08_Init(uint8_t portDirection) {
    CS1_SetLow();
    SPI1_Exchange8bit(MCP23S08_WriteAddress); //device write operation address
    SPI1_Exchange8bit(0x00); //control the I/O direction IODIR Register
    SPI1_Exchange8bit(portDirection); //I/O 8bit 
    __delay_ms(2);
    CS1_SetHigh();
}

void MCP23S08Write(uint8_t data) {
    CS1_SetLow();
    SPI1_Exchange8bit(MCP23S08_WriteAddress); //device write operation instruction
    SPI1_Exchange8bit(0x0A);                  //GPIO LAT address 
    SPI1_Exchange8bit(data);
    __delay_ms(2);
    CS1_SetHigh();
}


void MCP23S08_loop(void){
    for(int leftShif = 0; leftShif <8; leftShif++){
      MCP23S08Write(0x01<<leftShif);
      __delay_ms(500);
    }__delay_ms(1000);
    
    for(int rightShif = 0; rightShif <8; rightShif++){
        MCP23S08Write(0x80 >> rightShif);
        __delay_ms(500);
    }__delay_ms(1000);
}
