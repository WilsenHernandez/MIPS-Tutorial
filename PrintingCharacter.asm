.data
	myChar: .byte 'N'
.text
	li $v0, 4
	la $a0, myChar
	syscall