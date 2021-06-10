glabel func_800B6068
/* B6C68 800B6068 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6C6C 800B606C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6C70 800B6070 AFA40020 */  sw         $a0, 0x20($sp)
/* B6C74 800B6074 0C02E998 */  jal        func_800BA660
/* B6C78 800B6078 00000000 */   nop
/* B6C7C 800B607C 10400003 */  beqz       $v0, .L800B608C
/* B6C80 800B6080 00000000 */   nop
/* B6C84 800B6084 10000011 */  b          .L800B60CC
/* B6C88 800B6088 00001025 */   or        $v0, $zero, $zero
.L800B608C:
/* B6C8C 800B608C 0C02D6AE */  jal        func_800B5AB8
/* B6C90 800B6090 00002025 */   or        $a0, $zero, $zero
/* B6C94 800B6094 2404002B */  addiu      $a0, $zero, 0x2b
/* B6C98 800B6098 0C02D664 */  jal        func_800B5990
/* B6C9C 800B609C 8FA50020 */   lw        $a1, 0x20($sp)
/* B6CA0 800B60A0 0C02E9B2 */  jal        func_800BA6C8
/* B6CA4 800B60A4 00000000 */   nop
/* B6CA8 800B60A8 0C02A45C */  jal        func_800A9170
/* B6CAC 800B60AC 3C040400 */   lui       $a0, 0x400
/* B6CB0 800B60B0 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6CB4 800B60B4 0C02D6DA */  jal        func_800B5B68
/* B6CB8 800B60B8 00002025 */   or        $a0, $zero, $zero
/* B6CBC 800B60BC 10000003 */  b          .L800B60CC
/* B6CC0 800B60C0 8FA2001C */   lw        $v0, 0x1c($sp)
/* B6CC4 800B60C4 10000001 */  b          .L800B60CC
/* B6CC8 800B60C8 00000000 */   nop
.L800B60CC:
/* B6CCC 800B60CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6CD0 800B60D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6CD4 800B60D4 03E00008 */  jr         $ra
/* B6CD8 800B60D8 00000000 */   nop
