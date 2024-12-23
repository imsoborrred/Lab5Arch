.data 
    array: .word 1,2,3,4,5,6,7,8,9

.text 

main:
    la s1,array
    jal sumarray
    j exit
    
    
sumarray:
    li t0, 5
    lw a2,0(s1)
    lw a3,4(s1)
    add t1,a2,a3
    add s0, s0, t1
    addi s1,s1,8
    addi t3,t3,1
    beq t3,t0,endprog
    j sumarray
    endprog:
    jr ra
    
exit:
    mv a1,s0
    li a0,1
    ecall