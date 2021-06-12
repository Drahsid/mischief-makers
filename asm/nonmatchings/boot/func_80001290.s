glabel func_80001290
/* 1E90 80001290 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1E94 80001294 AFA40040 */  sw         $a0, 0x40($sp)
/* 1E98 80001298 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E9C 8000129C AFA50044 */  sw         $a1, 0x44($sp)
/* 1EA0 800012A0 00A02025 */  or         $a0, $a1, $zero
/* 1EA4 800012A4 AFA60048 */  sw         $a2, 0x48($sp)
/* 1EA8 800012A8 0C026DB8 */  jal        func_8009B6E0
/* 1EAC 800012AC 00C02825 */   or        $a1, $a2, $zero
/* 1EB0 800012B0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 1EB4 800012B4 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1EB8 800012B8 3C188013 */  lui        $t8, %hi(D_8012ABA8)
/* 1EBC 800012BC 2718ABA8 */  addiu      $t8, $t8, %lo(D_8012ABA8)
/* 1EC0 800012C0 8FA70040 */  lw         $a3, 0x40($sp)
/* 1EC4 800012C4 AFB80018 */  sw         $t8, 0x18($sp)
/* 1EC8 800012C8 27A40028 */  addiu      $a0, $sp, 0x28
/* 1ECC 800012CC 00002825 */  or         $a1, $zero, $zero
/* 1ED0 800012D0 00003025 */  or         $a2, $zero, $zero
/* 1ED4 800012D4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1ED8 800012D8 0C026DE4 */  jal        func_8009B790
/* 1EDC 800012DC AFAF0014 */   sw        $t7, 0x14($sp)
/* 1EE0 800012E0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1EE4 800012E4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1EE8 800012E8 03E00008 */  jr         $ra
/* 1EEC 800012EC 00000000 */   nop
