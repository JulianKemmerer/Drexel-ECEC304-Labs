Project:      output/Lab1C
Build Number: 0
Date:         Wed Apr 20 18:54:25 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 2% full. 534 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 2 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0179 =    377. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab1c_Bank0
       01EF  LoadConfigTBL_lab1c_Bank1
       0214  LoadConfigTBL_lab1c_Ordered
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
       031B  _LoadConfigInit
       031B  LoadConfigInit
       0322  _LoadConfig_lab1c
       0322  LoadConfig_lab1c
       037D  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   037D   0039 =     57. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       037D  _main
       037D  __text_start
       03B6  __text_end
       03B8  __xidata_end

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

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0
-Blab1c_RAM

