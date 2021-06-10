glabel func_800B5EE4
/* B6AE4 800B5EE4 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* B6AE8 800B5EE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6AEC 800B5EEC AFA400C8 */  sw         $a0, 0xc8($sp)
/* B6AF0 800B5EF0 AFB00018 */  sw         $s0, 0x18($sp)
/* B6AF4 800B5EF4 8FB000C8 */  lw         $s0, 0xc8($sp)
/* B6AF8 800B5EF8 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* B6AFC 800B5EFC 91CF0009 */  lbu        $t7, 9($t6)
/* B6B00 800B5F00 11E00003 */  beqz       $t7, .L800B5F10
/* B6B04 800B5F04 00000000 */   nop
/* B6B08 800B5F08 10000022 */  b          .L800B5F94
/* B6B0C 800B5F0C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5F10:
/* B6B10 800B5F10 44802000 */  mtc1       $zero, $f4
/* B6B14 800B5F14 00000000 */  nop
/* B6B18 800B5F18 E7A40020 */  swc1       $f4, 0x20($sp)
/* B6B1C 800B5F1C 0C02D9C3 */  jal        func_800B670C
/* B6B20 800B5F20 8E04000C */   lw        $a0, 0xc($s0)
/* B6B24 800B5F24 AFA20024 */  sw         $v0, 0x24($sp)
/* B6B28 800B5F28 8FB80024 */  lw         $t8, 0x24($sp)
/* B6B2C 800B5F2C 17000003 */  bnez       $t8, .L800B5F3C
/* B6B30 800B5F30 00000000 */   nop
/* B6B34 800B5F34 10000017 */  b          .L800B5F94
/* B6B38 800B5F38 2402FFFE */   addiu     $v0, $zero, -2
.L800B5F3C:
/* B6B3C 800B5F3C 8FA50024 */  lw         $a1, 0x24($sp)
/* B6B40 800B5F40 27A40028 */  addiu      $a0, $sp, 0x28
/* B6B44 800B5F44 24840010 */  addiu      $a0, $a0, 0x10
/* B6B48 800B5F48 24060020 */  addiu      $a2, $zero, 0x20
/* B6B4C 800B5F4C 0C02A484 */  jal        func_800A9210
/* B6B50 800B5F50 24A50130 */   addiu     $a1, $a1, 0x130
/* B6B54 800B5F54 8FB90024 */  lw         $t9, 0x24($sp)
/* B6B58 800B5F58 8F28012C */  lw         $t0, 0x12c($t9)
/* B6B5C 800B5F5C AFA800B8 */  sw         $t0, 0xb8($sp)
/* B6B60 800B5F60 92090004 */  lbu        $t1, 4($s0)
/* B6B64 800B5F64 A3A9002C */  sb         $t1, 0x2c($sp)
/* B6B68 800B5F68 A7A0002E */  sh         $zero, 0x2e($sp)
/* B6B6C 800B5F6C 8E0A000C */  lw         $t2, 0xc($s0)
/* B6B70 800B5F70 AFAA0034 */  sw         $t2, 0x34($sp)
/* B6B74 800B5F74 27A40028 */  addiu      $a0, $sp, 0x28
/* B6B78 800B5F78 24050098 */  addiu      $a1, $zero, 0x98
/* B6B7C 800B5F7C 0C026833 */  jal        func_8009A0CC
/* B6B80 800B5F80 24060001 */   addiu     $a2, $zero, 1
/* B6B84 800B5F84 10000003 */  b          .L800B5F94
/* B6B88 800B5F88 00001025 */   or        $v0, $zero, $zero
/* B6B8C 800B5F8C 10000001 */  b          .L800B5F94
/* B6B90 800B5F90 00000000 */   nop
.L800B5F94:
/* B6B94 800B5F94 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6B98 800B5F98 8FB00018 */  lw         $s0, 0x18($sp)
/* B6B9C 800B5F9C 27BD00C8 */  addiu      $sp, $sp, 0xc8
/* B6BA0 800B5FA0 03E00008 */  jr         $ra
/* B6BA4 800B5FA4 00000000 */   nop
