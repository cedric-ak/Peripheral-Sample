/* 
 * File:   MCP28003.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:15 PM
 */

#ifndef MCP28003_H
#define	MCP28003_H

#ifdef	__cplusplus
extern "C" {
#endif
#define MCP23008_WriteAddress  0x40    //device slave address
    
#define MCP23008_ReadAddress   0x41
#define MCP23008_IODIR         0x00
#define MCP23008_OLAT          0x0A
#define MCP23008_GPIO          0x09
#define MCP23008_IPOL          0x01
#define MCP23008_GPINTEN       0x02
#define MCP23008_DEFVAL        0x03
#define MCP23008_INTCON        0x04
#define MCP23008_IOCON         0x05
#define MCP23008_GPPU          0x06
#define MCP23008_INTF          0x07
#define MCP23008_INTCAP        0x08

#define input           0x01
#define output          0x00
    /*interrupt polarity*/
#define Active_high     0x04
#define Active_low      0x06
#define fallingEdge     0x00
#define risingEdge      0x01

    void MCP23008_Write(int port, int data);
    void MCP23008_pinMode(int port, int mode);
    void MCP23008_pullUp(int port);
    uint8_t MCP23008_read(int port);
    uint8_t MCP23008_ISR_EN(int port);
    uint8_t portINT_status(int port);
    int MCP23008_reagReg(int regAdd);
    void MCP23008_ISR_polarity(int port, int INTedge);
    void MCP23008_INTclear(void);

#ifdef	__cplusplus
}
#endif

#endif	/* MCP28003_H */

