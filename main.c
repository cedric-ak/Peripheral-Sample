#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    CS1_SetDigitalOutput();
    I2C_buffClear();
    __delay_ms(10);

    MCP23008_pinMode(3, input);
    MCP23008_pinMode(5, output);
    MCP23008_pullUp(3);

    while (true) {
        __delay_ms(500);
        if (MCP23008_read(3) == 0) {
            __delay_ms(10);
            if (MCP23008_read(3) == 0) {
                MCP23008_Write(5, 1);
            }
        }
    }
}
