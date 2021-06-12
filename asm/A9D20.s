.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A9120
/* A9D20 800A9120 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9D24 800A9124 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9D28 800A9128 AFA40018 */  sw         $a0, 0x18($sp)
/* A9D2C 800A912C AFA5001C */  sw         $a1, 0x1c($sp)
/* A9D30 800A9130 8FA40018 */  lw         $a0, 0x18($sp)
/* A9D34 800A9134 0C02D640 */  jal        func_800B5900
/* A9D38 800A9138 8FA5001C */   lw        $a1, 0x1c($sp)
/* A9D3C 800A913C 10400006 */  beqz       $v0, .L800A9158
/* A9D40 800A9140 00000000 */   nop
.L800A9144:
/* A9D44 800A9144 8FA40018 */  lw         $a0, 0x18($sp)
/* A9D48 800A9148 0C02D640 */  jal        func_800B5900
/* A9D4C 800A914C 8FA5001C */   lw        $a1, 0x1c($sp)
/* A9D50 800A9150 1440FFFC */  bnez       $v0, .L800A9144
/* A9D54 800A9154 00000000 */   nop
.L800A9158:
/* A9D58 800A9158 10000001 */  b          .L800A9160
/* A9D5C 800A915C 00000000 */   nop
.L800A9160:
/* A9D60 800A9160 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9D64 800A9164 27BD0018 */  addiu      $sp, $sp, 0x18
/* A9D68 800A9168 03E00008 */  jr         $ra
/* A9D6C 800A916C 00000000 */   nop

glabel func_800A9170
/* A9D70 800A9170 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A9D74 800A9174 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9D78 800A9178 AFA40020 */  sw         $a0, 0x20($sp)
/* A9D7C 800A917C 8FAE0020 */  lw         $t6, 0x20($sp)
/* A9D80 800A9180 3C010400 */  lui        $at, 0x400
/* A9D84 800A9184 01C1082B */  sltu       $at, $t6, $at
/* A9D88 800A9188 1420000A */  bnez       $at, .L800A91B4
/* A9D8C 800A918C 00000000 */   nop
/* A9D90 800A9190 3C010500 */  lui        $at, 0x500
/* A9D94 800A9194 01C1082B */  sltu       $at, $t6, $at
/* A9D98 800A9198 10200006 */  beqz       $at, .L800A91B4
/* A9D9C 800A919C 00000000 */   nop
/* A9DA0 800A91A0 8FA40020 */  lw         $a0, 0x20($sp)
/* A9DA4 800A91A4 0C02A418 */  jal        func_800A9060
/* A9DA8 800A91A8 27A5001C */   addiu     $a1, $sp, 0x1c
/* A9DAC 800A91AC 10000005 */  b          .L800A91C4
/* A9DB0 800A91B0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A91B4:
/* A9DB4 800A91B4 10000003 */  b          .L800A91C4
/* A9DB8 800A91B8 00001025 */   or        $v0, $zero, $zero
/* A9DBC 800A91BC 10000001 */  b          .L800A91C4
/* A9DC0 800A91C0 00000000 */   nop
.L800A91C4:
/* A9DC4 800A91C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9DC8 800A91C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A9DCC 800A91CC 03E00008 */  jr         $ra
/* A9DD0 800A91D0 00000000 */   nop

