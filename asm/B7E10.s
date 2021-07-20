.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

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

glabel func_800B73AC
/* B7FAC 800B73AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7FB0 800B73B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7FB4 800B73B4 AFA40030 */  sw         $a0, 0x30($sp)
/* B7FB8 800B73B8 AFA50034 */  sw         $a1, 0x34($sp)
/* B7FBC 800B73BC 8FAE0030 */  lw         $t6, 0x30($sp)
/* B7FC0 800B73C0 8DD80000 */  lw         $t8, ($t6)
/* B7FC4 800B73C4 8DD90010 */  lw         $t9, 0x10($t6)
/* B7FC8 800B73C8 8DCF0008 */  lw         $t7, 8($t6)
/* B7FCC 800B73CC 03194021 */  addu       $t0, $t8, $t9
/* B7FD0 800B73D0 01E8082B */  sltu       $at, $t7, $t0
/* B7FD4 800B73D4 14200004 */  bnez       $at, .L800B73E8
/* B7FD8 800B73D8 00000000 */   nop
/* B7FDC 800B73DC 24040083 */  addiu      $a0, $zero, 0x83
/* B7FE0 800B73E0 0C0297B4 */  jal        func_800A5ED0
/* B7FE4 800B73E4 00002825 */   or        $a1, $zero, $zero
.L800B73E8:
/* B7FE8 800B73E8 0C02DEEC */  jal        func_800B7BB0
/* B7FEC 800B73EC 8FA40030 */   lw        $a0, 0x30($sp)
/* B7FF0 800B73F0 AFA20024 */  sw         $v0, 0x24($sp)
/* B7FF4 800B73F4 8FA90030 */  lw         $t1, 0x30($sp)
/* B7FF8 800B73F8 8FAB0024 */  lw         $t3, 0x24($sp)
/* B7FFC 800B73FC 8D2A000C */  lw         $t2, 0xc($t1)
/* B8000 800B7400 014B6021 */  addu       $t4, $t2, $t3
/* B8004 800B7404 AD2C000C */  sw         $t4, 0xc($t1)
/* B8008 800B7408 0C02DEA2 */  jal        func_800B7A88
/* B800C 800B740C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8010 800B7410 A3A2002F */  sb         $v0, 0x2f($sp)
/* B8014 800B7414 93AD002F */  lbu        $t5, 0x2f($sp)
/* B8018 800B7418 240100F0 */  addiu      $at, $zero, 0xf0
/* B801C 800B741C 11A10004 */  beq        $t5, $at, .L800B7430
/* B8020 800B7420 00000000 */   nop
/* B8024 800B7424 240100F7 */  addiu      $at, $zero, 0xf7
/* B8028 800B7428 15A10018 */  bne        $t5, $at, .L800B748C
/* B802C 800B742C 00000000 */   nop
.L800B7430:
/* B8030 800B7430 24040077 */  addiu      $a0, $zero, 0x77
/* B8034 800B7434 0C0297B4 */  jal        func_800A5ED0
/* B8038 800B7438 00002825 */   or        $a1, $zero, $zero
/* B803C 800B743C 0C02DEEC */  jal        func_800B7BB0
/* B8040 800B7440 8FA40030 */   lw        $a0, 0x30($sp)
/* B8044 800B7444 AFA20028 */  sw         $v0, 0x28($sp)
/* B8048 800B7448 8FAE0028 */  lw         $t6, 0x28($sp)
/* B804C 800B744C AFA00020 */  sw         $zero, 0x20($sp)
/* B8050 800B7450 19C00009 */  blez       $t6, .L800B7478
/* B8054 800B7454 00000000 */   nop
.L800B7458:
/* B8058 800B7458 0C02DEA2 */  jal        func_800B7A88
/* B805C 800B745C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8060 800B7460 8FB80020 */  lw         $t8, 0x20($sp)
/* B8064 800B7464 8FAF0028 */  lw         $t7, 0x28($sp)
/* B8068 800B7468 27190001 */  addiu      $t9, $t8, 1
/* B806C 800B746C 032F082A */  slt        $at, $t9, $t7
/* B8070 800B7470 1420FFF9 */  bnez       $at, .L800B7458
/* B8074 800B7474 AFB90020 */   sw        $t9, 0x20($sp)
.L800B7478:
/* B8078 800B7478 8FA40030 */  lw         $a0, 0x30($sp)
/* B807C 800B747C 0C02DCEB */  jal        func_800B73AC
/* B8080 800B7480 8FA50034 */   lw        $a1, 0x34($sp)
/* B8084 800B7484 10000088 */  b          .L800B76A8
/* B8088 800B7488 00000000 */   nop
.L800B748C:
/* B808C 800B748C 93A8002F */  lbu        $t0, 0x2f($sp)
/* B8090 800B7490 240100FF */  addiu      $at, $zero, 0xff
/* B8094 800B7494 15010056 */  bne        $t0, $at, .L800B75F0
/* B8098 800B7498 00000000 */   nop
/* B809C 800B749C 0C02DEA2 */  jal        func_800B7A88
/* B80A0 800B74A0 8FA40030 */   lw        $a0, 0x30($sp)
/* B80A4 800B74A4 A3A2001F */  sb         $v0, 0x1f($sp)
/* B80A8 800B74A8 93AA001F */  lbu        $t2, 0x1f($sp)
/* B80AC 800B74AC 24010051 */  addiu      $at, $zero, 0x51
/* B80B0 800B74B0 1541001E */  bne        $t2, $at, .L800B752C
/* B80B4 800B74B4 00000000 */   nop
/* B80B8 800B74B8 8FAC0034 */  lw         $t4, 0x34($sp)
/* B80BC 800B74BC 240B0003 */  addiu      $t3, $zero, 3
/* B80C0 800B74C0 A58B0000 */  sh         $t3, ($t4)
/* B80C4 800B74C4 8FA90024 */  lw         $t1, 0x24($sp)
/* B80C8 800B74C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B80CC 800B74CC ADA90004 */  sw         $t1, 4($t5)
/* B80D0 800B74D0 93AE002F */  lbu        $t6, 0x2f($sp)
/* B80D4 800B74D4 8FB80034 */  lw         $t8, 0x34($sp)
/* B80D8 800B74D8 A30E0008 */  sb         $t6, 8($t8)
/* B80DC 800B74DC 93B9001F */  lbu        $t9, 0x1f($sp)
/* B80E0 800B74E0 8FAF0034 */  lw         $t7, 0x34($sp)
/* B80E4 800B74E4 A1F90009 */  sb         $t9, 9($t7)
/* B80E8 800B74E8 0C02DEA2 */  jal        func_800B7A88
/* B80EC 800B74EC 8FA40030 */   lw        $a0, 0x30($sp)
/* B80F0 800B74F0 8FA80034 */  lw         $t0, 0x34($sp)
/* B80F4 800B74F4 A102000A */  sb         $v0, 0xa($t0)
/* B80F8 800B74F8 0C02DEA2 */  jal        func_800B7A88
/* B80FC 800B74FC 8FA40030 */   lw        $a0, 0x30($sp)
/* B8100 800B7500 8FAA0034 */  lw         $t2, 0x34($sp)
/* B8104 800B7504 A142000B */  sb         $v0, 0xb($t2)
/* B8108 800B7508 0C02DEA2 */  jal        func_800B7A88
/* B810C 800B750C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8110 800B7510 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8114 800B7514 A162000C */  sb         $v0, 0xc($t3)
/* B8118 800B7518 0C02DEA2 */  jal        func_800B7A88
/* B811C 800B751C 8FA40030 */   lw        $a0, 0x30($sp)
/* B8120 800B7520 8FAC0034 */  lw         $t4, 0x34($sp)
/* B8124 800B7524 1000002E */  b          .L800B75E0
/* B8128 800B7528 A182000D */   sb        $v0, 0xd($t4)
.L800B752C:
/* B812C 800B752C 93A9001F */  lbu        $t1, 0x1f($sp)
/* B8130 800B7530 2401002F */  addiu      $at, $zero, 0x2f
/* B8134 800B7534 15210012 */  bne        $t1, $at, .L800B7580
/* B8138 800B7538 00000000 */   nop
/* B813C 800B753C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B8140 800B7540 240D0004 */  addiu      $t5, $zero, 4
/* B8144 800B7544 A5CD0000 */  sh         $t5, ($t6)
/* B8148 800B7548 8FB80024 */  lw         $t8, 0x24($sp)
/* B814C 800B754C 8FB90034 */  lw         $t9, 0x34($sp)
/* B8150 800B7550 AF380004 */  sw         $t8, 4($t9)
/* B8154 800B7554 93AF002F */  lbu        $t7, 0x2f($sp)
/* B8158 800B7558 8FA80034 */  lw         $t0, 0x34($sp)
/* B815C 800B755C A10F0008 */  sb         $t7, 8($t0)
/* B8160 800B7560 93AA001F */  lbu        $t2, 0x1f($sp)
/* B8164 800B7564 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8168 800B7568 A16A0009 */  sb         $t2, 9($t3)
/* B816C 800B756C 0C02DEA2 */  jal        func_800B7A88
/* B8170 800B7570 8FA40030 */   lw        $a0, 0x30($sp)
/* B8174 800B7574 8FAC0034 */  lw         $t4, 0x34($sp)
/* B8178 800B7578 10000019 */  b          .L800B75E0
/* B817C 800B757C A182000A */   sb        $v0, 0xa($t4)
.L800B7580:
/* B8180 800B7580 24040078 */  addiu      $a0, $zero, 0x78
/* B8184 800B7584 24050001 */  addiu      $a1, $zero, 1
/* B8188 800B7588 0C0297B4 */  jal        func_800A5ED0
/* B818C 800B758C 93A6001F */   lbu       $a2, 0x1f($sp)
/* B8190 800B7590 0C02DEEC */  jal        func_800B7BB0
/* B8194 800B7594 8FA40030 */   lw        $a0, 0x30($sp)
/* B8198 800B7598 AFA20028 */  sw         $v0, 0x28($sp)
/* B819C 800B759C 8FA90028 */  lw         $t1, 0x28($sp)
/* B81A0 800B75A0 AFA00020 */  sw         $zero, 0x20($sp)
/* B81A4 800B75A4 19200009 */  blez       $t1, .L800B75CC
/* B81A8 800B75A8 00000000 */   nop
.L800B75AC:
/* B81AC 800B75AC 0C02DEA2 */  jal        func_800B7A88
/* B81B0 800B75B0 8FA40030 */   lw        $a0, 0x30($sp)
/* B81B4 800B75B4 8FAD0020 */  lw         $t5, 0x20($sp)
/* B81B8 800B75B8 8FB80028 */  lw         $t8, 0x28($sp)
/* B81BC 800B75BC 25AE0001 */  addiu      $t6, $t5, 1
/* B81C0 800B75C0 01D8082A */  slt        $at, $t6, $t8
/* B81C4 800B75C4 1420FFF9 */  bnez       $at, .L800B75AC
/* B81C8 800B75C8 AFAE0020 */   sw        $t6, 0x20($sp)
.L800B75CC:
/* B81CC 800B75CC 8FA40030 */  lw         $a0, 0x30($sp)
/* B81D0 800B75D0 0C02DCEB */  jal        func_800B73AC
/* B81D4 800B75D4 8FA50034 */   lw        $a1, 0x34($sp)
/* B81D8 800B75D8 10000033 */  b          .L800B76A8
/* B81DC 800B75DC 00000000 */   nop
.L800B75E0:
/* B81E0 800B75E0 8FB90030 */  lw         $t9, 0x30($sp)
/* B81E4 800B75E4 A720001A */  sh         $zero, 0x1a($t9)
/* B81E8 800B75E8 1000002D */  b          .L800B76A0
/* B81EC 800B75EC 00000000 */   nop
.L800B75F0:
/* B81F0 800B75F0 8FA80034 */  lw         $t0, 0x34($sp)
/* B81F4 800B75F4 240F0001 */  addiu      $t7, $zero, 1
/* B81F8 800B75F8 A50F0000 */  sh         $t7, ($t0)
/* B81FC 800B75FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* B8200 800B7600 8FAB0034 */  lw         $t3, 0x34($sp)
/* B8204 800B7604 AD6A0004 */  sw         $t2, 4($t3)
/* B8208 800B7608 93AC002F */  lbu        $t4, 0x2f($sp)
/* B820C 800B760C 31890080 */  andi       $t1, $t4, 0x80
/* B8210 800B7610 1120000C */  beqz       $t1, .L800B7644
/* B8214 800B7614 00000000 */   nop
/* B8218 800B7618 93AD002F */  lbu        $t5, 0x2f($sp)
/* B821C 800B761C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B8220 800B7620 A1CD0008 */  sb         $t5, 8($t6)
/* B8224 800B7624 0C02DEA2 */  jal        func_800B7A88
/* B8228 800B7628 8FA40030 */   lw        $a0, 0x30($sp)
/* B822C 800B762C 8FB80034 */  lw         $t8, 0x34($sp)
/* B8230 800B7630 A3020009 */  sb         $v0, 9($t8)
/* B8234 800B7634 93B9002F */  lbu        $t9, 0x2f($sp)
/* B8238 800B7638 8FAF0030 */  lw         $t7, 0x30($sp)
/* B823C 800B763C 10000008 */  b          .L800B7660
/* B8240 800B7640 A5F9001A */   sh        $t9, 0x1a($t7)
.L800B7644:
/* B8244 800B7644 8FA80030 */  lw         $t0, 0x30($sp)
/* B8248 800B7648 8FAB0034 */  lw         $t3, 0x34($sp)
/* B824C 800B764C 850A001A */  lh         $t2, 0x1a($t0)
/* B8250 800B7650 A16A0008 */  sb         $t2, 8($t3)
/* B8254 800B7654 93AC002F */  lbu        $t4, 0x2f($sp)
/* B8258 800B7658 8FA90034 */  lw         $t1, 0x34($sp)
/* B825C 800B765C A12C0009 */  sb         $t4, 9($t1)
.L800B7660:
/* B8260 800B7660 8FAD0034 */  lw         $t5, 0x34($sp)
/* B8264 800B7664 240100C0 */  addiu      $at, $zero, 0xc0
/* B8268 800B7668 91AE0008 */  lbu        $t6, 8($t5)
/* B826C 800B766C 31D800F0 */  andi       $t8, $t6, 0xf0
/* B8270 800B7670 13010009 */  beq        $t8, $at, .L800B7698
/* B8274 800B7674 00000000 */   nop
/* B8278 800B7678 240100D0 */  addiu      $at, $zero, 0xd0
/* B827C 800B767C 13010006 */  beq        $t8, $at, .L800B7698
/* B8280 800B7680 00000000 */   nop
/* B8284 800B7684 0C02DEA2 */  jal        func_800B7A88
/* B8288 800B7688 8FA40030 */   lw        $a0, 0x30($sp)
/* B828C 800B768C 8FB90034 */  lw         $t9, 0x34($sp)
/* B8290 800B7690 10000003 */  b          .L800B76A0
/* B8294 800B7694 A322000A */   sb        $v0, 0xa($t9)
.L800B7698:
/* B8298 800B7698 8FAF0034 */  lw         $t7, 0x34($sp)
/* B829C 800B769C A1E0000A */  sb         $zero, 0xa($t7)
.L800B76A0:
/* B82A0 800B76A0 10000001 */  b          .L800B76A8
/* B82A4 800B76A4 00000000 */   nop
.L800B76A8:
/* B82A8 800B76A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B82AC 800B76AC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B82B0 800B76B0 03E00008 */  jr         $ra
/* B82B4 800B76B4 00000000 */   nop

