//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bShadow =0;


void main(void)
{
M8C_EnableGInt; //Enable global interrupts
INT_MSK0 |=0b01000000;//Allow the sleep interrupt to be pending
INT_MSK3 |= 0b10000000;//Enable software interrupts

PRT1DR=0;


	
	while(1)
	{
	INT_CLR0 |= 0b01000000;//Post the sleep interrupt
	}
}
		
		
		
	#pragma interrupt_handler SleepTimerISR
	void SleepTimerISR(void)
	{
	bShadow++;
	PRT1DR=bShadow;
	}

