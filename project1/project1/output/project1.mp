Project:      output/project1
Build Number: 0
Date:         Wed Mar 30 20:21:25 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 4% full. 1029 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 11 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   01A1 =    417. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_project1_Bank0
       020B  LoadConfigTBL_project1_Bank1
       023C  LoadConfigTBL_project1_Ordered
       0341  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0341   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0341  __func_lit_start
       0343  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0343   0062 =     98. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0343  LoadConfigInit
       0343  _LoadConfigInit
       034A  _LoadConfig_project1
       034A  LoadConfig_project1
       03A5  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03A5   019C =    412. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03A5  _VR_PGA_Start
       03A5  VR_PGA_Start
       03A5  _VR_PGA_SetPower
       03A5  VR_PGA_SetPower
       03B7  VR_PGA_SetGain
       03B7  _VR_PGA_SetGain
       03E1  VR_PGA_Stop
       03E1  _VR_PGA_Stop
       03E5  _VR_ADC_ADConversion_ISR
       0453  _VR_ADC_Start
       0453  VR_ADC_Start
       0462  _VR_ADC_SetPower
       0462  VR_ADC_SetPower
       0474  _VR_ADC_Stop
       0474  VR_ADC_Stop
       047E  _VR_ADC_GetSamples
       047E  VR_ADC_GetSamples
       04A7  _VR_ADC_StopADC
       04A7  VR_ADC_StopADC
       04BB  VR_ADC_fIsDataAvailable
       04BB  _VR_ADC_fIsDataAvailable
       04C1  _VR_ADC_iClearFlagGetData
       04C1  VR_ADC_iClearFlagGetData
       04C1  VR_ADC_wClearFlagGetData
       04C1  _VR_ADC_wClearFlagGetData
       04D1  VR_ADC_bClearFlagGetData
       04D1  VR_ADC_cClearFlagGetData
       04D1  _VR_ADC_bClearFlagGetData
       04D1  _VR_ADC_cClearFlagGetData
       04DA  VR_ADC_wGetData
       04DA  _VR_ADC_iGetData
       04DA  _VR_ADC_wGetData
       04DA  VR_ADC_iGetData
       04E2  VR_ADC_bGetData
       04E2  _VR_ADC_cGetData
       04E2  VR_ADC_cGetData
       04E2  _VR_ADC_bGetData
       04E8  VR_ADC_fClearFlag
       04E8  _VR_ADC_fClearFlag
       04F1  _VR_ADC_WritePulseWidth
       04F1  VR_ADC_WritePulseWidth
       04F4  _LEDFlashTimer_ISR
       04F8  LEDFlashTimer_EnableInt
       04F8  _LEDFlashTimer_EnableInt
       04FC  LEDFlashTimer_DisableInt
       04FC  _LEDFlashTimer_DisableInt
       0500  LEDFlashTimer_Start
       0500  _LEDFlashTimer_Start
       0504  _LEDFlashTimer_Stop
       0504  LEDFlashTimer_Stop
       0508  LEDFlashTimer_WritePeriod
       0508  _LEDFlashTimer_WritePeriod
       050B  _LEDFlashTimer_WriteCompareValue
       050B  LEDFlashTimer_WriteCompareValue
       050E  LEDFlashTimer_bReadCompareValue
       050E  _bLEDFlashTimer_ReadCompareValue
       050E  bLEDFlashTimer_ReadCompareValue
       050E  _LEDFlashTimer_bReadCompareValue
       0511  _bLEDFlashTimer_ReadTimerSaveCV
       0511  bLEDFlashTimer_ReadTimerSaveCV
       0511  LEDFlashTimer_bReadTimerSaveCV
       0511  _bLEDFlashTimer_ReadCounter
       0511  bLEDFlashTimer_ReadCounter
       0511  _LEDFlashTimer_bReadTimerSaveCV
       053C  bLEDFlashTimer_CaptureCounter
       053C  LEDFlashTimer_bReadTimer
       053C  _bLEDFlashTimer_ReadTimer
       053C  _LEDFlashTimer_bReadTimer
       053C  bLEDFlashTimer_ReadTimer
       053C  _bLEDFlashTimer_CaptureCounter
       0541  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0541   0064 =    100. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0541  _main
       0541  __text_start
       05A1  _LEDFlashTimer_ISR_C
       05A5  __text_end
       05AB  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0143 =    323. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0140  bGetPowerSetting
       0140  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  VR_ADC_iResult
       0000  _VR_ADC_iResult
       0004  VR_ADC_fStatus
       0004  _VR_ADC_fStatus
       0005  VR_ADC_bState
       0005  _VR_ADC_bState
       0006  VR_ADC_fMode
       0006  _VR_ADC_fMode
       0007  VR_ADC_bNumSamples
       0007  _VR_ADC_bNumSamples
       0008  NO_SHADOW
       0008  _NO_SHADOW

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0008   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0008  __r1
       0009  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       000A  _ucVR_ADCResult

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ vr_pga.asm, vr_adcint.asm, vr_adc.asm, psocconfigtbl.asm, psocconfig.asm, ledflashtimerint.asm ]
[ ledflashtimer.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x8
-Bproject1_RAM	allocated at: 0

