glabel func_800032C4
/* 3EC4 800032C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3EC8 800032C8 3C05800F */  lui        $a1, %hi(D_800EF508)
/* 3ECC 800032CC 3C03800F */  lui        $v1, %hi(D_800EF4F0)
/* 3ED0 800032D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ED4 800032D4 2463F4F0 */  addiu      $v1, $v1, %lo(D_800EF4F0)
/* 3ED8 800032D8 24A5F508 */  addiu      $a1, $a1, %lo(D_800EF508)
/* 3EDC 800032DC 00001025 */  or         $v0, $zero, $zero
.L800032E0:
/* 3EE0 800032E0 00627021 */  addu       $t6, $v1, $v0
/* 3EE4 800032E4 91CF0000 */  lbu        $t7, ($t6)
/* 3EE8 800032E8 0002C040 */  sll        $t8, $v0, 1
/* 3EEC 800032EC 11E0000D */  beqz       $t7, .L80003324
/* 3EF0 800032F0 00B8C821 */   addu      $t9, $a1, $t8
/* 3EF4 800032F4 97280000 */  lhu        $t0, ($t9)
/* 3EF8 800032F8 00000000 */  nop
/* 3EFC 800032FC 14880009 */  bne        $a0, $t0, .L80003324
/* 3F00 80003300 00024880 */   sll       $t1, $v0, 2
/* 3F04 80003304 3C048017 */  lui        $a0, %hi(ptr_alSeqPlayers)
/* 3F08 80003308 00892021 */  addu       $a0, $a0, $t1
/* 3F0C 8000330C 8C84E1D8 */  lw         $a0, %lo(ptr_alSeqPlayers)($a0)
/* 3F10 80003310 0C027FD0 */  jal        alSeqpStop
/* 3F14 80003314 AFA20018 */   sw        $v0, 0x18($sp)
/* 3F18 80003318 8FA20018 */  lw         $v0, 0x18($sp)
/* 3F1C 8000331C 10000008 */  b          .L80003340
/* 3F20 80003320 8FBF0014 */   lw        $ra, 0x14($sp)
.L80003324:
/* 3F24 80003324 24420001 */  addiu      $v0, $v0, 1
/* 3F28 80003328 304A00FF */  andi       $t2, $v0, 0xff
/* 3F2C 8000332C 29410004 */  slti       $at, $t2, 4
/* 3F30 80003330 1420FFEB */  bnez       $at, .L800032E0
/* 3F34 80003334 01401025 */   or        $v0, $t2, $zero
/* 3F38 80003338 2402FFFF */  addiu      $v0, $zero, -1
/* 3F3C 8000333C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80003340:
/* 3F40 80003340 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F44 80003344 03E00008 */  jr         $ra
/* 3F48 80003348 00000000 */   nop
