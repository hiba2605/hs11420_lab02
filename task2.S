#listing 5
.text

main:
    li x20, 3   # x=3
    li x21, 4   # a=4
    li x22, 10  # b=10
    li x23, 12  # c=12
     #switch
    li x4, 1 
    beq x20, x4, case1
    
    li x4, 2 
    beq x20, x4, case2

    li x4, 3
    beq x20, x4, case3

    li x4, 4
    beq x20, x4,  case4
    beq x0, x0, default
    case1:
        add x21, x22, x23 
        beq x0, x0, end
    case2:
        sub x21, x22, x23 
        beq x0, x0,end
    case3:
        slli x21, x22, 1 
        beq x0, x0,end
    case4: 
        srai x21, x22, 1 
        beq x0, x0,end
    default:
    li x21, 0 # a =0
end:
j end


    