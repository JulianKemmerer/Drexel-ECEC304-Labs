//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bShadow =0;
void main(void)
{PRT1DR=0;
OSC_CR0 |= 0b00010000;
OSC_CR0 &= 0b11110111;
OSC_CR0 &= 0b11111101;
OSC_CR0 |= 0b00000101;
while(1)
{while((INT_CLR0 & 0x40)==0);
 INT_CLR0 = INT_CLR0 & ~0x40;
 bShadow++;
 PRT1DR=bShadow;
 }
	
}
