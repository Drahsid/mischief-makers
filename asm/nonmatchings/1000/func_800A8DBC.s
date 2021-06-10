glabel func_800A8DBC
/* A99BC 800A8DBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A99C0 800A8DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A99C4 800A8DC4 AFA40028 */  sw         $a0, 0x28($sp)
/* A99C8 800A8DC8 8FAE0028 */  lw         $t6, 0x28($sp)
/* A99CC 800A8DCC 91CF0004 */  lbu        $t7, 4($t6)
/* A99D0 800A8DD0 A3AF001C */  sb         $t7, 0x1c($sp)
/* A99D4 800A8DD4 AFA00024 */  sw         $zero, 0x24($sp)
/* A99D8 800A8DD8 A7A0001E */  sh         $zero, 0x1e($sp)
/* A99DC 800A8DDC 27A40018 */  addiu      $a0, $sp, 0x18
/* A99E0 800A8DE0 24050010 */  addiu      $a1, $zero, 0x10
/* A99E4 800A8DE4 0C026833 */  jal        func_8009A0CC
/* A99E8 800A8DE8 24060001 */   addiu     $a2, $zero, 1
/* A99EC 800A8DEC 10000003 */  b          .L800A8DFC
/* A99F0 800A8DF0 00001025 */   or        $v0, $zero, $zero
/* A99F4 800A8DF4 10000001 */  b          .L800A8DFC
/* A99F8 800A8DF8 00000000 */   nop
.L800A8DFC:
/* A99FC 800A8DFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9A00 800A8E00 27BD0028 */  addiu      $sp, $sp, 0x28
/* A9A04 800A8E04 03E00008 */  jr         $ra
/* A9A08 800A8E08 00000000 */   nop
/* A9A0C 800A8E0C 00000000 */  nop
