/*
 * oled.h
 *
 *  Created on: 2020-4-9
 *      Author: lenovo
 */

#ifndef OLED_H_
#define OLED_H_

#include <stdio.h>
#include "system.h" //系统头文件
#include "alt_types.h" //数据类型头文件
#include "altera_avalon_pio_regs.h"//pio 寄存器头文件

typedef		 signed          char	s8;
typedef		 signed short     int	s16;
typedef		 signed           int	s32;

typedef		 unsigned          char	u8;
typedef		 unsigned short     int	u16;
typedef		 unsigned           int	u32;

#define OLED_ADDRESS 0x78
#define SIZE 8
#define Max_Column	128

#define OLED_CMD  0
#define OLED_DATA 1

void delay_us(u16 time_us);
void delay_ms(u16 time_ms);
void I2C_WriteByte(u8 addr, u8 data);
void OLED_WR_Byte(u8 dat,u8 cmd,u8 type);
void OLED_Set_Pos(unsigned char x, unsigned char y);
void OLED_Display_On(void);
void OLED_Display_Off(void);
void OLED_Clear(void);
void OLED_ShowChar(u8 x, u8 y, u8 chr, u8 type);
u32 oled_pow(u8 m, u8 n);
void OLED_ShowNum(u8 x, u8 y, u32 num, u8 len, u8 size, u8 type);
void OLED_ShowString(u8 x, u8 y, u8 *chr, u8 type);
void OLED_ShowCHinese(u8 x, u8 y, u8 no, u8 type);
void OLED_DrawBMP(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1, unsigned char BMP[], u8 type);
void OLED_Init(void);
void show_pi_ten(int c[100],int i);

#endif /* OLED_H_ */

