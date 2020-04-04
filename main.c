#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);
char tem[10];
void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    EEPROM_24AA512_pageWrite(3,0xA4);  
    __delay_ms(5);
    EEPROM_24AA512_Read(0x01, 0x7E);
    while (true) {

        __delay_ms(500);
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