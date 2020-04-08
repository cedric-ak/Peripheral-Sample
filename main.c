#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    __delay_ms(10);

    MCP794x_setTime(22,59,7);
    MCP794x_setDate(25,Fri,Dec,20);
    MCP794x_setAlarm(hour, 23);
    
//   MCP794x_getID();
   for(int index = 0; index <128; index++){
//      MCP794x_writeEEPROM(index,index);
//      __delay_ms(5);
      EUSART1_Write(MCP794x_readEEPROM(index));
   }
    while (true) {
        if (!Button2_PORT) {
            Led_Toggle();
//          MCP794x_INTF_CLR();
        }
    }
}
