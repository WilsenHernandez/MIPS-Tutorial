.data
	var1: .word 5
	var2: .word -7
.text
	lw $t0, var1
	lw $t1, var2
	
	add $a0, $t0, $t1	# $a0 = $t0 + $t1
	
	li $v0, 1
	syscall