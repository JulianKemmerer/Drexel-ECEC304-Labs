;-----------------------------------------------------------------------------
; Assembly main line
;-----------------------------------------------------------------------------

include "m8c.inc"       ; part specific constants and macros
include "memory.inc"    ; Constants & macros for SMM/LMM and Compiler
include "PSoCAPI.inc"   ; PSoC API definitions for all User Modules

bshadow:       equ 40h
bTemp2:        equ 41h
bTemp1:        equ 42h
bTemp0:        equ 43h
bSwitchOn:     equ 44h

export _main
_main:
;Initialize
mov [bshadow],0
mov [bTemp2],0
mov [bTemp1],0
mov [bTemp0],0
mov [bSwitchOn],0
mov reg[PRT1DR],0

loop:
mov [bTemp2],[bTemp1]
mov [bTemp1],[bTemp0]

;reg[PRT1DR]stored in A
mov A, reg[PRT1DR]
;reg[PRT1DR] AND with 01h
AND A, 01h
;reg[PRT1DR] AND with 01h moved to bTemp0
mov [bTemp0],A

mov A, [bTemp0]
AND A, [bTemp1]
AND A, [bTemp2]

CMP A,0h
JNZ SWON ;Condition true - Zero flag = 0 - No jump
;code for switch off
mov [bSwitchOn],0h
jmp loop

SWON:
;code for switch on
CMP [bSwitchOn], 01h
JZ loop ;Condition true - Zero flag = 0 - Jump
;Swtich just on
mov [bSwitchOn],01h
;Increment LEDS
inc [bshadow]
inc [bshadow]
mov A,[bshadow]
and A,1Eh
mov reg[PRT1DR],A
jmp loop