#$s0=array base address
lui  $s0, 0x1001 # $s0 = 0x23B80000
ori  $s0, $s0, 0x0000 # $s0 = 0x23B8F000
addi $s1, $0, 0 # a = 0
addi $t2, $0, 1000 # $t2 = 1000

loop:
  slt  $t0, $s1, $t2 # if a < 1000 $t0 = 1 else $t0 = 1
  beq  $t0, $0, done # if a >= 1000 end the for-loop
  sll  $t0, $s1, 2 # $t0 = a * 4 (byte offset, address
  add  $t0, $t0, $s0 # address of array[i]
  lw   $t1, 0($t0) # $t1 = array[a]
  sll  $t1, $t1, 1 # $t1 = array[a] * 2
  sw   $t1, 0($t0) # array[a] = array[a] * 2
  addi $s1, $s1, 2 # a = a + 2
  j    loop # go back to the for-loop check
  
done:
