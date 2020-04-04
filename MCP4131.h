/* 
 * File:   MCP4131.h
 * Author: CEDRIC
 *
 * Created on 04 April 2020, 2:04 PM
 */

#ifndef MCP4131_H
#define	MCP4131_H

#ifdef	__cplusplus
extern "C" {
#endif

void MCP4131Write(uint8_t value);
void MCP4131P_loop(void);


#ifdef	__cplusplus
}
#endif

#endif	/* MCP4131_H */

