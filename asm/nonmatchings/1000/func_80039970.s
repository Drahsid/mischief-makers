glabel func_80039970
/* 3A570 80039970 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 3A574 80039974 000E7880 */  sll        $t7, $t6, 2
/* 3A578 80039978 01EE7823 */  subu       $t7, $t7, $t6
/* 3A57C 8003997C 000F7880 */  sll        $t7, $t7, 2
/* 3A580 80039980 01EE7821 */  addu       $t7, $t7, $t6
/* 3A584 80039984 000F7880 */  sll        $t7, $t7, 2
/* 3A588 80039988 01EE7823 */  subu       $t7, $t7, $t6
/* 3A58C 8003998C 3C18800F */  lui        $t8, %hi(gActors)
/* 3A590 80039990 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3A594 80039994 000F78C0 */  sll        $t7, $t7, 3
/* 3A598 80039998 01F81021 */  addu       $v0, $t7, $t8
/* 3A59C 8003999C 944300D2 */  lhu        $v1, 0xd2($v0)
/* 3A5A0 800399A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A5A4 800399A4 24010008 */  addiu      $at, $zero, 8
/* 3A5A8 800399A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A5AC 800399AC AFA40018 */  sw         $a0, 0x18($sp)
/* 3A5B0 800399B0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3A5B4 800399B4 10610006 */  beq        $v1, $at, .L800399D0
/* 3A5B8 800399B8 3086FFFF */   andi      $a2, $a0, 0xffff
/* 3A5BC 800399BC 24010032 */  addiu      $at, $zero, 0x32
/* 3A5C0 800399C0 1061000C */  beq        $v1, $at, .L800399F4
/* 3A5C4 800399C4 24040136 */   addiu     $a0, $zero, 0x136
/* 3A5C8 800399C8 1000000E */  b          .L80039A04
/* 3A5CC 800399CC 24040116 */   addiu     $a0, $zero, 0x116
.L800399D0:
/* 3A5D0 800399D0 24190078 */  addiu      $t9, $zero, 0x78
/* 3A5D4 800399D4 3C080004 */  lui        $t0, 4
/* 3A5D8 800399D8 AC590150 */  sw         $t9, 0x150($v0)
/* 3A5DC 800399DC AC4800F0 */  sw         $t0, 0xf0($v0)
/* 3A5E0 800399E0 24040051 */  addiu      $a0, $zero, 0x51
/* 3A5E4 800399E4 0C000DB2 */  jal        func_800036C8
/* 3A5E8 800399E8 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 3A5EC 800399EC 10000008 */  b          .L80039A10
/* 3A5F0 800399F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800399F4:
/* 3A5F4 800399F4 0C000DB2 */  jal        func_800036C8
/* 3A5F8 800399F8 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 3A5FC 800399FC 10000004 */  b          .L80039A10
/* 3A600 80039A00 8FBF0014 */   lw        $ra, 0x14($sp)
.L80039A04:
/* 3A604 80039A04 0C000DB2 */  jal        func_800036C8
/* 3A608 80039A08 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 3A60C 80039A0C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80039A10:
/* 3A610 80039A10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A614 80039A14 03E00008 */  jr         $ra
/* 3A618 80039A18 00000000 */   nop
