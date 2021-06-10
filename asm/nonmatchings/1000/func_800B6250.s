glabel func_800B6250
/* B6E50 800B6250 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B6E54 800B6254 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6E58 800B6258 AFA40038 */  sw         $a0, 0x38($sp)
/* B6E5C 800B625C AFB10018 */  sw         $s1, 0x18($sp)
/* B6E60 800B6260 AFB00014 */  sw         $s0, 0x14($sp)
/* B6E64 800B6264 8FB00038 */  lw         $s0, 0x38($sp)
/* B6E68 800B6268 0C02E998 */  jal        func_800BA660
/* B6E6C 800B626C 00000000 */   nop
/* B6E70 800B6270 10400003 */  beqz       $v0, .L800B6280
/* B6E74 800B6274 00000000 */   nop
/* B6E78 800B6278 10000038 */  b          .L800B635C
/* B6E7C 800B627C 2402FFFC */   addiu     $v0, $zero, -4
.L800B6280:
/* B6E80 800B6280 0C02D6AE */  jal        func_800B5AB8
/* B6E84 800B6284 00002025 */   or        $a0, $zero, $zero
/* B6E88 800B6288 00008825 */  or         $s1, $zero, $zero
/* B6E8C 800B628C 2A210020 */  slti       $at, $s1, 0x20
/* B6E90 800B6290 1020000F */  beqz       $at, .L800B62D0
/* B6E94 800B6294 00000000 */   nop
.L800B6298:
/* B6E98 800B6298 00117080 */  sll        $t6, $s1, 2
/* B6E9C 800B629C 020E7821 */  addu       $t7, $s0, $t6
/* B6EA0 800B62A0 8DE50010 */  lw         $a1, 0x10($t7)
/* B6EA4 800B62A4 0C02A448 */  jal        func_800A9120
/* B6EA8 800B62A8 3C040400 */   lui       $a0, 0x400
/* B6EAC 800B62AC 24040023 */  addiu      $a0, $zero, 0x23
/* B6EB0 800B62B0 0C02D664 */  jal        func_800B5990
/* B6EB4 800B62B4 02202825 */   or        $a1, $s1, $zero
/* B6EB8 800B62B8 0C02E9B2 */  jal        func_800BA6C8
/* B6EBC 800B62BC 00000000 */   nop
/* B6EC0 800B62C0 26310001 */  addiu      $s1, $s1, 1
/* B6EC4 800B62C4 2A210020 */  slti       $at, $s1, 0x20
/* B6EC8 800B62C8 1420FFF3 */  bnez       $at, .L800B6298
/* B6ECC 800B62CC 00000000 */   nop
.L800B62D0:
/* B6ED0 800B62D0 0C02D6DA */  jal        func_800B5B68
/* B6ED4 800B62D4 00002025 */   or        $a0, $zero, $zero
/* B6ED8 800B62D8 3C040404 */  lui        $a0, 0x404
/* B6EDC 800B62DC 34840004 */  ori        $a0, $a0, 4
/* B6EE0 800B62E0 0C02A448 */  jal        func_800A9120
/* B6EE4 800B62E4 8E050090 */   lw        $a1, 0x90($s0)
/* B6EE8 800B62E8 3C040404 */  lui        $a0, 0x404
/* B6EEC 800B62EC 0C02A448 */  jal        func_800A9120
/* B6EF0 800B62F0 8E050094 */   lw        $a1, 0x94($s0)
/* B6EF4 800B62F4 8E05009C */  lw         $a1, 0x9c($s0)
/* B6EF8 800B62F8 3C040408 */  lui        $a0, 0x408
/* B6EFC 800B62FC 30B80FFF */  andi       $t8, $a1, 0xfff
/* B6F00 800B6300 0C02A448 */  jal        func_800A9120
/* B6F04 800B6304 03002825 */   or        $a1, $t8, $zero
/* B6F08 800B6308 3C040404 */  lui        $a0, 0x404
/* B6F0C 800B630C 3484000C */  ori        $a0, $a0, 0xc
/* B6F10 800B6310 0C02A448 */  jal        func_800A9120
/* B6F14 800B6314 8E0500A0 */   lw        $a1, 0xa0($s0)
/* B6F18 800B6318 3C040404 */  lui        $a0, 0x404
/* B6F1C 800B631C 34840010 */  ori        $a0, $a0, 0x10
/* B6F20 800B6320 0C02A448 */  jal        func_800A9120
/* B6F24 800B6324 8E0500A4 */   lw        $a1, 0xa4($s0)
/* B6F28 800B6328 8E19000C */  lw         $t9, 0xc($s0)
/* B6F2C 800B632C AFB90030 */  sw         $t9, 0x30($sp)
/* B6F30 800B6330 92080004 */  lbu        $t0, 4($s0)
/* B6F34 800B6334 A3A80028 */  sb         $t0, 0x28($sp)
/* B6F38 800B6338 A7A0002A */  sh         $zero, 0x2a($sp)
/* B6F3C 800B633C 27A40024 */  addiu      $a0, $sp, 0x24
/* B6F40 800B6340 24050010 */  addiu      $a1, $zero, 0x10
/* B6F44 800B6344 0C026833 */  jal        func_8009A0CC
/* B6F48 800B6348 24060001 */   addiu     $a2, $zero, 1
/* B6F4C 800B634C 10000003 */  b          .L800B635C
/* B6F50 800B6350 00001025 */   or        $v0, $zero, $zero
/* B6F54 800B6354 10000001 */  b          .L800B635C
/* B6F58 800B6358 00000000 */   nop
.L800B635C:
/* B6F5C 800B635C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6F60 800B6360 8FB00014 */  lw         $s0, 0x14($sp)
/* B6F64 800B6364 8FB10018 */  lw         $s1, 0x18($sp)
/* B6F68 800B6368 03E00008 */  jr         $ra
/* B6F6C 800B636C 27BD0038 */   addiu     $sp, $sp, 0x38
