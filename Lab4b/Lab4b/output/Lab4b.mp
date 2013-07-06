Project:      output/Lab4b
Build Number: 0
Date:         Wed Jun  1 20:10:55 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 10% full. 2992 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 16 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0185 =    389. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab4b_Bank0
       01F5  LoadConfigTBL_lab4b_Bank1
       0220  LoadConfigTBL_lab4b_Ordered
       0325  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0325   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0325  __func_lit_start
       0327  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0327   006B =    107. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0327  _LoadConfigInit
       0327  LoadConfigInit
       0337  _LoadConfig_lab4b
       0337  LoadConfig_lab4b
       0392  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0392   02D6 =    726. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0392  _PWM8_ISR
       0393  _PWM8_EnableInt
       0393  PWM8_EnableInt
       0397  _PWM8_DisableInt
       0397  PWM8_DisableInt
       039B  _PWM8_Start
       039B  PWM8_Start
       039F  _PWM8_Stop
       039F  PWM8_Stop
       03A3  _PWM8_WritePeriod
       03A3  PWM8_WritePeriod
       03A6  PWM8_WritePulseWidth
       03A6  _PWM8_WritePulseWidth
       03A9  PWM8_bReadPulseWidth
       03A9  _PWM8_bReadPulseWidth
       03A9  _bPWM8_ReadPulseWidth
       03A9  bPWM8_ReadPulseWidth
       03AC  _PWM8_bReadCounter
       03AC  PWM8_bReadCounter
       03AC  bPWM8_ReadCounter
       03AC  _bPWM8_ReadCounter
       03D9  LCD_PrCString
       03D9  _LCD_PrCString
       03EB  LCD_HEX_STR
       03FB  _LCD_PrHexByte
       03FB  LCD_PrHexByte
       040E  LCD_PrHexInt
       040E  _LCD_PrHexInt
       0415  _LCD_PrString
       0415  LCD_PrString
       0427  LCD_WriteData
       0427  _LCD_WriteData
       0427  LCD_Write_Data
       0427  _LCD_Write_Data
       043B  LCD_Control
       043B  _LCD_Control
       04EB  LCD_Init
       04EB  LCD_Start
       04EB  _LCD_Start
       04EB  _LCD_Init
       055A  LCD_ROW_OFFSET
       055E  LCD_Position
       055E  _LCD_Position
       056E  LCD_Delay50uTimes
       056E  _LCD_Delay50uTimes
       0574  LCD_Delay50u_Table
       057C  _LCD_Delay50u
       057C  LCD_Delay50u
       0590  _LCD_DrawBG
       05C1  _LCD_DrawVBG
       05F5  LCD_InitVBG
       05F5  _LCD_InitVBG
       0626  LCD_BG_TYPE1
       062D  LCD_BG_TYPE2
       0634  LCD_InitBG
       0634  _LCD_InitBG
       0668  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0668   06E8 =   1768. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0668  _main
       0668  __text_start
       07D0  _GPIOInterrupt
       0D50  __text_end
       0D57  __xidata_end

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
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _Port_2_Data_SHADE
       0000  NO_SHADOW
       0000  _NO_SHADOW
       0000  Port_2_Data_SHADE
       0001  Port_2_DriveMode_0_SHADE
       0001  _Port_2_DriveMode_0_SHADE
       0002  Port_2_DriveMode_1_SHADE
       0002  _Port_2_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0003   000B =     11. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rZ
       0004  __rY
       0005  __rX
       0006  __r7
       0007  __r6
       0008  __r5
       0009  __r4
       000A  __r3
       000B  __r2
       000C  __r1
       000D  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       000E  _increasing
       000F  _bPulseWidth

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ pwm8int.asm, pwm8.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r7.asm ]
[ r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm, fp2long_util.asm, fp_analysiseject_util.asm ]
[ fp_clrreg_util.asm, fp_nan_res_util.asm, fp_saveres_util.asm, fp_sendtoreg_util.asm, fp_sinf_res_util.asm ]
[ fp_szero_res_util.asm, fp_type_oprnd_util.asm, fp_unnormal_util.asm, fpadd_util.asm, fpcmp_util.asm ]
[ fpdiv_util.asm, fpmul_util.asm, fpsub_util.asm, i_div32_not_util.asm, i_mulu8_block_util.asm ]
[ long2fp_util.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Blab4b_RAM	allocated at: 0