glabel func_800B76B8
/* B82B8 800B76B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B82BC 800B76BC AFBF0014 */  sw         $ra, 0x14($sp)
/* B82C0 800B76C0 AFA40020 */  sw         $a0, 0x20($sp)
/* B82C4 800B76C4 AFA50024 */  sw         $a1, 0x24($sp)
/* B82C8 800B76C8 8FAE0020 */  lw         $t6, 0x20($sp)
/* B82CC 800B76CC 8DD80000 */  lw         $t8, ($t6)
/* B82D0 800B76D0 8DD90010 */  lw         $t9, 0x10($t6)
/* B82D4 800B76D4 8DCF0008 */  lw         $t7, 8($t6)
/* B82D8 800B76D8 03194021 */  addu       $t0, $t8, $t9
/* B82DC 800B76DC 01E8082B */  sltu       $at, $t7, $t0
/* B82E0 800B76E0 14200003 */  bnez       $at, .L800B76F0
/* B82E4 800B76E4 00000000 */   nop
/* B82E8 800B76E8 1000000F */  b          .L800B7728
/* B82EC 800B76EC 00001025 */   or        $v0, $zero, $zero
.L800B76F0:
/* B82F0 800B76F0 8FA90020 */  lw         $t1, 0x20($sp)
/* B82F4 800B76F4 8D2A0008 */  lw         $t2, 8($t1)
/* B82F8 800B76F8 AFAA001C */  sw         $t2, 0x1c($sp)
/* B82FC 800B76FC 0C02DEEC */  jal        func_800B7BB0
/* B8300 800B7700 8FA40020 */   lw        $a0, 0x20($sp)
/* B8304 800B7704 8FAB0024 */  lw         $t3, 0x24($sp)
/* B8308 800B7708 AD620000 */  sw         $v0, ($t3)
/* B830C 800B770C 8FAC001C */  lw         $t4, 0x1c($sp)
/* B8310 800B7710 8FAD0020 */  lw         $t5, 0x20($sp)
/* B8314 800B7714 ADAC0008 */  sw         $t4, 8($t5)
/* B8318 800B7718 10000003 */  b          .L800B7728
/* B831C 800B771C 24020001 */   addiu     $v0, $zero, 1
/* B8320 800B7720 10000001 */  b          .L800B7728
/* B8324 800B7724 00000000 */   nop
.L800B7728:
/* B8328 800B7728 8FBF0014 */  lw         $ra, 0x14($sp)
/* B832C 800B772C 27BD0020 */  addiu      $sp, $sp, 0x20
/* B8330 800B7730 03E00008 */  jr         $ra
/* B8334 800B7734 00000000 */   nop

