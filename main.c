#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    MCP9801_Init();

    while (true) {
        EUSART1_itoa(MCP9801_TempRead(), DEC);
        __delay_ms(200);
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