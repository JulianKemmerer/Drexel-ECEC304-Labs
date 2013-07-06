//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	/* With Debounce
	int bShadow, bTemp2, bTemp1, bTemp0, bSwitchOn;
	bShadow=0;
	bTemp1=0;
	bTemp2=0;
	bTemp0=0;
	bSwitchOn=0;
	PRT1DR=0;
	while(1)
	{
		bTemp2=bTemp1;	
		bTemp1=bTemp0;
		bTemp0= (PRT1DR & 0x01);
		
		if(bTemp0 == 0 && bTemp1 ==0 && bTemp2 ==0)
		{
		// yes
			bSwitchOn = 0;
		}
		else
		{
		//no
			if(bSwitchOn ==1)
			{
			//yes
				//do nothing
			}
			else
			{
			//no
				//Swtich just on
				bSwitchOn = 1;
				
				//Increment leds
				bShadow = bShadow + 2;
				PRT1DR = (bShadow & 0x1e);
			}
		}
	}//end while
	*/
	
	
	
	//Without Debounce
	unsigned char bShadow, bSwitch, bSwitchBefore;
	bShadow=0;
	bSwitchBefore=0;
	bSwitch = 0;
	PRT1DR=0;
	while(1)
	{
		//Pressed =1, not pressed = 0
		bSwitch = (PRT1DR & 0x01);
		
		if(bSwitchBefore == 0 && bSwitch ==1)
		{
			//Swtich just turned on
			
			//Increment leds
			bShadow = bShadow + 2;
			PRT1DR = (bShadow & 0x1e);
		}
		
		//record previous switch state
		bSwitchBefore = bSwitch;
	}//end while
	
}
