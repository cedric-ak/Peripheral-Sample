#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    CS1_SetDigitalOutput();
    I2C_buffClear();
    __delay_ms(10);
    //    I2C_BusSCan();

    MCP23008_pinMode(5, output);
    MCP23008_pinMode(3, input);
    MCP23008_pullUp(3);
    MCP23008_ISR_EN(3,fallingEdge);
    
    while (true) {
        MCP23008_INTclear();
        __delay_ms(300);
        //                if (MCP23008_read(3) == 0) {
        //                    __delay_ms(10);
        //                    if (MCP23008_read(3) == 0) {
        //                        MCP23008_Write(5, 1);
        //                    }
        //                }
    }
}