glabel func_800B7738
/* B8338 800B7738 44852000 */  mtc1       $a1, $f4
/* B833C 800B773C 44864000 */  mtc1       $a2, $f8
/* B8340 800B7740 468021A0 */  cvt.s.w    $f6, $f4
/* B8344 800B7744 04C10005 */  bgez       $a2, .L800B775C
/* B8348 800B7748 468042A0 */   cvt.s.w   $f10, $f8
/* B834C 800B774C 3C014F80 */  lui        $at, 0x4f80
/* B8350 800B7750 44818000 */  mtc1       $at, $f16
/* B8354 800B7754 00000000 */  nop
/* B8358 800B7758 46105280 */  add.s      $f10, $f10, $f16
.L800B775C:
/* B835C 800B775C 848E0018 */  lh         $t6, 0x18($a0)
/* B8360 800B7760 460A3482 */  mul.s      $f18, $f6, $f10
/* B8364 800B7764 3C01800F */  lui        $at, %hi(D_800EE940)
/* B8368 800B7768 448E4000 */  mtc1       $t6, $f8
/* B836C 800B776C D42AE940 */  ldc1       $f10, %lo(D_800EE940)($at)
/* B8370 800B7770 46804420 */  cvt.s.w    $f16, $f8
/* B8374 800B7774 46009121 */  cvt.d.s    $f4, $f18
/* B8378 800B7778 460081A1 */  cvt.d.s    $f6, $f16
/* B837C 800B777C 462A3482 */  mul.d      $f18, $f6, $f10
/* B8380 800B7780 46322203 */  div.d      $f8, $f4, $f18
/* B8384 800B7784 03E00008 */  jr         $ra
/* B8388 800B7788 46204020 */   cvt.s.d   $f0, $f8

