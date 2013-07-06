Project:      output/Lab3D
Build Number: 0
Date:         Wed May 18 19:45:59 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1348 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 6 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0185 =    389. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_Lab3D_Bank0
       01F5  LoadConfigTBL_Lab3D_Bank1
       0220  LoadConfigTBL_Lab3D_Ordered
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
       0327  LoadConfigInit
       0327  _LoadConfigInit
       0337  _LoadConfig_Lab3D
       0337  LoadConfig_Lab3D
       0392  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0392   02D6 =    726. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0392  _PWM8_1_ISR
       0393  PWM8_1_EnableInt
       0393  _PWM8_1_EnableInt
       0397  _PWM8_1_DisableInt
       0397  PWM8_1_DisableInt
       039B  _PWM8_1_Start
       039B  PWM8_1_Start
       039F  PWM8_1_Stop
       039F  _PWM8_1_Stop
       03A3  PWM8_1_WritePeriod
       03A3  _PWM8_1_WritePeriod
       03A6  _PWM8_1_WritePulseWidth
       03A6  PWM8_1_WritePulseWidth
       03A9  bPWM8_1_ReadPulseWidth
       03A9  PWM8_1_bReadPulseWidth
       03A9  _bPWM8_1_ReadPulseWidth
       03A9  _PWM8_1_bReadPulseWidth
       03AC  _PWM8_1_bReadCounter
       03AC  bPWM8_1_ReadCounter
       03AC  _bPWM8_1_ReadCounter
       03AC  PWM8_1_bReadCounter
       03D9  _LCD_1_PrCString
       03D9  LCD_1_PrCString
       03EB  LCD_1_HEX_STR
       03FB  _LCD_1_PrHexByte
       03FB  LCD_1_PrHexByte
       040E  LCD_1_PrHexInt
       040E  _LCD_1_PrHexInt
       0415  LCD_1_PrString
       0415  _LCD_1_PrString
       0427  _LCD_1_WriteData
       0427  _LCD_1_Write_Data
       0427  LCD_1_WriteData
       0427  LCD_1_Write_Data
       043B  LCD_1_Control
       043B  _LCD_1_Control
       04EB  LCD_1_Start
       04EB  _LCD_1_Init
       04EB  LCD_1_Init
       04EB  _LCD_1_Start
       055A  LCD_1_ROW_OFFSET
       055E  _LCD_1_Position
       055E  LCD_1_Position
       056E  LCD_1_Delay50uTimes
       056E  _LCD_1_Delay50uTimes
       0574  LCD_1_Delay50u_Table
       057C  _LCD_1_Delay50u
       057C  LCD_1_Delay50u
       0590  _LCD_1_DrawBG
       05C1  _LCD_1_DrawVBG
       05F5  _LCD_1_InitVBG
       05F5  LCD_1_InitVBG
       0626  LCD_1_BG_TYPE1
       062D  LCD_1_BG_TYPE2
       0634  _LCD_1_InitBG
       0634  LCD_1_InitBG
       0668  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0668   007C =    124. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0668  _main
       0668  __text_start
       06E4  __text_end
       06EA  __xidata_end

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
               virtual_registers   0003   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __r1
       0004  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0005  _bSwitchState

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-BLab3D_RAM	allocated at: 0

