glabel func_800B6370
/* B6F70 800B6370 27BDFDB0 */  addiu      $sp, $sp, -0x250
/* B6F74 800B6374 AFBF0024 */  sw         $ra, 0x24($sp)
/* B6F78 800B6378 AFA40250 */  sw         $a0, 0x250($sp)
/* B6F7C 800B637C AFB20020 */  sw         $s2, 0x20($sp)
/* B6F80 800B6380 AFB1001C */  sw         $s1, 0x1c($sp)
/* B6F84 800B6384 AFB00018 */  sw         $s0, 0x18($sp)
/* B6F88 800B6388 8FB00250 */  lw         $s0, 0x250($sp)
/* B6F8C 800B638C 0C02E998 */  jal        func_800BA660
/* B6F90 800B6390 00000000 */   nop
/* B6F94 800B6394 10400003 */  beqz       $v0, .L800B63A4
/* B6F98 800B6398 00000000 */   nop
/* B6F9C 800B639C 1000003C */  b          .L800B6490
/* B6FA0 800B63A0 2402FFFC */   addiu     $v0, $zero, -4
.L800B63A4:
/* B6FA4 800B63A4 8E0E000C */  lw         $t6, 0xc($s0)
/* B6FA8 800B63A8 AFAE003C */  sw         $t6, 0x3c($sp)
/* B6FAC 800B63AC 920F0004 */  lbu        $t7, 4($s0)
/* B6FB0 800B63B0 A3AF0034 */  sb         $t7, 0x34($sp)
/* B6FB4 800B63B4 A7A00036 */  sh         $zero, 0x36($sp)
/* B6FB8 800B63B8 24180210 */  addiu      $t8, $zero, 0x210
/* B6FBC 800B63BC AFB80030 */  sw         $t8, 0x30($sp)
/* B6FC0 800B63C0 24190210 */  addiu      $t9, $zero, 0x210
/* B6FC4 800B63C4 AFB90244 */  sw         $t9, 0x244($sp)
/* B6FC8 800B63C8 27A80244 */  addiu      $t0, $sp, 0x244
/* B6FCC 800B63CC AFA8024C */  sw         $t0, 0x24c($sp)
/* B6FD0 800B63D0 AFA00248 */  sw         $zero, 0x248($sp)
/* B6FD4 800B63D4 8FA90248 */  lw         $t1, 0x248($sp)
/* B6FD8 800B63D8 29210004 */  slti       $at, $t1, 4
/* B6FDC 800B63DC 10200010 */  beqz       $at, .L800B6420
/* B6FE0 800B63E0 00000000 */   nop
.L800B63E4:
/* B6FE4 800B63E4 8FAB0248 */  lw         $t3, 0x248($sp)
/* B6FE8 800B63E8 8FAA024C */  lw         $t2, 0x24c($sp)
/* B6FEC 800B63EC 240C0004 */  addiu      $t4, $zero, 4
/* B6FF0 800B63F0 24060008 */  addiu      $a2, $zero, 8
/* B6FF4 800B63F4 018B2823 */  subu       $a1, $t4, $t3
/* B6FF8 800B63F8 0C02A254 */  jal        func_800A8950
/* B6FFC 800B63FC 014B2021 */   addu      $a0, $t2, $t3
/* B7000 800B6400 8FAD0248 */  lw         $t5, 0x248($sp)
/* B7004 800B6404 00409025 */  or         $s2, $v0, $zero
/* B7008 800B6408 01B27021 */  addu       $t6, $t5, $s2
/* B700C 800B640C AFAE0248 */  sw         $t6, 0x248($sp)
/* B7010 800B6410 8FAF0248 */  lw         $t7, 0x248($sp)
/* B7014 800B6414 29E10004 */  slti       $at, $t7, 4
/* B7018 800B6418 1420FFF2 */  bnez       $at, .L800B63E4
/* B701C 800B641C 00000000 */   nop
.L800B6420:
/* B7020 800B6420 27A40030 */  addiu      $a0, $sp, 0x30
/* B7024 800B6424 24050010 */  addiu      $a1, $zero, 0x10
/* B7028 800B6428 0C026808 */  jal        func_8009A020
/* B702C 800B642C 24060001 */   addiu     $a2, $zero, 1
/* B7030 800B6430 0C02D6AE */  jal        func_800B5AB8
/* B7034 800B6434 24040001 */   addiu     $a0, $zero, 1
/* B7038 800B6438 00008825 */  or         $s1, $zero, $zero
/* B703C 800B643C 2A210020 */  slti       $at, $s1, 0x20
/* B7040 800B6440 1020000D */  beqz       $at, .L800B6478
/* B7044 800B6444 00000000 */   nop
.L800B6448:
/* B7048 800B6448 2404003A */  addiu      $a0, $zero, 0x3a
/* B704C 800B644C 0C02D687 */  jal        func_800B5A1C
/* B7050 800B6450 02202825 */   or        $a1, $s1, $zero
/* B7054 800B6454 0C02E9B2 */  jal        func_800BA6C8
/* B7058 800B6458 00000000 */   nop
/* B705C 800B645C 3C040400 */  lui        $a0, 0x400
/* B7060 800B6460 0C02685F */  jal        func_8009A17C
/* B7064 800B6464 24050010 */   addiu     $a1, $zero, 0x10
/* B7068 800B6468 26310001 */  addiu      $s1, $s1, 1
/* B706C 800B646C 2A210020 */  slti       $at, $s1, 0x20
/* B7070 800B6470 1420FFF5 */  bnez       $at, .L800B6448
/* B7074 800B6474 00000000 */   nop
.L800B6478:
/* B7078 800B6478 0C02D6DA */  jal        func_800B5B68
/* B707C 800B647C 24040001 */   addiu     $a0, $zero, 1
/* B7080 800B6480 10000003 */  b          .L800B6490
/* B7084 800B6484 00001025 */   or        $v0, $zero, $zero
/* B7088 800B6488 10000001 */  b          .L800B6490
/* B708C 800B648C 00000000 */   nop
.L800B6490:
/* B7090 800B6490 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7094 800B6494 8FB00018 */  lw         $s0, 0x18($sp)
/* B7098 800B6498 8FB1001C */  lw         $s1, 0x1c($sp)
/* B709C 800B649C 8FB20020 */  lw         $s2, 0x20($sp)
/* B70A0 800B64A0 03E00008 */  jr         $ra
/* B70A4 800B64A4 27BD0250 */   addiu     $sp, $sp, 0x250
