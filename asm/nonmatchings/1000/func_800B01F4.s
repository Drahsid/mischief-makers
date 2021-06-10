glabel func_800B01F4
/* B0DF4 800B01F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B0DF8 800B01F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B0DFC 800B01FC AFA40030 */  sw         $a0, 0x30($sp)
/* B0E00 800B0200 AFA50034 */  sw         $a1, 0x34($sp)
/* B0E04 800B0204 AFA60038 */  sw         $a2, 0x38($sp)
/* B0E08 800B0208 AFB00018 */  sw         $s0, 0x18($sp)
/* B0E0C 800B020C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B0E10 800B0210 AFAE002C */  sw         $t6, 0x2c($sp)
/* B0E14 800B0214 8FAF0030 */  lw         $t7, 0x30($sp)
/* B0E18 800B0218 AFAF0028 */  sw         $t7, 0x28($sp)
/* B0E1C 800B021C 8FB00034 */  lw         $s0, 0x34($sp)
/* B0E20 800B0220 24010004 */  addiu      $at, $zero, 4
/* B0E24 800B0224 1201007C */  beq        $s0, $at, .L800B0418
/* B0E28 800B0228 00000000 */   nop
/* B0E2C 800B022C 24010005 */  addiu      $at, $zero, 5
/* B0E30 800B0230 12010003 */  beq        $s0, $at, .L800B0240
/* B0E34 800B0234 00000000 */   nop
/* B0E38 800B0238 100000A9 */  b          .L800B04E0
/* B0E3C 800B023C 00000000 */   nop
.L800B0240:
/* B0E40 800B0240 8FB80038 */  lw         $t8, 0x38($sp)
/* B0E44 800B0244 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0E48 800B0248 AF380028 */  sw         $t8, 0x28($t9)
/* B0E4C 800B024C 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0E50 800B0250 8D090028 */  lw         $t1, 0x28($t0)
/* B0E54 800B0254 8D2A0000 */  lw         $t2, ($t1)
/* B0E58 800B0258 AD0A0044 */  sw         $t2, 0x44($t0)
/* B0E5C 800B025C 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0E60 800B0260 AD600038 */  sw         $zero, 0x38($t3)
/* B0E64 800B0264 8FAC002C */  lw         $t4, 0x2c($sp)
/* B0E68 800B0268 8D8D0028 */  lw         $t5, 0x28($t4)
/* B0E6C 800B026C 91B00008 */  lbu        $s0, 8($t5)
/* B0E70 800B0270 12000006 */  beqz       $s0, .L800B028C
/* B0E74 800B0274 00000000 */   nop
/* B0E78 800B0278 24010001 */  addiu      $at, $zero, 1
/* B0E7C 800B027C 12010040 */  beq        $s0, $at, .L800B0380
/* B0E80 800B0280 00000000 */   nop
/* B0E84 800B0284 10000060 */  b          .L800B0408
/* B0E88 800B0288 00000000 */   nop
.L800B028C:
/* B0E8C 800B028C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B0E90 800B0290 3C0E800B */  lui        $t6, %hi(func_800AF510)
/* B0E94 800B0294 25CEF510 */  addiu      $t6, $t6, %lo(func_800AF510)
/* B0E98 800B0298 ADEE0004 */  sw         $t6, 4($t7)
/* B0E9C 800B029C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B0EA0 800B02A0 24010009 */  addiu      $at, $zero, 9
/* B0EA4 800B02A4 8F190028 */  lw         $t9, 0x28($t8)
/* B0EA8 800B02A8 8F290004 */  lw         $t1, 4($t9)
/* B0EAC 800B02AC 0121001A */  div        $zero, $t1, $at
/* B0EB0 800B02B0 00005012 */  mflo       $t2
/* B0EB4 800B02B4 000A40C0 */  sll        $t0, $t2, 3
/* B0EB8 800B02B8 010A4021 */  addu       $t0, $t0, $t2
/* B0EBC 800B02BC AF280004 */  sw         $t0, 4($t9)
/* B0EC0 800B02C0 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0EC4 800B02C4 8D6C0028 */  lw         $t4, 0x28($t3)
/* B0EC8 800B02C8 8D8D0010 */  lw         $t5, 0x10($t4)
/* B0ECC 800B02CC 8DAE0000 */  lw         $t6, ($t5)
/* B0ED0 800B02D0 8DB80004 */  lw         $t8, 4($t5)
/* B0ED4 800B02D4 000E7840 */  sll        $t7, $t6, 1
/* B0ED8 800B02D8 01F80019 */  multu      $t7, $t8
/* B0EDC 800B02DC 00004812 */  mflo       $t1
/* B0EE0 800B02E0 000950C0 */  sll        $t2, $t1, 3
/* B0EE4 800B02E4 AD6A002C */  sw         $t2, 0x2c($t3)
/* B0EE8 800B02E8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0EEC 800B02EC 8D190028 */  lw         $t9, 0x28($t0)
/* B0EF0 800B02F0 8F2C000C */  lw         $t4, 0xc($t9)
/* B0EF4 800B02F4 11800019 */  beqz       $t4, .L800B035C
/* B0EF8 800B02F8 00000000 */   nop
/* B0EFC 800B02FC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0F00 800B0300 8DCD0028 */  lw         $t5, 0x28($t6)
/* B0F04 800B0304 8DAF000C */  lw         $t7, 0xc($t5)
/* B0F08 800B0308 8DF80000 */  lw         $t8, ($t7)
/* B0F0C 800B030C ADD8001C */  sw         $t8, 0x1c($t6)
/* B0F10 800B0310 8FA9002C */  lw         $t1, 0x2c($sp)
/* B0F14 800B0314 8D2A0028 */  lw         $t2, 0x28($t1)
/* B0F18 800B0318 8D4B000C */  lw         $t3, 0xc($t2)
/* B0F1C 800B031C 8D680004 */  lw         $t0, 4($t3)
/* B0F20 800B0320 AD280020 */  sw         $t0, 0x20($t1)
/* B0F24 800B0324 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0F28 800B0328 8F2C0028 */  lw         $t4, 0x28($t9)
/* B0F2C 800B032C 8D8D000C */  lw         $t5, 0xc($t4)
/* B0F30 800B0330 8DAF0008 */  lw         $t7, 8($t5)
/* B0F34 800B0334 AF2F0024 */  sw         $t7, 0x24($t9)
/* B0F38 800B0338 8FB8002C */  lw         $t8, 0x2c($sp)
/* B0F3C 800B033C 24060020 */  addiu      $a2, $zero, 0x20
/* B0F40 800B0340 8F0E0028 */  lw         $t6, 0x28($t8)
/* B0F44 800B0344 8F050018 */  lw         $a1, 0x18($t8)
/* B0F48 800B0348 8DC4000C */  lw         $a0, 0xc($t6)
/* B0F4C 800B034C 0C02DF1C */  jal        func_800B7C70
/* B0F50 800B0350 2484000C */   addiu     $a0, $a0, 0xc
/* B0F54 800B0354 10000008 */  b          .L800B0378
/* B0F58 800B0358 00000000 */   nop
.L800B035C:
/* B0F5C 800B035C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B0F60 800B0360 AD400024 */  sw         $zero, 0x24($t2)
/* B0F64 800B0364 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0F68 800B0368 8D700024 */  lw         $s0, 0x24($t3)
/* B0F6C 800B036C AD700020 */  sw         $s0, 0x20($t3)
/* B0F70 800B0370 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0F74 800B0374 AD10001C */  sw         $s0, 0x1c($t0)
.L800B0378:
/* B0F78 800B0378 10000025 */  b          .L800B0410
/* B0F7C 800B037C 00000000 */   nop
.L800B0380:
/* B0F80 800B0380 8FAC0028 */  lw         $t4, 0x28($sp)
/* B0F84 800B0384 3C09800B */  lui        $t1, %hi(func_800AFBB8)
/* B0F88 800B0388 2529FBB8 */  addiu      $t1, $t1, %lo(func_800AFBB8)
/* B0F8C 800B038C AD890004 */  sw         $t1, 4($t4)
/* B0F90 800B0390 8FAD002C */  lw         $t5, 0x2c($sp)
/* B0F94 800B0394 8DAF0028 */  lw         $t7, 0x28($t5)
/* B0F98 800B0398 8DF9000C */  lw         $t9, 0xc($t7)
/* B0F9C 800B039C 13200011 */  beqz       $t9, .L800B03E4
/* B0FA0 800B03A0 00000000 */   nop
/* B0FA4 800B03A4 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0FA8 800B03A8 8DD80028 */  lw         $t8, 0x28($t6)
/* B0FAC 800B03AC 8F0A000C */  lw         $t2, 0xc($t8)
/* B0FB0 800B03B0 8D4B0000 */  lw         $t3, ($t2)
/* B0FB4 800B03B4 ADCB001C */  sw         $t3, 0x1c($t6)
/* B0FB8 800B03B8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0FBC 800B03BC 8D090028 */  lw         $t1, 0x28($t0)
/* B0FC0 800B03C0 8D2C000C */  lw         $t4, 0xc($t1)
/* B0FC4 800B03C4 8D8D0004 */  lw         $t5, 4($t4)
/* B0FC8 800B03C8 AD0D0020 */  sw         $t5, 0x20($t0)
/* B0FCC 800B03CC 8FAF002C */  lw         $t7, 0x2c($sp)
/* B0FD0 800B03D0 8DF90028 */  lw         $t9, 0x28($t7)
/* B0FD4 800B03D4 8F38000C */  lw         $t8, 0xc($t9)
/* B0FD8 800B03D8 8F0A0008 */  lw         $t2, 8($t8)
/* B0FDC 800B03DC 10000008 */  b          .L800B0400
/* B0FE0 800B03E0 ADEA0024 */   sw        $t2, 0x24($t7)
.L800B03E4:
/* B0FE4 800B03E4 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0FE8 800B03E8 AD600024 */  sw         $zero, 0x24($t3)
/* B0FEC 800B03EC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0FF0 800B03F0 8DD00024 */  lw         $s0, 0x24($t6)
/* B0FF4 800B03F4 ADD00020 */  sw         $s0, 0x20($t6)
/* B0FF8 800B03F8 8FA9002C */  lw         $t1, 0x2c($sp)
/* B0FFC 800B03FC AD30001C */  sw         $s0, 0x1c($t1)
.L800B0400:
/* B1000 800B0400 10000003 */  b          .L800B0410
/* B1004 800B0404 00000000 */   nop
.L800B0408:
/* B1008 800B0408 10000001 */  b          .L800B0410
/* B100C 800B040C 00000000 */   nop
.L800B0410:
/* B1010 800B0410 10000035 */  b          .L800B04E8
/* B1014 800B0414 00000000 */   nop
.L800B0418:
/* B1018 800B0418 8FAC002C */  lw         $t4, 0x2c($sp)
/* B101C 800B041C AD80003C */  sw         $zero, 0x3c($t4)
/* B1020 800B0420 8FA8002C */  lw         $t0, 0x2c($sp)
/* B1024 800B0424 240D0001 */  addiu      $t5, $zero, 1
/* B1028 800B0428 AD0D0040 */  sw         $t5, 0x40($t0)
/* B102C 800B042C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B1030 800B0430 AF200038 */  sw         $zero, 0x38($t9)
/* B1034 800B0434 8FB8002C */  lw         $t8, 0x2c($sp)
/* B1038 800B0438 8F0A0028 */  lw         $t2, 0x28($t8)
/* B103C 800B043C 11400026 */  beqz       $t2, .L800B04D8
/* B1040 800B0440 00000000 */   nop
/* B1044 800B0444 8FAF002C */  lw         $t7, 0x2c($sp)
/* B1048 800B0448 8DEB0028 */  lw         $t3, 0x28($t7)
/* B104C 800B044C 8D6E0000 */  lw         $t6, ($t3)
/* B1050 800B0450 ADEE0044 */  sw         $t6, 0x44($t7)
/* B1054 800B0454 8FA9002C */  lw         $t1, 0x2c($sp)
/* B1058 800B0458 8D2C0028 */  lw         $t4, 0x28($t1)
/* B105C 800B045C 918D0008 */  lbu        $t5, 8($t4)
/* B1060 800B0460 15A0000D */  bnez       $t5, .L800B0498
/* B1064 800B0464 00000000 */   nop
/* B1068 800B0468 8FA8002C */  lw         $t0, 0x2c($sp)
/* B106C 800B046C 8D190028 */  lw         $t9, 0x28($t0)
/* B1070 800B0470 8F38000C */  lw         $t8, 0xc($t9)
/* B1074 800B0474 13000006 */  beqz       $t8, .L800B0490
/* B1078 800B0478 00000000 */   nop
/* B107C 800B047C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B1080 800B0480 8D4B0028 */  lw         $t3, 0x28($t2)
/* B1084 800B0484 8D6E000C */  lw         $t6, 0xc($t3)
/* B1088 800B0488 8DCF0008 */  lw         $t7, 8($t6)
/* B108C 800B048C AD4F0024 */  sw         $t7, 0x24($t2)
.L800B0490:
/* B1090 800B0490 10000011 */  b          .L800B04D8
/* B1094 800B0494 00000000 */   nop
.L800B0498:
/* B1098 800B0498 8FA9002C */  lw         $t1, 0x2c($sp)
/* B109C 800B049C 24010001 */  addiu      $at, $zero, 1
/* B10A0 800B04A0 8D2C0028 */  lw         $t4, 0x28($t1)
/* B10A4 800B04A4 918D0008 */  lbu        $t5, 8($t4)
/* B10A8 800B04A8 15A1000B */  bne        $t5, $at, .L800B04D8
/* B10AC 800B04AC 00000000 */   nop
/* B10B0 800B04B0 8FA8002C */  lw         $t0, 0x2c($sp)
/* B10B4 800B04B4 8D190028 */  lw         $t9, 0x28($t0)
/* B10B8 800B04B8 8F38000C */  lw         $t8, 0xc($t9)
/* B10BC 800B04BC 13000006 */  beqz       $t8, .L800B04D8
/* B10C0 800B04C0 00000000 */   nop
/* B10C4 800B04C4 8FAB002C */  lw         $t3, 0x2c($sp)
/* B10C8 800B04C8 8D6E0028 */  lw         $t6, 0x28($t3)
/* B10CC 800B04CC 8DCF000C */  lw         $t7, 0xc($t6)
/* B10D0 800B04D0 8DEA0008 */  lw         $t2, 8($t7)
/* B10D4 800B04D4 AD6A0024 */  sw         $t2, 0x24($t3)
.L800B04D8:
/* B10D8 800B04D8 10000003 */  b          .L800B04E8
/* B10DC 800B04DC 00000000 */   nop
.L800B04E0:
/* B10E0 800B04E0 10000001 */  b          .L800B04E8
/* B10E4 800B04E4 00000000 */   nop
.L800B04E8:
/* B10E8 800B04E8 10000001 */  b          .L800B04F0
/* B10EC 800B04EC 00000000 */   nop
.L800B04F0:
/* B10F0 800B04F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B10F4 800B04F4 8FB00018 */  lw         $s0, 0x18($sp)
/* B10F8 800B04F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B10FC 800B04FC 03E00008 */  jr         $ra
/* B1100 800B0500 00000000 */   nop
