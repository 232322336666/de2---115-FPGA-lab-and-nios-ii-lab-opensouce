.include "nios_macros.s"

.text
.equ status,0x00019010
.equ hex,0x00019000
.equ led_red,0x00019020
.equ led_green,0x00019030
.equ sw,0x00019040
.equ data,0x00009050

data_up:

    movia r17,0x00006000
    movia r18,0x40
    stw r18,0(r17)

    addi r17,r17,0x00000001
    movia r18,0x79
    stw r18,0(r17)    

    addi r17, r17,0x00000001
    movia r18,0x24
    stw r18,0(r17)   
        
    addi r17,r17,0x00000001
    movia r18,0x30
    stw r18,0(r17) 
        
    addi r17,r17,0x00000001
    movia r18,0x19
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x12
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x02
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x1f
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x00
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x18
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x08
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x03
    stw r18,0(r17)    
    
    addi r17,r17,0x00000001
    movia r18,0x46
    stw r18,0(r17)   

    addi r17,r17,0x00000001
    movia r18,0x21
    stw r18,0(r17)

    addi r17,r17,0x00000001
    movia r18,0x06
    stw r18,0(r17)
          
    addi r17,r17,0x00000001
    movia r18,0x0e
    stw r18,0(r17)
    br do_work

.global _start
_start: 
    movia r2,status
    movia r3,sw
    movia r4,led_green
    movia r5,led_red
    movia r6,hex

    mov r19,r0
    mov r10,r0
    mov r11,r0
    mov r12,r0

    call data_up
do_work:
    ldwio r7,0(r2)
    beq r7,r0,wait
    ldwio r8,0(r3)
    stwio r8,0(r4)

    add r10,r10,r8
    stwio r10,0(r5)
    call hex_show_h
wait: 
    ldwio r7,0(r2)
    beq r7,r0,wait
    br do_work

hex_show_h:
    subi sp,sp,0x0014
    stw ra,(sp)
    stw r12,4(sp)
    stw r11,8(sp)
    stw r2,12(sp)
    stw r10,16(sp)

    mov r16,r0
    andi r10,r10,0xffff 
    mov r11,r10
    andi r10,r11,0x000f 
   
    mov r19,r10
    addi r19,r19,0x00006000
    ldb r10,0(r19)
    
    mov r12,r10         

    andi r10,r11,0x00f0
    srli r10,r10,0x0004 
   
    mov r19,r10
    addi r19,r19,0x00006000
    ldb r10,0(r19)
    
    slli r10,r10,0x0008 
    or r12,r12,r10      

    andi r10,r11,0x0f00
    srli r10,r10,0x0008
    
    mov r19,r10
    addi r19,r19,0x00006000
    ldb r10,0(r19)
    
    slli r10,r10,0x0010
    or r12,r12,r10 

    andi r10,r11,0xf000
    srli r10,r10,0x000c
    
    mov r19,r10
    addi r19,r19,0x00006000
    ldb r10,0(r19)
    
    slli r10,r10,0x0018
    or r12,r12,r10

    stwio r12,0(r6)

    ldw ra,(sp)
    ldw r12,8(sp)
    ldw r11,12(sp)
    ldw r2,12(sp)
    ldw r10,16(sp)
    addi sp,sp,0x0014
    br do_work

END:
        br END
.end
