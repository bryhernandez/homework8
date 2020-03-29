.data
	#int age;
	age: .asciiz
	 
	prompt: .asciiz "Enter your age: "
	message1: .asciiz "\nYou are an adult"
	message2: .asciiz "\nYou are a minor"
.text
main:
	#printf("Enter your age: ");
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	 
	move $t0, $v0
	
	bge $t0, 18, adult
	
	ble $t0, 17, minor
	
	
#return 0;
li $v0, 10
syscall

#if (age >= 18) { 
adult:
	li $v0, 4
	la $a0, message1
	syscall
	
	#return 0;
	li $v0, 10
	syscall
	
minor:
	#else
	li $v0, 4
	la $a0, message2
	syscall
	
	#return 0;
	li $v0, 10
	syscall
