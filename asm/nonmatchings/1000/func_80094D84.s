glabel func_80094D84
/* 95984 80094D84 308EFFFF */  andi       $t6, $a0, 0xffff
/* 95988 80094D88 000E7880 */  sll        $t7, $t6, 2
/* 9598C 80094D8C 01EE7823 */  subu       $t7, $t7, $t6
/* 95990 80094D90 000F7880 */  sll        $t7, $t7, 2
/* 95994 80094D94 01EE7821 */  addu       $t7, $t7, $t6
/* 95998 80094D98 000F7880 */  sll        $t7, $t7, 2
/* 9599C 80094D9C 01EE7823 */  subu       $t7, $t7, $t6
/* 959A0 80094DA0 3C18800F */  lui        $t8, %hi(gActors)
/* 959A4 80094DA4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 959A8 80094DA8 000F78C0 */  sll        $t7, $t7, 3
/* 959AC 80094DAC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 959B0 80094DB0 01F81021 */  addu       $v0, $t7, $t8
/* 959B4 80094DB4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 959B8 80094DB8 97A8002E */  lhu        $t0, 0x2e($sp)
/* 959BC 80094DBC 8C431170 */  lw         $v1, 0x1170($v0)
/* 959C0 80094DC0 8C491308 */  lw         $t1, 0x1308($v0)
/* 959C4 80094DC4 00683823 */  subu       $a3, $v1, $t0
/* 959C8 80094DC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 959CC 80094DCC AFA40028 */  sw         $a0, 0x28($sp)
/* 959D0 80094DD0 0007CC00 */  sll        $t9, $a3, 0x10
/* 959D4 80094DD4 00685821 */  addu       $t3, $v1, $t0
/* 959D8 80094DD8 252C0028 */  addiu      $t4, $t1, 0x28
/* 959DC 80094DDC 252DFFD8 */  addiu      $t5, $t1, -0x28
/* 959E0 80094DE0 01C02025 */  or         $a0, $t6, $zero
/* 959E4 80094DE4 AFAD0018 */  sw         $t5, 0x18($sp)
/* 959E8 80094DE8 AFAC0014 */  sw         $t4, 0x14($sp)
/* 959EC 80094DEC AFAB0010 */  sw         $t3, 0x10($sp)
/* 959F0 80094DF0 00193C03 */  sra        $a3, $t9, 0x10
/* 959F4 80094DF4 24050140 */  addiu      $a1, $zero, 0x140
/* 959F8 80094DF8 0C0239E4 */  jal        func_8008E790
/* 959FC 80094DFC 24060120 */   addiu     $a2, $zero, 0x120
/* 95A00 80094E00 8FBF0024 */  lw         $ra, 0x24($sp)
/* 95A04 80094E04 27BD0028 */  addiu      $sp, $sp, 0x28
/* 95A08 80094E08 03E00008 */  jr         $ra
/* 95A0C 80094E0C 00000000 */   nop
