.text

main:
li x10, 12
li, x22, 10
li x24, 4
li x25, 5
loop: slli x10, x22, 2 
    add x10, x10, x25
    lw x9, 0(x10) 
    bne x9, x24 exit
    addi x22, x22, 1
    beq x0, x0, loop
exit:
end:
    j end