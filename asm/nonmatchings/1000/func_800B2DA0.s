glabel func_800B2DA0
/* B39A0 800B2DA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B39A4 800B2DA4 E7AC0040 */  swc1       $f12, 0x40($sp)
/* B39A8 800B2DA8 27AE0040 */  addiu      $t6, $sp, 0x40
/* B39AC 800B2DAC 8DCF0000 */  lw         $t7, ($t6)
/* B39B0 800B2DB0 AFAF0004 */  sw         $t7, 4($sp)
/* B39B4 800B2DB4 8FB80004 */  lw         $t8, 4($sp)
/* B39B8 800B2DB8 0018CD83 */  sra        $t9, $t8, 0x16
/* B39BC 800B2DBC AFB90000 */  sw         $t9, ($sp)
/* B39C0 800B2DC0 8FA80000 */  lw         $t0, ($sp)
/* B39C4 800B2DC4 310901FF */  andi       $t1, $t0, 0x1ff
/* B39C8 800B2DC8 AFA90000 */  sw         $t1, ($sp)
/* B39CC 800B2DCC 8FAA0000 */  lw         $t2, ($sp)
/* B39D0 800B2DD0 29410136 */  slti       $at, $t2, 0x136
/* B39D4 800B2DD4 10200070 */  beqz       $at, .L800B2F98
/* B39D8 800B2DD8 00000000 */   nop
/* B39DC 800B2DDC C7A40040 */  lwc1       $f4, 0x40($sp)
/* B39E0 800B2DE0 44803000 */  mtc1       $zero, $f6
/* B39E4 800B2DE4 00000000 */  nop
/* B39E8 800B2DE8 4604303C */  c.lt.s     $f6, $f4
/* B39EC 800B2DEC 00000000 */  nop
/* B39F0 800B2DF0 45000003 */  bc1f       .L800B2E00
/* B39F4 800B2DF4 00000000 */   nop
/* B39F8 800B2DF8 10000004 */  b          .L800B2E0C
/* B39FC 800B2DFC E7A4003C */   swc1      $f4, 0x3c($sp)
.L800B2E00:
/* B3A00 800B2E00 C7A80040 */  lwc1       $f8, 0x40($sp)
/* B3A04 800B2E04 46004287 */  neg.s      $f10, $f8
/* B3A08 800B2E08 E7AA003C */  swc1       $f10, 0x3c($sp)
.L800B2E0C:
/* B3A0C 800B2E0C C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B3A10 800B2E10 460084A1 */  cvt.d.s    $f18, $f16
/* B3A14 800B2E14 F7B20030 */  sdc1       $f18, 0x30($sp)
/* B3A18 800B2E18 3C01800F */  lui        $at, %hi(D_800EE648)
/* B3A1C 800B2E1C D424E648 */  ldc1       $f4, %lo(D_800EE648)($at)
/* B3A20 800B2E20 D7A60030 */  ldc1       $f6, 0x30($sp)
/* B3A24 800B2E24 3C013FE0 */  lui        $at, 0x3fe0
/* B3A28 800B2E28 44815800 */  mtc1       $at, $f11
/* B3A2C 800B2E2C 46243202 */  mul.d      $f8, $f6, $f4
/* B3A30 800B2E30 44805000 */  mtc1       $zero, $f10
/* B3A34 800B2E34 00000000 */  nop
/* B3A38 800B2E38 462A4400 */  add.d      $f16, $f8, $f10
/* B3A3C 800B2E3C F7B00018 */  sdc1       $f16, 0x18($sp)
/* B3A40 800B2E40 D7B20018 */  ldc1       $f18, 0x18($sp)
/* B3A44 800B2E44 44803800 */  mtc1       $zero, $f7
/* B3A48 800B2E48 44803000 */  mtc1       $zero, $f6
/* B3A4C 800B2E4C 00000000 */  nop
/* B3A50 800B2E50 4632303E */  c.le.d     $f6, $f18
/* B3A54 800B2E54 00000000 */  nop
/* B3A58 800B2E58 45000009 */  bc1f       .L800B2E80
/* B3A5C 800B2E5C 00000000 */   nop
/* B3A60 800B2E60 3C013FE0 */  lui        $at, 0x3fe0
/* B3A64 800B2E64 44812800 */  mtc1       $at, $f5
/* B3A68 800B2E68 44802000 */  mtc1       $zero, $f4
/* B3A6C 800B2E6C 00000000 */  nop
/* B3A70 800B2E70 46249200 */  add.d      $f8, $f18, $f4
/* B3A74 800B2E74 4620428D */  trunc.w.d  $f10, $f8
/* B3A78 800B2E78 10000009 */  b          .L800B2EA0
/* B3A7C 800B2E7C E7AA0014 */   swc1      $f10, 0x14($sp)
.L800B2E80:
/* B3A80 800B2E80 3C013FE0 */  lui        $at, 0x3fe0
/* B3A84 800B2E84 44813800 */  mtc1       $at, $f7
/* B3A88 800B2E88 D7B00018 */  ldc1       $f16, 0x18($sp)
/* B3A8C 800B2E8C 44803000 */  mtc1       $zero, $f6
/* B3A90 800B2E90 00000000 */  nop
/* B3A94 800B2E94 46268481 */  sub.d      $f18, $f16, $f6
/* B3A98 800B2E98 4620910D */  trunc.w.d  $f4, $f18
/* B3A9C 800B2E9C E7A40014 */  swc1       $f4, 0x14($sp)
.L800B2EA0:
/* B3AA0 800B2EA0 8FAD0014 */  lw         $t5, 0x14($sp)
/* B3AA4 800B2EA4 448D4000 */  mtc1       $t5, $f8
/* B3AA8 800B2EA8 00000000 */  nop
/* B3AAC 800B2EAC 468042A1 */  cvt.d.w    $f10, $f8
/* B3AB0 800B2EB0 F7AA0018 */  sdc1       $f10, 0x18($sp)
/* B3AB4 800B2EB4 3C013FE0 */  lui        $at, 0x3fe0
/* B3AB8 800B2EB8 44813800 */  mtc1       $at, $f7
/* B3ABC 800B2EBC D7B00018 */  ldc1       $f16, 0x18($sp)
/* B3AC0 800B2EC0 44803000 */  mtc1       $zero, $f6
/* B3AC4 800B2EC4 00000000 */  nop
/* B3AC8 800B2EC8 46268481 */  sub.d      $f18, $f16, $f6
/* B3ACC 800B2ECC F7B20018 */  sdc1       $f18, 0x18($sp)
/* B3AD0 800B2ED0 3C01800F */  lui        $at, %hi(D_800EE650)
/* B3AD4 800B2ED4 D428E650 */  ldc1       $f8, %lo(D_800EE650)($at)
/* B3AD8 800B2ED8 D7A40018 */  ldc1       $f4, 0x18($sp)
/* B3ADC 800B2EDC D7B00030 */  ldc1       $f16, 0x30($sp)
/* B3AE0 800B2EE0 46282282 */  mul.d      $f10, $f4, $f8
/* B3AE4 800B2EE4 462A8181 */  sub.d      $f6, $f16, $f10
/* B3AE8 800B2EE8 F7A60030 */  sdc1       $f6, 0x30($sp)
/* B3AEC 800B2EEC 3C01800F */  lui        $at, %hi(D_800EE658)
/* B3AF0 800B2EF0 D424E658 */  ldc1       $f4, %lo(D_800EE658)($at)
/* B3AF4 800B2EF4 D7B20018 */  ldc1       $f18, 0x18($sp)
/* B3AF8 800B2EF8 D7B00030 */  ldc1       $f16, 0x30($sp)
/* B3AFC 800B2EFC 46249202 */  mul.d      $f8, $f18, $f4
/* B3B00 800B2F00 46288281 */  sub.d      $f10, $f16, $f8
/* B3B04 800B2F04 F7AA0030 */  sdc1       $f10, 0x30($sp)
/* B3B08 800B2F08 D7A60030 */  ldc1       $f6, 0x30($sp)
/* B3B0C 800B2F0C 46263482 */  mul.d      $f18, $f6, $f6
/* B3B10 800B2F10 F7B20028 */  sdc1       $f18, 0x28($sp)
/* B3B14 800B2F14 3C0E800F */  lui        $t6, %hi(D_800EE620)
/* B3B18 800B2F18 25CEE620 */  addiu      $t6, $t6, %lo(D_800EE620)
/* B3B1C 800B2F1C D5C40020 */  ldc1       $f4, 0x20($t6)
/* B3B20 800B2F20 D7B00028 */  ldc1       $f16, 0x28($sp)
/* B3B24 800B2F24 D5CA0018 */  ldc1       $f10, 0x18($t6)
/* B3B28 800B2F28 46302202 */  mul.d      $f8, $f4, $f16
/* B3B2C 800B2F2C D5C40010 */  ldc1       $f4, 0x10($t6)
/* B3B30 800B2F30 462A4180 */  add.d      $f6, $f8, $f10
/* B3B34 800B2F34 46303482 */  mul.d      $f18, $f6, $f16
/* B3B38 800B2F38 D5C60008 */  ldc1       $f6, 8($t6)
/* B3B3C 800B2F3C 46249200 */  add.d      $f8, $f18, $f4
/* B3B40 800B2F40 46304282 */  mul.d      $f10, $f8, $f16
/* B3B44 800B2F44 462A3480 */  add.d      $f18, $f6, $f10
/* B3B48 800B2F48 F7B20020 */  sdc1       $f18, 0x20($sp)
/* B3B4C 800B2F4C D7A40030 */  ldc1       $f4, 0x30($sp)
/* B3B50 800B2F50 D7A80028 */  ldc1       $f8, 0x28($sp)
/* B3B54 800B2F54 D7A60020 */  ldc1       $f6, 0x20($sp)
/* B3B58 800B2F58 46282402 */  mul.d      $f16, $f4, $f8
/* B3B5C 800B2F5C 00000000 */  nop
/* B3B60 800B2F60 46268282 */  mul.d      $f10, $f16, $f6
/* B3B64 800B2F64 46245480 */  add.d      $f18, $f10, $f4
/* B3B68 800B2F68 F7B20008 */  sdc1       $f18, 8($sp)
/* B3B6C 800B2F6C 8FAF0014 */  lw         $t7, 0x14($sp)
/* B3B70 800B2F70 31F80001 */  andi       $t8, $t7, 1
/* B3B74 800B2F74 17000004 */  bnez       $t8, .L800B2F88
/* B3B78 800B2F78 00000000 */   nop
/* B3B7C 800B2F7C D7A80008 */  ldc1       $f8, 8($sp)
/* B3B80 800B2F80 10000012 */  b          .L800B2FCC
/* B3B84 800B2F84 46204020 */   cvt.s.d   $f0, $f8
.L800B2F88:
/* B3B88 800B2F88 D7B00008 */  ldc1       $f16, 8($sp)
/* B3B8C 800B2F8C 46208020 */  cvt.s.d    $f0, $f16
/* B3B90 800B2F90 1000000E */  b          .L800B2FCC
/* B3B94 800B2F94 46000007 */   neg.s     $f0, $f0
.L800B2F98:
/* B3B98 800B2F98 C7A60040 */  lwc1       $f6, 0x40($sp)
/* B3B9C 800B2F9C 46063032 */  c.eq.s     $f6, $f6
/* B3BA0 800B2FA0 00000000 */  nop
/* B3BA4 800B2FA4 45010004 */  bc1t       .L800B2FB8
/* B3BA8 800B2FA8 00000000 */   nop
/* B3BAC 800B2FAC 3C01800F */  lui        $at, %hi(D_800EE9A0)
/* B3BB0 800B2FB0 10000006 */  b          .L800B2FCC
/* B3BB4 800B2FB4 C420E9A0 */   lwc1      $f0, %lo(D_800EE9A0)($at)
.L800B2FB8:
/* B3BB8 800B2FB8 3C01800F */  lui        $at, %hi(D_800EE660)
/* B3BBC 800B2FBC 10000003 */  b          .L800B2FCC
/* B3BC0 800B2FC0 C420E660 */   lwc1      $f0, %lo(D_800EE660)($at)
/* B3BC4 800B2FC4 10000001 */  b          .L800B2FCC
/* B3BC8 800B2FC8 00000000 */   nop
.L800B2FCC:
/* B3BCC 800B2FCC 03E00008 */  jr         $ra
/* B3BD0 800B2FD0 27BD0040 */   addiu     $sp, $sp, 0x40
/* B3BD4 800B2FD4 00000000 */  nop
/* B3BD8 800B2FD8 00000000 */  nop
/* B3BDC 800B2FDC 00000000 */  nop
