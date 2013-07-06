//*****************************************************************************
//*****************************************************************************
//  FILENAME: LEDFlashTimer.h
//   Version: 2.70, Updated on 2010/9/19 at 23:41:4
//  Generated by PSoC Designer 5.1.1875.0
//
//  DESCRIPTION: Timer8 User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef LEDFlashTimer_INCLUDE
#define LEDFlashTimer_INCLUDE

#include <m8c.h>

#pragma fastcall16 LEDFlashTimer_EnableInt                 //                 Proxy 1
#pragma fastcall16 LEDFlashTimer_DisableInt                //                 Proxy 1
#pragma fastcall16 LEDFlashTimer_Start                     //                 Proxy 1
#pragma fastcall16 LEDFlashTimer_Stop                      //                 Proxy 1
#pragma fastcall16 LEDFlashTimer_bReadTimer                // Read  DR0       Proxy 1
#pragma fastcall16 LEDFlashTimer_bReadTimerSaveCV          // Read  DR0       Proxy 2
#pragma fastcall16 LEDFlashTimer_WritePeriod               // Write DR1       Proxy 1
#pragma fastcall16 LEDFlashTimer_bReadCompareValue         // Read  DR2       Proxy 1
#pragma fastcall16 LEDFlashTimer_WriteCompareValue         // Write DR2       Proxy 1

// The following symbols are deprecated.
// They may be omitted in future releases
//
#pragma fastcall16 bLEDFlashTimer_ReadCounter              // Read  DR0 "Obsolete"
#pragma fastcall16 bLEDFlashTimer_CaptureCounter           // Read  DR0 "Obsolete"
#pragma fastcall16 bLEDFlashTimer_ReadTimer                // Read  DR0 (Deprecated)
#pragma fastcall16 bLEDFlashTimer_ReadTimerSaveCV          // Read  DR0 (Deprecated)
#pragma fastcall16 bLEDFlashTimer_ReadCompareValue         // Read  DR2 (Deprecated)


//-------------------------------------------------
// Prototypes of the LEDFlashTimer API.
//-------------------------------------------------

extern void LEDFlashTimer_EnableInt(void);
extern void LEDFlashTimer_DisableInt(void);
extern void LEDFlashTimer_Start(void);
extern void LEDFlashTimer_Stop(void);
extern BYTE LEDFlashTimer_bReadTimer(void);
extern BYTE LEDFlashTimer_bReadTimerSaveCV(void);
extern void LEDFlashTimer_WritePeriod(BYTE bPeriod);
extern BYTE LEDFlashTimer_bReadCompareValue(void);
extern void LEDFlashTimer_WriteCompareValue(BYTE bCompareValue);

// The following functions are deprecated.
// They may be omitted in future releases
//
extern BYTE bLEDFlashTimer_ReadCompareValue(void);       // Deprecated
extern BYTE bLEDFlashTimer_ReadTimerSaveCV(void);        // Deprecated
extern BYTE bLEDFlashTimer_ReadCounter(void);            // Obsolete
extern BYTE bLEDFlashTimer_ReadTimer(void);              // Deprecated
extern BYTE bLEDFlashTimer_CaptureCounter(void);         // Obsolete


//--------------------------------------------------
// Constants for LEDFlashTimer API's.
//--------------------------------------------------

#define LEDFlashTimer_CONTROL_REG_START_BIT    ( 0x01 )
#define LEDFlashTimer_INT_REG_ADDR             ( 0x0e1 )
#define LEDFlashTimer_INT_MASK                 ( 0x02 )


//--------------------------------------------------
// Constants for LEDFlashTimer user defined values
//--------------------------------------------------

#define LEDFlashTimer_PERIOD                   ( 0xfa )
#define LEDFlashTimer_COMPARE_VALUE            ( 0x00 )


//-------------------------------------------------
// Register Addresses for LEDFlashTimer
//-------------------------------------------------

#pragma ioport  LEDFlashTimer_COUNTER_REG:  0x024          //DR0 Count register
BYTE            LEDFlashTimer_COUNTER_REG;
#pragma ioport  LEDFlashTimer_PERIOD_REG:   0x025          //DR1 Period register
BYTE            LEDFlashTimer_PERIOD_REG;
#pragma ioport  LEDFlashTimer_COMPARE_REG:  0x026          //DR2 Compare register
BYTE            LEDFlashTimer_COMPARE_REG;
#pragma ioport  LEDFlashTimer_CONTROL_REG:  0x027          //Control register
BYTE            LEDFlashTimer_CONTROL_REG;
#pragma ioport  LEDFlashTimer_FUNC_REG: 0x124              //Function register
BYTE            LEDFlashTimer_FUNC_REG;
#pragma ioport  LEDFlashTimer_INPUT_REG:    0x125          //Input register
BYTE            LEDFlashTimer_INPUT_REG;
#pragma ioport  LEDFlashTimer_OUTPUT_REG:   0x126          //Output register
BYTE            LEDFlashTimer_OUTPUT_REG;
#pragma ioport  LEDFlashTimer_INT_REG:       0x0e1         //Interrupt Mask Register
BYTE            LEDFlashTimer_INT_REG;


//-------------------------------------------------
// LEDFlashTimer Macro 'Functions'
//-------------------------------------------------

#define LEDFlashTimer_Start_M \
   ( LEDFlashTimer_CONTROL_REG |=  LEDFlashTimer_CONTROL_REG_START_BIT )

#define LEDFlashTimer_Stop_M  \
   ( LEDFlashTimer_CONTROL_REG &= ~LEDFlashTimer_CONTROL_REG_START_BIT )

#define LEDFlashTimer_EnableInt_M   \
   M8C_EnableIntMask(  LEDFlashTimer_INT_REG, LEDFlashTimer_INT_MASK )

#define LEDFlashTimer_DisableInt_M  \
   M8C_DisableIntMask( LEDFlashTimer_INT_REG, LEDFlashTimer_INT_MASK )

#endif
// end of file LEDFlashTimer.h
