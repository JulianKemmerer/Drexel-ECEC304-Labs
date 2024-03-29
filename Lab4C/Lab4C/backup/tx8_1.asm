;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TX8_1.asm
;;   Version: 3.50, Updated on 2010/9/19 at 23:41:7
;;  Generated by PSoC Designer 5.1.1875.0
;;
;;  DESCRIPTION: TX8 User Module software implementation file.
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

;-----------------------------------------------
; include instance specific register definitions
;-----------------------------------------------
include "m8c.inc"
include "memory.inc"
include "TX8_1.inc"

area UserModules (ROM, REL)
;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export   TX8_1_SetTxIntMode
export  _TX8_1_SetTxIntMode
export   TX8_1_EnableInt
export  _TX8_1_EnableInt
export   TX8_1_DisableInt
export  _TX8_1_DisableInt
export   TX8_1_Start
export  _TX8_1_Start
export   TX8_1_Stop
export  _TX8_1_Stop
export   TX8_1_SendData
export  _TX8_1_SendData
export   TX8_1_bReadTxStatus
export  _TX8_1_bReadTxStatus

// Old labels, will be removed in future release
// Do Not Use.
export   bTX8_1_ReadTxStatus
export  _bTX8_1_ReadTxStatus

;-----------------------------------------------
;  High Level TX functions
;-----------------------------------------------
export  TX8_1_PutSHexByte
export _TX8_1_PutSHexByte
export  TX8_1_PutSHexInt
export _TX8_1_PutSHexInt

export  TX8_1_CPutString
export _TX8_1_CPutString
export  TX8_1_PutString
export _TX8_1_PutString
export  TX8_1_PutChar
export _TX8_1_PutChar
export  TX8_1_Write
export _TX8_1_Write
export  TX8_1_CWrite
export _TX8_1_CWrite
export  TX8_1_PutCRLF
export _TX8_1_PutCRLF 

;-----------------------------------------------
;  EQUATES
;-----------------------------------------------
bfCONTROL_REG_START_BIT:   equ   1     ; Control register start bit
bfFUNCTION_REG_TX_INT_MODE_BIT:	equ 0x10	; the TX Int Mode bit

AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_EnableInt
;
;  DESCRIPTION:
;     Enables this Transmitter's interrupt by setting the interrupt enable mask
;     bit associated with this User Module. Remember to call the global interrupt
;     enable function by using the macro: M8C_EnableGInt.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: none
;
;  RETURNS: none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_EnableInt:
_TX8_1_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   M8C_EnableIntMask  TX8_1_INT_REG, TX8_1_bINT_MASK
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_DisableInt
;
;  DESCRIPTION:
;     Disables this TX8's interrupt by clearing the interrupt enable mask bit
;     associated with this User Module.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:  none
;
;  RETURNS:  none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_DisableInt:
_TX8_1_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   M8C_DisableIntMask TX8_1_INT_REG, TX8_1_bINT_MASK
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_SetTxIntMode(BYTE bTxIntMode)
;
;  DESCRIPTION:
;     Sets the Tx Interrupt Mode bit in the Function Register.
;
;  ARGUMENTS:
;     BYTE bTxIntMode - The TX Interrupt mode setting. Use defined masks.
;        Passed in the A register
;
;  RETURNS:
;     none.
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
;  THEORY of OPERATION OR PROCEDURE:
;     Sets the TX interrupt mode bit to define whether the interrupt occurs
;     on TX register empty or TX transmit complete
;
 TX8_1_SetTxIntMode:
