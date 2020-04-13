/* 
 * File:   MAX31855K.c
 * Author: CEDRIC
 *
 * Created on 09 April 2020, 10:04 PM
 */

#include "mcc_generated_files/mcc.h"

uint32_t MAX31855_Read(void) {
    uint8_t dataRead[5];
    CS1_SetLow();
    __delay_ms(2);
    MAX31_ADC.MAX31855[3] = SPI1_Exchange8bit(0xff); //write dummy data to request slave data into the bus
    MAX31_ADC.MAX31855[2] = SPI1_Exchange8bit(0xff);
    MAX31_ADC.MAX31855[1] = SPI1_Exchange8bit(0xff);
    MAX31_ADC.MAX31855[0] = SPI1_Exchange8bit(0xff);
    __delay_ms(2);
    //EUSART1_itoa(dataRead[index],HEX);

    CS1_SetHigh();
    EUSART1_itoa((MAX31_ADC.rawDate), HEX);
}

