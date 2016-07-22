.data
	msg: .asciiz "Hi"
.text
	main:
		addi $s0, $zero, -10
	
		bgtz $s0, sayhi
	
		# End main
		li $v0, 10
		syscall
		
	sayhi:
		li $v0, 4
		la $a0, msg
		syscall