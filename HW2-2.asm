addi $s0, $0, 128 # int a = 128
addi $s1, $0, 0 # int b = 0
addi $t0, $0, 1 # value inside the while condition

while: beq $s0, $t0, done # checks if $s0 and $t0 is equal, if equal end loop
srl $s0, $s0, 1 # a=a/2
addi $s1, $s1, 1 # b = b+1
j while # go back to the while loop check

done: