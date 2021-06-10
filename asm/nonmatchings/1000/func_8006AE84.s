glabel func_8006AE84
/* 6BA84 8006AE84 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6BA88 8006AE88 000E7880 */  sll        $t7, $t6, 2
/* 6BA8C 8006AE8C 01EE7823 */  subu       $t7, $t7, $t6
/* 6BA90 8006AE90 000F7880 */  sll        $t7, $t7, 2
/* 6BA94 8006AE94 01EE7821 */  addu       $t7, $t7, $t6
/* 6BA98 8006AE98 000F7880 */  sll        $t7, $t7, 2
/* 6BA9C 8006AE9C 01EE7823 */  subu       $t7, $t7, $t6
/* 6BAA0 8006AEA0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6BAA4 8006AEA4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6BAA8 8006AEA8 000F78C0 */  sll        $t7, $t7, 3
/* 6BAAC 8006AEAC 01F81021 */  addu       $v0, $t7, $t8
/* 6BAB0 8006AEB0 8C590080 */  lw         $t9, 0x80($v0)
/* 6BAB4 8006AEB4 2401FD7F */  addiu      $at, $zero, -0x281
/* 6BAB8 8006AEB8 03214024 */  and        $t0, $t9, $at
/* 6BABC 8006AEBC 3C010001 */  lui        $at, 1
/* 6BAC0 8006AEC0 01015025 */  or         $t2, $t0, $at
/* 6BAC4 8006AEC4 3C01FFFD */  lui        $at, 0xfffd
/* 6BAC8 8006AEC8 3421FFFF */  ori        $at, $at, 0xffff
/* 6BACC 8006AECC 8C4D0098 */  lw         $t5, 0x98($v0)
/* 6BAD0 8006AED0 01416024 */  and        $t4, $t2, $at
/* 6BAD4 8006AED4 8C4F0160 */  lw         $t7, 0x160($v0)
/* 6BAD8 8006AED8 AC480080 */  sw         $t0, 0x80($v0)
/* 6BADC 8006AEDC 2401FFBF */  addiu      $at, $zero, -0x41
/* 6BAE0 8006AEE0 AC4A0080 */  sw         $t2, 0x80($v0)
/* 6BAE4 8006AEE4 01A17024 */  and        $t6, $t5, $at
/* 6BAE8 8006AEE8 AFA40000 */  sw         $a0, ($sp)
/* 6BAEC 8006AEEC AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6BAF0 8006AEF0 AC4E0098 */  sw         $t6, 0x98($v0)
/* 6BAF4 8006AEF4 11E00005 */  beqz       $t7, .L8006AF0C
/* 6BAF8 8006AEF8 AC4C0080 */   sw        $t4, 0x80($v0)
/* 6BAFC 8006AEFC 3C18800E */  lui        $t8, %hi(D_800E1DA4)
/* 6BB00 8006AF00 27181DA4 */  addiu      $t8, $t8, %lo(D_800E1DA4)
/* 6BB04 8006AF04 10000004 */  b          .L8006AF18
/* 6BB08 8006AF08 AC5800E8 */   sw        $t8, 0xe8($v0)
.L8006AF0C:
/* 6BB0C 8006AF0C 3C19800E */  lui        $t9, %hi(D_800E1D8C)
/* 6BB10 8006AF10 27391D8C */  addiu      $t9, $t9, %lo(D_800E1D8C)
/* 6BB14 8006AF14 AC5900E8 */  sw         $t9, 0xe8($v0)
.L8006AF18:
/* 6BB18 8006AF18 944800D0 */  lhu        $t0, 0xd0($v0)
/* 6BB1C 8006AF1C 240A0001 */  addiu      $t2, $zero, 1
/* 6BB20 8006AF20 25090001 */  addiu      $t1, $t0, 1
/* 6BB24 8006AF24 A44900D0 */  sh         $t1, 0xd0($v0)
/* 6BB28 8006AF28 03E00008 */  jr         $ra
/* 6BB2C 8006AF2C A44A00E6 */   sh        $t2, 0xe6($v0)
