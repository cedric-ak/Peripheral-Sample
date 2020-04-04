/* 
 * File:   MCP4131_digital_Pot.c
 * Author: CEDRIC
 *
 * Created on June 25, 2019, 12:34 PM
 */
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
//void MCP4131Write(uint8_t value);
//void MCP4131P_loop(void);

void MCP4131Write(uint8_t value) {
    CS1_SetLow(); //select device
    SPI1_Exchange8bit(0x00); //send write command to Volatile Wiper 0 RAM 
    SPI1_Exchange8bit(value); //data resistor value
    CS1_SetHigh(); //deselect device
}

void MCP4131P_loop(void){
    for(int SetWiper =0; SetWiper <128; SetWiper++){  //increment wiper position to increase voltage output
      MCP4131Write(SetWiper); 
      __delay_ms(200);
    }__delay_ms(1000);
    for (int SetWiper = 128; SetWiper > 0; SetWiper--) { //decrement wiper position to increase voltage output
        MCP4131Write(SetWiper);
    }
    __delay_ms(1000);
}