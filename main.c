#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    CS1_SetDigitalOutput();
//    SSD1306_RESET_SetDigitalOutput();
    I2C_buffClear();
    __delay_ms(10);
    
    SSD1306_Init();
  __delay_ms(2000);
        displaySetCursor();
    while (true) {
      
        //        EUSART1_Write(MAX31855_Read());
        //        if (!Button2_PORT) {
        //            Led_Toggle();
        //            //          MCP794x_INTF_CLR();
        //        }
    }
}
