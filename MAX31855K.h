/* 
 * File:   MAX31855K.h
 * Author: CEDRIC
 *
 * Created on 09 April 2020, 10:24 PM
 */

#ifndef MAX31855K_H
#define	MAX31855K_H

#ifdef	__cplusplus
extern "C" {
#endif

uint32_t MAX31855_Read(void);

union {
    char MAX31855[4];
    uint32_t rawDate;
}MAX31_ADC;

#ifdef	__cplusplus
}
#endif

#endif	/* MAX31855K_H */

