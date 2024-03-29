//*****************************************************************************
//*****************************************************************************
//  FILENAME: ADCINC_1.h
//  Version: 1.1, Updated on 2010/9/19 at 23:39:0
//	Generated by PSoC Designer 5.1.1875.0
//
//  DESCRIPTION:  C declarations for the ADCINC User Module with
//                a 1st-order modulator.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef ADCINC_1_INCLUDE
#define ADCINC_1_INCLUDE

#include <m8c.h>

#pragma fastcall16 ADCINC_1_Start
#pragma fastcall16 ADCINC_1_SetPower
#pragma fastcall16 ADCINC_1_Stop
#pragma fastcall16 ADCINC_1_GetSamples
#pragma fastcall16 ADCINC_1_StopADC
#pragma fastcall16 ADCINC_1_fIsDataAvailable
#pragma fastcall16 ADCINC_1_iClearFlagGetData
#pragma fastcall16 ADCINC_1_wClearFlagGetData
#pragma fastcall16 ADCINC_1_cClearFlagGetData
#pragma fastcall16 ADCINC_1_bClearFlagGetData
#pragma fastcall16 ADCINC_1_iGetData
#pragma fastcall16 ADCINC_1_wGetData
#pragma fastcall16 ADCINC_1_cGetData
#pragma fastcall16 ADCINC_1_bGetData
#pragma fastcall16 ADCINC_1_fClearFlag
#pragma fastcall16 ADCINC_1_WritePulseWidth

//-------------------------------------------------
// Prototypes of the ADCINC_1 API.
//-------------------------------------------------
extern void  ADCINC_1_Start(BYTE bPower);
extern void  ADCINC_1_SetPower(BYTE bPower);
extern void  ADCINC_1_Stop(void);
extern void  ADCINC_1_GetSamples(BYTE bNumSamples);
extern void  ADCINC_1_StopADC(void);
extern BYTE  ADCINC_1_fIsDataAvailable(void);
extern INT   ADCINC_1_iClearFlagGetData(void);
extern WORD  ADCINC_1_wClearFlagGetData(void);
extern CHAR  ADCINC_1_cClearFlagGetData(void);
extern BYTE  ADCINC_1_bClearFlagGetData(void);
extern INT   ADCINC_1_iGetData(void);
extern WORD  ADCINC_1_wGetData(void);
extern CHAR  ADCINC_1_cGetData(void);
extern BYTE  ADCINC_1_bGetData(void);
extern BYTE  ADCINC_1_fClearFlag(void);
extern void  ADCINC_1_WritePulseWidth(BYTE bPulseWidthValue);


//-------------------------------------------------
// Defines for ADCINC_1 API's.
//-------------------------------------------------
#define ADCINC_1_OFF         0
#define ADCINC_1_LOWPOWER    1
#define ADCINC_1_MEDPOWER    2
#define ADCINC_1_HIGHPOWER   3


//-------------------------------------------------
// Hardware Register Definitions
//-------------------------------------------------
#pragma ioport  ADCINC_1_PWMdr0:    0x020                 //Period reg
BYTE            ADCINC_1_PWMdr0;
#pragma ioport  ADCINC_1_PWMdr1:    0x021                 //1_ADDRh   ; Down count reg
BYTE            ADCINC_1_PWMdr1;               
#pragma ioport  ADCINC_1_PWMdr2:    0x022                 //Compare reg
BYTE            ADCINC_1_PWMdr2;
#pragma ioport  ADCINC_1_PWMcr0:    0x023                 //Control reg
BYTE            ADCINC_1_PWMcr0;
#pragma ioport  ADCINC_1_PWMfn: 0x120                  //Function reg
BYTE            ADCINC_1_PWMfn;
#pragma ioport  ADCINC_1_PWMsl: 0x121                  //Input select reg
BYTE            ADCINC_1_PWMsl;
#pragma ioport  ADCINC_1_PWMos: 0x122                  //Output select reg
BYTE            ADCINC_1_PWMos;
#pragma ioport  ADCINC_1_AtoDcr0:   0x080                //SC Block Control Reg 0
BYTE            ADCINC_1_AtoDcr0;
#pragma ioport  ADCINC_1_AtoDcr1:   0x081                //SC Block Control Reg 1
BYTE            ADCINC_1_AtoDcr1;
#pragma ioport  ADCINC_1_AtoDcr2:   0x082                //SC Block Control Reg 2
BYTE            ADCINC_1_AtoDcr2;
#pragma ioport  ADCINC_1_AtoDcr3:   0x083                //SC Block Control Reg 3
BYTE            ADCINC_1_AtoDcr3;

#endif
// end of file ADCINC_1.h
