glabel func_80085350
/* 85F50 80085350 3085FFFF */  andi       $a1, $a0, 0xffff
/* 85F54 80085354 00057080 */  sll        $t6, $a1, 2
/* 85F58 80085358 01C57023 */  subu       $t6, $t6, $a1
/* 85F5C 8008535C 000E7080 */  sll        $t6, $t6, 2
/* 85F60 80085360 01C57021 */  addu       $t6, $t6, $a1
/* 85F64 80085364 000E7080 */  sll        $t6, $t6, 2
/* 85F68 80085368 01C57023 */  subu       $t6, $t6, $a1
/* 85F6C 8008536C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 85F70 80085370 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 85F74 80085374 000E70C0 */  sll        $t6, $t6, 3
/* 85F78 80085378 01CF1021 */  addu       $v0, $t6, $t7
/* 85F7C 8008537C 8C580098 */  lw         $t8, 0x98($v0)
/* 85F80 80085380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 85F84 80085384 33190200 */  andi       $t9, $t8, 0x200
/* 85F88 80085388 AFBF0014 */  sw         $ra, 0x14($sp)
/* 85F8C 8008538C 1320000A */  beqz       $t9, .L800853B8
/* 85F90 80085390 AFA40018 */   sw        $a0, 0x18($sp)
/* 85F94 80085394 3C090002 */  lui        $t1, 2
/* 85F98 80085398 24080002 */  addiu      $t0, $zero, 2
/* 85F9C 8008539C 35290003 */  ori        $t1, $t1, 3
/* 85FA0 800853A0 A44800D0 */  sh         $t0, 0xd0($v0)
/* 85FA4 800853A4 AC490080 */  sw         $t1, 0x80($v0)
/* 85FA8 800853A8 AC4000EC */  sw         $zero, 0xec($v0)
/* 85FAC 800853AC AC4000F0 */  sw         $zero, 0xf0($v0)
/* 85FB0 800853B0 0C000DB2 */  jal        func_800036C8
/* 85FB4 800853B4 2404002F */   addiu     $a0, $zero, 0x2f
.L800853B8:
/* 85FB8 800853B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 85FBC 800853BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 85FC0 800853C0 03E00008 */  jr         $ra
/* 85FC4 800853C4 00000000 */   nop
