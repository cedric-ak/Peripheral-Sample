#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    __delay_ms(10);

    MCP794x_setTime(13,52,1);
    MCP794x_setDate(18,Fri,Nov,21);
    while (true) {
        /*if (!Button2_PORT) {
            Led_Toggle();
            rtc_INTF_CLR(CTAF);
            EUSART1_itoa(rtcRead(SECONDS), DEC);
        }*/
    }
}



/**
 End of File
 */