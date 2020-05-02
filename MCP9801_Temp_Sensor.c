/* 
 * File:   MCP9801_Temp_Sensor.c
 * Author: CEDRIC
 *
 * Created on 27 June 2019, 6:17 PM
 */

#include "mcc_generated_files/mcc.h"

void MCP9801_Init(void) {
    I2C_start();
    I2C_Write(MCP9801_ADDRES_WRITE);
    I2C_Write(MCP9801_CONFIG_ADD);
    I2C_Write(0x60); //one-shot disabled, ADC 12 bit resolution, fault queue default, active low(default), COMP/INT power up default, shutdown disabled
    I2C_stop();
}


int8_t MCP9801_TempRead(void){
    I2C_start();
    I2C_Write(MCP9801_ADDRES_WRITE);   //write command
    I2C_Write(MCP9801_TA_ADD);
    I2C_repeated_Start();
    I2C_Write(MCP9801_ADDRES_WRITE |0x01);   //read command
    I2C_read(ACK);
    ADC.MSB_LSB[1] = SSP2BUF;  //MSB data
    I2C_read(NACK);
    ADC.MSB_LSB[0] = SSP2BUF; //LSB data
    I2C_stop();
    return (ADC.TempData * pow(2, -4)*0.0625);      //return converted temperature
}


