Project:      output/Lab2D
Build Number: 0
Date:         Wed May  4 19:38:28 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 2% full. 521 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 3 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0179 =    377. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_Lab2D_Bank0
       01EF  LoadConfigTBL_Lab2D_Bank1
       0214  LoadConfigTBL_Lab2D_Ordered
       0319  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0319   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0319  __func_lit_start
       031B  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   031B   0062 =     98. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       031B  LoadConfigInit
       031B  _LoadConfigInit
       0322  _LoadConfig_Lab2D
       0322  LoadConfig_Lab2D
       037D  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   037D   002C =     44. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       037D  _main
       037D  __text_start
       03A0  SleepTimerISR
       03A9  __text_end
       03AF  __xidata_end

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
               virtual_registers   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r1
       0001  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0002  _bShadow

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
./obj/sleeptimerroutines.o	[ sleeptimerroutines.asm ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0
-BLab2D_RAM