glabel func_800B778C
/* B838C 800B778C 03E00008 */  jr         $ra
/* B8390 800B7790 00000000 */   nop

glabel func_800B7794
/* B8394 800B7794 03E00008 */  jr         $ra
/* B8398 800B7798 00000000 */   nop

glabel func_800B779C
/* B839C 800B779C AFA50004 */  sw         $a1, 4($sp)
/* B83A0 800B77A0 C7A40004 */  lwc1       $f4, 4($sp)
/* B83A4 800B77A4 3C01800F */  lui        $at, %hi(D_800EE948)
/* B83A8 800B77A8 D428E948 */  ldc1       $f8, %lo(D_800EE948)($at)
/* B83AC 800B77AC 848E0018 */  lh         $t6, 0x18($a0)
/* B83B0 800B77B0 460021A1 */  cvt.d.s    $f6, $f4
/* B83B4 800B77B4 46283282 */  mul.d      $f10, $f6, $f8
/* B83B8 800B77B8 448E8000 */  mtc1       $t6, $f16
/* B83BC 800B77BC 44863000 */  mtc1       $a2, $f6
/* B83C0 800B77C0 468084A1 */  cvt.d.w    $f18, $f16
/* B83C4 800B77C4 46803221 */  cvt.d.w    $f8, $f6
/* B83C8 800B77C8 46325102 */  mul.d      $f4, $f10, $f18
/* B83CC 800B77CC 04C10006 */  bgez       $a2, .L800B77E8
/* B83D0 800B77D0 00000000 */   nop
/* B83D4 800B77D4 3C0141F0 */  lui        $at, 0x41f0
/* B83D8 800B77D8 44818800 */  mtc1       $at, $f17
/* B83DC 800B77DC 44808000 */  mtc1       $zero, $f16
/* B83E0 800B77E0 00000000 */  nop
/* B83E4 800B77E4 46304200 */  add.d      $f8, $f8, $f16
.L800B77E8:
/* B83E8 800B77E8 46282283 */  div.d      $f10, $f4, $f8
/* B83EC 800B77EC 24020001 */  addiu      $v0, $zero, 1
/* B83F0 800B77F0 444FF800 */  cfc1       $t7, $31
/* B83F4 800B77F4 44C2F800 */  ctc1       $v0, $31
/* B83F8 800B77F8 00000000 */  nop
/* B83FC 800B77FC 462054A4 */  cvt.w.d    $f18, $f10
/* B8400 800B7800 4442F800 */  cfc1       $v0, $31
/* B8404 800B7804 00000000 */  nop
/* B8408 800B7808 30410004 */  andi       $at, $v0, 4
/* B840C 800B780C 30420078 */  andi       $v0, $v0, 0x78
/* B8410 800B7810 10400015 */  beqz       $v0, .L800B7868
/* B8414 800B7814 00000000 */   nop
/* B8418 800B7818 3C0141E0 */  lui        $at, 0x41e0
/* B841C 800B781C 44819800 */  mtc1       $at, $f19
/* B8420 800B7820 44809000 */  mtc1       $zero, $f18
/* B8424 800B7824 24020001 */  addiu      $v0, $zero, 1
/* B8428 800B7828 46325481 */  sub.d      $f18, $f10, $f18
/* B842C 800B782C 44C2F800 */  ctc1       $v0, $31
/* B8430 800B7830 00000000 */  nop
/* B8434 800B7834 462094A4 */  cvt.w.d    $f18, $f18
/* B8438 800B7838 4442F800 */  cfc1       $v0, $31
/* B843C 800B783C 00000000 */  nop
/* B8440 800B7840 30410004 */  andi       $at, $v0, 4
/* B8444 800B7844 30420078 */  andi       $v0, $v0, 0x78
/* B8448 800B7848 14400005 */  bnez       $v0, .L800B7860
/* B844C 800B784C 00000000 */   nop
/* B8450 800B7850 44029000 */  mfc1       $v0, $f18
/* B8454 800B7854 3C018000 */  lui        $at, 0x8000
/* B8458 800B7858 10000007 */  b          .L800B7878
/* B845C 800B785C 00411025 */   or        $v0, $v0, $at
.L800B7860:
/* B8460 800B7860 10000005 */  b          .L800B7878
/* B8464 800B7864 2402FFFF */   addiu     $v0, $zero, -1
.L800B7868:
/* B8468 800B7868 44029000 */  mfc1       $v0, $f18
/* B846C 800B786C 00000000 */  nop
/* B8470 800B7870 0440FFFB */  bltz       $v0, .L800B7860
/* B8474 800B7874 00000000 */   nop
.L800B7878:
/* B8478 800B7878 44CFF800 */  ctc1       $t7, $31
/* B847C 800B787C 10000003 */  b          .L800B788C
/* B8480 800B7880 00000000 */   nop
/* B8484 800B7884 10000001 */  b          .L800B788C
/* B8488 800B7888 00000000 */   nop
.L800B788C:
/* B848C 800B788C 03E00008 */  jr         $ra
/* B8490 800B7890 00000000 */   nop