_TX8_1_SetTxIntMode:
   RAM_PROLOGUE RAM_USE_CLASS_1
   M8C_SetBank1
   and   A, TX8_1_INT_MODE_TX_COMPLETE
   jz    .SetModeRegEmpty
   or    REG[TX8_1_FUNC_REG], bfFUNCTION_REG_TX_INT_MODE_BIT
   M8C_SetBank0
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.SetModeRegEmpty:
   and   REG[TX8_1_FUNC_REG], ~bfFUNCTION_REG_TX_INT_MODE_BIT
   M8C_SetBank0
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_Start(BYTE bParity)
;
;  DESCRIPTION:
;     Sets the start bit and parity in the Control register of this user module.
;     The transmitter will begin transmitting if a byte has been written into the
;     transmit buffer.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;    BYTE bParity - parity of transmitted data.  Use defined masks.
;
;  RETURNS:  none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_Start:
_TX8_1_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   or    A, bfCONTROL_REG_START_BIT
   mov   REG[TX8_1_CONTROL_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_Stop
;
;  DESCRIPTION:
;     Disables TX8 operation.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:  none
;
;  RETURNS:  none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_Stop:
_TX8_1_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   and   REG[TX8_1_CONTROL_REG], ~bfCONTROL_REG_START_BIT
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_SendData
;
;  DESCRIPTION:
;     Sends one byte through serial port.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;     BYTE  TxData - data to transmit.
;
;  RETURNS:
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_SendData:
_TX8_1_SendData:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov REG[TX8_1_TX_BUFFER_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_bReadTxStatus
;
;  DESCRIPTION:
;     Reads the Tx Status bits in the Control/Status register.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;
;  RETURNS:
;     BYTE  bTxStatus - transmit status data.  Use the following defined bits
;                       masks: TX_COMPLETE and TX_BUFFER_EMPTY
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_bReadTxStatus:
_TX8_1_bReadTxStatus:
 bTX8_1_ReadTxStatus:
_bTX8_1_ReadTxStatus:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov A,  REG[TX8_1_CONTROL_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION

;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_PutSHexByte
;
;  DESCRIPTION:
;     Print a byte in Hex (two characters) to the UART Tx
;
;  ARGUMENTS:
;     A  => (BYTE) Data/char to be printed
;
;  RETURNS:
;     none.
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
.LITERAL
TX8_1_HEX_STR:
     DS    "0123456789ABCDEF"
.ENDLITERAL

.SECTION
 TX8_1_PutSHexByte:
_TX8_1_PutSHexByte:
    RAM_PROLOGUE RAM_USE_CLASS_1
    push  A                            ; Save lower nibble
    asr   A                            ; Shift high nibble to right
    asr   A
    asr   A
    asr   A
    and   A,0Fh                        ; Mask off nibble
    index TX8_1_HEX_STR                ; Get Hex value
    call  TX8_1_PutChar                ; Write data to screen
    pop   A                            ; Restore value
    and   A,0Fh                        ; Mask off lower nibble
    index TX8_1_HEX_STR                ; Get Hex value
    call  TX8_1_PutChar                ; Write data to screen
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_PutSHexInt
;
;  DESCRIPTION:
;     Print an Int in Hex (four characters) to UART Tx
;
;  ARGUMENTS:
;     Pointer to string
;     A  => ASB of Int
;     X  => MSB of Int
;
;  RETURNS:
;     none.
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_PutSHexInt:
_TX8_1_PutSHexInt:
    RAM_PROLOGUE RAM_USE_CLASS_1
    swap  A,X
    call  TX8_1_PutSHexByte            ; Print MSB
    mov   A,X                          ; Move LSB into position
    call  TX8_1_PutSHexByte            ; Print LSB
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_PutChar
;
;  DESCRIPTION:
;     Send character out through UART TX port.
;
;
;  ARGUMENTS:
;     A has Character to send to UART Tx Port
;
;  RETURNS:
;     none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
   macro InLinePutChar( Source )
.BufEmptyWaitLoop:
   tst REG[TX8_1_CONTROL_REG], TX8_1_TX_BUFFER_EMPTY    ; Check Tx Status
   jz  .BufEmptyWaitLoop
   mov REG[TX8_1_TX_BUFFER_REG], @Source    ; Write data to Tx Port
   endm


 TX8_1_PutChar:
_TX8_1_PutChar:
   RAM_PROLOGUE RAM_USE_CLASS_1
   InLinePutChar A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


;-----------------------------------------------
;  High Level TX functions
;-----------------------------------------------


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_PutString
;
;  DESCRIPTION:
;     Send String out through UART TX port.
;
;
;  ARGUMENTS:
;     Pointer to String
;     A has MSB of string address
;     X has LSB of string address
;
;  RETURNS:
;     none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;          
;    Currently only the page pointer registers listed below are modified: 
;          IDX_PP
;
 TX8_1_PutString:
_TX8_1_PutString:
   RAM_PROLOGUE RAM_USE_CLASS_3
   RAM_SETPAGE_IDX A
.PutStringLoop:
   mov   A,[X]                             ; Get value pointed to by X
   jz    End_PutString                     ; Check for end of string
   call  TX8_1_PutChar                      ; Send character to Tx port
   inc   X                                 ; Advance pointer to next character
   jmp   .PutStringLoop                     ; Get next character

End_PutString:
   RAM_EPILOGUE RAM_USE_CLASS_3
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_Write
;
;  DESCRIPTION:
;     Send String of length X to serial port
;
;
;  ARGUMENTS:
;     Pointer to String
;     [SP-5] Count of characters to send
;     [SP-4] has MSB of string address
;     [SP-3] has LSB of string address
;
;  RETURNS:
;     none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;          
;    Currently only the page pointer registers listed below are modified: 
;          IDX_PP
;
CNT_LEN:    equ -5           ; Length of data to send
STR_MSB:    equ -4           ; MSB pointer of string
STR_LSB:    equ -3           ; LSB pointer of string

 TX8_1_Write:
_TX8_1_Write:
   RAM_PROLOGUE RAM_USE_CLASS_3
   RAM_SETPAGE_IDX2STK
   mov   X, SP

.NextByteLoop:
   mov   A,[X+CNT_LEN]                     ; Get length of string to send
   jz    .End_Write
   dec   [X+CNT_LEN]                       ; Decrement counter

   IF SYSTEM_LARGE_MEMORY_MODEL
   mov   A, [X+STR_MSB]                          ; Load pointer to char to send
   ENDIF

   mov   X,[X+STR_LSB]                     ; Get character to send
   RAM_SETPAGE_IDX A                        ; switch index pages
   mov   A,[X]
   InLinePutChar A                          ; Send character to UART
   mov   X, SP
   RAM_SETPAGE_IDX2STK
   inc   [X+STR_LSB]
   jmp   .NextByteLoop

.End_Write:
   RAM_EPILOGUE RAM_USE_CLASS_3
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_CWrite
;
;             WARNING WARNING NOT COMPLETE
;
;  DESCRIPTION:
;     Send String of length X to serial port
;
;  ARGUMENTS:
;     Pointer to String
;     [SP-6] MSB of Count of character to send
;     [SP-5] LSB of Count of character to send
;     [SP-4] has MSB of string address
;     [SP-3] has LSB of string address
;
;  RETURNS:
;     none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
CLEN_MSB:   equ -6           ; MSB Length of data to send
CLEN_LSB:   equ -5           ; LSB Length of data to send
CSTR_MSB:   equ -4           ; MSB pointer of string
CSTR_LSB:   equ -3           ; LSB pointer of string

 TX8_1_CWrite:
_TX8_1_CWrite:
   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X,SP

.CW_Loop:
                                             ; Check for zero counter
   cmp   [X+CLEN_MSB],0x00
   jnz   .CW_WRITEIT
   cmp   [X+CLEN_LSB],0x00
   jz    .End_CWrite                         ; Leave if done

.CW_WRITEIT:                                 ; Save pointers
   push  X
   mov   A,[X+CSTR_MSB]
   mov   X,[X+CSTR_LSB]
   romx                                     ; Get character from ROM
   InLinePutChar A
   pop   X

   add   [X+CSTR_LSB],1                     ; Increment the string pointer
   adc   [X+CSTR_MSB],0

                                            ; Dec the counter
   sub   [X+CLEN_LSB],0x01
   sbb   [X+CLEN_MSB],0x00

   jmp   .CW_Loop

.End_CWrite:
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_CPutString
;
;  DESCRIPTION:
;     Send String out through UART TX port.
;
;
;  ARGUMENTS:
;     Pointer to String
;     A has MSB of string address
;     X has LSB of string address
;
;  RETURNS:
;     none
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_CPutString:
_TX8_1_CPutString:
   RAM_PROLOGUE RAM_USE_CLASS_1   
   push  A                                       ; Store ROM pointer
   push  X
   romx                                          ; Get character from ROM
   jz    .End_CPutString
   call  TX8_1_PutChar                      ; Print character
   pop   X
   pop   A
   inc   X                                       ; Inc LSB of pointer
   jnc   TX8_1_CPutString                        ; Check for carry
   inc   A                                       ; Inc MSB of pointer
   jmp   TX8_1_CPutString


.End_CPutString:
   add   SP, -2
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX8_1_PutCRLF
;
;  DESCRIPTION:
;     Send a CR and LF
;
;  ARGUMENTS:
;     none.
;
;  RETURNS:
;     none.
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX8_1_PutCRLF:
_TX8_1_PutCRLF:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov  A,0x0D                        ; Send CR
   call TX8_1_PutChar
   mov  A,0x0A                        ; Send LF
   call TX8_1_PutChar
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

; End of File TX8_1.asm
