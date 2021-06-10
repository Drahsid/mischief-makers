glabel func_80096A70
/* 97670 80096A70 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97674 80096A74 000EC080 */  sll        $t8, $t6, 2
/* 97678 80096A78 030EC023 */  subu       $t8, $t8, $t6
/* 9767C 80096A7C 0018C080 */  sll        $t8, $t8, 2
/* 97680 80096A80 030EC021 */  addu       $t8, $t8, $t6
/* 97684 80096A84 0018C080 */  sll        $t8, $t8, 2
/* 97688 80096A88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9768C 80096A8C 030EC023 */  subu       $t8, $t8, $t6
/* 97690 80096A90 0018C0C0 */  sll        $t8, $t8, 3
/* 97694 80096A94 3C01800F */  lui        $at, 0x800f
/* 97698 80096A98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9769C 80096A9C AFA40018 */  sw         $a0, 0x18($sp)
/* 976A0 80096AA0 00380821 */  addu       $at, $at, $t8
/* 976A4 80096AA4 240F0002 */  addiu      $t7, $zero, 2
/* 976A8 80096AA8 01C02025 */  or         $a0, $t6, $zero
/* 976AC 80096AAC 0C023F42 */  jal        func_8008FD08
/* 976B0 80096AB0 A42FF780 */   sh        $t7, -0x880($at)
/* 976B4 80096AB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 976B8 80096AB8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 976BC 80096ABC 03E00008 */  jr         $ra
/* 976C0 80096AC0 00000000 */   nop
