glabel func_8003A958
/* 3B558 8003A958 3085FFFF */  andi       $a1, $a0, 0xffff
/* 3B55C 8003A95C 00057080 */  sll        $t6, $a1, 2
/* 3B560 8003A960 01C57023 */  subu       $t6, $t6, $a1
/* 3B564 8003A964 000E7080 */  sll        $t6, $t6, 2
/* 3B568 8003A968 01C57021 */  addu       $t6, $t6, $a1
/* 3B56C 8003A96C 000E7080 */  sll        $t6, $t6, 2
/* 3B570 8003A970 01C57023 */  subu       $t6, $t6, $a1
/* 3B574 8003A974 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 3B578 8003A978 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 3B57C 8003A97C 000E70C0 */  sll        $t6, $t6, 3
/* 3B580 8003A980 01CF1021 */  addu       $v0, $t6, $t7
/* 3B584 8003A984 8C580170 */  lw         $t8, 0x170($v0)
/* 3B588 8003A988 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B58C 8003A98C 3C010100 */  lui        $at, 0x100
/* 3B590 8003A990 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B594 8003A994 AFA40018 */  sw         $a0, 0x18($sp)
/* 3B598 8003A998 0301C821 */  addu       $t9, $t8, $at
/* 3B59C 8003A99C AC590170 */  sw         $t9, 0x170($v0)
/* 3B5A0 8003A9A0 0C000DB2 */  jal        func_800036C8
/* 3B5A4 8003A9A4 24040115 */   addiu     $a0, $zero, 0x115
/* 3B5A8 8003A9A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B5AC 8003A9AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B5B0 8003A9B0 03E00008 */  jr         $ra
/* 3B5B4 8003A9B4 00000000 */   nop
