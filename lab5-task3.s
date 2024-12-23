.data
    array: .word 9,5,3,1


.text

main:
    la s0,array
    
    jal bubble
    
    j end 
respoint:
    addi s0,s0,-12
    li a3,0
    addi a5,a5,1
    bge a5,a4,exit
bubble:
    
    lw a0,0(s0)
    lw a1,4(s0)
    
    blt a1,a0, lessthan
    j skip
    lessthan:
        sw a1,0(s0)
        sw a0,4(s0)
    skip:
    addi s0,s0,4
    addi a3,a3,1
    li a4,3
    beq a3,a4,respoint
    bne x0,a0, bubble
    exit:
    jr ra
    
end:

    ecall