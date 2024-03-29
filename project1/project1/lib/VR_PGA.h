//*****************************************************************************
//*****************************************************************************
//  FILENAME:  VR_PGA.h  ( PGA )
//  Version: 3.2, Updated on 2010/9/19 at 23:40:51
//  Generated by PSoC Designer 5.1.1875.0
//
//  DESCRIPTION:  PGA User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef VR_PGA_INCLUDE
#define VR_PGA_INCLUDE

#include <M8C.h>

//-------------------------------------------------
// Constants for VR_PGA API's.
//-------------------------------------------------
#define VR_PGA_OFF         0
#define VR_PGA_LOWPOWER    1
#define VR_PGA_MEDPOWER    2
#define VR_PGA_HIGHPOWER   3

#define VR_PGA_G48_0    0x0C
#define VR_PGA_G24_0    0x1C

#define VR_PGA_G16_0    0x08
#define VR_PGA_G8_00    0x18
#define VR_PGA_G5_33    0x28
#define VR_PGA_G4_00    0x38
#define VR_PGA_G3_20    0x48
#define VR_PGA_G2_67    0x58
#define VR_PGA_G2_27    0x68
#define VR_PGA_G2_00    0x78
#define VR_PGA_G1_78    0x88
#define VR_PGA_G1_60    0x98
#define VR_PGA_G1_46    0xA8
#define VR_PGA_G1_33    0xB8
#define VR_PGA_G1_23    0xC8
#define VR_PGA_G1_14    0xD8
#define VR_PGA_G1_06    0xE8
#define VR_PGA_G1_00    0xF8
#define VR_PGA_G0_93    0xE0
#define VR_PGA_G0_87    0xD0
#define VR_PGA_G0_81    0xC0
#define VR_PGA_G0_75    0xB0
#define VR_PGA_G0_68    0xA0
#define VR_PGA_G0_62    0x90
#define VR_PGA_G0_56    0x80
#define VR_PGA_G0_50    0x70
#define VR_PGA_G0_43    0x60
#define VR_PGA_G0_37    0x50
#define VR_PGA_G0_31    0x40
#define VR_PGA_G0_25    0x30
#define VR_PGA_G0_18    0x20
#define VR_PGA_G0_12    0x10
#define VR_PGA_G0_06    0x00

#define VR_PGA_AGNDBUFAPI 0

#pragma fastcall16 VR_PGA_Start
#pragma fastcall16 VR_PGA_SetPower
#pragma fastcall16 VR_PGA_SetGain
#pragma fastcall16 VR_PGA_Stop

#if (VR_PGA_AGNDBUFAPI)
#pragma fastcall16 VR_PGA_EnableAGNDBuffer
#pragma fastcall16 VR_PGA_DisableAGNDBuffer
#endif

//-------------------------------------------------
// Prototypes of the VR_PGA API.
//-------------------------------------------------
extern void VR_PGA_Start(BYTE bPowerSetting);     // Proxy class 2
extern void VR_PGA_SetPower(BYTE bPowerSetting);  // Proxy class 2
extern void VR_PGA_SetGain(BYTE bGainSetting);    // Proxy class 2
extern void VR_PGA_Stop(void);                    // Proxy class 1

#if (VR_PGA_AGNDBUFAPI)
extern void VR_PGA_EnableAGNDBuffer(void);
extern void VR_PGA_DisableAGNDBuffer(void);
#endif

//-------------------------------------------------
// Register Addresses for VR_PGA
//-------------------------------------------------

#pragma ioport  VR_PGA_GAIN_CR0:    0x071
BYTE            VR_PGA_GAIN_CR0;
#pragma ioport  VR_PGA_GAIN_CR1:    0x072
BYTE            VR_PGA_GAIN_CR1;
#pragma ioport  VR_PGA_GAIN_CR2:    0x073
BYTE            VR_PGA_GAIN_CR2;
#pragma ioport  VR_PGA_GAIN_CR3:    0x070
BYTE            VR_PGA_GAIN_CR3;

#endif
// end of file VR_PGA.h
