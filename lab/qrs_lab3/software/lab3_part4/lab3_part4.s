.include "nios_macros.s"
.text
.global _start

.equ LIST_DATA, 0x00006000

_start:
    movia sp,SP_INIT
    movia r3,LIST_DATA
    movia r2,10
    stw r2,0(sp)
    stw r3,4(sp)    
    call BUBBLE
END:
    br END

BUBBLE:
    ldw r3,4(sp)
    ldw r2,0(sp)    
    movi r5,1
    mov r6,r2
INIT_LOOP:
    movi r7,0
LOOP:
    beq r6,r5,END_LOOP
    subi r6,r6,1
    br SWAP
END_LOOP:
    subi r2,r2,1
    mov r6,r2
    movia r3,LIST_DATA
    beq r7,r5,INIT_LOOP
    ret
SWAP:
    ldw r8,(r3)
    ldw r9,4(r3)
    blt r8,r9,CHANGE
END_SWAP:
    addi r3,r3,4
    br LOOP
CHANGE:
    stw r8,4(r3)
    stw r9,(r3)
    movi r7,1
    br END_SWAP
SP_INIT:.skip 200 
.end