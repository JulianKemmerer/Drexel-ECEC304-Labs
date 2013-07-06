//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bShadow =0;

extern unsigned char bCount=0;
void main(void)
{
M8C_EnableGInt; //Enable global interrupts
INT_MSK0 |=0b01000000;//Allow the sleep interrupt to be pending


PRT1DR=0;


	
	while(1)
	{
	PRT1DR |= 0b00001111;
	bCount=255;
	while(bCount>0)
	{}
	PRT1DR &= 0b11110111;
	bCount=192;
	while(bCount>0)
	{}
	PRT1DR &=0b11111011;
	bCount=128;
	while(bCount>0)
	{}
	PRT1DR &= 0b11111101;
	bCount =64;
	while(bCount>0)
	{}
	PRT1DR &= 0b11111110;
	bCount =32;
while(bCount>0)
{}
}}
		
		
		
	

