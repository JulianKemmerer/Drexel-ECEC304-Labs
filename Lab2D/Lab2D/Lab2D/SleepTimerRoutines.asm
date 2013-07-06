include "m8c.inc"
export SleepTimerISR

SleepTimerISR:
push A
inc [_bShadow]
mov A,[_bShadow]
mov reg[PRT1DR], A
pop A
reti