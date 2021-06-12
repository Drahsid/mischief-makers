glabel func_8003D518
/* 3E118 8003D518 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E11C 8003D51C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3E120 8003D520 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E124 8003D524 AFA40020 */  sw         $a0, 0x20($sp)
/* 3E128 8003D528 AFA50024 */  sw         $a1, 0x24($sp)
/* 3E12C 8003D52C AFA60028 */  sw         $a2, 0x28($sp)
/* 3E130 8003D530 15C0000D */  bnez       $t6, .L8003D568
/* 3E134 8003D534 AFA7002C */   sw        $a3, 0x2c($sp)
/* 3E138 8003D538 24040010 */  addiu      $a0, $zero, 0x10
/* 3E13C 8003D53C 0C00A12E */  jal        func_800284B8
/* 3E140 8003D540 2405002D */   addiu     $a1, $zero, 0x2d
/* 3E144 8003D544 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3E148 8003D548 8FA50024 */  lw         $a1, 0x24($sp)
/* 3E14C 8003D54C 8FA60028 */  lw         $a2, 0x28($sp)
/* 3E150 8003D550 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3E154 8003D554 3044FFFF */  andi       $a0, $v0, 0xffff
/* 3E158 8003D558 0C00C3E5 */  jal        func_80030F94
/* 3E15C 8003D55C AFAF0010 */   sw        $t7, 0x10($sp)
/* 3E160 8003D560 1000000C */  b          .L8003D594
/* 3E164 8003D564 8FBF001C */   lw        $ra, 0x1c($sp)
.L8003D568:
/* 3E168 8003D568 24040090 */  addiu      $a0, $zero, 0x90
/* 3E16C 8003D56C 0C00A12E */  jal        func_800284B8
/* 3E170 8003D570 240500C0 */   addiu     $a1, $zero, 0xc0
/* 3E174 8003D574 8FB80030 */  lw         $t8, 0x30($sp)
/* 3E178 8003D578 8FA50024 */  lw         $a1, 0x24($sp)
/* 3E17C 8003D57C 8FA60028 */  lw         $a2, 0x28($sp)
/* 3E180 8003D580 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3E184 8003D584 3044FFFF */  andi       $a0, $v0, 0xffff
/* 3E188 8003D588 0C00C3E5 */  jal        func_80030F94
/* 3E18C 8003D58C AFB80010 */   sw        $t8, 0x10($sp)
/* 3E190 8003D590 8FBF001C */  lw         $ra, 0x1c($sp)
.L8003D594:
/* 3E194 8003D594 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E198 8003D598 03E00008 */  jr         $ra
/* 3E19C 8003D59C 00000000 */   nop