glabel func_800B7894
/* B8494 800B7894 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B8498 800B7898 AFBF0014 */  sw         $ra, 0x14($sp)
/* B849C 800B789C AFA40040 */  sw         $a0, 0x40($sp)
/* B84A0 800B78A0 AFA50044 */  sw         $a1, 0x44($sp)
/* B84A4 800B78A4 AFA60048 */  sw         $a2, 0x48($sp)
/* B84A8 800B78A8 8FAE0048 */  lw         $t6, 0x48($sp)
/* B84AC 800B78AC 15C0000F */  bnez       $t6, .L800B78EC
/* B84B0 800B78B0 00000000 */   nop
/* B84B4 800B78B4 8FAF0040 */  lw         $t7, 0x40($sp)
/* B84B8 800B78B8 8FB90044 */  lw         $t9, 0x44($sp)
/* B84BC 800B78BC 8DF80004 */  lw         $t8, 4($t7)
/* B84C0 800B78C0 AF380000 */  sw         $t8, ($t9)
/* B84C4 800B78C4 8FA80044 */  lw         $t0, 0x44($sp)
/* B84C8 800B78C8 A500000C */  sh         $zero, 0xc($t0)
/* B84CC 800B78CC 8FA90044 */  lw         $t1, 0x44($sp)
/* B84D0 800B78D0 AD200004 */  sw         $zero, 4($t1)
/* B84D4 800B78D4 8FAA0044 */  lw         $t2, 0x44($sp)
/* B84D8 800B78D8 AD400008 */  sw         $zero, 8($t2)
/* B84DC 800B78DC 1000004C */  b          .L800B7A10
/* B84E0 800B78E0 00000000 */   nop
/* B84E4 800B78E4 10000048 */  b          .L800B7A08
/* B84E8 800B78E8 00000000 */   nop
.L800B78EC:
/* B84EC 800B78EC 8FAB0040 */  lw         $t3, 0x40($sp)
/* B84F0 800B78F0 8D6C0008 */  lw         $t4, 8($t3)
/* B84F4 800B78F4 AFAC002C */  sw         $t4, 0x2c($sp)
/* B84F8 800B78F8 8FAD0040 */  lw         $t5, 0x40($sp)
/* B84FC 800B78FC 85AE001A */  lh         $t6, 0x1a($t5)
/* B8500 800B7900 A7AE001E */  sh         $t6, 0x1e($sp)
/* B8504 800B7904 8FAF0040 */  lw         $t7, 0x40($sp)
/* B8508 800B7908 8DF8000C */  lw         $t8, 0xc($t7)
/* B850C 800B790C AFB80024 */  sw         $t8, 0x24($sp)
/* B8510 800B7910 8FB90040 */  lw         $t9, 0x40($sp)
/* B8514 800B7914 8F280004 */  lw         $t0, 4($t9)
/* B8518 800B7918 AF280008 */  sw         $t0, 8($t9)
/* B851C 800B791C 8FA90040 */  lw         $t1, 0x40($sp)
/* B8520 800B7920 A520001A */  sh         $zero, 0x1a($t1)
/* B8524 800B7924 8FAA0040 */  lw         $t2, 0x40($sp)
/* B8528 800B7928 AD40000C */  sw         $zero, 0xc($t2)
.L800B792C:
/* B852C 800B792C 8FAB0040 */  lw         $t3, 0x40($sp)
/* B8530 800B7930 8D6C0008 */  lw         $t4, 8($t3)
/* B8534 800B7934 AFAC0028 */  sw         $t4, 0x28($sp)
/* B8538 800B7938 8FAD0040 */  lw         $t5, 0x40($sp)
/* B853C 800B793C 85AE001A */  lh         $t6, 0x1a($t5)
/* B8540 800B7940 A7AE001C */  sh         $t6, 0x1c($sp)
/* B8544 800B7944 8FAF0040 */  lw         $t7, 0x40($sp)
/* B8548 800B7948 8DF8000C */  lw         $t8, 0xc($t7)
/* B854C 800B794C AFB80020 */  sw         $t8, 0x20($sp)
/* B8550 800B7950 8FA40040 */  lw         $a0, 0x40($sp)
/* B8554 800B7954 0C02DCEB */  jal        func_800B73AC
/* B8558 800B7958 27A50030 */   addiu     $a1, $sp, 0x30
/* B855C 800B795C 87A80030 */  lh         $t0, 0x30($sp)
/* B8560 800B7960 24010004 */  addiu      $at, $zero, 4
/* B8564 800B7964 1501000C */  bne        $t0, $at, .L800B7998
/* B8568 800B7968 00000000 */   nop
/* B856C 800B796C 8FB90040 */  lw         $t9, 0x40($sp)
/* B8570 800B7970 8F290008 */  lw         $t1, 8($t9)
/* B8574 800B7974 AFA90028 */  sw         $t1, 0x28($sp)
/* B8578 800B7978 8FAA0040 */  lw         $t2, 0x40($sp)
/* B857C 800B797C 854B001A */  lh         $t3, 0x1a($t2)
/* B8580 800B7980 A7AB001C */  sh         $t3, 0x1c($sp)
/* B8584 800B7984 8FAC0040 */  lw         $t4, 0x40($sp)
/* B8588 800B7988 8D8D000C */  lw         $t5, 0xc($t4)
/* B858C 800B798C AFAD0020 */  sw         $t5, 0x20($sp)
/* B8590 800B7990 10000007 */  b          .L800B79B0
/* B8594 800B7994 00000000 */   nop
.L800B7998:
/* B8598 800B7998 8FAE0040 */  lw         $t6, 0x40($sp)
/* B859C 800B799C 8FB80048 */  lw         $t8, 0x48($sp)
/* B85A0 800B79A0 8DCF000C */  lw         $t7, 0xc($t6)
/* B85A4 800B79A4 01F8082B */  sltu       $at, $t7, $t8
/* B85A8 800B79A8 1420FFE0 */  bnez       $at, .L800B792C
/* B85AC 800B79AC 00000000 */   nop
.L800B79B0:
/* B85B0 800B79B0 8FA80028 */  lw         $t0, 0x28($sp)
/* B85B4 800B79B4 8FB90044 */  lw         $t9, 0x44($sp)
/* B85B8 800B79B8 AF280000 */  sw         $t0, ($t9)
/* B85BC 800B79BC 87A9001C */  lh         $t1, 0x1c($sp)
/* B85C0 800B79C0 8FAA0044 */  lw         $t2, 0x44($sp)
/* B85C4 800B79C4 A549000C */  sh         $t1, 0xc($t2)
/* B85C8 800B79C8 8FAB0020 */  lw         $t3, 0x20($sp)
/* B85CC 800B79CC 8FAC0044 */  lw         $t4, 0x44($sp)
/* B85D0 800B79D0 AD8B0004 */  sw         $t3, 4($t4)
/* B85D4 800B79D4 8FAD0040 */  lw         $t5, 0x40($sp)
/* B85D8 800B79D8 8FAF0044 */  lw         $t7, 0x44($sp)
/* B85DC 800B79DC 8DAE000C */  lw         $t6, 0xc($t5)
/* B85E0 800B79E0 ADEE0008 */  sw         $t6, 8($t7)
/* B85E4 800B79E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B85E8 800B79E8 8FA80040 */  lw         $t0, 0x40($sp)
/* B85EC 800B79EC AD180008 */  sw         $t8, 8($t0)
/* B85F0 800B79F0 87B9001E */  lh         $t9, 0x1e($sp)
/* B85F4 800B79F4 8FA90040 */  lw         $t1, 0x40($sp)
/* B85F8 800B79F8 A539001A */  sh         $t9, 0x1a($t1)
/* B85FC 800B79FC 8FAA0024 */  lw         $t2, 0x24($sp)
/* B8600 800B7A00 8FAB0040 */  lw         $t3, 0x40($sp)
/* B8604 800B7A04 AD6A000C */  sw         $t2, 0xc($t3)
.L800B7A08:
/* B8608 800B7A08 10000001 */  b          .L800B7A10
/* B860C 800B7A0C 00000000 */   nop
.L800B7A10:
/* B8610 800B7A10 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8614 800B7A14 27BD0040 */  addiu      $sp, $sp, 0x40
/* B8618 800B7A18 03E00008 */  jr         $ra
/* B861C 800B7A1C 00000000 */   nop

