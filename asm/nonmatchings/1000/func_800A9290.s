glabel func_800A9290
/* A9E90 800A9290 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A9E94 800A9294 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9E98 800A9298 AFA40040 */  sw         $a0, 0x40($sp)
/* A9E9C 800A929C AFB10018 */  sw         $s1, 0x18($sp)
/* A9EA0 800A92A0 AFB00014 */  sw         $s0, 0x14($sp)
/* A9EA4 800A92A4 8FAE0040 */  lw         $t6, 0x40($sp)
/* A9EA8 800A92A8 AFAE0030 */  sw         $t6, 0x30($sp)
/* A9EAC 800A92AC 3C0F8019 */  lui        $t7, %hi(D_8018A290)
/* A9EB0 800A92B0 25EFA290 */  addiu      $t7, $t7, %lo(D_8018A290)
/* A9EB4 800A92B4 AFAF002C */  sw         $t7, 0x2c($sp)
/* A9EB8 800A92B8 8FB80030 */  lw         $t8, 0x30($sp)
/* A9EBC 800A92BC 8FA8002C */  lw         $t0, 0x2c($sp)
/* A9EC0 800A92C0 93190004 */  lbu        $t9, 4($t8)
/* A9EC4 800A92C4 A1190004 */  sb         $t9, 4($t0)
/* A9EC8 800A92C8 8FA90030 */  lw         $t1, 0x30($sp)
/* A9ECC 800A92CC 8FAB002C */  lw         $t3, 0x2c($sp)
/* A9ED0 800A92D0 8D2A000C */  lw         $t2, 0xc($t1)
/* A9ED4 800A92D4 AD6A000C */  sw         $t2, 0xc($t3)
/* A9ED8 800A92D8 8FAC002C */  lw         $t4, 0x2c($sp)
/* A9EDC 800A92DC A5800006 */  sh         $zero, 6($t4)
/* A9EE0 800A92E0 8FAD0030 */  lw         $t5, 0x30($sp)
/* A9EE4 800A92E4 2401FFFF */  addiu      $at, $zero, -1
/* A9EE8 800A92E8 8DAE0010 */  lw         $t6, 0x10($t5)
/* A9EEC 800A92EC 15C10003 */  bne        $t6, $at, .L800A92FC
/* A9EF0 800A92F0 00000000 */   nop
/* A9EF4 800A92F4 1000006C */  b          .L800A94A8
/* A9EF8 800A92F8 2402FFFB */   addiu     $v0, $zero, -5
.L800A92FC:
/* A9EFC 800A92FC 8FAF0030 */  lw         $t7, 0x30($sp)
/* A9F00 800A9300 8DF80014 */  lw         $t8, 0x14($t7)
/* A9F04 800A9304 2F010401 */  sltiu      $at, $t8, 0x401
/* A9F08 800A9308 14200003 */  bnez       $at, .L800A9318
/* A9F0C 800A930C 00000000 */   nop
/* A9F10 800A9310 10000065 */  b          .L800A94A8
/* A9F14 800A9314 2402FFF8 */   addiu     $v0, $zero, -8
.L800A9318:
/* A9F18 800A9318 8FB90040 */  lw         $t9, 0x40($sp)
/* A9F1C 800A931C 24010001 */  addiu      $at, $zero, 1
/* A9F20 800A9320 93280009 */  lbu        $t0, 9($t9)
/* A9F24 800A9324 1501002A */  bne        $t0, $at, .L800A93D0
/* A9F28 800A9328 00000000 */   nop
/* A9F2C 800A932C 8FA90030 */  lw         $t1, 0x30($sp)
/* A9F30 800A9330 3C010400 */  lui        $at, 0x400
/* A9F34 800A9334 34211000 */  ori        $at, $at, 0x1000
/* A9F38 800A9338 8D2A0010 */  lw         $t2, 0x10($t1)
/* A9F3C 800A933C 0141082B */  sltu       $at, $t2, $at
/* A9F40 800A9340 14200008 */  bnez       $at, .L800A9364
/* A9F44 800A9344 00000000 */   nop
/* A9F48 800A9348 8D2B0014 */  lw         $t3, 0x14($t1)
/* A9F4C 800A934C 3C010400 */  lui        $at, 0x400
/* A9F50 800A9350 34212000 */  ori        $at, $at, 0x2000
/* A9F54 800A9354 014B6021 */  addu       $t4, $t2, $t3
/* A9F58 800A9358 0181082B */  sltu       $at, $t4, $at
/* A9F5C 800A935C 14200003 */  bnez       $at, .L800A936C
/* A9F60 800A9360 00000000 */   nop
.L800A9364:
/* A9F64 800A9364 10000002 */  b          .L800A9370
/* A9F68 800A9368 00008025 */   or        $s0, $zero, $zero
.L800A936C:
/* A9F6C 800A936C 24100001 */  addiu      $s0, $zero, 1
.L800A9370:
/* A9F70 800A9370 16000015 */  bnez       $s0, .L800A93C8
/* A9F74 800A9374 00000000 */   nop
/* A9F78 800A9378 8FAD0030 */  lw         $t5, 0x30($sp)
/* A9F7C 800A937C 3C010400 */  lui        $at, 0x400
/* A9F80 800A9380 8DAE0010 */  lw         $t6, 0x10($t5)
/* A9F84 800A9384 01C1082B */  sltu       $at, $t6, $at
/* A9F88 800A9388 14200008 */  bnez       $at, .L800A93AC
/* A9F8C 800A938C 00000000 */   nop
/* A9F90 800A9390 8DAF0014 */  lw         $t7, 0x14($t5)
/* A9F94 800A9394 3C010400 */  lui        $at, 0x400
/* A9F98 800A9398 34211000 */  ori        $at, $at, 0x1000
/* A9F9C 800A939C 01CFC021 */  addu       $t8, $t6, $t7
/* A9FA0 800A93A0 0301082B */  sltu       $at, $t8, $at
/* A9FA4 800A93A4 14200003 */  bnez       $at, .L800A93B4
/* A9FA8 800A93A8 00000000 */   nop
.L800A93AC:
/* A9FAC 800A93AC 10000002 */  b          .L800A93B8
/* A9FB0 800A93B0 00008825 */   or        $s1, $zero, $zero
.L800A93B4:
/* A9FB4 800A93B4 24110001 */  addiu      $s1, $zero, 1
.L800A93B8:
/* A9FB8 800A93B8 16200003 */  bnez       $s1, .L800A93C8
/* A9FBC 800A93BC 00000000 */   nop
/* A9FC0 800A93C0 10000039 */  b          .L800A94A8
/* A9FC4 800A93C4 2402FFFB */   addiu     $v0, $zero, -5
.L800A93C8:
/* A9FC8 800A93C8 10000009 */  b          .L800A93F0
/* A9FCC 800A93CC 00000000 */   nop
.L800A93D0:
/* A9FD0 800A93D0 8FB90030 */  lw         $t9, 0x30($sp)
/* A9FD4 800A93D4 0C026964 */  jal        func_8009A590
/* A9FD8 800A93D8 8F240010 */   lw        $a0, 0x10($t9)
/* A9FDC 800A93DC 2401FFFF */  addiu      $at, $zero, -1
/* A9FE0 800A93E0 14410003 */  bne        $v0, $at, .L800A93F0
/* A9FE4 800A93E4 00000000 */   nop
/* A9FE8 800A93E8 1000002F */  b          .L800A94A8
/* A9FEC 800A93EC 2402FFFB */   addiu     $v0, $zero, -5
.L800A93F0:
/* A9FF0 800A93F0 8FA80030 */  lw         $t0, 0x30($sp)
/* A9FF4 800A93F4 8D090010 */  lw         $t1, 0x10($t0)
/* A9FF8 800A93F8 AFA90028 */  sw         $t1, 0x28($sp)
/* A9FFC 800A93FC 8FAA0030 */  lw         $t2, 0x30($sp)
/* AA000 800A9400 8FAD002C */  lw         $t5, 0x2c($sp)
/* AA004 800A9404 8D4B0014 */  lw         $t3, 0x14($t2)
/* AA008 800A9408 256C0010 */  addiu      $t4, $t3, 0x10
/* AA00C 800A940C ADAC0000 */  sw         $t4, ($t5)
/* AA010 800A9410 8FAE0030 */  lw         $t6, 0x30($sp)
/* AA014 800A9414 8DCF0014 */  lw         $t7, 0x14($t6)
/* AA018 800A9418 25F80010 */  addiu      $t8, $t7, 0x10
/* AA01C 800A941C AFB80034 */  sw         $t8, 0x34($sp)
/* AA020 800A9420 27B90034 */  addiu      $t9, $sp, 0x34
/* AA024 800A9424 AFB9003C */  sw         $t9, 0x3c($sp)
/* AA028 800A9428 AFA00038 */  sw         $zero, 0x38($sp)
/* AA02C 800A942C 8FA80038 */  lw         $t0, 0x38($sp)
/* AA030 800A9430 29010004 */  slti       $at, $t0, 4
/* AA034 800A9434 10200010 */  beqz       $at, .L800A9478
/* AA038 800A9438 00000000 */   nop
.L800A943C:
/* AA03C 800A943C 8FAA0038 */  lw         $t2, 0x38($sp)
/* AA040 800A9440 8FA9003C */  lw         $t1, 0x3c($sp)
/* AA044 800A9444 240B0004 */  addiu      $t3, $zero, 4
/* AA048 800A9448 24060008 */  addiu      $a2, $zero, 8
/* AA04C 800A944C 016A2823 */  subu       $a1, $t3, $t2
/* AA050 800A9450 0C02A254 */  jal        func_800A8950
/* AA054 800A9454 012A2021 */   addu      $a0, $t1, $t2
/* AA058 800A9458 8FAC0038 */  lw         $t4, 0x38($sp)
/* AA05C 800A945C 00408025 */  or         $s0, $v0, $zero
/* AA060 800A9460 01906821 */  addu       $t5, $t4, $s0
/* AA064 800A9464 AFAD0038 */  sw         $t5, 0x38($sp)
/* AA068 800A9468 8FAE0038 */  lw         $t6, 0x38($sp)
/* AA06C 800A946C 29C10004 */  slti       $at, $t6, 4
/* AA070 800A9470 1420FFF2 */  bnez       $at, .L800A943C
/* AA074 800A9474 00000000 */   nop
.L800A9478:
/* AA078 800A9478 8FA4002C */  lw         $a0, 0x2c($sp)
/* AA07C 800A947C 24050010 */  addiu      $a1, $zero, 0x10
/* AA080 800A9480 0C026808 */  jal        func_8009A020
/* AA084 800A9484 24060001 */   addiu     $a2, $zero, 1
/* AA088 800A9488 8FAF0030 */  lw         $t7, 0x30($sp)
/* AA08C 800A948C 8FA40028 */  lw         $a0, 0x28($sp)
/* AA090 800A9490 0C02685F */  jal        func_8009A17C
/* AA094 800A9494 8DE50014 */   lw        $a1, 0x14($t7)
/* AA098 800A9498 10000003 */  b          .L800A94A8
/* AA09C 800A949C 00001025 */   or        $v0, $zero, $zero
/* AA0A0 800A94A0 10000001 */  b          .L800A94A8
/* AA0A4 800A94A4 00000000 */   nop
.L800A94A8:
/* AA0A8 800A94A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* AA0AC 800A94AC 8FB00014 */  lw         $s0, 0x14($sp)
/* AA0B0 800A94B0 8FB10018 */  lw         $s1, 0x18($sp)
/* AA0B4 800A94B4 03E00008 */  jr         $ra
/* AA0B8 800A94B8 27BD0040 */   addiu     $sp, $sp, 0x40
