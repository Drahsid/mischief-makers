glabel func_80072EE0
/* 73AE0 80072EE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73AE4 80072EE4 000E7880 */  sll        $t7, $t6, 2
/* 73AE8 80072EE8 01EE7823 */  subu       $t7, $t7, $t6
/* 73AEC 80072EEC 000F7880 */  sll        $t7, $t7, 2
/* 73AF0 80072EF0 01EE7821 */  addu       $t7, $t7, $t6
/* 73AF4 80072EF4 000F7880 */  sll        $t7, $t7, 2
/* 73AF8 80072EF8 01EE7823 */  subu       $t7, $t7, $t6
/* 73AFC 80072EFC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 73B00 80072F00 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 73B04 80072F04 000F78C0 */  sll        $t7, $t7, 3
/* 73B08 80072F08 01F81021 */  addu       $v0, $t7, $t8
/* 73B0C 80072F0C 8C590150 */  lw         $t9, 0x150($v0)
/* 73B10 80072F10 8C490098 */  lw         $t1, 0x98($v0)
/* 73B14 80072F14 3C01F7FF */  lui        $at, 0xf7ff
/* 73B18 80072F18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73B1C 80072F1C 3421FFFF */  ori        $at, $at, 0xffff
/* 73B20 80072F20 AFA40018 */  sw         $a0, 0x18($sp)
/* 73B24 80072F24 03214024 */  and        $t0, $t9, $at
/* 73B28 80072F28 00095280 */  sll        $t2, $t1, 0xa
/* 73B2C 80072F2C 01C02025 */  or         $a0, $t6, $zero
/* 73B30 80072F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 73B34 80072F34 05400003 */  bltz       $t2, .L80072F44
/* 73B38 80072F38 AC480150 */   sw        $t0, 0x150($v0)
/* 73B3C 80072F3C 0C01CB95 */  jal        func_80072E54
/* 73B40 80072F40 00000000 */   nop
.L80072F44:
/* 73B44 80072F44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73B48 80072F48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 73B4C 80072F4C 03E00008 */  jr         $ra
/* 73B50 80072F50 00000000 */   nop
