glabel func_800A5E90
/* A6A90 800A5E90 40086000 */  mfc0       $t0, $12
/* A6A94 800A5E94 2401FFFE */  addiu      $at, $zero, -2
/* A6A98 800A5E98 01014824 */  and        $t1, $t0, $at
/* A6A9C 800A5E9C 40896000 */  mtc0       $t1, $12
/* A6AA0 800A5EA0 31020001 */  andi       $v0, $t0, 1
/* A6AA4 800A5EA4 00000000 */  nop
/* A6AA8 800A5EA8 03E00008 */  jr         $ra
/* A6AAC 800A5EAC 00000000 */   nop
