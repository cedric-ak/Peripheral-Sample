#include "mcc_generated_files/mcc.h"
extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();

    I2C_buffClear();
    __delay_ms(10);

//    SSD1306_Init();
//    SSD1306_clearDisplay();
//    SSD1306_setCursor(1, 10);
//    SSD1306_Print("OLED DISPLAY");
//    EUSART1_Write_Text(MCP794x_getID(), sizeof(MCP794x_getID()));
//    MCP794x_writeEEPROM(1, 0xE5);
    MCP794x_putEEPROM(8, 211014, 4);
    MCP794x_setTime(15, 41, 00);
    EUSART1_itoa(MCP794x_getEEPROM(1,4),DEC);
    while (true) {
        //        __delay_ms(500);
    }
}
