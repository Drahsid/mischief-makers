glabel func_800A8C60
/* A9860 800A8C60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9864 800A8C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9868 800A8C68 AFA40030 */  sw         $a0, 0x30($sp)
/* A986C 800A8C6C 8FAE0030 */  lw         $t6, 0x30($sp)
/* A9870 800A8C70 AFAE002C */  sw         $t6, 0x2c($sp)
/* A9874 800A8C74 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9878 800A8C78 91F80004 */  lbu        $t8, 4($t7)
/* A987C 800A8C7C A3B80020 */  sb         $t8, 0x20($sp)
/* A9880 800A8C80 A7A00022 */  sh         $zero, 0x22($sp)
/* A9884 800A8C84 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9888 800A8C88 8F28000C */  lw         $t0, 0xc($t9)
/* A988C 800A8C8C AFA80028 */  sw         $t0, 0x28($sp)
/* A9890 800A8C90 27A4001C */  addiu      $a0, $sp, 0x1c
/* A9894 800A8C94 24050010 */  addiu      $a1, $zero, 0x10
/* A9898 800A8C98 0C026833 */  jal        func_8009A0CC
/* A989C 800A8C9C 24060001 */   addiu     $a2, $zero, 1
/* A98A0 800A8CA0 10000003 */  b          .L800A8CB0
/* A98A4 800A8CA4 00001025 */   or        $v0, $zero, $zero
/* A98A8 800A8CA8 10000001 */  b          .L800A8CB0
/* A98AC 800A8CAC 00000000 */   nop
.L800A8CB0:
/* A98B0 800A8CB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A98B4 800A8CB4 27BD0030 */  addiu      $sp, $sp, 0x30
/* A98B8 800A8CB8 03E00008 */  jr         $ra
/* A98BC 800A8CBC 00000000 */   nop
