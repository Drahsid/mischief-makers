glabel func_80073320
/* 73F20 80073320 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73F24 80073324 000EC080 */  sll        $t8, $t6, 2
/* 73F28 80073328 030EC023 */  subu       $t8, $t8, $t6
/* 73F2C 8007332C 0018C080 */  sll        $t8, $t8, 2
/* 73F30 80073330 030EC021 */  addu       $t8, $t8, $t6
/* 73F34 80073334 0018C080 */  sll        $t8, $t8, 2
/* 73F38 80073338 030EC023 */  subu       $t8, $t8, $t6
/* 73F3C 8007333C 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 73F40 80073340 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 73F44 80073344 0018C0C0 */  sll        $t8, $t8, 3
/* 73F48 80073348 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73F4C 8007334C 03191021 */  addu       $v0, $t8, $t9
/* 73F50 80073350 84430184 */  lh         $v1, 0x184($v0)
/* 73F54 80073354 84480186 */  lh         $t0, 0x186($v0)
/* 73F58 80073358 AFBF002C */  sw         $ra, 0x2c($sp)
/* 73F5C 8007335C AFA40030 */  sw         $a0, 0x30($sp)
/* 73F60 80073360 240F0210 */  addiu      $t7, $zero, 0x210
/* 73F64 80073364 2469FFFC */  addiu      $t1, $v1, -4
/* 73F68 80073368 246A0004 */  addiu      $t2, $v1, 4
/* 73F6C 8007336C 250B0028 */  addiu      $t3, $t0, 0x28
/* 73F70 80073370 250CFFD8 */  addiu      $t4, $t0, -0x28
/* 73F74 80073374 01C02025 */  or         $a0, $t6, $zero
/* 73F78 80073378 AFAC0020 */  sw         $t4, 0x20($sp)
/* 73F7C 8007337C AFAB001C */  sw         $t3, 0x1c($sp)
/* 73F80 80073380 AFAA0018 */  sw         $t2, 0x18($sp)
/* 73F84 80073384 AFA90014 */  sw         $t1, 0x14($sp)
/* 73F88 80073388 AFAF0010 */  sw         $t7, 0x10($sp)
/* 73F8C 8007338C 24050090 */  addiu      $a1, $zero, 0x90
/* 73F90 80073390 24060070 */  addiu      $a2, $zero, 0x70
/* 73F94 80073394 0C01A4C3 */  jal        func_8006930C
/* 73F98 80073398 24070210 */   addiu     $a3, $zero, 0x210
/* 73F9C 8007339C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 73FA0 800733A0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 73FA4 800733A4 03E00008 */  jr         $ra
/* 73FA8 800733A8 00000000 */   nop
