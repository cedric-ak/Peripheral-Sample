#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    CS1_SetDigitalOutput();
    I2C_buffClear();
    __delay_ms(10);
    SSD1306_Init();
//    clearDisplay();
//    dim(true);
    while (true) {
        __delay_ms(500);
    }
}
