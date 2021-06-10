glabel func_80002AE0
/* 36E0 80002AE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 36E4 80002AE4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 36E8 80002AE8 AFA40028 */  sw         $a0, 0x28($sp)
/* 36EC 80002AEC AFA5002C */  sw         $a1, 0x2c($sp)
/* 36F0 80002AF0 0C026BA8 */  jal        func_8009AEA0
/* 36F4 80002AF4 AFA60030 */   sw        $a2, 0x30($sp)
/* 36F8 80002AF8 8FAE002C */  lw         $t6, 0x2c($sp)
/* 36FC 80002AFC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3700 80002B00 3C188013 */  lui        $t8, %hi(D_801377B8)
/* 3704 80002B04 271877B8 */  addiu      $t8, $t8, %lo(D_801377B8)
/* 3708 80002B08 3C048013 */  lui        $a0, %hi(D_801378C8)
/* 370C 80002B0C 8FA70028 */  lw         $a3, 0x28($sp)
/* 3710 80002B10 248478C8 */  addiu      $a0, $a0, %lo(D_801378C8)
/* 3714 80002B14 AFB80018 */  sw         $t8, 0x18($sp)
/* 3718 80002B18 00002825 */  or         $a1, $zero, $zero
/* 371C 80002B1C 00003025 */  or         $a2, $zero, $zero
/* 3720 80002B20 AFAE0010 */  sw         $t6, 0x10($sp)
/* 3724 80002B24 0C026DE4 */  jal        func_8009B790
/* 3728 80002B28 AFAF0014 */   sw        $t7, 0x14($sp)
/* 372C 80002B2C 3C048013 */  lui        $a0, %hi(D_801377B8)
/* 3730 80002B30 248477B8 */  addiu      $a0, $a0, %lo(D_801377B8)
/* 3734 80002B34 00002825 */  or         $a1, $zero, $zero
/* 3738 80002B38 0C026B44 */  jal        func_8009AD10
/* 373C 80002B3C 24060001 */   addiu     $a2, $zero, 1
/* 3740 80002B40 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3744 80002B44 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3748 80002B48 03E00008 */  jr         $ra
/* 374C 80002B4C 00000000 */   nop
