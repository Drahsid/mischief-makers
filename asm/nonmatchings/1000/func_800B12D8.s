glabel func_800B12D8
/* B1ED8 800B12D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B1EDC 800B12DC AFBF001C */  sw         $ra, 0x1c($sp)
/* B1EE0 800B12E0 AFA40030 */  sw         $a0, 0x30($sp)
/* B1EE4 800B12E4 AFA50034 */  sw         $a1, 0x34($sp)
/* B1EE8 800B12E8 AFA60038 */  sw         $a2, 0x38($sp)
/* B1EEC 800B12EC AFB00018 */  sw         $s0, 0x18($sp)
/* B1EF0 800B12F0 8FAE0030 */  lw         $t6, 0x30($sp)
/* B1EF4 800B12F4 AFAE002C */  sw         $t6, 0x2c($sp)
/* B1EF8 800B12F8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B1EFC 800B12FC AFAF0028 */  sw         $t7, 0x28($sp)
/* B1F00 800B1300 8FB00034 */  lw         $s0, 0x34($sp)
/* B1F04 800B1304 24010001 */  addiu      $at, $zero, 1
/* B1F08 800B1308 12010044 */  beq        $s0, $at, .L800B141C
/* B1F0C 800B130C 00000000 */   nop
/* B1F10 800B1310 24010003 */  addiu      $at, $zero, 3
/* B1F14 800B1314 12010009 */  beq        $s0, $at, .L800B133C
/* B1F18 800B1318 00000000 */   nop
/* B1F1C 800B131C 24010004 */  addiu      $at, $zero, 4
/* B1F20 800B1320 12010017 */  beq        $s0, $at, .L800B1380
/* B1F24 800B1324 00000000 */   nop
/* B1F28 800B1328 24010009 */  addiu      $at, $zero, 9
/* B1F2C 800B132C 1201002A */  beq        $s0, $at, .L800B13D8
/* B1F30 800B1330 00000000 */   nop
/* B1F34 800B1334 1000003E */  b          .L800B1430
/* B1F38 800B1338 00000000 */   nop
.L800B133C:
/* B1F3C 800B133C 8FB80028 */  lw         $t8, 0x28($sp)
/* B1F40 800B1340 8F190040 */  lw         $t9, 0x40($t8)
/* B1F44 800B1344 13200006 */  beqz       $t9, .L800B1360
/* B1F48 800B1348 00000000 */   nop
/* B1F4C 800B134C 8FA90028 */  lw         $t1, 0x28($sp)
/* B1F50 800B1350 8FA80038 */  lw         $t0, 0x38($sp)
/* B1F54 800B1354 8D2A0040 */  lw         $t2, 0x40($t1)
/* B1F58 800B1358 10000004 */  b          .L800B136C
/* B1F5C 800B135C AD480000 */   sw        $t0, ($t2)
.L800B1360:
/* B1F60 800B1360 8FAB0038 */  lw         $t3, 0x38($sp)
/* B1F64 800B1364 8FAC0028 */  lw         $t4, 0x28($sp)
/* B1F68 800B1368 AD8B003C */  sw         $t3, 0x3c($t4)
.L800B136C:
/* B1F6C 800B136C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B1F70 800B1370 8FAE0028 */  lw         $t6, 0x28($sp)
/* B1F74 800B1374 ADCD0040 */  sw         $t5, 0x40($t6)
/* B1F78 800B1378 10000039 */  b          .L800B1460
/* B1F7C 800B137C 00000000 */   nop
.L800B1380:
/* B1F80 800B1380 8FB80028 */  lw         $t8, 0x28($sp)
/* B1F84 800B1384 240F0001 */  addiu      $t7, $zero, 1
/* B1F88 800B1388 AF0F0038 */  sw         $t7, 0x38($t8)
/* B1F8C 800B138C 8FB90028 */  lw         $t9, 0x28($sp)
/* B1F90 800B1390 AF200048 */  sw         $zero, 0x48($t9)
/* B1F94 800B1394 8FA80028 */  lw         $t0, 0x28($sp)
/* B1F98 800B1398 24090001 */  addiu      $t1, $zero, 1
/* B1F9C 800B139C A509001A */  sh         $t1, 0x1a($t0)
/* B1FA0 800B13A0 8FAA002C */  lw         $t2, 0x2c($sp)
/* B1FA4 800B13A4 8D4B0000 */  lw         $t3, ($t2)
/* B1FA8 800B13A8 11600009 */  beqz       $t3, .L800B13D0
/* B1FAC 800B13AC 00000000 */   nop
/* B1FB0 800B13B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* B1FB4 800B13B4 24050004 */  addiu      $a1, $zero, 4
/* B1FB8 800B13B8 8FA60038 */  lw         $a2, 0x38($sp)
/* B1FBC 800B13BC 8D8D0000 */  lw         $t5, ($t4)
/* B1FC0 800B13C0 8DB90008 */  lw         $t9, 8($t5)
/* B1FC4 800B13C4 01A02025 */  or         $a0, $t5, $zero
/* B1FC8 800B13C8 0320F809 */  jalr       $t9
/* B1FCC 800B13CC 00000000 */   nop
.L800B13D0:
/* B1FD0 800B13D0 10000023 */  b          .L800B1460
/* B1FD4 800B13D4 00000000 */   nop
.L800B13D8:
/* B1FD8 800B13D8 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1FDC 800B13DC 240E0001 */  addiu      $t6, $zero, 1
/* B1FE0 800B13E0 ADEE0048 */  sw         $t6, 0x48($t7)
/* B1FE4 800B13E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B1FE8 800B13E8 8F090000 */  lw         $t1, ($t8)
/* B1FEC 800B13EC 11200009 */  beqz       $t1, .L800B1414
/* B1FF0 800B13F0 00000000 */   nop
/* B1FF4 800B13F4 8FA8002C */  lw         $t0, 0x2c($sp)
/* B1FF8 800B13F8 24050009 */  addiu      $a1, $zero, 9
/* B1FFC 800B13FC 8FA60038 */  lw         $a2, 0x38($sp)
/* B2000 800B1400 8D0A0000 */  lw         $t2, ($t0)
/* B2004 800B1404 8D590008 */  lw         $t9, 8($t2)
/* B2008 800B1408 01402025 */  or         $a0, $t2, $zero
/* B200C 800B140C 0320F809 */  jalr       $t9
/* B2010 800B1410 00000000 */   nop
.L800B1414:
/* B2014 800B1414 10000012 */  b          .L800B1460
/* B2018 800B1418 00000000 */   nop
.L800B141C:
/* B201C 800B141C 8FAB0038 */  lw         $t3, 0x38($sp)
/* B2020 800B1420 8FAC002C */  lw         $t4, 0x2c($sp)
/* B2024 800B1424 AD8B0000 */  sw         $t3, ($t4)
/* B2028 800B1428 1000000D */  b          .L800B1460
/* B202C 800B142C 00000000 */   nop
.L800B1430:
/* B2030 800B1430 8FAD002C */  lw         $t5, 0x2c($sp)
/* B2034 800B1434 8DAE0000 */  lw         $t6, ($t5)
/* B2038 800B1438 11C00009 */  beqz       $t6, .L800B1460
/* B203C 800B143C 00000000 */   nop
/* B2040 800B1440 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2044 800B1444 8FA50034 */  lw         $a1, 0x34($sp)
/* B2048 800B1448 8FA60038 */  lw         $a2, 0x38($sp)
/* B204C 800B144C 8DF80000 */  lw         $t8, ($t7)
/* B2050 800B1450 8F190008 */  lw         $t9, 8($t8)
/* B2054 800B1454 03002025 */  or         $a0, $t8, $zero
/* B2058 800B1458 0320F809 */  jalr       $t9
/* B205C 800B145C 00000000 */   nop
.L800B1460:
/* B2060 800B1460 10000003 */  b          .L800B1470
/* B2064 800B1464 00001025 */   or        $v0, $zero, $zero
/* B2068 800B1468 10000001 */  b          .L800B1470
/* B206C 800B146C 00000000 */   nop
.L800B1470:
/* B2070 800B1470 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2074 800B1474 8FB00018 */  lw         $s0, 0x18($sp)
/* B2078 800B1478 27BD0030 */  addiu      $sp, $sp, 0x30
/* B207C 800B147C 03E00008 */  jr         $ra
/* B2080 800B1480 00000000 */   nop
