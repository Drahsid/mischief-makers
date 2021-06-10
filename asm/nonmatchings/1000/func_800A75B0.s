glabel func_800A75B0
/* A81B0 800A75B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A81B4 800A75B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A81B8 800A75B8 AFA40028 */  sw         $a0, 0x28($sp)
/* A81BC 800A75BC AFA5002C */  sw         $a1, 0x2c($sp)
/* A81C0 800A75C0 0C0297A4 */  jal        func_800A5E90
/* A81C4 800A75C4 00000000 */   nop
/* A81C8 800A75C8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A81CC 800A75CC 0C029EF8 */  jal        func_800A7BE0
/* A81D0 800A75D0 00000000 */   nop
/* A81D4 800A75D4 3C018018 */  lui        $at, %hi(D_80185700)
/* A81D8 800A75D8 AC225700 */  sw         $v0, %lo(D_80185700)($at)
/* A81DC 800A75DC 3C0E8018 */  lui        $t6, %hi(D_80185700)
/* A81E0 800A75E0 8DCE5700 */  lw         $t6, %lo(D_80185700)($t6)
/* A81E4 800A75E4 8FA9002C */  lw         $t1, 0x2c($sp)
/* A81E8 800A75E8 8FA80028 */  lw         $t0, 0x28($sp)
/* A81EC 800A75EC 01C0C825 */  or         $t9, $t6, $zero
/* A81F0 800A75F0 03295821 */  addu       $t3, $t9, $t1
/* A81F4 800A75F4 24180000 */  addiu      $t8, $zero, 0
/* A81F8 800A75F8 0169082B */  sltu       $at, $t3, $t1
/* A81FC 800A75FC 00385021 */  addu       $t2, $at, $t8
/* A8200 800A7600 01485021 */  addu       $t2, $t2, $t0
/* A8204 800A7604 AFAA0020 */  sw         $t2, 0x20($sp)
/* A8208 800A7608 AFAB0024 */  sw         $t3, 0x24($sp)
/* A820C 800A760C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A8210 800A7610 8FAC0020 */  lw         $t4, 0x20($sp)
/* A8214 800A7614 0C02D55C */  jal        func_800B5570
/* A8218 800A7618 01A02025 */   or        $a0, $t5, $zero
/* A821C 800A761C 0C0297AC */  jal        func_800A5EB0
/* A8220 800A7620 8FA4001C */   lw        $a0, 0x1c($sp)
/* A8224 800A7624 10000001 */  b          .L800A762C
/* A8228 800A7628 00000000 */   nop
.L800A762C:
/* A822C 800A762C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8230 800A7630 27BD0028 */  addiu      $sp, $sp, 0x28
/* A8234 800A7634 03E00008 */  jr         $ra
/* A8238 800A7638 00000000 */   nop
