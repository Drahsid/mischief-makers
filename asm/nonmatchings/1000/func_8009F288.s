glabel func_8009F288
/* 9FE88 8009F288 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9FE8C 8009F28C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FE90 8009F290 AFA40030 */  sw         $a0, 0x30($sp)
/* 9FE94 8009F294 AFA50034 */  sw         $a1, 0x34($sp)
/* 9FE98 8009F298 AFA60038 */  sw         $a2, 0x38($sp)
/* 9FE9C 8009F29C 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FEA0 8009F2A0 0C027EC5 */  jal        func_8009FB14
/* 9FEA4 8009F2A4 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FEA8 8009F2A8 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FEAC 8009F2AC 93AE002B */  lbu        $t6, 0x2b($sp)
/* 9FEB0 8009F2B0 240100FF */  addiu      $at, $zero, 0xff
/* 9FEB4 8009F2B4 15C100B2 */  bne        $t6, $at, .L8009F580
/* 9FEB8 8009F2B8 00000000 */   nop
/* 9FEBC 8009F2BC 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FEC0 8009F2C0 0C027EC5 */  jal        func_8009FB14
/* 9FEC4 8009F2C4 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FEC8 8009F2C8 A3A20023 */  sb         $v0, 0x23($sp)
/* 9FECC 8009F2CC 93AF0023 */  lbu        $t7, 0x23($sp)
/* 9FED0 8009F2D0 24010051 */  addiu      $at, $zero, 0x51
/* 9FED4 8009F2D4 15E1001E */  bne        $t7, $at, .L8009F350
/* 9FED8 8009F2D8 00000000 */   nop
/* 9FEDC 8009F2DC 8FB90038 */  lw         $t9, 0x38($sp)
/* 9FEE0 8009F2E0 24180003 */  addiu      $t8, $zero, 3
/* 9FEE4 8009F2E4 A7380000 */  sh         $t8, ($t9)
/* 9FEE8 8009F2E8 93A8002B */  lbu        $t0, 0x2b($sp)
/* 9FEEC 8009F2EC 8FA90038 */  lw         $t1, 0x38($sp)
/* 9FEF0 8009F2F0 A1280008 */  sb         $t0, 8($t1)
/* 9FEF4 8009F2F4 93AA0023 */  lbu        $t2, 0x23($sp)
/* 9FEF8 8009F2F8 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9FEFC 8009F2FC A16A0009 */  sb         $t2, 9($t3)
/* 9FF00 8009F300 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF04 8009F304 0C027EC5 */  jal        func_8009FB14
/* 9FF08 8009F308 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF0C 8009F30C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9FF10 8009F310 A182000B */  sb         $v0, 0xb($t4)
/* 9FF14 8009F314 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF18 8009F318 0C027EC5 */  jal        func_8009FB14
/* 9FF1C 8009F31C 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF20 8009F320 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9FF24 8009F324 A1A2000C */  sb         $v0, 0xc($t5)
/* 9FF28 8009F328 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FF2C 8009F32C 0C027EC5 */  jal        func_8009FB14
/* 9FF30 8009F330 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FF34 8009F334 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9FF38 8009F338 A1C2000D */  sb         $v0, 0xd($t6)
/* 9FF3C 8009F33C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9FF40 8009F340 8FB80034 */  lw         $t8, 0x34($sp)
/* 9FF44 8009F344 01F8C821 */  addu       $t9, $t7, $t8
/* 9FF48 8009F348 1000008B */  b          .L8009F578
/* 9FF4C 8009F34C A32000A8 */   sb        $zero, 0xa8($t9)
.L8009F350:
/* 9FF50 8009F350 93A80023 */  lbu        $t0, 0x23($sp)
/* 9FF54 8009F354 2401002F */  addiu      $at, $zero, 0x2f
/* 9FF58 8009F358 15010017 */  bne        $t0, $at, .L8009F3B8
/* 9FF5C 8009F35C 00000000 */   nop
/* 9FF60 8009F360 8FA90034 */  lw         $t1, 0x34($sp)
/* 9FF64 8009F364 240A0001 */  addiu      $t2, $zero, 1
/* 9FF68 8009F368 012A5804 */  sllv       $t3, $t2, $t1
/* 9FF6C 8009F36C AFAB001C */  sw         $t3, 0x1c($sp)
/* 9FF70 8009F370 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9FF74 8009F374 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9FF78 8009F378 8D8D0004 */  lw         $t5, 4($t4)
/* 9FF7C 8009F37C 01AE7826 */  xor        $t7, $t5, $t6
/* 9FF80 8009F380 AD8F0004 */  sw         $t7, 4($t4)
/* 9FF84 8009F384 8FB80030 */  lw         $t8, 0x30($sp)
/* 9FF88 8009F388 8F190004 */  lw         $t9, 4($t8)
/* 9FF8C 8009F38C 13200005 */  beqz       $t9, .L8009F3A4
/* 9FF90 8009F390 00000000 */   nop
/* 9FF94 8009F394 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9FF98 8009F398 24080012 */  addiu      $t0, $zero, 0x12
/* 9FF9C 8009F39C 10000004 */  b          .L8009F3B0
/* 9FFA0 8009F3A0 A5480000 */   sh        $t0, ($t2)
.L8009F3A4:
/* 9FFA4 8009F3A4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9FFA8 8009F3A8 24090004 */  addiu      $t1, $zero, 4
/* 9FFAC 8009F3AC A5690000 */  sh         $t1, ($t3)
.L8009F3B0:
/* 9FFB0 8009F3B0 10000071 */  b          .L8009F578
/* 9FFB4 8009F3B4 00000000 */   nop
.L8009F3B8:
/* 9FFB8 8009F3B8 93AD0023 */  lbu        $t5, 0x23($sp)
/* 9FFBC 8009F3BC 2401002E */  addiu      $at, $zero, 0x2e
/* 9FFC0 8009F3C0 15A10011 */  bne        $t5, $at, .L8009F408
/* 9FFC4 8009F3C4 00000000 */   nop
/* 9FFC8 8009F3C8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FFCC 8009F3CC 0C027EC5 */  jal        func_8009FB14
/* 9FFD0 8009F3D0 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FFD4 8009F3D4 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FFD8 8009F3D8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9FFDC 8009F3DC 0C027EC5 */  jal        func_8009FB14
/* 9FFE0 8009F3E0 8FA50034 */   lw        $a1, 0x34($sp)
/* 9FFE4 8009F3E4 A3A2002B */  sb         $v0, 0x2b($sp)
/* 9FFE8 8009F3E8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9FFEC 8009F3EC 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9FFF0 8009F3F0 01CF6021 */  addu       $t4, $t6, $t7
/* 9FFF4 8009F3F4 A18000A8 */  sb         $zero, 0xa8($t4)
/* 9FFF8 8009F3F8 8FB90038 */  lw         $t9, 0x38($sp)
/* 9FFFC 8009F3FC 24180013 */  addiu      $t8, $zero, 0x13
/* A0000 8009F400 1000005D */  b          .L8009F578
/* A0004 8009F404 A7380000 */   sh        $t8, ($t9)
.L8009F408:
/* A0008 8009F408 93A80023 */  lbu        $t0, 0x23($sp)
/* A000C 8009F40C 2401002D */  addiu      $at, $zero, 0x2d
/* A0010 8009F410 15010055 */  bne        $t0, $at, .L8009F568
/* A0014 8009F414 00000000 */   nop
/* A0018 8009F418 8FA90034 */  lw         $t1, 0x34($sp)
/* A001C 8009F41C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A0020 8009F420 00095880 */  sll        $t3, $t1, 2
/* A0024 8009F424 014B6821 */  addu       $t5, $t2, $t3
/* A0028 8009F428 8DAE0018 */  lw         $t6, 0x18($t5)
/* A002C 8009F42C AFAE0024 */  sw         $t6, 0x24($sp)
/* A0030 8009F430 8FAF0024 */  lw         $t7, 0x24($sp)
/* A0034 8009F434 91EC0000 */  lbu        $t4, ($t7)
/* A0038 8009F438 25F80001 */  addiu      $t8, $t7, 1
/* A003C 8009F43C AFB80024 */  sw         $t8, 0x24($sp)
/* A0040 8009F440 A3AC002A */  sb         $t4, 0x2a($sp)
/* A0044 8009F444 8FB90024 */  lw         $t9, 0x24($sp)
/* A0048 8009F448 93280000 */  lbu        $t0, ($t9)
/* A004C 8009F44C A3A80029 */  sb         $t0, 0x29($sp)
/* A0050 8009F450 93A90029 */  lbu        $t1, 0x29($sp)
/* A0054 8009F454 1520000C */  bnez       $t1, .L8009F488
/* A0058 8009F458 00000000 */   nop
/* A005C 8009F45C 93AA002A */  lbu        $t2, 0x2a($sp)
/* A0060 8009F460 8FAB0024 */  lw         $t3, 0x24($sp)
/* A0064 8009F464 A16A0000 */  sb         $t2, ($t3)
/* A0068 8009F468 8FAF0034 */  lw         $t7, 0x34($sp)
/* A006C 8009F46C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0070 8009F470 8FAC0030 */  lw         $t4, 0x30($sp)
/* A0074 8009F474 000FC080 */  sll        $t8, $t7, 2
/* A0078 8009F478 25AE0005 */  addiu      $t6, $t5, 5
/* A007C 8009F47C 0198C821 */  addu       $t9, $t4, $t8
/* A0080 8009F480 10000031 */  b          .L8009F548
/* A0084 8009F484 AF2E0018 */   sw        $t6, 0x18($t9)
.L8009F488:
/* A0088 8009F488 93A80029 */  lbu        $t0, 0x29($sp)
/* A008C 8009F48C 240100FF */  addiu      $at, $zero, 0xff
/* A0090 8009F490 11010005 */  beq        $t0, $at, .L8009F4A8
/* A0094 8009F494 00000000 */   nop
/* A0098 8009F498 93A90029 */  lbu        $t1, 0x29($sp)
/* A009C 8009F49C 8FAB0024 */  lw         $t3, 0x24($sp)
/* A00A0 8009F4A0 252AFFFF */  addiu      $t2, $t1, -1
/* A00A4 8009F4A4 A16A0000 */  sb         $t2, ($t3)
.L8009F4A8:
/* A00A8 8009F4A8 8FAD0024 */  lw         $t5, 0x24($sp)
/* A00AC 8009F4AC 25AF0001 */  addiu      $t7, $t5, 1
/* A00B0 8009F4B0 AFAF0024 */  sw         $t7, 0x24($sp)
/* A00B4 8009F4B4 8FAC0024 */  lw         $t4, 0x24($sp)
/* A00B8 8009F4B8 91980000 */  lbu        $t8, ($t4)
/* A00BC 8009F4BC 25990001 */  addiu      $t9, $t4, 1
/* A00C0 8009F4C0 AFB90024 */  sw         $t9, 0x24($sp)
/* A00C4 8009F4C4 00187600 */  sll        $t6, $t8, 0x18
/* A00C8 8009F4C8 AFAE002C */  sw         $t6, 0x2c($sp)
/* A00CC 8009F4CC 8FA90024 */  lw         $t1, 0x24($sp)
/* A00D0 8009F4D0 8FA8002C */  lw         $t0, 0x2c($sp)
/* A00D4 8009F4D4 912A0000 */  lbu        $t2, ($t1)
/* A00D8 8009F4D8 252F0001 */  addiu      $t7, $t1, 1
/* A00DC 8009F4DC AFAF0024 */  sw         $t7, 0x24($sp)
/* A00E0 8009F4E0 000A5C00 */  sll        $t3, $t2, 0x10
/* A00E4 8009F4E4 010B6821 */  addu       $t5, $t0, $t3
/* A00E8 8009F4E8 AFAD002C */  sw         $t5, 0x2c($sp)
/* A00EC 8009F4EC 8FAE0024 */  lw         $t6, 0x24($sp)
/* A00F0 8009F4F0 8FB8002C */  lw         $t8, 0x2c($sp)
/* A00F4 8009F4F4 91CC0000 */  lbu        $t4, ($t6)
/* A00F8 8009F4F8 25C80001 */  addiu      $t0, $t6, 1
/* A00FC 8009F4FC AFA80024 */  sw         $t0, 0x24($sp)
/* A0100 8009F500 000CCA00 */  sll        $t9, $t4, 8
/* A0104 8009F504 03195021 */  addu       $t2, $t8, $t9
/* A0108 8009F508 AFAA002C */  sw         $t2, 0x2c($sp)
/* A010C 8009F50C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0110 8009F510 8FAB002C */  lw         $t3, 0x2c($sp)
/* A0114 8009F514 91A90000 */  lbu        $t1, ($t5)
/* A0118 8009F518 25AC0001 */  addiu      $t4, $t5, 1
/* A011C 8009F51C AFAC0024 */  sw         $t4, 0x24($sp)
/* A0120 8009F520 01697821 */  addu       $t7, $t3, $t1
/* A0124 8009F524 AFAF002C */  sw         $t7, 0x2c($sp)
/* A0128 8009F528 8FA80034 */  lw         $t0, 0x34($sp)
/* A012C 8009F52C 8FB80024 */  lw         $t8, 0x24($sp)
/* A0130 8009F530 8FB9002C */  lw         $t9, 0x2c($sp)
/* A0134 8009F534 8FAE0030 */  lw         $t6, 0x30($sp)
/* A0138 8009F538 00085880 */  sll        $t3, $t0, 2
/* A013C 8009F53C 03195023 */  subu       $t2, $t8, $t9
/* A0140 8009F540 01CB4821 */  addu       $t1, $t6, $t3
/* A0144 8009F544 AD2A0018 */  sw         $t2, 0x18($t1)
.L8009F548:
/* A0148 8009F548 8FAF0030 */  lw         $t7, 0x30($sp)
/* A014C 8009F54C 8FAD0034 */  lw         $t5, 0x34($sp)
/* A0150 8009F550 01ED6021 */  addu       $t4, $t7, $t5
/* A0154 8009F554 A18000A8 */  sb         $zero, 0xa8($t4)
/* A0158 8009F558 8FB90038 */  lw         $t9, 0x38($sp)
/* A015C 8009F55C 24180014 */  addiu      $t8, $zero, 0x14
/* A0160 8009F560 10000005 */  b          .L8009F578
/* A0164 8009F564 A7380000 */   sh        $t8, ($t9)
.L8009F568:
/* A0168 8009F568 24040078 */  addiu      $a0, $zero, 0x78
/* A016C 8009F56C 24050001 */  addiu      $a1, $zero, 1
/* A0170 8009F570 0C0297B4 */  jal        func_800A5ED0
/* A0174 8009F574 93A60023 */   lbu       $a2, 0x23($sp)
.L8009F578:
/* A0178 8009F578 1000004E */  b          .L8009F6B4
/* A017C 8009F57C 00000000 */   nop
.L8009F580:
/* A0180 8009F580 8FAE0038 */  lw         $t6, 0x38($sp)
/* A0184 8009F584 24080001 */  addiu      $t0, $zero, 1
/* A0188 8009F588 A5C80000 */  sh         $t0, ($t6)
/* A018C 8009F58C 93AB002B */  lbu        $t3, 0x2b($sp)
/* A0190 8009F590 316A0080 */  andi       $t2, $t3, 0x80
/* A0194 8009F594 1140000F */  beqz       $t2, .L8009F5D4
/* A0198 8009F598 00000000 */   nop
/* A019C 8009F59C 93A9002B */  lbu        $t1, 0x2b($sp)
/* A01A0 8009F5A0 8FAF0038 */  lw         $t7, 0x38($sp)
/* A01A4 8009F5A4 A1E90008 */  sb         $t1, 8($t7)
/* A01A8 8009F5A8 8FA40030 */  lw         $a0, 0x30($sp)
/* A01AC 8009F5AC 0C027EC5 */  jal        func_8009FB14
/* A01B0 8009F5B0 8FA50034 */   lw        $a1, 0x34($sp)
/* A01B4 8009F5B4 8FAD0038 */  lw         $t5, 0x38($sp)
/* A01B8 8009F5B8 A1A20009 */  sb         $v0, 9($t5)
/* A01BC 8009F5BC 8FB80030 */  lw         $t8, 0x30($sp)
/* A01C0 8009F5C0 8FB90034 */  lw         $t9, 0x34($sp)
/* A01C4 8009F5C4 93AC002B */  lbu        $t4, 0x2b($sp)
/* A01C8 8009F5C8 03194021 */  addu       $t0, $t8, $t9
/* A01CC 8009F5CC 10000014 */  b          .L8009F620
/* A01D0 8009F5D0 A10C00A8 */   sb        $t4, 0xa8($t0)
.L8009F5D4:
/* A01D4 8009F5D4 8FAE0030 */  lw         $t6, 0x30($sp)
/* A01D8 8009F5D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* A01DC 8009F5DC 01CB5021 */  addu       $t2, $t6, $t3
/* A01E0 8009F5E0 914900A8 */  lbu        $t1, 0xa8($t2)
/* A01E4 8009F5E4 15200005 */  bnez       $t1, .L8009F5FC
/* A01E8 8009F5E8 00000000 */   nop
/* A01EC 8009F5EC 24040080 */  addiu      $a0, $zero, 0x80
/* A01F0 8009F5F0 24050001 */  addiu      $a1, $zero, 1
/* A01F4 8009F5F4 0C0297B4 */  jal        func_800A5ED0
/* A01F8 8009F5F8 8FA60034 */   lw        $a2, 0x34($sp)
.L8009F5FC:
/* A01FC 8009F5FC 8FAF0030 */  lw         $t7, 0x30($sp)
/* A0200 8009F600 8FAD0034 */  lw         $t5, 0x34($sp)
/* A0204 8009F604 8FAC0038 */  lw         $t4, 0x38($sp)
/* A0208 8009F608 01EDC021 */  addu       $t8, $t7, $t5
/* A020C 8009F60C 931900A8 */  lbu        $t9, 0xa8($t8)
/* A0210 8009F610 A1990008 */  sb         $t9, 8($t4)
/* A0214 8009F614 93A8002B */  lbu        $t0, 0x2b($sp)
/* A0218 8009F618 8FAE0038 */  lw         $t6, 0x38($sp)
/* A021C 8009F61C A1C80009 */  sb         $t0, 9($t6)
.L8009F620:
/* A0220 8009F620 8FAB0038 */  lw         $t3, 0x38($sp)
/* A0224 8009F624 240100C0 */  addiu      $at, $zero, 0xc0
/* A0228 8009F628 916A0008 */  lbu        $t2, 8($t3)
/* A022C 8009F62C 314900F0 */  andi       $t1, $t2, 0xf0
/* A0230 8009F630 1121001E */  beq        $t1, $at, .L8009F6AC
/* A0234 8009F634 00000000 */   nop
/* A0238 8009F638 240100D0 */  addiu      $at, $zero, 0xd0
/* A023C 8009F63C 1121001B */  beq        $t1, $at, .L8009F6AC
/* A0240 8009F640 00000000 */   nop
/* A0244 8009F644 8FA40030 */  lw         $a0, 0x30($sp)
/* A0248 8009F648 0C027EC5 */  jal        func_8009FB14
/* A024C 8009F64C 8FA50034 */   lw        $a1, 0x34($sp)
/* A0250 8009F650 8FAF0038 */  lw         $t7, 0x38($sp)
/* A0254 8009F654 A1E2000A */  sb         $v0, 0xa($t7)
/* A0258 8009F658 8FAD0038 */  lw         $t5, 0x38($sp)
/* A025C 8009F65C 24010090 */  addiu      $at, $zero, 0x90
/* A0260 8009F660 91B80008 */  lbu        $t8, 8($t5)
/* A0264 8009F664 331900F0 */  andi       $t9, $t8, 0xf0
/* A0268 8009F668 1721000E */  bne        $t9, $at, .L8009F6A4
/* A026C 8009F66C 00000000 */   nop
/* A0270 8009F670 8FA40030 */  lw         $a0, 0x30($sp)
/* A0274 8009F674 0C027F42 */  jal        func_8009FD08
/* A0278 8009F678 8FA50034 */   lw        $a1, 0x34($sp)
/* A027C 8009F67C 8FAC0038 */  lw         $t4, 0x38($sp)
/* A0280 8009F680 AD82000C */  sw         $v0, 0xc($t4)
/* A0284 8009F684 8FA80038 */  lw         $t0, 0x38($sp)
/* A0288 8009F688 910E000A */  lbu        $t6, 0xa($t0)
/* A028C 8009F68C 15C00005 */  bnez       $t6, .L8009F6A4
/* A0290 8009F690 00000000 */   nop
/* A0294 8009F694 24040081 */  addiu      $a0, $zero, 0x81
/* A0298 8009F698 24050001 */  addiu      $a1, $zero, 1
/* A029C 8009F69C 0C0297B4 */  jal        func_800A5ED0
/* A02A0 8009F6A0 8FA60034 */   lw        $a2, 0x34($sp)
.L8009F6A4:
/* A02A4 8009F6A4 10000003 */  b          .L8009F6B4
/* A02A8 8009F6A8 00000000 */   nop
.L8009F6AC:
/* A02AC 8009F6AC 8FAB0038 */  lw         $t3, 0x38($sp)
/* A02B0 8009F6B0 A160000A */  sb         $zero, 0xa($t3)
.L8009F6B4:
/* A02B4 8009F6B4 10000003 */  b          .L8009F6C4
/* A02B8 8009F6B8 24020001 */   addiu     $v0, $zero, 1
/* A02BC 8009F6BC 10000001 */  b          .L8009F6C4
/* A02C0 8009F6C0 00000000 */   nop
.L8009F6C4:
/* A02C4 8009F6C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A02C8 8009F6C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* A02CC 8009F6CC 03E00008 */  jr         $ra
/* A02D0 8009F6D0 00000000 */   nop
