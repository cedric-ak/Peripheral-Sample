#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    CS1_SetDigitalOutput();
    I2C_buffClear();
    __delay_ms(10);
    //        I2C_BusSCan();
    __delay_us(300); //acquisition tim
    //       MCP342x_read(MCP342x_CH2);
    __delay_us(300); //acquisition tim
    //       MCP342x_read(MCP342x_CH1);
    while (true) {
        __delay_ms(500);
    }
}
