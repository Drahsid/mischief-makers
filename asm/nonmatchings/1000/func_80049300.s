glabel func_80049300
/* 49F00 80049300 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 49F04 80049304 AFA40028 */  sw         $a0, 0x28($sp)
/* 49F08 80049308 3087FFFF */  andi       $a3, $a0, 0xffff
/* 49F0C 8004930C 3C03800C */  lui        $v1, %hi(D_800BE514)
/* 49F10 80049310 3C048012 */  lui        $a0, %hi(D_801225F0)
/* 49F14 80049314 9463E514 */  lhu        $v1, %lo(D_800BE514)($v1)
/* 49F18 80049318 AFBF0014 */  sw         $ra, 0x14($sp)
/* 49F1C 8004931C 248425F0 */  addiu      $a0, $a0, %lo(D_801225F0)
/* 49F20 80049320 24020001 */  addiu      $v0, $zero, 1
/* 49F24 80049324 00027040 */  sll        $t6, $v0, 1
.L80049328:
/* 49F28 80049328 008E7821 */  addu       $t7, $a0, $t6
/* 49F2C 8004932C 95F80000 */  lhu        $t8, ($t7)
/* 49F30 80049330 24420001 */  addiu      $v0, $v0, 1
/* 49F34 80049334 0303C824 */  and        $t9, $t8, $v1
/* 49F38 80049338 13200005 */  beqz       $t9, .L80049350
/* 49F3C 8004933C 00024600 */   sll       $t0, $v0, 0x18
/* 49F40 80049340 00081603 */  sra        $v0, $t0, 0x18
/* 49F44 80049344 28410040 */  slti       $at, $v0, 0x40
/* 49F48 80049348 1420FFF7 */  bnez       $at, .L80049328
/* 49F4C 8004934C 00027040 */   sll       $t6, $v0, 1
.L80049350:
/* 49F50 80049350 00075080 */  sll        $t2, $a3, 2
/* 49F54 80049354 01475023 */  subu       $t2, $t2, $a3
/* 49F58 80049358 000A5080 */  sll        $t2, $t2, 2
/* 49F5C 8004935C 01475021 */  addu       $t2, $t2, $a3
/* 49F60 80049360 000A5080 */  sll        $t2, $t2, 2
/* 49F64 80049364 01475023 */  subu       $t2, $t2, $a3
/* 49F68 80049368 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 49F6C 8004936C 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 49F70 80049370 000A50C0 */  sll        $t2, $t2, 3
/* 49F74 80049374 014B3021 */  addu       $a2, $t2, $t3
/* 49F78 80049378 90C5012F */  lbu        $a1, 0x12f($a2)
/* 49F7C 8004937C 00001025 */  or         $v0, $zero, $zero
/* 49F80 80049380 18A00010 */  blez       $a1, .L800493C4
/* 49F84 80049384 3C088013 */   lui       $t0, 0x8013
/* 49F88 80049388 3C048012 */  lui        $a0, %hi(D_8011DD70)
/* 49F8C 8004938C 2484DD70 */  addiu      $a0, $a0, %lo(D_8011DD70)
/* 49F90 80049390 00026040 */  sll        $t4, $v0, 1
.L80049394:
/* 49F94 80049394 008C6821 */  addu       $t5, $a0, $t4
/* 49F98 80049398 95AE0000 */  lhu        $t6, ($t5)
/* 49F9C 8004939C 00000000 */  nop
/* 49FA0 800493A0 01C37824 */  and        $t7, $t6, $v1
/* 49FA4 800493A4 15E00007 */  bnez       $t7, .L800493C4
/* 49FA8 800493A8 00000000 */   nop
/* 49FAC 800493AC 24420001 */  addiu      $v0, $v0, 1
/* 49FB0 800493B0 0002C600 */  sll        $t8, $v0, 0x18
/* 49FB4 800493B4 00181603 */  sra        $v0, $t8, 0x18
/* 49FB8 800493B8 0045082A */  slt        $at, $v0, $a1
/* 49FBC 800493BC 1420FFF5 */  bnez       $at, .L80049394
/* 49FC0 800493C0 00026040 */   sll       $t4, $v0, 1
.L800493C4:
/* 49FC4 800493C4 950870CE */  lhu        $t0, 0x70ce($t0)
/* 49FC8 800493C8 00002025 */  or         $a0, $zero, $zero
/* 49FCC 800493CC 01034824 */  and        $t1, $t0, $v1
/* 49FD0 800493D0 15200005 */  bnez       $t1, .L800493E8
/* 49FD4 800493D4 00000000 */   nop
/* 49FD8 800493D8 14450003 */  bne        $v0, $a1, .L800493E8
/* 49FDC 800493DC 00000000 */   nop
/* 49FE0 800493E0 1000001B */  b          .L80049450
/* 49FE4 800493E4 00001025 */   or        $v0, $zero, $zero
.L800493E8:
/* 49FE8 800493E8 0C01230A */  jal        func_80048C28
/* 49FEC 800493EC AFA6001C */   sw        $a2, 0x1c($sp)
/* 49FF0 800493F0 8FA6001C */  lw         $a2, 0x1c($sp)
/* 49FF4 800493F4 3C010081 */  lui        $at, 0x81
/* 49FF8 800493F8 8CC30080 */  lw         $v1, 0x80($a2)
/* 49FFC 800493FC 304B00FF */  andi       $t3, $v0, 0xff
/* 4A000 80049400 00615024 */  and        $t2, $v1, $at
/* 4A004 80049404 11400006 */  beqz       $t2, .L80049420
/* 4A008 80049408 A0C20140 */   sb        $v0, 0x140($a2)
/* 4A00C 8004940C 24010006 */  addiu      $at, $zero, 6
/* 4A010 80049410 15610003 */  bne        $t3, $at, .L80049420
/* 4A014 80049414 240C0004 */   addiu     $t4, $zero, 4
/* 4A018 80049418 8CC30080 */  lw         $v1, 0x80($a2)
/* 4A01C 8004941C A0CC0140 */  sb         $t4, 0x140($a2)
.L80049420:
/* 4A020 80049420 8CC20098 */  lw         $v0, 0x98($a2)
/* 4A024 80049424 2401BFBF */  addiu      $at, $zero, -0x4041
/* 4A028 80049428 00616824 */  and        $t5, $v1, $at
/* 4A02C 8004942C 304E0001 */  andi       $t6, $v0, 1
/* 4A030 80049430 15C00006 */  bnez       $t6, .L8004944C
/* 4A034 80049434 ACCD0080 */   sw        $t5, 0x80($a2)
/* 4A038 80049438 304F0800 */  andi       $t7, $v0, 0x800
/* 4A03C 8004943C 11E00004 */  beqz       $t7, .L80049450
/* 4A040 80049440 24020002 */   addiu     $v0, $zero, 2
/* 4A044 80049444 10000002 */  b          .L80049450
/* 4A048 80049448 24020001 */   addiu     $v0, $zero, 1
.L8004944C:
/* 4A04C 8004944C 24020002 */  addiu      $v0, $zero, 2
.L80049450:
/* 4A050 80049450 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4A054 80049454 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4A058 80049458 03E00008 */  jr         $ra
/* 4A05C 8004945C 00000000 */   nop
