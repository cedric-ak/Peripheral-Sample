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

#define MCP9801_ADDRES_WRITE 0x90
#define MCP9801_CONFIG_ADD   0x01   //Configuration register
#define MCP9801_TA_ADD       0x00   //Ambiant Temperature address
#define MCP9801_THYST        0x10   //Temperature Hysteresis register (
#define MCP9801_TSET         0x11   //Temperature Limit-set register

void MCP9801_Init(void);
uint8_t MCP9801_TempRead(void);

union{
    uint8_t MSB_LSB[2];
    uint16_t TempData;
}ADC;


#ifdef	__cplusplus
}
#endif

#endif	/* MCP9801_H */

