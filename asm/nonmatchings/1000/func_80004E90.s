glabel func_80004E90
/* 5A90 80004E90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5A94 80004E94 AFB20020 */  sw         $s2, 0x20($sp)
/* 5A98 80004E98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5A9C 80004E9C AFB00018 */  sw         $s0, 0x18($sp)
/* 5AA0 80004EA0 3C12800C */  lui        $s2, %hi(D_800C5010)
/* 5AA4 80004EA4 00808825 */  or         $s1, $a0, $zero
/* 5AA8 80004EA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5AAC 80004EAC 26525010 */  addiu      $s2, $s2, %lo(D_800C5010)
/* 5AB0 80004EB0 00008025 */  or         $s0, $zero, $zero
.L80004EB4:
/* 5AB4 80004EB4 02202025 */  or         $a0, $s1, $zero
/* 5AB8 80004EB8 0C00139C */  jal        func_80004E70
/* 5ABC 80004EBC 02002825 */   or        $a1, $s0, $zero
/* 5AC0 80004EC0 02507021 */  addu       $t6, $s2, $s0
/* 5AC4 80004EC4 91CF0000 */  lbu        $t7, ($t6)
/* 5AC8 80004EC8 26100001 */  addiu      $s0, $s0, 1
/* 5ACC 80004ECC 01E2082A */  slt        $at, $t7, $v0
/* 5AD0 80004ED0 10200003 */  beqz       $at, .L80004EE0
/* 5AD4 80004ED4 3218FFFF */   andi      $t8, $s0, 0xffff
/* 5AD8 80004ED8 10000005 */  b          .L80004EF0
/* 5ADC 80004EDC 24020001 */   addiu     $v0, $zero, 1
.L80004EE0:
/* 5AE0 80004EE0 2B010008 */  slti       $at, $t8, 8
/* 5AE4 80004EE4 1420FFF3 */  bnez       $at, .L80004EB4
/* 5AE8 80004EE8 03008025 */   or        $s0, $t8, $zero
/* 5AEC 80004EEC 00001025 */  or         $v0, $zero, $zero
.L80004EF0:
/* 5AF0 80004EF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5AF4 80004EF4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5AF8 80004EF8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5AFC 80004EFC 8FB20020 */  lw         $s2, 0x20($sp)
/* 5B00 80004F00 03E00008 */  jr         $ra
/* 5B04 80004F04 27BD0028 */   addiu     $sp, $sp, 0x28
