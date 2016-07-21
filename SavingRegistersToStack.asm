.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		
		jal increase
		
		jal print_value
		
		# End of Main
		li $v0, 10
		syscall
	
	increase:
		# Saving $s0 value
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0, $s0, 30
		
		# Nested procedure
		jal print_value
		jal new_line
		
		# Restoring $s0 value
		lw $ra, 4($sp)
		lw $s0, 0($sp)
		addi $sp, $sp, 8
		
		# Return address
		jr $ra
		
	new_line:
		li $v0, 4
		la $a0, newLine
		syscall
		
		# Return address
		jr $ra
		
	print_value:
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra