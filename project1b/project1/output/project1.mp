Project:      output/project1
Build Number: 0
Date:         Wed Apr  6 19:03:29 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 3% full. 969 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 11 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0195 =    405. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_project1_Bank0
       0205  LoadConfigTBL_project1_Bank1
       0230  LoadConfigTBL_project1_Ordered
       0335  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0335   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0335  __func_lit_start
       0337  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0337   0062 =     98. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0337  LoadConfigInit
       0337  _LoadConfigInit
       033E  _LoadConfig_project1
       033E  LoadConfig_project1
       0399  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0399   014F =    335. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0399  _VR_PGA_Start
       0399  _VR_PGA_SetPower
       0399  VR_PGA_Start
       0399  VR_PGA_SetPower
       03AB  _VR_PGA_SetGain
       03AB  VR_PGA_SetGain
       03D5  VR_PGA_Stop
       03D5  _VR_PGA_Stop
       03D9  _VR_ADC_ADConversion_ISR
       0447  VR_ADC_Start
       0447  _VR_ADC_Start
       0456  _VR_ADC_SetPower
       0456  VR_ADC_SetPower
       0468  _VR_ADC_Stop
       0468  VR_ADC_Stop
       0472  VR_ADC_GetSamples
       0472  _VR_ADC_GetSamples
       049B  _VR_ADC_StopADC
       049B  VR_ADC_StopADC
       04AF  VR_ADC_fIsDataAvailable
       04AF  _VR_ADC_fIsDataAvailable
       04B5  _VR_ADC_iClearFlagGetData
       04B5  _VR_ADC_wClearFlagGetData
       04B5  VR_ADC_iClearFlagGetData
       04B5  VR_ADC_wClearFlagGetData
       04C5  _VR_ADC_cClearFlagGetData
       04C5  _VR_ADC_bClearFlagGetData
       04C5  VR_ADC_cClearFlagGetData
       04C5  VR_ADC_bClearFlagGetData
       04CE  _VR_ADC_wGetData
       04CE  VR_ADC_wGetData
       04CE  VR_ADC_iGetData
       04CE  _VR_ADC_iGetData
       04D6  VR_ADC_cGetData
       04D6  _VR_ADC_bGetData
       04D6  _VR_ADC_cGetData
       04D6  VR_ADC_bGetData
       04DC  VR_ADC_fClearFlag
       04DC  _VR_ADC_fClearFlag
       04E5  VR_ADC_WritePulseWidth
       04E5  _VR_ADC_WritePulseWidth
       04E8  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   04E8   0081 =    129. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       04E8  _main
       04E8  __text_start
       0569  __text_end
       056F  __xidata_end

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
<library>	[ vr_pga.asm, vr_adcint.asm, vr_adc.asm, psocconfigtbl.asm, psocconfig.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x8
-Bproject1_RAM

