/* 
 * File:   MCP9801.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:18 PM
 */

#ifndef MCP9801_H
#define	MCP9801_H

#ifdef	__cplusplus
extern "C" {
#endif

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


#ifdef	__cplusplus
}
#endif

#endif	/* MCP9801_H */

