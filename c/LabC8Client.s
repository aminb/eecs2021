        .text
main:   sw      $ra, 0($sp)
        addi    $sp, $sp, -4
        addi    $v0, $0, 5 
        syscall
        add     $a0, $v0, $0 # copy input in a0
        jal     printVertical  # printVertical(a0)
        addi    $sp, $sp, 4
        lw      $ra, 0($sp)
        jr      $ra
