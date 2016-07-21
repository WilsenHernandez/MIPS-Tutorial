.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "\nYour age is "
.text
	# Print prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Get age
	li $v0, 5
	syscall
	
	# Store result in $t0
	move $t0, $v0
	
	# Display message
	li $v0, 4
	la $a0, message
	syscall
	
	# Display age
	li $v0, 1
	move $a0, $t0
	syscall