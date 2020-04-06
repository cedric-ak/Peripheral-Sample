#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    __delay_ms(10);

    RTC_Init();
    setTime(12, 54, 45);
    setDate(25, Fri, Sep, 23);
    //    setAlarm(MINUTE_ALARM, 55, 0, 0, 0);
    countDown(seconds, 10);
    while (true) { 
        if (!Button2_PORT) {
            Led_Toggle();
            rtc_INTF_CLR(CTAF);
            EUSART1_itoa(rtcRead(SECONDS), DEC);
        }
    }
}



/**
 End of File
 */