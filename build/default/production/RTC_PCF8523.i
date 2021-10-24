
# 1 "RTC_PCF8523.c"

# 18 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18F-J_DFP/1.4.41/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 13 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;


# 7 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18F-J_DFP/1.4.41/xc8\pic\include\builtins.h"
#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __nonreentrant void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(uint8_t);

# 53 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18F-J_DFP/1.4.41/xc8\pic\include\proc\pic18lf46j13.h"
extern volatile unsigned char ADCTRIG __at(0xEB8);

asm("ADCTRIG equ 0EB8h");


typedef union {
struct {
unsigned TRIGSEL :2;
};
struct {
unsigned SRC0 :1;
unsigned SRC1 :1;
};
struct {
unsigned TRIGSEL0 :1;
unsigned TRIGSEL1 :1;
};
struct {
unsigned SRC :2;
};
} ADCTRIGbits_t;
extern volatile ADCTRIGbits_t ADCTRIGbits __at(0xEB8);

# 109
extern volatile unsigned char PMDIS0 __at(0xEB9);

asm("PMDIS0 equ 0EB9h");


extern volatile unsigned char PD0 __at(0xEB9);

asm("PD0 equ 0EB9h");


typedef union {
struct {
unsigned ADCMD :1;
unsigned SPI1MD :1;
unsigned SPI2MD :1;
unsigned UART1MD :1;
unsigned UART2MD :1;
unsigned ECCP1MD :1;
unsigned ECCP2MD :1;
unsigned ECCP3MD :1;
};
struct {
unsigned :1;
unsigned PMDMSSP1 :1;
unsigned PMDMSSP2 :1;
unsigned PMDUART1 :1;
unsigned PMDUART2 :1;
unsigned PMDECCP1 :1;
unsigned PMDECCP2 :1;
unsigned PMDECCP3 :1;
};
struct {
unsigned PMDADC :1;
unsigned PMDMSSP :2;
unsigned PMDUART :2;
unsigned PMDECCP :3;
};
struct {
unsigned :1;
unsigned SPIMD :2;
unsigned UARTMD :2;
unsigned ECCPMD :3;
};
} PMDIS0bits_t;
extern volatile PMDIS0bits_t PMDIS0bits __at(0xEB9);

# 266
typedef union {
struct {
unsigned ADCMD :1;
unsigned SPI1MD :1;
unsigned SPI2MD :1;
unsigned UART1MD :1;
unsigned UART2MD :1;
unsigned ECCP1MD :1;
unsigned ECCP2MD :1;
unsigned ECCP3MD :1;
};
struct {
unsigned :1;
unsigned PMDMSSP1 :1;
unsigned PMDMSSP2 :1;
unsigned PMDUART1 :1;
unsigned PMDUART2 :1;
unsigned PMDECCP1 :1;
unsigned PMDECCP2 :1;
unsigned PMDECCP3 :1;
};
struct {
unsigned PMDADC :1;
unsigned PMDMSSP :2;
unsigned PMDUART :2;
unsigned PMDECCP :3;
};
struct {
unsigned :1;
unsigned SPIMD :2;
unsigned UARTMD :2;
unsigned ECCPMD :3;
};
} PD0bits_t;
extern volatile PD0bits_t PD0bits __at(0xEB9);

# 415
extern volatile unsigned char PMDIS1 __at(0xEBA);

asm("PMDIS1 equ 0EBAh");


extern volatile unsigned char PD1 __at(0xEBA);

asm("PD1 equ 0EBAh");


typedef union {
struct {
unsigned :1;
unsigned TMR1MD :1;
unsigned TMR2MD :1;
unsigned TMR3MD :1;
unsigned TMR4MD :1;
unsigned RTCCMD :1;
unsigned CTMUMD :1;
unsigned PSPMD :1;
};
struct {
unsigned :1;
unsigned PMDTMR1 :1;
unsigned PMDTMR2 :1;
unsigned PMDTMR3 :1;
unsigned PMDTMR4 :1;
};
struct {
unsigned :1;
unsigned PMDTMR :4;
unsigned PMDRTCC :1;
unsigned PMDCTMU :1;
unsigned PMDPSP :1;
};
struct {
unsigned :1;
unsigned TMRMD :4;
};
} PMDIS1bits_t;
extern volatile PMDIS1bits_t PMDIS1bits __at(0xEBA);

# 538
typedef union {
struct {
unsigned :1;
unsigned TMR1MD :1;
unsigned TMR2MD :1;
unsigned TMR3MD :1;
unsigned TMR4MD :1;
unsigned RTCCMD :1;
unsigned CTMUMD :1;
unsigned PSPMD :1;
};
struct {
unsigned :1;
unsigned PMDTMR1 :1;
unsigned PMDTMR2 :1;
unsigned PMDTMR3 :1;
unsigned PMDTMR4 :1;
};
struct {
unsigned :1;
unsigned PMDTMR :4;
unsigned PMDRTCC :1;
unsigned PMDCTMU :1;
unsigned PMDPSP :1;
};
struct {
unsigned :1;
unsigned TMRMD :4;
};
} PD1bits_t;
extern volatile PD1bits_t PD1bits __at(0xEBA);

# 653
extern volatile unsigned char PMDIS2 __at(0xEBB);

asm("PMDIS2 equ 0EBBh");


extern volatile unsigned char PD2 __at(0xEBB);

asm("PD2 equ 0EBBh");


typedef union {
struct {
unsigned CMP1MD :1;
unsigned CMP2MD :1;
unsigned CMP3MD :1;
unsigned TMR5MD :1;
unsigned TMR6MD :1;
unsigned :1;
unsigned TMR8MD :1;
};
struct {
unsigned PMDCMP1 :1;
unsigned PMDCMP2 :1;
unsigned PMDCMP3 :1;
};
struct {
unsigned PMDCMP :3;
unsigned PMDTMR5 :1;
unsigned PMDTMR6 :1;
unsigned :1;
unsigned PMDTMR8 :1;
};
struct {
unsigned CMPMD :3;
};
} PMDIS2bits_t;
extern volatile PMDIS2bits_t PMDIS2bits __at(0xEBB);

# 762
typedef union {
struct {
unsigned CMP1MD :1;
unsigned CMP2MD :1;
unsigned CMP3MD :1;
unsigned TMR5MD :1;
unsigned TMR6MD :1;
unsigned :1;
unsigned TMR8MD :1;
};
struct {
unsigned PMDCMP1 :1;
unsigned PMDCMP2 :1;
unsigned PMDCMP3 :1;
};
struct {
unsigned PMDCMP :3;
unsigned PMDTMR5 :1;
unsigned PMDTMR6 :1;
unsigned :1;
unsigned PMDTMR8 :1;
};
struct {
unsigned CMPMD :3;
};
} PD2bits_t;
extern volatile PD2bits_t PD2bits __at(0xEBB);

# 863
extern volatile unsigned char PMDIS3 __at(0xEBC);

asm("PMDIS3 equ 0EBCh");


extern volatile unsigned char PD3 __at(0xEBC);

asm("PD3 equ 0EBCh");


typedef union {
struct {
unsigned :1;
unsigned CCP4MD :1;
unsigned CCP5MD :1;
unsigned CCP6MD :1;
unsigned CCP7MD :1;
unsigned CCP8MD :1;
unsigned CCP9MD :1;
unsigned CCP10MD :1;
};
struct {
unsigned :1;
unsigned PMDCCP4 :1;
unsigned PMDCCP5 :1;
unsigned PMDCCP6 :1;
unsigned PMDCCP7 :1;
unsigned PMDCCP8 :1;
unsigned PMDCCP9 :1;
unsigned PMDCCP10 :1;
};
struct {
unsigned :1;
unsigned PMDCCP :7;
};
struct {
unsigned :1;
unsigned CCPMD :7;
};
} PMDIS3bits_t;
extern volatile PMDIS3bits_t PMDIS3bits __at(0xEBC);

# 986
typedef union {
struct {
unsigned :1;
unsigned CCP4MD :1;
unsigned CCP5MD :1;
unsigned CCP6MD :1;
unsigned CCP7MD :1;
unsigned CCP8MD :1;
unsigned CCP9MD :1;
unsigned CCP10MD :1;
};
struct {
unsigned :1;
unsigned PMDCCP4 :1;
unsigned PMDCCP5 :1;
unsigned PMDCCP6 :1;
unsigned PMDCCP7 :1;
unsigned PMDCCP8 :1;
unsigned PMDCCP9 :1;
unsigned PMDCCP10 :1;
};
struct {
unsigned :1;
unsigned PMDCCP :7;
};
struct {
unsigned :1;
unsigned CCPMD :7;
};
} PD3bits_t;
extern volatile PD3bits_t PD3bits __at(0xEBC);

# 1101
extern volatile unsigned char PPSCON __at(0xEBF);

asm("PPSCON equ 0EBFh");


typedef union {
struct {
unsigned IOLOCK :1;
};
} PPSCONbits_t;
extern volatile PPSCONbits_t PPSCONbits __at(0xEBF);

# 1121
extern volatile unsigned char RPOR0 __at(0xEC0);

asm("RPOR0 equ 0EC0h");




extern volatile unsigned char RPOR1 __at(0xEC1);

asm("RPOR1 equ 0EC1h");




extern volatile unsigned char RPOR2 __at(0xEC2);

asm("RPOR2 equ 0EC2h");




extern volatile unsigned char RPOR3 __at(0xEC3);

asm("RPOR3 equ 0EC3h");




extern volatile unsigned char RPOR4 __at(0xEC4);

asm("RPOR4 equ 0EC4h");




extern volatile unsigned char RPOR5 __at(0xEC5);

asm("RPOR5 equ 0EC5h");




extern volatile unsigned char RPOR6 __at(0xEC6);

asm("RPOR6 equ 0EC6h");




extern volatile unsigned char RPOR7 __at(0xEC7);

asm("RPOR7 equ 0EC7h");




extern volatile unsigned char RPOR8 __at(0xEC8);

asm("RPOR8 equ 0EC8h");




extern volatile unsigned char RPOR9 __at(0xEC9);

asm("RPOR9 equ 0EC9h");




extern volatile unsigned char RPOR10 __at(0xECA);

asm("RPOR10 equ 0ECAh");




extern volatile unsigned char RPOR11 __at(0xECB);

asm("RPOR11 equ 0ECBh");




extern volatile unsigned char RPOR12 __at(0xECC);

asm("RPOR12 equ 0ECCh");




extern volatile unsigned char RPOR13 __at(0xECD);

asm("RPOR13 equ 0ECDh");




extern volatile unsigned char RPOR14 __at(0xECE);

asm("RPOR14 equ 0ECEh");




extern volatile unsigned char RPOR15 __at(0xECF);

asm("RPOR15 equ 0ECFh");




extern volatile unsigned char RPOR16 __at(0xED0);

asm("RPOR16 equ 0ED0h");




extern volatile unsigned char RPOR17 __at(0xED1);

asm("RPOR17 equ 0ED1h");




extern volatile unsigned char RPOR18 __at(0xED2);

asm("RPOR18 equ 0ED2h");




extern volatile unsigned char RPOR19 __at(0xED3);

asm("RPOR19 equ 0ED3h");




extern volatile unsigned char RPOR20 __at(0xED4);

asm("RPOR20 equ 0ED4h");




extern volatile unsigned char RPOR21 __at(0xED5);

asm("RPOR21 equ 0ED5h");




extern volatile unsigned char RPOR22 __at(0xED6);

asm("RPOR22 equ 0ED6h");




extern volatile unsigned char RPOR23 __at(0xED7);

asm("RPOR23 equ 0ED7h");




extern volatile unsigned char RPOR24 __at(0xED8);

asm("RPOR24 equ 0ED8h");




extern volatile unsigned char RPINR1 __at(0xEE1);

asm("RPINR1 equ 0EE1h");




extern volatile unsigned char RPINR2 __at(0xEE2);

asm("RPINR2 equ 0EE2h");




extern volatile unsigned char RPINR3 __at(0xEE3);

asm("RPINR3 equ 0EE3h");




extern volatile unsigned char RPINR4 __at(0xEE4);

asm("RPINR4 equ 0EE4h");




extern volatile unsigned char RPINR6 __at(0xEE6);

asm("RPINR6 equ 0EE6h");




extern volatile unsigned char RPINR15 __at(0xEE7);

asm("RPINR15 equ 0EE7h");




extern volatile unsigned char RPINR7 __at(0xEE8);

asm("RPINR7 equ 0EE8h");




extern volatile unsigned char RPINR8 __at(0xEE9);

asm("RPINR8 equ 0EE9h");




extern volatile unsigned char RPINR9 __at(0xEEA);

asm("RPINR9 equ 0EEAh");




extern volatile unsigned char RPINR12 __at(0xEF2);

asm("RPINR12 equ 0EF2h");




extern volatile unsigned char RPINR13 __at(0xEF3);

asm("RPINR13 equ 0EF3h");




extern volatile unsigned char RPINR14 __at(0xEF4);

asm("RPINR14 equ 0EF4h");




extern volatile unsigned char RPINR16 __at(0xEF7);

asm("RPINR16 equ 0EF7h");




extern volatile unsigned char RPINR17 __at(0xEF8);

asm("RPINR17 equ 0EF8h");




extern volatile unsigned char RPINR21 __at(0xEFC);

asm("RPINR21 equ 0EFCh");




extern volatile unsigned char RPINR22 __at(0xEFD);

asm("RPINR22 equ 0EFDh");




extern volatile unsigned char RPINR23 __at(0xEFE);

asm("RPINR23 equ 0EFEh");




extern volatile unsigned char RPINR24 __at(0xEFF);

asm("RPINR24 equ 0EFFh");




extern volatile unsigned char CCP10CON __at(0xF00);

asm("CCP10CON equ 0F00h");


typedef union {
struct {
unsigned CCP10M :4;
unsigned DC10B :2;
};
struct {
unsigned CCP10M0 :1;
unsigned CCP10M1 :1;
unsigned CCP10M2 :1;
unsigned CCP10M3 :1;
unsigned DC10B0 :1;
unsigned DC10B1 :1;
};
} CCP10CONbits_t;
extern volatile CCP10CONbits_t CCP10CONbits __at(0xF00);

# 1486
extern volatile unsigned char CCPR10L __at(0xF01);

asm("CCPR10L equ 0F01h");


typedef union {
struct {
unsigned CCPR10L :8;
};
} CCPR10Lbits_t;
extern volatile CCPR10Lbits_t CCPR10Lbits __at(0xF01);

# 1506
extern volatile unsigned char CCPR10H __at(0xF02);

asm("CCPR10H equ 0F02h");


typedef union {
struct {
unsigned CCPR10H :8;
};
} CCPR10Hbits_t;
extern volatile CCPR10Hbits_t CCPR10Hbits __at(0xF02);

# 1526
extern volatile unsigned char CCP9CON __at(0xF03);

asm("CCP9CON equ 0F03h");


typedef union {
struct {
unsigned CCP9M :4;
unsigned DC9B :2;
};
struct {
unsigned CCP9M0 :1;
unsigned CCP9M1 :1;
unsigned CCP9M2 :1;
unsigned CCP9M3 :1;
unsigned DC9B0 :1;
unsigned DC9B1 :1;
};
} CCP9CONbits_t;
extern volatile CCP9CONbits_t CCP9CONbits __at(0xF03);

# 1590
extern volatile unsigned char CCPR9L __at(0xF04);

asm("CCPR9L equ 0F04h");


typedef union {
struct {
unsigned CCPR9L :8;
};
} CCPR9Lbits_t;
extern volatile CCPR9Lbits_t CCPR9Lbits __at(0xF04);

# 1610
extern volatile unsigned char CCPR9H __at(0xF05);

asm("CCPR9H equ 0F05h");


typedef union {
struct {
unsigned CCPR9H :8;
};
} CCPR9Hbits_t;
extern volatile CCPR9Hbits_t CCPR9Hbits __at(0xF05);

# 1630
extern volatile unsigned char CCP8CON __at(0xF06);

asm("CCP8CON equ 0F06h");


typedef union {
struct {
unsigned CCP8M :4;
unsigned DC8B :2;
};
struct {
unsigned CCP8M0 :1;
unsigned CCP8M1 :1;
unsigned CCP8M2 :1;
unsigned CCP8M3 :1;
unsigned DC8B0 :1;
unsigned DC8B1 :1;
};
} CCP8CONbits_t;
extern volatile CCP8CONbits_t CCP8CONbits __at(0xF06);

# 1694
extern volatile unsigned char CCPR8L __at(0xF07);

asm("CCPR8L equ 0F07h");


typedef union {
struct {
unsigned CCPR8L :8;
};
} CCPR8Lbits_t;
extern volatile CCPR8Lbits_t CCPR8Lbits __at(0xF07);

# 1714
extern volatile unsigned char CCPR8H __at(0xF08);

asm("CCPR8H equ 0F08h");


typedef union {
struct {
unsigned CCPR8H :8;
};
} CCPR8Hbits_t;
extern volatile CCPR8Hbits_t CCPR8Hbits __at(0xF08);

# 1734
extern volatile unsigned char CCP7CON __at(0xF09);

asm("CCP7CON equ 0F09h");


typedef union {
struct {
unsigned CCP7M :4;
unsigned DC7B :2;
};
struct {
unsigned CCP7M0 :1;
unsigned CCP7M1 :1;
unsigned CCP7M2 :1;
unsigned CCP7M3 :1;
unsigned DC7B0 :1;
unsigned DC7B1 :1;
};
} CCP7CONbits_t;
extern volatile CCP7CONbits_t CCP7CONbits __at(0xF09);

# 1798
extern volatile unsigned char CCPR7L __at(0xF0A);

asm("CCPR7L equ 0F0Ah");


typedef union {
struct {
unsigned CCPR7L :8;
};
} CCPR7Lbits_t;
extern volatile CCPR7Lbits_t CCPR7Lbits __at(0xF0A);

# 1818
extern volatile unsigned char CCPR7H __at(0xF0B);

asm("CCPR7H equ 0F0Bh");


typedef union {
struct {
unsigned CCPR7H :8;
};
} CCPR7Hbits_t;
extern volatile CCPR7Hbits_t CCPR7Hbits __at(0xF0B);

# 1838
extern volatile unsigned char CCP6CON __at(0xF0C);

asm("CCP6CON equ 0F0Ch");


typedef union {
struct {
unsigned CCP6M :4;
unsigned DC6B :2;
};
struct {
unsigned CCP6M0 :1;
unsigned CCP6M1 :1;
unsigned CCP6M2 :1;
unsigned CCP6M3 :1;
unsigned DC6B0 :1;
unsigned DC6B1 :1;
};
} CCP6CONbits_t;
extern volatile CCP6CONbits_t CCP6CONbits __at(0xF0C);

# 1902
extern volatile unsigned char CCPR6L __at(0xF0D);

asm("CCPR6L equ 0F0Dh");


typedef union {
struct {
unsigned CCPR6L :8;
};
} CCPR6Lbits_t;
extern volatile CCPR6Lbits_t CCPR6Lbits __at(0xF0D);

# 1922
extern volatile unsigned char CCPR6H __at(0xF0E);

asm("CCPR6H equ 0F0Eh");


typedef union {
struct {
unsigned CCPR6H :8;
};
} CCPR6Hbits_t;
extern volatile CCPR6Hbits_t CCPR6Hbits __at(0xF0E);

# 1942
extern volatile unsigned char CCP5CON __at(0xF0F);

asm("CCP5CON equ 0F0Fh");


