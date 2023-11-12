addi $s0, $0, 12 # int a = 12
addi $s1, $0, 23 # int b = 23
addi $s2, $0, 0 # int c = 0
addi $s3, $0, 0 # int d = 0

slt $t0, $s1, $s0 # if(a>b) $t0=1 else $t0 = 0
beq $t0, $0, else # if $t0 == 0 go to else
sll $s2, $s0, 1 # c=a*2
j exit

else: add $s3, $s0, $s1 # d=a+b
# else automatically goes to exit by itself (no need for j exit)
exit:
