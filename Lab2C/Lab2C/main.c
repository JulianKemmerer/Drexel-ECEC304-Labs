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
	//set port1[0:3] to strong
	PRT1DM0 |= 0b00001111;
	PRT1DM1 &= 0b11110000;
	PRT1DM2 &= 0b11110000;

	// change sleep timer frequency to 8Hz
	OSC_CR0 |= 0b00010000;
	OSC_CR0 &= 0b11110111;


	PRT1DR=0;
	INT_MSK0 |=0b01000000;
	while(1)
	{
	//puts system to sleep
	CPU_SCR0 |= 0x08;
	bShadow++;
	PRT1DR=bShadow;
	}
	
}
