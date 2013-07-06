//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern char bSwitchState=0;
void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	PWM8_1_Start();
	LCD_1_Start();
	LCD_1_Init();
	LCD_1_Position(0,0);
	LCD_1_PrHexByte(PWM8_1_PULSE_WIDTH);
	while(1)
	{
		while((INT_CLR0 & 0x40)==0)//wait till set
		{
		}
		INT_CLR0 &= ~0x40;//Clear
		
		
		bSwitchState<<=1;
		bSwitchState&=0x70;
		bSwitchState|=(PRT1DR &0x08);
		
		if(bSwitchState==0x38)
		{
			PWM8_1_WritePulseWidth((PWM8_1_bReadPulseWidth()+ 1));
			LCD_1_Position(0,0);
			LCD_1_PrHexByte(PWM8_1_bReadPulseWidth());
		}
	}
}
