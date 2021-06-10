glabel func_800A987C
/* AA47C 800A987C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AA480 800A9880 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA484 800A9884 AFA40030 */  sw         $a0, 0x30($sp)
/* AA488 800A9888 8FAE0030 */  lw         $t6, 0x30($sp)
/* AA48C 800A988C AFAE002C */  sw         $t6, 0x2c($sp)
/* AA490 800A9890 8FAF002C */  lw         $t7, 0x2c($sp)
/* AA494 800A9894 91F80004 */  lbu        $t8, 4($t7)
/* AA498 800A9898 A3B8001C */  sb         $t8, 0x1c($sp)
/* AA49C 800A989C A7A0001E */  sh         $zero, 0x1e($sp)
/* AA4A0 800A98A0 8FB9002C */  lw         $t9, 0x2c($sp)
/* AA4A4 800A98A4 8F28000C */  lw         $t0, 0xc($t9)
/* AA4A8 800A98A8 AFA80024 */  sw         $t0, 0x24($sp)
/* AA4AC 800A98AC 8FA90030 */  lw         $t1, 0x30($sp)
/* AA4B0 800A98B0 24010001 */  addiu      $at, $zero, 1
/* AA4B4 800A98B4 912A0009 */  lbu        $t2, 9($t1)
/* AA4B8 800A98B8 15410004 */  bne        $t2, $at, .L800A98CC
/* AA4BC 800A98BC 00000000 */   nop
/* AA4C0 800A98C0 240B0002 */  addiu      $t3, $zero, 2
/* AA4C4 800A98C4 10000003 */  b          .L800A98D4
/* AA4C8 800A98C8 AFAB0028 */   sw        $t3, 0x28($sp)
.L800A98CC:
/* AA4CC 800A98CC 240C0005 */  addiu      $t4, $zero, 5
/* AA4D0 800A98D0 AFAC0028 */  sw         $t4, 0x28($sp)
.L800A98D4:
/* AA4D4 800A98D4 27A40018 */  addiu      $a0, $sp, 0x18
/* AA4D8 800A98D8 24050014 */  addiu      $a1, $zero, 0x14
/* AA4DC 800A98DC 0C026833 */  jal        func_8009A0CC
/* AA4E0 800A98E0 24060001 */   addiu     $a2, $zero, 1
/* AA4E4 800A98E4 10000003 */  b          .L800A98F4
/* AA4E8 800A98E8 00001025 */   or        $v0, $zero, $zero
/* AA4EC 800A98EC 10000001 */  b          .L800A98F4
/* AA4F0 800A98F0 00000000 */   nop
.L800A98F4:
/* AA4F4 800A98F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA4F8 800A98F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* AA4FC 800A98FC 03E00008 */  jr         $ra
/* AA500 800A9900 00000000 */   nop
