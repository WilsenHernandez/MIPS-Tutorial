.data
	var1: .word 20
	var2: .word 8
.text
	lw $s0, var1	# $s0 = 20
	lw $s1, var2	# $s1 = 8
	
	sub $t0, $s0, $s1	# $t0 = 20 - 8
	
	li $v0, 1
	move $a0, $t0
	syscall