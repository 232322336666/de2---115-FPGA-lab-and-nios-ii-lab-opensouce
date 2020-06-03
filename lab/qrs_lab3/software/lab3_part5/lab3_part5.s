.text
.global _start

_start:
    movi r4,5
    movia sp,INIT
    movi r8,2
    call FACTORIAL
    END: br END
FACTORIAL:
    stw ra,(sp)
    stw r4,4(sp)
    addi sp,sp,8
    bne r4,r0,PLUS
    movia r5,1
RETURN:
    subi sp,sp,8
    ldw ra,(sp)
    ldw r4,4(sp)
    ret
PLUS:
    subi r4,r4,1
    call FACTORIAL
    addi r4,r4,1
    mul r5,r4,r5
    br RETURN
INIT:.skip 400
.end
