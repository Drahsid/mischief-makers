glabel func_80081FC8
/* 82BC8 80081FC8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82BCC 80081FCC 000E7880 */  sll        $t7, $t6, 2
/* 82BD0 80081FD0 01EE7823 */  subu       $t7, $t7, $t6
/* 82BD4 80081FD4 000F7880 */  sll        $t7, $t7, 2
/* 82BD8 80081FD8 01EE7821 */  addu       $t7, $t7, $t6
/* 82BDC 80081FDC 000F7880 */  sll        $t7, $t7, 2
/* 82BE0 80081FE0 01EE7823 */  subu       $t7, $t7, $t6
/* 82BE4 80081FE4 000F78C0 */  sll        $t7, $t7, 3
/* 82BE8 80081FE8 3C18800F */  lui        $t8, %hi(D_800EF5E0)
/* 82BEC 80081FEC 030FC021 */  addu       $t8, $t8, $t7
/* 82BF0 80081FF0 9718F5E0 */  lhu        $t8, %lo(D_800EF5E0)($t8)
/* 82BF4 80081FF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 82BF8 80081FF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 82BFC 80081FFC 01C02025 */  or         $a0, $t6, $zero
/* 82C00 80082000 13000004 */  beqz       $t8, .L80082014
/* 82C04 80082004 AFBF0014 */   sw        $ra, 0x14($sp)
/* 82C08 80082008 3C05800E */  lui        $a1, %hi(D_800E2600)
/* 82C0C 8008200C 0C02066A */  jal        func_800819A8
/* 82C10 80082010 24A52600 */   addiu     $a1, $a1, %lo(D_800E2600)
.L80082014:
/* 82C14 80082014 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82C18 80082018 27BD0018 */  addiu      $sp, $sp, 0x18
/* 82C1C 8008201C 03E00008 */  jr         $ra
/* 82C20 80082020 00000000 */   nop
