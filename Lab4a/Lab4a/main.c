//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


/*void main(void)
{int i;
char str[]="go eagles";
LCD_Start();
LCD_Init();
while(1)
	{
	for(i=0;i<=7; i++)
		{while((INT_CLR0 & 0x40)== 0)
			{
			}
INT_CLR0= INT_CLR0 & ~0x40;
LCD_Position(0,i);
LCD_PrCString("go eagles");
LCD_Position(0,i-1);
LCD_PrCString(" ");

		}
for(i=0;i<=7; i++)
{while((INT_CLR0 & 0x40)== 0)
{
}
INT_CLR0= INT_CLR0 & ~0x40;
LCD_Position(1,i);
for(int j=9;j<=0;j--)
{LCD_PrString(str[j]);
}
//LCD_Position(1,i-1);
//LCD_PrCString(" ");
}
LCD_Init();
}


	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
}
*/
void main(void)
{
char str[] ="go eagles";
int pos =0;
int row=0;
int rowpos=0;
int length =9;
int i=0;

	while(1)
	{
		
		
		for (pos =0; pos<=31; pos++)
		{
			if(pos==0)
			{
				LCD_Position(1,15);
				LCD_PrCString(" ");
			}
		
		
			while((INT_CLR0 & 0x40)== 0){}
			INT_CLR0= INT_CLR0 & ~0x40;
			
			row =(pos-1)/16;
			rowpos =(pos-1) -(row*16);
			LCD_Position(row,rowpos);
			LCD_PrCString(" ");
			
			for (i=0; i<=length-1; i++)
			{
				row =(pos+i)/16;
				rowpos =(pos+i) -(row*16);
				
				if(row ==2)
				{
					LCD_Position(0,rowpos);
					LCD_PrString(&str[i]);
				}
				else
				{
					LCD_Position(row,rowpos);
					LCD_PrString(&str[i]);
				}
			}
		}
	}
}
