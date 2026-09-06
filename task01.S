.text

main:
#listing 3
# assigning values

li x19, 10 # x19 contains the value 10
li x20, 5 # x20 contains the value 5
li x21, 20 # x21 contains the value 20
li x22,2 # x22 contains the value 2
li x23,4 # x23 contains the value 4

bne x22, x23, else
add x19, x20, x21
beq x0, x0, exit
else: sub x19, x20, x21
exit:
end:
    j end


