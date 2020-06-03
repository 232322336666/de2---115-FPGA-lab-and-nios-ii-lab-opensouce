.include "nios_macros.s"

.text
.equ led_red,0X00019000
.equ led_green,0X00019010
.equ sw,0X00019020

.global _start
_start:
        movia r2,sw
        movia r3,led_green
        movia r4,led_red
        mov r7,r0
run:
        ldwio r5,0(r2)
        mov r6,r5
        stwio r6,0(r3)
        add r7,r7,r6
        stwio r7,0(r4)
        br run
END:
        br END
.end