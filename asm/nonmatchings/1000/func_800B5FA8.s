glabel func_800B5FA8
/* B6BA8 800B5FA8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B6BAC 800B5FAC AFBF001C */  sw         $ra, 0x1c($sp)
/* B6BB0 800B5FB0 AFA40040 */  sw         $a0, 0x40($sp)
/* B6BB4 800B5FB4 AFB00018 */  sw         $s0, 0x18($sp)
/* B6BB8 800B5FB8 8FB00040 */  lw         $s0, 0x40($sp)
/* B6BBC 800B5FBC 8FAE0040 */  lw         $t6, 0x40($sp)
/* B6BC0 800B5FC0 91CF0009 */  lbu        $t7, 9($t6)
/* B6BC4 800B5FC4 11E00003 */  beqz       $t7, .L800B5FD4
/* B6BC8 800B5FC8 00000000 */   nop
/* B6BCC 800B5FCC 10000021 */  b          .L800B6054
/* B6BD0 800B5FD0 2402FFFE */   addiu     $v0, $zero, -2
.L800B5FD4:
/* B6BD4 800B5FD4 44802000 */  mtc1       $zero, $f4
/* B6BD8 800B5FD8 00000000 */  nop
/* B6BDC 800B5FDC E7A40024 */  swc1       $f4, 0x24($sp)
/* B6BE0 800B5FE0 0C02D9C3 */  jal        func_800B670C
/* B6BE4 800B5FE4 8E04000C */   lw        $a0, 0xc($s0)
/* B6BE8 800B5FE8 AFA20028 */  sw         $v0, 0x28($sp)
/* B6BEC 800B5FEC 8FB80028 */  lw         $t8, 0x28($sp)
/* B6BF0 800B5FF0 17000003 */  bnez       $t8, .L800B6000
/* B6BF4 800B5FF4 00000000 */   nop
/* B6BF8 800B5FF8 10000016 */  b          .L800B6054
/* B6BFC 800B5FFC 2402FFFE */   addiu     $v0, $zero, -2
.L800B6000:
/* B6C00 800B6000 8FA40028 */  lw         $a0, 0x28($sp)
/* B6C04 800B6004 26050010 */  addiu      $a1, $s0, 0x10
/* B6C08 800B6008 24060020 */  addiu      $a2, $zero, 0x20
/* B6C0C 800B600C 0C02A484 */  jal        func_800A9210
/* B6C10 800B6010 24840130 */   addiu     $a0, $a0, 0x130
/* B6C14 800B6014 8E190090 */  lw         $t9, 0x90($s0)
/* B6C18 800B6018 8FA80028 */  lw         $t0, 0x28($sp)
/* B6C1C 800B601C AD19012C */  sw         $t9, 0x12c($t0)
/* B6C20 800B6020 8E09000C */  lw         $t1, 0xc($s0)
/* B6C24 800B6024 AFA90038 */  sw         $t1, 0x38($sp)
/* B6C28 800B6028 920A0004 */  lbu        $t2, 4($s0)
/* B6C2C 800B602C A3AA0030 */  sb         $t2, 0x30($sp)
/* B6C30 800B6030 A7A00032 */  sh         $zero, 0x32($sp)
/* B6C34 800B6034 27A4002C */  addiu      $a0, $sp, 0x2c
/* B6C38 800B6038 24050010 */  addiu      $a1, $zero, 0x10
/* B6C3C 800B603C 0C026833 */  jal        func_8009A0CC
/* B6C40 800B6040 24060001 */   addiu     $a2, $zero, 1
/* B6C44 800B6044 10000003 */  b          .L800B6054
/* B6C48 800B6048 00001025 */   or        $v0, $zero, $zero
/* B6C4C 800B604C 10000001 */  b          .L800B6054
/* B6C50 800B6050 00000000 */   nop
.L800B6054:
/* B6C54 800B6054 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6C58 800B6058 8FB00018 */  lw         $s0, 0x18($sp)
/* B6C5C 800B605C 27BD0040 */  addiu      $sp, $sp, 0x40
/* B6C60 800B6060 03E00008 */  jr         $ra
/* B6C64 800B6064 00000000 */   nop
