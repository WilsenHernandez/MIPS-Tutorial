.data

.text
	main:
		addi $a0, $zero, 50
		addi $a1, $zero, 100
		
		jal addNumbers	
		
		li $v0, 1
		move $a0, $v1
		syscall
		
		# End Main
		li $v0, 10
		syscall
	
	addNumbers:
		add $v1, $a0, $a1
		
		jr $ra