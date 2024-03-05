
.data

.text
addi $t0,$zero,18
addi $t1,$zero,9
div $s0 ,$t0,$t1



#printing on screen
$li $v0 ,1
add $s0,$zero,$s0
syscall 

