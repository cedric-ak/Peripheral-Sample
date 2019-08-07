/* 
 * File:   MCP9801_Temp_Sensor.c
 * Author: CEDRIC
 *
 * Created on 27 June 2019, 6:17 PM
 */

#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MCP9801_ADDRES_WRITE  0x9E
#define MCP9801_ADDRES_READ   0x9F
#define MCP98001_CONFIG_ADD   0x01
#define MCP98001_TA_ADD       0x00   //ambiant Temperature address

void MCP9801_Init(void);
double MCP9801_get_temp(void);

union{
    uint8_t MSB_LSB[2];
    uint16_t TempData;
}ADC;

void MCP9801_Init(void) {
    I2C_start();
    I2C_Write(MCP9801_ADDRES_WRITE);
    I2C_Write(MCP98001_CONFIG_ADD);
    I2C_Write(0x60); //ADC 12 bit or 0.0625°C resolution
    I2C_stop();

    __delay_ms(10);
    I2C_start();
    I2C_Write(MCP9801_ADDRES_WRITE);
    I2C_Write(MCP98001_TA_ADD);
    I2C_stop();
}


double MCP9801_get_temp(void) {
    double temperature;
    I2C_start();
    I2C_Write(MCP9801_ADDRES_READ);
    recieveEnable();
    while (!SSP2STATbits.BF);
    ADC.MSB_LSB[0] = SSP2BUF;  //MSB Data
    __delay_ms(240);
    while(SSP2CON2bits.ACKSTAT)  //if acknowledge not received stop 
    ADC.MSB_LSB[1] = SSP2BUF;  //LSB Data
    SSP2CON2bits.ACKDT = 1;    //NACK acknowledge
    SSP2CON2bits.ACKEN = 1;
    while(SSP2CON2bits.ACKEN);
    I2C_stop();
    __delay_ms(240);
    temperature = ADC.TempData * pow(2, -4);
    return (uint8_t)temperature;  
}


