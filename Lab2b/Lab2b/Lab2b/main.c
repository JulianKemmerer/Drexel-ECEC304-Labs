//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bShadow =0;
void main(void)
{PRT1DR=0;
while(1)
{while((INT_CLR0 & 0x40)==0);
 INT_CLR0 = INT_CLR0 & ~0x40;
 bShadow++;
 PRT1DR=bShadow;
 }
	
}
