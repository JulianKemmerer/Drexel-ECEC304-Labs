;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: VR_ADCINT.asm
;;  Version: 1.1, Updated on 2010/9/19 at 23:39:0
;;
;;  DESCRIPTION: Assembler interrupt service routine for the ADCINC
;;               A/D Converter User Module. This code works for both the
;;               first and second-order modulator topologies.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2010. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "VR_ADC.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------

export _VR_ADC_ADConversion_ISR

export _VR_ADC_iResult
export  VR_ADC_iResult
export _VR_ADC_fStatus
export  VR_ADC_fStatus
export _VR_ADC_bState
export  VR_ADC_bState
export _VR_ADC_fMode
export  VR_ADC_fMode
export _VR_ADC_bNumSamples
export  VR_ADC_bNumSamples

;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------
AREA InterruptRAM(RAM,REL)
 VR_ADC_iResult:
_VR_ADC_iResult:                           BLK  2 ;Calculated answer
  iTemp:                                   BLK  2 ;internal temp storage
 VR_ADC_fStatus:
_VR_ADC_fStatus:                           BLK  1 ;ADC Status
 VR_ADC_bState:
_VR_ADC_bState:                            BLK  1 ;State value of ADC count
 VR_ADC_fMode:
_VR_ADC_fMode:                             BLK  1 ;Integrate and reset mode.
 VR_ADC_bNumSamples:
_VR_ADC_bNumSamples:                       BLK  1 ;Number of samples to take.

;-----------------------------------------------
;  EQUATES
;-----------------------------------------------

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)


AREA UserModules (ROM, REL)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _VR_ADC_ADConversion_ISR
;
;  DESCRIPTION: Perform final filter operations to produce output samples.
;
;-----------------------------------------------------------------------------
;
;    The decimation rate is established by the PWM interrupt. Four timer
;    clocks elapse for each modulator output (decimator input) since the
;    phi1/phi2 generator divides by 4. This means the timer period and thus
;    it's interrupt must equal 4 times the actual decimation rate.  The
;    decimator is ru  for 2^(#bits-6).
;
_VR_ADC_ADConversion_ISR:
    dec  [VR_ADC_bState]
if1:
    jc endif1 ; no underflow
    reti
endif1:
    cmp [VR_ADC_fMode],0
if2: 
    jnz endif2  ;leaving reset mode
    push A                            ;read decimator
    mov  A, reg[DEC_DL]
    mov  [iTemp + LowByte],A
    mov  A, reg[DEC_DH]
    mov  [iTemp + HighByte], A
    pop A
    mov [VR_ADC_fMode],1
    mov [VR_ADC_bState],((1<<(VR_ADC_bNUMBITS- 6))-1)
    reti
endif2:
    ;This code runs at end of integrate
    VR_ADC_RESET_INTEGRATOR_M
    push A
    mov  A, reg[DEC_DL]
    sub  A,[iTemp + LowByte]
    mov  [iTemp +LowByte],A
    mov  A, reg[DEC_DH]
    sbb  A,[iTemp + HighByte]

       ;check for overflow
IF     VR_ADC_8_OR_MORE_BITS
    cmp A,(1<<(VR_ADC_bNUMBITS - 8))
if3: 
    jnz endif3 ;overflow
    dec A
    mov [iTemp + LowByte],ffh
endif3:
ELSE
    cmp [iTemp + LowByte],(1<<(VR_ADC_bNUMBITS))
if4: 
    jnz endif4 ;overflow
    dec [iTemp + LowByte]
endif4:
ENDIF
IF VR_ADC_SIGNED_DATA
IF VR_ADC_9_OR_MORE_BITS
    sub A,(1<<(VR_ADC_bNUMBITS - 9))
ELSE
    sub [iTemp +LowByte],(1<<(VR_ADC_bNUMBITS - 1))
    sbb A,0
ENDIF
ENDIF
    mov  [VR_ADC_iResult + LowByte],[iTemp +LowByte]
    mov  [VR_ADC_iResult + HighByte],A
    mov  [VR_ADC_fStatus],1
ConversionReady:
    ;@PSoC_UserCode_BODY@ (Do not change this line.)
    ;---------------------------------------------------
    ; Insert your custom code below this banner
    ;---------------------------------------------------
    ;  Sample data is now in iResult
    ;
    ;  NOTE: This interrupt service routine has already
    ;  preserved the values of the A CPU register. If
    ;  you need to use the X register you must preserve
    ;  its value and restore it before the return from
    ;  interrupt.
    ;---------------------------------------------------
    ; Insert your custom code above this banner
    ;---------------------------------------------------
    ;@PSoC_UserCode_END@ (Do not change this line.)
    pop A
    cmp [VR_ADC_bNumSamples],0
if5: 
    jnz endif5 ; Number of samples is zero
    mov [VR_ADC_fMode],0
    mov [VR_ADC_bState],0
    VR_ADC_ENABLE_INTEGRATOR_M
    reti       
endif5:
    dec [VR_ADC_bNumSamples]
if6:
    jz endif6  ; count not zero
    mov [VR_ADC_fMode],0
    mov [VR_ADC_bState],0
    VR_ADC_ENABLE_INTEGRATOR_M
    reti       
endif6:
    ;All samples done
    M8C_SetBank1
    and reg[E7h], 3Fh            ; if we are in 29xxx or 24x94   
    or  reg[E7h], 80h            ; then set to incremental Mode
    M8C_SetBank0
    VR_ADC_STOPADC_M
 reti 
; end of file VR_ADCINT.asm
