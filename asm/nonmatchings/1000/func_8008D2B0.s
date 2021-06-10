glabel func_8008D2B0
/* 8DEB0 8008D2B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DEB4 8008D2B4 000E7880 */  sll        $t7, $t6, 2
/* 8DEB8 8008D2B8 01EE7823 */  subu       $t7, $t7, $t6
/* 8DEBC 8008D2BC 000F7880 */  sll        $t7, $t7, 2
/* 8DEC0 8008D2C0 01EE7821 */  addu       $t7, $t7, $t6
/* 8DEC4 8008D2C4 000F7880 */  sll        $t7, $t7, 2
/* 8DEC8 8008D2C8 01EE7823 */  subu       $t7, $t7, $t6
/* 8DECC 8008D2CC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8DED0 8008D2D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DED4 8008D2D4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8DED8 8008D2D8 000F78C0 */  sll        $t7, $t7, 3
/* 8DEDC 8008D2DC 3C014100 */  lui        $at, 0x4100
/* 8DEE0 8008D2E0 44812000 */  mtc1       $at, $f4
/* 8DEE4 8008D2E4 01F81021 */  addu       $v0, $t7, $t8
/* 8DEE8 8008D2E8 3C08800D */  lui        $t0, %hi(D_800D44F4)
/* 8DEEC 8008D2EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DEF0 8008D2F0 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DEF4 8008D2F4 241900B0 */  addiu      $t9, $zero, 0xb0
/* 8DEF8 8008D2F8 250844F4 */  addiu      $t0, $t0, %lo(D_800D44F4)
/* 8DEFC 8008D2FC 01C02025 */  or         $a0, $t6, $zero
/* 8DF00 8008D300 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DF04 8008D304 AC48018C */  sw         $t0, 0x18c($v0)
/* 8DF08 8008D308 0C02344A */  jal        func_8008D128
/* 8DF0C 8008D30C E4440120 */   swc1      $f4, 0x120($v0)
/* 8DF10 8008D310 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DF14 8008D314 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DF18 8008D318 03E00008 */  jr         $ra
/* 8DF1C 8008D31C 00000000 */   nop
