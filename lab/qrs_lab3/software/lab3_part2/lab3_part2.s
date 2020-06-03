.include "nios_macros.s"
.text
.global _start

.equ LIST_DATA, 0x00006000

_start:
    movia r2,LIST_DATA
    addi r3,r2,4
    ldw r4,(r2)
BUBBLE:
    movi r5,1
    mov r6,r4
    movi r7,0
INIT_LOOP:
LOOP:
    beq r6,r5,END_LOOP
    subi r6,r6,1
    br SWAP
END_LOOP:
    subi r4,r4,1
    mov r6,r4
    addi r3,r2,4
    beq r7,r5,INIT_LOOP
END:
    br END
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
    movi r7,0x1
    br END_SWAP
.end