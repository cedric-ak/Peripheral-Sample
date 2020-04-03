/* 
 * File:   Interrupt.c
 * Author: CEDRIC
 *
 * Created on June 26, 2019, 10:06 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <pic18lf46j13.h>

/*
 * 
 */
void interrupt_Init(void){
    INTCONbits.GIE  = 1;   //Enable global interrupt
    INTCONbits.PEIE = 1;   //enable peripheral Interrupt
    PIE3bits.SSP2IE = 1;   //Enable Master Synchronous Serial Port 2 Interrupt
    PIR3bits.SSP2IF = 0;   //clear Master Synchronous Serial Port 2 Interrupt Flag   
}
