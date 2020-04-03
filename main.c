/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.76
        Device            :  PIC18LF46J13
        Driver Version    :  2.00
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

#include "mcc_generated_files/mcc.h"
#include <string.h>

#define Input                  0xFF
#define Output                 0x00

extern void MCP4131Write(uint8_t value);
extern void MCP4131P_loop(void);
extern void MCP23S08Write(uint8_t data);
extern void MCP23S08_Init(uint8_t portDirection);
extern void MCP23S08_loop(void);


extern void EEPROM_25LC512_Write(uint8_t address, uint8_t data);
extern uint8_t EEPROM_25LC512_Read(uint8_t address);
extern void chipErase(void);
extern void rStatus_Reg(void);
extern void wStatus_Reg(void);
void EEPROM_25LC512_loop(void);

extern void MCP23008_Init(uint8_t portDirection);
extern void MCP23008_Write(uint8_t data);
extern void MCP23008_loop(void);
extern char MCP23008_read(void);

extern void MCP9801_Init(void);
extern double MCP9801_get_temp(void);

extern void interrupt_Init(void);
extern char sData;

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    __delay_ms(10);
    MCP23008_Init(Input);
    MCP23008_Init(Input);
    EUSART1_Write(MCP23008_read());

    while (true) {


        if (Button2_GetValue()) {
            __delay_ms(10);
            if (!Button2_GetValue()) {
                Led_Toggle();
            }
        }
    }

}



/**
 End of File
 */