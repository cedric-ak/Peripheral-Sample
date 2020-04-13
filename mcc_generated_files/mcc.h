#ifndef MCC_H
#define	MCC_H
#include <xc.h>
#include "device_config.h"
#include "pin_manager.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../PCF8523.h"
#include "spi1.h"
#include "eusart1.h"
#include "../I2C.h"
#include "../MCP4131.h"
#include "../MCP23S08.h"
#include "../_25LC512.h"
#include "../MCP28003.h"
#include "../MCP9801.h"
#include "../_24AA512.h"
#include "../MCP79411.h"
#include "../MAX31855K.h"
#include "../SSD1306.h"

#define DEC 10
#define HEX 16
#define BIN 2
#define OCT 8

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Initializes the device to the default states configured in the
 *                  MCC GUI
 * @Example
    SYSTEM_Initialize(void);
 */
void SYSTEM_Initialize(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Initializes the oscillator to the default states configured in the
 *                  MCC GUI
 * @Example
    OSCILLATOR_Initialize(void);
 */
void OSCILLATOR_Initialize(void);

#endif	/* MCC_H */
/**
 End of File
*/