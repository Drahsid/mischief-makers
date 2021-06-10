glabel func_800B1E50
/* B2A50 800B1E50 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B2A54 800B1E54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2A58 800B1E58 AFA40038 */  sw         $a0, 0x38($sp)
/* B2A5C 800B1E5C AFA5003C */  sw         $a1, 0x3c($sp)
/* B2A60 800B1E60 AFA60040 */  sw         $a2, 0x40($sp)
/* B2A64 800B1E64 AFA70044 */  sw         $a3, 0x44($sp)
/* B2A68 800B1E68 8FAE0048 */  lw         $t6, 0x48($sp)
/* B2A6C 800B1E6C AFAE0034 */  sw         $t6, 0x34($sp)
/* B2A70 800B1E70 8FAF0038 */  lw         $t7, 0x38($sp)
/* B2A74 800B1E74 AFAF0030 */  sw         $t7, 0x30($sp)
/* B2A78 800B1E78 8FB80030 */  lw         $t8, 0x30($sp)
/* B2A7C 800B1E7C 8F19001C */  lw         $t9, 0x1c($t8)
/* B2A80 800B1E80 AFB9002C */  sw         $t9, 0x2c($sp)
/* B2A84 800B1E84 8FA80034 */  lw         $t0, 0x34($sp)
/* B2A88 800B1E88 25090008 */  addiu      $t1, $t0, 8
/* B2A8C 800B1E8C AFA90034 */  sw         $t1, 0x34($sp)
/* B2A90 800B1E90 AFA80024 */  sw         $t0, 0x24($sp)
/* B2A94 800B1E94 8FAB0024 */  lw         $t3, 0x24($sp)
/* B2A98 800B1E98 3C0A0200 */  lui        $t2, 0x200
/* B2A9C 800B1E9C 354A06C0 */  ori        $t2, $t2, 0x6c0
/* B2AA0 800B1EA0 AD6A0000 */  sw         $t2, ($t3)
/* B2AA4 800B1EA4 8FAC0040 */  lw         $t4, 0x40($sp)
/* B2AA8 800B1EA8 8FAE0024 */  lw         $t6, 0x24($sp)
/* B2AAC 800B1EAC 000C6840 */  sll        $t5, $t4, 1
/* B2AB0 800B1EB0 ADCD0004 */  sw         $t5, 4($t6)
/* B2AB4 800B1EB4 8FAF0034 */  lw         $t7, 0x34($sp)
/* B2AB8 800B1EB8 25F80008 */  addiu      $t8, $t7, 8
/* B2ABC 800B1EBC AFB80034 */  sw         $t8, 0x34($sp)
/* B2AC0 800B1EC0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B2AC4 800B1EC4 8FA80020 */  lw         $t0, 0x20($sp)
/* B2AC8 800B1EC8 3C190200 */  lui        $t9, 0x200
/* B2ACC 800B1ECC 37390800 */  ori        $t9, $t9, 0x800
/* B2AD0 800B1ED0 AD190000 */  sw         $t9, ($t0)
/* B2AD4 800B1ED4 8FA90040 */  lw         $t1, 0x40($sp)
/* B2AD8 800B1ED8 8FAB0020 */  lw         $t3, 0x20($sp)
/* B2ADC 800B1EDC 00095040 */  sll        $t2, $t1, 1
/* B2AE0 800B1EE0 AD6A0004 */  sw         $t2, 4($t3)
/* B2AE4 800B1EE4 8FAC0030 */  lw         $t4, 0x30($sp)
/* B2AE8 800B1EE8 AFA00028 */  sw         $zero, 0x28($sp)
/* B2AEC 800B1EEC 8D8D0014 */  lw         $t5, 0x14($t4)
/* B2AF0 800B1EF0 19A00017 */  blez       $t5, .L800B1F50
/* B2AF4 800B1EF4 00000000 */   nop
.L800B1EF8:
/* B2AF8 800B1EF8 8FAF0028 */  lw         $t7, 0x28($sp)
/* B2AFC 800B1EFC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B2B00 800B1F00 8FA90034 */  lw         $t1, 0x34($sp)
/* B2B04 800B1F04 000FC080 */  sll        $t8, $t7, 2
/* B2B08 800B1F08 01D8C821 */  addu       $t9, $t6, $t8
/* B2B0C 800B1F0C 8F280000 */  lw         $t0, ($t9)
/* B2B10 800B1F10 AFA90010 */  sw         $t1, 0x10($sp)
/* B2B14 800B1F14 8FA5003C */  lw         $a1, 0x3c($sp)
/* B2B18 800B1F18 8D190004 */  lw         $t9, 4($t0)
/* B2B1C 800B1F1C 8FA60040 */  lw         $a2, 0x40($sp)
/* B2B20 800B1F20 8FA70044 */  lw         $a3, 0x44($sp)
/* B2B24 800B1F24 0320F809 */  jalr       $t9
/* B2B28 800B1F28 01002025 */   or        $a0, $t0, $zero
/* B2B2C 800B1F2C AFA20034 */  sw         $v0, 0x34($sp)
/* B2B30 800B1F30 8FAA0028 */  lw         $t2, 0x28($sp)
/* B2B34 800B1F34 8FAC0030 */  lw         $t4, 0x30($sp)
/* B2B38 800B1F38 254B0001 */  addiu      $t3, $t2, 1
/* B2B3C 800B1F3C AFAB0028 */  sw         $t3, 0x28($sp)
/* B2B40 800B1F40 8D8D0014 */  lw         $t5, 0x14($t4)
/* B2B44 800B1F44 016D082A */  slt        $at, $t3, $t5
/* B2B48 800B1F48 1420FFEB */  bnez       $at, .L800B1EF8
/* B2B4C 800B1F4C 00000000 */   nop
.L800B1F50:
/* B2B50 800B1F50 10000003 */  b          .L800B1F60
/* B2B54 800B1F54 8FA20034 */   lw        $v0, 0x34($sp)
/* B2B58 800B1F58 10000001 */  b          .L800B1F60
/* B2B5C 800B1F5C 00000000 */   nop
.L800B1F60:
/* B2B60 800B1F60 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2B64 800B1F64 27BD0038 */  addiu      $sp, $sp, 0x38
/* B2B68 800B1F68 03E00008 */  jr         $ra
/* B2B6C 800B1F6C 00000000 */   nop
