.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 11
	
	div $t0, $t1
	mflo $s0 	# Quotient
	mfhi $s1	# Remainder
	
	# Display
	li $v0, 1
	move $a0, $s0
	syscall
	move $a0, $s1
	syscall