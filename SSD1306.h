/* 
 * File:   SSD1306.h
 * Author: CEDRIC
 *
 * Created on 11 April 2020, 2:58 PM
 */

#ifndef SSD1306_H
#define	SSD1306_H

#ifdef	__cplusplus
extern "C" {
#endif
    
/*comment out address not used*/
//#define SD1306_ADDRESS  0x78
#define SSD1306_ADDRESS  0x7A        //display default address
    
  /*comment out display not used*/  
#define SSD1306_128_64           
//#define SSD1306_96_16
//#define SSD1306_128_32
    
#define BLACK 0
#define WHITE 1
#define INVERSE 2
    /*Fundamental Command  (data sheet: 10 COMMAND DESCRIPTION)*/

#define SSD1306_MEMORYMODE          0x20  // Set Memory Addressing Mode
#define SSD1306_COLUMNADDR          0x21  // Set Column Address
#define SSD1306_PAGEADDR            0x22  // Set Page Address
#define SSD1306_CHARGEPUMP          0x8D  // Set Contrast Control for BANK0
#define SSD1306_SEGREMAP_ADD_0      0xA0  // column address 0 is mapped to SEG0 (RESET)
#define SSD1306_SEGREMAP_ADD_7F     0xA1  // column address 127 is mapped to SEG0
#define SSD1306_DISPLAYALLON_RESUME 0xA4  // command resumes the display from entire display ?ON? stage.
#define SSD1306_DISPLAYALLON        0xA5  // command forces the entire display to be ?ON?  
#define SSD1306_NORMALDISPLAY       0xA6  // sets the display to be normal 
#define SSD1306_INVERTDISPLAY       0xA7  // sets the display to be inverse  
#define SSD1306_SETMULTIPLEX        0xA8  // Set Multiplex Ratio
#define SSD1306_DISPLAYOFF          0xAE  // Display OFF
#define SSD1306_DISPLAYON           0xAF  // Display ON  
#define SSD1306_COMSCANINC          0xC0  // Set COM Output Scan Direction(mirrored)
#define SSD1306_COMSCANDEC          0xC8  // Set COM Output Scan Direction (normal display)
#define SSD1306_SETDISPLAYOFFSET    0xD3  // Set Display Offset
#define SSD1306_SETDISPLAYCLOCKDIV  0xD5  // Set Display Clock Divide Ratio/ Oscillator Frequency
#define SSD1306_SETPRECHARGE        0xD9  // Set Pre-charge Period
#define SSD1306_SETCOMPINS          0xDA  // Set COM Pins Hardware Configuration 64 or 32  
#define SSD1306_SETVCOMDETECT       0xDB  // Set VCOMH Deselect Level. This command adjusts the VCOMH regulator output.
#define SSD1306_NOP                 0xE3  // No operation command
#define SSD1306_SETDISPLAYSTARTLINE 0x40  // Set Display Start Line 0x40 - 0x7F
#define SSD1306_SETCONTRAST         0x81  // sets the Contrast Setting of the display


    /*Graphic Acceleration Command (Before issuing this commands the horizontal scroll must be deactivated (2Eh)*/
    
#define SSD1306_RIGHT_HORIZONTAL_SCROLL              0x26 // Scroll RIGHT
#define SSD1306_LEFT_HORIZONTAL_SCROLL               0x27 // Scroll LEFT
#define SSD1306_VERTICAL_AND_RIGHT_HORIZONTAL_SCROLL 0x29 // Continuous Vertical and right Horizontal scrolling
#define SSD1306_VERTICAL_AND_LEFT_HORIZONTAL_SCROLL  0x2A // Continuous Vertical and left Horizontal scrolling
#define SSD1306_DEACTIVATE_SCROLL                    0x2E // Deactivate Scroll (After sending 2Eh command to deactivate the scrolling action the ram data needs to be rewritten.)
#define SSD1306_ACTIVATE_SCROLL                      0x2F // Activate Scroll
#define SSD1306_SET_VERTICAL_SCROLL_AREA             0xA3 // Set Vertical Scroll Area
    
#define SSD1306_REG_NODATA                           0xFF

#define SSD1306_CMD       0x3F // D/C# byte transmitted is a command (use with bitwise "&"), C0 = 0 
#define SSD1306_DATA_MASK 0x40 // D/C# byte transmitted is data for GDDRAM (use with bitwise "|") C0 = 0
    
#ifdef SSD1306_128_64
#define SSD1306_LCDWIDTH  128  //display width w/SSD1306_128_64 defined
#define SSD1306_LCDHEIGHT 64   //dispaly height w/SSD1306_128_64 defined
#endif
#ifdef SSD1306_128_32
 #define SSD1306_LCDWIDTH  128 //display width w/SSD1306_128_32 defined
 #define SSD1306_LCDHEIGHT  32 //display height w/SSD1306_128_32 defined
#endif
#if defined SSD1306_96_16
  #define SSD1306_LCDWIDTH  96
  #define SSD1306_LCDHEIGHT 16
#endif
 
void SSD1306_Init(void);
void SSD1306_writeCMD(uint8_t controlReg, uint8_t dataByte);
void SSD1306_clearDisplay(void);
void SSD1306_setCursor(uint8_t x, uint8_t y);
void SSD1306_setTextSize(uint8_t s);
void SSD1306_setTextWrap(uint8_t w);
void SSD1306_setTextColor(uint16_t c);
void SSD1306_setRotatation(uint8_t rotation);
//void setFont(const GFXfont *f = NULL);

uint8_t getRotation(void);
uint16_t width(void);
uint16_t height(void);
void SSD1306_invertDisplay(uint8_t i);
void SSD1306_writeData(uint8_t data);
void SSD1306_startscrollright(uint8_t start, uint8_t stop);
void SSD1306_startscrollleft(uint8_t start, uint8_t stop);
void SSD1306_startscrolldiagright(uint8_t start, uint8_t stop);
void SSD1306_stopscroll(void);
void SSD1306_dim(bool status);
void SSD1306_display(void);
void SSD1306_PutC(char c);
void SSD1306_Print(char *s);


uint8_t x_pos = 1, y_pos = 1, wrap = 1;

#ifdef	__cplusplus
}
#endif

#endif	/* SSD1306_H */

