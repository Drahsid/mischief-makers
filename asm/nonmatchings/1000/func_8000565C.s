glabel func_8000565C
/* 625C 8000565C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6260 80005660 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6264 80005664 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6268 80005668 AFB00018 */  sw         $s0, 0x18($sp)
/* 626C 8000566C 0C02917C */  jal        func_800A45F0
/* 6270 80005670 2484ADA0 */   addiu     $a0, $a0, %lo(D_8012ADA0)
/* 6274 80005674 3C0E800C */  lui        $t6, %hi(D_800C5008)
/* 6278 80005678 91CE5008 */  lbu        $t6, %lo(D_800C5008)($t6)
/* 627C 8000567C 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 6280 80005680 11C00012 */  beqz       $t6, .L800056CC
/* 6284 80005684 2484ADA0 */   addiu     $a0, $a0, %lo(D_8012ADA0)
/* 6288 80005688 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 628C 8000568C 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 6290 80005690 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 6294 80005694 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 6298 80005698 24050024 */  addiu      $a1, $zero, 0x24
/* 629C 8000569C 0C02919C */  jal        func_800A4670
/* 62A0 800056A0 24070032 */   addiu     $a3, $zero, 0x32
/* 62A4 800056A4 3C10800C */  lui        $s0, %hi(D_800C4F28)
/* 62A8 800056A8 26104F28 */  addiu      $s0, $s0, %lo(D_800C4F28)
/* 62AC 800056AC 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 62B0 800056B0 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 62B4 800056B4 02003025 */  or         $a2, $s0, $zero
/* 62B8 800056B8 2405002C */  addiu      $a1, $zero, 0x2c
/* 62BC 800056BC 0C02919C */  jal        func_800A4670
/* 62C0 800056C0 24070080 */   addiu     $a3, $zero, 0x80
/* 62C4 800056C4 1000000E */  b          .L80005700
/* 62C8 800056C8 00000000 */   nop
.L800056CC:
/* 62CC 800056CC 3C068017 */  lui        $a2, %hi(D_80171AE8)
/* 62D0 800056D0 24C61AE8 */  addiu      $a2, $a2, %lo(D_80171AE8)
/* 62D4 800056D4 2405000C */  addiu      $a1, $zero, 0xc
/* 62D8 800056D8 0C02919C */  jal        func_800A4670
/* 62DC 800056DC 24070032 */   addiu     $a3, $zero, 0x32
/* 62E0 800056E0 3C10800C */  lui        $s0, %hi(D_800C4F28)
/* 62E4 800056E4 26104F28 */  addiu      $s0, $s0, %lo(D_800C4F28)
/* 62E8 800056E8 3C048013 */  lui        $a0, %hi(D_8012ADA0)
/* 62EC 800056EC 2484ADA0 */  addiu      $a0, $a0, %lo(D_8012ADA0)
/* 62F0 800056F0 02003025 */  or         $a2, $s0, $zero
/* 62F4 800056F4 24050014 */  addiu      $a1, $zero, 0x14
/* 62F8 800056F8 0C02919C */  jal        func_800A4670
/* 62FC 800056FC 24070080 */   addiu     $a3, $zero, 0x80
.L80005700:
/* 6300 80005700 3C028017 */  lui        $v0, %hi(D_80171B19)
/* 6304 80005704 24421B19 */  addiu      $v0, $v0, %lo(D_80171B19)
/* 6308 80005708 904F0000 */  lbu        $t7, ($v0)
/* 630C 8000570C 00000000 */  nop
/* 6310 80005710 29E10002 */  slti       $at, $t7, 2
/* 6314 80005714 14200002 */  bnez       $at, .L80005720
/* 6318 80005718 00000000 */   nop
/* 631C 8000571C A0400000 */  sb         $zero, ($v0)
.L80005720:
/* 6320 80005720 0C0013C9 */  jal        func_80004F24
/* 6324 80005724 00000000 */   nop
/* 6328 80005728 00001025 */  or         $v0, $zero, $zero
/* 632C 8000572C 34058CA0 */  ori        $a1, $zero, 0x8ca0
/* 6330 80005730 34048CA1 */  ori        $a0, $zero, 0x8ca1
.L80005734:
/* 6334 80005734 0002C040 */  sll        $t8, $v0, 1
/* 6338 80005738 02181821 */  addu       $v1, $s0, $t8
/* 633C 8000573C 94790000 */  lhu        $t9, ($v1)
/* 6340 80005740 24420001 */  addiu      $v0, $v0, 1
/* 6344 80005744 0324082A */  slt        $at, $t9, $a0
/* 6348 80005748 14200002 */  bnez       $at, .L80005754
/* 634C 8000574C 3048FFFF */   andi      $t0, $v0, 0xffff
/* 6350 80005750 A4650000 */  sh         $a1, ($v1)
.L80005754:
/* 6354 80005754 29010040 */  slti       $at, $t0, 0x40
/* 6358 80005758 1420FFF6 */  bnez       $at, .L80005734
/* 635C 8000575C 01001025 */   or        $v0, $t0, $zero
/* 6360 80005760 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6364 80005764 8FB00018 */  lw         $s0, 0x18($sp)
/* 6368 80005768 03E00008 */  jr         $ra
/* 636C 8000576C 27BD0020 */   addiu     $sp, $sp, 0x20
