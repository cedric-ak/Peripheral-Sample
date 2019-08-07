/* 
 * File:   I2C.h
 * Author: CEDRIC
 *
 * Created on June 27, 2019, 12:16 AM
 */

#ifndef I2C_H
#define	I2C_H

void I2C_Init(uint8_t frequency);
void I2C_Write(uint8_t data);

void I2C_stop(void);
void I2C_start(void);
void I2C_repeated_Start(void);
void recieveEnable(void);
#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* I2C_H */