glabel func_800B7A20
/* B8620 800B7A20 03E00008 */  jr         $ra
/* B8624 800B7A24 8C82000C */   lw        $v0, 0xc($a0)

glabel func_800B7A28
/* B8628 800B7A28 03E00008 */  jr         $ra
/* B862C 800B7A2C 00000000 */   nop

glabel func_800B7A30
/* B8630 800B7A30 03E00008 */  jr         $ra
/* B8634 800B7A34 00000000 */   nop

glabel func_800B7A38
/* B8638 800B7A38 8CAE0000 */  lw         $t6, ($a1)
/* B863C 800B7A3C AC8E0008 */  sw         $t6, 8($a0)
/* B8640 800B7A40 84AF000C */  lh         $t7, 0xc($a1)
/* B8644 800B7A44 A48F001A */  sh         $t7, 0x1a($a0)
/* B8648 800B7A48 8CB80004 */  lw         $t8, 4($a1)
/* B864C 800B7A4C AC98000C */  sw         $t8, 0xc($a0)
/* B8650 800B7A50 03E00008 */  jr         $ra
/* B8654 800B7A54 00000000 */   nop

glabel func_800B7A58
/* B8658 800B7A58 03E00008 */  jr         $ra
/* B865C 800B7A5C 00000000 */   nop

