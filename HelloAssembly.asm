.data	# Variables
	myMessage: .asciiz "Hello World\n"
	
.text	# Instructions
	li $v0, 4
	la $a0, myMessage
	syscall