//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bShadow =0;


void main(void)
{
// enabling global interrupt
M8C_EnableGInt;
	PRT1DR=0;
	INT_MSK0 |=0b01000000;
	while(1)
	{
		}
		}
	#pragma interrupt_handler SleepTimerISR
	void SleepTimerISR(void)
	{bShadow++;
	PRT1DR=bShadow;
	}

