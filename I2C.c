/* 
 * File:   I2C.c
 * Author: CEDRIC
 *
 * Created on June 26, 2019, 10:38 PM
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <pic18lf46j13.h>
#include "mcc_generated_files/device_config.h"
#include "I2C.h"

/*
 * 
 */
extern void EUSART1_Write(uint8_t txData);

void I2C_Init(uint8_t F_clock) {
    TRISDbits.TRISD0   = 1; //SCL2 
    TRISDbits.TRISD1   = 1; //SDA
    SSP2CON1bits.WCOL  = 0; //No collision
    SSP2CON1bits.SSPEN = 1; //Enables the serial port and configures the SDAx and SCLx pins as the serial port pins
    SSP2CON1bits.SSPM  = 0x08; //I2C Master mode enable 0x08;
    SSP2CON2bits.ACKDT = 0; //Acknowledge enable
    SSP2CON2bits.ACKEN = 1; //Acknowledge Sequence Enable 
    SSP2ADD = (_XTAL_FREQ / ((F_clock * 1000) * 4)) - 1; //baud rate equation (I2C clock frenquency)
}

void I2C_Write(uint8_t data) {
    SSP2BUF = data;
    while (!SSP2STATbits.BF); //wait for buffer to be filled up   
    while (!PIR3bits.SSP2IF); //wait for transmission to complete
    PIR3bits.SSP2IF = 0; //clear interrupt flag
    if (SSP2CON2bits.ACKSTAT) { //if acknowledge not received stop transmission process
        I2C_stop();
        return;
    }
}

int I2C_read(int ACK_NACK) {
    SSP2CON2bits.RCEN = 1;
    while (!SSP2STATbits.BF);
    SSP2CON2bits.ACKDT = ACK_NACK;   //ACK = 0, NACK = 1
    while (SSP2CON2bits.ACKEN);
    //return SSP2BUF;
}

void I2C_start(void) {
    SSP2CON2bits.SEN = 1;     //Initiate a start condition
    while (SSP2CON2bits.SEN); //wait start bit to clear
    PIR3bits.SSP2IF = 0;      //clear interrupt flag  
}

void I2C_repeated_Start(void) {
    SSP2CON2bits.RSEN = 1;     //Initiate a repeated start condition
    while (SSP2CON2bits.RSEN); //wait for repeated start condition to complete
    PIR3bits.SSP2IF = 0;
}

void I2C_stop(void) {
    SSP2CON2bits.PEN = 1;     //Initiate a stop condition
    while (SSP2CON2bits.PEN); //wait for stop instruction to complete
    PIR3bits.SSP2IF = 0;      //clear interrupt flag  
}

void I2C_BusSCan(void) {
    for (int address = 0; address < 0xFF; address++) {
        I2C_start();
        I2C_Write(address);
        if (!SSP2CON2bits.ACKSTAT) {
            EUSART1_Write((address)); //print out slave address found on the bus
            address++;                //skip read address
        }
        I2C_stop();
    }
}

void I2C_buffClear(void) {
    I2C_start();
    I2C_Write(0x00);
    I2C_stop();
}