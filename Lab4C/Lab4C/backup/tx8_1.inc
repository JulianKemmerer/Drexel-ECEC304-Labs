;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TX8_1.inc
;;   Version: 3.50, Updated on 2010/9/19 at 23:41:7
;;  Generated by PSoC Designer 5.1.1875.0
;;
;;  DESCRIPTION:  Assembler declarations for the TX8 user module.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"

;---------------------------------------------------
; Constants for TX8_1 API's
;---------------------------------------------------

;mask value for global int reg bit for TX instance
TX8_1_bINT_MASK:        equ 04h
;TX8 interrupt address
TX8_1_INT_REG:          equ 0e1h

; Old equate, will be removed in future release, Do not use.
bTX8_1_INT_MASK:        equ 04h


;------------------------------------
;  Transmitter Parity masks
;------------------------------------
TX8_1_PARITY_NONE:       equ   00h
TX8_1_PARITY_EVEN:       equ   02h
TX8_1_PARITY_ODD:        equ   06h

;------------------------------------
;  Transmitter Status Register masks
;------------------------------------
TX8_1_TX_COMPLETE:        equ   20h
TX8_1_TX_BUFFER_EMPTY:    equ   10h


TX8_1_INT_MODE_TX_REG_EMPTY:                 equ 0x00
TX8_1_INT_MODE_TX_COMPLETE:                  equ 0x01

; Do not use! old style equates.  Will be moved
; in future versions.
TX8_PARITY_NONE:           equ   00h
TX8_PARITY_EVEN:           equ   02h
TX8_PARITY_ODD:            equ   06h
TX8_TX_COMPLETE:           equ   20h
TX8_TX_BUFFER_EMPTY:       equ   10h

;----------------------------------------------------
;  Register Address Constants for TX8_1
;----------------------------------------------------
TX8_1_CONTROL_REG:  equ 2bh                      ; Control register
TX8_1_TX_SHIFT_REG: equ 28h                      ; TX Shift Register register
TX8_1_TX_BUFFER_REG:    equ 29h                  ; TX Buffer Register
TX8_1_FUNC_REG: equ 28h                          ; Function register
TX8_1_INPUT_REG:    equ 29h                      ; Input register
TX8_1_OUTPUT_REG:   equ 2ah                      ; Output register

; end of file TX8_1.inc
