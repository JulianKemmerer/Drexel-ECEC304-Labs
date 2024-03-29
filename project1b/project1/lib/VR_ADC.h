//*****************************************************************************
//*****************************************************************************
//  FILENAME: VR_ADC.h
//  Version: 1.1, Updated on 2010/9/19 at 23:39:0
//	Generated by PSoC Designer 5.1.1875.0
//
//  DESCRIPTION:  C declarations for the ADCINC User Module with
//                a 1st-order modulator.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef VR_ADC_INCLUDE
#define VR_ADC_INCLUDE

#include <m8c.h>

#pragma fastcall16 VR_ADC_Start
#pragma fastcall16 VR_ADC_SetPower
#pragma fastcall16 VR_ADC_Stop
#pragma fastcall16 VR_ADC_GetSamples
#pragma fastcall16 VR_ADC_StopADC
#pragma fastcall16 VR_ADC_fIsDataAvailable
#pragma fastcall16 VR_ADC_iClearFlagGetData
#pragma fastcall16 VR_ADC_wClearFlagGetData
#pragma fastcall16 VR_ADC_cClearFlagGetData
#pragma fastcall16 VR_ADC_bClearFlagGetData
#pragma fastcall16 VR_ADC_iGetData
#pragma fastcall16 VR_ADC_wGetData
#pragma fastcall16 VR_ADC_cGetData
#pragma fastcall16 VR_ADC_bGetData
#pragma fastcall16 VR_ADC_fClearFlag
#pragma fastcall16 VR_ADC_WritePulseWidth

//-------------------------------------------------
// Prototypes of the VR_ADC API.
//-------------------------------------------------
extern void  VR_ADC_Start(BYTE bPower);
extern void  VR_ADC_SetPower(BYTE bPower);
extern void  VR_ADC_Stop(void);
extern void  VR_ADC_GetSamples(BYTE bNumSamples);
extern void  VR_ADC_StopADC(void);
extern BYTE  VR_ADC_fIsDataAvailable(void);
extern INT   VR_ADC_iClearFlagGetData(void);
extern WORD  VR_ADC_wClearFlagGetData(void);
extern CHAR  VR_ADC_cClearFlagGetData(void);
extern BYTE  VR_ADC_bClearFlagGetData(void);
extern INT   VR_ADC_iGetData(void);
extern WORD  VR_ADC_wGetData(void);
extern CHAR  VR_ADC_cGetData(void);
extern BYTE  VR_ADC_bGetData(void);
extern BYTE  VR_ADC_fClearFlag(void);
extern void  VR_ADC_WritePulseWidth(BYTE bPulseWidthValue);


//-------------------------------------------------
// Defines for VR_ADC API's.
//-------------------------------------------------
#define VR_ADC_OFF         0
#define VR_ADC_LOWPOWER    1
#define VR_ADC_MEDPOWER    2
#define VR_ADC_HIGHPOWER   3


//-------------------------------------------------
// Hardware Register Definitions
//-------------------------------------------------
#pragma ioport  VR_ADC_PWMdr0:  0x020                 //Period reg
BYTE            VR_ADC_PWMdr0;
#pragma ioport  VR_ADC_PWMdr1:  0x021                 //1_ADDRh   ; Down count reg
BYTE            VR_ADC_PWMdr1;               
#pragma ioport  VR_ADC_PWMdr2:  0x022                 //Compare reg
BYTE            VR_ADC_PWMdr2;
#pragma ioport  VR_ADC_PWMcr0:  0x023                 //Control reg
BYTE            VR_ADC_PWMcr0;
#pragma ioport  VR_ADC_PWMfn:   0x120                  //Function reg
BYTE            VR_ADC_PWMfn;
#pragma ioport  VR_ADC_PWMsl:   0x121                  //Input select reg
BYTE            VR_ADC_PWMsl;
#pragma ioport  VR_ADC_PWMos:   0x122                  //Output select reg
BYTE            VR_ADC_PWMos;
#pragma ioport  VR_ADC_AtoDcr0: 0x080                //SC Block Control Reg 0
BYTE            VR_ADC_AtoDcr0;
#pragma ioport  VR_ADC_AtoDcr1: 0x081                //SC Block Control Reg 1
BYTE            VR_ADC_AtoDcr1;
#pragma ioport  VR_ADC_AtoDcr2: 0x082                //SC Block Control Reg 2
BYTE            VR_ADC_AtoDcr2;
#pragma ioport  VR_ADC_AtoDcr3: 0x083                //SC Block Control Reg 3
BYTE            VR_ADC_AtoDcr3;

#endif
// end of file VR_ADC.h
