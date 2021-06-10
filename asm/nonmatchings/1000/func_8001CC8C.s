glabel func_8001CC8C
/* 1D88C 8001CC8C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D890 8001CC90 AFB00018 */  sw         $s0, 0x18($sp)
/* 1D894 8001CC94 3C108010 */  lui        $s0, %hi(D_800FA8E6)
/* 1D898 8001CC98 AFB40028 */  sw         $s4, 0x28($sp)
/* 1D89C 8001CC9C AFB30024 */  sw         $s3, 0x24($sp)
/* 1D8A0 8001CCA0 AFB20020 */  sw         $s2, 0x20($sp)
/* 1D8A4 8001CCA4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1D8A8 8001CCA8 9610A8E6 */  lhu        $s0, %lo(D_800FA8E6)($s0)
/* 1D8AC 8001CCAC AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D8B0 8001CCB0 00008825 */  or         $s1, $zero, $zero
/* 1D8B4 8001CCB4 27B2003A */  addiu      $s2, $sp, 0x3a
/* 1D8B8 8001CCB8 27B30038 */  addiu      $s3, $sp, 0x38
/* 1D8BC 8001CCBC 27B40036 */  addiu      $s4, $sp, 0x36
.L8001CCC0:
/* 1D8C0 8001CCC0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1D8C4 8001CCC4 02402825 */  or         $a1, $s2, $zero
/* 1D8C8 8001CCC8 02603025 */  or         $a2, $s3, $zero
/* 1D8CC 8001CCCC 0C006C1E */  jal        func_8001B078
/* 1D8D0 8001CCD0 02803825 */   or        $a3, $s4, $zero
/* 1D8D4 8001CCD4 97AE003A */  lhu        $t6, 0x3a($sp)
/* 1D8D8 8001CCD8 26310001 */  addiu      $s1, $s1, 1
/* 1D8DC 8001CCDC 29C10006 */  slti       $at, $t6, 6
/* 1D8E0 8001CCE0 14200004 */  bnez       $at, .L8001CCF4
/* 1D8E4 8001CCE4 3239FFFF */   andi      $t9, $s1, 0xffff
/* 1D8E8 8001CCE8 26100001 */  addiu      $s0, $s0, 1
/* 1D8EC 8001CCEC 320FFFFF */  andi       $t7, $s0, 0xffff
/* 1D8F0 8001CCF0 01E08025 */  or         $s0, $t7, $zero
.L8001CCF4:
/* 1D8F4 8001CCF4 26100001 */  addiu      $s0, $s0, 1
/* 1D8F8 8001CCF8 2B210006 */  slti       $at, $t9, 6
/* 1D8FC 8001CCFC 3218FFFF */  andi       $t8, $s0, 0xffff
/* 1D900 8001CD00 03208825 */  or         $s1, $t9, $zero
/* 1D904 8001CD04 1420FFEE */  bnez       $at, .L8001CCC0
/* 1D908 8001CD08 03008025 */   or        $s0, $t8, $zero
/* 1D90C 8001CD0C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D910 8001CD10 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D914 8001CD14 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1D918 8001CD18 8FB20020 */  lw         $s2, 0x20($sp)
/* 1D91C 8001CD1C 8FB30024 */  lw         $s3, 0x24($sp)
/* 1D920 8001CD20 8FB40028 */  lw         $s4, 0x28($sp)
/* 1D924 8001CD24 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1D928 8001CD28 03E00008 */  jr         $ra
/* 1D92C 8001CD2C 03001025 */   or        $v0, $t8, $zero
