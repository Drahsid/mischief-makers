glabel func_8009EC34
/* 9F834 8009EC34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F838 8009EC38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F83C 8009EC3C AFA40020 */  sw         $a0, 0x20($sp)
/* 9F840 8009EC40 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9F844 8009EC44 8DCF0014 */  lw         $t7, 0x14($t6)
/* 9F848 8009EC48 11E0000D */  beqz       $t7, .L8009EC80
/* 9F84C 8009EC4C AFAF001C */   sw        $t7, 0x1c($sp)
.L8009EC50:
/* 9F850 8009EC50 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9F854 8009EC54 AFB80018 */  sw         $t8, 0x18($sp)
/* 9F858 8009EC58 0C026EBB */  jal        func_8009BAEC
/* 9F85C 8009EC5C 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9F860 8009EC60 8FA50020 */  lw         $a1, 0x20($sp)
/* 9F864 8009EC64 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9F868 8009EC68 0C026EAE */  jal        func_8009BAB8
/* 9F86C 8009EC6C 24A50004 */   addiu     $a1, $a1, 4
/* 9F870 8009EC70 8FB90020 */  lw         $t9, 0x20($sp)
/* 9F874 8009EC74 8F280014 */  lw         $t0, 0x14($t9)
/* 9F878 8009EC78 1500FFF5 */  bnez       $t0, .L8009EC50
/* 9F87C 8009EC7C AFA8001C */   sw        $t0, 0x1c($sp)
.L8009EC80:
/* 9F880 8009EC80 10000001 */  b          .L8009EC88
/* 9F884 8009EC84 00000000 */   nop
.L8009EC88:
/* 9F888 8009EC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F88C 8009EC8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9F890 8009EC90 03E00008 */  jr         $ra
/* 9F894 8009EC94 00000000 */   nop
