/*
 * oled.c
 *
 *  Created on: 2020-4-9
 *      Author: lenovo
 */

#include "oled.h"
#include "oledfont.h"
#include "system.h" //ϵͳͷ�ļ�
#include "alt_types.h" //��������ͷ�ļ�
#include "altera_avalon_pio_regs.h"//pio �Ĵ���ͷ�ļ�

void delay_us(u16 time_us)
{
   u16 i=0;
   while(time_us--)
   {
      i=50;  //�Լ�����
      while(i--) ;
   }
}

void delay_ms(u16 time_ms)
{
   u16 i=0;
   while(time_ms--)
   {
      i=50000;  //�Լ�����
      while(i--) ;
   }
}
void I2C_WriteByte(u8 addr, u8 data)
{
	u32 iic_data;
	u32 go;
	iic_data = (OLED_ADDRESS<<16) + ((u32)addr<<8) + ((u32)data);
	go = 0;
	IOWR_ALTERA_AVALON_PIO_DATA(IIC_GO_BASE,go);
	delay_us(100);

	IOWR_ALTERA_AVALON_PIO_DATA(IIC_DATA_BASE,iic_data);

	go = 1;
	IOWR_ALTERA_AVALON_PIO_DATA(IIC_GO_BASE,go);
	delay_ms(1);
}
void OLED_WR_Byte(u8 dat, u8 cmd, u8 type)
{
    if(!type)
    {
        dat = ~dat;
    }
    if(cmd)
        I2C_WriteByte(0x40, dat);
    else
        I2C_WriteByte(0x00, dat);
}
void OLED_Set_Pos(unsigned char x, unsigned char y)
{
    OLED_WR_Byte(0xb0 + y, OLED_CMD, 1);
    OLED_WR_Byte(((x & 0xf0) >> 4) | 0x10, OLED_CMD, 1);
    OLED_WR_Byte((x & 0x0f) | 0x01, OLED_CMD, 1);
}
//������Ļ��ʾ
void OLED_Display_On(void)
{
    OLED_WR_Byte(0X8D, OLED_CMD, 1); //SET DCDC����
    OLED_WR_Byte(0X14, OLED_CMD, 1); //DCDC ON
    OLED_WR_Byte(0XAF, OLED_CMD, 1); //DISPLAY ON
}
//�ر�OLED��ʾ
void OLED_Display_Off(void)
{
    OLED_WR_Byte(0X8D, OLED_CMD, 1); //SET DCDC����
    OLED_WR_Byte(0X10, OLED_CMD, 1); //DCDC OFF
    OLED_WR_Byte(0XAE, OLED_CMD, 1); //DISPLAY OFF
}
//������������������������Ļ�Ǻ�ɫ�ĺ�û��һ����
void OLED_Clear(void)
{
    u8 i, n;
    for(i = 0; i < 8; i++)
    {
        OLED_WR_Byte (0xb0 + i, OLED_CMD, 1); //����ҳ��ַ
        OLED_WR_Byte (0x00, OLED_CMD, 1);    //������ʾλ��-�е͵�ַ��
        OLED_WR_Byte (0x10, OLED_CMD, 1);    //������ʾλ��-�и�λ�á�
        for(n = 0; n < 128; n++)OLED_WR_Byte(0, OLED_DATA, 1);
    } //������ʾ
}
//��ָ��λ����ʾһ���ַ������������ַ�
//x 0~127
//y 0~63
//mode��0��������ʾ��1��������ʾ
//size��ѡ������ 16/12
void OLED_ShowChar(u8 x, u8 y, u8 chr, u8 type)
{
    unsigned char c = 0, i = 0;
    c = chr - ' ';
    if(x > Max_Column - 1) {
        x = 0;
        y = y + 2;
    }
    if(SIZE == 16)
    {
        OLED_Set_Pos(x, y);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(F8X16[c * 16 + i], OLED_DATA, type);
        OLED_Set_Pos(x, y + 1);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(F8X16[c * 16 + i + 8], OLED_DATA, type);
    }
    else
    {
        OLED_Set_Pos(x, y + 1);
        for(i = 0; i < 6; i++)
            OLED_WR_Byte(F6x8[c][i], OLED_DATA, type);
    }
}
//m^n����
u32 oled_pow(u8 m, u8 n)
{
    u32 result = 1;
    while(n--)result *= m;
    return result;
}
//��ʾ2������
//x,y:�������
//len:���ֵ�λ��
//size������Ĵ�С
//mode:ģʽ 0�����ģʽ��1����ģʽ
//num:��ֵ��0~4294967295��
void OLED_ShowNum(u8 x, u8 y, u32 num, u8 len, u8 size, u8 type)
{
    u8 t, temp;
    u8 enshow = 0;
    for(t = 0; t < len; t++)
    {
        temp = (num / oled_pow(10, len - t - 1)) % 10;
        if(enshow == 0 && t < (len - 1))
        {
            if(temp == 0)
            {
                OLED_ShowChar(x + (size / 2)*t, y, ' ', type);
                continue;
            } else enshow = 1;

        }
        OLED_ShowChar(x + (size / 2)*t, y, temp + '0', type);
    }
}
//��ʾһ���ַ��Ŵ�
void OLED_ShowString(u8 x, u8 y, u8 *chr, u8 type)
{
    unsigned char j = 0;
    while (chr[j] != '\0')
    {
        if(!type)
            OLED_ShowChar(x, y, chr[j], 0);
        else
            OLED_ShowChar(x, y, chr[j], 1);
        x += 6;
        if(x > 122) {
            x = 0;
            y += 2;
        }
        j++;
    }
}
//��ʾ����
void OLED_ShowCHinese(u8 x, u8 y, u8 no, u8 type)
{
}
//��ʾBMPͼƬ
void OLED_DrawBMP(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1, unsigned char BMP[], u8 type)
{
    unsigned int j = 0;
    unsigned char x, y;

    if(y1 % 8 == 0) y = y1 / 8;
    else y = y1 / 8 + 1;
    for(y = y0; y < y1; y++)
    {
        OLED_Set_Pos(x0, y);
        for(x = x0; x < x1; x++)
        {
            OLED_WR_Byte(BMP[j++], OLED_DATA, type);
        }
    }
}
void OLED_Init(void)
{
    delay_ms(100);

	OLED_WR_Byte(0xAE, OLED_CMD, 1);
	OLED_WR_Byte(0x20, OLED_CMD, 1);
	OLED_WR_Byte(0x10, OLED_CMD, 1);
	OLED_WR_Byte(0xb0, OLED_CMD, 1);
	OLED_WR_Byte(0xc8, OLED_CMD, 1);
	OLED_WR_Byte(0x00, OLED_CMD, 1);
	OLED_WR_Byte(0x10, OLED_CMD, 1);
	OLED_WR_Byte(0x40, OLED_CMD, 1);
	OLED_WR_Byte(0x81, OLED_CMD, 1);
	OLED_WR_Byte(0xff, OLED_CMD, 1);
	OLED_WR_Byte(0xa1, OLED_CMD, 1);
	OLED_WR_Byte(0xa6, OLED_CMD, 1);
	OLED_WR_Byte(0xa8, OLED_CMD, 1);
	OLED_WR_Byte(0x3f, OLED_CMD, 1);
	OLED_WR_Byte(0xa4, OLED_CMD, 1);
	OLED_WR_Byte(0xd3, OLED_CMD, 1);
	OLED_WR_Byte(0x00, OLED_CMD, 1);
	OLED_WR_Byte(0xd5, OLED_CMD, 1);
	OLED_WR_Byte(0xf0, OLED_CMD, 1);
	OLED_WR_Byte(0xd9, OLED_CMD, 1);
	OLED_WR_Byte(0x22, OLED_CMD, 1);
	OLED_WR_Byte(0xda, OLED_CMD, 1);
	OLED_WR_Byte(0x12, OLED_CMD, 1);
	OLED_WR_Byte(0xdb, OLED_CMD, 1);
	OLED_WR_Byte(0x20, OLED_CMD, 1);
	OLED_WR_Byte(0x8d, OLED_CMD, 1);
	OLED_WR_Byte(0x14, OLED_CMD, 1);
	OLED_WR_Byte(0xaf, OLED_CMD, 1);

    OLED_Clear();
    OLED_Set_Pos(0,0);
}
void show_pi_ten(int c[100],int i)
{
	OLED_ShowNum(10,10,c[i],1,16,1);
	OLED_ShowNum(14,10,c[i+1],1,16,1);
	OLED_ShowNum(18,10,c[i+2],1,16,1);
	OLED_ShowNum(22,10,c[i+3],1,16,1);
	OLED_ShowNum(26,10,c[i+4],1,16,1);
	OLED_ShowNum(30,10,c[i+5],1,16,1);
	OLED_ShowNum(34,10,c[i+6],1,16,1);
	OLED_ShowNum(38,10,c[i+7],1,16,1);
	OLED_ShowNum(42,10,c[i+8],1,16,1);
	OLED_ShowNum(46,10,c[i+9],1,16,1);
}
