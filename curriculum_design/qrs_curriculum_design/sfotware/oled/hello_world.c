/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h" //系统头文件
#include "alt_types.h" //数据类型头文件
#include "altera_avalon_pio_regs.h"//pio 寄存器头文件
#include "oled.h"

int main()
{
	int a=10000, b=0, c=400, d=0, e=0, f[401], g=0,num[100]={0},x=0;
	u8 i=0;
	u32 key0,key1;
	OLED_Init();
	OLED_ShowString(45,3, (u8 *)"Hello from Nios II!",1);
	delay_ms(100);
	while(1)
	{
		if(num[99]==0)
		{
		for(;b-c;)
		f[b++]=a/5;
		for(;d=0,g=c*2;c-=14,num[x]=e+d/a,printf("%.4d",num[x]),delay_ms(1),x++,e=d%a)
		for(b=c; d+=f[b]*a, f[b]=d%--g, d/=g--, --b; d*=b);
		}
		else
		{
			show_pi_ten(num,i);
			key0 = IORD_ALTERA_AVALON_PIO_DATA(KEY0_BASE);
			key1 = IORD_ALTERA_AVALON_PIO_DATA(KEY1_BASE);
			if(key0 == 0)
			{
				delay_ms(10);
				if(key0 == 0)
				{
					i++;
					if(i>=10)i = 10;
				}
			}
			if(key1 == 0)
			{
				delay_ms(10);
				if(key1 == 0)
				{
					i--;
					if(i<=0)i = 0;
				}
			}
		}
		delay_ms(5);
	}
  return 0;
}
