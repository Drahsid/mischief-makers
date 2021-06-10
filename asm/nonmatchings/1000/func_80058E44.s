glabel func_80058E44
/* 59A44 80058E44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 59A48 80058E48 AFA40018 */  sw         $a0, 0x18($sp)
/* 59A4C 80058E4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 59A50 80058E50 97A4001A */  lhu        $a0, 0x1a($sp)
/* 59A54 80058E54 0C016249 */  jal        func_80058924
/* 59A58 80058E58 AFA5001C */   sw        $a1, 0x1c($sp)
/* 59A5C 80058E5C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 59A60 80058E60 3C18800F */  lui        $t8, 0x800f
/* 59A64 80058E64 000E7880 */  sll        $t7, $t6, 2
/* 59A68 80058E68 01EE7823 */  subu       $t7, $t7, $t6
/* 59A6C 80058E6C 000F7880 */  sll        $t7, $t7, 2
/* 59A70 80058E70 01EE7821 */  addu       $t7, $t7, $t6
/* 59A74 80058E74 000F7880 */  sll        $t7, $t7, 2
/* 59A78 80058E78 01EE7823 */  subu       $t7, $t7, $t6
/* 59A7C 80058E7C 000F78C0 */  sll        $t7, $t7, 3
/* 59A80 80058E80 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 59A84 80058E84 01F81021 */  addu       $v0, $t7, $t8
/* 59A88 80058E88 8C5900F8 */  lw         $t9, 0xf8($v0)
/* 59A8C 80058E8C 8C4900FC */  lw         $t1, 0xfc($v0)
/* 59A90 80058E90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59A94 80058E94 240A002B */  addiu      $t2, $zero, 0x2b
/* 59A98 80058E98 00194023 */  negu       $t0, $t9
/* 59A9C 80058E9C AC4800F8 */  sw         $t0, 0xf8($v0)
/* 59AA0 80058EA0 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 59AA4 80058EA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 59AA8 80058EA8 03E00008 */  jr         $ra
/* 59AAC 80058EAC AC4900FC */   sw        $t1, 0xfc($v0)
