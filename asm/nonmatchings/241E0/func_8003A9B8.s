glabel func_8003A9B8
/* 3B5B8 8003A9B8 3085FFFF */  andi       $a1, $a0, 0xffff
/* 3B5BC 8003A9BC 00057080 */  sll        $t6, $a1, 2
/* 3B5C0 8003A9C0 01C57023 */  subu       $t6, $t6, $a1
/* 3B5C4 8003A9C4 000E7080 */  sll        $t6, $t6, 2
/* 3B5C8 8003A9C8 01C57021 */  addu       $t6, $t6, $a1
/* 3B5CC 8003A9CC 000E7080 */  sll        $t6, $t6, 2
/* 3B5D0 8003A9D0 01C57023 */  subu       $t6, $t6, $a1
/* 3B5D4 8003A9D4 3C0F800F */  lui        $t7, %hi(gActors)
/* 3B5D8 8003A9D8 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3B5DC 8003A9DC 000E70C0 */  sll        $t6, $t6, 3
/* 3B5E0 8003A9E0 01CF1021 */  addu       $v0, $t6, $t7
/* 3B5E4 8003A9E4 8C580170 */  lw         $t8, 0x170($v0)
/* 3B5E8 8003A9E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B5EC 8003A9EC 3C01FF00 */  lui        $at, 0xff00
/* 3B5F0 8003A9F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B5F4 8003A9F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 3B5F8 8003A9F8 0301C821 */  addu       $t9, $t8, $at
/* 3B5FC 8003A9FC AC590170 */  sw         $t9, 0x170($v0)
/* 3B600 8003AA00 0C000DB2 */  jal        func_800036C8
/* 3B604 8003AA04 24040115 */   addiu     $a0, $zero, 0x115
/* 3B608 8003AA08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3B60C 8003AA0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B610 8003AA10 03E00008 */  jr         $ra
/* 3B614 8003AA14 00000000 */   nop
