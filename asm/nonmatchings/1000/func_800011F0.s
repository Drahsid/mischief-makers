glabel func_800011F0
/* 1DF0 800011F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1DF4 800011F4 AFA40048 */  sw         $a0, 0x48($sp)
/* 1DF8 800011F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1DFC 800011FC AFA5004C */  sw         $a1, 0x4c($sp)
/* 1E00 80001200 00A02025 */  or         $a0, $a1, $zero
/* 1E04 80001204 AFA60050 */  sw         $a2, 0x50($sp)
/* 1E08 80001208 0C026DB8 */  jal        func_8009B6E0
/* 1E0C 8000120C 00C02825 */   or        $a1, $a2, $zero
/* 1E10 80001210 8FAE004C */  lw         $t6, 0x4c($sp)
/* 1E14 80001214 8FAF0050 */  lw         $t7, 0x50($sp)
/* 1E18 80001218 3C188013 */  lui        $t8, %hi(D_8012ABA8)
/* 1E1C 8000121C 2718ABA8 */  addiu      $t8, $t8, %lo(D_8012ABA8)
/* 1E20 80001220 8FA70048 */  lw         $a3, 0x48($sp)
/* 1E24 80001224 AFB80018 */  sw         $t8, 0x18($sp)
/* 1E28 80001228 27A40030 */  addiu      $a0, $sp, 0x30
/* 1E2C 8000122C 00002825 */  or         $a1, $zero, $zero
/* 1E30 80001230 00003025 */  or         $a2, $zero, $zero
/* 1E34 80001234 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1E38 80001238 0C026DE4 */  jal        func_8009B790
/* 1E3C 8000123C AFAF0014 */   sw        $t7, 0x14($sp)
/* 1E40 80001240 3C048013 */  lui        $a0, %hi(D_8012ABA8)
/* 1E44 80001244 2484ABA8 */  addiu      $a0, $a0, %lo(D_8012ABA8)
/* 1E48 80001248 27A5002C */  addiu      $a1, $sp, 0x2c
/* 1E4C 8000124C 0C026B44 */  jal        func_8009AD10
/* 1E50 80001250 24060001 */   addiu     $a2, $zero, 1
/* 1E54 80001254 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E58 80001258 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1E5C 8000125C 03E00008 */  jr         $ra
/* 1E60 80001260 00000000 */   nop
