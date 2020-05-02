/*
 * File:   MCP3423.h
 * Author: CEDRIC
 *
 * Created on 23 April 2020, 10:02 PM
 */

#ifndef MCP3423_H
#define	MCP3423_H

#ifdef	__cplusplus
extern "C" {
#endif
#define MCP3424_SLAVE_ADD   0xD0

    /*MCP3424 sample rate bit available option*/
#define MCP342xx_12BITS     0x00
#define MCP342xx_14BITS     0x01
#define MCP342xx_16BITS     0x10
#define MCP342xx_18BITS     0x11

    /*ADC Channel */
#define MCP342x_CH1         0x00   //(Default channel)
#define MCP342x_CH2         0x01
#define MCP342x_CH3         0x10   //cahnnel 2 and 3 only available for MCP3424 
#define MCP342x_CH4         0x11

    /*PGA Gain selection*/
#define MCP342x_GAIN_X1     0x00   //(Default gain)
#define MCP342x_GAIN_X2     0x01
#define MCP342x_GAIN_X4     0x10
#define MCP342x_GAIN_X8     0x11

uint32_t MCP342x_read(int channel);

    union {
        char Byte[2];
        uint32_t dataRead;
    } MCP342x_ADC;


#ifdef	__cplusplus
}
#endif

#endif	/* MCP3423_H */

