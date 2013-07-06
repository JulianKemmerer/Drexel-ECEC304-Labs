Project:      output/Lab4a
Build Number: 0
Date:         Wed May 25 19:57:18 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 6% full. 1791 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 10 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0185 =    389. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01AC  LoadConfigTBL_lab4a_Bank0
       01FB  LoadConfigTBL_lab4a_Bank1
       0220  LoadConfigTBL_lab4a_Ordered
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
       0337  _LoadConfig_lab4a
       0337  LoadConfig_lab4a
       0392  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0392   028F =    655. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0392  _LCD_PrCString
       0392  LCD_PrCString
       03A4  LCD_HEX_STR
       03B4  LCD_PrHexByte
       03B4  _LCD_PrHexByte
       03C7  _LCD_PrHexInt
       03C7  LCD_PrHexInt
       03CE  _LCD_PrString
       03CE  LCD_PrString
       03E0  LCD_WriteData
       03E0  LCD_Write_Data
       03E0  _LCD_Write_Data
       03E0  _LCD_WriteData
       03F4  LCD_Control
       03F4  _LCD_Control
       04A4  LCD_Init
       04A4  LCD_Start
       04A4  _LCD_Init
       04A4  _LCD_Start
       0513  LCD_ROW_OFFSET
       0517  _LCD_Position
       0517  LCD_Position
       0527  LCD_Delay50uTimes
       0527  _LCD_Delay50uTimes
       052D  LCD_Delay50u_Table
       0535  _LCD_Delay50u
       0535  LCD_Delay50u
       0549  _LCD_DrawBG
       057A  _LCD_DrawVBG
       05AE  LCD_InitVBG
       05AE  _LCD_InitVBG
       05DF  LCD_BG_TYPE1
       05E6  LCD_BG_TYPE2
       05ED  _LCD_InitBG
       05ED  LCD_InitBG
       0621  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0621   027E =    638. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0621  _main
       0621  __text_start
       089F  __text_end
       08A1  __xidata_end

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
               virtual_registers   0003   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rZ
       0004  __rY
       0005  __rX
       0006  __r3
       0007  __r2
       0008  __r1
       0009  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm ]
[ divmod_16x16_16_util.asm, i_div16_block_util.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Blab4a_RAM

