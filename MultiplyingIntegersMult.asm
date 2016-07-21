.data

.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	mult $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	# Display content on screen
	li $v0, 1
	move $a0, $s1
	syscall
	move $a0, $s0
	syscall