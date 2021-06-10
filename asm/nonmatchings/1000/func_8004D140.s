glabel func_8004D140
/* 4DD40 8004D140 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4DD44 8004D144 AFA40028 */  sw         $a0, 0x28($sp)
/* 4DD48 8004D148 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4DD4C 8004D14C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4DD50 8004D150 AFB00018 */  sw         $s0, 0x18($sp)
/* 4DD54 8004D154 00002825 */  or         $a1, $zero, $zero
/* 4DD58 8004D158 0C01246E */  jal        func_800491B8
/* 4DD5C 8004D15C 2406FFF2 */   addiu     $a2, $zero, -0xe
/* 4DD60 8004D160 1040000E */  beqz       $v0, .L8004D19C
/* 4DD64 8004D164 3C08800F */   lui       $t0, 0x800f
/* 4DD68 8004D168 97AF002A */  lhu        $t7, 0x2a($sp)
/* 4DD6C 8004D16C 3C01800F */  lui        $at, 0x800f
/* 4DD70 8004D170 000FC080 */  sll        $t8, $t7, 2
/* 4DD74 8004D174 030FC023 */  subu       $t8, $t8, $t7
/* 4DD78 8004D178 0018C080 */  sll        $t8, $t8, 2
/* 4DD7C 8004D17C 030FC021 */  addu       $t8, $t8, $t7
/* 4DD80 8004D180 0018C080 */  sll        $t8, $t8, 2
/* 4DD84 8004D184 030FC023 */  subu       $t8, $t8, $t7
/* 4DD88 8004D188 0018C0C0 */  sll        $t8, $t8, 3
/* 4DD8C 8004D18C 00380821 */  addu       $at, $at, $t8
/* 4DD90 8004D190 240E0005 */  addiu      $t6, $zero, 5
/* 4DD94 8004D194 10000149 */  b          .L8004D6BC
/* 4DD98 8004D198 A42EF5E0 */   sh        $t6, -0xa20($at)
.L8004D19C:
/* 4DD9C 8004D19C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4DDA0 8004D1A0 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 4DDA4 8004D1A4 0004C880 */  sll        $t9, $a0, 2
/* 4DDA8 8004D1A8 0324C823 */  subu       $t9, $t9, $a0
/* 4DDAC 8004D1AC 0019C880 */  sll        $t9, $t9, 2
/* 4DDB0 8004D1B0 0324C821 */  addu       $t9, $t9, $a0
/* 4DDB4 8004D1B4 0019C880 */  sll        $t9, $t9, 2
/* 4DDB8 8004D1B8 0324C823 */  subu       $t9, $t9, $a0
/* 4DDBC 8004D1BC 0019C8C0 */  sll        $t9, $t9, 3
/* 4DDC0 8004D1C0 03288021 */  addu       $s0, $t9, $t0
/* 4DDC4 8004D1C4 920900D1 */  lbu        $t1, 0xd1($s0)
/* 4DDC8 8004D1C8 24010019 */  addiu      $at, $zero, 0x19
/* 4DDCC 8004D1CC 11210005 */  beq        $t1, $at, .L8004D1E4
/* 4DDD0 8004D1D0 3C0C8013 */   lui       $t4, %hi(D_801373D8)
/* 4DDD4 8004D1D4 960A012C */  lhu        $t2, 0x12c($s0)
/* 4DDD8 8004D1D8 00000000 */  nop
/* 4DDDC 8004D1DC 354B0004 */  ori        $t3, $t2, 4
/* 4DDE0 8004D1E0 A60B012C */  sh         $t3, 0x12c($s0)
.L8004D1E4:
/* 4DDE4 8004D1E4 958C73D8 */  lhu        $t4, %lo(D_801373D8)($t4)
/* 4DDE8 8004D1E8 00000000 */  nop
/* 4DDEC 8004D1EC 318D0080 */  andi       $t5, $t4, 0x80
/* 4DDF0 8004D1F0 11A0001B */  beqz       $t5, .L8004D260
/* 4DDF4 8004D1F4 00000000 */   nop
/* 4DDF8 8004D1F8 920200D1 */  lbu        $v0, 0xd1($s0)
/* 4DDFC 8004D1FC 24010016 */  addiu      $at, $zero, 0x16
/* 4DE00 8004D200 10410004 */  beq        $v0, $at, .L8004D214
/* 4DE04 8004D204 24010019 */   addiu     $at, $zero, 0x19
/* 4DE08 8004D208 10410002 */  beq        $v0, $at, .L8004D214
/* 4DE0C 8004D20C 240F0016 */   addiu     $t7, $zero, 0x16
/* 4DE10 8004D210 A20F00D1 */  sb         $t7, 0xd1($s0)
.L8004D214:
/* 4DE14 8004D214 0C0174DC */  jal        func_8005D370
/* 4DE18 8004D218 2405001A */   addiu     $a1, $zero, 0x1a
/* 4DE1C 8004D21C 8E0E0080 */  lw         $t6, 0x80($s0)
/* 4DE20 8004D220 3C038013 */  lui        $v1, %hi(D_801373D8)
/* 4DE24 8004D224 39D80020 */  xori       $t8, $t6, 0x20
/* 4DE28 8004D228 AE180080 */  sw         $t8, 0x80($s0)
/* 4DE2C 8004D22C 946373D8 */  lhu        $v1, %lo(D_801373D8)($v1)
/* 4DE30 8004D230 2401FFDF */  addiu      $at, $zero, -0x21
/* 4DE34 8004D234 30790002 */  andi       $t9, $v1, 2
/* 4DE38 8004D238 13200003 */  beqz       $t9, .L8004D248
/* 4DE3C 8004D23C 306A0001 */   andi      $t2, $v1, 1
/* 4DE40 8004D240 03014824 */  and        $t1, $t8, $at
/* 4DE44 8004D244 AE090080 */  sw         $t1, 0x80($s0)
.L8004D248:
/* 4DE48 8004D248 11400005 */  beqz       $t2, .L8004D260
/* 4DE4C 8004D24C 00000000 */   nop
/* 4DE50 8004D250 8E0B0080 */  lw         $t3, 0x80($s0)
/* 4DE54 8004D254 00000000 */  nop
/* 4DE58 8004D258 356C0020 */  ori        $t4, $t3, 0x20
/* 4DE5C 8004D25C AE0C0080 */  sw         $t4, 0x80($s0)
.L8004D260:
/* 4DE60 8004D260 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 4DE64 8004D264 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4DE68 8004D268 1840000B */  blez       $v0, .L8004D298
/* 4DE6C 8004D26C 00000000 */   nop
/* 4DE70 8004D270 8E0D0098 */  lw         $t5, 0x98($s0)
/* 4DE74 8004D274 00000000 */  nop
/* 4DE78 8004D278 31AF4010 */  andi       $t7, $t5, 0x4010
/* 4DE7C 8004D27C 11E00006 */  beqz       $t7, .L8004D298
/* 4DE80 8004D280 00000000 */   nop
/* 4DE84 8004D284 04410003 */  bgez       $v0, .L8004D294
/* 4DE88 8004D288 00027043 */   sra       $t6, $v0, 1
/* 4DE8C 8004D28C 24410001 */  addiu      $at, $v0, 1
/* 4DE90 8004D290 00017043 */  sra        $t6, $at, 1
.L8004D294:
/* 4DE94 8004D294 AE0E00F0 */  sw         $t6, 0xf0($s0)
.L8004D298:
/* 4DE98 8004D298 0C0174CE */  jal        func_8005D338
/* 4DE9C 8004D29C 00000000 */   nop
/* 4DEA0 8004D2A0 2401001A */  addiu      $at, $zero, 0x1a
/* 4DEA4 8004D2A4 14410009 */  bne        $v0, $at, .L8004D2CC
/* 4DEA8 8004D2A8 00000000 */   nop
/* 4DEAC 8004D2AC 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4DEB0 8004D2B0 0C017506 */  jal        func_8005D418
/* 4DEB4 8004D2B4 00000000 */   nop
/* 4DEB8 8004D2B8 10400004 */  beqz       $v0, .L8004D2CC
/* 4DEBC 8004D2BC 24180024 */   addiu     $t8, $zero, 0x24
/* 4DEC0 8004D2C0 AE180170 */  sw         $t8, 0x170($s0)
/* 4DEC4 8004D2C4 24190003 */  addiu      $t9, $zero, 3
/* 4DEC8 8004D2C8 A2190171 */  sb         $t9, 0x171($s0)
.L8004D2CC:
/* 4DECC 8004D2CC 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4DED0 8004D2D0 24080014 */  addiu      $t0, $zero, 0x14
/* 4DED4 8004D2D4 10400009 */  beqz       $v0, .L8004D2FC
/* 4DED8 8004D2D8 24090002 */   addiu     $t1, $zero, 2
/* 4DEDC 8004D2DC 24010001 */  addiu      $at, $zero, 1
/* 4DEE0 8004D2E0 10410013 */  beq        $v0, $at, .L8004D330
/* 4DEE4 8004D2E4 24010002 */   addiu     $at, $zero, 2
/* 4DEE8 8004D2E8 10410025 */  beq        $v0, $at, .L8004D380
/* 4DEEC 8004D2EC 00000000 */   nop
/* 4DEF0 8004D2F0 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 4DEF4 8004D2F4 1000008D */  b          .L8004D52C
/* 4DEF8 8004D2F8 00000000 */   nop
.L8004D2FC:
/* 4DEFC 8004D2FC 8E0A0080 */  lw         $t2, 0x80($s0)
/* 4DF00 8004D300 3C01FF3C */  lui        $at, 0xff3c
/* 4DF04 8004D304 3421FFFF */  ori        $at, $at, 0xffff
/* 4DF08 8004D308 01415824 */  and        $t3, $t2, $at
/* 4DF0C 8004D30C 3C010002 */  lui        $at, 2
/* 4DF10 8004D310 AE00017C */  sw         $zero, 0x17c($s0)
/* 4DF14 8004D314 01616825 */  or         $t5, $t3, $at
/* 4DF18 8004D318 AE0B0080 */  sw         $t3, 0x80($s0)
/* 4DF1C 8004D31C 240F0001 */  addiu      $t7, $zero, 1
/* 4DF20 8004D320 AE080150 */  sw         $t0, 0x150($s0)
/* 4DF24 8004D324 A209017D */  sb         $t1, 0x17d($s0)
/* 4DF28 8004D328 AE0D0080 */  sw         $t5, 0x80($s0)
/* 4DF2C 8004D32C A20F00D0 */  sb         $t7, 0xd0($s0)
.L8004D330:
/* 4DF30 8004D330 8E0E0150 */  lw         $t6, 0x150($s0)
/* 4DF34 8004D334 921900D1 */  lbu        $t9, 0xd1($s0)
/* 4DF38 8004D338 24010017 */  addiu      $at, $zero, 0x17
/* 4DF3C 8004D33C 25D8FFFF */  addiu      $t8, $t6, -1
/* 4DF40 8004D340 1321000D */  beq        $t9, $at, .L8004D378
/* 4DF44 8004D344 AE180150 */   sw        $t8, 0x150($s0)
/* 4DF48 8004D348 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 4DF4C 8004D34C 00000000 */  nop
/* 4DF50 8004D350 1840000A */  blez       $v0, .L8004D37C
/* 4DF54 8004D354 240C0002 */   addiu     $t4, $zero, 2
/* 4DF58 8004D358 1B000007 */  blez       $t8, .L8004D378
/* 4DF5C 8004D35C 3C098013 */   lui       $t1, %hi(D_801370CC)
/* 4DF60 8004D360 3C0A800C */  lui        $t2, %hi(D_800BE518)
/* 4DF64 8004D364 954AE518 */  lhu        $t2, %lo(D_800BE518)($t2)
/* 4DF68 8004D368 952970CC */  lhu        $t1, %lo(D_801370CC)($t1)
/* 4DF6C 8004D36C 00000000 */  nop
/* 4DF70 8004D370 012A5824 */  and        $t3, $t1, $t2
/* 4DF74 8004D374 1560006D */  bnez       $t3, .L8004D52C
.L8004D378:
/* 4DF78 8004D378 240C0002 */   addiu     $t4, $zero, 2
.L8004D37C:
/* 4DF7C 8004D37C A20C00D0 */  sb         $t4, 0xd0($s0)
.L8004D380:
/* 4DF80 8004D380 920200D1 */  lbu        $v0, 0xd1($s0)
/* 4DF84 8004D384 24010016 */  addiu      $at, $zero, 0x16
/* 4DF88 8004D388 14410025 */  bne        $v0, $at, .L8004D420
/* 4DF8C 8004D38C 3C0D8013 */   lui       $t5, %hi(D_801373D8)
/* 4DF90 8004D390 95AD73D8 */  lhu        $t5, %lo(D_801373D8)($t5)
/* 4DF94 8004D394 00000000 */  nop
/* 4DF98 8004D398 31AF0010 */  andi       $t7, $t5, 0x10
/* 4DF9C 8004D39C 15E00009 */  bnez       $t7, .L8004D3C4
/* 4DFA0 8004D3A0 00000000 */   nop
/* 4DFA4 8004D3A4 0C012325 */  jal        func_80048C94
/* 4DFA8 8004D3A8 24040013 */   addiu     $a0, $zero, 0x13
/* 4DFAC 8004D3AC 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4DFB0 8004D3B0 3C05FFFA */  lui        $a1, 0xfffa
/* 4DFB4 8004D3B4 0C00A607 */  jal        func_8002981C
/* 4DFB8 8004D3B8 00403025 */   or        $a2, $v0, $zero
/* 4DFBC 8004D3BC 10000059 */  b          .L8004D524
/* 4DFC0 8004D3C0 AE0200F0 */   sw        $v0, 0xf0($s0)
.L8004D3C4:
/* 4DFC4 8004D3C4 0C012325 */  jal        func_80048C94
/* 4DFC8 8004D3C8 24040013 */   addiu     $a0, $zero, 0x13
/* 4DFCC 8004D3CC 44822000 */  mtc1       $v0, $f4
/* 4DFD0 8004D3D0 3C013FF8 */  lui        $at, 0x3ff8
/* 4DFD4 8004D3D4 468021A1 */  cvt.d.w    $f6, $f4
/* 4DFD8 8004D3D8 44814800 */  mtc1       $at, $f9
/* 4DFDC 8004D3DC 44804000 */  mtc1       $zero, $f8
/* 4DFE0 8004D3E0 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4DFE4 8004D3E4 46283282 */  mul.d      $f10, $f6, $f8
/* 4DFE8 8004D3E8 3C05FFFA */  lui        $a1, 0xfffa
/* 4DFEC 8004D3EC 444EF800 */  cfc1       $t6, $31
/* 4DFF0 8004D3F0 00000000 */  nop
/* 4DFF4 8004D3F4 35C10003 */  ori        $at, $t6, 3
/* 4DFF8 8004D3F8 38210002 */  xori       $at, $at, 2
/* 4DFFC 8004D3FC 44C1F800 */  ctc1       $at, $31
/* 4E000 8004D400 00000000 */  nop
/* 4E004 8004D404 46205424 */  cvt.w.d    $f16, $f10
/* 4E008 8004D408 44068000 */  mfc1       $a2, $f16
/* 4E00C 8004D40C 44CEF800 */  ctc1       $t6, $31
/* 4E010 8004D410 0C00A607 */  jal        func_8002981C
/* 4E014 8004D414 00000000 */   nop
/* 4E018 8004D418 10000042 */  b          .L8004D524
/* 4E01C 8004D41C AE0200F0 */   sw        $v0, 0xf0($s0)
.L8004D420:
/* 4E020 8004D420 24010017 */  addiu      $at, $zero, 0x17
/* 4E024 8004D424 14410019 */  bne        $v0, $at, .L8004D48C
/* 4E028 8004D428 24010018 */   addiu     $at, $zero, 0x18
/* 4E02C 8004D42C 0C012325 */  jal        func_80048C94
/* 4E030 8004D430 24040013 */   addiu     $a0, $zero, 0x13
/* 4E034 8004D434 44829000 */  mtc1       $v0, $f18
/* 4E038 8004D438 3C013FE8 */  lui        $at, 0x3fe8
/* 4E03C 8004D43C 46809121 */  cvt.d.w    $f4, $f18
/* 4E040 8004D440 44813800 */  mtc1       $at, $f7
/* 4E044 8004D444 44803000 */  mtc1       $zero, $f6
/* 4E048 8004D448 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4E04C 8004D44C 46262202 */  mul.d      $f8, $f4, $f6
/* 4E050 8004D450 3C05FFFA */  lui        $a1, 0xfffa
/* 4E054 8004D454 4458F800 */  cfc1       $t8, $31
/* 4E058 8004D458 00000000 */  nop
/* 4E05C 8004D45C 37010003 */  ori        $at, $t8, 3
/* 4E060 8004D460 38210002 */  xori       $at, $at, 2
/* 4E064 8004D464 44C1F800 */  ctc1       $at, $31
/* 4E068 8004D468 00000000 */  nop
/* 4E06C 8004D46C 462042A4 */  cvt.w.d    $f10, $f8
/* 4E070 8004D470 44065000 */  mfc1       $a2, $f10
/* 4E074 8004D474 44D8F800 */  ctc1       $t8, $31
/* 4E078 8004D478 0C00A607 */  jal        func_8002981C
/* 4E07C 8004D47C 00000000 */   nop
/* 4E080 8004D480 10000028 */  b          .L8004D524
/* 4E084 8004D484 AE0200F0 */   sw        $v0, 0xf0($s0)
/* 4E088 8004D488 24010018 */  addiu      $at, $zero, 0x18
.L8004D48C:
/* 4E08C 8004D48C 1441000A */  bne        $v0, $at, .L8004D4B8
/* 4E090 8004D490 24010019 */   addiu     $at, $zero, 0x19
/* 4E094 8004D494 0C012325 */  jal        func_80048C94
/* 4E098 8004D498 24040013 */   addiu     $a0, $zero, 0x13
/* 4E09C 8004D49C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4E0A0 8004D4A0 3C05FFFA */  lui        $a1, 0xfffa
/* 4E0A4 8004D4A4 0C00A607 */  jal        func_8002981C
/* 4E0A8 8004D4A8 00403025 */   or        $a2, $v0, $zero
/* 4E0AC 8004D4AC 1000001D */  b          .L8004D524
/* 4E0B0 8004D4B0 AE0200F0 */   sw        $v0, 0xf0($s0)
/* 4E0B4 8004D4B4 24010019 */  addiu      $at, $zero, 0x19
.L8004D4B8:
/* 4E0B8 8004D4B8 1441001A */  bne        $v0, $at, .L8004D524
/* 4E0BC 8004D4BC 00000000 */   nop
/* 4E0C0 8004D4C0 0C012325 */  jal        func_80048C94
/* 4E0C4 8004D4C4 24040013 */   addiu     $a0, $zero, 0x13
/* 4E0C8 8004D4C8 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4E0CC 8004D4CC 3C05FFFA */  lui        $a1, 0xfffa
/* 4E0D0 8004D4D0 0C00A607 */  jal        func_8002981C
/* 4E0D4 8004D4D4 00403025 */   or        $a2, $v0, $zero
/* 4E0D8 8004D4D8 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 4E0DC 8004D4DC 0C012325 */  jal        func_80048C94
/* 4E0E0 8004D4E0 2404001C */   addiu     $a0, $zero, 0x1c
/* 4E0E4 8004D4E4 00024023 */  negu       $t0, $v0
/* 4E0E8 8004D4E8 44882000 */  mtc1       $t0, $f4
/* 4E0EC 8004D4EC 3C01800F */  lui        $at, %hi(D_800EBDA0)
/* 4E0F0 8004D4F0 468021A1 */  cvt.d.w    $f6, $f4
/* 4E0F4 8004D4F4 C429BDA0 */  lwc1       $f9, %lo(D_800EBDA0)($at)
/* 4E0F8 8004D4F8 C428BDA4 */  lwc1       $f8, -0x425c($at)
/* 4E0FC 8004D4FC 8E1900F0 */  lw         $t9, 0xf0($s0)
/* 4E100 8004D500 46283282 */  mul.d      $f10, $f6, $f8
/* 4E104 8004D504 44998000 */  mtc1       $t9, $f16
/* 4E108 8004D508 24090016 */  addiu      $t1, $zero, 0x16
/* 4E10C 8004D50C 468084A1 */  cvt.d.w    $f18, $f16
/* 4E110 8004D510 462A903C */  c.lt.d     $f18, $f10
/* 4E114 8004D514 00000000 */  nop
/* 4E118 8004D518 45000002 */  bc1f       .L8004D524
/* 4E11C 8004D51C 00000000 */   nop
/* 4E120 8004D520 A20900D1 */  sb         $t1, 0xd1($s0)
.L8004D524:
/* 4E124 8004D524 8E0200F0 */  lw         $v0, 0xf0($s0)
/* 4E128 8004D528 00000000 */  nop
.L8004D52C:
/* 4E12C 8004D52C 18400011 */  blez       $v0, .L8004D574
/* 4E130 8004D530 97A4002A */   lhu       $a0, 0x2a($sp)
/* 4E134 8004D534 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4E138 8004D538 0C0174CE */  jal        func_8005D338
/* 4E13C 8004D53C 00000000 */   nop
/* 4E140 8004D540 24010024 */  addiu      $at, $zero, 0x24
/* 4E144 8004D544 1041001B */  beq        $v0, $at, .L8004D5B4
/* 4E148 8004D548 00000000 */   nop
/* 4E14C 8004D54C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4E150 8004D550 0C017506 */  jal        func_8005D418
/* 4E154 8004D554 00000000 */   nop
/* 4E158 8004D558 10400016 */  beqz       $v0, .L8004D5B4
/* 4E15C 8004D55C 240A0024 */   addiu     $t2, $zero, 0x24
/* 4E160 8004D560 AE0A0170 */  sw         $t2, 0x170($s0)
/* 4E164 8004D564 240B0003 */  addiu      $t3, $zero, 3
/* 4E168 8004D568 10000012 */  b          .L8004D5B4
/* 4E16C 8004D56C A20B0171 */   sb        $t3, 0x171($s0)
/* 4E170 8004D570 97A4002A */  lhu        $a0, 0x2a($sp)
.L8004D574:
/* 4E174 8004D574 0C0174CE */  jal        func_8005D338
/* 4E178 8004D578 00000000 */   nop
/* 4E17C 8004D57C 24010024 */  addiu      $at, $zero, 0x24
/* 4E180 8004D580 10410007 */  beq        $v0, $at, .L8004D5A0
/* 4E184 8004D584 97A4002A */   lhu       $a0, 0x2a($sp)
/* 4E188 8004D588 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4E18C 8004D58C 0C017506 */  jal        func_8005D418
/* 4E190 8004D590 00000000 */   nop
/* 4E194 8004D594 10400007 */  beqz       $v0, .L8004D5B4
/* 4E198 8004D598 00000000 */   nop
/* 4E19C 8004D59C 97A4002A */  lhu        $a0, 0x2a($sp)
.L8004D5A0:
/* 4E1A0 8004D5A0 0C0174DC */  jal        func_8005D370
/* 4E1A4 8004D5A4 24050027 */   addiu     $a1, $zero, 0x27
/* 4E1A8 8004D5A8 AE00017C */  sw         $zero, 0x17c($s0)
/* 4E1AC 8004D5AC 240C0001 */  addiu      $t4, $zero, 1
/* 4E1B0 8004D5B0 A20C017D */  sb         $t4, 0x17d($s0)
.L8004D5B4:
/* 4E1B4 8004D5B4 920D00D1 */  lbu        $t5, 0xd1($s0)
/* 4E1B8 8004D5B8 24010017 */  addiu      $at, $zero, 0x17
/* 4E1BC 8004D5BC 11A10040 */  beq        $t5, $at, .L8004D6C0
/* 4E1C0 8004D5C0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 4E1C4 8004D5C4 0C012325 */  jal        func_80048C94
/* 4E1C8 8004D5C8 24040014 */   addiu     $a0, $zero, 0x14
/* 4E1CC 8004D5CC 2401000A */  addiu      $at, $zero, 0xa
/* 4E1D0 8004D5D0 0041001A */  div        $zero, $v0, $at
/* 4E1D4 8004D5D4 3C0F8013 */  lui        $t7, %hi(D_801373D8)
/* 4E1D8 8004D5D8 95EF73D8 */  lhu        $t7, %lo(D_801373D8)($t7)
/* 4E1DC 8004D5DC 24040014 */  addiu      $a0, $zero, 0x14
/* 4E1E0 8004D5E0 31EE0002 */  andi       $t6, $t7, 2
/* 4E1E4 8004D5E4 00003012 */  mflo       $a2
/* 4E1E8 8004D5E8 11C0000E */  beqz       $t6, .L8004D624
/* 4E1EC 8004D5EC 00000000 */   nop
/* 4E1F0 8004D5F0 0C012325 */  jal        func_80048C94
/* 4E1F4 8004D5F4 AFA60020 */   sw        $a2, 0x20($sp)
/* 4E1F8 8004D5F8 8E0400EC */  lw         $a0, 0xec($s0)
/* 4E1FC 8004D5FC 8FA60020 */  lw         $a2, 0x20($sp)
/* 4E200 8004D600 0044082A */  slt        $at, $v0, $a0
/* 4E204 8004D604 10200002 */  beqz       $at, .L8004D610
/* 4E208 8004D608 00402825 */   or        $a1, $v0, $zero
/* 4E20C 8004D60C 00802825 */  or         $a1, $a0, $zero
.L8004D610:
/* 4E210 8004D610 04810004 */  bgez       $a0, .L8004D624
/* 4E214 8004D614 AFA50024 */   sw        $a1, 0x24($sp)
/* 4E218 8004D618 0006C040 */  sll        $t8, $a2, 1
/* 4E21C 8004D61C 03003025 */  or         $a2, $t8, $zero
/* 4E220 8004D620 AFA50024 */  sw         $a1, 0x24($sp)
.L8004D624:
/* 4E224 8004D624 3C198013 */  lui        $t9, %hi(D_801373D8)
/* 4E228 8004D628 973973D8 */  lhu        $t9, %lo(D_801373D8)($t9)
/* 4E22C 8004D62C 8FA50024 */  lw         $a1, 0x24($sp)
/* 4E230 8004D630 33280001 */  andi       $t0, $t9, 1
/* 4E234 8004D634 1100000D */  beqz       $t0, .L8004D66C
/* 4E238 8004D638 24040014 */   addiu     $a0, $zero, 0x14
/* 4E23C 8004D63C 0C012325 */  jal        func_80048C94
/* 4E240 8004D640 AFA60020 */   sw        $a2, 0x20($sp)
/* 4E244 8004D644 8E0400EC */  lw         $a0, 0xec($s0)
/* 4E248 8004D648 8FA60020 */  lw         $a2, 0x20($sp)
/* 4E24C 8004D64C 00022823 */  negu       $a1, $v0
/* 4E250 8004D650 0085082A */  slt        $at, $a0, $a1
/* 4E254 8004D654 10200002 */  beqz       $at, .L8004D660
/* 4E258 8004D658 00064840 */   sll       $t1, $a2, 1
/* 4E25C 8004D65C 00802825 */  or         $a1, $a0, $zero
.L8004D660:
/* 4E260 8004D660 18800002 */  blez       $a0, .L8004D66C
/* 4E264 8004D664 00000000 */   nop
/* 4E268 8004D668 01203025 */  or         $a2, $t1, $zero
.L8004D66C:
/* 4E26C 8004D66C 3C0A8013 */  lui        $t2, %hi(D_801373D8)
/* 4E270 8004D670 954A73D8 */  lhu        $t2, %lo(D_801373D8)($t2)
/* 4E274 8004D674 8E0400EC */  lw         $a0, 0xec($s0)
/* 4E278 8004D678 314B0003 */  andi       $t3, $t2, 3
/* 4E27C 8004D67C 1560000C */  bnez       $t3, .L8004D6B0
/* 4E280 8004D680 00000000 */   nop
/* 4E284 8004D684 920200D1 */  lbu        $v0, 0xd1($s0)
/* 4E288 8004D688 24010016 */  addiu      $at, $zero, 0x16
/* 4E28C 8004D68C 10410003 */  beq        $v0, $at, .L8004D69C
/* 4E290 8004D690 24010019 */   addiu     $at, $zero, 0x19
/* 4E294 8004D694 14410003 */  bne        $v0, $at, .L8004D6A4
/* 4E298 8004D698 24010018 */   addiu     $at, $zero, 0x18
.L8004D69C:
/* 4E29C 8004D69C 00002825 */  or         $a1, $zero, $zero
/* 4E2A0 8004D6A0 24010018 */  addiu      $at, $zero, 0x18
.L8004D6A4:
/* 4E2A4 8004D6A4 14410002 */  bne        $v0, $at, .L8004D6B0
/* 4E2A8 8004D6A8 00000000 */   nop
/* 4E2AC 8004D6AC 00802825 */  or         $a1, $a0, $zero
.L8004D6B0:
/* 4E2B0 8004D6B0 0C00A607 */  jal        func_8002981C
/* 4E2B4 8004D6B4 00000000 */   nop
/* 4E2B8 8004D6B8 AE0200EC */  sw         $v0, 0xec($s0)
.L8004D6BC:
/* 4E2BC 8004D6BC 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004D6C0:
/* 4E2C0 8004D6C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 4E2C4 8004D6C4 03E00008 */  jr         $ra
/* 4E2C8 8004D6C8 27BD0028 */   addiu     $sp, $sp, 0x28
