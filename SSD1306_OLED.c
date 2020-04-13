/*
 * File:   SSD1308_OLED.c
 * Author: CEDRIC
 *
 * Created on 05 April 2020, 4:37 PM
 */


#include "mcc_generated_files/mcc.h"

void SSD1306_Init(void) {
    
  SSD1306_RESET_SetHigh();
    __delay_ms(1);
    SSD1306_RESET_SetLow();
    __delay_ms(10);
    SSD1306_RESET_SetHigh();
    
SSD1306_writeCMD(SSD1306_DISPLAYOFF, SSD1306_DISPLAYOFF);             //0xAE Display OFF
#ifdef SSD1306_128_64
    SSD1306_writeCMD(SSD1306_SETMULTIPLEX,63);                     //0xA8 Set MUX Ratio to 64
#endif
#ifdef SSD1306_128_32
    SSD1306_writeCMD(SSD1306_SETMULTIPLEX, 0x1F); //0xA8 Set MUX Ratio to 32
#endif

    SSD1306_writeCMD(SSD1306_SETDISPLAYOFFSET, 0x00);                  //0xD3 Set Display Offset start at 0
    SSD1306_writeCMD(SSD1306_MEMORYMODE, 0x00);                        //0x20 memory addressing horizontal mode
    SSD1306_writeCMD(SSD1306_SETDISPLAYSTARTLINE, SSD1306_SETDISPLAYSTARTLINE); //0x40 Set Display Start Line to 0
    SSD1306_writeCMD(SSD1306_SEGREMAP_ADD_0, SSD1306_SEGREMAP_ADD_0);      //0xA0 Set Segment re-map A0h
    SSD1306_writeCMD(SSD1306_COMSCANINC, SSD1306_COMSCANINC);          //0xC0 Set COM Output Scan Direction Normal (0xC4 for mirror images)
  
#ifdef SSD1306_128_64
    SSD1306_writeCMD(SSD1306_SETCOMPINS, 0x12);                        //0xDA Sequential COM pin configuration, Disable COM Left/Right remap*(0X2)
    SSD1306_writeCMD(SSD1306_SETCONTRAST, 0x7F);                       //0x81 set display contrast 7F,8F
#endif
#ifdef SSD1306_128_32
    SSD1306_writeCMD(SSD1306_SETCOMPINS, 0x02);                        //0xDA Sequential COM pin configuration, Disable COM Left/Right remap
    SSD1306_writeCMD(SSD1306_SETCONTRAST, 0x8F); //set display contrast 
#endif
    SSD1306_writeCMD(SSD1306_SETPRECHARGE,SSD1306_SETPRECHARGE);         //set precharge period
    SSD1306_writeCMD(SSD1306_SETVCOMDETECT, 0x40);                     //0xDB
    SSD1306_writeCMD(SSD1306_DISPLAYALLON_RESUME, SSD1306_DISPLAYALLON_RESUME); //0xA4 Normal display mode
    SSD1306_writeCMD(SSD1306_NORMALDISPLAY, SSD1306_NORMALDISPLAY);       //0xA6 Normal display OFF in display panel *
    SSD1306_writeCMD(SSD1306_SETDISPLAYCLOCKDIV, 0x80);                //0xD5 Set osc Frequency
    SSD1306_writeCMD(SSD1306_CHARGEPUMP, 0x14);                        //0x8D Enable charge pump regulator
    SSD1306_writeCMD(SSD1306_DEACTIVATE_SCROLL,SSD1306_DEACTIVATE_SCROLL);    //0x2E deactivate scroll
    SSD1306_writeCMD(SSD1306_DISPLAYON, SSD1306_DISPLAYON);           //0xAF Display ON
    
    
    
    
}

/**********************************************************
 **Name:     SSD1306 write command
 **Function: Is used or called when writing commands to the display
 **Input:    control byte register
 **Output:   none
 **Note:     none
 **********************************************************/
void SSD1306_writeCMD(uint8_t controlReg, uint8_t dataByte) {
    I2C_start();
    I2C_Write(SSD1306_ADDRESS);
    I2C_Write(controlReg);
    dataByte == SSD1306_REG_NODATA ?  I2C_stop() :I2C_Write(dataByte);      
    I2C_stop();
}

void displayClear(void){

}

void displaySetCursor(void){
    displayWrite(7,7,SSD1306_PAGEADDR); 
    displayWrite(1,1,SSD1306_COLUMNADDR);
    I2C_start();
    I2C_Write(SSD1306_ADDRESS);
    I2C_Write(0x41);
    memset(buffer, 0xfd,16); 
    for(uint16_t size=0; size <1; size++){
       I2C_Write(buffer[size]);
    }
    I2C_stop();
}

void displayWrite(uint8_t x, uint8_t y, int address){
    I2C_start();
    I2C_Write(SSD1306_ADDRESS);
    I2C_Write(address);
    I2C_Write(x);
    I2C_Write(y);      
    I2C_stop();
}