glabel func_800A91D4
/* A9DD4 800A91D4 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9DD8 800A91D8 00C03825 */  or         $a3, $a2, $zero
/* A9DDC 800A91DC 10E00008 */  beqz       $a3, .L800A9200
/* A9DE0 800A91E0 24C6FFFF */   addiu     $a2, $a2, -1
.L800A91E4:
/* A9DE4 800A91E4 90AE0000 */  lbu        $t6, ($a1)
/* A9DE8 800A91E8 24840001 */  addiu      $a0, $a0, 1
/* A9DEC 800A91EC 24A50001 */  addiu      $a1, $a1, 1
/* A9DF0 800A91F0 A08EFFFF */  sb         $t6, -1($a0)
/* A9DF4 800A91F4 00C03825 */  or         $a3, $a2, $zero
/* A9DF8 800A91F8 14E0FFFA */  bnez       $a3, .L800A91E4
/* A9DFC 800A91FC 24C6FFFF */   addiu     $a2, $a2, -1
.L800A9200:
/* A9E00 800A9200 10000001 */  b          .L800A9208
/* A9E04 800A9204 00000000 */   nop
.L800A9208:
/* A9E08 800A9208 03E00008 */  jr         $ra
/* A9E0C 800A920C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A9210
/* A9E10 800A9210 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9E14 800A9214 00C03825 */  or         $a3, $a2, $zero
/* A9E18 800A9218 10E00008 */  beqz       $a3, .L800A923C
/* A9E1C 800A921C 24C6FFFF */   addiu     $a2, $a2, -1
.L800A9220:
/* A9E20 800A9220 8CAE0000 */  lw         $t6, ($a1)
/* A9E24 800A9224 24840004 */  addiu      $a0, $a0, 4
/* A9E28 800A9228 24A50004 */  addiu      $a1, $a1, 4
/* A9E2C 800A922C AC8EFFFC */  sw         $t6, -4($a0)
/* A9E30 800A9230 00C03825 */  or         $a3, $a2, $zero
/* A9E34 800A9234 14E0FFFA */  bnez       $a3, .L800A9220
/* A9E38 800A9238 24C6FFFF */   addiu     $a2, $a2, -1
.L800A923C:
/* A9E3C 800A923C 10000001 */  b          .L800A9244
/* A9E40 800A9240 00000000 */   nop
.L800A9244:
/* A9E44 800A9244 03E00008 */  jr         $ra
/* A9E48 800A9248 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A924C
/* A9E4C 800A924C 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9E50 800A9250 90A60000 */  lbu        $a2, ($a1)
/* A9E54 800A9254 24840001 */  addiu      $a0, $a0, 1
/* A9E58 800A9258 24A50001 */  addiu      $a1, $a1, 1
/* A9E5C 800A925C 00C03825 */  or         $a3, $a2, $zero
/* A9E60 800A9260 10E00007 */  beqz       $a3, .L800A9280
/* A9E64 800A9264 A086FFFF */   sb        $a2, -1($a0)
.L800A9268:
/* A9E68 800A9268 90A60000 */  lbu        $a2, ($a1)
/* A9E6C 800A926C 24840001 */  addiu      $a0, $a0, 1
/* A9E70 800A9270 24A50001 */  addiu      $a1, $a1, 1
/* A9E74 800A9274 00C03825 */  or         $a3, $a2, $zero
/* A9E78 800A9278 14E0FFFB */  bnez       $a3, .L800A9268
/* A9E7C 800A927C A086FFFF */   sb        $a2, -1($a0)
.L800A9280:
/* A9E80 800A9280 10000001 */  b          .L800A9288
/* A9E84 800A9284 00000000 */   nop
.L800A9288:
/* A9E88 800A9288 03E00008 */  jr         $ra
/* A9E8C 800A928C 27BD0008 */   addiu     $sp, $sp, 8

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

