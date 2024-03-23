
.data
# names: .space 16   # space of 16 bytes

n: .asciiz "hello\n"
m: .asciiz "hi\n"
l: .asciiz "lemon\n"
k: .asciiz "mera\n"
 


# another way of creating names array is 
names: .word n, m, l, k
# string array implementation
# creating an iterator that start from index zero
iterator: .word 0
# size for array 
size: .word 4  # Number of elements in the array

.text
# loading address of array and storing the elements
main:
    begin_loop:
    la $t0, names
    lw $t1, iterator
    lw $t2, size
    
    # slt $t1, $t2, exitloop
    bge $t1, $t2, exit_loop  # Check if iterator >= size
    
    sll $t3, $t1, 2  # t3 = 4 * i for incrementing
    addu $t3, $t3, $t0  # Calculate address of the i-th element
    
    li $v0, 4
    lw $a0, 0($t3)  # Load address of the string
    
    syscall  # Print the string
    
    # Incrementing the iterator
    addi $t1, $t1, 1
    sw $t1, iterator  # Store the updated iterator value
    
    j begin_loop

exit_loop:
    # End of the program


