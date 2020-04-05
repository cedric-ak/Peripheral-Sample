#include "mcc_generated_files/mcc.h"

extern void interrupt_Init(void);

void main(void) {
    // Initialize the device
    interrupt_Init();
    SYSTEM_Initialize();
    I2C_buffClear();
    __delay_ms(10);

    RTC_Init();
    setTime(23, 58, 50);
    setDate(28, Fri, Feb, 21);
    setAlarm(MINUTES_ALARM, 59, 0, 0, 0);
    while (true) {

        EUSART1_itoa(Mon, DEC);
        Led_Toggle();
        __delay_ms(500);
    }
}



/**
 End of File
 */