glabel func_800A94BC
/* AA0BC 800A94BC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AA0C0 800A94C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* AA0C4 800A94C4 AFA40048 */  sw         $a0, 0x48($sp)
/* AA0C8 800A94C8 AFB10018 */  sw         $s1, 0x18($sp)
/* AA0CC 800A94CC AFB00014 */  sw         $s0, 0x14($sp)
/* AA0D0 800A94D0 8FB00048 */  lw         $s0, 0x48($sp)
/* AA0D4 800A94D4 8FAE0048 */  lw         $t6, 0x48($sp)
/* AA0D8 800A94D8 91CF0009 */  lbu        $t7, 9($t6)
/* AA0DC 800A94DC 15E00008 */  bnez       $t7, .L800A9500
/* AA0E0 800A94E0 00000000 */   nop
/* AA0E4 800A94E4 0C026964 */  jal        func_8009A590
/* AA0E8 800A94E8 8E040010 */   lw        $a0, 0x10($s0)
/* AA0EC 800A94EC 2401FFFF */  addiu      $at, $zero, -1
/* AA0F0 800A94F0 14410003 */  bne        $v0, $at, .L800A9500
/* AA0F4 800A94F4 00000000 */   nop
/* AA0F8 800A94F8 10000081 */  b          .L800A9700
/* AA0FC 800A94FC 2402FFFB */   addiu     $v0, $zero, -5
.L800A9500:
/* AA100 800A9500 8E180014 */  lw         $t8, 0x14($s0)
/* AA104 800A9504 2F010401 */  sltiu      $at, $t8, 0x401
/* AA108 800A9508 14200003 */  bnez       $at, .L800A9518
/* AA10C 800A950C 00000000 */   nop
/* AA110 800A9510 1000007B */  b          .L800A9700
/* AA114 800A9514 2402FFF8 */   addiu     $v0, $zero, -8
.L800A9518:
/* AA118 800A9518 8E190010 */  lw         $t9, 0x10($s0)
/* AA11C 800A951C 3C010400 */  lui        $at, 0x400
/* AA120 800A9520 0321082B */  sltu       $at, $t9, $at
/* AA124 800A9524 14200008 */  bnez       $at, .L800A9548
/* AA128 800A9528 00000000 */   nop
/* AA12C 800A952C 8E080010 */  lw         $t0, 0x10($s0)
/* AA130 800A9530 8E090014 */  lw         $t1, 0x14($s0)
/* AA134 800A9534 3C010500 */  lui        $at, 0x500
/* AA138 800A9538 01095021 */  addu       $t2, $t0, $t1
/* AA13C 800A953C 0141082B */  sltu       $at, $t2, $at
/* AA140 800A9540 14200003 */  bnez       $at, .L800A9550
/* AA144 800A9544 00000000 */   nop
.L800A9548:
/* AA148 800A9548 10000002 */  b          .L800A9554
/* AA14C 800A954C 00008825 */   or        $s1, $zero, $zero
.L800A9550:
/* AA150 800A9550 24110001 */  addiu      $s1, $zero, 1
.L800A9554:
/* AA154 800A9554 12200059 */  beqz       $s1, .L800A96BC
/* AA158 800A9558 00000000 */   nop
/* AA15C 800A955C 8E0B0010 */  lw         $t3, 0x10($s0)
/* AA160 800A9560 316C0003 */  andi       $t4, $t3, 3
/* AA164 800A9564 11800035 */  beqz       $t4, .L800A963C
/* AA168 800A9568 AFAC0030 */   sw        $t4, 0x30($sp)
/* AA16C 800A956C 8E0D0014 */  lw         $t5, 0x14($s0)
/* AA170 800A9570 24010001 */  addiu      $at, $zero, 1
/* AA174 800A9574 11A10003 */  beq        $t5, $at, .L800A9584
/* AA178 800A9578 00000000 */   nop
/* AA17C 800A957C 10000060 */  b          .L800A9700
/* AA180 800A9580 2402FFFB */   addiu     $v0, $zero, -5
.L800A9584:
/* AA184 800A9584 8E040010 */  lw         $a0, 0x10($s0)
/* AA188 800A9588 2401FFFC */  addiu      $at, $zero, -4
/* AA18C 800A958C 00817024 */  and        $t6, $a0, $at
/* AA190 800A9590 0C02A45C */  jal        func_800A9170
/* AA194 800A9594 01C02025 */   or        $a0, $t6, $zero
/* AA198 800A9598 AFA2002C */  sw         $v0, 0x2c($sp)
/* AA19C 800A959C 8FAF0030 */  lw         $t7, 0x30($sp)
/* AA1A0 800A95A0 24010001 */  addiu      $at, $zero, 1
/* AA1A4 800A95A4 15E1000A */  bne        $t7, $at, .L800A95D0
/* AA1A8 800A95A8 00000000 */   nop
/* AA1AC 800A95AC 92180018 */  lbu        $t8, 0x18($s0)
/* AA1B0 800A95B0 8FA8002C */  lw         $t0, 0x2c($sp)
/* AA1B4 800A95B4 3C01FF00 */  lui        $at, 0xff00
/* AA1B8 800A95B8 3421FFFF */  ori        $at, $at, 0xffff
/* AA1BC 800A95BC 0018CC00 */  sll        $t9, $t8, 0x10
/* AA1C0 800A95C0 01014824 */  and        $t1, $t0, $at
/* AA1C4 800A95C4 03295025 */  or         $t2, $t9, $t1
/* AA1C8 800A95C8 10000014 */  b          .L800A961C
/* AA1CC 800A95CC AFAA002C */   sw        $t2, 0x2c($sp)
.L800A95D0:
/* AA1D0 800A95D0 8FAB0030 */  lw         $t3, 0x30($sp)
/* AA1D4 800A95D4 24010002 */  addiu      $at, $zero, 2
/* AA1D8 800A95D8 1561000A */  bne        $t3, $at, .L800A9604
/* AA1DC 800A95DC 00000000 */   nop
/* AA1E0 800A95E0 920C0018 */  lbu        $t4, 0x18($s0)
/* AA1E4 800A95E4 8FAE002C */  lw         $t6, 0x2c($sp)
/* AA1E8 800A95E8 3C01FFFF */  lui        $at, 0xffff
/* AA1EC 800A95EC 342100FF */  ori        $at, $at, 0xff
/* AA1F0 800A95F0 000C6A00 */  sll        $t5, $t4, 8
/* AA1F4 800A95F4 01C17824 */  and        $t7, $t6, $at
/* AA1F8 800A95F8 01AFC025 */  or         $t8, $t5, $t7
/* AA1FC 800A95FC 10000007 */  b          .L800A961C
/* AA200 800A9600 AFB8002C */   sw        $t8, 0x2c($sp)
.L800A9604:
/* AA204 800A9604 8FB9002C */  lw         $t9, 0x2c($sp)
/* AA208 800A9608 92080018 */  lbu        $t0, 0x18($s0)
/* AA20C 800A960C 2401FF00 */  addiu      $at, $zero, -0x100
/* AA210 800A9610 03214824 */  and        $t1, $t9, $at
/* AA214 800A9614 01095025 */  or         $t2, $t0, $t1
/* AA218 800A9618 AFAA002C */  sw         $t2, 0x2c($sp)
.L800A961C:
/* AA21C 800A961C 8E040010 */  lw         $a0, 0x10($s0)
/* AA220 800A9620 2401FFFC */  addiu      $at, $zero, -4
/* AA224 800A9624 8FA5002C */  lw         $a1, 0x2c($sp)
/* AA228 800A9628 00815824 */  and        $t3, $a0, $at
/* AA22C 800A962C 0C02A448 */  jal        func_800A9120
/* AA230 800A9630 01602025 */   or        $a0, $t3, $zero
/* AA234 800A9634 1000001F */  b          .L800A96B4
/* AA238 800A9638 00000000 */   nop
.L800A963C:
/* AA23C 800A963C 8E0C0014 */  lw         $t4, 0x14($s0)
/* AA240 800A9640 000C7082 */  srl        $t6, $t4, 2
/* AA244 800A9644 AFAE0028 */  sw         $t6, 0x28($sp)
/* AA248 800A9648 260D0018 */  addiu      $t5, $s0, 0x18
/* AA24C 800A964C AFAD0024 */  sw         $t5, 0x24($sp)
/* AA250 800A9650 8E0F0014 */  lw         $t7, 0x14($s0)
/* AA254 800A9654 31F80003 */  andi       $t8, $t7, 3
/* AA258 800A9658 13000003 */  beqz       $t8, .L800A9668
/* AA25C 800A965C 00000000 */   nop
/* AA260 800A9660 10000027 */  b          .L800A9700
/* AA264 800A9664 2402FFFB */   addiu     $v0, $zero, -5
.L800A9668:
/* AA268 800A9668 8FB90028 */  lw         $t9, 0x28($sp)
/* AA26C 800A966C 03208825 */  or         $s1, $t9, $zero
/* AA270 800A9670 2728FFFF */  addiu      $t0, $t9, -1
/* AA274 800A9674 1220000F */  beqz       $s1, .L800A96B4
/* AA278 800A9678 AFA80028 */   sw        $t0, 0x28($sp)
.L800A967C:
/* AA27C 800A967C 8FA90024 */  lw         $t1, 0x24($sp)
/* AA280 800A9680 8E040010 */  lw         $a0, 0x10($s0)
/* AA284 800A9684 8D250000 */  lw         $a1, ($t1)
/* AA288 800A9688 252A0004 */  addiu      $t2, $t1, 4
/* AA28C 800A968C 0C02A448 */  jal        func_800A9120
/* AA290 800A9690 AFAA0024 */   sw        $t2, 0x24($sp)
/* AA294 800A9694 8E0B0010 */  lw         $t3, 0x10($s0)
/* AA298 800A9698 256C0004 */  addiu      $t4, $t3, 4
/* AA29C 800A969C AE0C0010 */  sw         $t4, 0x10($s0)
/* AA2A0 800A96A0 8FAE0028 */  lw         $t6, 0x28($sp)
/* AA2A4 800A96A4 01C08825 */  or         $s1, $t6, $zero
/* AA2A8 800A96A8 25CDFFFF */  addiu      $t5, $t6, -1
/* AA2AC 800A96AC 1620FFF3 */  bnez       $s1, .L800A967C
/* AA2B0 800A96B0 AFAD0028 */   sw        $t5, 0x28($sp)
.L800A96B4:
/* AA2B4 800A96B4 10000005 */  b          .L800A96CC
/* AA2B8 800A96B8 00000000 */   nop
.L800A96BC:
/* AA2BC 800A96BC 8E040010 */  lw         $a0, 0x10($s0)
/* AA2C0 800A96C0 26050018 */  addiu      $a1, $s0, 0x18
/* AA2C4 800A96C4 0C02A475 */  jal        func_800A91D4
/* AA2C8 800A96C8 8E060014 */   lw        $a2, 0x14($s0)
.L800A96CC:
/* AA2CC 800A96CC 920F0004 */  lbu        $t7, 4($s0)
/* AA2D0 800A96D0 A3AF0038 */  sb         $t7, 0x38($sp)
/* AA2D4 800A96D4 A7A0003A */  sh         $zero, 0x3a($sp)
/* AA2D8 800A96D8 8E18000C */  lw         $t8, 0xc($s0)
/* AA2DC 800A96DC AFB80040 */  sw         $t8, 0x40($sp)
/* AA2E0 800A96E0 27A40034 */  addiu      $a0, $sp, 0x34
/* AA2E4 800A96E4 24050010 */  addiu      $a1, $zero, 0x10
/* AA2E8 800A96E8 0C026833 */  jal        func_8009A0CC
/* AA2EC 800A96EC 24060001 */   addiu     $a2, $zero, 1
/* AA2F0 800A96F0 10000003 */  b          .L800A9700
/* AA2F4 800A96F4 00001025 */   or        $v0, $zero, $zero
/* AA2F8 800A96F8 10000001 */  b          .L800A9700
/* AA2FC 800A96FC 00000000 */   nop
.L800A9700:
/* AA300 800A9700 8FBF001C */  lw         $ra, 0x1c($sp)
/* AA304 800A9704 8FB00014 */  lw         $s0, 0x14($sp)
/* AA308 800A9708 8FB10018 */  lw         $s1, 0x18($sp)
/* AA30C 800A970C 03E00008 */  jr         $ra
/* AA310 800A9710 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800A9714
/* AA314 800A9714 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AA318 800A9718 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA31C 800A971C AFA40038 */  sw         $a0, 0x38($sp)
/* AA320 800A9720 8FAE0038 */  lw         $t6, 0x38($sp)
/* AA324 800A9724 AFAE0034 */  sw         $t6, 0x34($sp)
/* AA328 800A9728 AFA00028 */  sw         $zero, 0x28($sp)
/* AA32C 800A972C 240F0001 */  addiu      $t7, $zero, 1
/* AA330 800A9730 A7AF002C */  sh         $t7, 0x2c($sp)
/* AA334 800A9734 8FB80038 */  lw         $t8, 0x38($sp)
/* AA338 800A9738 24010001 */  addiu      $at, $zero, 1
/* AA33C 800A973C 93190009 */  lbu        $t9, 9($t8)
/* AA340 800A9740 17210005 */  bne        $t9, $at, .L800A9758
/* AA344 800A9744 00000000 */   nop
/* AA348 800A9748 240803E9 */  addiu      $t0, $zero, 0x3e9
/* AA34C 800A974C 27A9001C */  addiu      $t1, $sp, 0x1c
/* AA350 800A9750 10000004 */  b          .L800A9764
/* AA354 800A9754 AD280014 */   sw        $t0, 0x14($t1)
.L800A9758:
/* AA358 800A9758 240A03EA */  addiu      $t2, $zero, 0x3ea
/* AA35C 800A975C 27AB001C */  addiu      $t3, $sp, 0x1c
/* AA360 800A9760 AD6A0014 */  sw         $t2, 0x14($t3)
.L800A9764:
/* AA364 800A9764 8FAC0034 */  lw         $t4, 0x34($sp)
/* AA368 800A9768 918D0004 */  lbu        $t5, 4($t4)
/* AA36C 800A976C A3AD0020 */  sb         $t5, 0x20($sp)
/* AA370 800A9770 A7A00022 */  sh         $zero, 0x22($sp)
/* AA374 800A9774 27A4001C */  addiu      $a0, $sp, 0x1c
/* AA378 800A9778 24050018 */  addiu      $a1, $zero, 0x18
/* AA37C 800A977C 0C026833 */  jal        func_8009A0CC
/* AA380 800A9780 24060001 */   addiu     $a2, $zero, 1
/* AA384 800A9784 10000003 */  b          .L800A9794
/* AA388 800A9788 00001025 */   or        $v0, $zero, $zero
/* AA38C 800A978C 10000001 */  b          .L800A9794
/* AA390 800A9790 00000000 */   nop
.L800A9794:
/* AA394 800A9794 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA398 800A9798 27BD0038 */  addiu      $sp, $sp, 0x38
/* AA39C 800A979C 03E00008 */  jr         $ra
/* AA3A0 800A97A0 00000000 */   nop

