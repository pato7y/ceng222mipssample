.data 
X: .word 12,3,4,5,6,7,8,9,10
iterator: .word 0
size: .word 9
prompt: .asciiz "The total sum of the array is equal to: "
.text
main:
    la $a0, prompt  # Load address of the prompt
    li $v0, 4       # Print string syscall
    syscall
    
    la $t0, X       # Load address of the array
    lw $t1, iterator
    lw $t2, size
    
    li $s7, 0       # Initialize sum to 0
    
begin_loop:
    bge $t1, $t2, exit_loop 
    # Calculate the address of the current element
    # Calculate the offset (4 * iterator)
    sll $t3, $t1, 2          
    addu $t4, $t0, $t3       
    # Load the current element into $t5
    # Add the current element to the sum
    lw $t5, 0($t4)           
    addu $s7, $s7, $t5       
     # Increment iterator
    addi $t1, $t1, 1        
    j begin_loop

exit_loop:
    # Print the sum
    
    
    move $a0, $s7   
    li $v0, 1       
    syscall
    
 
    li $v0, 10      
    syscall
