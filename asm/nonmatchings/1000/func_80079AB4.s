glabel func_80079AB4
/* 7A6B4 80079AB4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7A6B8 80079AB8 000E7880 */  sll        $t7, $t6, 2
/* 7A6BC 80079ABC 01EE7823 */  subu       $t7, $t7, $t6
/* 7A6C0 80079AC0 000F7880 */  sll        $t7, $t7, 2
/* 7A6C4 80079AC4 01EE7821 */  addu       $t7, $t7, $t6
/* 7A6C8 80079AC8 000F7880 */  sll        $t7, $t7, 2
/* 7A6CC 80079ACC 01EE7823 */  subu       $t7, $t7, $t6
/* 7A6D0 80079AD0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 7A6D4 80079AD4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 7A6D8 80079AD8 000F78C0 */  sll        $t7, $t7, 3
/* 7A6DC 80079ADC 01F81021 */  addu       $v0, $t7, $t8
/* 7A6E0 80079AE0 8C4B0150 */  lw         $t3, 0x150($v0)
/* 7A6E4 80079AE4 3C08800E */  lui        $t0, %hi(D_800D8210)
/* 7A6E8 80079AE8 3C0A0002 */  lui        $t2, 2
/* 7A6EC 80079AEC 3C010030 */  lui        $at, 0x30
/* 7A6F0 80079AF0 24190200 */  addiu      $t9, $zero, 0x200
/* 7A6F4 80079AF4 25088210 */  addiu      $t0, $t0, %lo(D_800D8210)
/* 7A6F8 80079AF8 24090001 */  addiu      $t1, $zero, 1
/* 7A6FC 80079AFC 354A0503 */  ori        $t2, $t2, 0x503
/* 7A700 80079B00 01616025 */  or         $t4, $t3, $at
/* 7A704 80079B04 AFA40000 */  sw         $a0, ($sp)
/* 7A708 80079B08 A45900D0 */  sh         $t9, 0xd0($v0)
/* 7A70C 80079B0C A44900E6 */  sh         $t1, 0xe6($v0)
/* 7A710 80079B10 AC4800E8 */  sw         $t0, 0xe8($v0)
/* 7A714 80079B14 AC4A0080 */  sw         $t2, 0x80($v0)
/* 7A718 80079B18 AC4C0150 */  sw         $t4, 0x150($v0)
/* 7A71C 80079B1C AC4000EC */  sw         $zero, 0xec($v0)
/* 7A720 80079B20 03E00008 */  jr         $ra
/* 7A724 80079B24 AC4000F0 */   sw        $zero, 0xf0($v0)