typedef union {
struct {
unsigned CCP5M :4;
unsigned DC5B :2;
};
struct {
unsigned CCP5M0 :1;
unsigned CCP5M1 :1;
unsigned CCP5M2 :1;
unsigned CCP5M3 :1;
unsigned DC5B0 :1;
unsigned DC5B1 :1;
};
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __at(0xF0F);

# 2006
extern volatile unsigned char CCPR5L __at(0xF10);

asm("CCPR5L equ 0F10h");


typedef union {
struct {
unsigned CCPR5L :8;
};
} CCPR5Lbits_t;
extern volatile CCPR5Lbits_t CCPR5Lbits __at(0xF10);

# 2026
extern volatile unsigned char CCPR5H __at(0xF11);

asm("CCPR5H equ 0F11h");


typedef union {
struct {
unsigned CCPR5H :8;
};
} CCPR5Hbits_t;
extern volatile CCPR5Hbits_t CCPR5Hbits __at(0xF11);

# 2046
extern volatile unsigned char CCP4CON __at(0xF12);

asm("CCP4CON equ 0F12h");


typedef union {
struct {
unsigned CCP4M :4;
unsigned DC4B :2;
};
struct {
unsigned CCP4M0 :1;
unsigned CCP4M1 :1;
unsigned CCP4M2 :1;
unsigned CCP4M3 :1;
unsigned DC4B0 :1;
unsigned DC4B1 :1;
};
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __at(0xF12);

# 2110
extern volatile unsigned char CCPR4L __at(0xF13);

asm("CCPR4L equ 0F13h");


typedef union {
struct {
unsigned CCPR4L :8;
};
} CCPR4Lbits_t;
extern volatile CCPR4Lbits_t CCPR4Lbits __at(0xF13);

# 2130
extern volatile unsigned char CCPR4H __at(0xF14);

asm("CCPR4H equ 0F14h");


typedef union {
struct {
unsigned CCPR4H :8;
};
} CCPR4Hbits_t;
extern volatile CCPR4Hbits_t CCPR4Hbits __at(0xF14);

# 2150
extern volatile unsigned char CCP3CON __at(0xF15);

asm("CCP3CON equ 0F15h");


typedef union {
struct {
unsigned CCP3M :4;
unsigned DC3B :2;
unsigned P3M :2;
};
struct {
unsigned CCP3M0 :1;
unsigned CCP3M1 :1;
unsigned CCP3M2 :1;
unsigned CCP3M3 :1;
unsigned DC3B0 :1;
unsigned DC3B1 :1;
unsigned P3M0 :1;
unsigned P3M1 :1;
};
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __at(0xF15);

# 2232
extern volatile unsigned char CCPR3L __at(0xF16);

asm("CCPR3L equ 0F16h");


typedef union {
struct {
unsigned CCPR3L :8;
};
} CCPR3Lbits_t;
extern volatile CCPR3Lbits_t CCPR3Lbits __at(0xF16);

# 2252
extern volatile unsigned char CCPR3H __at(0xF17);

asm("CCPR3H equ 0F17h");


typedef union {
struct {
unsigned CCPR3H :8;
};
} CCPR3Hbits_t;
extern volatile CCPR3Hbits_t CCPR3Hbits __at(0xF17);

# 2272
extern volatile unsigned char ECCP3DEL __at(0xF18);

asm("ECCP3DEL equ 0F18h");


typedef union {
struct {
unsigned P3DC :7;
unsigned P3RSEN :1;
};
struct {
unsigned P3DC0 :1;
unsigned P3DC1 :1;
unsigned P3DC2 :1;
unsigned P3DC3 :1;
unsigned P3DC4 :1;
unsigned P3DC5 :1;
unsigned P3DC6 :1;
};
} ECCP3DELbits_t;
extern volatile ECCP3DELbits_t ECCP3DELbits __at(0xF18);

# 2342
extern volatile unsigned char ECCP3AS __at(0xF19);

asm("ECCP3AS equ 0F19h");


typedef union {
struct {
unsigned PSS3BD :2;
unsigned PSS3AC :2;
unsigned ECCP3AS :3;
unsigned ECCP3ASE :1;
};
struct {
unsigned PSS3BD0 :1;
unsigned PSS3BD1 :1;
unsigned PSS3AC0 :1;
unsigned PSS3AC1 :1;
unsigned ECCP3AS0 :1;
unsigned ECCP3AS1 :1;
unsigned ECCP3AS2 :1;
};
} ECCP3ASbits_t;
extern volatile ECCP3ASbits_t ECCP3ASbits __at(0xF19);

# 2424
extern volatile unsigned char PSTR3CON __at(0xF1A);

asm("PSTR3CON equ 0F1Ah");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned STRSYNC :1;
unsigned :1;
unsigned CMPL :2;
};
struct {
unsigned :6;
unsigned CMPL0 :1;
unsigned CMPL1 :1;
};
struct {
unsigned STRA3 :1;
unsigned STRB3 :1;
unsigned STRC3 :1;
unsigned STRD3 :1;
unsigned STRSYNC3 :1;
unsigned :1;
unsigned CMPL03 :1;
unsigned CMPL13 :1;
};
} PSTR3CONbits_t;
extern volatile PSTR3CONbits_t PSTR3CONbits __at(0xF1A);

# 2535
extern volatile unsigned char T8CON __at(0xF1B);

asm("T8CON equ 0F1Bh");


typedef union {
struct {
unsigned T8CKPS :2;
unsigned TMR8ON :1;
unsigned T8OUTPS :4;
};
struct {
unsigned T8CKPS0 :1;
unsigned T8CKPS1 :1;
unsigned :1;
unsigned T8OUTPS0 :1;
unsigned T8OUTPS1 :1;
unsigned T8OUTPS2 :1;
unsigned T8OUTPS3 :1;
};
} T8CONbits_t;
extern volatile T8CONbits_t T8CONbits __at(0xF1B);

# 2606
extern volatile unsigned char PR8 __at(0xF1C);

asm("PR8 equ 0F1Ch");


typedef union {
struct {
unsigned PR8 :8;
};
} PR8bits_t;
extern volatile PR8bits_t PR8bits __at(0xF1C);

# 2626
extern volatile unsigned char TMR8 __at(0xF1D);

asm("TMR8 equ 0F1Dh");


typedef union {
struct {
unsigned TMR8 :8;
};
} TMR8bits_t;
extern volatile TMR8bits_t TMR8bits __at(0xF1D);

# 2646
extern volatile unsigned char T6CON __at(0xF1E);

asm("T6CON equ 0F1Eh");


typedef union {
struct {
unsigned T6CKPS :2;
unsigned TMR6ON :1;
unsigned T6OUTPS :4;
};
struct {
unsigned T6CKPS0 :1;
unsigned T6CKPS1 :1;
unsigned :1;
unsigned T6OUTPS0 :1;
unsigned T6OUTPS1 :1;
unsigned T6OUTPS2 :1;
unsigned T6OUTPS3 :1;
};
} T6CONbits_t;
extern volatile T6CONbits_t T6CONbits __at(0xF1E);

# 2717
extern volatile unsigned char PR6 __at(0xF1F);

asm("PR6 equ 0F1Fh");


typedef union {
struct {
unsigned PR6 :8;
};
} PR6bits_t;
extern volatile PR6bits_t PR6bits __at(0xF1F);

# 2737
extern volatile unsigned char TMR6 __at(0xF20);

asm("TMR6 equ 0F20h");


typedef union {
struct {
unsigned TMR6 :8;
};
} TMR6bits_t;
extern volatile TMR6bits_t TMR6bits __at(0xF20);

# 2757
extern volatile unsigned char T5GCON __at(0xF21);

asm("T5GCON equ 0F21h");


typedef union {
struct {
unsigned :3;
unsigned T5GGO_NOT_T5DONE :1;
};
struct {
unsigned T5GSS :2;
unsigned T5GVAL :1;
unsigned T5GGO_nT5DONE :1;
unsigned T5GSPM :1;
unsigned T5GTM :1;
unsigned T5GPOL :1;
unsigned TMR5GE :1;
};
struct {
unsigned T5GSS0 :1;
unsigned T5GSS1 :1;
unsigned :1;
unsigned T5GGO :1;
};
struct {
unsigned :3;
unsigned NOT_T5DONE :1;
};
struct {
unsigned :3;
unsigned nT5DONE :1;
};
struct {
unsigned :3;
unsigned T5DONE :1;
};
} T5GCONbits_t;
extern volatile T5GCONbits_t T5GCONbits __at(0xF21);

# 2870
extern volatile unsigned char T5CON __at(0xF22);

asm("T5CON equ 0F22h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T5SYNC :1;
};
struct {
unsigned TMR5ON :1;
unsigned RD16 :1;
unsigned nT5SYNC :1;
unsigned T5OSCEN :1;
unsigned T5CKPS :2;
unsigned TMR5CS :2;
};
struct {
unsigned :4;
unsigned T5CKPS0 :1;
unsigned T5CKPS1 :1;
unsigned TMR5CS0 :1;
unsigned TMR5CS1 :1;
};
struct {
unsigned :1;
unsigned RD165 :1;
unsigned :1;
unsigned SOSCEN5 :1;
};
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __at(0xF22);

# 2972
extern volatile unsigned char TMR5L __at(0xF23);

asm("TMR5L equ 0F23h");


typedef union {
struct {
unsigned TMR5L :8;
};
} TMR5Lbits_t;
extern volatile TMR5Lbits_t TMR5Lbits __at(0xF23);

# 2992
extern volatile unsigned char TMR5H __at(0xF24);

asm("TMR5H equ 0F24h");


typedef union {
struct {
unsigned TMR5H :8;
};
} TMR5Hbits_t;
extern volatile TMR5Hbits_t TMR5Hbits __at(0xF24);

# 3012
extern volatile unsigned char CM3CON __at(0xF25);

asm("CM3CON equ 0F25h");


typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH03 :1;
unsigned CCH13 :1;
unsigned CREF3 :1;
unsigned EVPOL03 :1;
unsigned EVPOL13 :1;
unsigned CPOL3 :1;
unsigned COE3 :1;
unsigned CON3 :1;
};
} CM3CONbits_t;
extern volatile CM3CONbits_t CM3CONbits __at(0xF25);

# 3139
extern volatile unsigned char RTCVALL __at(0xF3A);

asm("RTCVALL equ 0F3Ah");


typedef union {
struct {
unsigned RTCVALL :8;
};
} RTCVALLbits_t;
extern volatile RTCVALLbits_t RTCVALLbits __at(0xF3A);

# 3159
extern volatile unsigned char RTCVALH __at(0xF3B);

asm("RTCVALH equ 0F3Bh");


typedef union {
struct {
unsigned RTCVALH :8;
};
struct {
unsigned WAITE0 :1;
unsigned WAITE1 :1;
unsigned WAITM0 :1;
unsigned WAITM1 :1;
unsigned WAITM2 :1;
unsigned WAITM3 :1;
unsigned WAITB0 :1;
unsigned WAITB1 :1;
};
} RTCVALHbits_t;
extern volatile RTCVALHbits_t RTCVALHbits __at(0xF3B);

# 3229
extern volatile unsigned char PADCFG1 __at(0xF3C);

asm("PADCFG1 equ 0F3Ch");


typedef union {
struct {
unsigned PMPTTL :1;
unsigned RTSECSEL0 :1;
unsigned RTSECSEL1 :1;
};
} PADCFG1bits_t;
extern volatile PADCFG1bits_t PADCFG1bits __at(0xF3C);

# 3261
extern volatile unsigned char REFOCON __at(0xF3D);

asm("REFOCON equ 0F3Dh");


typedef union {
struct {
unsigned RODIV :4;
unsigned ROSEL :1;
unsigned ROSSLP :1;
unsigned :1;
unsigned ROON :1;
};
struct {
unsigned RODIV0 :1;
unsigned RODIV1 :1;
unsigned RODIV2 :1;
unsigned RODIV3 :1;
};
} REFOCONbits_t;
extern volatile REFOCONbits_t REFOCONbits __at(0xF3D);

# 3326
extern volatile unsigned char RTCCAL __at(0xF3E);

asm("RTCCAL equ 0F3Eh");


typedef union {
struct {
unsigned CAL :8;
};
struct {
unsigned CAL0 :1;
unsigned CAL1 :1;
unsigned CAL2 :1;
unsigned CAL3 :1;
unsigned CAL4 :1;
unsigned CAL5 :1;
unsigned CAL6 :1;
unsigned CAL7 :1;
};
} RTCCALbits_t;
extern volatile RTCCALbits_t RTCCALbits __at(0xF3E);

# 3396
extern volatile unsigned char RTCCFG __at(0xF3F);

asm("RTCCFG equ 0F3Fh");


typedef union {
struct {
unsigned RTCPTR0 :1;
unsigned RTCPTR1 :1;
unsigned RTCOE :1;
unsigned HALFSEC :1;
unsigned RTCSYNC :1;
unsigned RTCWREN :1;
unsigned :1;
unsigned RTCEN :1;
};
} RTCCFGbits_t;
extern volatile RTCCFGbits_t RTCCFGbits __at(0xF3F);

# 3453
extern volatile unsigned char ODCON3 __at(0xF40);

asm("ODCON3 equ 0F40h");


typedef union {
struct {
unsigned SPI1OD :1;
unsigned SPI2OD :1;
unsigned :5;
unsigned CTMUDS :1;
};
} ODCON3bits_t;
extern volatile ODCON3bits_t ODCON3bits __at(0xF40);

# 3486
extern volatile unsigned char ODCON2 __at(0xF41);

asm("ODCON2 equ 0F41h");


typedef union {
struct {
unsigned U1OD :1;
unsigned U2OD :1;
unsigned CCP9OD :1;
unsigned CCP10OD :1;
};
} ODCON2bits_t;
extern volatile ODCON2bits_t ODCON2bits __at(0xF41);

# 3524
extern volatile unsigned char ODCON1 __at(0xF42);

asm("ODCON1 equ 0F42h");


typedef union {
struct {
unsigned ECCP1OD :1;
unsigned ECCP2OD :1;
unsigned ECCP3OD :1;
unsigned CCP4OD :1;
unsigned CCP5OD :1;
unsigned CCP6OD :1;
unsigned CCP7OD :1;
unsigned CCP8OD :1;
};
} ODCON1bits_t;
extern volatile ODCON1bits_t ODCON1bits __at(0xF42);

# 3586
extern volatile unsigned char ALRMVALL __at(0xF44);

asm("ALRMVALL equ 0F44h");


typedef union {
struct {
unsigned ALRMVALL :8;
};
} ALRMVALLbits_t;
extern volatile ALRMVALLbits_t ALRMVALLbits __at(0xF44);

# 3606
extern volatile unsigned char ALRMVALH __at(0xF45);

asm("ALRMVALH equ 0F45h");


typedef union {
struct {
unsigned ALRMVALH :8;
};
} ALRMVALHbits_t;
extern volatile ALRMVALHbits_t ALRMVALHbits __at(0xF45);

# 3626
extern volatile unsigned char ALRMRPT __at(0xF46);

asm("ALRMRPT equ 0F46h");


typedef union {
struct {
unsigned ARPT :8;
};
struct {
unsigned ARPT0 :1;
unsigned ARPT1 :1;
unsigned ARPT2 :1;
unsigned ARPT3 :1;
unsigned ARPT4 :1;
unsigned ARPT5 :1;
unsigned ARPT6 :1;
unsigned ARPT7 :1;
};
} ALRMRPTbits_t;
extern volatile ALRMRPTbits_t ALRMRPTbits __at(0xF46);

# 3696
extern volatile unsigned char ALRMCFG __at(0xF47);

asm("ALRMCFG equ 0F47h");


typedef union {
struct {
unsigned ALRMPTR :2;
unsigned AMASK :4;
unsigned CHIME :1;
unsigned ALRMEN :1;
};
struct {
unsigned ALRMPTR0 :1;
unsigned ALRMPTR1 :1;
unsigned AMASK0 :1;
unsigned AMASK1 :1;
unsigned AMASK2 :1;
unsigned AMASK3 :1;
};
} ALRMCFGbits_t;
extern volatile ALRMCFGbits_t ALRMCFGbits __at(0xF47);

# 3772
extern volatile unsigned char ANCON0 __at(0xF48);

asm("ANCON0 equ 0F48h");


typedef union {
struct {
unsigned PCFG0 :1;
unsigned PCFG1 :1;
unsigned PCFG2 :1;
unsigned PCFG3 :1;
unsigned PCFG4 :1;
unsigned PCFG5 :1;
unsigned PCFG6 :1;
unsigned PCFG7 :1;
};
} ANCON0bits_t;
extern volatile ANCON0bits_t ANCON0bits __at(0xF48);

# 3834
extern volatile unsigned char ANCON1 __at(0xF49);

asm("ANCON1 equ 0F49h");


typedef union {
struct {
unsigned PCFG8 :1;
unsigned PCFG9 :1;
unsigned PCFG10 :1;
unsigned PCFG11 :1;
unsigned PCFG12 :1;
unsigned :2;
unsigned VBGEN :1;
};
struct {
unsigned :7;
unsigned PCFG15 :1;
};
} ANCON1bits_t;
extern volatile ANCON1bits_t ANCON1bits __at(0xF49);

# 3894
extern volatile unsigned char DSWAKEL __at(0xF4A);

asm("DSWAKEL equ 0F4Ah");


typedef union {
struct {
unsigned DSPOR :1;
unsigned :1;
unsigned DSMCLR :1;
unsigned DSRTC :1;
unsigned DSWDT :1;
unsigned DSULP :1;
unsigned :1;
unsigned DSFLT :1;
};
} DSWAKELbits_t;
extern volatile DSWAKELbits_t DSWAKELbits __at(0xF4A);

# 3946
extern volatile unsigned char DSWAKEH __at(0xF4B);

asm("DSWAKEH equ 0F4Bh");


typedef union {
struct {
unsigned DSINT0 :1;
};
} DSWAKEHbits_t;
extern volatile DSWAKEHbits_t DSWAKEHbits __at(0xF4B);

# 3966
extern volatile unsigned char DSCONL __at(0xF4C);

asm("DSCONL equ 0F4Ch");


typedef union {
struct {
unsigned RELEASE :1;
unsigned DSBOR :1;
unsigned ULPWDIS :1;
};
} DSCONLbits_t;
extern volatile DSCONLbits_t DSCONLbits __at(0xF4C);

# 3998
extern volatile unsigned char DSCONH __at(0xF4D);

asm("DSCONH equ 0F4Dh");


typedef union {
struct {
unsigned RTCWDIS :1;
unsigned DSULPEN :1;
unsigned :5;
unsigned DSEN :1;
};
} DSCONHbits_t;
extern volatile DSCONHbits_t DSCONHbits __at(0xF4D);

# 4031
extern volatile unsigned char DSGPR0 __at(0xF4E);

asm("DSGPR0 equ 0F4Eh");


typedef union {
struct {
unsigned DSGPR0 :8;
};
} DSGPR0bits_t;
extern volatile DSGPR0bits_t DSGPR0bits __at(0xF4E);

# 4051
extern volatile unsigned char DSGPR1 __at(0xF4F);

asm("DSGPR1 equ 0F4Fh");


typedef union {
struct {
unsigned DSGPR1 :8;
};
} DSGPR1bits_t;
extern volatile DSGPR1bits_t DSGPR1bits __at(0xF4F);

# 4071
extern volatile unsigned char CCPTMRS2 __at(0xF50);

asm("CCPTMRS2 equ 0F50h");


typedef union {
struct {
unsigned C8TSEL :2;
unsigned C9TSEL0 :1;
unsigned :1;
unsigned C10TSEL0 :1;
};
struct {
unsigned C8TSEL0 :1;
unsigned C8TSEL1 :1;
};
} CCPTMRS2bits_t;
extern volatile CCPTMRS2bits_t CCPTMRS2bits __at(0xF50);

# 4118
extern volatile unsigned char CCPTMRS1 __at(0xF51);

asm("CCPTMRS1 equ 0F51h");


typedef union {
struct {
unsigned C4TSEL :2;
unsigned C5TSEL0 :1;
unsigned :1;
unsigned C6TSEL0 :1;
unsigned :1;
unsigned C7TSEL :2;
};
struct {
unsigned C4TSEL0 :1;
unsigned C4TSEL1 :1;
unsigned :4;
unsigned C7TSEL0 :1;
unsigned C7TSEL1 :1;
};
} CCPTMRS1bits_t;
extern volatile CCPTMRS1bits_t CCPTMRS1bits __at(0xF51);

# 4185
extern volatile unsigned char CCPTMRS0 __at(0xF52);

asm("CCPTMRS0 equ 0F52h");


typedef union {
struct {
unsigned C1TSEL :3;
unsigned C2TSEL :3;
unsigned C3TSEL :2;
};
struct {
unsigned C1TSEL0 :1;
unsigned C1TSEL1 :1;
unsigned C1TSEL2 :1;
unsigned C2TSEL0 :1;
unsigned C2TSEL1 :1;
unsigned C2TSEL2 :1;
unsigned C3TSEL0 :1;
unsigned C3TSEL1 :1;
};
} CCPTMRS0bits_t;
extern volatile CCPTMRS0bits_t CCPTMRS0bits __at(0xF52);

# 4267
extern volatile unsigned char CVRCON __at(0xF53);

asm("CVRCON equ 0F53h");


