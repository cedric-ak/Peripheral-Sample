#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();

    I2C_buffClear();
    __delay_ms(10);

    SSD1306_Init();
    SSD1306_clearDisplay();
    SSD1306_setCursor(1, 1);
    SSD1306_Print("OLED DISPLAY");

    while (true) {
        //        __delay_ms(500);
    }
}
