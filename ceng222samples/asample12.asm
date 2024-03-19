
.data
one: .asciiz "it is training for mips assembly\n"
second: .asciiz "selam\n"
ala: .asciiz "\n"
number: .word 39    

.text
main:
    # Print integer
    li $v0, 1         
    lw $a0, number    
    syscall           

    # Print new line
    li $v0, 4         
    la $a0, ala       
    syscall           

    # Print string "second"
    li $v0, 4         
    la $a0, second
    syscall           
    # Print string "one"
    la $a0, one       
    syscall           
    # Exit program
    li $v0, 10        
    syscall

