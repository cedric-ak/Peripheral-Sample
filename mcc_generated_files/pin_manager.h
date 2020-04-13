/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.76
        Device            :  PIC18LF46J13
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.00
        MPLAB 	          :  MPLAB X 5.10	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set Button2 aliases
#define Button2_TRIS                 TRISBbits.TRISB0
#define Button2_LAT                  LATBbits.LATB0
#define Button2_PORT                 PORTBbits.RB0
#define Button2_WPU                  WPUBbits.WPUB0
#define Button2_ANS                  ANCON1bits.PCFG12
#define Button2_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define Button2_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define Button2_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define Button2_GetValue()           PORTBbits.RB0
#define Button2_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define Button2_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define Button2_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define Button2_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define Button2_SetAnalogMode()      do { ANCON1bits.PCFG12 = 1; } while(0)
#define Button2_SetDigitalMode()     do { ANCON1bits.PCFG12 = 0; } while(0)

// get/set Led aliases
#define Led_TRIS                 TRISBbits.TRISB5
#define Led_LAT                  LATBbits.LATB5
#define Led_PORT                 PORTBbits.RB5
#define Led_WPU                  WPUBbits.WPUB5
#define Led_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define Led_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define Led_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define Led_GetValue()           PORTBbits.RB5
#define Led_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define Led_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define Led_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define Led_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)

// get/set Button1 aliases
#define Button1_TRIS                 TRISBbits.TRISB7
#define Button1_LAT                  LATBbits.LATB7
#define Button1_PORT                 PORTBbits.RB7
#define Button1_WPU                  WPUBbits.WPUB7
#define Button1_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define Button1_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define Button1_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define Button1_GetValue()           PORTBbits.RB7
#define Button1_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define Button1_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define Button1_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define Button1_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)

// get/set CS1 aliases
#define CS1_TRIS                 TRISCbits.TRISC0
#define CS1_LAT                  LATCbits.LATC0
#define CS1_PORT                 PORTCbits.RC0
#define CS1_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define CS1_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define CS1_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define CS1_GetValue()           PORTCbits.RC0
#define CS1_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define CS1_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)

// get/set SCK1 aliases
#define SCK1_TRIS                 TRISCbits.TRISC3
#define SCK1_LAT                  LATCbits.LATC3
#define SCK1_PORT                 PORTCbits.RC3
#define SCK1_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define SCK1_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define SCK1_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define SCK1_GetValue()           PORTCbits.RC3
#define SCK1_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define SCK1_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)

// get/set SDI1 aliases
#define SDI1_TRIS                 TRISCbits.TRISC4
#define SDI1_LAT                  LATCbits.LATC4
#define SDI1_PORT                 PORTCbits.RC4
#define SDI1_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define SDI1_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define SDI1_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define SDI1_GetValue()           PORTCbits.RC4
#define SDI1_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define SDI1_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)

// get/set SDO1 aliases
#define SDO1_TRIS                 TRISCbits.TRISC5
#define SDO1_LAT                  LATCbits.LATC5
#define SDO1_PORT                 PORTCbits.RC5
#define SDO1_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define SDO1_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define SDO1_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define SDO1_GetValue()           PORTCbits.RC5
#define SDO1_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define SDO1_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)

// get/set SSD1306_RESET aliases
#define SSD1306_RESET_TRIS                 TRISEbits.TRISE2
#define SSD1306_RESET_LAT                  LATEbits.LATE2
#define SSD1306_RESET_PORT                 PORTEbits.RE2
#define SSD1306_RESET_WPU                  WPUEbits.WPUE2
#define SSD1306_RESET_ANS                  ANCON0bits.PCFG7
#define SSD1306_RESET_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define SSD1306_RESET_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define SSD1306_RESET_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define SSD1306_RESET_GetValue()           PORTEbits.RE2
#define SSD1306_RESET_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define SSD1306_RESET_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define SSD1306_RESET_SetPullup()          do { WPUEbits.WPUE2 = 1; } while(0)
#define SSD1306_RESET_ResetPullup()        do { WPUEbits.WPUE2 = 0; } while(0)
#define SSD1306_RESET_SetAnalogMode()      do { ANCON0bits.PCFG7 = 1; } while(0)
#define SSD1306_RESET_SetDigitalMode()     do { ANCON0bits.PCFG7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);


#endif // PIN_MANAGER_H
/**
 End of File
*/