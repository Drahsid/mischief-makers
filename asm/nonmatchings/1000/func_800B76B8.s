glabel func_800B76B8
/* B82B8 800B76B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B82BC 800B76BC AFBF0014 */  sw         $ra, 0x14($sp)
/* B82C0 800B76C0 AFA40020 */  sw         $a0, 0x20($sp)
/* B82C4 800B76C4 AFA50024 */  sw         $a1, 0x24($sp)
/* B82C8 800B76C8 8FAE0020 */  lw         $t6, 0x20($sp)
/* B82CC 800B76CC 8DD80000 */  lw         $t8, ($t6)
/* B82D0 800B76D0 8DD90010 */  lw         $t9, 0x10($t6)
/* B82D4 800B76D4 8DCF0008 */  lw         $t7, 8($t6)
/* B82D8 800B76D8 03194021 */  addu       $t0, $t8, $t9
/* B82DC 800B76DC 01E8082B */  sltu       $at, $t7, $t0
/* B82E0 800B76E0 14200003 */  bnez       $at, .L800B76F0
/* B82E4 800B76E4 00000000 */   nop
/* B82E8 800B76E8 1000000F */  b          .L800B7728
/* B82EC 800B76EC 00001025 */   or        $v0, $zero, $zero
.L800B76F0:
/* B82F0 800B76F0 8FA90020 */  lw         $t1, 0x20($sp)
/* B82F4 800B76F4 8D2A0008 */  lw         $t2, 8($t1)
/* B82F8 800B76F8 AFAA001C */  sw         $t2, 0x1c($sp)
/* B82FC 800B76FC 0C02DEEC */  jal        func_800B7BB0
/* B8300 800B7700 8FA40020 */   lw        $a0, 0x20($sp)
/* B8304 800B7704 8FAB0024 */  lw         $t3, 0x24($sp)
/* B8308 800B7708 AD620000 */  sw         $v0, ($t3)
/* B830C 800B770C 8FAC001C */  lw         $t4, 0x1c($sp)
/* B8310 800B7710 8FAD0020 */  lw         $t5, 0x20($sp)
/* B8314 800B7714 ADAC0008 */  sw         $t4, 8($t5)
/* B8318 800B7718 10000003 */  b          .L800B7728
/* B831C 800B771C 24020001 */   addiu     $v0, $zero, 1
/* B8320 800B7720 10000001 */  b          .L800B7728
/* B8324 800B7724 00000000 */   nop
.L800B7728:
/* B8328 800B7728 8FBF0014 */  lw         $ra, 0x14($sp)
/* B832C 800B772C 27BD0020 */  addiu      $sp, $sp, 0x20
/* B8330 800B7730 03E00008 */  jr         $ra
/* B8334 800B7734 00000000 */   nop