glabel func_800A97A4
/* AA3A4 800A97A4 AFA40000 */  sw         $a0, ($sp)
/* AA3A8 800A97A8 10000003 */  b          .L800A97B8
/* AA3AC 800A97AC 2402FFFF */   addiu     $v0, $zero, -1
/* AA3B0 800A97B0 10000001 */  b          .L800A97B8
/* AA3B4 800A97B4 00000000 */   nop
.L800A97B8:
/* AA3B8 800A97B8 03E00008 */  jr         $ra
/* AA3BC 800A97BC 00000000 */   nop

glabel func_800A97C0
/* AA3C0 800A97C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA3C4 800A97C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA3C8 800A97C8 AFA40020 */  sw         $a0, 0x20($sp)
/* AA3CC 800A97CC 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA3D0 800A97D0 AFAE001C */  sw         $t6, 0x1c($sp)
/* AA3D4 800A97D4 3C0F8019 */  lui        $t7, %hi(D_8018A290)
/* AA3D8 800A97D8 25EFA290 */  addiu      $t7, $t7, %lo(D_8018A290)
/* AA3DC 800A97DC AFAF0018 */  sw         $t7, 0x18($sp)
/* AA3E0 800A97E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* AA3E4 800A97E4 8FA80018 */  lw         $t0, 0x18($sp)
/* AA3E8 800A97E8 93190004 */  lbu        $t9, 4($t8)
/* AA3EC 800A97EC A1190004 */  sb         $t9, 4($t0)
/* AA3F0 800A97F0 8FA90018 */  lw         $t1, 0x18($sp)
/* AA3F4 800A97F4 A5200006 */  sh         $zero, 6($t1)
/* AA3F8 800A97F8 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA3FC 800A97FC 8FAC0018 */  lw         $t4, 0x18($sp)
/* AA400 800A9800 8D4B000C */  lw         $t3, 0xc($t2)
/* AA404 800A9804 AD8B000C */  sw         $t3, 0xc($t4)
/* AA408 800A9808 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA40C 800A980C 24010001 */  addiu      $at, $zero, 1
/* AA410 800A9810 91AE0009 */  lbu        $t6, 9($t5)
/* AA414 800A9814 15C10008 */  bne        $t6, $at, .L800A9838
/* AA418 800A9818 00000000 */   nop
/* AA41C 800A981C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA420 800A9820 3C05800F */  lui        $a1, %hi(D_800EDCD8)
/* AA424 800A9824 24A5DCD8 */  addiu      $a1, $a1, %lo(D_800EDCD8)
/* AA428 800A9828 0C02A493 */  jal        func_800A924C
/* AA42C 800A982C 24840010 */   addiu     $a0, $a0, 0x10
/* AA430 800A9830 10000006 */  b          .L800A984C
/* AA434 800A9834 00000000 */   nop
.L800A9838:
/* AA438 800A9838 8FA40018 */  lw         $a0, 0x18($sp)
/* AA43C 800A983C 3C05800F */  lui        $a1, %hi(D_800EDCE0)
/* AA440 800A9840 24A5DCE0 */  addiu      $a1, $a1, %lo(D_800EDCE0)
/* AA444 800A9844 0C02A493 */  jal        func_800A924C
/* AA448 800A9848 24840010 */   addiu     $a0, $a0, 0x10
.L800A984C:
/* AA44C 800A984C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA450 800A9850 24050018 */  addiu      $a1, $zero, 0x18
/* AA454 800A9854 0C026833 */  jal        func_8009A0CC
/* AA458 800A9858 24060001 */   addiu     $a2, $zero, 1
/* AA45C 800A985C 10000003 */  b          .L800A986C
/* AA460 800A9860 00001025 */   or        $v0, $zero, $zero
/* AA464 800A9864 10000001 */  b          .L800A986C
/* AA468 800A9868 00000000 */   nop
.L800A986C:
/* AA46C 800A986C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA470 800A9870 27BD0020 */  addiu      $sp, $sp, 0x20
/* AA474 800A9874 03E00008 */  jr         $ra
/* AA478 800A9878 00000000 */   nop

