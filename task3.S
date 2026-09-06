.text
#listing 6
main:
li   x10, 10             # x10 = 10

# First loop
li   x22, 0              # i = 0

loop1:
    bge  x22, x10, end1  # if i >= 10, exit
    slli x5, x22, 2      # x5 = i * 4
    addi x5, x5, 0x200   # x5 = address of a[i]
    sw   x22, 0(x5)      # a[i] = i
    addi x22, x22, 1     # i++
    j    loop1

end1:

# Second loop
li   x22, 0              # i = 0

loop2:
    bge  x22, x10, end2  # if i >= 10, exit
    slli x5, x22, 2      # x5 = i * 4
    addi x5, x5, 0x200   # x5 = address of a[i]
    lw   x6, 0(x5)       # x6 = a[i]
    add  x23, x23, x6    # sum = sum + a[i]
    addi x22, x22, 1     # i++
    j    loop2

end2: