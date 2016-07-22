.data
	array: .space 12
.text
	main:
		addi $s0, $zero, 4
		addi $s1, $zero, 10
		addi $s2, $zero, 12
	
		# Index = $t0
		addi $t0, $zero, 0	# Index = 0
		sw $s0, array($t0)	# Array[0] = $s0
	
		addi $t0, $t0, 4	# Index++
		sw $s1, array($t0)	# Array[1] = $s1
	
		add $t0, $t0, 4		# Index++
		sw $s2, array($t0)	# Array[2] = $s2
		
		addi $t0, $zero, 0
	while:
		beq $t0, 12, exit
		lw $t1, array($t0)
		jal print
		addi $t0, $t0, 4
		
		j while		
		
	exit:
		li $v0, 10
		syscall
	
	print:
		li $v0, 1
		add $a0, $zero, $t1 
		syscall
		
		jr $ra