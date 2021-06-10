glabel func_800B7A88
/* B8688 800B7A88 27BDFFF8 */  addiu      $sp, $sp, -8
/* B868C 800B7A8C 8C8E0008 */  lw         $t6, 8($a0)
/* B8690 800B7A90 8C8F0008 */  lw         $t7, 8($a0)
/* B8694 800B7A94 91C50000 */  lbu        $a1, ($t6)
/* B8698 800B7A98 25F80001 */  addiu      $t8, $t7, 1
/* B869C 800B7A9C AC980008 */  sw         $t8, 8($a0)
/* B86A0 800B7AA0 10000003 */  b          .L800B7AB0
/* B86A4 800B7AA4 00A01025 */   or        $v0, $a1, $zero
/* B86A8 800B7AA8 10000001 */  b          .L800B7AB0
/* B86AC 800B7AAC 00000000 */   nop
.L800B7AB0:
/* B86B0 800B7AB0 03E00008 */  jr         $ra
/* B86B4 800B7AB4 27BD0008 */   addiu     $sp, $sp, 8
