glabel func_800AF008
/* AFC08 800AF008 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AFC0C 800AF00C AFBF001C */  sw         $ra, 0x1c($sp)
/* AFC10 800AF010 AFA40020 */  sw         $a0, 0x20($sp)
/* AFC14 800AF014 AFA50024 */  sw         $a1, 0x24($sp)
/* AFC18 800AF018 3C05800B */  lui        $a1, %hi(func_800B06F0)
/* AFC1C 800AF01C 3C06800B */  lui        $a2, %hi(func_800B09C0)
/* AFC20 800AF020 24C609C0 */  addiu      $a2, $a2, %lo(func_800B09C0)
/* AFC24 800AF024 24A506F0 */  addiu      $a1, $a1, %lo(func_800B06F0)
/* AFC28 800AF028 8FA40020 */  lw         $a0, 0x20($sp)
/* AFC2C 800AF02C 0C02DF34 */  jal        func_800B7CD0
/* AFC30 800AF030 24070001 */   addiu     $a3, $zero, 1
/* AFC34 800AF034 3C04800F */  lui        $a0, %hi(D_800EE4C4)
/* AFC38 800AF038 240E0020 */  addiu      $t6, $zero, 0x20
/* AFC3C 800AF03C AFAE0010 */  sw         $t6, 0x10($sp)
/* AFC40 800AF040 2484E4C4 */  addiu      $a0, $a0, %lo(D_800EE4C4)
/* AFC44 800AF044 24050104 */  addiu      $a1, $zero, 0x104
/* AFC48 800AF048 8FA60024 */  lw         $a2, 0x24($sp)
/* AFC4C 800AF04C 0C026ECC */  jal        func_8009BB30
/* AFC50 800AF050 24070001 */   addiu     $a3, $zero, 1
/* AFC54 800AF054 8FAF0020 */  lw         $t7, 0x20($sp)
/* AFC58 800AF058 ADE20014 */  sw         $v0, 0x14($t7)
/* AFC5C 800AF05C 44802000 */  mtc1       $zero, $f4
/* AFC60 800AF060 8FB80020 */  lw         $t8, 0x20($sp)
/* AFC64 800AF064 E7040020 */  swc1       $f4, 0x20($t8)
/* AFC68 800AF068 8FA80020 */  lw         $t0, 0x20($sp)
/* AFC6C 800AF06C 24190001 */  addiu      $t9, $zero, 1
/* AFC70 800AF070 AD190024 */  sw         $t9, 0x24($t0)
/* AFC74 800AF074 8FA90020 */  lw         $t1, 0x20($sp)
/* AFC78 800AF078 AD200030 */  sw         $zero, 0x30($t1)
/* AFC7C 800AF07C 3C013F80 */  lui        $at, 0x3f80
/* AFC80 800AF080 44813000 */  mtc1       $at, $f6
/* AFC84 800AF084 8FAA0020 */  lw         $t2, 0x20($sp)
/* AFC88 800AF088 E5460018 */  swc1       $f6, 0x18($t2)
/* AFC8C 800AF08C 8FAB0020 */  lw         $t3, 0x20($sp)
/* AFC90 800AF090 AD60001C */  sw         $zero, 0x1c($t3)
/* AFC94 800AF094 8FAC0020 */  lw         $t4, 0x20($sp)
/* AFC98 800AF098 AD800028 */  sw         $zero, 0x28($t4)
/* AFC9C 800AF09C 8FAD0020 */  lw         $t5, 0x20($sp)
/* AFCA0 800AF0A0 ADA0002C */  sw         $zero, 0x2c($t5)
/* AFCA4 800AF0A4 10000001 */  b          .L800AF0AC
/* AFCA8 800AF0A8 00000000 */   nop
.L800AF0AC:
/* AFCAC 800AF0AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFCB0 800AF0B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AFCB4 800AF0B4 03E00008 */  jr         $ra
/* AFCB8 800AF0B8 00000000 */   nop