glabel func_800B7A60
/* B8660 800B7A60 8C8E0008 */  lw         $t6, 8($a0)
/* B8664 800B7A64 ACAE0000 */  sw         $t6, ($a1)
/* B8668 800B7A68 848F001A */  lh         $t7, 0x1a($a0)
/* B866C 800B7A6C A4AF000C */  sh         $t7, 0xc($a1)
/* B8670 800B7A70 8C98000C */  lw         $t8, 0xc($a0)
/* B8674 800B7A74 ACB80004 */  sw         $t8, 4($a1)
/* B8678 800B7A78 03E00008 */  jr         $ra
/* B867C 800B7A7C 00000000 */   nop

glabel func_800B7A80
/* B8680 800B7A80 03E00008 */  jr         $ra
/* B8684 800B7A84 00000000 */   nop

glabel func_800B7A88
/* B8688 800B7A88 27BDFFF8 */  addiu      $sp, $sp, -8
/* B868C 800B7A8C 8C8E0008 */  lw         $t6, 8($a0)
/* B8690 800B7A90 8C8F0008 */  lw         $t7, 8($a0)
/* B8694 800B7A94 91C50000 */  lbu        $a1, ($t6)
/* B8698 800B7A98 25F80001 */  addiu      $t8, $t7, 1
/* B869C 800B7A9C AC980008 */  sw         $t8, 8($a0)
/* B86A0 800B7AA0 10000003 */  b          .L800B7AB0
/* B86A4 800B7AA4 00A01025 */   or        $v0, $a1, $zero
/* B86A8 800B7AA8 10000001 */  b          .L800B7AB0
/* B86AC 800B7AAC 00000000 */   nop
.L800B7AB0:
/* B86B0 800B7AB0 03E00008 */  jr         $ra
/* B86B4 800B7AB4 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B7AB8
/* B86B8 800B7AB8 27BDFFF8 */  addiu      $sp, $sp, -8
/* B86BC 800B7ABC 8C8E0008 */  lw         $t6, 8($a0)
/* B86C0 800B7AC0 91CF0000 */  lbu        $t7, ($t6)
/* B86C4 800B7AC4 000FC200 */  sll        $t8, $t7, 8
/* B86C8 800B7AC8 A7B80006 */  sh         $t8, 6($sp)
/* B86CC 800B7ACC 8C990008 */  lw         $t9, 8($a0)
/* B86D0 800B7AD0 27280001 */  addiu      $t0, $t9, 1
/* B86D4 800B7AD4 AC880008 */  sw         $t0, 8($a0)
/* B86D8 800B7AD8 8C8A0008 */  lw         $t2, 8($a0)
/* B86DC 800B7ADC 87A90006 */  lh         $t1, 6($sp)
/* B86E0 800B7AE0 914B0000 */  lbu        $t3, ($t2)
/* B86E4 800B7AE4 012B6025 */  or         $t4, $t1, $t3
/* B86E8 800B7AE8 A7AC0006 */  sh         $t4, 6($sp)
/* B86EC 800B7AEC 8C8D0008 */  lw         $t5, 8($a0)
/* B86F0 800B7AF0 25AE0001 */  addiu      $t6, $t5, 1
/* B86F4 800B7AF4 AC8E0008 */  sw         $t6, 8($a0)
/* B86F8 800B7AF8 10000003 */  b          .L800B7B08
/* B86FC 800B7AFC 87A20006 */   lh        $v0, 6($sp)
/* B8700 800B7B00 10000001 */  b          .L800B7B08
/* B8704 800B7B04 00000000 */   nop
.L800B7B08:
/* B8708 800B7B08 03E00008 */  jr         $ra
/* B870C 800B7B0C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B7B10
/* B8710 800B7B10 27BDFFF8 */  addiu      $sp, $sp, -8
/* B8714 800B7B14 8C8E0008 */  lw         $t6, 8($a0)
/* B8718 800B7B18 91CF0000 */  lbu        $t7, ($t6)
/* B871C 800B7B1C 000FC600 */  sll        $t8, $t7, 0x18
/* B8720 800B7B20 AFB80004 */  sw         $t8, 4($sp)
/* B8724 800B7B24 8C990008 */  lw         $t9, 8($a0)
/* B8728 800B7B28 27280001 */  addiu      $t0, $t9, 1
/* B872C 800B7B2C AC880008 */  sw         $t0, 8($a0)
/* B8730 800B7B30 8C8A0008 */  lw         $t2, 8($a0)
/* B8734 800B7B34 8FA90004 */  lw         $t1, 4($sp)
/* B8738 800B7B38 914B0000 */  lbu        $t3, ($t2)
/* B873C 800B7B3C 000B6400 */  sll        $t4, $t3, 0x10
/* B8740 800B7B40 012C6825 */  or         $t5, $t1, $t4
/* B8744 800B7B44 AFAD0004 */  sw         $t5, 4($sp)
/* B8748 800B7B48 8C8E0008 */  lw         $t6, 8($a0)
/* B874C 800B7B4C 25CF0001 */  addiu      $t7, $t6, 1
/* B8750 800B7B50 AC8F0008 */  sw         $t7, 8($a0)
/* B8754 800B7B54 8C990008 */  lw         $t9, 8($a0)
/* B8758 800B7B58 8FB80004 */  lw         $t8, 4($sp)
/* B875C 800B7B5C 93280000 */  lbu        $t0, ($t9)
/* B8760 800B7B60 00085200 */  sll        $t2, $t0, 8
/* B8764 800B7B64 030A5825 */  or         $t3, $t8, $t2
/* B8768 800B7B68 AFAB0004 */  sw         $t3, 4($sp)
/* B876C 800B7B6C 8C890008 */  lw         $t1, 8($a0)
/* B8770 800B7B70 252C0001 */  addiu      $t4, $t1, 1
/* B8774 800B7B74 AC8C0008 */  sw         $t4, 8($a0)
/* B8778 800B7B78 8C8E0008 */  lw         $t6, 8($a0)
/* B877C 800B7B7C 8FAD0004 */  lw         $t5, 4($sp)
/* B8780 800B7B80 91CF0000 */  lbu        $t7, ($t6)
/* B8784 800B7B84 01AFC825 */  or         $t9, $t5, $t7
/* B8788 800B7B88 AFB90004 */  sw         $t9, 4($sp)
/* B878C 800B7B8C 8C880008 */  lw         $t0, 8($a0)
/* B8790 800B7B90 25180001 */  addiu      $t8, $t0, 1
/* B8794 800B7B94 AC980008 */  sw         $t8, 8($a0)
/* B8798 800B7B98 10000003 */  b          .L800B7BA8
/* B879C 800B7B9C 8FA20004 */   lw        $v0, 4($sp)
/* B87A0 800B7BA0 10000001 */  b          .L800B7BA8
/* B87A4 800B7BA4 00000000 */   nop
.L800B7BA8:
/* B87A8 800B7BA8 03E00008 */  jr         $ra
/* B87AC 800B7BAC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B7BB0
/* B87B0 800B7BB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B87B4 800B7BB4 8C8E0008 */  lw         $t6, 8($a0)
/* B87B8 800B7BB8 91CF0000 */  lbu        $t7, ($t6)
/* B87BC 800B7BBC AFAF0000 */  sw         $t7, ($sp)
/* B87C0 800B7BC0 8C980008 */  lw         $t8, 8($a0)
/* B87C4 800B7BC4 27190001 */  addiu      $t9, $t8, 1
/* B87C8 800B7BC8 AC990008 */  sw         $t9, 8($a0)
/* B87CC 800B7BCC 8FA80000 */  lw         $t0, ($sp)
/* B87D0 800B7BD0 AFA80004 */  sw         $t0, 4($sp)
/* B87D4 800B7BD4 8FA90000 */  lw         $t1, ($sp)
/* B87D8 800B7BD8 312A0080 */  andi       $t2, $t1, 0x80
/* B87DC 800B7BDC 11400014 */  beqz       $t2, .L800B7C30
/* B87E0 800B7BE0 00000000 */   nop
/* B87E4 800B7BE4 8FAB0004 */  lw         $t3, 4($sp)
/* B87E8 800B7BE8 316C007F */  andi       $t4, $t3, 0x7f
/* B87EC 800B7BEC AFAC0004 */  sw         $t4, 4($sp)
.L800B7BF0:
/* B87F0 800B7BF0 8C8D0008 */  lw         $t5, 8($a0)
/* B87F4 800B7BF4 91AE0000 */  lbu        $t6, ($t5)
/* B87F8 800B7BF8 AFAE0000 */  sw         $t6, ($sp)
/* B87FC 800B7BFC 8C8F0008 */  lw         $t7, 8($a0)
/* B8800 800B7C00 25F80001 */  addiu      $t8, $t7, 1
/* B8804 800B7C04 AC980008 */  sw         $t8, 8($a0)
/* B8808 800B7C08 8FB90004 */  lw         $t9, 4($sp)
/* B880C 800B7C0C 8FA90000 */  lw         $t1, ($sp)
/* B8810 800B7C10 001941C0 */  sll        $t0, $t9, 7
/* B8814 800B7C14 312A007F */  andi       $t2, $t1, 0x7f
/* B8818 800B7C18 010A5821 */  addu       $t3, $t0, $t2
/* B881C 800B7C1C AFAB0004 */  sw         $t3, 4($sp)
/* B8820 800B7C20 8FAC0000 */  lw         $t4, ($sp)
/* B8824 800B7C24 318D0080 */  andi       $t5, $t4, 0x80
/* B8828 800B7C28 15A0FFF1 */  bnez       $t5, .L800B7BF0
/* B882C 800B7C2C 00000000 */   nop
.L800B7C30:
/* B8830 800B7C30 10000003 */  b          .L800B7C40
/* B8834 800B7C34 8FA20004 */   lw        $v0, 4($sp)
/* B8838 800B7C38 10000001 */  b          .L800B7C40
/* B883C 800B7C3C 00000000 */   nop
.L800B7C40:
/* B8840 800B7C40 03E00008 */  jr         $ra
/* B8844 800B7C44 27BD0008 */   addiu     $sp, $sp, 8
/* B8848 800B7C48 00000000 */  nop
/* B884C 800B7C4C 00000000 */  nop
