/* 
 * File:   MCP23009_IO_expender.c
 * Author: CEDRIC
 *
 * Created on June 27, 2019, 1:20 AM
 */
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include <stdlib.h>

void MCP23008_pinMode(int port, int mode) { //mode: input/output
    int dataRead;
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_IODIR);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();

    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_IODIR); //select slave device LAT register
    if (mode == input) {
        I2C_Write(dataRead | (0x01 << port)); //write appropriate data to port low/high 
    } else {
        I2C_Write(dataRead & ~(0x01 << port)); //write appropriate data to port low/high 
    }
    I2C_stop();
}

void MCP23008_Write(int port, int data) {
    int dataRead;
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_OLAT);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();

    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_OLAT); //select slave device LAT register
    if (data == 1) {
        I2C_Write(dataRead | (0x01 << port)); //write appropriate data to port low/high
    } else {
        I2C_Write(dataRead & ~(0x01 << port)); //write appropriate data to port low/high
    }
    I2C_stop();
}

uint8_t MCP23008_read(int port) {
    int dataRead;
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_GPIO);
    I2C_repeated_Start();
    I2C_Write(MCP23008_ReadAddress | 0x01);
    I2C_read(NACK);
    dataRead = (SSP2BUF & (0x01 << port));
    I2C_stop();
    if (dataRead == 0) {
        return 0;
    } else {
        return 1;
    }
}

void MCP23008_pullUp(int port) {
    int dataRead;
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_GPPU);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();

    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_GPPU); //select slave device LAT register
    I2C_Write(dataRead | (0x01 << port));
    I2C_stop();
}

uint8_t MCP23008_ISR(int port, int INT_polarity) {
    int dataRead;

    /*Read GPIO pin interrupt-on-change register*/
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_GPINTEN);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();

    /*Enable GPIO input pin for interrupt-on-change event*/
    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_GPINTEN); //select slave device LAT register
    I2C_Write(dataRead | (0x01 << port));
    I2C_stop();

    /*INTERRUPT CONTROL (INTCON)*/
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_INTCON);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();

    /*INTERRUPT CONTROL (INTCON)*/
    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_INTCON); //select slave device LAT register
    I2C_Write(dataRead | (0x01 << port));
    I2C_stop();

    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_IOCON); //select slave device LAT register
    I2C_Write(INT_polarity);
    I2C_stop();

    /*DEFAULT COMPARE (DEFVAL) REGISTER FOR INTERRUPT-ON-CHANGE*/
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_DEFVAL);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = SSP2BUF;
    I2C_stop();
    
    I2C_start();
    I2C_Write(MCP23008_WriteAddress); //device address
    I2C_Write(MCP23008_DEFVAL);       //select slave device LAT register
    I2C_Write(dataRead & ~(INT_polarity << port));
    I2C_stop();
}

uint8_t portINT_status(int port) {
    /*INTERRUPT CAPTURE (INTCAP) REGISTER, These bits reflect the logic level on the PORT pins at the time of interrupt due to pin*/
    int dataRead;
    I2C_start();
    I2C_Write(MCP23008_WriteAddress);
    I2C_Write(MCP23008_INTCAP);
    I2C_repeated_Start();
    I2C_Write(MCP23008_WriteAddress | 0x01);
    I2C_read(NACK);
    dataRead = (SSP2BUF & (0x01 << port));
    I2C_stop();
    if (dataRead == 0) {
        return 0;
    } else {
        return 1;
    }
}
