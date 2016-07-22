.data
	msg: .asciiz "The numbers are different.\n"
	msg2: .asciiz "Nothing happened.\n"
.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		b equalnum
	
		# End program
		li $v0, 10
		syscall
	
	equalnum:
		li $v0, 4
		la $a0, msg
		syscall