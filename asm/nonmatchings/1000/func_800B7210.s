glabel func_800B7210
/* B7E10 800B7210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7E14 800B7214 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7E18 800B7218 AFA40018 */  sw         $a0, 0x18($sp)
/* B7E1C 800B721C AFA5001C */  sw         $a1, 0x1c($sp)
/* B7E20 800B7220 AFA60020 */  sw         $a2, 0x20($sp)
/* B7E24 800B7224 8FAE001C */  lw         $t6, 0x1c($sp)
/* B7E28 800B7228 8FAF0018 */  lw         $t7, 0x18($sp)
/* B7E2C 800B722C ADEE0000 */  sw         $t6, ($t7)
/* B7E30 800B7230 8FB80020 */  lw         $t8, 0x20($sp)
/* B7E34 800B7234 8FB90018 */  lw         $t9, 0x18($sp)
/* B7E38 800B7238 AF380010 */  sw         $t8, 0x10($t9)
/* B7E3C 800B723C 8FA80018 */  lw         $t0, 0x18($sp)
/* B7E40 800B7240 A500001A */  sh         $zero, 0x1a($t0)
/* B7E44 800B7244 8FA90018 */  lw         $t1, 0x18($sp)
/* B7E48 800B7248 AD20000C */  sw         $zero, 0xc($t1)
/* B7E4C 800B724C 8FAA001C */  lw         $t2, 0x1c($sp)
/* B7E50 800B7250 8FAB0018 */  lw         $t3, 0x18($sp)
/* B7E54 800B7254 AD6A0008 */  sw         $t2, 8($t3)
/* B7E58 800B7258 0C02DEC4 */  jal        func_800B7B10
/* B7E5C 800B725C 8FA40018 */   lw        $a0, 0x18($sp)
/* B7E60 800B7260 3C014D54 */  lui        $at, 0x4d54
/* B7E64 800B7264 34216864 */  ori        $at, $at, 0x6864
/* B7E68 800B7268 10410007 */  beq        $v0, $at, .L800B7288
/* B7E6C 800B726C 00000000 */   nop
/* B7E70 800B7270 24040072 */  addiu      $a0, $zero, 0x72
/* B7E74 800B7274 24050001 */  addiu      $a1, $zero, 1
/* B7E78 800B7278 0C0297B4 */  jal        func_800A5ED0
/* B7E7C 800B727C 8FA6001C */   lw        $a2, 0x1c($sp)
/* B7E80 800B7280 10000046 */  b          .L800B739C
/* B7E84 800B7284 00000000 */   nop
.L800B7288:
/* B7E88 800B7288 0C02DEC4 */  jal        func_800B7B10
/* B7E8C 800B728C 8FA40018 */   lw        $a0, 0x18($sp)
/* B7E90 800B7290 0C02DEAE */  jal        func_800B7AB8
/* B7E94 800B7294 8FA40018 */   lw        $a0, 0x18($sp)
/* B7E98 800B7298 10400007 */  beqz       $v0, .L800B72B8
/* B7E9C 800B729C 00000000 */   nop
/* B7EA0 800B72A0 24040073 */  addiu      $a0, $zero, 0x73
/* B7EA4 800B72A4 24050001 */  addiu      $a1, $zero, 1
/* B7EA8 800B72A8 0C0297B4 */  jal        func_800A5ED0
/* B7EAC 800B72AC 8FA6001C */   lw        $a2, 0x1c($sp)
/* B7EB0 800B72B0 1000003A */  b          .L800B739C
/* B7EB4 800B72B4 00000000 */   nop
.L800B72B8:
/* B7EB8 800B72B8 0C02DEAE */  jal        func_800B7AB8
/* B7EBC 800B72BC 8FA40018 */   lw        $a0, 0x18($sp)
/* B7EC0 800B72C0 24010001 */  addiu      $at, $zero, 1
/* B7EC4 800B72C4 10410007 */  beq        $v0, $at, .L800B72E4
/* B7EC8 800B72C8 00000000 */   nop
/* B7ECC 800B72CC 24040074 */  addiu      $a0, $zero, 0x74
/* B7ED0 800B72D0 24050001 */  addiu      $a1, $zero, 1
/* B7ED4 800B72D4 0C0297B4 */  jal        func_800A5ED0
/* B7ED8 800B72D8 8FA6001C */   lw        $a2, 0x1c($sp)
/* B7EDC 800B72DC 1000002F */  b          .L800B739C
/* B7EE0 800B72E0 00000000 */   nop
.L800B72E4:
/* B7EE4 800B72E4 0C02DEAE */  jal        func_800B7AB8
/* B7EE8 800B72E8 8FA40018 */   lw        $a0, 0x18($sp)
/* B7EEC 800B72EC 8FAC0018 */  lw         $t4, 0x18($sp)
/* B7EF0 800B72F0 A5820018 */  sh         $v0, 0x18($t4)
/* B7EF4 800B72F4 8FAD0018 */  lw         $t5, 0x18($sp)
/* B7EF8 800B72F8 85AE0018 */  lh         $t6, 0x18($t5)
/* B7EFC 800B72FC 31CF8000 */  andi       $t7, $t6, 0x8000
/* B7F00 800B7300 11E00007 */  beqz       $t7, .L800B7320
/* B7F04 800B7304 00000000 */   nop
/* B7F08 800B7308 24040075 */  addiu      $a0, $zero, 0x75
/* B7F0C 800B730C 24050001 */  addiu      $a1, $zero, 1
/* B7F10 800B7310 0C0297B4 */  jal        func_800A5ED0
/* B7F14 800B7314 8FA6001C */   lw        $a2, 0x1c($sp)
/* B7F18 800B7318 10000020 */  b          .L800B739C
/* B7F1C 800B731C 00000000 */   nop
.L800B7320:
/* B7F20 800B7320 8FB80018 */  lw         $t8, 0x18($sp)
/* B7F24 800B7324 3C013FF0 */  lui        $at, 0x3ff0
/* B7F28 800B7328 44812800 */  mtc1       $at, $f5
/* B7F2C 800B732C 87190018 */  lh         $t9, 0x18($t8)
/* B7F30 800B7330 44802000 */  mtc1       $zero, $f4
/* B7F34 800B7334 44993000 */  mtc1       $t9, $f6
/* B7F38 800B7338 00000000 */  nop
/* B7F3C 800B733C 46803220 */  cvt.s.w    $f8, $f6
/* B7F40 800B7340 460042A1 */  cvt.d.s    $f10, $f8
/* B7F44 800B7344 462A2403 */  div.d      $f16, $f4, $f10
/* B7F48 800B7348 462084A0 */  cvt.s.d    $f18, $f16
/* B7F4C 800B734C E7120014 */  swc1       $f18, 0x14($t8)
/* B7F50 800B7350 0C02DEC4 */  jal        func_800B7B10
/* B7F54 800B7354 8FA40018 */   lw        $a0, 0x18($sp)
/* B7F58 800B7358 3C014D54 */  lui        $at, 0x4d54
/* B7F5C 800B735C 3421726B */  ori        $at, $at, 0x726b
/* B7F60 800B7360 10410007 */  beq        $v0, $at, .L800B7380
/* B7F64 800B7364 00000000 */   nop
/* B7F68 800B7368 24040076 */  addiu      $a0, $zero, 0x76
/* B7F6C 800B736C 24050001 */  addiu      $a1, $zero, 1
/* B7F70 800B7370 0C0297B4 */  jal        func_800A5ED0
/* B7F74 800B7374 8FA6001C */   lw        $a2, 0x1c($sp)
/* B7F78 800B7378 10000008 */  b          .L800B739C
/* B7F7C 800B737C 00000000 */   nop
.L800B7380:
/* B7F80 800B7380 0C02DEC4 */  jal        func_800B7B10
/* B7F84 800B7384 8FA40018 */   lw        $a0, 0x18($sp)
/* B7F88 800B7388 8FA80018 */  lw         $t0, 0x18($sp)
/* B7F8C 800B738C 8D090008 */  lw         $t1, 8($t0)
/* B7F90 800B7390 AD090004 */  sw         $t1, 4($t0)
/* B7F94 800B7394 10000001 */  b          .L800B739C
/* B7F98 800B7398 00000000 */   nop
.L800B739C:
/* B7F9C 800B739C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7FA0 800B73A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7FA4 800B73A4 03E00008 */  jr         $ra
/* B7FA8 800B73A8 00000000 */   nop
