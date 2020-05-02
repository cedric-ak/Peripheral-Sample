/* 
 * File:   MCP3423.c
 * Author: CEDRIC
 *
 * Created on 23 April 2020, 9:50 PM
 */


#include "mcc_generated_files/mcc.h"

uint32_t MCP342x_read(int channel) {

    I2C_start();
    I2C_Write(MCP3424_SLAVE_ADD); //write command
    I2C_Write(0x8C | (channel << 5)); //One shot conversion
    I2C_stop();

    __delay_us(300); //acquisition time
    I2C_start();
    I2C_Write(MCP3424_SLAVE_ADD | 0x01); //read command
    for (int dataIndex = 3; dataIndex > 0; dataIndex--) {
        dataIndex == 1 ? I2C_read(NACK) : I2C_read(ACK);
        MCP342x_ADC.Byte[dataIndex-1] = SSP2BUF;
    }
    MCP342x_ADC.Byte[2] = MCP342x_ADC.Byte[2] >> 6;
    I2C_stop();

    I2C_start();
    I2C_Write(MCP3424_SLAVE_ADD); //write command
    I2C_Write(0x00); //stop conversion
    I2C_stop();
    return ( (MCP342x_ADC.dataRead >> 2)* (15.25 * pow(10, -6))) / 1; //with gain of 1

}

//void EUSART1_ftoa(float intput) {
//    char *buf;
//    int status;
//    buf = ftoa(input, &status);
//    EUSART1_Write_Text(buf, sizeof (buf));
//}

