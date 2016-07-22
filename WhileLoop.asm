.data
	msg: .asciiz " "
	msg2: .asciiz "\nEnd of loop"
.text

	main:
		addi $t0, $zero, 0 	# i = 0
		
	while:
		bgt $t0, 10, exit	# i <= 10
		
		jal print		# print i
		
		addi $t0, $t0, 1	# i++ OR i = i + 1
		
		j while
	
	exit:
		li $v0, 4
		la $a0, msg2
		syscall
	
		li $v0, 10
		syscall
	
	print:
		li $v0, 1
		move $a0, $t0
		syscall
		
		li $v0, 4
		la $a0, msg
		syscall
		
		jr $ra