typedef union {
struct {
unsigned CVR :4;
unsigned CVRSS :1;
unsigned CVRR :1;
unsigned CVROE :1;
unsigned CVREN :1;
};
struct {
unsigned CVR0 :1;
unsigned CVR1 :1;
unsigned CVR2 :1;
unsigned CVR3 :1;
};
struct {
unsigned :6;
unsigned CVROEN :1;
};
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __at(0xF53);

# 4346
extern volatile unsigned char PMSTATL __at(0xF54);

asm("PMSTATL equ 0F54h");


typedef union {
struct {
unsigned OB0E :1;
unsigned OB1E :1;
unsigned OB2E :1;
unsigned OB3E :1;
unsigned :2;
unsigned OBUF :1;
unsigned OBE :1;
};
} PMSTATLbits_t;
extern volatile PMSTATLbits_t PMSTATLbits __at(0xF54);

# 4397
extern volatile unsigned char PMSTATH __at(0xF55);

asm("PMSTATH equ 0F55h");


typedef union {
struct {
unsigned IB0F :1;
unsigned IB1F :1;
unsigned IB2F :1;
unsigned IB3F :1;
unsigned :2;
unsigned IBOV :1;
unsigned IBF :1;
};
} PMSTATHbits_t;
extern volatile PMSTATHbits_t PMSTATHbits __at(0xF55);

# 4448
extern volatile unsigned char PMEL __at(0xF56);

asm("PMEL equ 0F56h");


typedef union {
struct {
unsigned PTENL :8;
};
struct {
unsigned PTEN0 :1;
unsigned PTEN1 :1;
unsigned PTEN2 :1;
unsigned PTEN3 :1;
unsigned PTEN4 :1;
unsigned PTEN5 :1;
unsigned PTEN6 :1;
unsigned PTEN7 :1;
};
} PMELbits_t;
extern volatile PMELbits_t PMELbits __at(0xF56);

# 4518
extern volatile unsigned char PMEH __at(0xF57);

asm("PMEH equ 0F57h");


typedef union {
struct {
unsigned PTENH :8;
};
struct {
unsigned PTEN8 :1;
unsigned PTEN9 :1;
unsigned PTEN10 :1;
unsigned PTEN11 :1;
unsigned PTEN12 :1;
unsigned PTEN13 :1;
unsigned PTEN14 :1;
unsigned PTEN15 :1;
};
} PMEHbits_t;
extern volatile PMEHbits_t PMEHbits __at(0xF57);

# 4588
extern volatile unsigned char PMDIN2L __at(0xF58);

asm("PMDIN2L equ 0F58h");


typedef union {
struct {
unsigned DATAL :8;
};
} PMDIN2Lbits_t;
extern volatile PMDIN2Lbits_t PMDIN2Lbits __at(0xF58);

# 4608
extern volatile unsigned char PMDIN2H __at(0xF59);

asm("PMDIN2H equ 0F59h");


typedef union {
struct {
unsigned DATAH :8;
};
} PMDIN2Hbits_t;
extern volatile PMDIN2Hbits_t PMDIN2Hbits __at(0xF59);

# 4628
extern volatile unsigned char PMDOUT2L __at(0xF5A);

asm("PMDOUT2L equ 0F5Ah");


typedef union {
struct {
unsigned DATAL :8;
};
} PMDOUT2Lbits_t;
extern volatile PMDOUT2Lbits_t PMDOUT2Lbits __at(0xF5A);

# 4648
extern volatile unsigned char PMDOUT2H __at(0xF5B);

asm("PMDOUT2H equ 0F5Bh");


typedef union {
struct {
unsigned DATAH :8;
};
} PMDOUT2Hbits_t;
extern volatile PMDOUT2Hbits_t PMDOUT2Hbits __at(0xF5B);

# 4668
extern volatile unsigned char PMMODEL __at(0xF5C);

asm("PMMODEL equ 0F5Ch");


typedef union {
struct {
unsigned WAITE :2;
unsigned WAITM :4;
unsigned WAITB :2;
};
struct {
unsigned WAITE0 :1;
unsigned WAITE1 :1;
unsigned WAITM0 :1;
unsigned WAITM1 :1;
unsigned WAITM2 :1;
unsigned WAITM3 :1;
unsigned WAITB0 :1;
unsigned WAITB1 :1;
};
} PMMODELbits_t;
extern volatile PMMODELbits_t PMMODELbits __at(0xF5C);

# 4750
extern volatile unsigned char PMMODEH __at(0xF5D);

asm("PMMODEH equ 0F5Dh");


typedef union {
struct {
unsigned MODE0 :1;
unsigned MODE1 :1;
unsigned MODE16 :1;
unsigned INCM0 :1;
unsigned INCM1 :1;
unsigned IRQM0 :1;
unsigned IRQM1 :1;
unsigned BUSY :1;
};
} PMMODEHbits_t;
extern volatile PMMODEHbits_t PMMODEHbits __at(0xF5D);

# 4812
extern volatile unsigned char PMCONL __at(0xF5E);

asm("PMCONL equ 0F5Eh");


typedef union {
struct {
unsigned RDSP :1;
unsigned WRSP :1;
unsigned BEP :1;
unsigned CS1P :1;
unsigned :1;
unsigned ALP :1;
unsigned CSF0 :1;
unsigned CSF1 :1;
};
} PMCONLbits_t;
extern volatile PMCONLbits_t PMCONLbits __at(0xF5E);

# 4869
extern volatile unsigned char PMCONH __at(0xF5F);

asm("PMCONH equ 0F5Fh");


typedef union {
struct {
unsigned PTRDEN :1;
unsigned PTWREN :1;
unsigned PTBEEN :1;
unsigned ADRMUX0 :1;
unsigned ADRMUX1 :1;
unsigned :2;
unsigned PMPEN :1;
};
} PMCONHbits_t;
extern volatile PMCONHbits_t PMCONHbits __at(0xF5F);

# 4920
extern volatile unsigned char DMABCH __at(0xF66);

asm("DMABCH equ 0F66h");


typedef union {
struct {
unsigned DMACNTHB :2;
};
} DMABCHbits_t;
extern volatile DMABCHbits_t DMABCHbits __at(0xF66);

# 4940
extern volatile unsigned char DMABCL __at(0xF67);

asm("DMABCL equ 0F67h");


typedef union {
struct {
unsigned DMACNTLB :8;
};
} DMABCLbits_t;
extern volatile DMABCLbits_t DMABCLbits __at(0xF67);

# 4960
extern volatile unsigned char RXADDRH __at(0xF68);

asm("RXADDRH equ 0F68h");


typedef union {
struct {
unsigned DMARCVPTRHB :4;
};
} RXADDRHbits_t;
extern volatile RXADDRHbits_t RXADDRHbits __at(0xF68);

# 4980
extern volatile unsigned char RXADDRL __at(0xF69);

asm("RXADDRL equ 0F69h");


typedef union {
struct {
unsigned DMARCVPTRLB :8;
};
} RXADDRLbits_t;
extern volatile RXADDRLbits_t RXADDRLbits __at(0xF69);

# 5000
extern volatile unsigned char TXADDRH __at(0xF6A);

asm("TXADDRH equ 0F6Ah");


typedef union {
struct {
unsigned DMATXPTRHB :4;
};
} TXADDRHbits_t;
extern volatile TXADDRHbits_t TXADDRHbits __at(0xF6A);

# 5020
extern volatile unsigned char TXADDRL __at(0xF6B);

asm("TXADDRL equ 0F6Bh");


typedef union {
struct {
unsigned DMATXPTRLB :8;
};
} TXADDRLbits_t;
extern volatile TXADDRLbits_t TXADDRLbits __at(0xF6B);

# 5040
extern volatile unsigned char PMDIN1L __at(0xF6C);

asm("PMDIN1L equ 0F6Ch");


typedef union {
struct {
unsigned DATAL :8;
};
} PMDIN1Lbits_t;
extern volatile PMDIN1Lbits_t PMDIN1Lbits __at(0xF6C);

# 5060
extern volatile unsigned char PMDIN1H __at(0xF6D);

asm("PMDIN1H equ 0F6Dh");


typedef union {
struct {
unsigned DATAH :8;
};
} PMDIN1Hbits_t;
extern volatile PMDIN1Hbits_t PMDIN1Hbits __at(0xF6D);

# 5080
extern volatile unsigned char PMADDRL __at(0xF6E);

asm("PMADDRL equ 0F6Eh");


typedef union {
struct {
unsigned ADDRL :8;
};
} PMADDRLbits_t;
extern volatile PMADDRLbits_t PMADDRLbits __at(0xF6E);

# 5100
extern volatile unsigned char PMDOUT1L __at(0xF6E);

asm("PMDOUT1L equ 0F6Eh");


typedef union {
struct {
unsigned PMDOUT1L :8;
};
} PMDOUT1Lbits_t;
extern volatile PMDOUT1Lbits_t PMDOUT1Lbits __at(0xF6E);

# 5120
extern volatile unsigned char PMADDRH __at(0xF6F);

asm("PMADDRH equ 0F6Fh");


typedef union {
struct {
unsigned ADDRH :6;
unsigned CS1 :1;
};
} PMADDRHbits_t;
extern volatile PMADDRHbits_t PMADDRHbits __at(0xF6F);

# 5146
extern volatile unsigned char PMDOUT1H __at(0xF6F);

asm("PMDOUT1H equ 0F6Fh");


typedef union {
struct {
unsigned PMDOUT1H :8;
};
} PMDOUT1Hbits_t;
extern volatile PMDOUT1Hbits_t PMDOUT1Hbits __at(0xF6F);

# 5166
extern volatile unsigned char CMSTAT __at(0xF70);

asm("CMSTAT equ 0F70h");


extern volatile unsigned char CMSTATUS __at(0xF70);

asm("CMSTATUS equ 0F70h");


typedef union {
struct {
unsigned COUT1 :1;
unsigned COUT2 :1;
unsigned COUT3 :1;
};
} CMSTATbits_t;
extern volatile CMSTATbits_t CMSTATbits __at(0xF70);

# 5201
typedef union {
struct {
unsigned COUT1 :1;
unsigned COUT2 :1;
unsigned COUT3 :1;
};
} CMSTATUSbits_t;
extern volatile CMSTATUSbits_t CMSTATUSbits __at(0xF70);

# 5228
extern volatile unsigned char SSP2CON2 __at(0xF71);

asm("SSP2CON2 equ 0F71h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN2 :1;
unsigned ADMSK12 :1;
unsigned ADMSK22 :1;
unsigned ADMSK32 :1;
unsigned ACKEN2 :1;
unsigned ACKDT2 :1;
unsigned ACKSTAT2 :1;
unsigned GCEN2 :1;
};
struct {
unsigned :1;
unsigned RSEN2 :1;
unsigned PEN2 :1;
unsigned RCEN2 :1;
unsigned ADMSK42 :1;
unsigned ADMSK52 :1;
};
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __at(0xF71);

# 5406
extern volatile unsigned char SSP2CON1 __at(0xF72);

asm("SSP2CON1 equ 0F72h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM02 :1;
unsigned SSPM12 :1;
unsigned SSPM22 :1;
unsigned SSPM32 :1;
unsigned CKP2 :1;
unsigned SSPEN2 :1;
unsigned SSPOV2 :1;
unsigned WCOL2 :1;
};
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __at(0xF72);

# 5526
extern volatile unsigned char SSP2STAT __at(0xF73);

asm("SSP2STAT equ 0F73h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned BF2 :1;
unsigned UA2 :1;
unsigned I2C_READ2 :1;
unsigned I2C_START2 :1;
unsigned I2C_STOP2 :1;
unsigned DA2 :1;
unsigned CKE2 :1;
unsigned SMP2 :1;
};
struct {
unsigned :2;
unsigned READ_WRITE2 :1;
unsigned S2 :1;
unsigned P2 :1;
unsigned DATA_ADDRESS2 :1;
};
struct {
unsigned :2;
unsigned RW2 :1;
unsigned START2 :1;
unsigned STOP2 :1;
unsigned D_A2 :1;
};
struct {
unsigned :5;
unsigned D_NOT_A2 :1;
};
struct {
unsigned :2;
unsigned R_W2 :1;
unsigned :2;
unsigned D_nA2 :1;
};
struct {
unsigned :2;
unsigned R_NOT_W2 :1;
};
struct {
unsigned :2;
unsigned R_nW2 :1;
unsigned :2;
unsigned I2C_DAT2 :1;
};
struct {
unsigned :2;
unsigned NOT_W2 :1;
};
struct {
unsigned :5;
unsigned NOT_A2 :1;
};
struct {
unsigned :2;
unsigned nW2 :1;
unsigned :2;
unsigned nA2 :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE2 :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS2 :1;
};
struct {
unsigned :2;
unsigned nWRITE2 :1;
unsigned :2;
unsigned nADDRESS2 :1;
};
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __at(0xF73);

# 5828
extern volatile unsigned char SSP2ADD __at(0xF74);

asm("SSP2ADD equ 0F74h");


typedef union {
struct {
unsigned SSPADD :8;
};
struct {
unsigned MSK02 :1;
unsigned MSK12 :1;
unsigned MSK22 :1;
unsigned MSK32 :1;
unsigned MSK42 :1;
unsigned MSK52 :1;
unsigned MSK62 :1;
unsigned MSK72 :1;
};
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __at(0xF74);

# 5898
extern volatile unsigned char SSP2MSK __at(0xF74);

asm("SSP2MSK equ 0F74h");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
} SSP2MSKbits_t;
extern volatile SSP2MSKbits_t SSP2MSKbits __at(0xF74);

# 5960
extern volatile unsigned char SSP2BUF __at(0xF75);

asm("SSP2BUF equ 0F75h");


typedef union {
struct {
unsigned SSPBUF :8;
};
} SSP2BUFbits_t;
extern volatile SSP2BUFbits_t SSP2BUFbits __at(0xF75);

# 5980
extern volatile unsigned char T4CON __at(0xF76);

asm("T4CON equ 0F76h");


typedef union {
struct {
unsigned T4CKPS :2;
unsigned TMR4ON :1;
unsigned T4OUTPS :4;
};
struct {
unsigned T4CKPS0 :1;
unsigned T4CKPS1 :1;
unsigned :1;
unsigned T4OUTPS0 :1;
unsigned T4OUTPS1 :1;
unsigned T4OUTPS2 :1;
unsigned T4OUTPS3 :1;
};
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __at(0xF76);

# 6051
extern volatile unsigned char PR4 __at(0xF77);

asm("PR4 equ 0F77h");


typedef union {
struct {
unsigned PR4 :8;
};
} PR4bits_t;
extern volatile PR4bits_t PR4bits __at(0xF77);

# 6071
extern volatile unsigned char TMR4 __at(0xF78);

asm("TMR4 equ 0F78h");


typedef union {
struct {
unsigned TMR4 :8;
};
} TMR4bits_t;
extern volatile TMR4bits_t TMR4bits __at(0xF78);

# 6091
extern volatile unsigned char T3CON __at(0xF79);

asm("T3CON equ 0F79h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T3SYNC :1;
};
struct {
unsigned TMR3ON :1;
unsigned RD16 :1;
unsigned nT3SYNC :1;
unsigned T3OSCEN :1;
unsigned T3CKPS :2;
unsigned TMR3CS :2;
};
struct {
unsigned :4;
unsigned T3CKPS0 :1;
unsigned T3CKPS1 :1;
unsigned TMR3CS0 :1;
unsigned TMR3CS1 :1;
};
struct {
unsigned :3;
unsigned SOSCEN3 :1;
unsigned :3;
unsigned RD163 :1;
};
struct {
unsigned :7;
unsigned T3RD16 :1;
};
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __at(0xF79);

# 6202
extern volatile unsigned short TMR3 __at(0xF7A);

asm("TMR3 equ 0F7Ah");




extern volatile unsigned char TMR3L __at(0xF7A);

asm("TMR3L equ 0F7Ah");


typedef union {
struct {
unsigned TMR3L :8;
};
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __at(0xF7A);

# 6229
extern volatile unsigned char TMR3H __at(0xF7B);

asm("TMR3H equ 0F7Bh");


typedef union {
struct {
unsigned TMR3H :8;
};
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __at(0xF7B);

# 6249
extern volatile unsigned char BAUDCON2 __at(0xF7C);

asm("BAUDCON2 equ 0F7Ch");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned ABDEN2 :1;
unsigned WUE2 :1;
unsigned :1;
unsigned BRG162 :1;
unsigned SCKP2 :1;
unsigned DTRXP2 :1;
unsigned RCIDL2 :1;
unsigned ABDOVF2 :1;
};
struct {
unsigned :4;
unsigned TXCKP2 :1;
unsigned RXDTP2 :1;
unsigned RCMT2 :1;
};
} BAUDCON2bits_t;
extern volatile BAUDCON2bits_t BAUDCON2bits __at(0xF7C);

# 6372
extern volatile unsigned char SPBRGH2 __at(0xF7D);

asm("SPBRGH2 equ 0F7Dh");


typedef union {
struct {
unsigned SPBRGH2 :8;
};
} SPBRGH2bits_t;
extern volatile SPBRGH2bits_t SPBRGH2bits __at(0xF7D);

# 6392
extern volatile unsigned char BAUDCON1 __at(0xF7E);

asm("BAUDCON1 equ 0F7Eh");


extern volatile unsigned char BAUDCON __at(0xF7E);

asm("BAUDCON equ 0F7Eh");

extern volatile unsigned char BAUDCTL __at(0xF7E);

asm("BAUDCTL equ 0F7Eh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP1 :1;
unsigned RCMT :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __at(0xF7E);

# 6570
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP1 :1;
unsigned RCMT :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xF7E);

# 6733
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned ABDEN1 :1;
unsigned WUE1 :1;
unsigned :1;
unsigned BRG161 :1;
unsigned CKTXP :1;
unsigned DTRXP :1;
unsigned RCIDL1 :1;
unsigned ABDOVF1 :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned DTRXP1 :1;
unsigned RCMT :1;
};
struct {
unsigned :4;
unsigned SCKP1 :1;
unsigned RXDTP1 :1;
unsigned RCMT1 :1;
};
struct {
unsigned :4;
unsigned TXCKP1 :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xF7E);

# 6899
extern volatile unsigned char SPBRGH1 __at(0xF7F);

asm("SPBRGH1 equ 0F7Fh");


extern volatile unsigned char SPBRGH __at(0xF7F);

asm("SPBRGH equ 0F7Fh");


typedef union {
struct {
unsigned SPBRGH1 :8;
};
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __at(0xF7F);

# 6922
typedef union {
struct {
unsigned SPBRGH1 :8;
};
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __at(0xF7F);

# 6937
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned :1;
unsigned AN4 :1;
unsigned OSC2 :1;
unsigned OSC1 :1;
};
struct {
unsigned :5;
unsigned NOT_SS1 :1;
};
struct {
unsigned C1INA :1;
unsigned C2INA :1;
unsigned VREF_MINUS :1;
unsigned VREF_PLUS :1;
unsigned :1;
unsigned nSS1 :1;
unsigned CLKO :1;
unsigned CLKI :1;
};
struct {
unsigned PMA6 :1;
unsigned PMA7 :1;
unsigned CVREF :1;
unsigned C1INB :1;
unsigned :1;
unsigned HLVDIN :1;
};
struct {
unsigned RP0 :1;
unsigned RP1 :1;
unsigned C2INB :1;
unsigned :2;
unsigned C1INC :1;
};
struct {
unsigned ULPWU :1;
unsigned VBG :1;
unsigned C1IND :1;
unsigned :2;
unsigned RP2 :1;
};
struct {
unsigned :2;
unsigned C3INB :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :4;
unsigned LVDIN :1;
unsigned :1;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 7211
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned AN12 :1;
unsigned AN10 :1;
unsigned AN8 :1;
unsigned AN9 :1;
unsigned PMA1 :1;
unsigned PMA0 :1;
unsigned KBI2 :1;
unsigned KBI3 :1;
};
struct {
unsigned INT0 :1;
unsigned PMPBE :1;
unsigned CTED1 :1;
unsigned CTED2 :1;
unsigned KBI0 :1;
unsigned KBI1 :1;
unsigned PGC :1;
unsigned PGD :1;
};
struct {
unsigned RP3 :1;
unsigned RTCC :1;
unsigned PMA3 :1;
unsigned PMA2 :1;
unsigned :2;
unsigned RP9 :1;
unsigned RP10 :1;
};
struct {
unsigned :1;
unsigned PMBE :1;
unsigned REFO :1;
};
struct {
unsigned :1;
unsigned RP4 :1;
unsigned RP5 :1;
unsigned RP6 :1;
unsigned RP7 :1;
unsigned RP8 :1;
};
struct {
unsigned C3IND :1;
unsigned C3INC :1;
unsigned C2INC :1;
unsigned C3INA :1;
};
struct {
unsigned :4;
unsigned CCP4 :1;
unsigned CCP5 :1;
unsigned CCP6 :1;
unsigned CCP7 :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 7522
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned AN11 :1;
unsigned :3;
unsigned PMA5 :1;
unsigned PMA4 :1;
};
struct {
unsigned T1CKI :1;
unsigned :1;
unsigned CTPLS :1;
unsigned :3;
unsigned TX1 :1;
unsigned RX1 :1;
};
struct {
unsigned RP11 :1;
unsigned RP12 :1;
unsigned RP13 :1;
unsigned SCL1 :1;
unsigned SDA1 :1;
unsigned :1;
unsigned CK1 :1;
unsigned DT1 :1;
};
struct {
unsigned :2;
unsigned C2IND :1;
};
struct {
unsigned :3;
unsigned RP14 :1;
unsigned RP15 :1;
unsigned RP16 :1;
unsigned RP17 :1;
unsigned RP18 :1;
};
struct {
unsigned :1;
unsigned CCP8 :1;
unsigned :1;
unsigned SCK1 :1;
unsigned SDI1 :1;
unsigned SDO1 :1;
unsigned CCP9 :1;
unsigned CCP10 :1;
};
struct {
unsigned :1;
unsigned CCP2 :1;
unsigned PA1 :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 7796
extern volatile unsigned char PORTD __at(0xF83);

asm("PORTD equ 0F83h");


typedef union {
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
struct {
unsigned PMD0 :1;
unsigned PMD1 :1;
unsigned PMD2 :1;
unsigned PMD3 :1;
unsigned PMD4 :1;
unsigned PMD5 :1;
unsigned PMD6 :1;
unsigned PMD7 :1;
};
struct {
unsigned SCL2 :1;
unsigned SDA2 :1;
unsigned RP19 :1;
unsigned RP20 :1;
unsigned RP21 :1;
unsigned RP22 :1;
unsigned RP23 :1;
unsigned RP24 :1;
};
struct {
unsigned :7;
unsigned SS2 :1;
};
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __at(0xF83);

# 7967
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
};
struct {
unsigned AN5 :1;
unsigned AN6 :1;
unsigned AN7 :1;
};
struct {
unsigned PMPRD :1;
unsigned PMPWR :1;
unsigned PMPCS :1;
};
struct {
unsigned PMRD :1;
unsigned PMWR :1;
unsigned PMCS :1;
};
struct {
unsigned PD2 :1;
unsigned PC2 :1;
unsigned CCP10 :1;
};
struct {
unsigned RDE :1;
unsigned WRE :1;
unsigned CS :1;
};
struct {
unsigned :2;
unsigned PB2 :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 8108
extern volatile unsigned char HLVDCON __at(0xF85);

asm("HLVDCON equ 0F85h");


typedef union {
struct {
unsigned HLVDL :4;
unsigned HLVDEN :1;
unsigned IRVST :1;
unsigned BGVST :1;
unsigned VDIRMAG :1;
};
struct {
unsigned HLVDL0 :1;
unsigned HLVDL1 :1;
unsigned HLVDL2 :1;
unsigned HLVDL3 :1;
};
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __at(0xF85);

# 8178
extern volatile unsigned char DMACON2 __at(0xF86);

asm("DMACON2 equ 0F86h");


typedef union {
struct {
unsigned INTLVL :4;
unsigned DLYCYC :4;
};
struct {
unsigned INTLVL0 :1;
unsigned INTLVL1 :1;
unsigned INTLVL2 :1;
unsigned INTLVL3 :1;
unsigned DLYCYC0 :1;
unsigned DLYCYC1 :1;
unsigned DLYCYC2 :1;
unsigned DLYCYC3 :1;
};
} DMACON2bits_t;
extern volatile DMACON2bits_t DMACON2bits __at(0xF86);

# 8254
extern volatile unsigned char OSCCON2 __at(0xF87);

asm("OSCCON2 equ 0F87h");


typedef union {
struct {
unsigned :2;
unsigned PRISD :1;
unsigned SOSCGO :1;
unsigned SOSCDRV :1;
unsigned :1;
unsigned SOSCRUN :1;
};
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __at(0xF87);

# 8294
extern volatile unsigned char DMACON1 __at(0xF88);

asm("DMACON1 equ 0F88h");


typedef union {
struct {
unsigned DMAEN :1;
unsigned DLYINTEN :1;
unsigned DUPLEX0 :1;
unsigned DUPLEX1 :1;
unsigned RXINC :1;
unsigned TXINC :1;
unsigned SSCON0 :1;
unsigned SSCON1 :1;
};
} DMACON1bits_t;
extern volatile DMACON1bits_t DMACON1bits __at(0xF88);

# 8356
extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 8458
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 8570
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned LC3 :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 8682
extern volatile unsigned char LATD __at(0xF8C);

asm("LATD equ 0F8Ch");


typedef union {
struct {
unsigned LATD0 :1;
unsigned LATD1 :1;
unsigned LATD2 :1;
unsigned LATD3 :1;
unsigned LATD4 :1;
unsigned LATD5 :1;
unsigned LATD6 :1;
unsigned LATD7 :1;
};
struct {
unsigned LD0 :1;
unsigned LD1 :1;
unsigned LD2 :1;
unsigned LD3 :1;
unsigned LD4 :1;
unsigned LD5 :1;
unsigned LD6 :1;
unsigned LD7 :1;
};
} LATDbits_t;
extern volatile LATDbits_t LATDbits __at(0xF8C);

# 8794
extern volatile unsigned char LATE __at(0xF8D);

asm("LATE equ 0F8Dh");


typedef union {
struct {
unsigned LATE0 :1;
unsigned LATE1 :1;
unsigned LATE2 :1;
};
struct {
unsigned LE0 :1;
unsigned LE1 :1;
unsigned LE2 :1;
};
} LATEbits_t;
extern volatile LATEbits_t LATEbits __at(0xF8D);

# 8846
extern volatile unsigned char PIE4 __at(0xF8E);

asm("PIE4 equ 0F8Eh");


typedef union {
struct {
unsigned CCP3IE :1;
unsigned CCP4IE :1;
unsigned CCP5IE :1;
unsigned CCP6IE :1;
unsigned CCP7IE :1;
unsigned CCP8IE :1;
unsigned CCP9IE :1;
unsigned CCP10IE :1;
};
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __at(0xF8E);

# 8908
extern volatile unsigned char PIR4 __at(0xF8F);

asm("PIR4 equ 0F8Fh");


typedef union {
struct {
unsigned CCP3IF :1;
unsigned CCP4IF :1;
unsigned CCP5IF :1;
unsigned CCP6IF :1;
unsigned CCP7IF :1;
unsigned CCP8IF :1;
unsigned CCP9IF :1;
unsigned CCP10IF :1;
};
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __at(0xF8F);

# 8970
extern volatile unsigned char IPR4 __at(0xF90);

asm("IPR4 equ 0F90h");


typedef union {
struct {
unsigned CCP3IP :1;
unsigned CCP4IP :1;
unsigned CCP5IP :1;
unsigned CCP6IP :1;
unsigned CCP7IP :1;
unsigned CCP8IP :1;
unsigned CCP9IP :1;
unsigned CCP10IP :1;
};
struct {
unsigned CCIP3IP :1;
};
} IPR4bits_t;
extern volatile IPR4bits_t IPR4bits __at(0xF90);

# 9040
extern volatile unsigned char PIE5 __at(0xF91);

asm("PIE5 equ 0F91h");


typedef union {
struct {
unsigned TMR1GIE :1;
unsigned TMR5GIE :1;
unsigned TMR5IE :1;
unsigned TMR6IE :1;
unsigned TMR8IE :1;
unsigned CM3IE :1;
};
} PIE5bits_t;
extern volatile PIE5bits_t PIE5bits __at(0xF91);

# 9090
extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 9147
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 9209
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 9271
extern volatile unsigned char TRISD __at(0xF95);

asm("TRISD equ 0F95h");


typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __at(0xF95);

# 9333
extern volatile unsigned char TRISE __at(0xF96);

asm("TRISE equ 0F96h");


typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
unsigned :3;
unsigned REPU :1;
unsigned RDPU :1;
};
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __at(0xF96);

# 9378
extern volatile unsigned char T3GCON __at(0xF97);

asm("T3GCON equ 0F97h");


typedef union {
struct {
unsigned T3GSS0 :1;
unsigned T3GSS1 :1;
unsigned T3GVAL :1;
unsigned T3GGO_T3DONE :1;
unsigned T3GSPM :1;
unsigned T3GTM :1;
unsigned T3GPOL :1;
unsigned TMR3GE :1;
};
struct {
unsigned :3;
unsigned T3GGO :1;
};
struct {
unsigned :3;
unsigned T3DONE :1;
};
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __at(0xF97);

# 9458
extern volatile unsigned char PIR5 __at(0xF98);

asm("PIR5 equ 0F98h");


typedef union {
struct {
unsigned TMR1GIF :1;
unsigned TMR5GIF :1;
unsigned TMR5IF :1;
unsigned TMR6IF :1;
unsigned TMR8IF :1;
unsigned CM3IF :1;
};
} PIR5bits_t;
extern volatile PIR5bits_t PIR5bits __at(0xF98);

# 9508
extern volatile unsigned char IPR5 __at(0xF99);

asm("IPR5 equ 0F99h");


typedef union {
struct {
unsigned TMR1GIP :1;
unsigned TMR5GIP :1;
unsigned TMR5IP :1;
unsigned TMR6IP :1;
unsigned TMR8IP :1;
unsigned CM3IP :1;
};
struct {
unsigned CCH05 :1;
unsigned CCH15 :1;
unsigned :1;
unsigned EVPOL05 :1;
unsigned EVPOL15 :1;
};
} IPR5bits_t;
extern volatile IPR5bits_t IPR5bits __at(0xF99);

# 9585
extern volatile unsigned char T1GCON __at(0xF9A);

asm("T1GCON equ 0F9Ah");


typedef union {
struct {
unsigned :3;
unsigned T1GGO_NOT_T1DONE :1;
};
struct {
unsigned T1GSS0 :1;
unsigned T1GSS1 :1;
unsigned T1GVAL :1;
unsigned T1GGO_nT1DONE :1;
unsigned T1GSPM :1;
unsigned T1GTM :1;
unsigned T1GPOL :1;
unsigned TMR1GE :1;
};
struct {
unsigned :3;
unsigned T1GGO :1;
};
struct {
unsigned :3;
unsigned NOT_T1DONE :1;
};
struct {
unsigned :3;
unsigned nT1DONE :1;
};
struct {
unsigned :3;
unsigned T1DONE :1;
};
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __at(0xF9A);

# 9692
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :6;
unsigned PLLEN :1;
unsigned INTSRC :1;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 9762
extern volatile unsigned char RCSTA2 __at(0xF9C);

asm("RCSTA2 equ 0F9Ch");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RX9D2 :1;
unsigned OERR2 :1;
unsigned FERR2 :1;
unsigned ADDEN2 :1;
unsigned CREN2 :1;
unsigned SREN2 :1;
unsigned RX92 :1;
unsigned SPEN2 :1;
};
struct {
unsigned RCD82 :1;
unsigned :5;
unsigned RC8_92 :1;
};
struct {
unsigned :6;
unsigned RC92 :1;
};
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __at(0xF9C);

# 9898
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSP1IE :1;
unsigned TX1IE :1;
unsigned RC1IE :1;
unsigned ADIE :1;
unsigned PMPIE :1;
};
struct {
unsigned :3;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
};
struct {
unsigned :7;
unsigned PSPIE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 9990
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSP1IF :1;
unsigned TX1IF :1;
unsigned RC1IF :1;
unsigned ADIF :1;
unsigned PMPIF :1;
};
struct {
unsigned :3;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
};
struct {
unsigned :7;
unsigned PSPIF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 10082
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSP1IP :1;
unsigned TX1IP :1;
unsigned RC1IP :1;
unsigned ADIP :1;
unsigned PMPIP :1;
};
struct {
unsigned :3;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
};
struct {
unsigned :7;
unsigned PSPIP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 10174
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned TMR3IE :1;
unsigned LVDIE :1;
unsigned BCL1IE :1;
unsigned :1;
unsigned CM1IE :1;
unsigned CM2IE :1;
unsigned OSCFIE :1;
};
struct {
unsigned :2;
unsigned HLVDIE :1;
unsigned BCLIE :1;
};
struct {
unsigned :6;
unsigned CMIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 10255
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned TMR3IF :1;
unsigned LVDIF :1;
unsigned BCL1IF :1;
unsigned :1;
unsigned CM1IF :1;
unsigned CM2IF :1;
unsigned OSCFIF :1;
};
struct {
unsigned :2;
unsigned HLVDIF :1;
unsigned BCLIF :1;
};
struct {
unsigned :6;
unsigned CMIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 10336
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned TMR3IP :1;
unsigned LVDIP :1;
unsigned BCL1IP :1;
unsigned :1;
unsigned CM1IP :1;
unsigned CM2IP :1;
unsigned OSCFIP :1;
};
struct {
unsigned :2;
unsigned HLVDIP :1;
unsigned BCLIP :1;
};
struct {
unsigned :6;
unsigned CMIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 10417
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned RTCCIE :1;
unsigned TMR3GIE :1;
unsigned CTMUIE :1;
unsigned TMR4IE :1;
unsigned TX2IE :1;
unsigned RC2IE :1;
unsigned BCL2IE :1;
unsigned SSP2IE :1;
};
struct {
unsigned RXB0IE :1;
unsigned RXB1IE :1;
unsigned TXB0IE :1;
unsigned TXB1IE :1;
unsigned TXB2IE :1;
};
struct {
unsigned :1;
unsigned RXBNIE :1;
unsigned :2;
unsigned TXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 10527
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned RTCCIF :1;
unsigned TMR3GIF :1;
unsigned CTMUIF :1;
unsigned TMR4IF :1;
unsigned TX2IF :1;
unsigned RC2IF :1;
unsigned BCL2IF :1;
unsigned SSP2IF :1;
};
struct {
unsigned :1;
unsigned RXBNIF :1;
unsigned :2;
unsigned TXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 10605
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned RTCCIP :1;
unsigned TMR3GIP :1;
unsigned CTMUIP :1;
unsigned TMR4IP :1;
unsigned TX2IP :1;
unsigned RC2IP :1;
unsigned BCL2IP :1;
unsigned SSP2IP :1;
};
struct {
unsigned :1;
unsigned RXBNIP :1;
unsigned :2;
unsigned TXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 10683
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned WPROG :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 10728
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");


typedef union {
struct {
unsigned EECON2 :8;
};
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __at(0xFA7);

# 10748
extern volatile unsigned char TXSTA2 __at(0xFA8);

asm("TXSTA2 equ 0FA8h");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D2 :1;
unsigned TRMT2 :1;
unsigned BRGH2 :1;
unsigned SENDB2 :1;
unsigned SYNC2 :1;
unsigned TXEN2 :1;
unsigned TX92 :1;
unsigned CSRC2 :1;
};
struct {
unsigned TXD82 :1;
unsigned :5;
unsigned TX8_92 :1;
};
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __at(0xFA8);

# 10875
extern volatile unsigned char TXREG2 __at(0xFA9);

asm("TXREG2 equ 0FA9h");


typedef union {
struct {
unsigned TXREG2 :8;
};
} TXREG2bits_t;
extern volatile TXREG2bits_t TXREG2bits __at(0xFA9);

# 10895
extern volatile unsigned char RCREG2 __at(0xFAA);

asm("RCREG2 equ 0FAAh");


typedef union {
struct {
unsigned RCREG2 :8;
};
} RCREG2bits_t;
extern volatile RCREG2bits_t RCREG2bits __at(0xFAA);

# 10915
extern volatile unsigned char SPBRG2 __at(0xFAB);

asm("SPBRG2 equ 0FABh");


typedef union {
struct {
unsigned SPBRG2 :8;
};
} SPBRG2bits_t;
extern volatile SPBRG2bits_t SPBRG2bits __at(0xFAB);

# 10935
extern volatile unsigned char RCSTA1 __at(0xFAC);

asm("RCSTA1 equ 0FACh");


extern volatile unsigned char RCSTA __at(0xFAC);

asm("RCSTA equ 0FACh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :2;
unsigned ADEN :1;
unsigned :2;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAC);

# 11108
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned RCD8 :1;
unsigned :2;
unsigned ADEN :1;
unsigned :2;
unsigned RC9 :1;
};
struct {
unsigned :6;
unsigned NOT_RC8 :1;
};
struct {
unsigned :6;
unsigned nRC8 :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned RX9D1 :1;
unsigned OERR1 :1;
unsigned FERR1 :1;
unsigned ADDEN1 :1;
unsigned CREN1 :1;
unsigned SREN1 :1;
unsigned RX91 :1;
unsigned SPEN1 :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAC);

# 11273
extern volatile unsigned char TXSTA1 __at(0xFAD);

asm("TXSTA1 equ 0FADh");


extern volatile unsigned char TXSTA __at(0xFAD);

asm("TXSTA equ 0FADh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAD);

# 11421
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TXD8 :1;
unsigned :5;
unsigned TX8_9 :1;
};
struct {
unsigned :6;
unsigned NOT_TX8 :1;
};
struct {
unsigned :6;
unsigned nTX8 :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAD);

# 11561
extern volatile unsigned char TXREG1 __at(0xFAE);

asm("TXREG1 equ 0FAEh");


extern volatile unsigned char TXREG __at(0xFAE);

asm("TXREG equ 0FAEh");


typedef union {
struct {
unsigned TXREG1 :8;
};
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __at(0xFAE);

# 11584
typedef union {
struct {
unsigned TXREG1 :8;
};
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __at(0xFAE);

# 11599
extern volatile unsigned char RCREG1 __at(0xFAF);

asm("RCREG1 equ 0FAFh");


extern volatile unsigned char RCREG __at(0xFAF);

asm("RCREG equ 0FAFh");


typedef union {
struct {
unsigned RCREG1 :8;
};
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __at(0xFAF);

# 11622
typedef union {
struct {
unsigned RCREG1 :8;
};
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __at(0xFAF);

# 11637
extern volatile unsigned char SPBRG1 __at(0xFB0);

asm("SPBRG1 equ 0FB0h");


extern volatile unsigned char SPBRG __at(0xFB0);

asm("SPBRG equ 0FB0h");


typedef union {
struct {
unsigned SPBRG1 :8;
};
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __at(0xFB0);

# 11660
typedef union {
struct {
unsigned SPBRG1 :8;
};
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __at(0xFB0);

# 11675
extern volatile unsigned char CTMUICON __at(0xFB1);

asm("CTMUICON equ 0FB1h");


typedef union {
struct {
unsigned IRNG :2;
unsigned ITRIM :6;
};
struct {
unsigned IRNG0 :1;
unsigned IRNG1 :1;
unsigned ITRIM0 :1;
unsigned ITRIM1 :1;
unsigned ITRIM2 :1;
unsigned ITRIM3 :1;
unsigned ITRIM4 :1;
unsigned ITRIM5 :1;
};
} CTMUICONbits_t;
extern volatile CTMUICONbits_t CTMUICONbits __at(0xFB1);

# 11751
extern volatile unsigned char CTMUCONL __at(0xFB2);

asm("CTMUCONL equ 0FB2h");


typedef union {
struct {
unsigned EDG1STAT :1;
unsigned EDG2STAT :1;
unsigned EDG1SEL0 :1;
unsigned EDG1SEL1 :1;
unsigned EDG1POL :1;
unsigned EDG2SEL0 :1;
unsigned EDG2SEL1 :1;
unsigned EDG2POL :1;
};
} CTMUCONLbits_t;
extern volatile CTMUCONLbits_t CTMUCONLbits __at(0xFB2);

# 11813
extern volatile unsigned char CTMUCONH __at(0xFB3);

asm("CTMUCONH equ 0FB3h");


typedef union {
struct {
unsigned CTTRIG :1;
unsigned IDISSEN :1;
unsigned EDGSEQEN :1;
unsigned EDGEN :1;
unsigned TGEN :1;
unsigned CTMUSIDL :1;
unsigned :1;
unsigned CTMUEN :1;
};
} CTMUCONHbits_t;
extern volatile CTMUCONHbits_t CTMUCONHbits __at(0xFB3);

# 11870
extern volatile unsigned char CCP2CON __at(0xFB4);

asm("CCP2CON equ 0FB4h");


extern volatile unsigned char ECCP2CON __at(0xFB4);

asm("ECCP2CON equ 0FB4h");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
unsigned P2M :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
unsigned P2M0 :1;
unsigned P2M1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFB4);

# 11970
typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
unsigned P2M :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
unsigned P2M0 :1;
unsigned P2M1 :1;
};
struct {
unsigned :4;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __at(0xFB4);

# 12062
extern volatile unsigned short CCPR2 __at(0xFB5);

asm("CCPR2 equ 0FB5h");




extern volatile unsigned char CCPR2L __at(0xFB5);

asm("CCPR2L equ 0FB5h");


typedef union {
struct {
unsigned CCPR2L :8;
};
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __at(0xFB5);

# 12089
extern volatile unsigned char CCPR2H __at(0xFB6);

asm("CCPR2H equ 0FB6h");


typedef union {
struct {
unsigned CCPR2H :8;
};
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __at(0xFB6);

# 12109
extern volatile unsigned char ECCP2DEL __at(0xFB7);

asm("ECCP2DEL equ 0FB7h");


extern volatile unsigned char PWM2CON __at(0xFB7);

asm("PWM2CON equ 0FB7h");


typedef union {
struct {
unsigned P2DC :7;
unsigned P2RSEN :1;
};
struct {
unsigned P2DC0 :1;
unsigned P2DC1 :1;
unsigned P2DC2 :1;
unsigned P2DC3 :1;
unsigned P2DC4 :1;
unsigned P2DC5 :1;
unsigned P2DC6 :1;
};
} ECCP2DELbits_t;
extern volatile ECCP2DELbits_t ECCP2DELbits __at(0xFB7);

# 12182
typedef union {
struct {
unsigned P2DC :7;
unsigned P2RSEN :1;
};
struct {
unsigned P2DC0 :1;
unsigned P2DC1 :1;
unsigned P2DC2 :1;
unsigned P2DC3 :1;
unsigned P2DC4 :1;
unsigned P2DC5 :1;
unsigned P2DC6 :1;
};
} PWM2CONbits_t;
extern volatile PWM2CONbits_t PWM2CONbits __at(0xFB7);

# 12247
extern volatile unsigned char ECCP2AS __at(0xFB8);

asm("ECCP2AS equ 0FB8h");


typedef union {
struct {
unsigned PSS2BD :2;
unsigned PSS2AC :2;
unsigned ECCP2AS :3;
unsigned ECCP2ASE :1;
};
struct {
unsigned PSS2BD0 :1;
unsigned PSS2BD1 :1;
unsigned PSS2AC0 :1;
unsigned PSS2AC1 :1;
unsigned ECCP2AS0 :1;
unsigned ECCP2AS1 :1;
unsigned ECCP2AS2 :1;
};
} ECCP2ASbits_t;
extern volatile ECCP2ASbits_t ECCP2ASbits __at(0xFB8);

# 12329
extern volatile unsigned char PSTR2CON __at(0xFB9);

asm("PSTR2CON equ 0FB9h");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned STRSYNC :1;
unsigned :1;
unsigned CMPL0 :1;
unsigned CMPL1 :1;
};
struct {
unsigned P2DC0 :1;
unsigned P2DC1 :1;
unsigned P2DC2 :1;
unsigned P2DC3 :1;
unsigned P2DC4 :1;
unsigned P2DC5 :1;
unsigned P2DC6 :1;
};
struct {
unsigned P2DC02 :1;
unsigned P2DC12 :1;
unsigned P2DC22 :1;
unsigned P2DC32 :1;
unsigned P2DC42 :1;
unsigned :1;
unsigned CMPL02 :1;
unsigned CMPL12 :1;
};
struct {
unsigned P2DC0CON :1;
unsigned P2DC1CON :1;
unsigned P2DC2CON :1;
unsigned P2DC3CON :1;
unsigned P2DC4CON :1;
unsigned :1;
unsigned P2DC62 :1;
};
struct {
unsigned STRA2 :1;
unsigned STRB2 :1;
unsigned STRC2 :1;
unsigned STRD2 :1;
unsigned STRSYNC2 :1;
unsigned :1;
unsigned P2DC6CON :1;
};
struct {
unsigned :5;
unsigned P2DC52 :1;
};
struct {
unsigned :5;
unsigned P2DC5CON :1;
};
} PSTR2CONbits_t;
extern volatile PSTR2CONbits_t PSTR2CONbits __at(0xFB9);

# 12571
extern volatile unsigned char CCP1CON __at(0xFBA);

asm("CCP1CON equ 0FBAh");


extern volatile unsigned char ECCP1CON __at(0xFBA);

asm("ECCP1CON equ 0FBAh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBA);

# 12671
typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
unsigned P1M :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
unsigned P1M0 :1;
unsigned P1M1 :1;
};
struct {
unsigned :4;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __at(0xFBA);

# 12763
extern volatile unsigned short CCPR1 __at(0xFBB);

asm("CCPR1 equ 0FBBh");




extern volatile unsigned char CCPR1L __at(0xFBB);

asm("CCPR1L equ 0FBBh");


typedef union {
struct {
unsigned CCPR1L :8;
};
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __at(0xFBB);

# 12790
extern volatile unsigned char CCPR1H __at(0xFBC);

asm("CCPR1H equ 0FBCh");


typedef union {
struct {
unsigned CCPR1H :8;
};
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __at(0xFBC);

# 12810
extern volatile unsigned char ECCP1DEL __at(0xFBD);

asm("ECCP1DEL equ 0FBDh");


extern volatile unsigned char PWM1CON __at(0xFBD);

asm("PWM1CON equ 0FBDh");


typedef union {
struct {
unsigned P1DC :7;
unsigned P1RSEN :1;
};
struct {
unsigned P1DC0 :1;
unsigned P1DC1 :1;
unsigned P1DC2 :1;
unsigned P1DC3 :1;
unsigned P1DC4 :1;
unsigned P1DC5 :1;
unsigned P1DC6 :1;
};
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __at(0xFBD);

# 12883
typedef union {
struct {
unsigned P1DC :7;
unsigned P1RSEN :1;
};
struct {
unsigned P1DC0 :1;
unsigned P1DC1 :1;
unsigned P1DC2 :1;
unsigned P1DC3 :1;
unsigned P1DC4 :1;
unsigned P1DC5 :1;
unsigned P1DC6 :1;
};
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __at(0xFBD);

# 12948
extern volatile unsigned char ECCP1AS __at(0xFBE);

asm("ECCP1AS equ 0FBEh");


typedef union {
struct {
unsigned PSS1BD :2;
unsigned PSS1AC :2;
unsigned ECCP1AS :3;
unsigned ECCP1ASE :1;
};
struct {
unsigned PSS1BD0 :1;
unsigned PSS1BD1 :1;
unsigned PSS1AC0 :1;
unsigned PSS1AC1 :1;
unsigned ECCP1AS0 :1;
unsigned ECCP1AS1 :1;
unsigned ECCP1AS2 :1;
};
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __at(0xFBE);

# 13030
extern volatile unsigned char PSTR1CON __at(0xFBF);

asm("PSTR1CON equ 0FBFh");


typedef union {
struct {
unsigned STRA :1;
unsigned STRB :1;
unsigned STRC :1;
unsigned STRD :1;
unsigned STRSYNC :1;
unsigned :1;
unsigned CMPL0 :1;
unsigned CMPL1 :1;
};
} PSTR1CONbits_t;
extern volatile PSTR1CONbits_t PSTR1CONbits __at(0xFBF);

# 13087
extern volatile unsigned char WDTCON __at(0xFC0);

asm("WDTCON equ 0FC0h");


typedef union {
struct {
unsigned SWDTEN :1;
unsigned ULPSINK :1;
unsigned ULPEN :1;
unsigned DS :1;
unsigned VBGOE :1;
unsigned ULPLVL :1;
unsigned LVDSTAT :1;
unsigned REGSLP :1;
};
struct {
unsigned SWDTE :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFC0);

# 13157
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :3;
unsigned ADCAL :1;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
unsigned VCFG11 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 13254
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :4;
unsigned VCFG :2;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
unsigned CHS3 :1;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :1;
unsigned DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
unsigned :5;
unsigned ADCAL :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 13398
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");


typedef union {
struct {
unsigned ADRESL :8;
};
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __at(0xFC3);

# 13425
extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");


typedef union {
struct {
unsigned ADRESH :8;
};
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __at(0xFC4);

# 13445
extern volatile unsigned char SSP1CON2 __at(0xFC5);

asm("SSP1CON2 equ 0FC5h");


extern volatile unsigned char SSPCON2 __at(0xFC5);

asm("SSPCON2 equ 0FC5h");


typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __at(0xFC5);

# 13626
typedef union {
struct {
unsigned SEN :1;
unsigned RSEN :1;
unsigned PEN :1;
unsigned RCEN :1;
unsigned ACKEN :1;
unsigned ACKDT :1;
unsigned ACKSTAT :1;
unsigned GCEN :1;
};
struct {
unsigned :1;
unsigned ADMSK1 :1;
unsigned ADMSK2 :1;
unsigned ADMSK3 :1;
unsigned ADMSK4 :1;
unsigned ADMSK5 :1;
};
struct {
unsigned SEN1 :1;
unsigned ADMSK11 :1;
unsigned ADMSK21 :1;
unsigned ADMSK31 :1;
unsigned ACKEN1 :1;
unsigned ACKDT1 :1;
unsigned ACKSTAT1 :1;
unsigned GCEN1 :1;
};
struct {
unsigned :1;
unsigned RSEN1 :1;
unsigned PEN1 :1;
unsigned RCEN1 :1;
unsigned ADMSK41 :1;
unsigned ADMSK51 :1;
};
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __at(0xFC5);

# 13799
extern volatile unsigned char SSP1CON1 __at(0xFC6);

asm("SSP1CON1 equ 0FC6h");


extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __at(0xFC6);

# 13922
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
struct {
unsigned SSPM01 :1;
unsigned SSPM11 :1;
unsigned SSPM21 :1;
unsigned SSPM31 :1;
unsigned CKP1 :1;
unsigned SSPEN1 :1;
unsigned SSPOV1 :1;
unsigned WCOL1 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 14037
extern volatile unsigned char SSP1STAT __at(0xFC7);

asm("SSP1STAT equ 0FC7h");


extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __at(0xFC7);

# 14340
typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned I2C_READ :1;
unsigned I2C_START :1;
unsigned I2C_STOP :1;
unsigned I2C_DAT :1;
};
struct {
unsigned BF1 :1;
unsigned UA1 :1;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
unsigned CKE1 :1;
unsigned SMP1 :1;
};
struct {
unsigned :2;
unsigned RW1 :1;
unsigned START1 :1;
unsigned STOP1 :1;
unsigned DA1 :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
};
struct {
unsigned :5;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 14635
extern volatile unsigned char SSP1ADD __at(0xFC8);

asm("SSP1ADD equ 0FC8h");


extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");


typedef union {
struct {
unsigned SSPADD :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __at(0xFC8);

# 14758
typedef union {
struct {
unsigned SSPADD :8;
};
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
struct {
unsigned MSK01 :1;
unsigned MSK11 :1;
unsigned MSK21 :1;
unsigned MSK31 :1;
unsigned MSK41 :1;
unsigned MSK51 :1;
unsigned MSK61 :1;
unsigned MSK71 :1;
};
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __at(0xFC8);

# 14873
extern volatile unsigned char SSP1MSK __at(0xFC8);

asm("SSP1MSK equ 0FC8h");


typedef union {
struct {
unsigned MSK0 :1;
unsigned MSK1 :1;
unsigned MSK2 :1;
unsigned MSK3 :1;
unsigned MSK4 :1;
unsigned MSK5 :1;
unsigned MSK6 :1;
unsigned MSK7 :1;
};
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __at(0xFC8);

# 14935
extern volatile unsigned char SSP1BUF __at(0xFC9);

asm("SSP1BUF equ 0FC9h");


extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");


typedef union {
struct {
unsigned SSPBUF :8;
};
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __at(0xFC9);

# 14958
typedef union {
struct {
unsigned SSPBUF :8;
};
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __at(0xFC9);

# 14973
extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned T2OUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 15044
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __at(0xFCB);

asm("MEMCON equ 0FCBh");


typedef union {
struct {
unsigned PR2 :8;
};
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFCB);

# 15111
typedef union {
struct {
unsigned PR2 :8;
};
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xFCB);

# 15170
extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");


typedef union {
struct {
unsigned TMR2 :8;
};
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __at(0xFCC);

# 15190
extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned RD16 :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1CS :2;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
unsigned TMR1CS0 :1;
unsigned TMR1CS1 :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 15292
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");


typedef union {
struct {
unsigned TMR1L :8;
};
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __at(0xFCE);

# 15319
extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");


typedef union {
struct {
unsigned TMR1H :8;
};
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __at(0xFCF);

# 15339
extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned :5;
unsigned NOT_CM :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned nCM :1;
unsigned :1;
unsigned IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
unsigned CM :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 15487
extern volatile unsigned char CM2CON __at(0xFD1);

asm("CM2CON equ 0FD1h");


extern volatile unsigned char CM2CON1 __at(0xFD1);

asm("CM2CON1 equ 0FD1h");


typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH02 :1;
unsigned CCH12 :1;
unsigned CREF2 :1;
unsigned EVPOL02 :1;
unsigned EVPOL12 :1;
unsigned CPOL2 :1;
unsigned COE2 :1;
unsigned CON2 :1;
};
} CM2CONbits_t;
extern volatile CM2CONbits_t CM2CONbits __at(0xFD1);

# 15617
typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned CCH02 :1;
unsigned CCH12 :1;
unsigned CREF2 :1;
unsigned EVPOL02 :1;
unsigned EVPOL12 :1;
unsigned CPOL2 :1;
unsigned COE2 :1;
unsigned CON2 :1;
};
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __at(0xFD1);

# 15739
extern volatile unsigned char CM1CON __at(0xFD2);

asm("CM1CON equ 0FD2h");


extern volatile unsigned char CM1CON1 __at(0xFD2);

asm("CM1CON1 equ 0FD2h");


typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned CREF1 :1;
unsigned EVPOL01 :1;
unsigned EVPOL11 :1;
unsigned CPOL1 :1;
unsigned COE1 :1;
unsigned CON1 :1;
};
struct {
unsigned CCH01 :1;
unsigned CCH11 :1;
};
} CM1CONbits_t;
extern volatile CM1CONbits_t CM1CONbits __at(0xFD2);

# 15883
typedef union {
struct {
unsigned CCH :2;
unsigned CREF :1;
unsigned EVPOL :2;
unsigned CPOL :1;
unsigned COE :1;
unsigned CON :1;
};
struct {
unsigned CCH0 :1;
unsigned CCH1 :1;
unsigned :1;
unsigned EVPOL0 :1;
unsigned EVPOL1 :1;
};
struct {
unsigned C1CH0 :1;
unsigned C1CH1 :1;
unsigned CREF1 :1;
unsigned EVPOL01 :1;
unsigned EVPOL11 :1;
unsigned CPOL1 :1;
unsigned COE1 :1;
unsigned CON1 :1;
};
struct {
unsigned CCH01 :1;
unsigned CCH11 :1;
};
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __at(0xFD2);

# 16019
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned :2;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 16091
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T08BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 16161
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");


typedef union {
struct {
unsigned TMR0L :8;
};
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __at(0xFD6);

# 16188
extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");


typedef union {
struct {
unsigned TMR0H :8;
};
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __at(0xFD7);

# 16208
extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 16279
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");


typedef union {
struct {
unsigned FSR2L :8;
};
} FSR2Lbits_t;
extern volatile FSR2Lbits_t FSR2Lbits __at(0xFD9);

# 16306
extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");


typedef union {
struct {
unsigned PLUSW2 :8;
};
} PLUSW2bits_t;
extern volatile PLUSW2bits_t PLUSW2bits __at(0xFDB);

# 16333
extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");


typedef union {
struct {
unsigned PREINC2 :8;
};
} PREINC2bits_t;
extern volatile PREINC2bits_t PREINC2bits __at(0xFDC);

# 16353
extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");


typedef union {
struct {
unsigned POSTDEC2 :8;
};
} POSTDEC2bits_t;
extern volatile POSTDEC2bits_t POSTDEC2bits __at(0xFDD);

# 16373
extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");


typedef union {
struct {
unsigned POSTINC2 :8;
};
} POSTINC2bits_t;
extern volatile POSTINC2bits_t POSTINC2bits __at(0xFDE);

# 16393
extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");


typedef union {
struct {
unsigned INDF2 :8;
};
} INDF2bits_t;
extern volatile INDF2bits_t INDF2bits __at(0xFDF);

# 16413
extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");


typedef union {
struct {
unsigned FSR1L :8;
};
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __at(0xFE1);

# 16447
extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");


typedef union {
struct {
unsigned PLUSW1 :8;
};
} PLUSW1bits_t;
extern volatile PLUSW1bits_t PLUSW1bits __at(0xFE3);

# 16474
extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");


typedef union {
struct {
unsigned PREINC1 :8;
};
} PREINC1bits_t;
extern volatile PREINC1bits_t PREINC1bits __at(0xFE4);

# 16494
extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");


typedef union {
struct {
unsigned POSTDEC1 :8;
};
} POSTDEC1bits_t;
extern volatile POSTDEC1bits_t POSTDEC1bits __at(0xFE5);

# 16514
extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");


typedef union {
struct {
unsigned POSTINC1 :8;
};
} POSTINC1bits_t;
extern volatile POSTINC1bits_t POSTINC1bits __at(0xFE6);

# 16534
extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");


typedef union {
struct {
unsigned INDF1 :8;
};
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __at(0xFE7);

# 16554
extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");


typedef union {
struct {
unsigned WREG :8;
};
} WREGbits_t;
extern volatile WREGbits_t WREGbits __at(0xFE8);

# 16574
extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");


typedef union {
struct {
unsigned FSR0L :8;
};
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __at(0xFE9);

# 16601
extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");


typedef union {
struct {
unsigned PLUSW0 :8;
};
} PLUSW0bits_t;
extern volatile PLUSW0bits_t PLUSW0bits __at(0xFEB);

# 16628
extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");


typedef union {
struct {
unsigned PREINC0 :8;
};
} PREINC0bits_t;
extern volatile PREINC0bits_t PREINC0bits __at(0xFEC);

# 16648
extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");


typedef union {
struct {
unsigned POSTDEC0 :8;
};
} POSTDEC0bits_t;
extern volatile POSTDEC0bits_t POSTDEC0bits __at(0xFED);

# 16668
extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");


typedef union {
struct {
unsigned POSTINC0 :8;
};
} POSTINC0bits_t;
extern volatile POSTINC0bits_t POSTINC0bits __at(0xFEE);

# 16688
extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");


typedef union {
struct {
unsigned INDF0 :8;
};
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __at(0xFEF);

# 16708
extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned INT3IF :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned INT3IE :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned INT3F :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned INT3E :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 16820
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned INT3IP :1;
unsigned TMR0IP :1;
unsigned INTEDG3 :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :1;
unsigned INT3P :1;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 16913
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 17030
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");


typedef union {
struct {
unsigned PRODL :8;
};
} PRODLbits_t;
extern volatile PRODLbits_t PRODLbits __at(0xFF3);

# 17057
extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");


typedef union {
struct {
unsigned PRODH :8;
};
} PRODHbits_t;
extern volatile PRODHbits_t PRODHbits __at(0xFF4);

# 17077
extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");


typedef union {
struct {
unsigned TABLAT :8;
};
} TABLATbits_t;
extern volatile TABLATbits_t TABLATbits __at(0xFF5);

# 17098
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");


typedef union {
struct {
unsigned TBLPTRL :8;
};
} TBLPTRLbits_t;
extern volatile TBLPTRLbits_t TBLPTRLbits __at(0xFF6);

# 17126
extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");


typedef union {
struct {
unsigned TBLPTRH :8;
};
} TBLPTRHbits_t;
extern volatile TBLPTRHbits_t TBLPTRHbits __at(0xFF7);

# 17146
extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 17154
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");


typedef union {
struct {
unsigned PCL :8;
};
} PCLbits_t;
extern volatile PCLbits_t PCLbits __at(0xFF9);

# 17189
extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");


typedef union {
struct {
unsigned PCH :8;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0xFFA);

# 17209
extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned SP0 :1;
unsigned SP1 :1;
unsigned SP2 :1;
unsigned SP3 :1;
unsigned SP4 :1;
unsigned :2;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 17289
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");


typedef union {
struct {
unsigned TOSL :8;
};
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __at(0xFFD);

# 17317
extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");


typedef union {
struct {
unsigned TOSH :8;
};
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __at(0xFFE);

# 17337
extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 17350
extern volatile __bit ABDEN1 __at(0x7BF0);


extern volatile __bit ABDEN2 __at(0x7BE0);


extern volatile __bit ABDOVF1 __at(0x7BF7);


extern volatile __bit ABDOVF2 __at(0x7BE7);


extern volatile __bit ACKDT1 __at(0x7E2D);


extern volatile __bit ACKDT2 __at(0x7B8D);


extern volatile __bit ACKEN1 __at(0x7E2C);


extern volatile __bit ACKEN2 __at(0x7B8C);


extern volatile __bit ACKSTAT1 __at(0x7E2E);


extern volatile __bit ACKSTAT2 __at(0x7B8E);


extern volatile __bit ACQT0 __at(0x7E0B);


extern volatile __bit ACQT1 __at(0x7E0C);


extern volatile __bit ACQT2 __at(0x7E0D);


extern volatile __bit __attribute__((__deprecated__)) ADCAL __at(0x7E0E);


extern volatile __bit ADCMD __at(0x75C8);


extern volatile __bit ADCS0 __at(0x7E08);


extern volatile __bit ADCS1 __at(0x7E09);


extern volatile __bit ADCS2 __at(0x7E0A);


extern volatile __bit ADDEN1 __at(0x7D63);


extern volatile __bit ADDEN2 __at(0x7CE3);


extern volatile __bit ADEN __at(0x7D63);


extern volatile __bit ADFM __at(0x7E0F);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADMSK11 __at(0x7E29);


extern volatile __bit ADMSK12 __at(0x7B89);


extern volatile __bit ADMSK21 __at(0x7E2A);


extern volatile __bit ADMSK22 __at(0x7B8A);


extern volatile __bit ADMSK31 __at(0x7E2B);


extern volatile __bit ADMSK32 __at(0x7B8B);


extern volatile __bit ADMSK41 __at(0x7E2C);


extern volatile __bit ADMSK42 __at(0x7B8C);


extern volatile __bit ADMSK51 __at(0x7E2D);


extern volatile __bit ADMSK52 __at(0x7B8D);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit ADRMUX0 __at(0x7AFB);


extern volatile __bit ADRMUX1 __at(0x7AFC);


extern volatile __bit ALP __at(0x7AF5);


extern volatile __bit ALRMEN __at(0x7A3F);


extern volatile __bit ALRMPTR0 __at(0x7A38);


extern volatile __bit ALRMPTR1 __at(0x7A39);


extern volatile __bit AMASK0 __at(0x7A3A);


extern volatile __bit AMASK1 __at(0x7A3B);


extern volatile __bit AMASK2 __at(0x7A3C);


extern volatile __bit AMASK3 __at(0x7A3D);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN10 __at(0x7C09);


extern volatile __bit AN11 __at(0x7C12);


extern volatile __bit AN12 __at(0x7C08);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C05);


extern volatile __bit AN5 __at(0x7C20);


extern volatile __bit AN6 __at(0x7C21);


extern volatile __bit AN7 __at(0x7C22);


extern volatile __bit AN8 __at(0x7C0A);


extern volatile __bit AN9 __at(0x7C0B);


extern volatile __bit ARPT0 __at(0x7A30);


extern volatile __bit ARPT1 __at(0x7A31);


extern volatile __bit ARPT2 __at(0x7A32);


extern volatile __bit ARPT3 __at(0x7A33);


extern volatile __bit ARPT4 __at(0x7A34);


extern volatile __bit ARPT5 __at(0x7A35);


extern volatile __bit ARPT6 __at(0x7A36);


extern volatile __bit ARPT7 __at(0x7A37);


extern volatile __bit BCL1IE __at(0x7D03);


extern volatile __bit BCL1IF __at(0x7D0B);


extern volatile __bit BCL1IP __at(0x7D13);


extern volatile __bit BCL2IE __at(0x7D1E);


extern volatile __bit BCL2IF __at(0x7D26);


extern volatile __bit BCL2IP __at(0x7D2E);


extern volatile __bit BCLIE __at(0x7D03);


extern volatile __bit BCLIF __at(0x7D0B);


extern volatile __bit BCLIP __at(0x7D13);


extern volatile __bit BEP __at(0x7AF2);


extern volatile __bit BF1 __at(0x7E38);


extern volatile __bit BF2 __at(0x7B98);


extern volatile __bit BGVST __at(0x7C2E);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRG161 __at(0x7BF3);


extern volatile __bit BRG162 __at(0x7BE3);


extern volatile __bit BRGH1 __at(0x7D6A);


extern volatile __bit BRGH2 __at(0x7D42);


extern volatile __bit BUSY __at(0x7AEF);


extern volatile __bit C10TSEL0 __at(0x7A84);


extern volatile __bit C1CH0 __at(0x7E90);


extern volatile __bit C1CH1 __at(0x7E91);


extern volatile __bit C1INA __at(0x7C00);


extern volatile __bit C1INB __at(0x7C03);


extern volatile __bit C1INC __at(0x7C05);


extern volatile __bit C1IND __at(0x7C02);


extern volatile __bit C1TSEL0 __at(0x7A90);


extern volatile __bit C1TSEL1 __at(0x7A91);


extern volatile __bit C1TSEL2 __at(0x7A92);


extern volatile __bit C2INA __at(0x7C01);


extern volatile __bit C2INB __at(0x7C02);


extern volatile __bit C2INC __at(0x7C0A);


extern volatile __bit C2IND __at(0x7C12);


extern volatile __bit C2TSEL0 __at(0x7A93);


extern volatile __bit C2TSEL1 __at(0x7A94);


extern volatile __bit C2TSEL2 __at(0x7A95);


extern volatile __bit C3INA __at(0x7C0B);


extern volatile __bit C3INB __at(0x7C02);


extern volatile __bit C3INC __at(0x7C09);


extern volatile __bit C3IND __at(0x7C08);


extern volatile __bit C3TSEL0 __at(0x7A96);


extern volatile __bit C3TSEL1 __at(0x7A97);


extern volatile __bit C4TSEL0 __at(0x7A88);


extern volatile __bit C4TSEL1 __at(0x7A89);


extern volatile __bit C5TSEL0 __at(0x7A8A);


extern volatile __bit C6TSEL0 __at(0x7A8C);


extern volatile __bit C7TSEL0 __at(0x7A8E);


extern volatile __bit C7TSEL1 __at(0x7A8F);


extern volatile __bit C8TSEL0 __at(0x7A80);


extern volatile __bit C8TSEL1 __at(0x7A81);


extern volatile __bit C9TSEL0 __at(0x7A82);


extern volatile __bit CAL0 __at(0x79F0);


extern volatile __bit CAL1 __at(0x79F1);


extern volatile __bit CAL2 __at(0x79F2);


extern volatile __bit CAL3 __at(0x79F3);


extern volatile __bit CAL4 __at(0x79F4);


extern volatile __bit CAL5 __at(0x79F5);


extern volatile __bit CAL6 __at(0x79F6);


extern volatile __bit CAL7 __at(0x79F7);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCH01 __at(0x7E90);


extern volatile __bit CCH02 __at(0x7E88);


extern volatile __bit CCH03 __at(0x7928);


extern volatile __bit CCH05 __at(0x7CC8);


extern volatile __bit CCH11 __at(0x7E91);


extern volatile __bit CCH12 __at(0x7E89);


extern volatile __bit CCH13 __at(0x7929);


extern volatile __bit CCH15 __at(0x7CC9);


extern volatile __bit CCIP3IP __at(0x7C80);


extern volatile __bit __attribute__((__deprecated__)) CCP10 __at(0x7C17);


extern volatile __bit CCP10IE __at(0x7C77);


extern volatile __bit CCP10IF __at(0x7C7F);


extern volatile __bit CCP10IP __at(0x7C87);


extern volatile __bit CCP10M0 __at(0x7800);


extern volatile __bit CCP10M1 __at(0x7801);


extern volatile __bit CCP10M2 __at(0x7802);


extern volatile __bit CCP10M3 __at(0x7803);


extern volatile __bit CCP10MD __at(0x75E7);


extern volatile __bit CCP10OD __at(0x7A0B);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DD0);


extern volatile __bit CCP1M1 __at(0x7DD1);


extern volatile __bit CCP1M2 __at(0x7DD2);


extern volatile __bit CCP1M3 __at(0x7DD3);


extern volatile __bit CCP1X __at(0x7DD5);


extern volatile __bit CCP1Y __at(0x7DD4);


extern volatile __bit CCP2 __at(0x7C11);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DA0);


extern volatile __bit CCP2M1 __at(0x7DA1);


extern volatile __bit CCP2M2 __at(0x7DA2);


extern volatile __bit CCP2M3 __at(0x7DA3);


extern volatile __bit CCP2X __at(0x7DA5);


extern volatile __bit CCP2Y __at(0x7DA4);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP3IE __at(0x7C70);


extern volatile __bit CCP3IF __at(0x7C78);


extern volatile __bit CCP3IP __at(0x7C80);


extern volatile __bit CCP3M0 __at(0x78A8);


extern volatile __bit CCP3M1 __at(0x78A9);


extern volatile __bit CCP3M2 __at(0x78AA);


extern volatile __bit CCP3M3 __at(0x78AB);


extern volatile __bit CCP4 __at(0x7C0C);


extern volatile __bit CCP4IE __at(0x7C71);


extern volatile __bit CCP4IF __at(0x7C79);


extern volatile __bit CCP4IP __at(0x7C81);


extern volatile __bit CCP4M0 __at(0x7890);


extern volatile __bit CCP4M1 __at(0x7891);


extern volatile __bit CCP4M2 __at(0x7892);


extern volatile __bit CCP4M3 __at(0x7893);


extern volatile __bit CCP4MD __at(0x75E1);


extern volatile __bit CCP4OD __at(0x7A13);


extern volatile __bit CCP5 __at(0x7C0D);


extern volatile __bit CCP5IE __at(0x7C72);


extern volatile __bit CCP5IF __at(0x7C7A);


extern volatile __bit CCP5IP __at(0x7C82);


extern volatile __bit CCP5M0 __at(0x7878);


extern volatile __bit CCP5M1 __at(0x7879);


extern volatile __bit CCP5M2 __at(0x787A);


extern volatile __bit CCP5M3 __at(0x787B);


extern volatile __bit CCP5MD __at(0x75E2);


extern volatile __bit CCP5OD __at(0x7A14);


extern volatile __bit CCP6 __at(0x7C0E);


extern volatile __bit CCP6IE __at(0x7C73);


extern volatile __bit CCP6IF __at(0x7C7B);


extern volatile __bit CCP6IP __at(0x7C83);


extern volatile __bit CCP6M0 __at(0x7860);


extern volatile __bit CCP6M1 __at(0x7861);


extern volatile __bit CCP6M2 __at(0x7862);


extern volatile __bit CCP6M3 __at(0x7863);


extern volatile __bit CCP6MD __at(0x75E3);


extern volatile __bit CCP6OD __at(0x7A15);


extern volatile __bit CCP7 __at(0x7C0F);


extern volatile __bit CCP7IE __at(0x7C74);


extern volatile __bit CCP7IF __at(0x7C7C);


extern volatile __bit CCP7IP __at(0x7C84);


extern volatile __bit CCP7M0 __at(0x7848);


extern volatile __bit CCP7M1 __at(0x7849);


extern volatile __bit CCP7M2 __at(0x784A);


extern volatile __bit CCP7M3 __at(0x784B);


extern volatile __bit CCP7MD __at(0x75E4);


extern volatile __bit CCP7OD __at(0x7A16);


extern volatile __bit CCP8 __at(0x7C11);


extern volatile __bit CCP8IE __at(0x7C75);


extern volatile __bit CCP8IF __at(0x7C7D);


extern volatile __bit CCP8IP __at(0x7C85);


extern volatile __bit CCP8M0 __at(0x7830);


extern volatile __bit CCP8M1 __at(0x7831);


extern volatile __bit CCP8M2 __at(0x7832);


extern volatile __bit CCP8M3 __at(0x7833);


extern volatile __bit CCP8MD __at(0x75E5);


extern volatile __bit CCP8OD __at(0x7A17);


extern volatile __bit CCP9 __at(0x7C16);


extern volatile __bit CCP9IE __at(0x7C76);


extern volatile __bit CCP9IF __at(0x7C7E);


extern volatile __bit CCP9IP __at(0x7C86);


extern volatile __bit CCP9M0 __at(0x7818);


extern volatile __bit CCP9M1 __at(0x7819);


extern volatile __bit CCP9M2 __at(0x781A);


extern volatile __bit CCP9M3 __at(0x781B);


extern volatile __bit CCP9MD __at(0x75E6);


extern volatile __bit CCP9OD __at(0x7A0A);


extern volatile __bit CHIME __at(0x7A3E);


extern volatile __bit CHS0 __at(0x7E12);


extern volatile __bit CHS1 __at(0x7E13);


extern volatile __bit CHS2 __at(0x7E14);


extern volatile __bit CHS3 __at(0x7E15);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CK1 __at(0x7C16);


extern volatile __bit CKE1 __at(0x7E3E);


extern volatile __bit CKE2 __at(0x7B9E);


extern volatile __bit CKP1 __at(0x7E34);


extern volatile __bit CKP2 __at(0x7B94);


extern volatile __bit CKTXP __at(0x7BF4);


extern volatile __bit CLKI __at(0x7C07);


extern volatile __bit CLKO __at(0x7C06);


extern volatile __bit CM __at(0x7E85);


extern volatile __bit CM1IE __at(0x7D05);


extern volatile __bit CM1IF __at(0x7D0D);


extern volatile __bit CM1IP __at(0x7D15);


extern volatile __bit CM2IE __at(0x7D06);


extern volatile __bit CM2IF __at(0x7D0E);


extern volatile __bit CM2IP __at(0x7D16);


extern volatile __bit CM3IE __at(0x7C8D);


extern volatile __bit CM3IF __at(0x7CC5);


extern volatile __bit CM3IP __at(0x7CCD);


extern volatile __bit CMIE __at(0x7D06);


extern volatile __bit CMIF __at(0x7D0E);


extern volatile __bit CMIP __at(0x7D16);


extern volatile __bit CMP1MD __at(0x75D8);


extern volatile __bit CMP2MD __at(0x75D9);


extern volatile __bit CMP3MD __at(0x75DA);


extern volatile __bit CMPL02 __at(0x7DCE);


extern volatile __bit CMPL03 __at(0x78D6);


extern volatile __bit CMPL12 __at(0x7DCF);


extern volatile __bit CMPL13 __at(0x78D7);


extern volatile __bit COE1 __at(0x7E96);


extern volatile __bit COE2 __at(0x7E8E);


extern volatile __bit COE3 __at(0x792E);


extern volatile __bit CON1 __at(0x7E97);


extern volatile __bit CON2 __at(0x7E8F);


extern volatile __bit CON3 __at(0x792F);


extern volatile __bit COUT1 __at(0x7B80);


extern volatile __bit COUT2 __at(0x7B81);


extern volatile __bit COUT3 __at(0x7B82);


extern volatile __bit CPOL1 __at(0x7E95);


extern volatile __bit CPOL2 __at(0x7E8D);


extern volatile __bit CPOL3 __at(0x792D);


extern volatile __bit CREF1 __at(0x7E92);


extern volatile __bit CREF2 __at(0x7E8A);


extern volatile __bit CREF3 __at(0x792A);


extern volatile __bit CREN1 __at(0x7D64);


extern volatile __bit CREN2 __at(0x7CE4);


extern volatile __bit CS __at(0x7C22);


extern volatile __bit CS1 __at(0x7B7E);


extern volatile __bit CS1P __at(0x7AF3);


extern volatile __bit CSF0 __at(0x7AF6);


extern volatile __bit CSF1 __at(0x7AF7);


extern volatile __bit CSRC1 __at(0x7D6F);


extern volatile __bit CSRC2 __at(0x7D47);


extern volatile __bit CTED1 __at(0x7C0A);


extern volatile __bit CTED2 __at(0x7C0B);


extern volatile __bit CTMUDS __at(0x7A07);


extern volatile __bit CTMUEN __at(0x7D9F);


extern volatile __bit CTMUIE __at(0x7D1A);


extern volatile __bit CTMUIF __at(0x7D22);


extern volatile __bit CTMUIP __at(0x7D2A);


extern volatile __bit CTMUMD __at(0x75D6);


extern volatile __bit CTMUSIDL __at(0x7D9D);


extern volatile __bit CTPLS __at(0x7C12);


extern volatile __bit CTTRIG __at(0x7D98);


extern volatile __bit CVR0 __at(0x7A98);


extern volatile __bit CVR1 __at(0x7A99);


extern volatile __bit CVR2 __at(0x7A9A);


extern volatile __bit CVR3 __at(0x7A9B);


extern volatile __bit CVREF __at(0x7C02);


extern volatile __bit CVREN __at(0x7A9F);


extern volatile __bit CVROE __at(0x7A9E);


extern volatile __bit CVROEN __at(0x7A9E);


extern volatile __bit CVRR __at(0x7A9D);


extern volatile __bit CVRSS __at(0x7A9C);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DA1 __at(0x7E3D);


extern volatile __bit DA2 __at(0x7B9D);


extern volatile __bit DATA_ADDRESS __at(0x7E3D);


extern volatile __bit DATA_ADDRESS2 __at(0x7B9D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC10B0 __at(0x7804);


extern volatile __bit DC10B1 __at(0x7805);


extern volatile __bit DC1B0 __at(0x7DD4);


extern volatile __bit DC1B1 __at(0x7DD5);


extern volatile __bit DC2B0 __at(0x7DA4);


extern volatile __bit DC2B1 __at(0x7DA5);


extern volatile __bit DC3B0 __at(0x78AC);


extern volatile __bit DC3B1 __at(0x78AD);


extern volatile __bit DC4B0 __at(0x7894);


extern volatile __bit DC4B1 __at(0x7895);


extern volatile __bit DC5B0 __at(0x787C);


extern volatile __bit DC5B1 __at(0x787D);


extern volatile __bit DC6B0 __at(0x7864);


extern volatile __bit DC6B1 __at(0x7865);


extern volatile __bit DC7B0 __at(0x784C);


extern volatile __bit DC7B1 __at(0x784D);


extern volatile __bit DC8B0 __at(0x7834);


extern volatile __bit DC8B1 __at(0x7835);


extern volatile __bit DC9B0 __at(0x781C);


extern volatile __bit DC9B1 __at(0x781D);


extern volatile __bit DLYCYC0 __at(0x7C34);


extern volatile __bit DLYCYC1 __at(0x7C35);


extern volatile __bit DLYCYC2 __at(0x7C36);


extern volatile __bit DLYCYC3 __at(0x7C37);


extern volatile __bit DLYINTEN __at(0x7C41);


extern volatile __bit DMAEN __at(0x7C40);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DS __at(0x7E03);


extern volatile __bit DSBOR __at(0x7A61);


extern volatile __bit DSEN __at(0x7A6F);


extern volatile __bit DSFLT __at(0x7A57);


extern volatile __bit DSINT0 __at(0x7A58);


extern volatile __bit DSMCLR __at(0x7A52);


extern volatile __bit DSPOR __at(0x7A50);


extern volatile __bit DSRTC __at(0x7A53);


extern volatile __bit DSULP __at(0x7A55);


extern volatile __bit DSULPEN __at(0x7A69);


extern volatile __bit DSWDT __at(0x7A54);


extern volatile __bit DT1 __at(0x7C17);


extern volatile __bit DTRXP __at(0x7BF5);


extern volatile __bit DTRXP1 __at(0x7BF5);


extern volatile __bit DTRXP2 __at(0x7BE5);


extern volatile __bit DUPLEX0 __at(0x7C42);


extern volatile __bit DUPLEX1 __at(0x7C43);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_A2 __at(0x7B9D);


extern volatile __bit D_NOT_A2 __at(0x7B9D);


extern volatile __bit D_nA2 __at(0x7B9D);


extern volatile __bit EBDIS __at(0x7E5F);


extern volatile __bit ECCP1AS0 __at(0x7DF4);


extern volatile __bit ECCP1AS1 __at(0x7DF5);


extern volatile __bit ECCP1AS2 __at(0x7DF6);


extern volatile __bit ECCP1ASE __at(0x7DF7);


extern volatile __bit ECCP1MD __at(0x75CD);


extern volatile __bit ECCP1OD __at(0x7A10);


extern volatile __bit ECCP2AS0 __at(0x7DC4);


extern volatile __bit ECCP2AS1 __at(0x7DC5);


extern volatile __bit ECCP2AS2 __at(0x7DC6);


extern volatile __bit ECCP2ASE __at(0x7DC7);


extern volatile __bit ECCP2MD __at(0x75CE);


extern volatile __bit ECCP2OD __at(0x7A11);


extern volatile __bit ECCP3AS0 __at(0x78CC);


extern volatile __bit ECCP3AS1 __at(0x78CD);


extern volatile __bit ECCP3AS2 __at(0x78CE);


extern volatile __bit ECCP3ASE __at(0x78CF);


extern volatile __bit ECCP3MD __at(0x75CF);


extern volatile __bit ECCP3OD __at(0x7A12);


extern volatile __bit EDG1POL __at(0x7D94);


extern volatile __bit EDG1SEL0 __at(0x7D92);


extern volatile __bit EDG1SEL1 __at(0x7D93);


extern volatile __bit EDG1STAT __at(0x7D90);


extern volatile __bit EDG2POL __at(0x7D97);


extern volatile __bit EDG2SEL0 __at(0x7D95);


extern volatile __bit EDG2SEL1 __at(0x7D96);


extern volatile __bit EDG2STAT __at(0x7D91);


extern volatile __bit EDGEN __at(0x7D9B);


extern volatile __bit EDGSEQEN __at(0x7D9A);


extern volatile __bit EVPOL01 __at(0x7E93);


extern volatile __bit EVPOL02 __at(0x7E8B);


extern volatile __bit EVPOL03 __at(0x792B);


extern volatile __bit EVPOL05 __at(0x7CCB);


extern volatile __bit EVPOL11 __at(0x7E94);


extern volatile __bit EVPOL12 __at(0x7E8C);


extern volatile __bit EVPOL13 __at(0x792C);


extern volatile __bit EVPOL15 __at(0x7CCC);


extern volatile __bit FERR1 __at(0x7D62);


extern volatile __bit FERR2 __at(0x7CE2);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit GCEN1 __at(0x7E2F);


extern volatile __bit GCEN2 __at(0x7B8F);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit HALFSEC __at(0x79FB);


extern volatile __bit HLVDEN __at(0x7C2C);


extern volatile __bit HLVDIE __at(0x7D02);


extern volatile __bit HLVDIF __at(0x7D0A);


extern volatile __bit HLVDIN __at(0x7C05);


extern volatile __bit HLVDIP __at(0x7D12);


extern volatile __bit HLVDL0 __at(0x7C28);


extern volatile __bit HLVDL1 __at(0x7C29);


extern volatile __bit HLVDL2 __at(0x7C2A);


extern volatile __bit HLVDL3 __at(0x7C2B);


extern volatile __bit I2C_DAT __at(0x7E3D);


extern volatile __bit I2C_DAT2 __at(0x7B9D);


extern volatile __bit I2C_READ __at(0x7E3A);


extern volatile __bit I2C_READ2 __at(0x7B9A);


extern volatile __bit I2C_START __at(0x7E3B);


extern volatile __bit I2C_START2 __at(0x7B9B);


extern volatile __bit I2C_STOP __at(0x7E3C);


extern volatile __bit I2C_STOP2 __at(0x7B9C);


extern volatile __bit IB0F __at(0x7AA8);


extern volatile __bit IB1F __at(0x7AA9);


extern volatile __bit IB2F __at(0x7AAA);


extern volatile __bit IB3F __at(0x7AAB);


extern volatile __bit IBF __at(0x7AAF);


extern volatile __bit IBOV __at(0x7AAE);


extern volatile __bit IDISSEN __at(0x7D99);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INCM0 __at(0x7AEB);


extern volatile __bit INCM1 __at(0x7AEC);


extern volatile __bit INT0 __at(0x7C08);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INT3E __at(0x7F85);


extern volatile __bit INT3F __at(0x7F82);


extern volatile __bit INT3IE __at(0x7F85);


extern volatile __bit INT3IF __at(0x7F82);


extern volatile __bit INT3IP __at(0x7F89);


extern volatile __bit INT3P __at(0x7F89);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit INTEDG3 __at(0x7F8B);


extern volatile __bit INTLVL0 __at(0x7C30);


extern volatile __bit INTLVL1 __at(0x7C31);


extern volatile __bit INTLVL2 __at(0x7C32);


extern volatile __bit INTLVL3 __at(0x7C33);


extern volatile __bit INTSRC __at(0x7CDF);


extern volatile __bit IOLOCK __at(0x75F8);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRNG0 __at(0x7D88);


extern volatile __bit IRNG1 __at(0x7D89);


extern volatile __bit IRQM0 __at(0x7AED);


extern volatile __bit IRQM1 __at(0x7AEE);


extern volatile __bit IRVST __at(0x7C2D);


extern volatile __bit ITRIM0 __at(0x7D8A);


extern volatile __bit ITRIM1 __at(0x7D8B);


extern volatile __bit ITRIM2 __at(0x7D8C);


extern volatile __bit ITRIM3 __at(0x7D8D);


extern volatile __bit ITRIM4 __at(0x7D8E);


extern volatile __bit ITRIM5 __at(0x7D8F);


extern volatile __bit KBI0 __at(0x7C0C);


extern volatile __bit KBI1 __at(0x7C0D);


extern volatile __bit KBI2 __at(0x7C0E);


extern volatile __bit KBI3 __at(0x7C0F);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC3 __at(0x7C5B);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LATD0 __at(0x7C60);


extern volatile __bit LATD1 __at(0x7C61);


extern volatile __bit LATD2 __at(0x7C62);


extern volatile __bit LATD3 __at(0x7C63);


extern volatile __bit LATD4 __at(0x7C64);


extern volatile __bit LATD5 __at(0x7C65);


extern volatile __bit LATD6 __at(0x7C66);


extern volatile __bit LATD7 __at(0x7C67);


extern volatile __bit LATE0 __at(0x7C68);


extern volatile __bit LATE1 __at(0x7C69);


extern volatile __bit LATE2 __at(0x7C6A);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC3 __at(0x7C5B);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LD0 __at(0x7C60);


extern volatile __bit LD1 __at(0x7C61);


extern volatile __bit LD2 __at(0x7C62);


extern volatile __bit LD3 __at(0x7C63);


extern volatile __bit LD4 __at(0x7C64);


extern volatile __bit LD5 __at(0x7C65);


extern volatile __bit LD6 __at(0x7C66);


extern volatile __bit LD7 __at(0x7C67);


extern volatile __bit LE0 __at(0x7C68);


extern volatile __bit LE1 __at(0x7C69);


extern volatile __bit LE2 __at(0x7C6A);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDSTAT __at(0x7E06);


extern volatile __bit MODE0 __at(0x7AE8);


extern volatile __bit MODE1 __at(0x7AE9);


extern volatile __bit MODE16 __at(0x7AEA);


extern volatile __bit MSK01 __at(0x7E40);


extern volatile __bit MSK02 __at(0x7BA0);


extern volatile __bit MSK11 __at(0x7E41);


extern volatile __bit MSK12 __at(0x7BA1);


extern volatile __bit MSK21 __at(0x7E42);


extern volatile __bit MSK22 __at(0x7BA2);


extern volatile __bit MSK31 __at(0x7E43);


extern volatile __bit MSK32 __at(0x7BA3);


extern volatile __bit MSK41 __at(0x7E44);


extern volatile __bit MSK42 __at(0x7BA4);


extern volatile __bit MSK51 __at(0x7E45);


extern volatile __bit MSK52 __at(0x7BA5);


extern volatile __bit MSK61 __at(0x7E46);


extern volatile __bit MSK62 __at(0x7BA6);


extern volatile __bit MSK71 __at(0x7E47);


extern volatile __bit MSK72 __at(0x7BA7);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_A2 __at(0x7B9D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_ADDRESS2 __at(0x7B9D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_CM __at(0x7E85);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RC8 __at(0x7D66);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_SS1 __at(0x7C05);


extern volatile __bit NOT_T1DONE __at(0x7CD3);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T3SYNC __at(0x7BCA);


extern volatile __bit NOT_T5DONE __at(0x790B);


extern volatile __bit NOT_T5SYNC __at(0x7912);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_TX8 __at(0x7D6E);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_W2 __at(0x7B9A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit NOT_WRITE2 __at(0x7B9A);


extern volatile __bit OB0E __at(0x7AA0);


extern volatile __bit OB1E __at(0x7AA1);


extern volatile __bit OB2E __at(0x7AA2);


extern volatile __bit OB3E __at(0x7AA3);


extern volatile __bit OBE __at(0x7AA7);


extern volatile __bit OBUF __at(0x7AA6);


extern volatile __bit OERR1 __at(0x7D61);


extern volatile __bit OERR2 __at(0x7CE1);


extern volatile __bit OSC1 __at(0x7C07);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSCFIE __at(0x7D07);


extern volatile __bit OSCFIF __at(0x7D0F);


extern volatile __bit OSCFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit P1DC0 __at(0x7DE8);


extern volatile __bit P1DC1 __at(0x7DE9);


extern volatile __bit P1DC2 __at(0x7DEA);


extern volatile __bit P1DC3 __at(0x7DEB);


extern volatile __bit P1DC4 __at(0x7DEC);


extern volatile __bit P1DC5 __at(0x7DED);


extern volatile __bit P1DC6 __at(0x7DEE);


extern volatile __bit P1M0 __at(0x7DD6);


extern volatile __bit P1M1 __at(0x7DD7);


extern volatile __bit P1RSEN __at(0x7DEF);


extern volatile __bit P2 __at(0x7B9C);


extern volatile __bit P2DC02 __at(0x7DC8);


extern volatile __bit P2DC0CON __at(0x7DC8);


extern volatile __bit P2DC12 __at(0x7DC9);


extern volatile __bit P2DC1CON __at(0x7DC9);


extern volatile __bit P2DC22 __at(0x7DCA);


extern volatile __bit P2DC2CON __at(0x7DCA);


extern volatile __bit P2DC32 __at(0x7DCB);


extern volatile __bit P2DC3CON __at(0x7DCB);


extern volatile __bit P2DC42 __at(0x7DCC);


extern volatile __bit P2DC4CON __at(0x7DCC);


extern volatile __bit P2DC52 __at(0x7DCD);


extern volatile __bit P2DC5CON __at(0x7DCD);


extern volatile __bit P2DC62 __at(0x7DCE);


extern volatile __bit P2DC6CON __at(0x7DCE);


extern volatile __bit P2M0 __at(0x7DA6);


extern volatile __bit P2M1 __at(0x7DA7);


extern volatile __bit P2RSEN __at(0x7DBF);


extern volatile __bit P3DC0 __at(0x78C0);


extern volatile __bit P3DC1 __at(0x78C1);


extern volatile __bit P3DC2 __at(0x78C2);


extern volatile __bit P3DC3 __at(0x78C3);


extern volatile __bit P3DC4 __at(0x78C4);


extern volatile __bit P3DC5 __at(0x78C5);


extern volatile __bit P3DC6 __at(0x78C6);


extern volatile __bit P3M0 __at(0x78AE);


extern volatile __bit P3M1 __at(0x78AF);


extern volatile __bit P3RSEN __at(0x78C7);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PB2 __at(0x7C22);


extern volatile __bit PC2 __at(0x7C21);


extern volatile __bit PCFG0 __at(0x7A40);


extern volatile __bit PCFG1 __at(0x7A41);


extern volatile __bit PCFG10 __at(0x7A4A);


extern volatile __bit PCFG11 __at(0x7A4B);


extern volatile __bit PCFG12 __at(0x7A4C);


extern volatile __bit PCFG15 __at(0x7A4F);


extern volatile __bit PCFG2 __at(0x7A42);


extern volatile __bit PCFG3 __at(0x7A43);


extern volatile __bit PCFG4 __at(0x7A44);


extern volatile __bit PCFG5 __at(0x7A45);


extern volatile __bit PCFG6 __at(0x7A46);


extern volatile __bit PCFG7 __at(0x7A47);


extern volatile __bit PCFG8 __at(0x7A48);


extern volatile __bit PCFG9 __at(0x7A49);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PEN1 __at(0x7E2A);


extern volatile __bit PEN2 __at(0x7B8A);


extern volatile __bit PGC __at(0x7C0E);


extern volatile __bit PGD __at(0x7C0F);


extern volatile __bit PLLEN __at(0x7CDE);


extern volatile __bit PMA0 __at(0x7C0D);


extern volatile __bit PMA1 __at(0x7C0C);


extern volatile __bit PMA2 __at(0x7C0B);


extern volatile __bit PMA3 __at(0x7C0A);


extern volatile __bit PMA4 __at(0x7C17);


extern volatile __bit PMA5 __at(0x7C16);


extern volatile __bit PMA6 __at(0x7C00);


extern volatile __bit PMA7 __at(0x7C01);


extern volatile __bit PMBE __at(0x7C09);


extern volatile __bit PMCS __at(0x7C22);


extern volatile __bit PMD0 __at(0x7C18);


extern volatile __bit PMD1 __at(0x7C19);


extern volatile __bit PMD2 __at(0x7C1A);


extern volatile __bit PMD3 __at(0x7C1B);


extern volatile __bit PMD4 __at(0x7C1C);


extern volatile __bit PMD5 __at(0x7C1D);


extern volatile __bit PMD6 __at(0x7C1E);


extern volatile __bit PMD7 __at(0x7C1F);


extern volatile __bit PMDADC __at(0x75C8);


extern volatile __bit PMDCCP10 __at(0x75E7);


extern volatile __bit PMDCCP4 __at(0x75E1);


extern volatile __bit PMDCCP5 __at(0x75E2);


extern volatile __bit PMDCCP6 __at(0x75E3);


extern volatile __bit PMDCCP7 __at(0x75E4);


extern volatile __bit PMDCCP8 __at(0x75E5);


extern volatile __bit PMDCCP9 __at(0x75E6);


extern volatile __bit PMDCMP1 __at(0x75D8);


extern volatile __bit PMDCMP2 __at(0x75D9);


extern volatile __bit PMDCMP3 __at(0x75DA);


extern volatile __bit PMDCTMU __at(0x75D6);


extern volatile __bit PMDECCP1 __at(0x75CD);


extern volatile __bit PMDECCP2 __at(0x75CE);


extern volatile __bit PMDECCP3 __at(0x75CF);


extern volatile __bit PMDMSSP1 __at(0x75C9);


extern volatile __bit PMDMSSP2 __at(0x75CA);


extern volatile __bit PMDPSP __at(0x75D7);


extern volatile __bit PMDRTCC __at(0x75D5);


extern volatile __bit PMDTMR1 __at(0x75D1);


extern volatile __bit PMDTMR2 __at(0x75D2);


extern volatile __bit PMDTMR3 __at(0x75D3);


extern volatile __bit PMDTMR4 __at(0x75D4);


extern volatile __bit PMDTMR5 __at(0x75DB);


extern volatile __bit PMDTMR6 __at(0x75DC);


extern volatile __bit PMDTMR8 __at(0x75DE);


extern volatile __bit PMDUART1 __at(0x75CB);


extern volatile __bit PMDUART2 __at(0x75CC);


extern volatile __bit PMPBE __at(0x7C09);


extern volatile __bit PMPCS __at(0x7C22);


extern volatile __bit PMPEN __at(0x7AFF);


extern volatile __bit PMPIE __at(0x7CEF);


extern volatile __bit PMPIF __at(0x7CF7);


extern volatile __bit PMPIP __at(0x7CFF);


extern volatile __bit PMPRD __at(0x7C20);


extern volatile __bit PMPTTL __at(0x79E0);


extern volatile __bit PMPWR __at(0x7C21);


extern volatile __bit PMRD __at(0x7C20);


extern volatile __bit PMWR __at(0x7C21);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit PRISD __at(0x7C3A);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PSPIE __at(0x7CEF);


extern volatile __bit PSPIF __at(0x7CF7);


extern volatile __bit PSPIP __at(0x7CFF);


extern volatile __bit PSPMD __at(0x75D7);


extern volatile __bit PSS1AC0 __at(0x7DF2);


extern volatile __bit PSS1AC1 __at(0x7DF3);


extern volatile __bit PSS1BD0 __at(0x7DF0);


extern volatile __bit PSS1BD1 __at(0x7DF1);


extern volatile __bit PSS2AC0 __at(0x7DC2);


extern volatile __bit PSS2AC1 __at(0x7DC3);


extern volatile __bit PSS2BD0 __at(0x7DC0);


extern volatile __bit PSS2BD1 __at(0x7DC1);


extern volatile __bit PSS3AC0 __at(0x78CA);


extern volatile __bit PSS3AC1 __at(0x78CB);


extern volatile __bit PSS3BD0 __at(0x78C8);


extern volatile __bit PSS3BD1 __at(0x78C9);


extern volatile __bit PTBEEN __at(0x7AFA);


extern volatile __bit PTEN0 __at(0x7AB0);


extern volatile __bit PTEN1 __at(0x7AB1);


extern volatile __bit PTEN10 __at(0x7ABA);


extern volatile __bit PTEN11 __at(0x7ABB);


extern volatile __bit PTEN12 __at(0x7ABC);


extern volatile __bit PTEN13 __at(0x7ABD);


extern volatile __bit PTEN14 __at(0x7ABE);


extern volatile __bit PTEN15 __at(0x7ABF);


extern volatile __bit PTEN2 __at(0x7AB2);


extern volatile __bit PTEN3 __at(0x7AB3);


extern volatile __bit PTEN4 __at(0x7AB4);


extern volatile __bit PTEN5 __at(0x7AB5);


extern volatile __bit PTEN6 __at(0x7AB6);


extern volatile __bit PTEN7 __at(0x7AB7);


extern volatile __bit PTEN8 __at(0x7AB8);


extern volatile __bit PTEN9 __at(0x7AB9);


extern volatile __bit PTRDEN __at(0x7AF8);


extern volatile __bit PTWREN __at(0x7AF9);


extern volatile __bit RA0 __at(0x7C00);


extern volatile __bit RA1 __at(0x7C01);


extern volatile __bit RA2 __at(0x7C02);


extern volatile __bit RA3 __at(0x7C03);


extern volatile __bit RA5 __at(0x7C05);


extern volatile __bit RA6 __at(0x7C06);


extern volatile __bit RA7 __at(0x7C07);


extern volatile __bit RB0 __at(0x7C08);


extern volatile __bit RB1 __at(0x7C09);


extern volatile __bit RB2 __at(0x7C0A);


extern volatile __bit RB3 __at(0x7C0B);


extern volatile __bit RB4 __at(0x7C0C);


extern volatile __bit RB5 __at(0x7C0D);


extern volatile __bit RB6 __at(0x7C0E);


extern volatile __bit RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit RC0 __at(0x7C10);


extern volatile __bit RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit RC2 __at(0x7C12);


extern volatile __bit RC2IE __at(0x7D1D);


extern volatile __bit RC2IF __at(0x7D25);


extern volatile __bit RC2IP __at(0x7D2D);


extern volatile __bit RC3 __at(0x7C13);


extern volatile __bit RC4 __at(0x7C14);


extern volatile __bit RC5 __at(0x7C15);


extern volatile __bit RC6 __at(0x7C16);


extern volatile __bit RC7 __at(0x7C17);


extern volatile __bit RC8_9 __at(0x7D66);


extern volatile __bit RC8_92 __at(0x7CE6);


extern volatile __bit RC9 __at(0x7D66);


extern volatile __bit RC92 __at(0x7CE6);


extern volatile __bit RCD8 __at(0x7D60);


extern volatile __bit RCD82 __at(0x7CE0);


extern volatile __bit RCEN1 __at(0x7E2B);


extern volatile __bit RCEN2 __at(0x7B8B);


extern volatile __bit RCIDL1 __at(0x7BF6);


extern volatile __bit RCIDL2 __at(0x7BE6);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT __at(0x7BF6);


extern volatile __bit RCMT1 __at(0x7BF6);


extern volatile __bit RCMT2 __at(0x7BE6);


extern volatile __bit RD0 __at(0x7C18);


extern volatile __bit RD1 __at(0x7C19);


extern volatile __bit RD163 __at(0x7BCF);


extern volatile __bit RD165 __at(0x7911);


extern volatile __bit RD2 __at(0x7C1A);


extern volatile __bit RD3 __at(0x7C1B);


extern volatile __bit RD4 __at(0x7C1C);


extern volatile __bit RD5 __at(0x7C1D);


extern volatile __bit RD6 __at(0x7C1E);


extern volatile __bit RD7 __at(0x7C1F);


extern volatile __bit RDE __at(0x7C20);


extern volatile __bit RDPU __at(0x7CB7);


extern volatile __bit RDSP __at(0x7AF0);


extern volatile __bit RE0 __at(0x7C20);


extern volatile __bit RE1 __at(0x7C21);


extern volatile __bit RE2 __at(0x7C22);


extern volatile __bit READ_WRITE __at(0x7E3A);


extern volatile __bit READ_WRITE2 __at(0x7B9A);


extern volatile __bit REFO __at(0x7C0A);


extern volatile __bit REGSLP __at(0x7E07);


extern volatile __bit RELEASE __at(0x7A60);


extern volatile __bit REPU __at(0x7CB6);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RODIV0 __at(0x79E8);


extern volatile __bit RODIV1 __at(0x79E9);


extern volatile __bit RODIV2 __at(0x79EA);


extern volatile __bit RODIV3 __at(0x79EB);


extern volatile __bit ROON __at(0x79EF);


extern volatile __bit ROSEL __at(0x79EC);


extern volatile __bit ROSSLP __at(0x79ED);


extern volatile __bit RP0 __at(0x7C00);


extern volatile __bit RP1 __at(0x7C01);


extern volatile __bit RP10 __at(0x7C0F);


extern volatile __bit RP11 __at(0x7C10);


extern volatile __bit RP12 __at(0x7C11);


extern volatile __bit RP13 __at(0x7C12);


extern volatile __bit RP14 __at(0x7C13);


extern volatile __bit RP15 __at(0x7C14);


extern volatile __bit RP16 __at(0x7C15);


extern volatile __bit RP17 __at(0x7C16);


extern volatile __bit RP18 __at(0x7C17);


extern volatile __bit RP19 __at(0x7C1A);


extern volatile __bit RP2 __at(0x7C05);


extern volatile __bit RP20 __at(0x7C1B);


extern volatile __bit RP21 __at(0x7C1C);


extern volatile __bit RP22 __at(0x7C1D);


extern volatile __bit RP23 __at(0x7C1E);


extern volatile __bit RP24 __at(0x7C1F);


extern volatile __bit RP3 __at(0x7C08);


extern volatile __bit RP4 __at(0x7C09);


extern volatile __bit RP5 __at(0x7C0A);


extern volatile __bit RP6 __at(0x7C0B);


extern volatile __bit RP7 __at(0x7C0C);


extern volatile __bit RP8 __at(0x7C0D);


extern volatile __bit RP9 __at(0x7C0E);


extern volatile __bit RSEN1 __at(0x7E29);


extern volatile __bit RSEN2 __at(0x7B89);


extern volatile __bit RTCC __at(0x7C09);


extern volatile __bit RTCCIE __at(0x7D18);


extern volatile __bit RTCCIF __at(0x7D20);


extern volatile __bit RTCCIP __at(0x7D28);


extern volatile __bit RTCCMD __at(0x75D5);


extern volatile __bit RTCEN __at(0x79FF);


extern volatile __bit RTCOE __at(0x79FA);


extern volatile __bit RTCPTR0 __at(0x79F8);


extern volatile __bit RTCPTR1 __at(0x79F9);


extern volatile __bit RTCSYNC __at(0x79FC);


extern volatile __bit RTCWDIS __at(0x7A68);


extern volatile __bit RTCWREN __at(0x79FD);


extern volatile __bit RTSECSEL0 __at(0x79E1);


extern volatile __bit RTSECSEL1 __at(0x79E2);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RW1 __at(0x7E3A);


extern volatile __bit RW2 __at(0x7B9A);


extern volatile __bit RX1 __at(0x7C17);


extern volatile __bit RX91 __at(0x7D66);


extern volatile __bit RX92 __at(0x7CE6);


extern volatile __bit RX9D1 __at(0x7D60);


extern volatile __bit RX9D2 __at(0x7CE0);


extern volatile __bit RXB0IE __at(0x7D18);


extern volatile __bit RXB1IE __at(0x7D19);


extern volatile __bit RXBNIE __at(0x7D19);


extern volatile __bit RXBNIF __at(0x7D21);


extern volatile __bit RXBNIP __at(0x7D29);


extern volatile __bit RXCKP __at(0x7BF5);


extern volatile __bit RXDTP1 __at(0x7BF5);


extern volatile __bit RXDTP2 __at(0x7BE5);


extern volatile __bit RXINC __at(0x7C44);


extern volatile __bit R_NOT_W2 __at(0x7B9A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_W2 __at(0x7B9A);


extern volatile __bit R_nW2 __at(0x7B9A);


extern volatile __bit S2 __at(0x7B9B);


extern volatile __bit SCK1 __at(0x7C13);


extern volatile __bit SCKP __at(0x7BF4);


extern volatile __bit SCKP1 __at(0x7BF4);


extern volatile __bit SCKP2 __at(0x7BE4);


extern volatile __bit SCL1 __at(0x7C13);


extern volatile __bit SCL2 __at(0x7C18);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SDA1 __at(0x7C14);


extern volatile __bit SDA2 __at(0x7C19);


extern volatile __bit SDI1 __at(0x7C14);


extern volatile __bit SDO1 __at(0x7C15);


extern volatile __bit SEN1 __at(0x7E28);


extern volatile __bit SEN2 __at(0x7B88);


extern volatile __bit SENDB1 __at(0x7D6B);


extern volatile __bit SENDB2 __at(0x7D43);


extern volatile __bit SMP1 __at(0x7E3F);


extern volatile __bit SMP2 __at(0x7B9F);


extern volatile __bit SOSCDRV __at(0x7C3C);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN3 __at(0x7BCB);


extern volatile __bit SOSCEN5 __at(0x7913);


extern volatile __bit SOSCGO __at(0x7C3B);


extern volatile __bit SOSCRUN __at(0x7C3E);


extern volatile __bit SP0 __at(0x7FE0);


extern volatile __bit SP1 __at(0x7FE1);


extern volatile __bit SP2 __at(0x7FE2);


extern volatile __bit SP3 __at(0x7FE3);


extern volatile __bit SP4 __at(0x7FE4);


extern volatile __bit SPEN1 __at(0x7D67);


extern volatile __bit SPEN2 __at(0x7CE7);


extern volatile __bit SPI1MD __at(0x75C9);


extern volatile __bit SPI1OD __at(0x7A00);


extern volatile __bit SPI2MD __at(0x75CA);


extern volatile __bit SPI2OD __at(0x7A01);


extern volatile __bit SRC0 __at(0x75C0);


extern volatile __bit SRC1 __at(0x75C1);


extern volatile __bit SREN1 __at(0x7D65);


extern volatile __bit SREN2 __at(0x7CE5);


extern volatile __bit SRENA __at(0x7D65);


extern volatile __bit SS2 __at(0x7C1F);


extern volatile __bit SSCON0 __at(0x7C46);


extern volatile __bit SSCON1 __at(0x7C47);


extern volatile __bit SSP1IE __at(0x7CEB);


extern volatile __bit SSP1IF __at(0x7CF3);


extern volatile __bit SSP1IP __at(0x7CFB);


extern volatile __bit SSP2IE __at(0x7D1F);


extern volatile __bit SSP2IF __at(0x7D27);


extern volatile __bit SSP2IP __at(0x7D2F);


extern volatile __bit SSPEN1 __at(0x7E35);


extern volatile __bit SSPEN2 __at(0x7B95);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM01 __at(0x7E30);


extern volatile __bit SSPM02 __at(0x7B90);


extern volatile __bit SSPM11 __at(0x7E31);


extern volatile __bit SSPM12 __at(0x7B91);


extern volatile __bit SSPM21 __at(0x7E32);


extern volatile __bit SSPM22 __at(0x7B92);


extern volatile __bit SSPM31 __at(0x7E33);


extern volatile __bit SSPM32 __at(0x7B93);


extern volatile __bit SSPOV1 __at(0x7E36);


extern volatile __bit SSPOV2 __at(0x7B96);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit START1 __at(0x7E3B);


extern volatile __bit START2 __at(0x7B9B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit STOP1 __at(0x7E3C);


extern volatile __bit STOP2 __at(0x7B9C);


extern volatile __bit STRA2 __at(0x7DC8);


extern volatile __bit STRA3 __at(0x78D0);


extern volatile __bit STRB2 __at(0x7DC9);


extern volatile __bit STRB3 __at(0x78D1);


extern volatile __bit STRC2 __at(0x7DCA);


extern volatile __bit STRC3 __at(0x78D2);


extern volatile __bit STRD2 __at(0x7DCB);


extern volatile __bit STRD3 __at(0x78D3);


extern volatile __bit STRSYNC2 __at(0x7DCC);


extern volatile __bit STRSYNC3 __at(0x78D4);


extern volatile __bit SWDTE __at(0x7E00);


extern volatile __bit SWDTEN __at(0x7E00);


extern volatile __bit SYNC1 __at(0x7D6C);


extern volatile __bit SYNC2 __at(0x7D44);


extern volatile __bit T08BIT __at(0x7EAE);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T1CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1DONE __at(0x7CD3);


extern volatile __bit T1GGO __at(0x7CD3);


extern volatile __bit T1GGO_NOT_T1DONE __at(0x7CD3);


extern volatile __bit T1GGO_nT1DONE __at(0x7CD3);


extern volatile __bit T1GPOL __at(0x7CD6);


extern volatile __bit T1GSPM __at(0x7CD4);


extern volatile __bit T1GSS0 __at(0x7CD0);


extern volatile __bit T1GSS1 __at(0x7CD1);


extern volatile __bit T1GTM __at(0x7CD5);


extern volatile __bit T1GVAL __at(0x7CD2);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T3CKPS0 __at(0x7BCC);


extern volatile __bit T3CKPS1 __at(0x7BCD);


extern volatile __bit T3DONE __at(0x7CBB);


extern volatile __bit T3GGO __at(0x7CBB);


extern volatile __bit T3GGO_T3DONE __at(0x7CBB);


extern volatile __bit T3GPOL __at(0x7CBE);


extern volatile __bit T3GSPM __at(0x7CBC);


extern volatile __bit T3GSS0 __at(0x7CB8);


extern volatile __bit T3GSS1 __at(0x7CB9);


extern volatile __bit T3GTM __at(0x7CBD);


extern volatile __bit T3GVAL __at(0x7CBA);


extern volatile __bit T3OSCEN __at(0x7BCB);


extern volatile __bit T3RD16 __at(0x7BCF);


extern volatile __bit T4CKPS0 __at(0x7BB0);


extern volatile __bit T4CKPS1 __at(0x7BB1);


extern volatile __bit T4OUTPS0 __at(0x7BB3);


extern volatile __bit T4OUTPS1 __at(0x7BB4);


extern volatile __bit T4OUTPS2 __at(0x7BB5);


extern volatile __bit T4OUTPS3 __at(0x7BB6);


extern volatile __bit T5CKPS0 __at(0x7914);


extern volatile __bit T5CKPS1 __at(0x7915);


extern volatile __bit T5DONE __at(0x790B);


extern volatile __bit T5GGO __at(0x790B);


extern volatile __bit T5GGO_NOT_T5DONE __at(0x790B);


extern volatile __bit T5GGO_nT5DONE __at(0x790B);


extern volatile __bit T5GPOL __at(0x790E);


extern volatile __bit T5GSPM __at(0x790C);


extern volatile __bit T5GSS0 __at(0x7908);


extern volatile __bit T5GSS1 __at(0x7909);


extern volatile __bit T5GTM __at(0x790D);


extern volatile __bit T5GVAL __at(0x790A);


extern volatile __bit T5OSCEN __at(0x7913);


extern volatile __bit T6CKPS0 __at(0x78F0);


extern volatile __bit T6CKPS1 __at(0x78F1);


extern volatile __bit T6OUTPS0 __at(0x78F3);


extern volatile __bit T6OUTPS1 __at(0x78F4);


extern volatile __bit T6OUTPS2 __at(0x78F5);


extern volatile __bit T6OUTPS3 __at(0x78F6);


extern volatile __bit T8CKPS0 __at(0x78D8);


extern volatile __bit T8CKPS1 __at(0x78D9);


extern volatile __bit T8OUTPS0 __at(0x78DB);


extern volatile __bit T8OUTPS1 __at(0x78DC);


extern volatile __bit T8OUTPS2 __at(0x78DD);


extern volatile __bit T8OUTPS3 __at(0x78DE);


extern volatile __bit TGEN __at(0x7D9C);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS0 __at(0x7E6E);


extern volatile __bit TMR1CS1 __at(0x7E6F);


extern volatile __bit TMR1GE __at(0x7CD7);


extern volatile __bit TMR1GIE __at(0x7C88);


extern volatile __bit TMR1GIF __at(0x7CC0);


extern volatile __bit TMR1GIP __at(0x7CC8);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1MD __at(0x75D1);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2MD __at(0x75D2);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR3CS0 __at(0x7BCE);


extern volatile __bit TMR3CS1 __at(0x7BCF);


extern volatile __bit TMR3GE __at(0x7CBF);


extern volatile __bit TMR3GIE __at(0x7D19);


extern volatile __bit TMR3GIF __at(0x7D21);


extern volatile __bit TMR3GIP __at(0x7D29);


extern volatile __bit TMR3IE __at(0x7D01);


extern volatile __bit TMR3IF __at(0x7D09);


extern volatile __bit TMR3IP __at(0x7D11);


extern volatile __bit TMR3MD __at(0x75D3);


extern volatile __bit TMR3ON __at(0x7BC8);


extern volatile __bit TMR4IE __at(0x7D1B);


extern volatile __bit TMR4IF __at(0x7D23);


extern volatile __bit TMR4IP __at(0x7D2B);


extern volatile __bit TMR4MD __at(0x75D4);


extern volatile __bit TMR4ON __at(0x7BB2);


extern volatile __bit TMR5CS0 __at(0x7916);


extern volatile __bit TMR5CS1 __at(0x7917);


extern volatile __bit TMR5GE __at(0x790F);


extern volatile __bit TMR5GIE __at(0x7C89);


extern volatile __bit TMR5GIF __at(0x7CC1);


extern volatile __bit TMR5GIP __at(0x7CC9);


extern volatile __bit TMR5IE __at(0x7C8A);


extern volatile __bit TMR5IF __at(0x7CC2);


extern volatile __bit TMR5IP __at(0x7CCA);


extern volatile __bit TMR5MD __at(0x75DB);


extern volatile __bit TMR5ON __at(0x7910);


extern volatile __bit TMR6IE __at(0x7C8B);


extern volatile __bit TMR6IF __at(0x7CC3);


extern volatile __bit TMR6IP __at(0x7CCB);


extern volatile __bit TMR6MD __at(0x75DC);


extern volatile __bit TMR6ON __at(0x78F2);


extern volatile __bit TMR8IE __at(0x7C8C);


extern volatile __bit TMR8IF __at(0x7CC4);


extern volatile __bit TMR8IP __at(0x7CCC);


extern volatile __bit TMR8MD __at(0x75DE);


extern volatile __bit TMR8ON __at(0x78DA);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TRIGSEL0 __at(0x75C0);


extern volatile __bit TRIGSEL1 __at(0x75C1);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC3 __at(0x7CA3);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRISD0 __at(0x7CA8);


extern volatile __bit TRISD1 __at(0x7CA9);


extern volatile __bit TRISD2 __at(0x7CAA);


extern volatile __bit TRISD3 __at(0x7CAB);


extern volatile __bit TRISD4 __at(0x7CAC);


extern volatile __bit TRISD5 __at(0x7CAD);


extern volatile __bit TRISD6 __at(0x7CAE);


extern volatile __bit TRISD7 __at(0x7CAF);


extern volatile __bit TRISE0 __at(0x7CB0);


extern volatile __bit TRISE1 __at(0x7CB1);


extern volatile __bit TRISE2 __at(0x7CB2);


extern volatile __bit TRMT1 __at(0x7D69);


extern volatile __bit TRMT2 __at(0x7D41);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TUN5 __at(0x7CDD);


extern volatile __bit TX1 __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX2IE __at(0x7D1C);


extern volatile __bit TX2IF __at(0x7D24);


extern volatile __bit TX2IP __at(0x7D2C);


extern volatile __bit TX8_9 __at(0x7D6E);


extern volatile __bit TX8_92 __at(0x7D46);


extern volatile __bit TX91 __at(0x7D6E);


extern volatile __bit TX92 __at(0x7D46);


extern volatile __bit TX9D1 __at(0x7D68);


extern volatile __bit TX9D2 __at(0x7D40);


extern volatile __bit TXB0IE __at(0x7D1A);


extern volatile __bit TXB1IE __at(0x7D1B);


extern volatile __bit TXB2IE __at(0x7D1C);


extern volatile __bit TXBNIE __at(0x7D1C);


extern volatile __bit TXBNIF __at(0x7D24);


extern volatile __bit TXBNIP __at(0x7D2C);


extern volatile __bit TXCKP1 __at(0x7BF4);


extern volatile __bit TXCKP2 __at(0x7BE4);


extern volatile __bit TXD8 __at(0x7D68);


extern volatile __bit TXD82 __at(0x7D40);


extern volatile __bit TXEN1 __at(0x7D6D);


extern volatile __bit TXEN2 __at(0x7D45);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXINC __at(0x7C45);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit U1OD __at(0x7A08);


extern volatile __bit U2OD __at(0x7A09);


extern volatile __bit UA1 __at(0x7E39);


extern volatile __bit UA2 __at(0x7B99);


extern volatile __bit UART1MD __at(0x75CB);


extern volatile __bit UART2MD __at(0x75CC);


extern volatile __bit ULPEN __at(0x7E02);


extern volatile __bit ULPLVL __at(0x7E05);


extern volatile __bit ULPSINK __at(0x7E01);


extern volatile __bit ULPWDIS __at(0x7A62);


extern volatile __bit ULPWU __at(0x7C00);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit VBG __at(0x7C01);


extern volatile __bit VBGEN __at(0x7A4F);


extern volatile __bit VBGOE __at(0x7E04);


extern volatile __bit VCFG0 __at(0x7E16);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E17);


extern volatile __bit VCFG11 __at(0x7E0D);


extern volatile __bit VDIRMAG __at(0x7C2F);


extern volatile __bit VREF_MINUS __at(0x7C02);


extern volatile __bit VREF_PLUS __at(0x7C03);


extern volatile __bit W4E __at(0x7BF1);


extern volatile __bit WAIT0 __at(0x7E5C);


extern volatile __bit WAIT1 __at(0x7E5D);


extern volatile __bit __attribute__((__deprecated__)) WAITB0 __at(0x7AE6);


extern volatile __bit __attribute__((__deprecated__)) WAITB1 __at(0x7AE7);


extern volatile __bit __attribute__((__deprecated__)) WAITE0 __at(0x7AE0);


extern volatile __bit __attribute__((__deprecated__)) WAITE1 __at(0x7AE1);


extern volatile __bit __attribute__((__deprecated__)) WAITM0 __at(0x7AE2);


extern volatile __bit __attribute__((__deprecated__)) WAITM1 __at(0x7AE3);


extern volatile __bit __attribute__((__deprecated__)) WAITM2 __at(0x7AE4);


extern volatile __bit __attribute__((__deprecated__)) WAITM3 __at(0x7AE5);


extern volatile __bit WCOL1 __at(0x7E37);


extern volatile __bit WCOL2 __at(0x7B97);


extern volatile __bit WM0 __at(0x7E58);


extern volatile __bit WM1 __at(0x7E59);


extern volatile __bit WPROG __at(0x7D35);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WRE __at(0x7C21);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WRSP __at(0x7AF1);


extern volatile __bit WUE1 __at(0x7BF1);


extern volatile __bit WUE2 __at(0x7BE1);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nA2 __at(0x7B9D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nADDRESS2 __at(0x7B9D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nCM __at(0x7E85);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRC8 __at(0x7D66);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nSS1 __at(0x7C05);


extern volatile __bit nT1DONE __at(0x7CD3);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT3SYNC __at(0x7BCA);


extern volatile __bit nT5DONE __at(0x790B);


extern volatile __bit nT5SYNC __at(0x7912);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nTX8 __at(0x7D6E);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nW2 __at(0x7B9A);


extern volatile __bit nWRITE __at(0x7E3A);


extern volatile __bit nWRITE2 __at(0x7B9A);

# 19 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18F-J_DFP/1.4.41/xc8\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);

# 156
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 192
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);

# 200 "mcc_generated_files/pin_manager.h"
void PIN_MANAGER_Initialize (void);

# 212
void PIN_MANAGER_IOC(void);

# 15 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 4 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18F-J_DFP/1.4.41/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 14 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

# 7 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

# 104
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 7 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 30 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\math.h"
extern double fabs(double);
extern double floor(double);
extern double ceil(double);
extern double modf(double, double *);
extern double sqrt(double);
extern double atof(const char *);
extern double sin(double) ;
extern double cos(double) ;
extern double tan(double) ;
extern double asin(double) ;
extern double acos(double) ;
extern double atan(double);
extern double atan2(double, double) ;
extern double log(double);
extern double log10(double);
extern double pow(double, double) ;
extern double exp(double) ;
extern double sinh(double) ;
extern double cosh(double) ;
extern double tanh(double);
extern double eval_poly(double, const double *, int);
extern double frexp(double, int *);
extern double ldexp(double, int);
extern double fmod(double, double);
extern double trunc(double);
extern double round(double);

# 43 "mcc_generated_files/../PCF8523.h"
void PCF8523_RTC_Init(void);
void PCF8523_setTime(uint8_t hour, uint8_t minute, uint8_t second);
void PCF8523_setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year);
void PCF8523_countDown(uint8_t timeUnit, uint8_t time);
void PCF8523_setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay);
void PCF8523_write(uint8_t regAdd, uint8_t data);
int PCF8523_rtc_INTF_CLR(int interruptFlag);
uint8_t decimalToBCD(int DecValue);
uint8_t BCDtoDecimal(int BCDvalue);
uint8_t PCF8523_rtcRead(uint8_t address);

enum days { Sun = 0, Mon = 1, Tue = 2, Wed = 3, Thu = 4, Fri = 5, Sat = 6};
enum months {Jan =1, Feb =2, Mar =3, Apr =4, May =5, Jun =6, Jul =7, Aug =8, Sep =9, Oct =10, Nov =11, Dec =12};
enum TMR_SCLK_FREQ {hours = 7, minutes = 3, seconds = 2};
enum interrupt_Flag {WTAF = 4, CTAF = 2, CTBF = 0};

# 15 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 6 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stddef.h"
typedef int ptrdiff_t;

# 117 "mcc_generated_files/spi1.h"
void SPI1_Initialize(void);

# 152
uint8_t SPI1_Exchange8bit(uint8_t data);

# 192
uint8_t SPI1_Exchange8bitBuffer(uint8_t *dataIn, uint8_t bufLen, uint8_t *dataOut);

# 215
bool SPI1_IsBufferFull(void);

# 240
bool SPI1_HasWriteCollisionOccured(void);

# 264
void SPI1_ClearWriteCollisionStatus(void);

# 15 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 78 "mcc_generated_files/eusart1.h"
typedef union {
struct {
unsigned perr : 1;
unsigned ferr : 1;
unsigned oerr : 1;
unsigned reserved : 5;
};
uint8_t status;
}eusart1_status_t;

# 114
void EUSART1_Initialize(void);

# 162
bool EUSART1_is_tx_ready(void);

# 210
bool EUSART1_is_rx_ready(void);

# 257
bool EUSART1_is_tx_done(void);

# 305
eusart1_status_t EUSART1_get_last_status(void);

# 325
uint8_t EUSART1_Read(void);

# 345
void EUSART1_Write(uint8_t txData);
void EUSART1_Write_Text(uint8_t *pbData, uint8_t iSize);
void EUSART1_itoa(uint32_t data, int base);

# 366
void EUSART1_SetFramingErrorHandler(void (* interruptHandler)(void));

# 384
void EUSART1_SetOverrunErrorHandler(void (* interruptHandler)(void));

# 402
void EUSART1_SetErrorHandler(void (* interruptHandler)(void));

# 11 "mcc_generated_files/../I2C.h"
void I2C_Init(uint8_t frequency);
void I2C_Write(uint8_t data);

void I2C_stop(void);
void I2C_start(void);
void I2C_repeated_Start(void);
int I2C_read(int ACK_NACK);
void I2C_BusSCan(void);
void I2C_buffClear(void);

# 15 "mcc_generated_files/../MCP4131.h"
void MCP4131Write(uint8_t value);
void MCP4131P_loop(void);

# 15 "mcc_generated_files/../MCP23S08.h"
void MCP23S08Write(uint8_t data);
void MCP23S08_Init(uint8_t portDirection);
void MCP23S08_loop(void);

# 15 "mcc_generated_files/../_25LC512.h"
char sData[10];
void EEPROM_25LC512_Write(uint8_t address, uint8_t data);
uint8_t EEPROM_25LC512_Read(uint8_t address);
void chipErase(void);
void rStatus_Reg(void);
void wStatus_Reg(void);
void EEPROM_25LC512_loop(void);

# 38 "mcc_generated_files/../MCP28003.h"
void MCP23008_Write(int port, int data);
void MCP23008_pinMode(int port, int mode);
void MCP23008_pullUp(int port);
uint8_t MCP23008_read(int port);
uint8_t MCP23008_ISR_EN(int port, int INTedge);
uint8_t portINT_status(int port);
int MCP23008_reagReg(int regAdd);
void MCP23008_ISR_polarity(int port, int INTedge);
void MCP23008_INTclear(void);

# 21 "mcc_generated_files/../MCP9801.h"
void MCP9801_Init(void);
int8_t MCP9801_TempRead(void);

union{
uint8_t MSB_LSB[2];
int16_t TempData;
}ADC;

# 21 "mcc_generated_files/../_24AA512.h"
uint32_t dataOut;

uint8_t EEPROM_24AA512_Read(int addHigh, int addLow);
void EEPROM_24AA512_Write(int addHigh, int AddLow, int data);
uint8_t EEPROM_24AA512_pageWrite(uint8_t page,uint16_t *data);
uint8_t EEPROM_24AA512_pageRead(uint8_t page);
void EEPROM_put(uint8_t HighAddress, uint8_t LowAddress, uint32_t dataWrite);
uint32_t EEPROM_get(uint8_t HighAddress, uint8_t LowAddress, int dataSize);

# 61 "mcc_generated_files/../MCP79411.h"
void MCP794x_setTime(uint8_t hour, uint8_t minute, uint8_t second) ;
void MCP794x_setDate(uint8_t date, uint8_t weekDay, uint8_t month, uint8_t year);
void MCP794x_writeRtcc(uint8_t Register, uint8_t value);
void MCP794x_setAlarm(uint8_t alarmMask, uint8_t time);
uint8_t MCP794x_INTF_CLR(void);
uint8_t MCP7941x_read(uint8_t Register);
void MCP794x_writeEEPROM(uint8_t Register, uint8_t data);
uint8_t MCP794x_readEEPROM(uint8_t Register);
double* MCP794x_getID(void);
uint32_t MCP794x_getEEPROM(int address, int dataSize);
void MCP794x_putEEPROM(uint8_t address, uint32_t dataWrite, uint8_t byteNumb);
enum ALARM_MASK {second = 0x00, minute = 0x10, hour = 0x20, dayWk = 0x30, date = 0x40, SMHDD = 0x70};

# 15 "mcc_generated_files/../MAX31855K.h"
uint32_t MAX31855_Read(void);

union {
char MAX31855[4];
uint32_t rawDate;
}MAX31_ADC;

# 82 "mcc_generated_files/../SSD1306.h"
void SSD1306_Init(void);
void SSD1306_writeCMD(uint8_t controlReg, uint8_t dataByte);
void SSD1306_clearDisplay(void);
void SSD1306_setCursor(uint8_t x, uint8_t y);
void SSD1306_setTextSize(uint8_t s);
void SSD1306_setTextWrap(uint8_t w);
void SSD1306_setTextColor(uint16_t c);
void SSD1306_setRotatation(uint8_t rotation);


uint8_t getRotation(void);
uint16_t width(void);
uint16_t height(void);
void SSD1306_invertDisplay(uint8_t i);
void SSD1306_writeData(uint8_t data);
void SSD1306_startscrollright(uint8_t start, uint8_t stop);
void SSD1306_startscrollLeft(uint8_t start, uint8_t stop);
void SSD1306_startscrolldiagright(uint8_t start, uint8_t stop);
void SSD1306_stopscroll(void);
void SSD1306_dim(bool status);
void SSD1306_display(void);
void SSD1306_PutC(char c);
void SSD1306_Print(char *s);



uint8_t x_pos = 1, y_pos = 1, wrap = 1, text_size = 1;

# 34 "mcc_generated_files/../MCP3423.h"
uint32_t MCP342x_read(int channel);

union {
char Byte[2];
uint32_t dataRead;
} MCP342x_ADC;

# 43 "mcc_generated_files/mcc.h"
void SYSTEM_Initialize(void);

# 56
void OSCILLATOR_Initialize(void);

# 10 "RTC_PCF8523.c"
void PCF8523_RTC_Init(void) {

# 18
PCF8523_write(0X00, 0x80);

# 25
PCF8523_write(0x02, 0x80);

# 31
PCF8523_write(0x0F, 0xF8);
}

# 41
void PCF8523_setTime(uint8_t hour, uint8_t minute, uint8_t second) {
int Register[4] = {0x03, 0x04, 0x05};
for (int timeReg = 0; timeReg < 3; timeReg++) {
if (Register[timeReg] == 0x03)
PCF8523_write(Register[timeReg], decimalToBCD(second)&0x7F);
else if (Register[timeReg] == 0x04)
PCF8523_write(Register[timeReg], decimalToBCD(minute)&0x7F);
else if (Register[timeReg] == 0x05)
PCF8523_write(Register[timeReg], decimalToBCD(hour)&0x7F);
}
}

# 61
void PCF8523_setDate(uint8_t day, uint8_t weekday, uint8_t month, uint8_t year) {
uint8_t Register[5] = {0x06, 0x07, 0x08, 0x09};
for (int timeReg = 0; timeReg < 4; timeReg++) {
switch (Register[timeReg]) {
case 0x06:PCF8523_write(Register[timeReg], decimalToBCD(day)&0x7F);
break;
case 0x07:PCF8523_write(Register[timeReg], decimalToBCD(weekday)&0x7F);
break;
case 0x08:PCF8523_write(Register[timeReg], decimalToBCD(month)&0x7F);
break;
case 0x09:PCF8523_write(Register[timeReg], decimalToBCD(year)&0x7F);
break;
}
}
}

# 84
void PCF8523_setAlarm(uint8_t alarmReg, uint8_t minute, uint8_t hour, uint8_t day, uint8_t weekDay) {
PCF8523_write(0X00, 0x80 | 0x02);
PCF8523_write(alarmReg, decimalToBCD(minute + hour + weekDay)&0x7F);
PCF8523_write(0x01, 0x00);
}

# 98
void PCF8523_countDown(uint8_t timeUnit, uint8_t time) {
PCF8523_write(0x0F, 0xFA);
PCF8523_write(0x01, 0x02);
PCF8523_write(0x10, timeUnit);
PCF8523_write(0x11, time);
}

# 113
uint8_t PCF8523_rtcRead(uint8_t address) {
I2C_start();
I2C_Write(0xD0);
I2C_Write(address);
I2C_stop();
I2C_start();
I2C_Write(0xD0|0x01);
I2C_read(1);
I2C_stop();
return BCDtoDecimal(SSP2BUF);
}

# 132
int PCF8523_rtc_INTF_CLR(int interruptFlag) {
PCF8523_write(0x01, interruptFlag);
_delay((unsigned long)((5)*(16000000/4000.0)));
return;
}

# 145
void PCF8523_write(uint8_t regAdd, uint8_t data) {
I2C_start();
I2C_Write(0xD0);
I2C_Write(regAdd);
I2C_Write(data);
I2C_stop();
}

uint8_t decimalToBCD(int DecValue) {
return (((DecValue / 10) << 4) | (DecValue % 10));
}

uint8_t BCDtoDecimal(int BCDvalue) {
return (((BCDvalue >> 4)*10) + (BCDvalue & 0xF));
}
