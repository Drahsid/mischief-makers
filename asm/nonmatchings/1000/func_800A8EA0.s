glabel func_800A8EA0
/* A9AA0 800A8EA0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9AA4 800A8EA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9AA8 800A8EA8 AFB00018 */  sw         $s0, 0x18($sp)
/* A9AAC 800A8EAC AFA0002C */  sw         $zero, 0x2c($sp)
/* A9AB0 800A8EB0 8FAE002C */  lw         $t6, 0x2c($sp)
/* A9AB4 800A8EB4 1DC0000C */  bgtz       $t6, .L800A8EE8
/* A9AB8 800A8EB8 00000000 */   nop
.L800A8EBC:
/* A9ABC 800A8EBC 27A40028 */  addiu      $a0, $sp, 0x28
/* A9AC0 800A8EC0 24050001 */  addiu      $a1, $zero, 1
/* A9AC4 800A8EC4 0C02A254 */  jal        func_800A8950
/* A9AC8 800A8EC8 2406000A */   addiu     $a2, $zero, 0xa
/* A9ACC 800A8ECC 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9AD0 800A8ED0 00408025 */  or         $s0, $v0, $zero
/* A9AD4 800A8ED4 01F0C021 */  addu       $t8, $t7, $s0
/* A9AD8 800A8ED8 AFB8002C */  sw         $t8, 0x2c($sp)
/* A9ADC 800A8EDC 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9AE0 800A8EE0 1B20FFF6 */  blez       $t9, .L800A8EBC
/* A9AE4 800A8EE4 00000000 */   nop
.L800A8EE8:
/* A9AE8 800A8EE8 10000001 */  b          .L800A8EF0
/* A9AEC 800A8EEC 00000000 */   nop
.L800A8EF0:
/* A9AF0 800A8EF0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9AF4 800A8EF4 8FB00018 */  lw         $s0, 0x18($sp)
/* A9AF8 800A8EF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9AFC 800A8EFC 03E00008 */  jr         $ra
/* A9B00 800A8F00 00000000 */   nop