glabel func_800A987C
/* AA47C 800A987C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AA480 800A9880 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA484 800A9884 AFA40030 */  sw         $a0, 0x30($sp)
/* AA488 800A9888 8FAE0030 */  lw         $t6, 0x30($sp)
/* AA48C 800A988C AFAE002C */  sw         $t6, 0x2c($sp)
/* AA490 800A9890 8FAF002C */  lw         $t7, 0x2c($sp)
/* AA494 800A9894 91F80004 */  lbu        $t8, 4($t7)
/* AA498 800A9898 A3B8001C */  sb         $t8, 0x1c($sp)
/* AA49C 800A989C A7A0001E */  sh         $zero, 0x1e($sp)
/* AA4A0 800A98A0 8FB9002C */  lw         $t9, 0x2c($sp)
/* AA4A4 800A98A4 8F28000C */  lw         $t0, 0xc($t9)
/* AA4A8 800A98A8 AFA80024 */  sw         $t0, 0x24($sp)
/* AA4AC 800A98AC 8FA90030 */  lw         $t1, 0x30($sp)
/* AA4B0 800A98B0 24010001 */  addiu      $at, $zero, 1
/* AA4B4 800A98B4 912A0009 */  lbu        $t2, 9($t1)
/* AA4B8 800A98B8 15410004 */  bne        $t2, $at, .L800A98CC
/* AA4BC 800A98BC 00000000 */   nop
/* AA4C0 800A98C0 240B0002 */  addiu      $t3, $zero, 2
/* AA4C4 800A98C4 10000003 */  b          .L800A98D4
/* AA4C8 800A98C8 AFAB0028 */   sw        $t3, 0x28($sp)
.L800A98CC:
/* AA4CC 800A98CC 240C0005 */  addiu      $t4, $zero, 5
/* AA4D0 800A98D0 AFAC0028 */  sw         $t4, 0x28($sp)
.L800A98D4:
/* AA4D4 800A98D4 27A40018 */  addiu      $a0, $sp, 0x18
/* AA4D8 800A98D8 24050014 */  addiu      $a1, $zero, 0x14
/* AA4DC 800A98DC 0C026833 */  jal        func_8009A0CC
/* AA4E0 800A98E0 24060001 */   addiu     $a2, $zero, 1
/* AA4E4 800A98E4 10000003 */  b          .L800A98F4
/* AA4E8 800A98E8 00001025 */   or        $v0, $zero, $zero
/* AA4EC 800A98EC 10000001 */  b          .L800A98F4
/* AA4F0 800A98F0 00000000 */   nop
.L800A98F4:
/* AA4F4 800A98F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA4F8 800A98F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* AA4FC 800A98FC 03E00008 */  jr         $ra
/* AA500 800A9900 00000000 */   nop

