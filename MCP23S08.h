/* 
 * File:   MCP23S08.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:07 PM
 */

#ifndef MCP23S08_H
#define	MCP23S08_H

#ifdef	__cplusplus
extern "C" {
#endif

void MCP23S08Write(uint8_t data);
void MCP23S08_Init(uint8_t portDirection);
void MCP23S08_loop(void);

#define MCP23S08_WriteAddress  0x40
#define MCP23S08_ReadAddress   0x41


#ifdef	__cplusplus
}
#endif

#endif	/* MCP23S08_H */

