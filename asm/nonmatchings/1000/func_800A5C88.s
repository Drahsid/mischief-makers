glabel func_800A5C88
/* A6888 800A5C88 27BDFFF8 */  addiu      $sp, $sp, -8
/* A688C 800A5C8C AFA40004 */  sw         $a0, 4($sp)
/* A6890 800A5C90 8FAE0004 */  lw         $t6, 4($sp)
/* A6894 800A5C94 91CF0000 */  lbu        $t7, ($t6)
/* A6898 800A5C98 11E00007 */  beqz       $t7, .L800A5CB8
/* A689C 800A5C9C 00000000 */   nop
.L800A5CA0:
/* A68A0 800A5CA0 8FB80004 */  lw         $t8, 4($sp)
/* A68A4 800A5CA4 27190001 */  addiu      $t9, $t8, 1
/* A68A8 800A5CA8 AFB90004 */  sw         $t9, 4($sp)
/* A68AC 800A5CAC 93280000 */  lbu        $t0, ($t9)
/* A68B0 800A5CB0 1500FFFB */  bnez       $t0, .L800A5CA0
/* A68B4 800A5CB4 00000000 */   nop
.L800A5CB8:
/* A68B8 800A5CB8 8FA90004 */  lw         $t1, 4($sp)
/* A68BC 800A5CBC 10000003 */  b          .L800A5CCC
/* A68C0 800A5CC0 01241023 */   subu      $v0, $t1, $a0
/* A68C4 800A5CC4 10000001 */  b          .L800A5CCC
/* A68C8 800A5CC8 00000000 */   nop
.L800A5CCC:
/* A68CC 800A5CCC 03E00008 */  jr         $ra
/* A68D0 800A5CD0 27BD0008 */   addiu     $sp, $sp, 8
