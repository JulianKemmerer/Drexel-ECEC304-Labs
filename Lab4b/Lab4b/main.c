//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern char bPulseWidth = 0;
extern char increasing = 1;

void main(void)
{

//set up rising edge interrupts on P0[0]
//PRT0IC0 bit 0 = 0
//PRT0IC1 bit 0 = 1
PRT0IE |= 0b00000001; //Enable interrupts for P0[0]
PRT0IC0 &= ~0b00000001;
PRT0IC1 |= 0b00000001;

//Set up its drive mode to
  //PRT0DM0,1,2 
  PRT0DM0 &= ~0b00000001;
  PRT0DM1 &= ~0b00000001;
  PRT0DM2 &= ~0b00000001;


LCD_Start();
LCD_Init();
PWM8_Start();
INT_MSK0 |= 0b00100000;
M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	LCD_InitBG(LCD_SOLID_BG);
	
	while(1)
	{
		PWM8_WritePulseWidth(bPulseWidth);
		LCD_DrawBG(0, 0, 16,(bPulseWidth/255.0)*80);
	}
}

#pragma interrupt_handler GPIOInterrupt

void GPIOInterrupt()
{
	if(increasing ==1)
	{
		if(bPulseWidth + 5 >=255)
		{
			increasing = 0;
		}
		bPulseWidth +=5;
	}
	else
	{
		if(bPulseWidth - 5 <=0)
		{
			increasing = 1;
		}
		bPulseWidth -=5;
	}
}
