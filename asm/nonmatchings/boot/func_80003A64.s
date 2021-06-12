glabel func_80003A64
/* 4664 80003A64 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4668 80003A68 AFB20020 */  sw         $s2, 0x20($sp)
/* 466C 80003A6C AFB1001C */  sw         $s1, 0x1c($sp)
/* 4670 80003A70 AFB00018 */  sw         $s0, 0x18($sp)
/* 4674 80003A74 3C118017 */  lui        $s1, %hi(D_8016E1D8)
/* 4678 80003A78 3C12800F */  lui        $s2, %hi(D_800EF4F0)
/* 467C 80003A7C AFBF0024 */  sw         $ra, 0x24($sp)
/* 4680 80003A80 2652F4F0 */  addiu      $s2, $s2, %lo(D_800EF4F0)
/* 4684 80003A84 2631E1D8 */  addiu      $s1, $s1, %lo(D_8016E1D8)
/* 4688 80003A88 00008025 */  or         $s0, $zero, $zero
.L80003A8C:
/* 468C 80003A8C 00107080 */  sll        $t6, $s0, 2
/* 4690 80003A90 022E7821 */  addu       $t7, $s1, $t6
/* 4694 80003A94 8DE40000 */  lw         $a0, ($t7)
/* 4698 80003A98 0C027FD0 */  jal        func_8009FF40
/* 469C 80003A9C 00000000 */   nop
/* 46A0 80003AA0 0250C021 */  addu       $t8, $s2, $s0
/* 46A4 80003AA4 26100001 */  addiu      $s0, $s0, 1
/* 46A8 80003AA8 321900FF */  andi       $t9, $s0, 0xff
/* 46AC 80003AAC 2B210004 */  slti       $at, $t9, 4
/* 46B0 80003AB0 03208025 */  or         $s0, $t9, $zero
/* 46B4 80003AB4 1420FFF5 */  bnez       $at, .L80003A8C
/* 46B8 80003AB8 A3000000 */   sb        $zero, ($t8)
/* 46BC 80003ABC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 46C0 80003AC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 46C4 80003AC4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 46C8 80003AC8 8FB20020 */  lw         $s2, 0x20($sp)
/* 46CC 80003ACC 03E00008 */  jr         $ra
/* 46D0 80003AD0 27BD0028 */   addiu     $sp, $sp, 0x28
