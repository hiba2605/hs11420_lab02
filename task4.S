.text
main:
    li   x5, 3              # a = 3
    li   x6, 4              # b = 4
    li   x10, 0x200         # base address of D

    li   x7, 0              # i = 0

outer_loop:
    bge  x7, x5, exit       # if i >= a, exit

    li   x29, 0             # j = 0

inner_loop:
    bge  x29, x6, next_i    # if j >= b, go to i++

    add  x28, x7, x29       # x28 = i + j
    slli x27, x29, 4        # x27 = j * 16
    add  x27, x10, x27      # x27 = address of D[4*j]
    sw   x28, 0(x27)        # D[4*j] = i + j

    addi x29, x29, 1        # j++
    j    inner_loop

next_i:
    addi x7, x7, 1          # i++
    j    outer_loop

exit:
end:
    j    end