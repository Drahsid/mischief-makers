glabel func_800A5CD4
/* A68D4 800A5CD4 27BDFFF8 */  addiu      $sp, $sp, -8
/* A68D8 800A5CD8 AFA40004 */  sw         $a0, 4($sp)
/* A68DC 800A5CDC 10C0000D */  beqz       $a2, .L800A5D14
/* A68E0 800A5CE0 AFA50000 */   sw        $a1, ($sp)
.L800A5CE4:
/* A68E4 800A5CE4 8FAE0000 */  lw         $t6, ($sp)
/* A68E8 800A5CE8 8FB80004 */  lw         $t8, 4($sp)
/* A68EC 800A5CEC 91CF0000 */  lbu        $t7, ($t6)
/* A68F0 800A5CF0 A30F0000 */  sb         $t7, ($t8)
/* A68F4 800A5CF4 8FB90004 */  lw         $t9, 4($sp)
/* A68F8 800A5CF8 8FA90000 */  lw         $t1, ($sp)
/* A68FC 800A5CFC 24C6FFFF */  addiu      $a2, $a2, -1
/* A6900 800A5D00 27280001 */  addiu      $t0, $t9, 1
/* A6904 800A5D04 252A0001 */  addiu      $t2, $t1, 1
/* A6908 800A5D08 AFAA0000 */  sw         $t2, ($sp)
/* A690C 800A5D0C 14C0FFF5 */  bnez       $a2, .L800A5CE4
/* A6910 800A5D10 AFA80004 */   sw        $t0, 4($sp)
.L800A5D14:
/* A6914 800A5D14 10000003 */  b          .L800A5D24
/* A6918 800A5D18 00801025 */   or        $v0, $a0, $zero
/* A691C 800A5D1C 10000001 */  b          .L800A5D24
/* A6920 800A5D20 00000000 */   nop
.L800A5D24:
/* A6924 800A5D24 03E00008 */  jr         $ra
/* A6928 800A5D28 27BD0008 */   addiu     $sp, $sp, 8
/* A692C 800A5D2C 00000000 */  nop