glabel func_800A9904
/* AA504 800A9904 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AA508 800A9908 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA50C 800A990C AFA40028 */  sw         $a0, 0x28($sp)
/* AA510 800A9910 8FAE0028 */  lw         $t6, 0x28($sp)
/* AA514 800A9914 AFAE0024 */  sw         $t6, 0x24($sp)
/* AA518 800A9918 3C0F8019 */  lui        $t7, %hi(D_8018A290)
/* AA51C 800A991C 25EFA290 */  addiu      $t7, $t7, %lo(D_8018A290)
/* AA520 800A9920 AFAF0020 */  sw         $t7, 0x20($sp)
/* AA524 800A9924 8FB80028 */  lw         $t8, 0x28($sp)
/* AA528 800A9928 24010001 */  addiu      $at, $zero, 1
/* AA52C 800A992C 93190009 */  lbu        $t9, 9($t8)
/* AA530 800A9930 17210004 */  bne        $t9, $at, .L800A9944
/* AA534 800A9934 00000000 */   nop
/* AA538 800A9938 24080002 */  addiu      $t0, $zero, 2
/* AA53C 800A993C 10000003 */  b          .L800A994C
/* AA540 800A9940 AFA8001C */   sw        $t0, 0x1c($sp)
.L800A9944:
/* AA544 800A9944 24090006 */  addiu      $t1, $zero, 6
/* AA548 800A9948 AFA9001C */  sw         $t1, 0x1c($sp)
.L800A994C:
/* AA54C 800A994C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA550 800A9950 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA554 800A9954 000A5900 */  sll        $t3, $t2, 4
/* AA558 800A9958 256C0024 */  addiu      $t4, $t3, 0x24
/* AA55C 800A995C ADAC0000 */  sw         $t4, ($t5)
/* AA560 800A9960 8FAE0024 */  lw         $t6, 0x24($sp)
/* AA564 800A9964 8FB80020 */  lw         $t8, 0x20($sp)
/* AA568 800A9968 91CF0004 */  lbu        $t7, 4($t6)
/* AA56C 800A996C A30F0004 */  sb         $t7, 4($t8)
/* AA570 800A9970 8FB90020 */  lw         $t9, 0x20($sp)
/* AA574 800A9974 A7200006 */  sh         $zero, 6($t9)
/* AA578 800A9978 8FA80024 */  lw         $t0, 0x24($sp)
/* AA57C 800A997C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA580 800A9980 8D09000C */  lw         $t1, 0xc($t0)
/* AA584 800A9984 AD49000C */  sw         $t1, 0xc($t2)
/* AA588 800A9988 8FAB001C */  lw         $t3, 0x1c($sp)
/* AA58C 800A998C 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA590 800A9990 AD8B0010 */  sw         $t3, 0x10($t4)
/* AA594 800A9994 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA598 800A9998 3C0D0400 */  lui        $t5, 0x400
/* AA59C 800A999C 35AD1000 */  ori        $t5, $t5, 0x1000
/* AA5A0 800A99A0 ADCD0024 */  sw         $t5, 0x24($t6)
/* AA5A4 800A99A4 8FB80020 */  lw         $t8, 0x20($sp)
/* AA5A8 800A99A8 240F1000 */  addiu      $t7, $zero, 0x1000
/* AA5AC 800A99AC AF0F0028 */  sw         $t7, 0x28($t8)
/* AA5B0 800A99B0 8FA80020 */  lw         $t0, 0x20($sp)
/* AA5B4 800A99B4 24190007 */  addiu      $t9, $zero, 7
/* AA5B8 800A99B8 A519002C */  sh         $t9, 0x2c($t0)
/* AA5BC 800A99BC 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA5C0 800A99C0 3C090400 */  lui        $t1, 0x400
/* AA5C4 800A99C4 35291000 */  ori        $t1, $t1, 0x1000
/* AA5C8 800A99C8 AD490030 */  sw         $t1, 0x30($t2)
/* AA5CC 800A99CC 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA5D0 800A99D0 3C0B0400 */  lui        $t3, 0x400
/* AA5D4 800A99D4 AD8B0014 */  sw         $t3, 0x14($t4)
/* AA5D8 800A99D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA5DC 800A99DC 240D1000 */  addiu      $t5, $zero, 0x1000
/* AA5E0 800A99E0 ADCD0018 */  sw         $t5, 0x18($t6)
/* AA5E4 800A99E4 8FB80020 */  lw         $t8, 0x20($sp)
/* AA5E8 800A99E8 240F0003 */  addiu      $t7, $zero, 3
/* AA5EC 800A99EC A70F001C */  sh         $t7, 0x1c($t8)
/* AA5F0 800A99F0 8FA80020 */  lw         $t0, 0x20($sp)
/* AA5F4 800A99F4 3C190400 */  lui        $t9, 0x400
/* AA5F8 800A99F8 AD190020 */  sw         $t9, 0x20($t0)
/* AA5FC 800A99FC 8FA9001C */  lw         $t1, 0x1c($sp)
/* AA600 800A9A00 29210003 */  slti       $at, $t1, 3
/* AA604 800A9A04 1420002F */  bnez       $at, .L800A9AC4
/* AA608 800A9A08 00000000 */   nop
/* AA60C 800A9A0C 8FAB0020 */  lw         $t3, 0x20($sp)
/* AA610 800A9A10 3C0A8820 */  lui        $t2, 0x8820
/* AA614 800A9A14 AD6A0034 */  sw         $t2, 0x34($t3)
/* AA618 800A9A18 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA61C 800A9A1C 240C6130 */  addiu      $t4, $zero, 0x6130
/* AA620 800A9A20 ADAC0038 */  sw         $t4, 0x38($t5)
/* AA624 800A9A24 8FAF0020 */  lw         $t7, 0x20($sp)
/* AA628 800A9A28 240E0005 */  addiu      $t6, $zero, 5
/* AA62C 800A9A2C A5EE003C */  sh         $t6, 0x3c($t7)
/* AA630 800A9A30 8FB80020 */  lw         $t8, 0x20($sp)
/* AA634 800A9A34 AF000040 */  sw         $zero, 0x40($t8)
/* AA638 800A9A38 8FA80020 */  lw         $t0, 0x20($sp)
/* AA63C 800A9A3C 24190004 */  addiu      $t9, $zero, 4
/* AA640 800A9A40 AD190044 */  sw         $t9, 0x44($t0)
/* AA644 800A9A44 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA648 800A9A48 3C090020 */  lui        $t1, 0x20
/* AA64C 800A9A4C AD490048 */  sw         $t1, 0x48($t2)
/* AA650 800A9A50 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA654 800A9A54 240B0003 */  addiu      $t3, $zero, 3
/* AA658 800A9A58 A58B004C */  sh         $t3, 0x4c($t4)
/* AA65C 800A9A5C 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA660 800A9A60 ADA00050 */  sw         $zero, 0x50($t5)
/* AA664 800A9A64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AA668 800A9A68 3C0E0400 */  lui        $t6, 0x400
/* AA66C 800A9A6C 35CE2000 */  ori        $t6, $t6, 0x2000
/* AA670 800A9A70 ADEE0054 */  sw         $t6, 0x54($t7)
/* AA674 800A9A74 8FB90020 */  lw         $t9, 0x20($sp)
/* AA678 800A9A78 3C180080 */  lui        $t8, 0x80
/* AA67C 800A9A7C AF380058 */  sw         $t8, 0x58($t9)
/* AA680 800A9A80 8FA90020 */  lw         $t1, 0x20($sp)
/* AA684 800A9A84 24080003 */  addiu      $t0, $zero, 3
/* AA688 800A9A88 A528005C */  sh         $t0, 0x5c($t1)
/* AA68C 800A9A8C 8FAA0020 */  lw         $t2, 0x20($sp)
/* AA690 800A9A90 AD400060 */  sw         $zero, 0x60($t2)
/* AA694 800A9A94 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA698 800A9A98 3C0B8820 */  lui        $t3, 0x8820
/* AA69C 800A9A9C 356B6130 */  ori        $t3, $t3, 0x6130
/* AA6A0 800A9AA0 AD8B0064 */  sw         $t3, 0x64($t4)
/* AA6A4 800A9AA4 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA6A8 800A9AA8 340D9000 */  ori        $t5, $zero, 0x9000
/* AA6AC 800A9AAC ADCD0068 */  sw         $t5, 0x68($t6)
/* AA6B0 800A9AB0 8FB80020 */  lw         $t8, 0x20($sp)
/* AA6B4 800A9AB4 240F0003 */  addiu      $t7, $zero, 3
/* AA6B8 800A9AB8 A70F006C */  sh         $t7, 0x6c($t8)
/* AA6BC 800A9ABC 8FB90020 */  lw         $t9, 0x20($sp)
/* AA6C0 800A9AC0 AF200070 */  sw         $zero, 0x70($t9)
.L800A9AC4:
/* AA6C4 800A9AC4 8FA80020 */  lw         $t0, 0x20($sp)
/* AA6C8 800A9AC8 24060001 */  addiu      $a2, $zero, 1
/* AA6CC 800A9ACC 01002025 */  or         $a0, $t0, $zero
/* AA6D0 800A9AD0 0C026833 */  jal        func_8009A0CC
/* AA6D4 800A9AD4 8D050000 */   lw        $a1, ($t0)
/* AA6D8 800A9AD8 10000003 */  b          .L800A9AE8
/* AA6DC 800A9ADC 00001025 */   or        $v0, $zero, $zero
/* AA6E0 800A9AE0 10000001 */  b          .L800A9AE8
/* AA6E4 800A9AE4 00000000 */   nop
.L800A9AE8:
/* AA6E8 800A9AE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA6EC 800A9AEC 27BD0028 */  addiu      $sp, $sp, 0x28
/* AA6F0 800A9AF0 03E00008 */  jr         $ra
/* AA6F4 800A9AF4 00000000 */   nop
/* AA6F8 800A9AF8 00000000 */  nop
/* AA6FC 800A9AFC 00000000 */  nop
