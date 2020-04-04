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
#define MCP23008_WriteAddress  0x40
#define MCP23008_ReadAddress   0x41
#define MCP23008_IODIR         0x00
#define MCP23008_OLAT          0x0A
#define MCP23008_GPIO          0x09

void MCP23008_Init(uint8_t portDirection);
void MCP23008_Write(uint8_t data);
void MCP23008_loop(void);
char MCP23008_read(void);


#ifdef	__cplusplus
}
#endif

#endif	/* MCP28003_H */

