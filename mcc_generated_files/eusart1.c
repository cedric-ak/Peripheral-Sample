/**
  EUSART1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    eusart1.c

  @Summary
    This is the generated driver implementation file for the EUSART1 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides APIs for EUSART1.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.76
        Device            :  PIC18LF46J13
        Driver Version    :  2.1.0
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

/**
  Section: Included Files
 */
#include "eusart1.h"

volatile eusart1_status_t eusart1RxLastError;
uint8_t TxData[100];

/**
  Section: EUSART1 APIs
 */
void (*EUSART1_FramingErrorHandler)(void);
void (*EUSART1_OverrunErrorHandler)(void);
void (*EUSART1_ErrorHandler)(void);

void EUSART1_DefaultFramingErrorHandler(void);
void EUSART1_DefaultOverrunErrorHandler(void);
void EUSART1_DefaultErrorHandler(void);

void EUSART1_Write_Text(uint8_t *pbData, uint8_t iSize);

void EUSART1_Initialize(void) {
    // Set the EUSART1 module to the options selected in the user interface.

    // ABDOVF no_overflow; TXCKP async_inverted_sync_risingedge; BRG16 16bit_generator; WUE disabled; ABDEN disabled; RXDTP not_inverted; 
    BAUDCON1 = 0x18;

    // SPEN enabled; RX9 8-bit; CREN enabled; ADDEN enabled; SREN disabled; 
    RCSTA1 = 0x98;

    // TX9 8-bit; TX9D 0; SENDB sync_break_complete; TXEN enabled; SYNC asynchronous; BRGH hi_speed; CSRC slave_mode; 
    TXSTA1 = 0x24;

    // 
    SPBRG1 = 0xCF;

    // 
    SPBRGH1 = 0x00;


    EUSART1_SetFramingErrorHandler(EUSART1_DefaultFramingErrorHandler);
    EUSART1_SetOverrunErrorHandler(EUSART1_DefaultOverrunErrorHandler);
    EUSART1_SetErrorHandler(EUSART1_DefaultErrorHandler);

    eusart1RxLastError.status = 0;

}

bool EUSART1_is_tx_ready(void) {
    return (bool) (PIR1bits.TX1IF && TXSTA1bits.TXEN);
}

bool EUSART1_is_rx_ready(void) {
    return PIR1bits.RC1IF;
}

bool EUSART1_is_tx_done(void) {
    return TXSTA1bits.TRMT;
}

eusart1_status_t EUSART1_get_last_status(void) {
    return eusart1RxLastError;
}

uint8_t EUSART1_Read(void) {
    while (!PIR1bits.RC1IF) {
    }

    eusart1RxLastError.status = 0;

    if (1 == RCSTA1bits.OERR) {
        // EUSART1 error - restart

        RCSTA1bits.CREN = 0;
        RCSTA1bits.CREN = 1;
    }

    return RCREG1;
}

void EUSART1_Write(uint8_t txData) {

    while (!PIR1bits.TX1IF) {
    }
    while (!TXSTA1bits.TRMT);
    TXREG1 = txData; // Write the data byte to the USART.
}

void EUSART1_Write_Text(uint8_t *pbData, uint8_t iSize) {
    for (uint8_t iSizeQueued = 0; iSizeQueued < iSize; iSizeQueued++) {
        TxData[iSizeQueued] = pbData[iSizeQueued];
        if (TxData[iSizeQueued] != '\0') {
            while (!TXSTA1bits.TRMT);
            TXREG1 = TxData[iSizeQueued];
        }
    }
}

void EUSART1_itoa(uint32_t data, int base) { //convert and print integer to character in base decimal, binary or hex (DEC, BIN, HEX)
    char buf[10];
    ultoa(buf, data, base);
    EUSART1_Write_Text(buf, sizeof(buf));
    EUSART1_Write_Text(" ", 2);
}

void EUSART1_DefaultFramingErrorHandler(void) {
}

void EUSART1_DefaultOverrunErrorHandler(void) {
    // EUSART1 error - restart

    RCSTA1bits.CREN = 0;
    RCSTA1bits.CREN = 1;

}

void EUSART1_DefaultErrorHandler(void) {
}

void EUSART1_SetFramingErrorHandler(void (* interruptHandler)(void)) {
    EUSART1_FramingErrorHandler = interruptHandler;
}

void EUSART1_SetOverrunErrorHandler(void (* interruptHandler)(void)) {
    EUSART1_OverrunErrorHandler = interruptHandler;
}

void EUSART1_SetErrorHandler(void (* interruptHandler)(void)) {
    EUSART1_ErrorHandler = interruptHandler;
}


/**
  End of File
 */
