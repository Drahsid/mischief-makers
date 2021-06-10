glabel func_80073E50
/* 74A50 80073E50 308EFFFF */  andi       $t6, $a0, 0xffff
/* 74A54 80073E54 000E7880 */  sll        $t7, $t6, 2
/* 74A58 80073E58 01EE7823 */  subu       $t7, $t7, $t6
/* 74A5C 80073E5C 000F7880 */  sll        $t7, $t7, 2
/* 74A60 80073E60 01EE7821 */  addu       $t7, $t7, $t6
/* 74A64 80073E64 000F7880 */  sll        $t7, $t7, 2
/* 74A68 80073E68 01EE7823 */  subu       $t7, $t7, $t6
/* 74A6C 80073E6C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 74A70 80073E70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 74A74 80073E74 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 74A78 80073E78 000F78C0 */  sll        $t7, $t7, 3
/* 74A7C 80073E7C 01F81021 */  addu       $v0, $t7, $t8
/* 74A80 80073E80 8C5900EC */  lw         $t9, 0xec($v0)
/* 74A84 80073E84 8C4800F0 */  lw         $t0, 0xf0($v0)
/* 74A88 80073E88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74A8C 80073E8C AFA40028 */  sw         $a0, 0x28($sp)
/* 74A90 80073E90 01C02025 */  or         $a0, $t6, $zero
/* 74A94 80073E94 AFA5002C */  sw         $a1, 0x2c($sp)
/* 74A98 80073E98 A44000D2 */  sh         $zero, 0xd2($v0)
/* 74A9C 80073E9C AFA2001C */  sw         $v0, 0x1c($sp)
/* 74AA0 80073EA0 AFB90024 */  sw         $t9, 0x24($sp)
/* 74AA4 80073EA4 0C0078B4 */  jal        func_8001E2D0
/* 74AA8 80073EA8 AFA80020 */   sw        $t0, 0x20($sp)
/* 74AAC 80073EAC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 74AB0 80073EB0 3C01BF80 */  lui        $at, 0xbf80
/* 74AB4 80073EB4 8FAA0024 */  lw         $t2, 0x24($sp)
/* 74AB8 80073EB8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 74ABC 80073EBC 44812000 */  mtc1       $at, $f4
/* 74AC0 80073EC0 97AD002E */  lhu        $t5, 0x2e($sp)
/* 74AC4 80073EC4 2409000A */  addiu      $t1, $zero, 0xa
/* 74AC8 80073EC8 240C0044 */  addiu      $t4, $zero, 0x44
/* 74ACC 80073ECC A44900E0 */  sh         $t1, 0xe0($v0)
/* 74AD0 80073ED0 A44C00D2 */  sh         $t4, 0xd2($v0)
/* 74AD4 80073ED4 AC4A00EC */  sw         $t2, 0xec($v0)
/* 74AD8 80073ED8 AC4B00F0 */  sw         $t3, 0xf0($v0)
/* 74ADC 80073EDC E4440110 */  swc1       $f4, 0x110($v0)
/* 74AE0 80073EE0 A44D0084 */  sh         $t5, 0x84($v0)
/* 74AE4 80073EE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74AE8 80073EE8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 74AEC 80073EEC 03E00008 */  jr         $ra
/* 74AF0 80073EF0 00000000 */   nop
