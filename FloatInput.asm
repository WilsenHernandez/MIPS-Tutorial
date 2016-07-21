.data
	message: .asciiz "Enter the value of Pi: "
	fzero: .float 0.0
.text
	lwc1 $f4, fzero
	
	# Display message
	li $v0, 4
	la $a0, message
	syscall
	
	# Read a float
	li $v0, 6
	syscall
	
	# Display value
	li $v0, 2
	add.s $f12, $f4, $f0
	syscall
	
	