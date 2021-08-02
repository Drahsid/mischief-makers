.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSeqpNew
/* ABE50 800AB250 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* ABE54 800AB254 AFBF001C */  sw         $ra, 0x1c($sp)
/* ABE58 800AB258 AFA40038 */  sw         $a0, 0x38($sp)
/* ABE5C 800AB25C AFA5003C */  sw         $a1, 0x3c($sp)
/* ABE60 800AB260 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABE64 800AB264 8DCF000C */  lw         $t7, 0xc($t6)
/* ABE68 800AB268 AFAF0024 */  sw         $t7, 0x24($sp)
/* ABE6C 800AB26C 8FB80038 */  lw         $t8, 0x38($sp)
/* ABE70 800AB270 AF000020 */  sw         $zero, 0x20($t8)
/* ABE74 800AB274 8FB90038 */  lw         $t9, 0x38($sp)
/* ABE78 800AB278 AF200018 */  sw         $zero, 0x18($t9)
/* ABE7C 800AB27C 3C08800F */  lui        $t0, %hi(alGlobals)
/* ABE80 800AB280 8D08A520 */  lw         $t0, %lo(alGlobals)($t0)
/* ABE84 800AB284 8FA90038 */  lw         $t1, 0x38($sp)
/* ABE88 800AB288 AD280014 */  sw         $t0, 0x14($t1)
/* ABE8C 800AB28C 8FAB0038 */  lw         $t3, 0x38($sp)
/* ABE90 800AB290 240A00FF */  addiu      $t2, $zero, 0xff
/* ABE94 800AB294 A56A0030 */  sh         $t2, 0x30($t3)
/* ABE98 800AB298 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABE9C 800AB29C 240C01E8 */  addiu      $t4, $zero, 0x1e8
/* ABEA0 800AB2A0 ADAC0024 */  sw         $t4, 0x24($t5)
/* ABEA4 800AB2A4 8FAE0038 */  lw         $t6, 0x38($sp)
/* ABEA8 800AB2A8 ADC00028 */  sw         $zero, 0x28($t6)
/* ABEAC 800AB2AC 8FAF0038 */  lw         $t7, 0x38($sp)
/* ABEB0 800AB2B0 ADE0002C */  sw         $zero, 0x2c($t7)
/* ABEB4 800AB2B4 8FB90038 */  lw         $t9, 0x38($sp)
/* ABEB8 800AB2B8 24187FFF */  addiu      $t8, $zero, 0x7fff
/* ABEBC 800AB2BC A7380032 */  sh         $t8, 0x32($t9)
/* ABEC0 800AB2C0 8FA8003C */  lw         $t0, 0x3c($sp)
/* ABEC4 800AB2C4 8FAA0038 */  lw         $t2, 0x38($sp)
/* ABEC8 800AB2C8 91090009 */  lbu        $t1, 9($t0)
/* ABECC 800AB2CC A1490035 */  sb         $t1, 0x35($t2)
/* ABED0 800AB2D0 8FAC0038 */  lw         $t4, 0x38($sp)
/* ABED4 800AB2D4 240B3E80 */  addiu      $t3, $zero, 0x3e80
/* ABED8 800AB2D8 AD8B005C */  sw         $t3, 0x5c($t4)
/* ABEDC 800AB2DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABEE0 800AB2E0 ADA0001C */  sw         $zero, 0x1c($t5)
/* ABEE4 800AB2E4 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABEE8 800AB2E8 8FB80038 */  lw         $t8, 0x38($sp)
/* ABEEC 800AB2EC 8DCF0010 */  lw         $t7, 0x10($t6)
/* ABEF0 800AB2F0 AF0F0070 */  sw         $t7, 0x70($t8)
/* ABEF4 800AB2F4 8FB9003C */  lw         $t9, 0x3c($sp)
/* ABEF8 800AB2F8 8FA90038 */  lw         $t1, 0x38($sp)
/* ABEFC 800AB2FC 8F280014 */  lw         $t0, 0x14($t9)
/* ABF00 800AB300 AD280074 */  sw         $t0, 0x74($t1)
/* ABF04 800AB304 8FAA003C */  lw         $t2, 0x3c($sp)
/* ABF08 800AB308 8FAC0038 */  lw         $t4, 0x38($sp)
/* ABF0C 800AB30C 8D4B0018 */  lw         $t3, 0x18($t2)
/* ABF10 800AB310 AD8B0078 */  sw         $t3, 0x78($t4)
/* ABF14 800AB314 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABF18 800AB318 ADA0007C */  sw         $zero, 0x7c($t5)
/* ABF1C 800AB31C 8FAE0038 */  lw         $t6, 0x38($sp)
/* ABF20 800AB320 ADC00080 */  sw         $zero, 0x80($t6)
/* ABF24 800AB324 8FAF0038 */  lw         $t7, 0x38($sp)
/* ABF28 800AB328 ADE00084 */  sw         $zero, 0x84($t7)
/* ABF2C 800AB32C 8FB90038 */  lw         $t9, 0x38($sp)
/* ABF30 800AB330 24180009 */  addiu      $t8, $zero, 9
/* ABF34 800AB334 A7380038 */  sh         $t8, 0x38($t9)
/* ABF38 800AB338 8FA8003C */  lw         $t0, 0x3c($sp)
/* ABF3C 800AB33C 8FAA0038 */  lw         $t2, 0x38($sp)
/* ABF40 800AB340 91090008 */  lbu        $t1, 8($t0)
/* ABF44 800AB344 A1490034 */  sb         $t1, 0x34($t2)
/* ABF48 800AB348 8FAB003C */  lw         $t3, 0x3c($sp)
/* ABF4C 800AB34C 3C04800F */  lui        $a0, %hi(seqplayer_rodata_0000)
/* ABF50 800AB350 240C0010 */  addiu      $t4, $zero, 0x10
/* ABF54 800AB354 91670008 */  lbu        $a3, 8($t3)
/* ABF58 800AB358 AFAC0010 */  sw         $t4, 0x10($sp)
/* ABF5C 800AB35C 2484DFA0 */  addiu      $a0, $a0, %lo(seqplayer_rodata_0000)
/* ABF60 800AB360 2405005B */  addiu      $a1, $zero, 0x5b
/* ABF64 800AB364 0C026ECC */  jal        alHeapDBAlloc
/* ABF68 800AB368 8FA60024 */   lw        $a2, 0x24($sp)
/* ABF6C 800AB36C 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABF70 800AB370 ADA20060 */  sw         $v0, 0x60($t5)
/* ABF74 800AB374 0C02B54F */  jal        __initChanState
/* ABF78 800AB378 8FA40038 */   lw        $a0, 0x38($sp)
/* ABF7C 800AB37C 8FAE003C */  lw         $t6, 0x3c($sp)
/* ABF80 800AB380 3C04800F */  lui        $a0, %hi(seqplayer_rodata_0018)
/* ABF84 800AB384 240F0038 */  addiu      $t7, $zero, 0x38
/* ABF88 800AB388 8DC70000 */  lw         $a3, ($t6)
/* ABF8C 800AB38C AFAF0010 */  sw         $t7, 0x10($sp)
/* ABF90 800AB390 2484DFB8 */  addiu      $a0, $a0, %lo(seqplayer_rodata_0018)
/* ABF94 800AB394 24050061 */  addiu      $a1, $zero, 0x61
/* ABF98 800AB398 0C026ECC */  jal        alHeapDBAlloc
/* ABF9C 800AB39C 8FA60024 */   lw        $a2, 0x24($sp)
/* ABFA0 800AB3A0 AFA20028 */  sw         $v0, 0x28($sp)
/* ABFA4 800AB3A4 8FB80038 */  lw         $t8, 0x38($sp)
/* ABFA8 800AB3A8 AF00006C */  sw         $zero, 0x6c($t8)
/* ABFAC 800AB3AC 8FB9003C */  lw         $t9, 0x3c($sp)
/* ABFB0 800AB3B0 AFA00034 */  sw         $zero, 0x34($sp)
/* ABFB4 800AB3B4 8F280000 */  lw         $t0, ($t9)
/* ABFB8 800AB3B8 19000017 */  blez       $t0, .L800AB418
/* ABFBC 800AB3BC 00000000 */   nop
.L800AB3C0:
/* ABFC0 800AB3C0 8FA90034 */  lw         $t1, 0x34($sp)
/* ABFC4 800AB3C4 8FAB0028 */  lw         $t3, 0x28($sp)
/* ABFC8 800AB3C8 000950C0 */  sll        $t2, $t1, 3
/* ABFCC 800AB3CC 01495023 */  subu       $t2, $t2, $t1
/* ABFD0 800AB3D0 000A50C0 */  sll        $t2, $t2, 3
/* ABFD4 800AB3D4 014B6021 */  addu       $t4, $t2, $t3
/* ABFD8 800AB3D8 AFAC002C */  sw         $t4, 0x2c($sp)
/* ABFDC 800AB3DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABFE0 800AB3E0 8FAF002C */  lw         $t7, 0x2c($sp)
/* ABFE4 800AB3E4 8DAE006C */  lw         $t6, 0x6c($t5)
/* ABFE8 800AB3E8 ADEE0000 */  sw         $t6, ($t7)
/* ABFEC 800AB3EC 8FB8002C */  lw         $t8, 0x2c($sp)
/* ABFF0 800AB3F0 8FB90038 */  lw         $t9, 0x38($sp)
/* ABFF4 800AB3F4 AF38006C */  sw         $t8, 0x6c($t9)
/* ABFF8 800AB3F8 8FA80034 */  lw         $t0, 0x34($sp)
/* ABFFC 800AB3FC 8FAA003C */  lw         $t2, 0x3c($sp)
/* AC000 800AB400 25090001 */  addiu      $t1, $t0, 1
/* AC004 800AB404 AFA90034 */  sw         $t1, 0x34($sp)
/* AC008 800AB408 8D4B0000 */  lw         $t3, ($t2)
/* AC00C 800AB40C 012B082A */  slt        $at, $t1, $t3
/* AC010 800AB410 1420FFEB */  bnez       $at, .L800AB3C0
/* AC014 800AB414 00000000 */   nop
.L800AB418:
/* AC018 800AB418 8FAC0038 */  lw         $t4, 0x38($sp)
/* AC01C 800AB41C AD800064 */  sw         $zero, 0x64($t4)
/* AC020 800AB420 8FAD0038 */  lw         $t5, 0x38($sp)
/* AC024 800AB424 ADA00068 */  sw         $zero, 0x68($t5)
/* AC028 800AB428 8FAE003C */  lw         $t6, 0x3c($sp)
/* AC02C 800AB42C 3C04800F */  lui        $a0, %hi(seqplayer_rodata_0030)
/* AC030 800AB430 240F001C */  addiu      $t7, $zero, 0x1c
/* AC034 800AB434 8DC70004 */  lw         $a3, 4($t6)
/* AC038 800AB438 AFAF0010 */  sw         $t7, 0x10($sp)
/* AC03C 800AB43C 2484DFD0 */  addiu      $a0, $a0, %lo(seqplayer_rodata_0030)
/* AC040 800AB440 2405006F */  addiu      $a1, $zero, 0x6f
/* AC044 800AB444 0C026ECC */  jal        alHeapDBAlloc
/* AC048 800AB448 8FA60024 */   lw        $a2, 0x24($sp)
/* AC04C 800AB44C AFA20030 */  sw         $v0, 0x30($sp)
/* AC050 800AB450 8FA40038 */  lw         $a0, 0x38($sp)
/* AC054 800AB454 8FB8003C */  lw         $t8, 0x3c($sp)
/* AC058 800AB458 8FA50030 */  lw         $a1, 0x30($sp)
/* AC05C 800AB45C 24840048 */  addiu      $a0, $a0, 0x48
/* AC060 800AB460 0C02B5D0 */  jal        alEvtqNew
/* AC064 800AB464 8F060004 */   lw        $a2, 4($t8)
/* AC068 800AB468 8FB90038 */  lw         $t9, 0x38($sp)
/* AC06C 800AB46C AF200000 */  sw         $zero, ($t9)
/* AC070 800AB470 8FAA0038 */  lw         $t2, 0x38($sp)
/* AC074 800AB474 3C08800B */  lui        $t0, %hi(__seqpVoiceHandler)
/* AC078 800AB478 2508B4B0 */  addiu      $t0, $t0, %lo(__seqpVoiceHandler)
/* AC07C 800AB47C AD480008 */  sw         $t0, 8($t2)
/* AC080 800AB480 8FA90038 */  lw         $t1, 0x38($sp)
/* AC084 800AB484 AD290004 */  sw         $t1, 4($t1)
/* AC088 800AB488 3C04800F */  lui        $a0, %hi(alGlobals)
/* AC08C 800AB48C 8C84A520 */  lw         $a0, %lo(alGlobals)($a0)
/* AC090 800AB490 0C02B6D8 */  jal        alSynAddPlayer
/* AC094 800AB494 8FA50038 */   lw        $a1, 0x38($sp)
/* AC098 800AB498 10000001 */  b          .L800AB4A0
/* AC09C 800AB49C 00000000 */   nop
.L800AB4A0:
/* AC0A0 800AB4A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC0A4 800AB4A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* AC0A8 800AB4A8 03E00008 */  jr         $ra
/* AC0AC 800AB4AC 00000000 */   nop

glabel __seqpVoiceHandler
/* AC0B0 800AB4B0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AC0B4 800AB4B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC0B8 800AB4B8 AFA40050 */  sw         $a0, 0x50($sp)
/* AC0BC 800AB4BC AFB10018 */  sw         $s1, 0x18($sp)
/* AC0C0 800AB4C0 AFB00014 */  sw         $s0, 0x14($sp)
/* AC0C4 800AB4C4 8FAE0050 */  lw         $t6, 0x50($sp)
/* AC0C8 800AB4C8 AFAE004C */  sw         $t6, 0x4c($sp)
.L800AB4CC:
/* AC0CC 800AB4CC 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC0D0 800AB4D0 95F80038 */  lhu        $t8, 0x38($t7)
/* AC0D4 800AB4D4 2F010018 */  sltiu      $at, $t8, 0x18
/* AC0D8 800AB4D8 102001B9 */  beqz       $at, .L800ABBC0
/* AC0DC 800AB4DC 00000000 */   nop
/* AC0E0 800AB4E0 0018C080 */  sll        $t8, $t8, 2
/* AC0E4 800AB4E4 3C01800F */  lui        $at, %hi(D_800EE140)
/* AC0E8 800AB4E8 00380821 */  addu       $at, $at, $t8
/* AC0EC 800AB4EC 8C38E140 */  lw         $t8, %lo(D_800EE140)($at)
/* AC0F0 800AB4F0 03000008 */  jr         $t8
/* AC0F4 800AB4F4 00000000 */   nop
/* AC0F8 800AB4F8 0C02AF4B */  jal        __handleNextSeqEvent
/* AC0FC 800AB4FC 8FA4004C */   lw        $a0, 0x4c($sp)
/* AC100 800AB500 100001AF */  b          .L800ABBC0
/* AC104 800AB504 00000000 */   nop
/* AC108 800AB508 24190009 */  addiu      $t9, $zero, 9
/* AC10C 800AB50C A7B9003C */  sh         $t9, 0x3c($sp)
/* AC110 800AB510 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC114 800AB514 27A5003C */  addiu      $a1, $sp, 0x3c
/* AC118 800AB518 25040048 */  addiu      $a0, $t0, 0x48
/* AC11C 800AB51C 0C02B620 */  jal        alEvtqPostEvent
/* AC120 800AB520 8D06005C */   lw        $a2, 0x5c($t0)
/* AC124 800AB524 100001A6 */  b          .L800ABBC0
/* AC128 800AB528 00000000 */   nop
/* AC12C 800AB52C 8FA9004C */  lw         $t1, 0x4c($sp)
/* AC130 800AB530 8D2A003C */  lw         $t2, 0x3c($t1)
/* AC134 800AB534 AFAA0038 */  sw         $t2, 0x38($sp)
/* AC138 800AB538 8FAB004C */  lw         $t3, 0x4c($sp)
/* AC13C 800AB53C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC140 800AB540 0C02B6F4 */  jal        alSynStopVoice
/* AC144 800AB544 8D640014 */   lw        $a0, 0x14($t3)
/* AC148 800AB548 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC14C 800AB54C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC150 800AB550 0C02B728 */  jal        alSynFreeVoice
/* AC154 800AB554 8D840014 */   lw        $a0, 0x14($t4)
/* AC158 800AB558 8FAD0038 */  lw         $t5, 0x38($sp)
/* AC15C 800AB55C 8DAE0010 */  lw         $t6, 0x10($t5)
/* AC160 800AB560 AFAE0030 */  sw         $t6, 0x30($sp)
/* AC164 800AB564 8FAF0030 */  lw         $t7, 0x30($sp)
/* AC168 800AB568 91F80037 */  lbu        $t8, 0x37($t7)
/* AC16C 800AB56C 13000004 */  beqz       $t8, .L800AB580
/* AC170 800AB570 00000000 */   nop
/* AC174 800AB574 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC178 800AB578 0C02B56E */  jal        __seqpStopOsc
/* AC17C 800AB57C 8FA50030 */   lw        $a1, 0x30($sp)
.L800AB580:
/* AC180 800AB580 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC184 800AB584 0C02B302 */  jal        __unmapVoice
/* AC188 800AB588 8FA50038 */   lw        $a1, 0x38($sp)
/* AC18C 800AB58C 1000018C */  b          .L800ABBC0
/* AC190 800AB590 00000000 */   nop
/* AC194 800AB594 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC198 800AB598 8F28003C */  lw         $t0, 0x3c($t9)
/* AC19C 800AB59C AFA80038 */  sw         $t0, 0x38($sp)
/* AC1A0 800AB5A0 8FA90038 */  lw         $t1, 0x38($sp)
/* AC1A4 800AB5A4 8D2A0010 */  lw         $t2, 0x10($t1)
/* AC1A8 800AB5A8 AFAA0030 */  sw         $t2, 0x30($sp)
/* AC1AC 800AB5AC 8FAB0030 */  lw         $t3, 0x30($sp)
/* AC1B0 800AB5B0 916C0034 */  lbu        $t4, 0x34($t3)
/* AC1B4 800AB5B4 15800004 */  bnez       $t4, .L800AB5C8
/* AC1B8 800AB5B8 00000000 */   nop
/* AC1BC 800AB5BC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AC1C0 800AB5C0 240D0001 */  addiu      $t5, $zero, 1
/* AC1C4 800AB5C4 A1CD0034 */  sb         $t5, 0x34($t6)
.L800AB5C8:
/* AC1C8 800AB5C8 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC1CC 800AB5CC 8DF80040 */  lw         $t8, 0x40($t7)
/* AC1D0 800AB5D0 AFB80034 */  sw         $t8, 0x34($sp)
/* AC1D4 800AB5D4 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC1D8 800AB5D8 8FA90030 */  lw         $t1, 0x30($sp)
/* AC1DC 800AB5DC 93280044 */  lbu        $t0, 0x44($t9)
/* AC1E0 800AB5E0 A1280030 */  sb         $t0, 0x30($t1)
/* AC1E4 800AB5E4 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC1E8 800AB5E8 8FAC0034 */  lw         $t4, 0x34($sp)
/* AC1EC 800AB5EC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AC1F0 800AB5F0 8D4B001C */  lw         $t3, 0x1c($t2)
/* AC1F4 800AB5F4 016C6821 */  addu       $t5, $t3, $t4
/* AC1F8 800AB5F8 ADCD0024 */  sw         $t5, 0x24($t6)
/* AC1FC 800AB5FC 8FA40030 */  lw         $a0, 0x30($sp)
/* AC200 800AB600 0C02B3CE */  jal        __vsVol
/* AC204 800AB604 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC208 800AB608 00028400 */  sll        $s0, $v0, 0x10
/* AC20C 800AB60C 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC210 800AB610 00107C03 */  sra        $t7, $s0, 0x10
/* AC214 800AB614 01E08025 */  or         $s0, $t7, $zero
/* AC218 800AB618 02003025 */  or         $a2, $s0, $zero
/* AC21C 800AB61C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC220 800AB620 8FA70034 */  lw         $a3, 0x34($sp)
/* AC224 800AB624 0C02B768 */  jal        alSynSetVol
/* AC228 800AB628 8F040014 */   lw        $a0, 0x14($t8)
/* AC22C 800AB62C 10000164 */  b          .L800ABBC0
/* AC230 800AB630 00000000 */   nop
/* AC234 800AB634 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC238 800AB638 8F28003C */  lw         $t0, 0x3c($t9)
/* AC23C 800AB63C AFA80030 */  sw         $t0, 0x30($sp)
/* AC240 800AB640 8FA9004C */  lw         $t1, 0x4c($sp)
/* AC244 800AB644 8D2A0040 */  lw         $t2, 0x40($t1)
/* AC248 800AB648 AFAA002C */  sw         $t2, 0x2c($sp)
/* AC24C 800AB64C 8FAB004C */  lw         $t3, 0x4c($sp)
/* AC250 800AB650 8FA4002C */  lw         $a0, 0x2c($sp)
/* AC254 800AB654 27A50028 */  addiu      $a1, $sp, 0x28
/* AC258 800AB658 8D790074 */  lw         $t9, 0x74($t3)
/* AC25C 800AB65C 0320F809 */  jalr       $t9
/* AC260 800AB660 00000000 */   nop
/* AC264 800AB664 AFA20034 */  sw         $v0, 0x34($sp)
/* AC268 800AB668 444CF800 */  cfc1       $t4, $31
/* AC26C 800AB66C 240D0001 */  addiu      $t5, $zero, 1
/* AC270 800AB670 44CDF800 */  ctc1       $t5, $31
/* AC274 800AB674 C7A40028 */  lwc1       $f4, 0x28($sp)
/* AC278 800AB678 460021A4 */  cvt.w.s    $f6, $f4
/* AC27C 800AB67C 444DF800 */  cfc1       $t5, $31
/* AC280 800AB680 00000000 */  nop
/* AC284 800AB684 31A10004 */  andi       $at, $t5, 4
/* AC288 800AB688 31AD0078 */  andi       $t5, $t5, 0x78
/* AC28C 800AB68C 11A00014 */  beqz       $t5, .L800AB6E0
/* AC290 800AB690 00000000 */   nop
/* AC294 800AB694 3C014F00 */  lui        $at, 0x4f00
/* AC298 800AB698 44813000 */  mtc1       $at, $f6
/* AC29C 800AB69C 240D0001 */  addiu      $t5, $zero, 1
/* AC2A0 800AB6A0 46062181 */  sub.s      $f6, $f4, $f6
/* AC2A4 800AB6A4 44CDF800 */  ctc1       $t5, $31
/* AC2A8 800AB6A8 00000000 */  nop
/* AC2AC 800AB6AC 460031A4 */  cvt.w.s    $f6, $f6
/* AC2B0 800AB6B0 444DF800 */  cfc1       $t5, $31
/* AC2B4 800AB6B4 00000000 */  nop
/* AC2B8 800AB6B8 31A10004 */  andi       $at, $t5, 4
/* AC2BC 800AB6BC 31AD0078 */  andi       $t5, $t5, 0x78
/* AC2C0 800AB6C0 15A00005 */  bnez       $t5, .L800AB6D8
/* AC2C4 800AB6C4 00000000 */   nop
/* AC2C8 800AB6C8 440D3000 */  mfc1       $t5, $f6
/* AC2CC 800AB6CC 3C018000 */  lui        $at, 0x8000
/* AC2D0 800AB6D0 10000007 */  b          .L800AB6F0
/* AC2D4 800AB6D4 01A16825 */   or        $t5, $t5, $at
.L800AB6D8:
/* AC2D8 800AB6D8 10000005 */  b          .L800AB6F0
/* AC2DC 800AB6DC 240DFFFF */   addiu     $t5, $zero, -1
.L800AB6E0:
/* AC2E0 800AB6E0 440D3000 */  mfc1       $t5, $f6
/* AC2E4 800AB6E4 00000000 */  nop
/* AC2E8 800AB6E8 05A0FFFB */  bltz       $t5, .L800AB6D8
/* AC2EC 800AB6EC 00000000 */   nop
.L800AB6F0:
/* AC2F0 800AB6F0 8FAE0030 */  lw         $t6, 0x30($sp)
/* AC2F4 800AB6F4 44CCF800 */  ctc1       $t4, $31
/* AC2F8 800AB6F8 A1CD0036 */  sb         $t5, 0x36($t6)
/* AC2FC 800AB6FC 00000000 */  nop
/* AC300 800AB700 8FA40030 */  lw         $a0, 0x30($sp)
/* AC304 800AB704 0C02B3CE */  jal        __vsVol
/* AC308 800AB708 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC30C 800AB70C 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC310 800AB710 00028400 */  sll        $s0, $v0, 0x10
/* AC314 800AB714 00107C03 */  sra        $t7, $s0, 0x10
/* AC318 800AB718 01E08025 */  or         $s0, $t7, $zero
/* AC31C 800AB71C 8FA40030 */  lw         $a0, 0x30($sp)
/* AC320 800AB720 0C02B3F9 */  jal        __vsDelta
/* AC324 800AB724 8F05001C */   lw        $a1, 0x1c($t8)
/* AC328 800AB728 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC32C 800AB72C 8FA50030 */  lw         $a1, 0x30($sp)
/* AC330 800AB730 00408825 */  or         $s1, $v0, $zero
/* AC334 800AB734 02203825 */  or         $a3, $s1, $zero
/* AC338 800AB738 02003025 */  or         $a2, $s0, $zero
/* AC33C 800AB73C 8D040014 */  lw         $a0, 0x14($t0)
/* AC340 800AB740 0C02B768 */  jal        alSynSetVol
/* AC344 800AB744 24A50004 */   addiu     $a1, $a1, 4
/* AC348 800AB748 24090016 */  addiu      $t1, $zero, 0x16
/* AC34C 800AB74C A7A9003C */  sh         $t1, 0x3c($sp)
/* AC350 800AB750 8FAA0030 */  lw         $t2, 0x30($sp)
/* AC354 800AB754 AFAA0040 */  sw         $t2, 0x40($sp)
/* AC358 800AB758 8FAB002C */  lw         $t3, 0x2c($sp)
/* AC35C 800AB75C AFAB0044 */  sw         $t3, 0x44($sp)
/* AC360 800AB760 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC364 800AB764 27A5003C */  addiu      $a1, $sp, 0x3c
/* AC368 800AB768 8FA60034 */  lw         $a2, 0x34($sp)
/* AC36C 800AB76C 0C02B620 */  jal        alEvtqPostEvent
/* AC370 800AB770 24840048 */   addiu     $a0, $a0, 0x48
/* AC374 800AB774 10000112 */  b          .L800ABBC0
/* AC378 800AB778 00000000 */   nop
/* AC37C 800AB77C 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC380 800AB780 8F2C003C */  lw         $t4, 0x3c($t9)
/* AC384 800AB784 AFAC0030 */  sw         $t4, 0x30($sp)
/* AC388 800AB788 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC38C 800AB78C 8DAE0040 */  lw         $t6, 0x40($t5)
/* AC390 800AB790 AFAE002C */  sw         $t6, 0x2c($sp)
/* AC394 800AB794 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC398 800AB798 91F80044 */  lbu        $t8, 0x44($t7)
/* AC39C 800AB79C A3B80027 */  sb         $t8, 0x27($sp)
/* AC3A0 800AB7A0 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC3A4 800AB7A4 8FA4002C */  lw         $a0, 0x2c($sp)
/* AC3A8 800AB7A8 27A50028 */  addiu      $a1, $sp, 0x28
/* AC3AC 800AB7AC 8D190074 */  lw         $t9, 0x74($t0)
/* AC3B0 800AB7B0 0320F809 */  jalr       $t9
/* AC3B4 800AB7B4 00000000 */   nop
/* AC3B8 800AB7B8 AFA20034 */  sw         $v0, 0x34($sp)
/* AC3BC 800AB7BC C7A80028 */  lwc1       $f8, 0x28($sp)
/* AC3C0 800AB7C0 8FA90030 */  lw         $t1, 0x30($sp)
/* AC3C4 800AB7C4 E528002C */  swc1       $f8, 0x2c($t1)
/* AC3C8 800AB7C8 8FAB0030 */  lw         $t3, 0x30($sp)
/* AC3CC 800AB7CC 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC3D0 800AB7D0 93AD0027 */  lbu        $t5, 0x27($sp)
/* AC3D4 800AB7D4 C5700028 */  lwc1       $f16, 0x28($t3)
/* AC3D8 800AB7D8 C572002C */  lwc1       $f18, 0x2c($t3)
/* AC3DC 800AB7DC 8D4C0060 */  lw         $t4, 0x60($t2)
/* AC3E0 800AB7E0 000D7100 */  sll        $t6, $t5, 4
/* AC3E4 800AB7E4 46128102 */  mul.s      $f4, $f16, $f18
/* AC3E8 800AB7E8 018E7821 */  addu       $t7, $t4, $t6
/* AC3EC 800AB7EC C5EA000C */  lwc1       $f10, 0xc($t7)
/* AC3F0 800AB7F0 25650004 */  addiu      $a1, $t3, 4
/* AC3F4 800AB7F4 8D440014 */  lw         $a0, 0x14($t2)
/* AC3F8 800AB7F8 46045182 */  mul.s      $f6, $f10, $f4
/* AC3FC 800AB7FC 44063000 */  mfc1       $a2, $f6
/* AC400 800AB800 0C02B7A4 */  jal        alSynSetPitch
/* AC404 800AB804 00000000 */   nop
/* AC408 800AB808 24180017 */  addiu      $t8, $zero, 0x17
/* AC40C 800AB80C A7B8003C */  sh         $t8, 0x3c($sp)
/* AC410 800AB810 8FA80030 */  lw         $t0, 0x30($sp)
/* AC414 800AB814 AFA80040 */  sw         $t0, 0x40($sp)
/* AC418 800AB818 8FB9002C */  lw         $t9, 0x2c($sp)
/* AC41C 800AB81C AFB90044 */  sw         $t9, 0x44($sp)
/* AC420 800AB820 93A90027 */  lbu        $t1, 0x27($sp)
/* AC424 800AB824 A3A90048 */  sb         $t1, 0x48($sp)
/* AC428 800AB828 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC42C 800AB82C 27A5003C */  addiu      $a1, $sp, 0x3c
/* AC430 800AB830 8FA60034 */  lw         $a2, 0x34($sp)
/* AC434 800AB834 0C02B620 */  jal        alEvtqPostEvent
/* AC438 800AB838 24840048 */   addiu     $a0, $a0, 0x48
/* AC43C 800AB83C 100000E0 */  b          .L800ABBC0
/* AC440 800AB840 00000000 */   nop
/* AC444 800AB844 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC448 800AB848 01402025 */  or         $a0, $t2, $zero
/* AC44C 800AB84C 0C02AF8D */  jal        __handleMIDIMsg
/* AC450 800AB850 25450038 */   addiu     $a1, $t2, 0x38
/* AC454 800AB854 100000DA */  b          .L800ABBC0
/* AC458 800AB858 00000000 */   nop
/* AC45C 800AB85C 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC460 800AB860 01A02025 */  or         $a0, $t5, $zero
/* AC464 800AB864 0C02B2B3 */  jal        __handleMetaMsg
/* AC468 800AB868 25A50038 */   addiu     $a1, $t5, 0x38
/* AC46C 800AB86C 100000D4 */  b          .L800ABBC0
/* AC470 800AB870 00000000 */   nop
/* AC474 800AB874 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC478 800AB878 24010001 */  addiu      $at, $zero, 1
/* AC47C 800AB87C 8D8E002C */  lw         $t6, 0x2c($t4)
/* AC480 800AB880 11C10006 */  beq        $t6, $at, .L800AB89C
/* AC484 800AB884 00000000 */   nop
/* AC488 800AB888 8FAB004C */  lw         $t3, 0x4c($sp)
/* AC48C 800AB88C 240F0001 */  addiu      $t7, $zero, 1
/* AC490 800AB890 AD6F002C */  sw         $t7, 0x2c($t3)
/* AC494 800AB894 0C02AF09 */  jal        __postNextSeqEvent
/* AC498 800AB898 8FA4004C */   lw        $a0, 0x4c($sp)
.L800AB89C:
/* AC49C 800AB89C 100000C8 */  b          .L800ABBC0
/* AC4A0 800AB8A0 00000000 */   nop
/* AC4A4 800AB8A4 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC4A8 800AB8A8 24010002 */  addiu      $at, $zero, 2
/* AC4AC 800AB8AC 8F08002C */  lw         $t0, 0x2c($t8)
/* AC4B0 800AB8B0 15010022 */  bne        $t0, $at, .L800AB93C
/* AC4B4 800AB8B4 00000000 */   nop
/* AC4B8 800AB8B8 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC4BC 800AB8BC 8F290064 */  lw         $t1, 0x64($t9)
/* AC4C0 800AB8C0 1120001A */  beqz       $t1, .L800AB92C
/* AC4C4 800AB8C4 AFA90030 */   sw        $t1, 0x30($sp)
.L800AB8C8:
/* AC4C8 800AB8C8 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC4CC 800AB8CC 8FA50030 */  lw         $a1, 0x30($sp)
/* AC4D0 800AB8D0 8D440014 */  lw         $a0, 0x14($t2)
/* AC4D4 800AB8D4 0C02B6F4 */  jal        alSynStopVoice
/* AC4D8 800AB8D8 24A50004 */   addiu     $a1, $a1, 4
/* AC4DC 800AB8DC 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC4E0 800AB8E0 8FA50030 */  lw         $a1, 0x30($sp)
/* AC4E4 800AB8E4 8DA40014 */  lw         $a0, 0x14($t5)
/* AC4E8 800AB8E8 0C02B728 */  jal        alSynFreeVoice
/* AC4EC 800AB8EC 24A50004 */   addiu     $a1, $a1, 4
/* AC4F0 800AB8F0 8FAC0030 */  lw         $t4, 0x30($sp)
/* AC4F4 800AB8F4 918E0037 */  lbu        $t6, 0x37($t4)
/* AC4F8 800AB8F8 11C00004 */  beqz       $t6, .L800AB90C
/* AC4FC 800AB8FC 00000000 */   nop
/* AC500 800AB900 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC504 800AB904 0C02B56E */  jal        __seqpStopOsc
/* AC508 800AB908 8FA50030 */   lw        $a1, 0x30($sp)
.L800AB90C:
/* AC50C 800AB90C 8FA50030 */  lw         $a1, 0x30($sp)
/* AC510 800AB910 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC514 800AB914 0C02B302 */  jal        __unmapVoice
/* AC518 800AB918 24A50004 */   addiu     $a1, $a1, 4
/* AC51C 800AB91C 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC520 800AB920 8DEB0064 */  lw         $t3, 0x64($t7)
/* AC524 800AB924 1560FFE8 */  bnez       $t3, .L800AB8C8
/* AC528 800AB928 AFAB0030 */   sw        $t3, 0x30($sp)
.L800AB92C:
/* AC52C 800AB92C 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC530 800AB930 AF00001C */  sw         $zero, 0x1c($t8)
/* AC534 800AB934 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC538 800AB938 AD00002C */  sw         $zero, 0x2c($t0)
.L800AB93C:
/* AC53C 800AB93C 100000A0 */  b          .L800ABBC0
/* AC540 800AB940 00000000 */   nop
/* AC544 800AB944 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC548 800AB948 24010001 */  addiu      $at, $zero, 1
/* AC54C 800AB94C 8F29002C */  lw         $t1, 0x2c($t9)
/* AC550 800AB950 15210028 */  bne        $t1, $at, .L800AB9F4
/* AC554 800AB954 00000000 */   nop
/* AC558 800AB958 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC55C 800AB95C 00002825 */  or         $a1, $zero, $zero
/* AC560 800AB960 0C02B6A4 */  jal        alEvtqFlushType
/* AC564 800AB964 24840048 */   addiu     $a0, $a0, 0x48
/* AC568 800AB968 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC56C 800AB96C 24050002 */  addiu      $a1, $zero, 2
/* AC570 800AB970 0C02B6A4 */  jal        alEvtqFlushType
/* AC574 800AB974 24840048 */   addiu     $a0, $a0, 0x48
/* AC578 800AB978 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC57C 800AB97C 8D4D0064 */  lw         $t5, 0x64($t2)
/* AC580 800AB980 11A00011 */  beqz       $t5, .L800AB9C8
/* AC584 800AB984 AFAD0030 */   sw        $t5, 0x30($sp)
.L800AB988:
/* AC588 800AB988 8FA50030 */  lw         $a1, 0x30($sp)
/* AC58C 800AB98C 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC590 800AB990 3406C350 */  ori        $a2, $zero, 0xc350
/* AC594 800AB994 0C02B487 */  jal        __voiceNeedsNoteKill
/* AC598 800AB998 24A50004 */   addiu     $a1, $a1, 4
/* AC59C 800AB99C 10400006 */  beqz       $v0, .L800AB9B8
/* AC5A0 800AB9A0 00000000 */   nop
/* AC5A4 800AB9A4 8FA50030 */  lw         $a1, 0x30($sp)
/* AC5A8 800AB9A8 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC5AC 800AB9AC 3406C350 */  ori        $a2, $zero, 0xc350
/* AC5B0 800AB9B0 0C02B429 */  jal        __seqpReleaseVoice
/* AC5B4 800AB9B4 24A50004 */   addiu     $a1, $a1, 4
.L800AB9B8:
/* AC5B8 800AB9B8 8FAC0030 */  lw         $t4, 0x30($sp)
/* AC5BC 800AB9BC 8D8E0000 */  lw         $t6, ($t4)
/* AC5C0 800AB9C0 15C0FFF1 */  bnez       $t6, .L800AB988
/* AC5C4 800AB9C4 AFAE0030 */   sw        $t6, 0x30($sp)
.L800AB9C8:
/* AC5C8 800AB9C8 8FAB004C */  lw         $t3, 0x4c($sp)
/* AC5CC 800AB9CC 240F0002 */  addiu      $t7, $zero, 2
/* AC5D0 800AB9D0 AD6F002C */  sw         $t7, 0x2c($t3)
/* AC5D4 800AB9D4 24180010 */  addiu      $t8, $zero, 0x10
/* AC5D8 800AB9D8 A7B8003C */  sh         $t8, 0x3c($sp)
/* AC5DC 800AB9DC 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC5E0 800AB9E0 3C067FFF */  lui        $a2, 0x7fff
/* AC5E4 800AB9E4 34C6FFFF */  ori        $a2, $a2, 0xffff
/* AC5E8 800AB9E8 27A5003C */  addiu      $a1, $sp, 0x3c
/* AC5EC 800AB9EC 0C02B620 */  jal        alEvtqPostEvent
/* AC5F0 800AB9F0 24840048 */   addiu     $a0, $a0, 0x48
.L800AB9F4:
/* AC5F4 800AB9F4 10000072 */  b          .L800ABBC0
/* AC5F8 800AB9F8 00000000 */   nop
/* AC5FC 800AB9FC 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC600 800ABA00 8519003C */  lh         $t9, 0x3c($t0)
/* AC604 800ABA04 A5190032 */  sh         $t9, 0x32($t0)
/* AC608 800ABA08 8FA9004C */  lw         $t1, 0x4c($sp)
/* AC60C 800ABA0C 8D2A0064 */  lw         $t2, 0x64($t1)
/* AC610 800ABA10 11400017 */  beqz       $t2, .L800ABA70
/* AC614 800ABA14 AFAA0030 */   sw        $t2, 0x30($sp)
.L800ABA18:
/* AC618 800ABA18 8FA40030 */  lw         $a0, 0x30($sp)
/* AC61C 800ABA1C 0C02B3CE */  jal        __vsVol
/* AC620 800ABA20 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC624 800ABA24 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC628 800ABA28 00028400 */  sll        $s0, $v0, 0x10
/* AC62C 800ABA2C 00106C03 */  sra        $t5, $s0, 0x10
/* AC630 800ABA30 01A08025 */  or         $s0, $t5, $zero
/* AC634 800ABA34 8FA40030 */  lw         $a0, 0x30($sp)
/* AC638 800ABA38 0C02B3F9 */  jal        __vsDelta
/* AC63C 800ABA3C 8D85001C */   lw        $a1, 0x1c($t4)
/* AC640 800ABA40 8FAE004C */  lw         $t6, 0x4c($sp)
/* AC644 800ABA44 8FA50030 */  lw         $a1, 0x30($sp)
/* AC648 800ABA48 00408825 */  or         $s1, $v0, $zero
/* AC64C 800ABA4C 02203825 */  or         $a3, $s1, $zero
/* AC650 800ABA50 02003025 */  or         $a2, $s0, $zero
/* AC654 800ABA54 8DC40014 */  lw         $a0, 0x14($t6)
/* AC658 800ABA58 0C02B768 */  jal        alSynSetVol
/* AC65C 800ABA5C 24A50004 */   addiu     $a1, $a1, 4
/* AC660 800ABA60 8FAF0030 */  lw         $t7, 0x30($sp)
/* AC664 800ABA64 8DEB0000 */  lw         $t3, ($t7)
/* AC668 800ABA68 1560FFEB */  bnez       $t3, .L800ABA18
/* AC66C 800ABA6C AFAB0030 */   sw        $t3, 0x30($sp)
.L800ABA70:
/* AC670 800ABA70 10000053 */  b          .L800ABBC0
/* AC674 800ABA74 00000000 */   nop
/* AC678 800ABA78 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC67C 800ABA7C 8F19003C */  lw         $t9, 0x3c($t8)
/* AC680 800ABA80 AF19007C */  sw         $t9, 0x7c($t8)
/* AC684 800ABA84 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC688 800ABA88 8D090040 */  lw         $t1, 0x40($t0)
/* AC68C 800ABA8C AD090080 */  sw         $t1, 0x80($t0)
/* AC690 800ABA90 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC694 800ABA94 8D4D0044 */  lw         $t5, 0x44($t2)
/* AC698 800ABA98 AD4D0084 */  sw         $t5, 0x84($t2)
/* AC69C 800ABA9C 10000048 */  b          .L800ABBC0
/* AC6A0 800ABAA0 00000000 */   nop
/* AC6A4 800ABAA4 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC6A8 800ABAA8 918E003C */  lbu        $t6, 0x3c($t4)
/* AC6AC 800ABAAC A3AE0027 */  sb         $t6, 0x27($sp)
/* AC6B0 800ABAB0 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC6B4 800ABAB4 93B80027 */  lbu        $t8, 0x27($sp)
/* AC6B8 800ABAB8 8DF90060 */  lw         $t9, 0x60($t7)
/* AC6BC 800ABABC 91EB003D */  lbu        $t3, 0x3d($t7)
/* AC6C0 800ABAC0 00184900 */  sll        $t1, $t8, 4
/* AC6C4 800ABAC4 03294021 */  addu       $t0, $t9, $t1
/* AC6C8 800ABAC8 A10B0008 */  sb         $t3, 8($t0)
/* AC6CC 800ABACC 1000003C */  b          .L800ABBC0
/* AC6D0 800ABAD0 00000000 */   nop
/* AC6D4 800ABAD4 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC6D8 800ABAD8 24010001 */  addiu      $at, $zero, 1
/* AC6DC 800ABADC 8DAA002C */  lw         $t2, 0x2c($t5)
/* AC6E0 800ABAE0 11410003 */  beq        $t2, $at, .L800ABAF0
/* AC6E4 800ABAE4 00000000 */   nop
/* AC6E8 800ABAE8 10000007 */  b          .L800ABB08
/* AC6EC 800ABAEC 00000000 */   nop
.L800ABAF0:
/* AC6F0 800ABAF0 3C04800F */  lui        $a0, %hi(D_800EDFE8)
/* AC6F4 800ABAF4 3C05800F */  lui        $a1, %hi(D_800EE004)
/* AC6F8 800ABAF8 24A5E004 */  addiu      $a1, $a1, %lo(D_800EE004)
/* AC6FC 800ABAFC 2484DFE8 */  addiu      $a0, $a0, %lo(D_800EDFE8)
/* AC700 800ABB00 0C026E74 */  jal        __assert
/* AC704 800ABB04 24060128 */   addiu     $a2, $zero, 0x128
.L800ABB08:
/* AC708 800ABB08 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC70C 800ABB0C 8D8E003C */  lw         $t6, 0x3c($t4)
/* AC710 800ABB10 AD8E0018 */  sw         $t6, 0x18($t4)
/* AC714 800ABB14 3C0548F4 */  lui        $a1, 0x48f4
/* AC718 800ABB18 34A52400 */  ori        $a1, $a1, 0x2400
/* AC71C 800ABB1C 0C02B5BD */  jal        func_800AD6F4
/* AC720 800ABB20 8FA4004C */   lw        $a0, 0x4c($sp)
/* AC724 800ABB24 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC728 800ABB28 8DF80020 */  lw         $t8, 0x20($t7)
/* AC72C 800ABB2C 13000005 */  beqz       $t8, .L800ABB44
/* AC730 800ABB30 00000000 */   nop
/* AC734 800ABB34 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC738 800ABB38 03202025 */  or         $a0, $t9, $zero
/* AC73C 800ABB3C 0C02B4CF */  jal        __initFromBank
/* AC740 800ABB40 8F250020 */   lw        $a1, 0x20($t9)
.L800ABB44:
/* AC744 800ABB44 1000001E */  b          .L800ABBC0
/* AC748 800ABB48 00000000 */   nop
/* AC74C 800ABB4C 8FA9004C */  lw         $t1, 0x4c($sp)
/* AC750 800ABB50 8D2B002C */  lw         $t3, 0x2c($t1)
/* AC754 800ABB54 15600003 */  bnez       $t3, .L800ABB64
/* AC758 800ABB58 00000000 */   nop
/* AC75C 800ABB5C 10000007 */  b          .L800ABB7C
/* AC760 800ABB60 00000000 */   nop
.L800ABB64:
/* AC764 800ABB64 3C04800F */  lui        $a0, %hi(D_800EE01C)
/* AC768 800ABB68 3C05800F */  lui        $a1, %hi(D_800EE038)
/* AC76C 800ABB6C 24A5E038 */  addiu      $a1, $a1, %lo(D_800EE038)
/* AC770 800ABB70 2484E01C */  addiu      $a0, $a0, %lo(D_800EE01C)
/* AC774 800ABB74 0C026E74 */  jal        __assert
/* AC778 800ABB78 24060131 */   addiu     $a2, $zero, 0x131
.L800ABB7C:
/* AC77C 800ABB7C 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC780 800ABB80 8D0D003C */  lw         $t5, 0x3c($t0)
/* AC784 800ABB84 AD0D0020 */  sw         $t5, 0x20($t0)
/* AC788 800ABB88 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC78C 800ABB8C 01402025 */  or         $a0, $t2, $zero
/* AC790 800ABB90 0C02B4CF */  jal        __initFromBank
/* AC794 800ABB94 8D450020 */   lw        $a1, 0x20($t2)
/* AC798 800ABB98 10000009 */  b          .L800ABBC0
/* AC79C 800ABB9C 00000000 */   nop
/* AC7A0 800ABBA0 3C04800F */  lui        $a0, %hi(D_800EE050)
/* AC7A4 800ABBA4 3C05800F */  lui        $a1, %hi(D_800EE058)
/* AC7A8 800ABBA8 24A5E058 */  addiu      $a1, $a1, %lo(D_800EE058)
/* AC7AC 800ABBAC 2484E050 */  addiu      $a0, $a0, %lo(D_800EE050)
/* AC7B0 800ABBB0 0C026E74 */  jal        __assert
/* AC7B4 800ABBB4 2406013B */   addiu     $a2, $zero, 0x13b
/* AC7B8 800ABBB8 10000001 */  b          .L800ABBC0
/* AC7BC 800ABBBC 00000000 */   nop
.L800ABBC0:
/* AC7C0 800ABBC0 8FAE004C */  lw         $t6, 0x4c($sp)
/* AC7C4 800ABBC4 25C40048 */  addiu      $a0, $t6, 0x48
/* AC7C8 800ABBC8 0C02B5F7 */  jal        alEvtqNextEvent
/* AC7CC 800ABBCC 25C50038 */   addiu     $a1, $t6, 0x38
/* AC7D0 800ABBD0 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC7D4 800ABBD4 AD820028 */  sw         $v0, 0x28($t4)
/* AC7D8 800ABBD8 8FAF004C */  lw         $t7, 0x4c($sp)
/* AC7DC 800ABBDC 8DF80028 */  lw         $t8, 0x28($t7)
/* AC7E0 800ABBE0 1300FE3A */  beqz       $t8, .L800AB4CC
/* AC7E4 800ABBE4 00000000 */   nop
/* AC7E8 800ABBE8 8FB9004C */  lw         $t9, 0x4c($sp)
/* AC7EC 800ABBEC 8F29001C */  lw         $t1, 0x1c($t9)
/* AC7F0 800ABBF0 8F2B0028 */  lw         $t3, 0x28($t9)
/* AC7F4 800ABBF4 012B6821 */  addu       $t5, $t1, $t3
/* AC7F8 800ABBF8 AF2D001C */  sw         $t5, 0x1c($t9)
/* AC7FC 800ABBFC 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC800 800ABC00 10000003 */  b          .L800ABC10
/* AC804 800ABC04 8D020028 */   lw        $v0, 0x28($t0)
/* AC808 800ABC08 10000001 */  b          .L800ABC10
/* AC80C 800ABC0C 00000000 */   nop
.L800ABC10:
/* AC810 800ABC10 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC814 800ABC14 8FB00014 */  lw         $s0, 0x14($sp)
/* AC818 800ABC18 8FB10018 */  lw         $s1, 0x18($sp)
/* AC81C 800ABC1C 03E00008 */  jr         $ra
/* AC820 800ABC20 27BD0050 */   addiu     $sp, $sp, 0x50

glabel __postNextSeqEvent
/* AC824 800ABC24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AC828 800ABC28 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC82C 800ABC2C AFA40030 */  sw         $a0, 0x30($sp)
/* AC830 800ABC30 8FAE0030 */  lw         $t6, 0x30($sp)
/* AC834 800ABC34 8DCF0018 */  lw         $t7, 0x18($t6)
/* AC838 800ABC38 AFAF0018 */  sw         $t7, 0x18($sp)
/* AC83C 800ABC3C 8FB80030 */  lw         $t8, 0x30($sp)
/* AC840 800ABC40 24010001 */  addiu      $at, $zero, 1
/* AC844 800ABC44 8F19002C */  lw         $t9, 0x2c($t8)
/* AC848 800ABC48 17210004 */  bne        $t9, $at, .L800ABC5C
/* AC84C 800ABC4C 00000000 */   nop
/* AC850 800ABC50 8FA80018 */  lw         $t0, 0x18($sp)
/* AC854 800ABC54 15000003 */  bnez       $t0, .L800ABC64
/* AC858 800ABC58 00000000 */   nop
.L800ABC5C:
/* AC85C 800ABC5C 1000002F */  b          .L800ABD1C
/* AC860 800ABC60 00000000 */   nop
.L800ABC64:
/* AC864 800ABC64 8FA40018 */  lw         $a0, 0x18($sp)
/* AC868 800ABC68 0C02DDAE */  jal        __alSeqNextDelta
/* AC86C 800ABC6C 27A5001C */   addiu     $a1, $sp, 0x1c
/* AC870 800ABC70 14400003 */  bnez       $v0, .L800ABC80
/* AC874 800ABC74 00000000 */   nop
/* AC878 800ABC78 10000028 */  b          .L800ABD1C
/* AC87C 800ABC7C 00000000 */   nop
.L800ABC80:
/* AC880 800ABC80 8FA90030 */  lw         $t1, 0x30($sp)
/* AC884 800ABC84 8D2A0084 */  lw         $t2, 0x84($t1)
/* AC888 800ABC88 11400018 */  beqz       $t2, .L800ABCEC
/* AC88C 800ABC8C 00000000 */   nop
/* AC890 800ABC90 0C02DE88 */  jal        func_800B7A20
/* AC894 800ABC94 8FA40018 */   lw        $a0, 0x18($sp)
/* AC898 800ABC98 8FAD0030 */  lw         $t5, 0x30($sp)
/* AC89C 800ABC9C 8FAB001C */  lw         $t3, 0x1c($sp)
/* AC8A0 800ABCA0 8DAE0080 */  lw         $t6, 0x80($t5)
/* AC8A4 800ABCA4 004B6021 */  addu       $t4, $v0, $t3
/* AC8A8 800ABCA8 8DCF0008 */  lw         $t7, 8($t6)
/* AC8AC 800ABCAC 018F082A */  slt        $at, $t4, $t7
/* AC8B0 800ABCB0 1420000E */  bnez       $at, .L800ABCEC
/* AC8B4 800ABCB4 00000000 */   nop
/* AC8B8 800ABCB8 8FB80030 */  lw         $t8, 0x30($sp)
/* AC8BC 800ABCBC 8FA40018 */  lw         $a0, 0x18($sp)
/* AC8C0 800ABCC0 0C02DE8E */  jal        alSeqSetLoc
/* AC8C4 800ABCC4 8F05007C */   lw        $a1, 0x7c($t8)
/* AC8C8 800ABCC8 8FB90030 */  lw         $t9, 0x30($sp)
/* AC8CC 800ABCCC 2401FFFF */  addiu      $at, $zero, -1
/* AC8D0 800ABCD0 8F280084 */  lw         $t0, 0x84($t9)
/* AC8D4 800ABCD4 11010005 */  beq        $t0, $at, .L800ABCEC
/* AC8D8 800ABCD8 00000000 */   nop
/* AC8DC 800ABCDC 8FA90030 */  lw         $t1, 0x30($sp)
/* AC8E0 800ABCE0 8D2A0084 */  lw         $t2, 0x84($t1)
/* AC8E4 800ABCE4 254BFFFF */  addiu      $t3, $t2, -1
/* AC8E8 800ABCE8 AD2B0084 */  sw         $t3, 0x84($t1)
.L800ABCEC:
/* AC8EC 800ABCEC A7A00020 */  sh         $zero, 0x20($sp)
/* AC8F0 800ABCF0 8FAD0030 */  lw         $t5, 0x30($sp)
/* AC8F4 800ABCF4 8FAC001C */  lw         $t4, 0x1c($sp)
/* AC8F8 800ABCF8 27A50020 */  addiu      $a1, $sp, 0x20
/* AC8FC 800ABCFC 8DAE0024 */  lw         $t6, 0x24($t5)
/* AC900 800ABD00 25A40048 */  addiu      $a0, $t5, 0x48
/* AC904 800ABD04 01CC0019 */  multu      $t6, $t4
/* AC908 800ABD08 00003012 */  mflo       $a2
/* AC90C 800ABD0C 0C02B620 */  jal        alEvtqPostEvent
/* AC910 800ABD10 00000000 */   nop
/* AC914 800ABD14 10000001 */  b          .L800ABD1C
/* AC918 800ABD18 00000000 */   nop
.L800ABD1C:
/* AC91C 800ABD1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AC920 800ABD20 27BD0030 */  addiu      $sp, $sp, 0x30
/* AC924 800ABD24 03E00008 */  jr         $ra
/* AC928 800ABD28 00000000 */   nop

glabel __handleNextSeqEvent
/* AC92C 800ABD2C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AC930 800ABD30 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC934 800ABD34 AFA40038 */  sw         $a0, 0x38($sp)
/* AC938 800ABD38 AFB00018 */  sw         $s0, 0x18($sp)
/* AC93C 800ABD3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* AC940 800ABD40 8DCF0018 */  lw         $t7, 0x18($t6)
/* AC944 800ABD44 15E00003 */  bnez       $t7, .L800ABD54
/* AC948 800ABD48 00000000 */   nop
/* AC94C 800ABD4C 10000034 */  b          .L800ABE20
/* AC950 800ABD50 00000000 */   nop
.L800ABD54:
/* AC954 800ABD54 8FB80038 */  lw         $t8, 0x38($sp)
/* AC958 800ABD58 27A50028 */  addiu      $a1, $sp, 0x28
/* AC95C 800ABD5C 0C02DCEB */  jal        alSeqNextEvent
/* AC960 800ABD60 8F040018 */   lw        $a0, 0x18($t8)
/* AC964 800ABD64 87B00028 */  lh         $s0, 0x28($sp)
/* AC968 800ABD68 24010001 */  addiu      $at, $zero, 1
/* AC96C 800ABD6C 12010009 */  beq        $s0, $at, .L800ABD94
/* AC970 800ABD70 00000000 */   nop
/* AC974 800ABD74 24010003 */  addiu      $at, $zero, 3
/* AC978 800ABD78 1201000D */  beq        $s0, $at, .L800ABDB0
/* AC97C 800ABD7C 00000000 */   nop
/* AC980 800ABD80 24010004 */  addiu      $at, $zero, 4
/* AC984 800ABD84 12010011 */  beq        $s0, $at, .L800ABDCC
/* AC988 800ABD88 00000000 */   nop
/* AC98C 800ABD8C 1000001C */  b          .L800ABE00
/* AC990 800ABD90 00000000 */   nop
.L800ABD94:
/* AC994 800ABD94 8FA40038 */  lw         $a0, 0x38($sp)
/* AC998 800ABD98 0C02AF8D */  jal        __handleMIDIMsg
/* AC99C 800ABD9C 27A50028 */   addiu     $a1, $sp, 0x28
/* AC9A0 800ABDA0 0C02AF09 */  jal        __postNextSeqEvent
/* AC9A4 800ABDA4 8FA40038 */   lw        $a0, 0x38($sp)
/* AC9A8 800ABDA8 1000001B */  b          .L800ABE18
/* AC9AC 800ABDAC 00000000 */   nop
.L800ABDB0:
/* AC9B0 800ABDB0 8FA40038 */  lw         $a0, 0x38($sp)
/* AC9B4 800ABDB4 0C02B2B3 */  jal        __handleMetaMsg
/* AC9B8 800ABDB8 27A50028 */   addiu     $a1, $sp, 0x28
/* AC9BC 800ABDBC 0C02AF09 */  jal        __postNextSeqEvent
/* AC9C0 800ABDC0 8FA40038 */   lw        $a0, 0x38($sp)
/* AC9C4 800ABDC4 10000014 */  b          .L800ABE18
/* AC9C8 800ABDC8 00000000 */   nop
.L800ABDCC:
/* AC9CC 800ABDCC 8FA80038 */  lw         $t0, 0x38($sp)
/* AC9D0 800ABDD0 24190002 */  addiu      $t9, $zero, 2
/* AC9D4 800ABDD4 AD19002C */  sw         $t9, 0x2c($t0)
/* AC9D8 800ABDD8 24090010 */  addiu      $t1, $zero, 0x10
/* AC9DC 800ABDDC A7A90028 */  sh         $t1, 0x28($sp)
/* AC9E0 800ABDE0 8FA40038 */  lw         $a0, 0x38($sp)
/* AC9E4 800ABDE4 3C067FFF */  lui        $a2, 0x7fff
/* AC9E8 800ABDE8 34C6FFFF */  ori        $a2, $a2, 0xffff
/* AC9EC 800ABDEC 27A50028 */  addiu      $a1, $sp, 0x28
/* AC9F0 800ABDF0 0C02B620 */  jal        alEvtqPostEvent
/* AC9F4 800ABDF4 24840048 */   addiu     $a0, $a0, 0x48
/* AC9F8 800ABDF8 10000007 */  b          .L800ABE18
/* AC9FC 800ABDFC 00000000 */   nop
.L800ABE00:
/* ACA00 800ABE00 3C04800F */  lui        $a0, %hi(D_800EE070)
/* ACA04 800ABE04 3C05800F */  lui        $a1, %hi(D_800EE078)
/* ACA08 800ABE08 24A5E078 */  addiu      $a1, $a1, %lo(D_800EE078)
/* ACA0C 800ABE0C 2484E070 */  addiu      $a0, $a0, %lo(D_800EE070)
/* ACA10 800ABE10 0C026E74 */  jal        __assert
/* ACA14 800ABE14 2406019C */   addiu     $a2, $zero, 0x19c
.L800ABE18:
/* ACA18 800ABE18 10000001 */  b          .L800ABE20
/* ACA1C 800ABE1C 00000000 */   nop
.L800ABE20:
/* ACA20 800ABE20 8FBF001C */  lw         $ra, 0x1c($sp)
/* ACA24 800ABE24 8FB00018 */  lw         $s0, 0x18($sp)
/* ACA28 800ABE28 27BD0038 */  addiu      $sp, $sp, 0x38
/* ACA2C 800ABE2C 03E00008 */  jr         $ra
/* ACA30 800ABE30 00000000 */   nop

glabel __handleMIDIMsg
/* ACA34 800ABE34 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* ACA38 800ABE38 AFBF002C */  sw         $ra, 0x2c($sp)
/* ACA3C 800ABE3C AFA400A8 */  sw         $a0, 0xa8($sp)
/* ACA40 800ABE40 AFA500AC */  sw         $a1, 0xac($sp)
/* ACA44 800ABE44 AFB10028 */  sw         $s1, 0x28($sp)
/* ACA48 800ABE48 AFB00024 */  sw         $s0, 0x24($sp)
/* ACA4C 800ABE4C 8FAE00AC */  lw         $t6, 0xac($sp)
/* ACA50 800ABE50 25CF0004 */  addiu      $t7, $t6, 4
/* ACA54 800ABE54 AFAF0090 */  sw         $t7, 0x90($sp)
/* ACA58 800ABE58 8FB800AC */  lw         $t8, 0xac($sp)
/* ACA5C 800ABE5C 24010001 */  addiu      $at, $zero, 1
/* ACA60 800ABE60 87190000 */  lh         $t9, ($t8)
/* ACA64 800ABE64 13210004 */  beq        $t9, $at, .L800ABE78
/* ACA68 800ABE68 00000000 */   nop
/* ACA6C 800ABE6C 24010002 */  addiu      $at, $zero, 2
/* ACA70 800ABE70 17210003 */  bne        $t9, $at, .L800ABE80
/* ACA74 800ABE74 00000000 */   nop
.L800ABE78:
/* ACA78 800ABE78 10000007 */  b          .L800ABE98
/* ACA7C 800ABE7C 00000000 */   nop
.L800ABE80:
/* ACA80 800ABE80 3C04800F */  lui        $a0, %hi(D_800EE090)
/* ACA84 800ABE84 3C05800F */  lui        $a1, %hi(D_800EE0D4)
/* ACA88 800ABE88 24A5E0D4 */  addiu      $a1, $a1, %lo(D_800EE0D4)
/* ACA8C 800ABE8C 2484E090 */  addiu      $a0, $a0, %lo(D_800EE090)
/* ACA90 800ABE90 0C026E74 */  jal        __assert
/* ACA94 800ABE94 240601B4 */   addiu     $a2, $zero, 0x1b4
.L800ABE98:
/* ACA98 800ABE98 8FA80090 */  lw         $t0, 0x90($sp)
/* ACA9C 800ABE9C 91090004 */  lbu        $t1, 4($t0)
/* ACAA0 800ABEA0 312A00F0 */  andi       $t2, $t1, 0xf0
/* ACAA4 800ABEA4 AFAA009C */  sw         $t2, 0x9c($sp)
/* ACAA8 800ABEA8 8FAB0090 */  lw         $t3, 0x90($sp)
/* ACAAC 800ABEAC 916C0004 */  lbu        $t4, 4($t3)
/* ACAB0 800ABEB0 318D000F */  andi       $t5, $t4, 0xf
/* ACAB4 800ABEB4 A3AD009B */  sb         $t5, 0x9b($sp)
/* ACAB8 800ABEB8 8FAE0090 */  lw         $t6, 0x90($sp)
/* ACABC 800ABEBC 91CF0005 */  lbu        $t7, 5($t6)
/* ACAC0 800ABEC0 A3AF009A */  sb         $t7, 0x9a($sp)
/* ACAC4 800ABEC4 A3AF0098 */  sb         $t7, 0x98($sp)
/* ACAC8 800ABEC8 8FB80090 */  lw         $t8, 0x90($sp)
/* ACACC 800ABECC 93190006 */  lbu        $t9, 6($t8)
/* ACAD0 800ABED0 A3B90099 */  sb         $t9, 0x99($sp)
/* ACAD4 800ABED4 A3B90097 */  sb         $t9, 0x97($sp)
/* ACAD8 800ABED8 8FA8009C */  lw         $t0, 0x9c($sp)
/* ACADC 800ABEDC 2509FF80 */  addiu      $t1, $t0, -0x80
/* ACAE0 800ABEE0 2D210061 */  sltiu      $at, $t1, 0x61
/* ACAE4 800ABEE4 102002EC */  beqz       $at, .L800ACA98
/* ACAE8 800ABEE8 00000000 */   nop
/* ACAEC 800ABEEC 00094880 */  sll        $t1, $t1, 2
/* ACAF0 800ABEF0 3C01800F */  lui        $at, %hi(D_800EE1A0)
/* ACAF4 800ABEF4 00290821 */  addu       $at, $at, $t1
/* ACAF8 800ABEF8 8C29E1A0 */  lw         $t1, %lo(D_800EE1A0)($at)
/* ACAFC 800ABEFC 01200008 */  jr         $t1
/* ACB00 800ABF00 00000000 */   nop
/* ACB04 800ABF04 93AA0099 */  lbu        $t2, 0x99($sp)
/* ACB08 800ABF08 11400143 */  beqz       $t2, .L800AC418
/* ACB0C 800ABF0C 00000000 */   nop
/* ACB10 800ABF10 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* ACB14 800ABF14 24010001 */  addiu      $at, $zero, 1
/* ACB18 800ABF18 8D6C002C */  lw         $t4, 0x2c($t3)
/* ACB1C 800ABF1C 11810003 */  beq        $t4, $at, .L800ABF2C
/* ACB20 800ABF20 00000000 */   nop
/* ACB24 800ABF24 100002E2 */  b          .L800ACAB0
/* ACB28 800ABF28 00000000 */   nop
.L800ABF2C:
/* ACB2C 800ABF2C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACB30 800ABF30 93A5009A */  lbu        $a1, 0x9a($sp)
/* ACB34 800ABF34 93A60099 */  lbu        $a2, 0x99($sp)
/* ACB38 800ABF38 0C02B35F */  jal        __lookupSoundQuick
/* ACB3C 800ABF3C 93A7009B */   lbu       $a3, 0x9b($sp)
/* ACB40 800ABF40 AFA20060 */  sw         $v0, 0x60($sp)
/* ACB44 800ABF44 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACB48 800ABF48 15A0000B */  bnez       $t5, .L800ABF78
/* ACB4C 800ABF4C 00000000 */   nop
/* ACB50 800ABF50 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* ACB54 800ABF54 91CF0035 */  lbu        $t7, 0x35($t6)
/* ACB58 800ABF58 31F80001 */  andi       $t8, $t7, 1
/* ACB5C 800ABF5C 13000004 */  beqz       $t8, .L800ABF70
/* ACB60 800ABF60 00000000 */   nop
/* ACB64 800ABF64 24040064 */  addiu      $a0, $zero, 0x64
/* ACB68 800ABF68 0C0297B4 */  jal        __osError
/* ACB6C 800ABF6C 00002825 */   or        $a1, $zero, $zero
.L800ABF70:
/* ACB70 800ABF70 100002D1 */  b          .L800ACAB8
/* ACB74 800ABF74 00000000 */   nop
.L800ABF78:
/* ACB78 800ABF78 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACB7C 800ABF7C 93A9009B */  lbu        $t1, 0x9b($sp)
/* ACB80 800ABF80 8F280060 */  lw         $t0, 0x60($t9)
/* ACB84 800ABF84 00095100 */  sll        $t2, $t1, 4
/* ACB88 800ABF88 010A5821 */  addu       $t3, $t0, $t2
/* ACB8C 800ABF8C 916C0008 */  lbu        $t4, 8($t3)
/* ACB90 800ABF90 A7AC0064 */  sh         $t4, 0x64($sp)
/* ACB94 800ABF94 A7A00066 */  sh         $zero, 0x66($sp)
/* ACB98 800ABF98 A3A00068 */  sb         $zero, 0x68($sp)
/* ACB9C 800ABF9C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACBA0 800ABFA0 93A5009A */  lbu        $a1, 0x9a($sp)
/* ACBA4 800ABFA4 93A60099 */  lbu        $a2, 0x99($sp)
/* ACBA8 800ABFA8 0C02B2DB */  jal        __mapVoice
/* ACBAC 800ABFAC 93A7009B */   lbu       $a3, 0x9b($sp)
/* ACBB0 800ABFB0 AFA20074 */  sw         $v0, 0x74($sp)
/* ACBB4 800ABFB4 8FAD0074 */  lw         $t5, 0x74($sp)
/* ACBB8 800ABFB8 15A0000B */  bnez       $t5, .L800ABFE8
/* ACBBC 800ABFBC 00000000 */   nop
/* ACBC0 800ABFC0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* ACBC4 800ABFC4 91CF0035 */  lbu        $t7, 0x35($t6)
/* ACBC8 800ABFC8 31F80004 */  andi       $t8, $t7, 4
/* ACBCC 800ABFCC 13000004 */  beqz       $t8, .L800ABFE0
/* ACBD0 800ABFD0 00000000 */   nop
/* ACBD4 800ABFD4 24040065 */  addiu      $a0, $zero, 0x65
/* ACBD8 800ABFD8 0C0297B4 */  jal        __osError
/* ACBDC 800ABFDC 00002825 */   or        $a1, $zero, $zero
.L800ABFE0:
/* ACBE0 800ABFE0 100002B5 */  b          .L800ACAB8
/* ACBE4 800ABFE4 00000000 */   nop
.L800ABFE8:
/* ACBE8 800ABFE8 8FB90074 */  lw         $t9, 0x74($sp)
/* ACBEC 800ABFEC 27290004 */  addiu      $t1, $t9, 4
/* ACBF0 800ABFF0 AFA900A4 */  sw         $t1, 0xa4($sp)
/* ACBF4 800ABFF4 8FA800A8 */  lw         $t0, 0xa8($sp)
/* ACBF8 800ABFF8 8FA500A4 */  lw         $a1, 0xa4($sp)
/* ACBFC 800ABFFC 27A60064 */  addiu      $a2, $sp, 0x64
/* ACC00 800AC000 0C02B7DC */  jal        alSynAllocVoice
/* ACC04 800AC004 8D040014 */   lw        $a0, 0x14($t0)
/* ACC08 800AC008 8FAA0060 */  lw         $t2, 0x60($sp)
/* ACC0C 800AC00C 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACC10 800AC010 AD6A0020 */  sw         $t2, 0x20($t3)
/* ACC14 800AC014 8FAC0074 */  lw         $t4, 0x74($sp)
/* ACC18 800AC018 A1800034 */  sb         $zero, 0x34($t4)
/* ACC1C 800AC01C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* ACC20 800AC020 93AF009B */  lbu        $t7, 0x9b($sp)
/* ACC24 800AC024 8DAE0060 */  lw         $t6, 0x60($t5)
/* ACC28 800AC028 000FC100 */  sll        $t8, $t7, 4
/* ACC2C 800AC02C 01D8C821 */  addu       $t9, $t6, $t8
/* ACC30 800AC030 9329000B */  lbu        $t1, 0xb($t9)
/* ACC34 800AC034 29210040 */  slti       $at, $t1, 0x40
/* ACC38 800AC038 14200005 */  bnez       $at, .L800AC050
/* ACC3C 800AC03C 00000000 */   nop
/* ACC40 800AC040 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACC44 800AC044 24080002 */  addiu      $t0, $zero, 2
/* ACC48 800AC048 10000003 */  b          .L800AC058
/* ACC4C 800AC04C A1480035 */   sb        $t0, 0x35($t2)
.L800AC050:
/* ACC50 800AC050 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACC54 800AC054 A1600035 */  sb         $zero, 0x35($t3)
.L800AC058:
/* ACC58 800AC058 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACC5C 800AC05C 93AC009A */  lbu        $t4, 0x9a($sp)
/* ACC60 800AC060 8DAF0004 */  lw         $t7, 4($t5)
/* ACC64 800AC064 91EE0004 */  lbu        $t6, 4($t7)
/* ACC68 800AC068 81E90005 */  lb         $t1, 5($t7)
/* ACC6C 800AC06C 018EC023 */  subu       $t8, $t4, $t6
/* ACC70 800AC070 0018C880 */  sll        $t9, $t8, 2
/* ACC74 800AC074 0338C823 */  subu       $t9, $t9, $t8
/* ACC78 800AC078 0019C8C0 */  sll        $t9, $t9, 3
/* ACC7C 800AC07C 0338C821 */  addu       $t9, $t9, $t8
/* ACC80 800AC080 0019C880 */  sll        $t9, $t9, 2
/* ACC84 800AC084 03294021 */  addu       $t0, $t9, $t1
/* ACC88 800AC088 A7A8005E */  sh         $t0, 0x5e($sp)
/* ACC8C 800AC08C 0C02B8B4 */  jal        alCents2Ratio
/* ACC90 800AC090 87A4005E */   lh        $a0, 0x5e($sp)
/* ACC94 800AC094 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACC98 800AC098 E5400028 */  swc1       $f0, 0x28($t2)
/* ACC9C 800AC09C 8FAB0060 */  lw         $t3, 0x60($sp)
/* ACCA0 800AC0A0 8FAE0074 */  lw         $t6, 0x74($sp)
/* ACCA4 800AC0A4 8D6D0000 */  lw         $t5, ($t3)
/* ACCA8 800AC0A8 91AC000C */  lbu        $t4, 0xc($t5)
/* ACCAC 800AC0AC A1CC0030 */  sb         $t4, 0x30($t6)
/* ACCB0 800AC0B0 8FB90060 */  lw         $t9, 0x60($sp)
/* ACCB4 800AC0B4 8FB800A8 */  lw         $t8, 0xa8($sp)
/* ACCB8 800AC0B8 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACCBC 800AC0BC 8F290000 */  lw         $t1, ($t9)
/* ACCC0 800AC0C0 8F0F001C */  lw         $t7, 0x1c($t8)
/* ACCC4 800AC0C4 8D280000 */  lw         $t0, ($t1)
/* ACCC8 800AC0C8 01E85021 */  addu       $t2, $t7, $t0
/* ACCCC 800AC0CC AD6A0024 */  sw         $t2, 0x24($t3)
/* ACCD0 800AC0D0 8FAD0074 */  lw         $t5, 0x74($sp)
/* ACCD4 800AC0D4 A1A00037 */  sb         $zero, 0x37($t5)
/* ACCD8 800AC0D8 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* ACCDC 800AC0DC 93B8009B */  lbu        $t8, 0x9b($sp)
/* ACCE0 800AC0E0 8D8E0060 */  lw         $t6, 0x60($t4)
/* ACCE4 800AC0E4 0018C900 */  sll        $t9, $t8, 4
/* ACCE8 800AC0E8 01D94821 */  addu       $t1, $t6, $t9
/* ACCEC 800AC0EC 8D2F0000 */  lw         $t7, ($t1)
/* ACCF0 800AC0F0 AFAF0048 */  sw         $t7, 0x48($sp)
/* ACCF4 800AC0F4 3C0142FE */  lui        $at, 0x42fe
/* ACCF8 800AC0F8 44812000 */  mtc1       $at, $f4
/* ACCFC 800AC0FC 00000000 */  nop
/* ACD00 800AC100 E7A40054 */  swc1       $f4, 0x54($sp)
/* ACD04 800AC104 8FA80048 */  lw         $t0, 0x48($sp)
/* ACD08 800AC108 910A0004 */  lbu        $t2, 4($t0)
/* ACD0C 800AC10C 11400025 */  beqz       $t2, .L800AC1A4
/* ACD10 800AC110 00000000 */   nop
/* ACD14 800AC114 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* ACD18 800AC118 8D6D0070 */  lw         $t5, 0x70($t3)
/* ACD1C 800AC11C 11A00021 */  beqz       $t5, .L800AC1A4
/* ACD20 800AC120 00000000 */   nop
/* ACD24 800AC124 8FAC0048 */  lw         $t4, 0x48($sp)
/* ACD28 800AC128 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACD2C 800AC12C 27A4004C */  addiu      $a0, $sp, 0x4c
/* ACD30 800AC130 91980006 */  lbu        $t8, 6($t4)
/* ACD34 800AC134 91860004 */  lbu        $a2, 4($t4)
/* ACD38 800AC138 91870005 */  lbu        $a3, 5($t4)
/* ACD3C 800AC13C AFB80010 */  sw         $t8, 0x10($sp)
/* ACD40 800AC140 918E0007 */  lbu        $t6, 7($t4)
/* ACD44 800AC144 27A50054 */  addiu      $a1, $sp, 0x54
/* ACD48 800AC148 AFAE0014 */  sw         $t6, 0x14($sp)
/* ACD4C 800AC14C 8F390070 */  lw         $t9, 0x70($t9)
/* ACD50 800AC150 0320F809 */  jalr       $t9
/* ACD54 800AC154 00000000 */   nop
/* ACD58 800AC158 AFA20078 */  sw         $v0, 0x78($sp)
/* ACD5C 800AC15C 8FA90078 */  lw         $t1, 0x78($sp)
/* ACD60 800AC160 11200010 */  beqz       $t1, .L800AC1A4
/* ACD64 800AC164 00000000 */   nop
/* ACD68 800AC168 240F0016 */  addiu      $t7, $zero, 0x16
/* ACD6C 800AC16C A7AF007C */  sh         $t7, 0x7c($sp)
/* ACD70 800AC170 8FA80074 */  lw         $t0, 0x74($sp)
/* ACD74 800AC174 AFA80080 */  sw         $t0, 0x80($sp)
/* ACD78 800AC178 8FAA004C */  lw         $t2, 0x4c($sp)
/* ACD7C 800AC17C AFAA0084 */  sw         $t2, 0x84($sp)
/* ACD80 800AC180 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACD84 800AC184 27A5007C */  addiu      $a1, $sp, 0x7c
/* ACD88 800AC188 8FA60078 */  lw         $a2, 0x78($sp)
/* ACD8C 800AC18C 0C02B620 */  jal        alEvtqPostEvent
/* ACD90 800AC190 24840048 */   addiu     $a0, $a0, 0x48
/* ACD94 800AC194 8FAB0074 */  lw         $t3, 0x74($sp)
/* ACD98 800AC198 916D0037 */  lbu        $t5, 0x37($t3)
/* ACD9C 800AC19C 35B80001 */  ori        $t8, $t5, 1
/* ACDA0 800AC1A0 A1780037 */  sb         $t8, 0x37($t3)
.L800AC1A4:
/* ACDA4 800AC1A4 444CF800 */  cfc1       $t4, $31
/* ACDA8 800AC1A8 240E0001 */  addiu      $t6, $zero, 1
/* ACDAC 800AC1AC 44CEF800 */  ctc1       $t6, $31
/* ACDB0 800AC1B0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* ACDB4 800AC1B4 46003224 */  cvt.w.s    $f8, $f6
/* ACDB8 800AC1B8 444EF800 */  cfc1       $t6, $31
/* ACDBC 800AC1BC 00000000 */  nop
/* ACDC0 800AC1C0 31C10004 */  andi       $at, $t6, 4
/* ACDC4 800AC1C4 31CE0078 */  andi       $t6, $t6, 0x78
/* ACDC8 800AC1C8 11C00014 */  beqz       $t6, .L800AC21C
/* ACDCC 800AC1CC 00000000 */   nop
/* ACDD0 800AC1D0 3C014F00 */  lui        $at, 0x4f00
/* ACDD4 800AC1D4 44814000 */  mtc1       $at, $f8
/* ACDD8 800AC1D8 240E0001 */  addiu      $t6, $zero, 1
/* ACDDC 800AC1DC 46083201 */  sub.s      $f8, $f6, $f8
/* ACDE0 800AC1E0 44CEF800 */  ctc1       $t6, $31
/* ACDE4 800AC1E4 00000000 */  nop
/* ACDE8 800AC1E8 46004224 */  cvt.w.s    $f8, $f8
/* ACDEC 800AC1EC 444EF800 */  cfc1       $t6, $31
/* ACDF0 800AC1F0 00000000 */  nop
/* ACDF4 800AC1F4 31C10004 */  andi       $at, $t6, 4
/* ACDF8 800AC1F8 31CE0078 */  andi       $t6, $t6, 0x78
/* ACDFC 800AC1FC 15C00005 */  bnez       $t6, .L800AC214
/* ACE00 800AC200 00000000 */   nop
/* ACE04 800AC204 440E4000 */  mfc1       $t6, $f8
/* ACE08 800AC208 3C018000 */  lui        $at, 0x8000
/* ACE0C 800AC20C 10000007 */  b          .L800AC22C
/* ACE10 800AC210 01C17025 */   or        $t6, $t6, $at
.L800AC214:
/* ACE14 800AC214 10000005 */  b          .L800AC22C
/* ACE18 800AC218 240EFFFF */   addiu     $t6, $zero, -1
.L800AC21C:
/* ACE1C 800AC21C 440E4000 */  mfc1       $t6, $f8
/* ACE20 800AC220 00000000 */  nop
/* ACE24 800AC224 05C0FFFB */  bltz       $t6, .L800AC214
/* ACE28 800AC228 00000000 */   nop
.L800AC22C:
/* ACE2C 800AC22C 8FB90074 */  lw         $t9, 0x74($sp)
/* ACE30 800AC230 44CCF800 */  ctc1       $t4, $31
/* ACE34 800AC234 A32E0036 */  sb         $t6, 0x36($t9)
/* ACE38 800AC238 00000000 */  nop
/* ACE3C 800AC23C 3C013F80 */  lui        $at, 0x3f80
/* ACE40 800AC240 44815000 */  mtc1       $at, $f10
/* ACE44 800AC244 00000000 */  nop
/* ACE48 800AC248 E7AA0054 */  swc1       $f10, 0x54($sp)
/* ACE4C 800AC24C 8FA90048 */  lw         $t1, 0x48($sp)
/* ACE50 800AC250 912F0008 */  lbu        $t7, 8($t1)
/* ACE54 800AC254 11E00027 */  beqz       $t7, .L800AC2F4
/* ACE58 800AC258 00000000 */   nop
/* ACE5C 800AC25C 8FA800A8 */  lw         $t0, 0xa8($sp)
/* ACE60 800AC260 8D0A0070 */  lw         $t2, 0x70($t0)
/* ACE64 800AC264 11400023 */  beqz       $t2, .L800AC2F4
/* ACE68 800AC268 00000000 */   nop
/* ACE6C 800AC26C 8FAD0048 */  lw         $t5, 0x48($sp)
/* ACE70 800AC270 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* ACE74 800AC274 27A4004C */  addiu      $a0, $sp, 0x4c
/* ACE78 800AC278 91B8000A */  lbu        $t8, 0xa($t5)
/* ACE7C 800AC27C 91A60008 */  lbu        $a2, 8($t5)
/* ACE80 800AC280 91A70009 */  lbu        $a3, 9($t5)
/* ACE84 800AC284 AFB80010 */  sw         $t8, 0x10($sp)
/* ACE88 800AC288 91AB000B */  lbu        $t3, 0xb($t5)
/* ACE8C 800AC28C 27A50054 */  addiu      $a1, $sp, 0x54
/* ACE90 800AC290 AFAB0014 */  sw         $t3, 0x14($sp)
/* ACE94 800AC294 8D990070 */  lw         $t9, 0x70($t4)
/* ACE98 800AC298 0320F809 */  jalr       $t9
/* ACE9C 800AC29C 00000000 */   nop
/* ACEA0 800AC2A0 AFA20078 */  sw         $v0, 0x78($sp)
/* ACEA4 800AC2A4 8FAE0078 */  lw         $t6, 0x78($sp)
/* ACEA8 800AC2A8 11C00012 */  beqz       $t6, .L800AC2F4
/* ACEAC 800AC2AC 00000000 */   nop
/* ACEB0 800AC2B0 24090017 */  addiu      $t1, $zero, 0x17
/* ACEB4 800AC2B4 A7A9007C */  sh         $t1, 0x7c($sp)
/* ACEB8 800AC2B8 8FAF0074 */  lw         $t7, 0x74($sp)
/* ACEBC 800AC2BC AFAF0080 */  sw         $t7, 0x80($sp)
/* ACEC0 800AC2C0 8FA8004C */  lw         $t0, 0x4c($sp)
/* ACEC4 800AC2C4 AFA80084 */  sw         $t0, 0x84($sp)
/* ACEC8 800AC2C8 93AA009B */  lbu        $t2, 0x9b($sp)
/* ACECC 800AC2CC A3AA0088 */  sb         $t2, 0x88($sp)
/* ACED0 800AC2D0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* ACED4 800AC2D4 27A5007C */  addiu      $a1, $sp, 0x7c
/* ACED8 800AC2D8 8FA60078 */  lw         $a2, 0x78($sp)
/* ACEDC 800AC2DC 0C02B620 */  jal        alEvtqPostEvent
/* ACEE0 800AC2E0 24840048 */   addiu     $a0, $a0, 0x48
/* ACEE4 800AC2E4 8FB80074 */  lw         $t8, 0x74($sp)
/* ACEE8 800AC2E8 930D0037 */  lbu        $t5, 0x37($t8)
/* ACEEC 800AC2EC 35AB0002 */  ori        $t3, $t5, 2
/* ACEF0 800AC2F0 A30B0037 */  sb         $t3, 0x37($t8)
.L800AC2F4:
/* ACEF4 800AC2F4 C7B00054 */  lwc1       $f16, 0x54($sp)
/* ACEF8 800AC2F8 8FAC0074 */  lw         $t4, 0x74($sp)
/* ACEFC 800AC2FC E590002C */  swc1       $f16, 0x2c($t4)
/* ACF00 800AC300 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACF04 800AC304 93A9009B */  lbu        $t1, 0x9b($sp)
/* ACF08 800AC308 8FAA0074 */  lw         $t2, 0x74($sp)
/* ACF0C 800AC30C 8F2E0060 */  lw         $t6, 0x60($t9)
/* ACF10 800AC310 00097900 */  sll        $t7, $t1, 4
/* ACF14 800AC314 C5440028 */  lwc1       $f4, 0x28($t2)
/* ACF18 800AC318 01CF4021 */  addu       $t0, $t6, $t7
/* ACF1C 800AC31C C512000C */  lwc1       $f18, 0xc($t0)
/* ACF20 800AC320 C548002C */  lwc1       $f8, 0x2c($t2)
/* ACF24 800AC324 46049182 */  mul.s      $f6, $f18, $f4
/* ACF28 800AC328 00000000 */  nop
/* ACF2C 800AC32C 46083282 */  mul.s      $f10, $f6, $f8
/* ACF30 800AC330 E7AA0058 */  swc1       $f10, 0x58($sp)
/* ACF34 800AC334 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* ACF38 800AC338 93B8009B */  lbu        $t8, 0x9b($sp)
/* ACF3C 800AC33C 8DAB0060 */  lw         $t3, 0x60($t5)
/* ACF40 800AC340 00186100 */  sll        $t4, $t8, 4
/* ACF44 800AC344 016CC821 */  addu       $t9, $t3, $t4
/* ACF48 800AC348 9329000A */  lbu        $t1, 0xa($t9)
/* ACF4C 800AC34C A3A90053 */  sb         $t1, 0x53($sp)
/* ACF50 800AC350 8FA40074 */  lw         $a0, 0x74($sp)
/* ACF54 800AC354 0C02B40A */  jal        __vsPan
/* ACF58 800AC358 8FA500A8 */   lw        $a1, 0xa8($sp)
/* ACF5C 800AC35C A3A20073 */  sb         $v0, 0x73($sp)
/* ACF60 800AC360 8FA40074 */  lw         $a0, 0x74($sp)
/* ACF64 800AC364 0C02B3CE */  jal        __vsVol
/* ACF68 800AC368 8FA500A8 */   lw        $a1, 0xa8($sp)
/* ACF6C 800AC36C A7A2008E */  sh         $v0, 0x8e($sp)
/* ACF70 800AC370 8FAE0060 */  lw         $t6, 0x60($sp)
/* ACF74 800AC374 8DCF0000 */  lw         $t7, ($t6)
/* ACF78 800AC378 8DE80000 */  lw         $t0, ($t7)
/* ACF7C 800AC37C AFA80078 */  sw         $t0, 0x78($sp)
/* ACF80 800AC380 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* ACF84 800AC384 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACF88 800AC388 87B8008E */  lh         $t8, 0x8e($sp)
/* ACF8C 800AC38C 8D440014 */  lw         $a0, 0x14($t2)
/* ACF90 800AC390 8DA60008 */  lw         $a2, 8($t5)
/* ACF94 800AC394 93AB0073 */  lbu        $t3, 0x73($sp)
/* ACF98 800AC398 93AC0053 */  lbu        $t4, 0x53($sp)
/* ACF9C 800AC39C 8FB90078 */  lw         $t9, 0x78($sp)
/* ACFA0 800AC3A0 8FA500A4 */  lw         $a1, 0xa4($sp)
/* ACFA4 800AC3A4 8FA70058 */  lw         $a3, 0x58($sp)
/* ACFA8 800AC3A8 AFB80010 */  sw         $t8, 0x10($sp)
/* ACFAC 800AC3AC AFAB0014 */  sw         $t3, 0x14($sp)
/* ACFB0 800AC3B0 AFAC0018 */  sw         $t4, 0x18($sp)
/* ACFB4 800AC3B4 0C02B8DC */  jal        alSynStartVoiceParams
/* ACFB8 800AC3B8 AFB9001C */   sw        $t9, 0x1c($sp)
/* ACFBC 800AC3BC 24090006 */  addiu      $t1, $zero, 6
/* ACFC0 800AC3C0 A7A9007C */  sh         $t1, 0x7c($sp)
/* ACFC4 800AC3C4 8FAE00A4 */  lw         $t6, 0xa4($sp)
/* ACFC8 800AC3C8 AFAE0080 */  sw         $t6, 0x80($sp)
/* ACFCC 800AC3CC 8FAF0060 */  lw         $t7, 0x60($sp)
/* ACFD0 800AC3D0 8DE80000 */  lw         $t0, ($t7)
/* ACFD4 800AC3D4 910A000D */  lbu        $t2, 0xd($t0)
/* ACFD8 800AC3D8 A3AA0088 */  sb         $t2, 0x88($sp)
/* ACFDC 800AC3DC 8FAD0060 */  lw         $t5, 0x60($sp)
/* ACFE0 800AC3E0 8DB80000 */  lw         $t8, ($t5)
/* ACFE4 800AC3E4 8F0B0004 */  lw         $t3, 4($t8)
/* ACFE8 800AC3E8 AFAB0084 */  sw         $t3, 0x84($sp)
/* ACFEC 800AC3EC 8FAC0060 */  lw         $t4, 0x60($sp)
/* ACFF0 800AC3F0 8D990000 */  lw         $t9, ($t4)
/* ACFF4 800AC3F4 8F290000 */  lw         $t1, ($t9)
/* ACFF8 800AC3F8 AFA90078 */  sw         $t1, 0x78($sp)
/* ACFFC 800AC3FC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD000 800AC400 27A5007C */  addiu      $a1, $sp, 0x7c
/* AD004 800AC404 8FA60078 */  lw         $a2, 0x78($sp)
/* AD008 800AC408 0C02B620 */  jal        alEvtqPostEvent
/* AD00C 800AC40C 24840048 */   addiu     $a0, $a0, 0x48
/* AD010 800AC410 100001A7 */  b          .L800ACAB0
/* AD014 800AC414 00000000 */   nop
.L800AC418:
/* AD018 800AC418 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD01C 800AC41C 93A5009A */  lbu        $a1, 0x9a($sp)
/* AD020 800AC420 0C02B33D */  jal        __lookupVoice
/* AD024 800AC424 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD028 800AC428 AFA20074 */  sw         $v0, 0x74($sp)
/* AD02C 800AC42C 8FAE0074 */  lw         $t6, 0x74($sp)
/* AD030 800AC430 15C0000B */  bnez       $t6, .L800AC460
/* AD034 800AC434 00000000 */   nop
/* AD038 800AC438 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* AD03C 800AC43C 91E80035 */  lbu        $t0, 0x35($t7)
/* AD040 800AC440 310A0002 */  andi       $t2, $t0, 2
/* AD044 800AC444 11400004 */  beqz       $t2, .L800AC458
/* AD048 800AC448 00000000 */   nop
/* AD04C 800AC44C 24040067 */  addiu      $a0, $zero, 0x67
/* AD050 800AC450 0C0297B4 */  jal        __osError
/* AD054 800AC454 00002825 */   or        $a1, $zero, $zero
.L800AC458:
/* AD058 800AC458 10000197 */  b          .L800ACAB8
/* AD05C 800AC45C 00000000 */   nop
.L800AC460:
/* AD060 800AC460 8FAD0074 */  lw         $t5, 0x74($sp)
/* AD064 800AC464 24010002 */  addiu      $at, $zero, 2
/* AD068 800AC468 91B80035 */  lbu        $t8, 0x35($t5)
/* AD06C 800AC46C 17010005 */  bne        $t8, $at, .L800AC484
/* AD070 800AC470 00000000 */   nop
/* AD074 800AC474 8FAC0074 */  lw         $t4, 0x74($sp)
/* AD078 800AC478 240B0004 */  addiu      $t3, $zero, 4
/* AD07C 800AC47C 1000000B */  b          .L800AC4AC
/* AD080 800AC480 A18B0035 */   sb        $t3, 0x35($t4)
.L800AC484:
/* AD084 800AC484 8FA90074 */  lw         $t1, 0x74($sp)
/* AD088 800AC488 24190003 */  addiu      $t9, $zero, 3
/* AD08C 800AC48C A1390035 */  sb         $t9, 0x35($t1)
/* AD090 800AC490 8FAE0074 */  lw         $t6, 0x74($sp)
/* AD094 800AC494 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD098 800AC498 8DCF0020 */  lw         $t7, 0x20($t6)
/* AD09C 800AC49C 25C50004 */  addiu      $a1, $t6, 4
/* AD0A0 800AC4A0 8DE80000 */  lw         $t0, ($t7)
/* AD0A4 800AC4A4 0C02B429 */  jal        __seqpReleaseVoice
/* AD0A8 800AC4A8 8D060008 */   lw        $a2, 8($t0)
.L800AC4AC:
/* AD0AC 800AC4AC 10000180 */  b          .L800ACAB0
/* AD0B0 800AC4B0 00000000 */   nop
/* AD0B4 800AC4B4 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD0B8 800AC4B8 93A5009A */  lbu        $a1, 0x9a($sp)
/* AD0BC 800AC4BC 0C02B33D */  jal        __lookupVoice
/* AD0C0 800AC4C0 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD0C4 800AC4C4 AFA20074 */  sw         $v0, 0x74($sp)
/* AD0C8 800AC4C8 8FAA0074 */  lw         $t2, 0x74($sp)
/* AD0CC 800AC4CC 15400006 */  bnez       $t2, .L800AC4E8
/* AD0D0 800AC4D0 00000000 */   nop
/* AD0D4 800AC4D4 24040068 */  addiu      $a0, $zero, 0x68
/* AD0D8 800AC4D8 0C0297B4 */  jal        __osError
/* AD0DC 800AC4DC 00002825 */   or        $a1, $zero, $zero
/* AD0E0 800AC4E0 10000175 */  b          .L800ACAB8
/* AD0E4 800AC4E4 00000000 */   nop
.L800AC4E8:
/* AD0E8 800AC4E8 93AD0097 */  lbu        $t5, 0x97($sp)
/* AD0EC 800AC4EC 8FB80074 */  lw         $t8, 0x74($sp)
/* AD0F0 800AC4F0 A30D0033 */  sb         $t5, 0x33($t8)
/* AD0F4 800AC4F4 8FA40074 */  lw         $a0, 0x74($sp)
/* AD0F8 800AC4F8 0C02B3CE */  jal        __vsVol
/* AD0FC 800AC4FC 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD100 800AC500 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD104 800AC504 00028C00 */  sll        $s1, $v0, 0x10
/* AD108 800AC508 00115C03 */  sra        $t3, $s1, 0x10
/* AD10C 800AC50C 01608825 */  or         $s1, $t3, $zero
/* AD110 800AC510 8FA40074 */  lw         $a0, 0x74($sp)
/* AD114 800AC514 0C02B3F9 */  jal        __vsDelta
/* AD118 800AC518 8D85001C */   lw        $a1, 0x1c($t4)
/* AD11C 800AC51C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD120 800AC520 8FA50074 */  lw         $a1, 0x74($sp)
/* AD124 800AC524 00408025 */  or         $s0, $v0, $zero
/* AD128 800AC528 02003825 */  or         $a3, $s0, $zero
/* AD12C 800AC52C 02203025 */  or         $a2, $s1, $zero
/* AD130 800AC530 8F240014 */  lw         $a0, 0x14($t9)
/* AD134 800AC534 0C02B768 */  jal        alSynSetVol
/* AD138 800AC538 24A50004 */   addiu     $a1, $a1, 4
/* AD13C 800AC53C 1000015C */  b          .L800ACAB0
/* AD140 800AC540 00000000 */   nop
/* AD144 800AC544 8FA900A8 */  lw         $t1, 0xa8($sp)
/* AD148 800AC548 8D2E0064 */  lw         $t6, 0x64($t1)
/* AD14C 800AC54C 11C0001F */  beqz       $t6, .L800AC5CC
/* AD150 800AC550 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800AC554:
/* AD154 800AC554 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* AD158 800AC558 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD15C 800AC55C 91E80031 */  lbu        $t0, 0x31($t7)
/* AD160 800AC560 150A0016 */  bne        $t0, $t2, .L800AC5BC
/* AD164 800AC564 00000000 */   nop
/* AD168 800AC568 93AD0098 */  lbu        $t5, 0x98($sp)
/* AD16C 800AC56C 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD170 800AC570 A30D0033 */  sb         $t5, 0x33($t8)
/* AD174 800AC574 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD178 800AC578 0C02B3CE */  jal        __vsVol
/* AD17C 800AC57C 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD180 800AC580 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD184 800AC584 00028C00 */  sll        $s1, $v0, 0x10
/* AD188 800AC588 00115C03 */  sra        $t3, $s1, 0x10
/* AD18C 800AC58C 01608825 */  or         $s1, $t3, $zero
/* AD190 800AC590 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD194 800AC594 0C02B3F9 */  jal        __vsDelta
/* AD198 800AC598 8D85001C */   lw        $a1, 0x1c($t4)
/* AD19C 800AC59C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD1A0 800AC5A0 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD1A4 800AC5A4 00408025 */  or         $s0, $v0, $zero
/* AD1A8 800AC5A8 02003825 */  or         $a3, $s0, $zero
/* AD1AC 800AC5AC 02203025 */  or         $a2, $s1, $zero
/* AD1B0 800AC5B0 8F240014 */  lw         $a0, 0x14($t9)
/* AD1B4 800AC5B4 0C02B768 */  jal        alSynSetVol
/* AD1B8 800AC5B8 24A50004 */   addiu     $a1, $a1, 4
.L800AC5BC:
/* AD1BC 800AC5BC 8FA900A0 */  lw         $t1, 0xa0($sp)
/* AD1C0 800AC5C0 8D2E0000 */  lw         $t6, ($t1)
/* AD1C4 800AC5C4 15C0FFE3 */  bnez       $t6, .L800AC554
/* AD1C8 800AC5C8 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800AC5CC:
/* AD1CC 800AC5CC 10000138 */  b          .L800ACAB0
/* AD1D0 800AC5D0 00000000 */   nop
/* AD1D4 800AC5D4 93B00098 */  lbu        $s0, 0x98($sp)
/* AD1D8 800AC5D8 2A010041 */  slti       $at, $s0, 0x41
/* AD1DC 800AC5DC 14200009 */  bnez       $at, .L800AC604
/* AD1E0 800AC5E0 00000000 */   nop
/* AD1E4 800AC5E4 2401005B */  addiu      $at, $zero, 0x5b
/* AD1E8 800AC5E8 120100A9 */  beq        $s0, $at, .L800AC890
/* AD1EC 800AC5EC 00000000 */   nop
/* AD1F0 800AC5F0 2401005D */  addiu      $at, $zero, 0x5d
/* AD1F4 800AC5F4 120100C2 */  beq        $s0, $at, .L800AC900
/* AD1F8 800AC5F8 00000000 */   nop
/* AD1FC 800AC5FC 100000C0 */  b          .L800AC900
/* AD200 800AC600 00000000 */   nop
.L800AC604:
/* AD204 800AC604 2A01001C */  slti       $at, $s0, 0x1c
/* AD208 800AC608 14200006 */  bnez       $at, .L800AC624
/* AD20C 800AC60C 00000000 */   nop
/* AD210 800AC610 24010040 */  addiu      $at, $zero, 0x40
/* AD214 800AC614 12010060 */  beq        $s0, $at, .L800AC798
/* AD218 800AC618 00000000 */   nop
/* AD21C 800AC61C 100000B8 */  b          .L800AC900
/* AD220 800AC620 00000000 */   nop
.L800AC624:
/* AD224 800AC624 260FFFF9 */  addiu      $t7, $s0, -7
/* AD228 800AC628 2DE10015 */  sltiu      $at, $t7, 0x15
/* AD22C 800AC62C 102000B4 */  beqz       $at, .L800AC900
/* AD230 800AC630 00000000 */   nop
/* AD234 800AC634 000F7880 */  sll        $t7, $t7, 2
/* AD238 800AC638 3C01800F */  lui        $at, %hi(D_800EE324)
/* AD23C 800AC63C 002F0821 */  addu       $at, $at, $t7
/* AD240 800AC640 8C2FE324 */  lw         $t7, %lo(D_800EE324)($at)
/* AD244 800AC644 01E00008 */  jr         $t7
/* AD248 800AC648 00000000 */   nop
/* AD24C 800AC64C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD250 800AC650 93B8009B */  lbu        $t8, 0x9b($sp)
/* AD254 800AC654 93A80097 */  lbu        $t0, 0x97($sp)
/* AD258 800AC658 8D4D0060 */  lw         $t5, 0x60($t2)
/* AD25C 800AC65C 00185900 */  sll        $t3, $t8, 4
/* AD260 800AC660 01AB6021 */  addu       $t4, $t5, $t3
/* AD264 800AC664 A1880007 */  sb         $t0, 7($t4)
/* AD268 800AC668 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD26C 800AC66C 8F290064 */  lw         $t1, 0x64($t9)
/* AD270 800AC670 11200014 */  beqz       $t1, .L800AC6C4
/* AD274 800AC674 AFA900A0 */   sw        $t1, 0xa0($sp)
.L800AC678:
/* AD278 800AC678 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* AD27C 800AC67C 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD280 800AC680 91CF0031 */  lbu        $t7, 0x31($t6)
/* AD284 800AC684 15EA000B */  bne        $t7, $t2, .L800AC6B4
/* AD288 800AC688 00000000 */   nop
/* AD28C 800AC68C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD290 800AC690 0C02B40A */  jal        __vsPan
/* AD294 800AC694 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD298 800AC698 A3A20073 */  sb         $v0, 0x73($sp)
/* AD29C 800AC69C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD2A0 800AC6A0 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD2A4 800AC6A4 93A60073 */  lbu        $a2, 0x73($sp)
/* AD2A8 800AC6A8 8F040014 */  lw         $a0, 0x14($t8)
/* AD2AC 800AC6AC 0C02B930 */  jal        alSynSetPan
/* AD2B0 800AC6B0 24A50004 */   addiu     $a1, $a1, 4
.L800AC6B4:
/* AD2B4 800AC6B4 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD2B8 800AC6B8 8DAB0000 */  lw         $t3, ($t5)
/* AD2BC 800AC6BC 1560FFEE */  bnez       $t3, .L800AC678
/* AD2C0 800AC6C0 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L800AC6C4:
/* AD2C4 800AC6C4 10000090 */  b          .L800AC908
/* AD2C8 800AC6C8 00000000 */   nop
/* AD2CC 800AC6CC 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD2D0 800AC6D0 93A9009B */  lbu        $t1, 0x9b($sp)
/* AD2D4 800AC6D4 93A80097 */  lbu        $t0, 0x97($sp)
/* AD2D8 800AC6D8 8D990060 */  lw         $t9, 0x60($t4)
/* AD2DC 800AC6DC 00097100 */  sll        $t6, $t1, 4
/* AD2E0 800AC6E0 032E7821 */  addu       $t7, $t9, $t6
/* AD2E4 800AC6E4 A1E80009 */  sb         $t0, 9($t7)
/* AD2E8 800AC6E8 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD2EC 800AC6EC 8D580064 */  lw         $t8, 0x64($t2)
/* AD2F0 800AC6F0 1300001E */  beqz       $t8, .L800AC76C
/* AD2F4 800AC6F4 AFB800A0 */   sw        $t8, 0xa0($sp)
.L800AC6F8:
/* AD2F8 800AC6F8 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD2FC 800AC6FC 93AC009B */  lbu        $t4, 0x9b($sp)
/* AD300 800AC700 91AB0031 */  lbu        $t3, 0x31($t5)
/* AD304 800AC704 156C0015 */  bne        $t3, $t4, .L800AC75C
/* AD308 800AC708 00000000 */   nop
/* AD30C 800AC70C 91A90034 */  lbu        $t1, 0x34($t5)
/* AD310 800AC710 24010003 */  addiu      $at, $zero, 3
/* AD314 800AC714 11210011 */  beq        $t1, $at, .L800AC75C
/* AD318 800AC718 00000000 */   nop
/* AD31C 800AC71C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD320 800AC720 0C02B3CE */  jal        __vsVol
/* AD324 800AC724 8FA500A8 */   lw        $a1, 0xa8($sp)
/* AD328 800AC728 A7A2008E */  sh         $v0, 0x8e($sp)
/* AD32C 800AC72C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AD330 800AC730 8FA400A0 */  lw         $a0, 0xa0($sp)
/* AD334 800AC734 0C02B3F9 */  jal        __vsDelta
/* AD338 800AC738 8F25001C */   lw        $a1, 0x1c($t9)
/* AD33C 800AC73C 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD340 800AC740 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD344 800AC744 00408025 */  or         $s0, $v0, $zero
/* AD348 800AC748 02003825 */  or         $a3, $s0, $zero
/* AD34C 800AC74C 87A6008E */  lh         $a2, 0x8e($sp)
/* AD350 800AC750 8DC40014 */  lw         $a0, 0x14($t6)
/* AD354 800AC754 0C02B768 */  jal        alSynSetVol
/* AD358 800AC758 24A50004 */   addiu     $a1, $a1, 4
.L800AC75C:
/* AD35C 800AC75C 8FA800A0 */  lw         $t0, 0xa0($sp)
/* AD360 800AC760 8D0F0000 */  lw         $t7, ($t0)
/* AD364 800AC764 15E0FFE4 */  bnez       $t7, .L800AC6F8
/* AD368 800AC768 AFAF00A0 */   sw        $t7, 0xa0($sp)
.L800AC76C:
/* AD36C 800AC76C 10000066 */  b          .L800AC908
/* AD370 800AC770 00000000 */   nop
/* AD374 800AC774 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD378 800AC778 93AC009B */  lbu        $t4, 0x9b($sp)
/* AD37C 800AC77C 93AA0097 */  lbu        $t2, 0x97($sp)
/* AD380 800AC780 8F0B0060 */  lw         $t3, 0x60($t8)
/* AD384 800AC784 000C6900 */  sll        $t5, $t4, 4
/* AD388 800AC788 016D4821 */  addu       $t1, $t3, $t5
/* AD38C 800AC78C A12A0008 */  sb         $t2, 8($t1)
/* AD390 800AC790 1000005D */  b          .L800AC908
/* AD394 800AC794 00000000 */   nop
.L800AC798:
/* AD398 800AC798 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD39C 800AC79C 93AF009B */  lbu        $t7, 0x9b($sp)
/* AD3A0 800AC7A0 93B90097 */  lbu        $t9, 0x97($sp)
/* AD3A4 800AC7A4 8DC80060 */  lw         $t0, 0x60($t6)
/* AD3A8 800AC7A8 000FC100 */  sll        $t8, $t7, 4
/* AD3AC 800AC7AC 01186021 */  addu       $t4, $t0, $t8
/* AD3B0 800AC7B0 A199000B */  sb         $t9, 0xb($t4)
/* AD3B4 800AC7B4 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD3B8 800AC7B8 8D6D0064 */  lw         $t5, 0x64($t3)
/* AD3BC 800AC7BC 11A00032 */  beqz       $t5, .L800AC888
/* AD3C0 800AC7C0 AFAD00A0 */   sw        $t5, 0xa0($sp)
.L800AC7C4:
/* AD3C4 800AC7C4 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* AD3C8 800AC7C8 93AE009B */  lbu        $t6, 0x9b($sp)
/* AD3CC 800AC7CC 91490031 */  lbu        $t1, 0x31($t2)
/* AD3D0 800AC7D0 152E0029 */  bne        $t1, $t6, .L800AC878
/* AD3D4 800AC7D4 00000000 */   nop
/* AD3D8 800AC7D8 914F0035 */  lbu        $t7, 0x35($t2)
/* AD3DC 800AC7DC 24010003 */  addiu      $at, $zero, 3
/* AD3E0 800AC7E0 11E10025 */  beq        $t7, $at, .L800AC878
/* AD3E4 800AC7E4 00000000 */   nop
/* AD3E8 800AC7E8 93A80097 */  lbu        $t0, 0x97($sp)
/* AD3EC 800AC7EC 29010040 */  slti       $at, $t0, 0x40
/* AD3F0 800AC7F0 1420000A */  bnez       $at, .L800AC81C
/* AD3F4 800AC7F4 00000000 */   nop
/* AD3F8 800AC7F8 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD3FC 800AC7FC 93190035 */  lbu        $t9, 0x35($t8)
/* AD400 800AC800 17200004 */  bnez       $t9, .L800AC814
/* AD404 800AC804 00000000 */   nop
/* AD408 800AC808 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* AD40C 800AC80C 240C0002 */  addiu      $t4, $zero, 2
/* AD410 800AC810 A16C0035 */  sb         $t4, 0x35($t3)
.L800AC814:
/* AD414 800AC814 10000018 */  b          .L800AC878
/* AD418 800AC818 00000000 */   nop
.L800AC81C:
/* AD41C 800AC81C 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD420 800AC820 24010002 */  addiu      $at, $zero, 2
/* AD424 800AC824 91A90035 */  lbu        $t1, 0x35($t5)
/* AD428 800AC828 15210004 */  bne        $t1, $at, .L800AC83C
/* AD42C 800AC82C 00000000 */   nop
/* AD430 800AC830 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* AD434 800AC834 10000010 */  b          .L800AC878
/* AD438 800AC838 A1C00035 */   sb        $zero, 0x35($t6)
.L800AC83C:
/* AD43C 800AC83C 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* AD440 800AC840 24010004 */  addiu      $at, $zero, 4
/* AD444 800AC844 914F0035 */  lbu        $t7, 0x35($t2)
/* AD448 800AC848 15E1000B */  bne        $t7, $at, .L800AC878
/* AD44C 800AC84C 00000000 */   nop
/* AD450 800AC850 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD454 800AC854 24080003 */  addiu      $t0, $zero, 3
/* AD458 800AC858 A3080035 */  sb         $t0, 0x35($t8)
/* AD45C 800AC85C 8FB900A0 */  lw         $t9, 0xa0($sp)
/* AD460 800AC860 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD464 800AC864 8F2C0020 */  lw         $t4, 0x20($t9)
/* AD468 800AC868 27250004 */  addiu      $a1, $t9, 4
/* AD46C 800AC86C 8D8B0000 */  lw         $t3, ($t4)
/* AD470 800AC870 0C02B429 */  jal        __seqpReleaseVoice
/* AD474 800AC874 8D660008 */   lw        $a2, 8($t3)
.L800AC878:
/* AD478 800AC878 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD47C 800AC87C 8DA90000 */  lw         $t1, ($t5)
/* AD480 800AC880 1520FFD0 */  bnez       $t1, .L800AC7C4
/* AD484 800AC884 AFA900A0 */   sw        $t1, 0xa0($sp)
.L800AC888:
/* AD488 800AC888 1000001F */  b          .L800AC908
/* AD48C 800AC88C 00000000 */   nop
.L800AC890:
/* AD490 800AC890 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD494 800AC894 93A8009B */  lbu        $t0, 0x9b($sp)
/* AD498 800AC898 93AE0097 */  lbu        $t6, 0x97($sp)
/* AD49C 800AC89C 8D4F0060 */  lw         $t7, 0x60($t2)
/* AD4A0 800AC8A0 0008C100 */  sll        $t8, $t0, 4
/* AD4A4 800AC8A4 01F8C821 */  addu       $t9, $t7, $t8
/* AD4A8 800AC8A8 A32E000A */  sb         $t6, 0xa($t9)
/* AD4AC 800AC8AC 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AD4B0 800AC8B0 8D8B0064 */  lw         $t3, 0x64($t4)
/* AD4B4 800AC8B4 11600010 */  beqz       $t3, .L800AC8F8
/* AD4B8 800AC8B8 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L800AC8BC:
/* AD4BC 800AC8BC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AD4C0 800AC8C0 93AA009B */  lbu        $t2, 0x9b($sp)
/* AD4C4 800AC8C4 91A90031 */  lbu        $t1, 0x31($t5)
/* AD4C8 800AC8C8 152A0007 */  bne        $t1, $t2, .L800AC8E8
/* AD4CC 800AC8CC 00000000 */   nop
/* AD4D0 800AC8D0 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD4D4 800AC8D4 8FA500A0 */  lw         $a1, 0xa0($sp)
/* AD4D8 800AC8D8 93A60097 */  lbu        $a2, 0x97($sp)
/* AD4DC 800AC8DC 8D040014 */  lw         $a0, 0x14($t0)
/* AD4E0 800AC8E0 0C02B968 */  jal        alSynSetFXMix
/* AD4E4 800AC8E4 24A50004 */   addiu     $a1, $a1, 4
.L800AC8E8:
/* AD4E8 800AC8E8 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* AD4EC 800AC8EC 8DF80000 */  lw         $t8, ($t7)
/* AD4F0 800AC8F0 1700FFF2 */  bnez       $t8, .L800AC8BC
/* AD4F4 800AC8F4 AFB800A0 */   sw        $t8, 0xa0($sp)
.L800AC8F8:
/* AD4F8 800AC8F8 10000003 */  b          .L800AC908
/* AD4FC 800AC8FC 00000000 */   nop
.L800AC900:
/* AD500 800AC900 10000001 */  b          .L800AC908
/* AD504 800AC904 00000000 */   nop
.L800AC908:
/* AD508 800AC908 10000069 */  b          .L800ACAB0
/* AD50C 800AC90C 00000000 */   nop
/* AD510 800AC910 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* AD514 800AC914 8DD90020 */  lw         $t9, 0x20($t6)
/* AD518 800AC918 13200003 */  beqz       $t9, .L800AC928
/* AD51C 800AC91C 00000000 */   nop
/* AD520 800AC920 10000007 */  b          .L800AC940
/* AD524 800AC924 00000000 */   nop
.L800AC928:
/* AD528 800AC928 3C04800F */  lui        $a0, %hi(D_800EE0EC)
/* AD52C 800AC92C 3C05800F */  lui        $a1, %hi(D_800EE100)
/* AD530 800AC930 24A5E100 */  addiu      $a1, $a1, %lo(D_800EE100)
/* AD534 800AC934 2484E0EC */  addiu      $a0, $a0, %lo(D_800EE0EC)
/* AD538 800AC938 0C026E74 */  jal        __assert
/* AD53C 800AC93C 240602CA */   addiu     $a2, $zero, 0x2ca
.L800AC940:
/* AD540 800AC940 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD544 800AC944 93AC009A */  lbu        $t4, 0x9a($sp)
/* AD548 800AC948 8D6D0020 */  lw         $t5, 0x20($t3)
/* AD54C 800AC94C 85A90000 */  lh         $t1, ($t5)
/* AD550 800AC950 0189082A */  slt        $at, $t4, $t1
/* AD554 800AC954 1020000E */  beqz       $at, .L800AC990
/* AD558 800AC958 00000000 */   nop
/* AD55C 800AC95C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AD560 800AC960 93AF009A */  lbu        $t7, 0x9a($sp)
/* AD564 800AC964 8D480020 */  lw         $t0, 0x20($t2)
/* AD568 800AC968 000FC080 */  sll        $t8, $t7, 2
/* AD56C 800AC96C 01187021 */  addu       $t6, $t0, $t8
/* AD570 800AC970 8DD9000C */  lw         $t9, 0xc($t6)
/* AD574 800AC974 AFB90044 */  sw         $t9, 0x44($sp)
/* AD578 800AC978 8FA400A8 */  lw         $a0, 0xa8($sp)
/* AD57C 800AC97C 8FA50044 */  lw         $a1, 0x44($sp)
/* AD580 800AC980 0C02B509 */  jal        __setInstChanState
/* AD584 800AC984 93A6009B */   lbu       $a2, 0x9b($sp)
/* AD588 800AC988 10000008 */  b          .L800AC9AC
/* AD58C 800AC98C 00000000 */   nop
.L800AC990:
/* AD590 800AC990 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* AD594 800AC994 24040079 */  addiu      $a0, $zero, 0x79
/* AD598 800AC998 24050002 */  addiu      $a1, $zero, 2
/* AD59C 800AC99C 8D6D0020 */  lw         $t5, 0x20($t3)
/* AD5A0 800AC9A0 93A6009A */  lbu        $a2, 0x9a($sp)
/* AD5A4 800AC9A4 0C0297B4 */  jal        __osError
/* AD5A8 800AC9A8 85A70000 */   lh        $a3, ($t5)
.L800AC9AC:
/* AD5AC 800AC9AC 10000040 */  b          .L800ACAB0
/* AD5B0 800AC9B0 00000000 */   nop
/* AD5B4 800AC9B4 93AC0097 */  lbu        $t4, 0x97($sp)
/* AD5B8 800AC9B8 93AA0098 */  lbu        $t2, 0x98($sp)
/* AD5BC 800AC9BC 000C49C0 */  sll        $t1, $t4, 7
/* AD5C0 800AC9C0 012A7821 */  addu       $t7, $t1, $t2
/* AD5C4 800AC9C4 25E8E000 */  addiu      $t0, $t7, -0x2000
/* AD5C8 800AC9C8 AFA80040 */  sw         $t0, 0x40($sp)
/* AD5CC 800AC9CC 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AD5D0 800AC9D0 93B9009B */  lbu        $t9, 0x9b($sp)
/* AD5D4 800AC9D4 8FA90040 */  lw         $t1, 0x40($sp)
/* AD5D8 800AC9D8 8F0E0060 */  lw         $t6, 0x60($t8)
/* AD5DC 800AC9DC 00195900 */  sll        $t3, $t9, 4
/* AD5E0 800AC9E0 01CB6821 */  addu       $t5, $t6, $t3
/* AD5E4 800AC9E4 85AC0004 */  lh         $t4, 4($t5)
/* AD5E8 800AC9E8 01890019 */  multu      $t4, $t1
/* AD5EC 800AC9EC 00005012 */  mflo       $t2
/* AD5F0 800AC9F0 05410003 */  bgez       $t2, .L800ACA00
/* AD5F4 800AC9F4 000A7B43 */   sra       $t7, $t2, 0xd
/* AD5F8 800AC9F8 25411FFF */  addiu      $at, $t2, 0x1fff
/* AD5FC 800AC9FC 00017B43 */  sra        $t7, $at, 0xd
.L800ACA00:
/* AD600 800ACA00 AFAF0038 */  sw         $t7, 0x38($sp)
/* AD604 800ACA04 0C02B8B4 */  jal        alCents2Ratio
/* AD608 800ACA08 8FA40038 */   lw        $a0, 0x38($sp)
/* AD60C 800ACA0C E7A0003C */  swc1       $f0, 0x3c($sp)
/* AD610 800ACA10 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD614 800ACA14 93B9009B */  lbu        $t9, 0x9b($sp)
/* AD618 800ACA18 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AD61C 800ACA1C 8D180060 */  lw         $t8, 0x60($t0)
/* AD620 800ACA20 00197100 */  sll        $t6, $t9, 4
/* AD624 800ACA24 030E5821 */  addu       $t3, $t8, $t6
/* AD628 800ACA28 E570000C */  swc1       $f16, 0xc($t3)
/* AD62C 800ACA2C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* AD630 800ACA30 8DAC0064 */  lw         $t4, 0x64($t5)
/* AD634 800ACA34 11800016 */  beqz       $t4, .L800ACA90
/* AD638 800ACA38 AFAC00A0 */   sw        $t4, 0xa0($sp)
.L800ACA3C:
/* AD63C 800ACA3C 8FA900A0 */  lw         $t1, 0xa0($sp)
/* AD640 800ACA40 93AF009B */  lbu        $t7, 0x9b($sp)
/* AD644 800ACA44 912A0031 */  lbu        $t2, 0x31($t1)
/* AD648 800ACA48 154F000D */  bne        $t2, $t7, .L800ACA80
/* AD64C 800ACA4C 00000000 */   nop
/* AD650 800ACA50 8FB900A0 */  lw         $t9, 0xa0($sp)
/* AD654 800ACA54 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AD658 800ACA58 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AD65C 800ACA5C C7320028 */  lwc1       $f18, 0x28($t9)
/* AD660 800ACA60 C728002C */  lwc1       $f8, 0x2c($t9)
/* AD664 800ACA64 27250004 */  addiu      $a1, $t9, 4
/* AD668 800ACA68 46049182 */  mul.s      $f6, $f18, $f4
/* AD66C 800ACA6C 8D040014 */  lw         $a0, 0x14($t0)
/* AD670 800ACA70 46083282 */  mul.s      $f10, $f6, $f8
/* AD674 800ACA74 44065000 */  mfc1       $a2, $f10
/* AD678 800ACA78 0C02B7A4 */  jal        alSynSetPitch
/* AD67C 800ACA7C 00000000 */   nop
.L800ACA80:
/* AD680 800ACA80 8FB800A0 */  lw         $t8, 0xa0($sp)
/* AD684 800ACA84 8F0E0000 */  lw         $t6, ($t8)
/* AD688 800ACA88 15C0FFEC */  bnez       $t6, .L800ACA3C
/* AD68C 800ACA8C AFAE00A0 */   sw        $t6, 0xa0($sp)
.L800ACA90:
/* AD690 800ACA90 10000007 */  b          .L800ACAB0
/* AD694 800ACA94 00000000 */   nop
.L800ACA98:
/* AD698 800ACA98 2404007A */  addiu      $a0, $zero, 0x7a
/* AD69C 800ACA9C 24050001 */  addiu      $a1, $zero, 1
/* AD6A0 800ACAA0 0C0297B4 */  jal        __osError
/* AD6A4 800ACAA4 8FA6009C */   lw        $a2, 0x9c($sp)
/* AD6A8 800ACAA8 10000001 */  b          .L800ACAB0
/* AD6AC 800ACAAC 00000000 */   nop
.L800ACAB0:
/* AD6B0 800ACAB0 10000001 */  b          .L800ACAB8
/* AD6B4 800ACAB4 00000000 */   nop
.L800ACAB8:
/* AD6B8 800ACAB8 8FBF002C */  lw         $ra, 0x2c($sp)
/* AD6BC 800ACABC 8FB00024 */  lw         $s0, 0x24($sp)
/* AD6C0 800ACAC0 8FB10028 */  lw         $s1, 0x28($sp)
/* AD6C4 800ACAC4 03E00008 */  jr         $ra
/* AD6C8 800ACAC8 27BD00A8 */   addiu     $sp, $sp, 0xa8

glabel __handleMetaMsg
/* AD6CC 800ACACC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD6D0 800ACAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD6D4 800ACAD4 AFA40030 */  sw         $a0, 0x30($sp)
/* AD6D8 800ACAD8 AFA50034 */  sw         $a1, 0x34($sp)
/* AD6DC 800ACADC 8FAE0034 */  lw         $t6, 0x34($sp)
/* AD6E0 800ACAE0 25CF0004 */  addiu      $t7, $t6, 4
/* AD6E4 800ACAE4 AFAF002C */  sw         $t7, 0x2c($sp)
/* AD6E8 800ACAE8 8FB80034 */  lw         $t8, 0x34($sp)
/* AD6EC 800ACAEC 240100FF */  addiu      $at, $zero, 0xff
/* AD6F0 800ACAF0 93190008 */  lbu        $t9, 8($t8)
/* AD6F4 800ACAF4 17210017 */  bne        $t9, $at, .L800ACB54
/* AD6F8 800ACAF8 00000000 */   nop
/* AD6FC 800ACAFC 8FA80034 */  lw         $t0, 0x34($sp)
/* AD700 800ACB00 24010051 */  addiu      $at, $zero, 0x51
/* AD704 800ACB04 91090009 */  lbu        $t1, 9($t0)
/* AD708 800ACB08 15210012 */  bne        $t1, $at, .L800ACB54
/* AD70C 800ACB0C 00000000 */   nop
/* AD710 800ACB10 8FAA002C */  lw         $t2, 0x2c($sp)
/* AD714 800ACB14 914B0007 */  lbu        $t3, 7($t2)
/* AD718 800ACB18 914D0008 */  lbu        $t5, 8($t2)
/* AD71C 800ACB1C 91580009 */  lbu        $t8, 9($t2)
/* AD720 800ACB20 000B6400 */  sll        $t4, $t3, 0x10
/* AD724 800ACB24 000D7200 */  sll        $t6, $t5, 8
/* AD728 800ACB28 018E7825 */  or         $t7, $t4, $t6
/* AD72C 800ACB2C 01F8C825 */  or         $t9, $t7, $t8
/* AD730 800ACB30 AFB90018 */  sw         $t9, 0x18($sp)
/* AD734 800ACB34 8FA80018 */  lw         $t0, 0x18($sp)
/* AD738 800ACB38 8FA40030 */  lw         $a0, 0x30($sp)
/* AD73C 800ACB3C 44882000 */  mtc1       $t0, $f4
/* AD740 800ACB40 00000000 */  nop
/* AD744 800ACB44 46802120 */  cvt.s.w    $f4, $f4
/* AD748 800ACB48 44052000 */  mfc1       $a1, $f4
/* AD74C 800ACB4C 0C02B5BD */  jal        func_800AD6F4
/* AD750 800ACB50 00000000 */   nop
.L800ACB54:
/* AD754 800ACB54 10000001 */  b          .L800ACB5C
/* AD758 800ACB58 00000000 */   nop
.L800ACB5C:
/* AD75C 800ACB5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD760 800ACB60 27BD0030 */  addiu      $sp, $sp, 0x30
/* AD764 800ACB64 03E00008 */  jr         $ra
/* AD768 800ACB68 00000000 */   nop

glabel __mapVoice
/* AD76C 800ACB6C 27BDFFF8 */  addiu      $sp, $sp, -8
/* AD770 800ACB70 30A500FF */  andi       $a1, $a1, 0xff
/* AD774 800ACB74 30C600FF */  andi       $a2, $a2, 0xff
/* AD778 800ACB78 30E700FF */  andi       $a3, $a3, 0xff
/* AD77C 800ACB7C 8C8E006C */  lw         $t6, 0x6c($a0)
/* AD780 800ACB80 AFAE0004 */  sw         $t6, 4($sp)
/* AD784 800ACB84 8FAF0004 */  lw         $t7, 4($sp)
/* AD788 800ACB88 11E00019 */  beqz       $t7, .L800ACBF0
/* AD78C 800ACB8C 00000000 */   nop
/* AD790 800ACB90 8FB80004 */  lw         $t8, 4($sp)
/* AD794 800ACB94 8F190000 */  lw         $t9, ($t8)
/* AD798 800ACB98 AC99006C */  sw         $t9, 0x6c($a0)
/* AD79C 800ACB9C 8FA80004 */  lw         $t0, 4($sp)
/* AD7A0 800ACBA0 AD000000 */  sw         $zero, ($t0)
/* AD7A4 800ACBA4 8C890064 */  lw         $t1, 0x64($a0)
/* AD7A8 800ACBA8 15200004 */  bnez       $t1, .L800ACBBC
/* AD7AC 800ACBAC 00000000 */   nop
/* AD7B0 800ACBB0 8FAA0004 */  lw         $t2, 4($sp)
/* AD7B4 800ACBB4 10000004 */  b          .L800ACBC8
/* AD7B8 800ACBB8 AC8A0064 */   sw        $t2, 0x64($a0)
.L800ACBBC:
/* AD7BC 800ACBBC 8FAB0004 */  lw         $t3, 4($sp)
/* AD7C0 800ACBC0 8C8C0068 */  lw         $t4, 0x68($a0)
/* AD7C4 800ACBC4 AD8B0000 */  sw         $t3, ($t4)
.L800ACBC8:
/* AD7C8 800ACBC8 8FAD0004 */  lw         $t5, 4($sp)
/* AD7CC 800ACBCC AC8D0068 */  sw         $t5, 0x68($a0)
/* AD7D0 800ACBD0 8FAE0004 */  lw         $t6, 4($sp)
/* AD7D4 800ACBD4 A1C70031 */  sb         $a3, 0x31($t6)
/* AD7D8 800ACBD8 8FAF0004 */  lw         $t7, 4($sp)
/* AD7DC 800ACBDC A1E50032 */  sb         $a1, 0x32($t7)
/* AD7E0 800ACBE0 8FB80004 */  lw         $t8, 4($sp)
/* AD7E4 800ACBE4 A3060033 */  sb         $a2, 0x33($t8)
/* AD7E8 800ACBE8 8FB90004 */  lw         $t9, 4($sp)
/* AD7EC 800ACBEC AF390014 */  sw         $t9, 0x14($t9)
.L800ACBF0:
/* AD7F0 800ACBF0 10000003 */  b          .L800ACC00
/* AD7F4 800ACBF4 8FA20004 */   lw        $v0, 4($sp)
/* AD7F8 800ACBF8 10000001 */  b          .L800ACC00
/* AD7FC 800ACBFC 00000000 */   nop
.L800ACC00:
/* AD800 800ACC00 03E00008 */  jr         $ra
/* AD804 800ACC04 27BD0008 */   addiu     $sp, $sp, 8

glabel __unmapVoice
/* AD808 800ACC08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AD80C 800ACC0C AFBF0014 */  sw         $ra, 0x14($sp)
/* AD810 800ACC10 AFA40020 */  sw         $a0, 0x20($sp)
/* AD814 800ACC14 AFA50024 */  sw         $a1, 0x24($sp)
/* AD818 800ACC18 AFA0001C */  sw         $zero, 0x1c($sp)
/* AD81C 800ACC1C 8FAE0020 */  lw         $t6, 0x20($sp)
/* AD820 800ACC20 8DCF0064 */  lw         $t7, 0x64($t6)
/* AD824 800ACC24 11E00029 */  beqz       $t7, .L800ACCCC
/* AD828 800ACC28 AFAF0018 */   sw        $t7, 0x18($sp)
.L800ACC2C:
/* AD82C 800ACC2C 8FB80018 */  lw         $t8, 0x18($sp)
/* AD830 800ACC30 8FA80024 */  lw         $t0, 0x24($sp)
/* AD834 800ACC34 27190004 */  addiu      $t9, $t8, 4
/* AD838 800ACC38 1728001E */  bne        $t9, $t0, .L800ACCB4
/* AD83C 800ACC3C 00000000 */   nop
/* AD840 800ACC40 8FA9001C */  lw         $t1, 0x1c($sp)
/* AD844 800ACC44 11200006 */  beqz       $t1, .L800ACC60
/* AD848 800ACC48 00000000 */   nop
/* AD84C 800ACC4C 8FAA0018 */  lw         $t2, 0x18($sp)
/* AD850 800ACC50 8FAC001C */  lw         $t4, 0x1c($sp)
/* AD854 800ACC54 8D4B0000 */  lw         $t3, ($t2)
/* AD858 800ACC58 10000005 */  b          .L800ACC70
/* AD85C 800ACC5C AD8B0000 */   sw        $t3, ($t4)
.L800ACC60:
/* AD860 800ACC60 8FAD0018 */  lw         $t5, 0x18($sp)
/* AD864 800ACC64 8FAF0020 */  lw         $t7, 0x20($sp)
/* AD868 800ACC68 8DAE0000 */  lw         $t6, ($t5)
/* AD86C 800ACC6C ADEE0064 */  sw         $t6, 0x64($t7)
.L800ACC70:
/* AD870 800ACC70 8FB80020 */  lw         $t8, 0x20($sp)
/* AD874 800ACC74 8FA80018 */  lw         $t0, 0x18($sp)
/* AD878 800ACC78 8F190068 */  lw         $t9, 0x68($t8)
/* AD87C 800ACC7C 17280004 */  bne        $t9, $t0, .L800ACC90
/* AD880 800ACC80 00000000 */   nop
/* AD884 800ACC84 8FA9001C */  lw         $t1, 0x1c($sp)
/* AD888 800ACC88 8FAA0020 */  lw         $t2, 0x20($sp)
/* AD88C 800ACC8C AD490068 */  sw         $t1, 0x68($t2)
.L800ACC90:
/* AD890 800ACC90 8FAB0020 */  lw         $t3, 0x20($sp)
/* AD894 800ACC94 8FAD0018 */  lw         $t5, 0x18($sp)
/* AD898 800ACC98 8D6C006C */  lw         $t4, 0x6c($t3)
/* AD89C 800ACC9C ADAC0000 */  sw         $t4, ($t5)
/* AD8A0 800ACCA0 8FAE0018 */  lw         $t6, 0x18($sp)
/* AD8A4 800ACCA4 8FAF0020 */  lw         $t7, 0x20($sp)
/* AD8A8 800ACCA8 ADEE006C */  sw         $t6, 0x6c($t7)
/* AD8AC 800ACCAC 1000000D */  b          .L800ACCE4
/* AD8B0 800ACCB0 00000000 */   nop
.L800ACCB4:
/* AD8B4 800ACCB4 8FB80018 */  lw         $t8, 0x18($sp)
/* AD8B8 800ACCB8 AFB8001C */  sw         $t8, 0x1c($sp)
/* AD8BC 800ACCBC 8FB90018 */  lw         $t9, 0x18($sp)
/* AD8C0 800ACCC0 8F280000 */  lw         $t0, ($t9)
/* AD8C4 800ACCC4 1500FFD9 */  bnez       $t0, .L800ACC2C
/* AD8C8 800ACCC8 AFA80018 */   sw        $t0, 0x18($sp)
.L800ACCCC:
/* AD8CC 800ACCCC 2404007B */  addiu      $a0, $zero, 0x7b
/* AD8D0 800ACCD0 24050001 */  addiu      $a1, $zero, 1
/* AD8D4 800ACCD4 0C0297B4 */  jal        __osError
/* AD8D8 800ACCD8 8FA60024 */   lw        $a2, 0x24($sp)
/* AD8DC 800ACCDC 10000001 */  b          .L800ACCE4
/* AD8E0 800ACCE0 00000000 */   nop
.L800ACCE4:
/* AD8E4 800ACCE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD8E8 800ACCE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AD8EC 800ACCEC 03E00008 */  jr         $ra
/* AD8F0 800ACCF0 00000000 */   nop

glabel __lookupVoice
/* AD8F4 800ACCF4 27BDFFF8 */  addiu      $sp, $sp, -8
/* AD8F8 800ACCF8 30A500FF */  andi       $a1, $a1, 0xff
/* AD8FC 800ACCFC 30C600FF */  andi       $a2, $a2, 0xff
/* AD900 800ACD00 8C8E0064 */  lw         $t6, 0x64($a0)
/* AD904 800ACD04 AFAE0004 */  sw         $t6, 4($sp)
/* AD908 800ACD08 8FAF0004 */  lw         $t7, 4($sp)
/* AD90C 800ACD0C 11E00015 */  beqz       $t7, .L800ACD64
/* AD910 800ACD10 00000000 */   nop
.L800ACD14:
/* AD914 800ACD14 8FB80004 */  lw         $t8, 4($sp)
/* AD918 800ACD18 93190032 */  lbu        $t9, 0x32($t8)
/* AD91C 800ACD1C 1725000D */  bne        $t9, $a1, .L800ACD54
/* AD920 800ACD20 00000000 */   nop
/* AD924 800ACD24 93080031 */  lbu        $t0, 0x31($t8)
/* AD928 800ACD28 1506000A */  bne        $t0, $a2, .L800ACD54
/* AD92C 800ACD2C 00000000 */   nop
/* AD930 800ACD30 93090035 */  lbu        $t1, 0x35($t8)
/* AD934 800ACD34 24010003 */  addiu      $at, $zero, 3
/* AD938 800ACD38 11210006 */  beq        $t1, $at, .L800ACD54
/* AD93C 800ACD3C 00000000 */   nop
/* AD940 800ACD40 24010004 */  addiu      $at, $zero, 4
/* AD944 800ACD44 11210003 */  beq        $t1, $at, .L800ACD54
/* AD948 800ACD48 00000000 */   nop
/* AD94C 800ACD4C 10000009 */  b          .L800ACD74
/* AD950 800ACD50 8FA20004 */   lw        $v0, 4($sp)
.L800ACD54:
/* AD954 800ACD54 8FAA0004 */  lw         $t2, 4($sp)
/* AD958 800ACD58 8D4B0000 */  lw         $t3, ($t2)
/* AD95C 800ACD5C 1560FFED */  bnez       $t3, .L800ACD14
/* AD960 800ACD60 AFAB0004 */   sw        $t3, 4($sp)
.L800ACD64:
/* AD964 800ACD64 10000003 */  b          .L800ACD74
/* AD968 800ACD68 00001025 */   or        $v0, $zero, $zero
/* AD96C 800ACD6C 10000001 */  b          .L800ACD74
/* AD970 800ACD70 00000000 */   nop
.L800ACD74:
/* AD974 800ACD74 03E00008 */  jr         $ra
/* AD978 800ACD78 27BD0008 */   addiu     $sp, $sp, 8

glabel __lookupSoundQuick
/* AD97C 800ACD7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD980 800ACD80 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD984 800ACD84 AFA40030 */  sw         $a0, 0x30($sp)
/* AD988 800ACD88 AFA50034 */  sw         $a1, 0x34($sp)
/* AD98C 800ACD8C AFA60038 */  sw         $a2, 0x38($sp)
/* AD990 800ACD90 AFA7003C */  sw         $a3, 0x3c($sp)
/* AD994 800ACD94 8FAE0030 */  lw         $t6, 0x30($sp)
/* AD998 800ACD98 93B8003F */  lbu        $t8, 0x3f($sp)
/* AD99C 800ACD9C 8DCF0060 */  lw         $t7, 0x60($t6)
/* AD9A0 800ACDA0 0018C900 */  sll        $t9, $t8, 4
/* AD9A4 800ACDA4 01F94021 */  addu       $t0, $t7, $t9
/* AD9A8 800ACDA8 8D090000 */  lw         $t1, ($t0)
/* AD9AC 800ACDAC AFA9002C */  sw         $t1, 0x2c($sp)
/* AD9B0 800ACDB0 240A0001 */  addiu      $t2, $zero, 1
/* AD9B4 800ACDB4 AFAA0028 */  sw         $t2, 0x28($sp)
/* AD9B8 800ACDB8 8FAB002C */  lw         $t3, 0x2c($sp)
/* AD9BC 800ACDBC 856C000E */  lh         $t4, 0xe($t3)
/* AD9C0 800ACDC0 AFAC0024 */  sw         $t4, 0x24($sp)
/* AD9C4 800ACDC4 8FAD002C */  lw         $t5, 0x2c($sp)
/* AD9C8 800ACDC8 11A00003 */  beqz       $t5, .L800ACDD8
/* AD9CC 800ACDCC 00000000 */   nop
/* AD9D0 800ACDD0 10000007 */  b          .L800ACDF0
/* AD9D4 800ACDD4 00000000 */   nop
.L800ACDD8:
/* AD9D8 800ACDD8 3C04800F */  lui        $a0, %hi(seqplayer_rodata_0178)
/* AD9DC 800ACDDC 3C05800F */  lui        $a1, %hi(seqplayer_rodata_0188)
/* AD9E0 800ACDE0 24A5E128 */  addiu      $a1, $a1, %lo(seqplayer_rodata_0188)
/* AD9E4 800ACDE4 2484E118 */  addiu      $a0, $a0, %lo(seqplayer_rodata_0178)
/* AD9E8 800ACDE8 0C026E74 */  jal        __assert
/* AD9EC 800ACDEC 24060376 */   addiu     $a2, $zero, 0x376
.L800ACDF0:
/* AD9F0 800ACDF0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AD9F4 800ACDF4 8FB80028 */  lw         $t8, 0x28($sp)
/* AD9F8 800ACDF8 01D8082A */  slt        $at, $t6, $t8
/* AD9FC 800ACDFC 14200046 */  bnez       $at, .L800ACF18
/* ADA00 800ACE00 00000000 */   nop
.L800ACE04:
/* ADA04 800ACE04 8FAF0028 */  lw         $t7, 0x28($sp)
/* ADA08 800ACE08 8FB90024 */  lw         $t9, 0x24($sp)
/* ADA0C 800ACE0C 01F94021 */  addu       $t0, $t7, $t9
/* ADA10 800ACE10 05010003 */  bgez       $t0, .L800ACE20
/* ADA14 800ACE14 00084843 */   sra       $t1, $t0, 1
/* ADA18 800ACE18 25010001 */  addiu      $at, $t0, 1
/* ADA1C 800ACE1C 00014843 */  sra        $t1, $at, 1
.L800ACE20:
/* ADA20 800ACE20 AFA90020 */  sw         $t1, 0x20($sp)
/* ADA24 800ACE24 8FAB0020 */  lw         $t3, 0x20($sp)
/* ADA28 800ACE28 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADA2C 800ACE2C 000B6080 */  sll        $t4, $t3, 2
/* ADA30 800ACE30 014C6821 */  addu       $t5, $t2, $t4
/* ADA34 800ACE34 8DAE000C */  lw         $t6, 0xc($t5)
/* ADA38 800ACE38 8DD80004 */  lw         $t8, 4($t6)
/* ADA3C 800ACE3C AFB8001C */  sw         $t8, 0x1c($sp)
/* ADA40 800ACE40 8FB9001C */  lw         $t9, 0x1c($sp)
/* ADA44 800ACE44 93AF0037 */  lbu        $t7, 0x37($sp)
/* ADA48 800ACE48 93280002 */  lbu        $t0, 2($t9)
/* ADA4C 800ACE4C 01E8082A */  slt        $at, $t7, $t0
/* ADA50 800ACE50 14200016 */  bnez       $at, .L800ACEAC
/* ADA54 800ACE54 00000000 */   nop
/* ADA58 800ACE58 93290003 */  lbu        $t1, 3($t9)
/* ADA5C 800ACE5C 012F082A */  slt        $at, $t1, $t7
/* ADA60 800ACE60 14200012 */  bnez       $at, .L800ACEAC
/* ADA64 800ACE64 00000000 */   nop
/* ADA68 800ACE68 93AB003B */  lbu        $t3, 0x3b($sp)
/* ADA6C 800ACE6C 932A0000 */  lbu        $t2, ($t9)
/* ADA70 800ACE70 016A082A */  slt        $at, $t3, $t2
/* ADA74 800ACE74 1420000D */  bnez       $at, .L800ACEAC
/* ADA78 800ACE78 00000000 */   nop
/* ADA7C 800ACE7C 932C0001 */  lbu        $t4, 1($t9)
/* ADA80 800ACE80 018B082A */  slt        $at, $t4, $t3
/* ADA84 800ACE84 14200009 */  bnez       $at, .L800ACEAC
/* ADA88 800ACE88 00000000 */   nop
/* ADA8C 800ACE8C 8FAE0020 */  lw         $t6, 0x20($sp)
/* ADA90 800ACE90 8FAD002C */  lw         $t5, 0x2c($sp)
/* ADA94 800ACE94 000EC080 */  sll        $t8, $t6, 2
/* ADA98 800ACE98 01B84021 */  addu       $t0, $t5, $t8
/* ADA9C 800ACE9C 10000022 */  b          .L800ACF28
/* ADAA0 800ACEA0 8D02000C */   lw        $v0, 0xc($t0)
/* ADAA4 800ACEA4 10000017 */  b          .L800ACF04
/* ADAA8 800ACEA8 00000000 */   nop
.L800ACEAC:
/* ADAAC 800ACEAC 8FA9001C */  lw         $t1, 0x1c($sp)
/* ADAB0 800ACEB0 93AF0037 */  lbu        $t7, 0x37($sp)
/* ADAB4 800ACEB4 912A0002 */  lbu        $t2, 2($t1)
/* ADAB8 800ACEB8 01EA082A */  slt        $at, $t7, $t2
/* ADABC 800ACEBC 1420000A */  bnez       $at, .L800ACEE8
/* ADAC0 800ACEC0 00000000 */   nop
/* ADAC4 800ACEC4 93B9003B */  lbu        $t9, 0x3b($sp)
/* ADAC8 800ACEC8 912B0000 */  lbu        $t3, ($t1)
/* ADACC 800ACECC 032B082A */  slt        $at, $t9, $t3
/* ADAD0 800ACED0 10200009 */  beqz       $at, .L800ACEF8
/* ADAD4 800ACED4 00000000 */   nop
/* ADAD8 800ACED8 912C0003 */  lbu        $t4, 3($t1)
/* ADADC 800ACEDC 018F082A */  slt        $at, $t4, $t7
/* ADAE0 800ACEE0 14200005 */  bnez       $at, .L800ACEF8
/* ADAE4 800ACEE4 00000000 */   nop
.L800ACEE8:
/* ADAE8 800ACEE8 8FAE0020 */  lw         $t6, 0x20($sp)
/* ADAEC 800ACEEC 25CDFFFF */  addiu      $t5, $t6, -1
/* ADAF0 800ACEF0 10000004 */  b          .L800ACF04
/* ADAF4 800ACEF4 AFAD0024 */   sw        $t5, 0x24($sp)
.L800ACEF8:
/* ADAF8 800ACEF8 8FB80020 */  lw         $t8, 0x20($sp)
/* ADAFC 800ACEFC 27080001 */  addiu      $t0, $t8, 1
/* ADB00 800ACF00 AFA80028 */  sw         $t0, 0x28($sp)
.L800ACF04:
/* ADB04 800ACF04 8FAA0024 */  lw         $t2, 0x24($sp)
/* ADB08 800ACF08 8FB90028 */  lw         $t9, 0x28($sp)
/* ADB0C 800ACF0C 0159082A */  slt        $at, $t2, $t9
/* ADB10 800ACF10 1020FFBC */  beqz       $at, .L800ACE04
/* ADB14 800ACF14 00000000 */   nop
.L800ACF18:
/* ADB18 800ACF18 10000003 */  b          .L800ACF28
/* ADB1C 800ACF1C 00001025 */   or        $v0, $zero, $zero
/* ADB20 800ACF20 10000001 */  b          .L800ACF28
/* ADB24 800ACF24 00000000 */   nop
.L800ACF28:
/* ADB28 800ACF28 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADB2C 800ACF2C 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADB30 800ACF30 03E00008 */  jr         $ra
/* ADB34 800ACF34 00000000 */   nop

glabel __vsVol
/* ADB38 800ACF38 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADB3C 800ACF3C 908E0036 */  lbu        $t6, 0x36($a0)
/* ADB40 800ACF40 908F0033 */  lbu        $t7, 0x33($a0)
/* ADB44 800ACF44 90990030 */  lbu        $t9, 0x30($a0)
/* ADB48 800ACF48 01CF0019 */  multu      $t6, $t7
/* ADB4C 800ACF4C 0000C012 */  mflo       $t8
/* ADB50 800ACF50 00000000 */  nop
/* ADB54 800ACF54 00000000 */  nop
/* ADB58 800ACF58 03190019 */  multu      $t8, $t9
/* ADB5C 800ACF5C 00004012 */  mflo       $t0
/* ADB60 800ACF60 00084983 */  sra        $t1, $t0, 6
/* ADB64 800ACF64 AFA90004 */  sw         $t1, 4($sp)
/* ADB68 800ACF68 8C8F0020 */  lw         $t7, 0x20($a0)
/* ADB6C 800ACF6C 84B90032 */  lh         $t9, 0x32($a1)
/* ADB70 800ACF70 908B0031 */  lbu        $t3, 0x31($a0)
/* ADB74 800ACF74 91F8000D */  lbu        $t8, 0xd($t7)
/* ADB78 800ACF78 8CAA0060 */  lw         $t2, 0x60($a1)
/* ADB7C 800ACF7C 000B6100 */  sll        $t4, $t3, 4
/* ADB80 800ACF80 03190019 */  multu      $t8, $t9
/* ADB84 800ACF84 014C6821 */  addu       $t5, $t2, $t4
/* ADB88 800ACF88 91AE0009 */  lbu        $t6, 9($t5)
/* ADB8C 800ACF8C 00004012 */  mflo       $t0
/* ADB90 800ACF90 00000000 */  nop
/* ADB94 800ACF94 00000000 */  nop
/* ADB98 800ACF98 01C80019 */  multu      $t6, $t0
/* ADB9C 800ACF9C 00004812 */  mflo       $t1
/* ADBA0 800ACFA0 00095B83 */  sra        $t3, $t1, 0xe
/* ADBA4 800ACFA4 AFAB0000 */  sw         $t3, ($sp)
/* ADBA8 800ACFA8 8FAA0004 */  lw         $t2, 4($sp)
/* ADBAC 800ACFAC 8FAC0000 */  lw         $t4, ($sp)
/* ADBB0 800ACFB0 014C0019 */  multu      $t2, $t4
/* ADBB4 800ACFB4 00006812 */  mflo       $t5
/* ADBB8 800ACFB8 AFAD0004 */  sw         $t5, 4($sp)
/* ADBBC 800ACFBC 00000000 */  nop
/* ADBC0 800ACFC0 8FAF0004 */  lw         $t7, 4($sp)
/* ADBC4 800ACFC4 000FC3C2 */  srl        $t8, $t7, 0xf
/* ADBC8 800ACFC8 AFB80004 */  sw         $t8, 4($sp)
/* ADBCC 800ACFCC 10000003 */  b          .L800ACFDC
/* ADBD0 800ACFD0 87A20006 */   lh        $v0, 6($sp)
/* ADBD4 800ACFD4 10000001 */  b          .L800ACFDC
/* ADBD8 800ACFD8 00000000 */   nop
.L800ACFDC:
/* ADBDC 800ACFDC 03E00008 */  jr         $ra
/* ADBE0 800ACFE0 27BD0008 */   addiu     $sp, $sp, 8

glabel __vsDelta
/* ADBE4 800ACFE4 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADBE8 800ACFE8 8C8E0024 */  lw         $t6, 0x24($a0)
/* ADBEC 800ACFEC 01C57823 */  subu       $t7, $t6, $a1
/* ADBF0 800ACFF0 AFAF0004 */  sw         $t7, 4($sp)
/* ADBF4 800ACFF4 8FB80004 */  lw         $t8, 4($sp)
/* ADBF8 800ACFF8 07000005 */  bltz       $t8, .L800AD010
/* ADBFC 800ACFFC 00000000 */   nop
/* ADC00 800AD000 10000007 */  b          .L800AD020
/* ADC04 800AD004 8FA20004 */   lw        $v0, 4($sp)
/* ADC08 800AD008 10000003 */  b          .L800AD018
/* ADC0C 800AD00C 00000000 */   nop
.L800AD010:
/* ADC10 800AD010 10000003 */  b          .L800AD020
/* ADC14 800AD014 240203E8 */   addiu     $v0, $zero, 0x3e8
.L800AD018:
/* ADC18 800AD018 10000001 */  b          .L800AD020
/* ADC1C 800AD01C 00000000 */   nop
.L800AD020:
/* ADC20 800AD020 03E00008 */  jr         $ra
/* ADC24 800AD024 27BD0008 */   addiu     $sp, $sp, 8

glabel __vsPan
/* ADC28 800AD028 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADC2C 800AD02C 908F0031 */  lbu        $t7, 0x31($a0)
/* ADC30 800AD030 8CAE0060 */  lw         $t6, 0x60($a1)
/* ADC34 800AD034 8C890020 */  lw         $t1, 0x20($a0)
/* ADC38 800AD038 000FC100 */  sll        $t8, $t7, 4
/* ADC3C 800AD03C 01D8C821 */  addu       $t9, $t6, $t8
/* ADC40 800AD040 93280007 */  lbu        $t0, 7($t9)
/* ADC44 800AD044 912A000C */  lbu        $t2, 0xc($t1)
/* ADC48 800AD048 010A5821 */  addu       $t3, $t0, $t2
/* ADC4C 800AD04C 256CFFC0 */  addiu      $t4, $t3, -0x40
/* ADC50 800AD050 AFAC0004 */  sw         $t4, 4($sp)
/* ADC54 800AD054 8FAD0004 */  lw         $t5, 4($sp)
/* ADC58 800AD058 19A00003 */  blez       $t5, .L800AD068
/* ADC5C 800AD05C 00000000 */   nop
/* ADC60 800AD060 10000002 */  b          .L800AD06C
/* ADC64 800AD064 00000000 */   nop
.L800AD068:
/* ADC68 800AD068 AFA00004 */  sw         $zero, 4($sp)
.L800AD06C:
/* ADC6C 800AD06C 8FAF0004 */  lw         $t7, 4($sp)
/* ADC70 800AD070 29E1007F */  slti       $at, $t7, 0x7f
/* ADC74 800AD074 10200003 */  beqz       $at, .L800AD084
/* ADC78 800AD078 00000000 */   nop
/* ADC7C 800AD07C 10000003 */  b          .L800AD08C
/* ADC80 800AD080 00000000 */   nop
.L800AD084:
/* ADC84 800AD084 240E007F */  addiu      $t6, $zero, 0x7f
/* ADC88 800AD088 AFAE0004 */  sw         $t6, 4($sp)
.L800AD08C:
/* ADC8C 800AD08C 10000003 */  b          .L800AD09C
/* ADC90 800AD090 93A20007 */   lbu       $v0, 7($sp)
/* ADC94 800AD094 10000001 */  b          .L800AD09C
/* ADC98 800AD098 00000000 */   nop
.L800AD09C:
/* ADC9C 800AD09C 03E00008 */  jr         $ra
/* ADCA0 800AD0A0 27BD0008 */   addiu     $sp, $sp, 8

glabel __seqpReleaseVoice
/* ADCA4 800AD0A4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* ADCA8 800AD0A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADCAC 800AD0AC AFA40040 */  sw         $a0, 0x40($sp)
/* ADCB0 800AD0B0 AFA50044 */  sw         $a1, 0x44($sp)
/* ADCB4 800AD0B4 AFA60048 */  sw         $a2, 0x48($sp)
/* ADCB8 800AD0B8 8FAE0044 */  lw         $t6, 0x44($sp)
/* ADCBC 800AD0BC 8DCF0010 */  lw         $t7, 0x10($t6)
/* ADCC0 800AD0C0 AFAF002C */  sw         $t7, 0x2c($sp)
/* ADCC4 800AD0C4 8FB8002C */  lw         $t8, 0x2c($sp)
/* ADCC8 800AD0C8 93190034 */  lbu        $t9, 0x34($t8)
/* ADCCC 800AD0CC 1720002C */  bnez       $t9, .L800AD180
/* ADCD0 800AD0D0 00000000 */   nop
/* ADCD4 800AD0D4 8FA80040 */  lw         $t0, 0x40($sp)
/* ADCD8 800AD0D8 8D090050 */  lw         $t1, 0x50($t0)
/* ADCDC 800AD0DC AFA90028 */  sw         $t1, 0x28($sp)
/* ADCE0 800AD0E0 8FAA0028 */  lw         $t2, 0x28($sp)
/* ADCE4 800AD0E4 11400026 */  beqz       $t2, .L800AD180
/* ADCE8 800AD0E8 00000000 */   nop
.L800AD0EC:
/* ADCEC 800AD0EC 8FAB0028 */  lw         $t3, 0x28($sp)
/* ADCF0 800AD0F0 8D6C0000 */  lw         $t4, ($t3)
/* ADCF4 800AD0F4 AFAC0024 */  sw         $t4, 0x24($sp)
/* ADCF8 800AD0F8 8FAD0028 */  lw         $t5, 0x28($sp)
/* ADCFC 800AD0FC AFAD0020 */  sw         $t5, 0x20($sp)
/* ADD00 800AD100 8FAE0024 */  lw         $t6, 0x24($sp)
/* ADD04 800AD104 AFAE001C */  sw         $t6, 0x1c($sp)
/* ADD08 800AD108 8FAF0020 */  lw         $t7, 0x20($sp)
/* ADD0C 800AD10C 24010006 */  addiu      $at, $zero, 6
/* ADD10 800AD110 85F8000C */  lh         $t8, 0xc($t7)
/* ADD14 800AD114 17010015 */  bne        $t8, $at, .L800AD16C
/* ADD18 800AD118 00000000 */   nop
/* ADD1C 800AD11C 8FB90020 */  lw         $t9, 0x20($sp)
/* ADD20 800AD120 8FA90044 */  lw         $t1, 0x44($sp)
/* ADD24 800AD124 8F280010 */  lw         $t0, 0x10($t9)
/* ADD28 800AD128 15090010 */  bne        $t0, $t1, .L800AD16C
/* ADD2C 800AD12C 00000000 */   nop
/* ADD30 800AD130 8FAA001C */  lw         $t2, 0x1c($sp)
/* ADD34 800AD134 11400007 */  beqz       $t2, .L800AD154
/* ADD38 800AD138 00000000 */   nop
/* ADD3C 800AD13C 8FAB001C */  lw         $t3, 0x1c($sp)
/* ADD40 800AD140 8FAD0020 */  lw         $t5, 0x20($sp)
/* ADD44 800AD144 8D6C0008 */  lw         $t4, 8($t3)
/* ADD48 800AD148 8DAE0008 */  lw         $t6, 8($t5)
/* ADD4C 800AD14C 018E7821 */  addu       $t7, $t4, $t6
/* ADD50 800AD150 AD6F0008 */  sw         $t7, 8($t3)
.L800AD154:
/* ADD54 800AD154 0C026EBB */  jal        alUnlink
/* ADD58 800AD158 8FA40028 */   lw        $a0, 0x28($sp)
/* ADD5C 800AD15C 8FA50040 */  lw         $a1, 0x40($sp)
/* ADD60 800AD160 8FA40028 */  lw         $a0, 0x28($sp)
/* ADD64 800AD164 0C026EAE */  jal        alLink
/* ADD68 800AD168 24A50048 */   addiu     $a1, $a1, 0x48
.L800AD16C:
/* ADD6C 800AD16C 8FB80024 */  lw         $t8, 0x24($sp)
/* ADD70 800AD170 AFB80028 */  sw         $t8, 0x28($sp)
/* ADD74 800AD174 8FB90028 */  lw         $t9, 0x28($sp)
/* ADD78 800AD178 1720FFDC */  bnez       $t9, .L800AD0EC
/* ADD7C 800AD17C 00000000 */   nop
.L800AD180:
/* ADD80 800AD180 8FA8002C */  lw         $t0, 0x2c($sp)
/* ADD84 800AD184 A1000033 */  sb         $zero, 0x33($t0)
/* ADD88 800AD188 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADD8C 800AD18C 24090003 */  addiu      $t1, $zero, 3
/* ADD90 800AD190 A1490034 */  sb         $t1, 0x34($t2)
/* ADD94 800AD194 8FAD002C */  lw         $t5, 0x2c($sp)
/* ADD98 800AD198 A1A00030 */  sb         $zero, 0x30($t5)
/* ADD9C 800AD19C 8FAC0040 */  lw         $t4, 0x40($sp)
/* ADDA0 800AD1A0 8FAF0048 */  lw         $t7, 0x48($sp)
/* ADDA4 800AD1A4 8FB8002C */  lw         $t8, 0x2c($sp)
/* ADDA8 800AD1A8 8D8E001C */  lw         $t6, 0x1c($t4)
/* ADDAC 800AD1AC 01CF5821 */  addu       $t3, $t6, $t7
/* ADDB0 800AD1B0 AF0B0024 */  sw         $t3, 0x24($t8)
/* ADDB4 800AD1B4 8FB90040 */  lw         $t9, 0x40($sp)
/* ADDB8 800AD1B8 8FA50044 */  lw         $a1, 0x44($sp)
/* ADDBC 800AD1BC 00003025 */  or         $a2, $zero, $zero
/* ADDC0 800AD1C0 0C02DF14 */  jal        alSynSetPriority
/* ADDC4 800AD1C4 8F240014 */   lw        $a0, 0x14($t9)
/* ADDC8 800AD1C8 8FA80040 */  lw         $t0, 0x40($sp)
/* ADDCC 800AD1CC 8FA50044 */  lw         $a1, 0x44($sp)
/* ADDD0 800AD1D0 00003025 */  or         $a2, $zero, $zero
/* ADDD4 800AD1D4 8FA70048 */  lw         $a3, 0x48($sp)
/* ADDD8 800AD1D8 0C02B768 */  jal        alSynSetVol
/* ADDDC 800AD1DC 8D040014 */   lw        $a0, 0x14($t0)
/* ADDE0 800AD1E0 24090005 */  addiu      $t1, $zero, 5
/* ADDE4 800AD1E4 A7A90030 */  sh         $t1, 0x30($sp)
/* ADDE8 800AD1E8 8FAA0044 */  lw         $t2, 0x44($sp)
/* ADDEC 800AD1EC AFAA0034 */  sw         $t2, 0x34($sp)
/* ADDF0 800AD1F0 8FA40040 */  lw         $a0, 0x40($sp)
/* ADDF4 800AD1F4 27A50030 */  addiu      $a1, $sp, 0x30
/* ADDF8 800AD1F8 8FA60048 */  lw         $a2, 0x48($sp)
/* ADDFC 800AD1FC 0C02B620 */  jal        alEvtqPostEvent
/* ADE00 800AD200 24840048 */   addiu     $a0, $a0, 0x48
/* ADE04 800AD204 10000001 */  b          .L800AD20C
/* ADE08 800AD208 00000000 */   nop
.L800AD20C:
/* ADE0C 800AD20C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADE10 800AD210 27BD0040 */  addiu      $sp, $sp, 0x40
/* ADE14 800AD214 03E00008 */  jr         $ra
/* ADE18 800AD218 00000000 */   nop

glabel __voiceNeedsNoteKill
/* ADE1C 800AD21C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADE20 800AD220 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADE24 800AD224 AFA40030 */  sw         $a0, 0x30($sp)
/* ADE28 800AD228 AFA50034 */  sw         $a1, 0x34($sp)
/* ADE2C 800AD22C AFA60038 */  sw         $a2, 0x38($sp)
/* ADE30 800AD230 AFA00020 */  sw         $zero, 0x20($sp)
/* ADE34 800AD234 240E0001 */  addiu      $t6, $zero, 1
/* ADE38 800AD238 A3AE001F */  sb         $t6, 0x1f($sp)
/* ADE3C 800AD23C 8FAF0030 */  lw         $t7, 0x30($sp)
/* ADE40 800AD240 8DF80050 */  lw         $t8, 0x50($t7)
/* ADE44 800AD244 AFB8002C */  sw         $t8, 0x2c($sp)
/* ADE48 800AD248 8FB9002C */  lw         $t9, 0x2c($sp)
/* ADE4C 800AD24C 13200033 */  beqz       $t9, .L800AD31C
/* ADE50 800AD250 00000000 */   nop
.L800AD254:
/* ADE54 800AD254 8FA8002C */  lw         $t0, 0x2c($sp)
/* ADE58 800AD258 8D090000 */  lw         $t1, ($t0)
/* ADE5C 800AD25C AFA90028 */  sw         $t1, 0x28($sp)
/* ADE60 800AD260 8FAA002C */  lw         $t2, 0x2c($sp)
/* ADE64 800AD264 AFAA0024 */  sw         $t2, 0x24($sp)
/* ADE68 800AD268 8FAC0024 */  lw         $t4, 0x24($sp)
/* ADE6C 800AD26C 8FAB0020 */  lw         $t3, 0x20($sp)
/* ADE70 800AD270 8D8D0008 */  lw         $t5, 8($t4)
/* ADE74 800AD274 016D7021 */  addu       $t6, $t3, $t5
/* ADE78 800AD278 AFAE0020 */  sw         $t6, 0x20($sp)
/* ADE7C 800AD27C 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADE80 800AD280 24010005 */  addiu      $at, $zero, 5
/* ADE84 800AD284 85F8000C */  lh         $t8, 0xc($t7)
/* ADE88 800AD288 1701001F */  bne        $t8, $at, .L800AD308
/* ADE8C 800AD28C 00000000 */   nop
/* ADE90 800AD290 8FB90024 */  lw         $t9, 0x24($sp)
/* ADE94 800AD294 8FA90034 */  lw         $t1, 0x34($sp)
/* ADE98 800AD298 8F280010 */  lw         $t0, 0x10($t9)
/* ADE9C 800AD29C 1509001A */  bne        $t0, $t1, .L800AD308
/* ADEA0 800AD2A0 00000000 */   nop
/* ADEA4 800AD2A4 8FAA0020 */  lw         $t2, 0x20($sp)
/* ADEA8 800AD2A8 8FAC0038 */  lw         $t4, 0x38($sp)
/* ADEAC 800AD2AC 018A082A */  slt        $at, $t4, $t2
/* ADEB0 800AD2B0 10200012 */  beqz       $at, .L800AD2FC
/* ADEB4 800AD2B4 00000000 */   nop
/* ADEB8 800AD2B8 8FAB0028 */  lw         $t3, 0x28($sp)
/* ADEBC 800AD2BC 11600007 */  beqz       $t3, .L800AD2DC
/* ADEC0 800AD2C0 00000000 */   nop
/* ADEC4 800AD2C4 8FAD0028 */  lw         $t5, 0x28($sp)
/* ADEC8 800AD2C8 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADECC 800AD2CC 8DAE0008 */  lw         $t6, 8($t5)
/* ADED0 800AD2D0 8DF80008 */  lw         $t8, 8($t7)
/* ADED4 800AD2D4 01D8C821 */  addu       $t9, $t6, $t8
/* ADED8 800AD2D8 ADB90008 */  sw         $t9, 8($t5)
.L800AD2DC:
/* ADEDC 800AD2DC 0C026EBB */  jal        alUnlink
/* ADEE0 800AD2E0 8FA4002C */   lw        $a0, 0x2c($sp)
/* ADEE4 800AD2E4 8FA50030 */  lw         $a1, 0x30($sp)
/* ADEE8 800AD2E8 8FA4002C */  lw         $a0, 0x2c($sp)
/* ADEEC 800AD2EC 0C026EAE */  jal        alLink
/* ADEF0 800AD2F0 24A50048 */   addiu     $a1, $a1, 0x48
/* ADEF4 800AD2F4 10000002 */  b          .L800AD300
/* ADEF8 800AD2F8 00000000 */   nop
.L800AD2FC:
/* ADEFC 800AD2FC A3A0001F */  sb         $zero, 0x1f($sp)
.L800AD300:
/* ADF00 800AD300 10000006 */  b          .L800AD31C
/* ADF04 800AD304 00000000 */   nop
.L800AD308:
/* ADF08 800AD308 8FA80028 */  lw         $t0, 0x28($sp)
/* ADF0C 800AD30C AFA8002C */  sw         $t0, 0x2c($sp)
/* ADF10 800AD310 8FA9002C */  lw         $t1, 0x2c($sp)
/* ADF14 800AD314 1520FFCF */  bnez       $t1, .L800AD254
/* ADF18 800AD318 00000000 */   nop
.L800AD31C:
/* ADF1C 800AD31C 10000003 */  b          .L800AD32C
/* ADF20 800AD320 93A2001F */   lbu       $v0, 0x1f($sp)
/* ADF24 800AD324 10000001 */  b          .L800AD32C
/* ADF28 800AD328 00000000 */   nop
.L800AD32C:
/* ADF2C 800AD32C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADF30 800AD330 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADF34 800AD334 03E00008 */  jr         $ra
/* ADF38 800AD338 00000000 */   nop

glabel __initFromBank
/* ADF3C 800AD33C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ADF40 800AD340 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADF44 800AD344 AFA40020 */  sw         $a0, 0x20($sp)
/* ADF48 800AD348 AFA50024 */  sw         $a1, 0x24($sp)
/* ADF4C 800AD34C AFA00018 */  sw         $zero, 0x18($sp)
/* ADF50 800AD350 8FAE0018 */  lw         $t6, 0x18($sp)
/* ADF54 800AD354 AFA0001C */  sw         $zero, 0x1c($sp)
/* ADF58 800AD358 15C0000C */  bnez       $t6, .L800AD38C
/* ADF5C 800AD35C 00000000 */   nop
.L800AD360:
/* ADF60 800AD360 8FB8001C */  lw         $t8, 0x1c($sp)
/* ADF64 800AD364 8FAF0024 */  lw         $t7, 0x24($sp)
/* ADF68 800AD368 0018C880 */  sll        $t9, $t8, 2
/* ADF6C 800AD36C 01F94021 */  addu       $t0, $t7, $t9
/* ADF70 800AD370 8D09000C */  lw         $t1, 0xc($t0)
/* ADF74 800AD374 AFA90018 */  sw         $t1, 0x18($sp)
/* ADF78 800AD378 8FAA001C */  lw         $t2, 0x1c($sp)
/* ADF7C 800AD37C 8FAC0018 */  lw         $t4, 0x18($sp)
/* ADF80 800AD380 254B0001 */  addiu      $t3, $t2, 1
/* ADF84 800AD384 1180FFF6 */  beqz       $t4, .L800AD360
/* ADF88 800AD388 AFAB001C */   sw        $t3, 0x1c($sp)
.L800AD38C:
/* ADF8C 800AD38C 8FAD0020 */  lw         $t5, 0x20($sp)
/* ADF90 800AD390 AFA0001C */  sw         $zero, 0x1c($sp)
/* ADF94 800AD394 91AE0034 */  lbu        $t6, 0x34($t5)
/* ADF98 800AD398 19C00010 */  blez       $t6, .L800AD3DC
/* ADF9C 800AD39C 00000000 */   nop
.L800AD3A0:
/* ADFA0 800AD3A0 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFA4 800AD3A4 0C02B525 */  jal        __resetPerfChanState
/* ADFA8 800AD3A8 8FA5001C */   lw        $a1, 0x1c($sp)
/* ADFAC 800AD3AC 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFB0 800AD3B0 8FA50018 */  lw         $a1, 0x18($sp)
/* ADFB4 800AD3B4 0C02B509 */  jal        __setInstChanState
/* ADFB8 800AD3B8 8FA6001C */   lw        $a2, 0x1c($sp)
/* ADFBC 800AD3BC 8FB8001C */  lw         $t8, 0x1c($sp)
/* ADFC0 800AD3C0 8FB90020 */  lw         $t9, 0x20($sp)
/* ADFC4 800AD3C4 270F0001 */  addiu      $t7, $t8, 1
/* ADFC8 800AD3C8 AFAF001C */  sw         $t7, 0x1c($sp)
/* ADFCC 800AD3CC 93280034 */  lbu        $t0, 0x34($t9)
/* ADFD0 800AD3D0 01E8082A */  slt        $at, $t7, $t0
/* ADFD4 800AD3D4 1420FFF2 */  bnez       $at, .L800AD3A0
/* ADFD8 800AD3D8 00000000 */   nop
.L800AD3DC:
/* ADFDC 800AD3DC 8FA90024 */  lw         $t1, 0x24($sp)
/* ADFE0 800AD3E0 8D2A0008 */  lw         $t2, 8($t1)
/* ADFE4 800AD3E4 11400009 */  beqz       $t2, .L800AD40C
/* ADFE8 800AD3E8 00000000 */   nop
/* ADFEC 800AD3EC 8FA40020 */  lw         $a0, 0x20($sp)
/* ADFF0 800AD3F0 0C02B525 */  jal        __resetPerfChanState
/* ADFF4 800AD3F4 8FA5001C */   lw        $a1, 0x1c($sp)
/* ADFF8 800AD3F8 8FAB0024 */  lw         $t3, 0x24($sp)
/* ADFFC 800AD3FC 8FA40020 */  lw         $a0, 0x20($sp)
/* AE000 800AD400 24060009 */  addiu      $a2, $zero, 9
/* AE004 800AD404 0C02B509 */  jal        __setInstChanState
/* AE008 800AD408 8D650008 */   lw        $a1, 8($t3)
.L800AD40C:
/* AE00C 800AD40C 10000001 */  b          .L800AD414
/* AE010 800AD410 00000000 */   nop
.L800AD414:
/* AE014 800AD414 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE018 800AD418 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE01C 800AD41C 03E00008 */  jr         $ra
/* AE020 800AD420 00000000 */   nop

glabel __setInstChanState
/* AE024 800AD424 8C8E0060 */  lw         $t6, 0x60($a0)
/* AE028 800AD428 00067900 */  sll        $t7, $a2, 4
/* AE02C 800AD42C 01CFC021 */  addu       $t8, $t6, $t7
/* AE030 800AD430 AF050000 */  sw         $a1, ($t8)
/* AE034 800AD434 8C880060 */  lw         $t0, 0x60($a0)
/* AE038 800AD438 90B90001 */  lbu        $t9, 1($a1)
/* AE03C 800AD43C 00064900 */  sll        $t1, $a2, 4
/* AE040 800AD440 01095021 */  addu       $t2, $t0, $t1
/* AE044 800AD444 A1590007 */  sb         $t9, 7($t2)
/* AE048 800AD448 8C8C0060 */  lw         $t4, 0x60($a0)
/* AE04C 800AD44C 90AB0000 */  lbu        $t3, ($a1)
/* AE050 800AD450 00066900 */  sll        $t5, $a2, 4
/* AE054 800AD454 018D7021 */  addu       $t6, $t4, $t5
/* AE058 800AD458 A1CB0009 */  sb         $t3, 9($t6)
/* AE05C 800AD45C 8C980060 */  lw         $t8, 0x60($a0)
/* AE060 800AD460 90AF0002 */  lbu        $t7, 2($a1)
/* AE064 800AD464 00064100 */  sll        $t0, $a2, 4
/* AE068 800AD468 03084821 */  addu       $t1, $t8, $t0
/* AE06C 800AD46C A12F0008 */  sb         $t7, 8($t1)
/* AE070 800AD470 8C8A0060 */  lw         $t2, 0x60($a0)
/* AE074 800AD474 84B9000C */  lh         $t9, 0xc($a1)
/* AE078 800AD478 00066100 */  sll        $t4, $a2, 4
/* AE07C 800AD47C 014C6821 */  addu       $t5, $t2, $t4
/* AE080 800AD480 A5B90004 */  sh         $t9, 4($t5)
/* AE084 800AD484 03E00008 */  jr         $ra
/* AE088 800AD488 00000000 */   nop

glabel func_800AD48C
/* AE08C 800AD48C 03E00008 */  jr         $ra
/* AE090 800AD490 00000000 */   nop

glabel __resetPerfChanState
/* AE094 800AD494 8C8E0060 */  lw         $t6, 0x60($a0)
/* AE098 800AD498 00057900 */  sll        $t7, $a1, 4
/* AE09C 800AD49C 01CFC021 */  addu       $t8, $t6, $t7
/* AE0A0 800AD4A0 A3000006 */  sb         $zero, 6($t8)
/* AE0A4 800AD4A4 8C990060 */  lw         $t9, 0x60($a0)
/* AE0A8 800AD4A8 00054100 */  sll        $t0, $a1, 4
/* AE0AC 800AD4AC 03284821 */  addu       $t1, $t9, $t0
/* AE0B0 800AD4B0 A120000A */  sb         $zero, 0xa($t1)
/* AE0B4 800AD4B4 8C8B0060 */  lw         $t3, 0x60($a0)
/* AE0B8 800AD4B8 00056100 */  sll        $t4, $a1, 4
/* AE0BC 800AD4BC 240A0040 */  addiu      $t2, $zero, 0x40
/* AE0C0 800AD4C0 016C6821 */  addu       $t5, $t3, $t4
/* AE0C4 800AD4C4 A1AA0007 */  sb         $t2, 7($t5)
/* AE0C8 800AD4C8 8C8F0060 */  lw         $t7, 0x60($a0)
/* AE0CC 800AD4CC 0005C100 */  sll        $t8, $a1, 4
/* AE0D0 800AD4D0 240E007F */  addiu      $t6, $zero, 0x7f
/* AE0D4 800AD4D4 01F8C821 */  addu       $t9, $t7, $t8
/* AE0D8 800AD4D8 A32E0009 */  sb         $t6, 9($t9)
/* AE0DC 800AD4DC 8C890060 */  lw         $t1, 0x60($a0)
/* AE0E0 800AD4E0 00055900 */  sll        $t3, $a1, 4
/* AE0E4 800AD4E4 24080005 */  addiu      $t0, $zero, 5
/* AE0E8 800AD4E8 012B6021 */  addu       $t4, $t1, $t3
/* AE0EC 800AD4EC A1880008 */  sb         $t0, 8($t4)
/* AE0F0 800AD4F0 8C8A0060 */  lw         $t2, 0x60($a0)
/* AE0F4 800AD4F4 00056900 */  sll        $t5, $a1, 4
/* AE0F8 800AD4F8 014D7821 */  addu       $t7, $t2, $t5
/* AE0FC 800AD4FC A1E0000B */  sb         $zero, 0xb($t7)
/* AE100 800AD500 8C8E0060 */  lw         $t6, 0x60($a0)
/* AE104 800AD504 0005C900 */  sll        $t9, $a1, 4
/* AE108 800AD508 241800C8 */  addiu      $t8, $zero, 0xc8
/* AE10C 800AD50C 01D94821 */  addu       $t1, $t6, $t9
/* AE110 800AD510 A5380004 */  sh         $t8, 4($t1)
/* AE114 800AD514 8C8B0060 */  lw         $t3, 0x60($a0)
/* AE118 800AD518 3C013F80 */  lui        $at, 0x3f80
/* AE11C 800AD51C 44812000 */  mtc1       $at, $f4
/* AE120 800AD520 00054100 */  sll        $t0, $a1, 4
/* AE124 800AD524 01686021 */  addu       $t4, $t3, $t0
/* AE128 800AD528 E584000C */  swc1       $f4, 0xc($t4)
/* AE12C 800AD52C 03E00008 */  jr         $ra
/* AE130 800AD530 00000000 */   nop

glabel func_800AD534
/* AE134 800AD534 03E00008 */  jr         $ra
/* AE138 800AD538 00000000 */   nop

glabel __initChanState
/* AE13C 800AD53C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE140 800AD540 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE144 800AD544 AFA40020 */  sw         $a0, 0x20($sp)
/* AE148 800AD548 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE14C 800AD54C AFA0001C */  sw         $zero, 0x1c($sp)
/* AE150 800AD550 91CF0034 */  lbu        $t7, 0x34($t6)
/* AE154 800AD554 19E00012 */  blez       $t7, .L800AD5A0
/* AE158 800AD558 00000000 */   nop
.L800AD55C:
/* AE15C 800AD55C 8FB80020 */  lw         $t8, 0x20($sp)
/* AE160 800AD560 8FA8001C */  lw         $t0, 0x1c($sp)
/* AE164 800AD564 8F190060 */  lw         $t9, 0x60($t8)
/* AE168 800AD568 00084900 */  sll        $t1, $t0, 4
/* AE16C 800AD56C 03295021 */  addu       $t2, $t9, $t1
/* AE170 800AD570 AD400000 */  sw         $zero, ($t2)
/* AE174 800AD574 8FA40020 */  lw         $a0, 0x20($sp)
/* AE178 800AD578 0C02B525 */  jal        __resetPerfChanState
/* AE17C 800AD57C 8FA5001C */   lw        $a1, 0x1c($sp)
/* AE180 800AD580 8FAB001C */  lw         $t3, 0x1c($sp)
/* AE184 800AD584 8FAD0020 */  lw         $t5, 0x20($sp)
/* AE188 800AD588 256C0001 */  addiu      $t4, $t3, 1
/* AE18C 800AD58C AFAC001C */  sw         $t4, 0x1c($sp)
/* AE190 800AD590 91AE0034 */  lbu        $t6, 0x34($t5)
/* AE194 800AD594 018E082A */  slt        $at, $t4, $t6
/* AE198 800AD598 1420FFF0 */  bnez       $at, .L800AD55C
/* AE19C 800AD59C 00000000 */   nop
.L800AD5A0:
/* AE1A0 800AD5A0 10000001 */  b          .L800AD5A8
/* AE1A4 800AD5A4 00000000 */   nop
.L800AD5A8:
/* AE1A8 800AD5A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE1AC 800AD5AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE1B0 800AD5B0 03E00008 */  jr         $ra
/* AE1B4 800AD5B4 00000000 */   nop

glabel __seqpStopOsc
/* AE1B8 800AD5B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE1BC 800AD5BC AFBF0014 */  sw         $ra, 0x14($sp)
/* AE1C0 800AD5C0 AFA40028 */  sw         $a0, 0x28($sp)
/* AE1C4 800AD5C4 AFA5002C */  sw         $a1, 0x2c($sp)
/* AE1C8 800AD5C8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE1CC 800AD5CC 8DCF0050 */  lw         $t7, 0x50($t6)
/* AE1D0 800AD5D0 AFAF0024 */  sw         $t7, 0x24($sp)
/* AE1D4 800AD5D4 8FB80024 */  lw         $t8, 0x24($sp)
/* AE1D8 800AD5D8 13000040 */  beqz       $t8, .L800AD6DC
/* AE1DC 800AD5DC 00000000 */   nop
.L800AD5E0:
/* AE1E0 800AD5E0 8FB90024 */  lw         $t9, 0x24($sp)
/* AE1E4 800AD5E4 8F280000 */  lw         $t0, ($t9)
/* AE1E8 800AD5E8 AFA80020 */  sw         $t0, 0x20($sp)
/* AE1EC 800AD5EC 8FA90024 */  lw         $t1, 0x24($sp)
/* AE1F0 800AD5F0 852A000C */  lh         $t2, 0xc($t1)
/* AE1F4 800AD5F4 A7AA001E */  sh         $t2, 0x1e($sp)
/* AE1F8 800AD5F8 87AB001E */  lh         $t3, 0x1e($sp)
/* AE1FC 800AD5FC 24010016 */  addiu      $at, $zero, 0x16
/* AE200 800AD600 11610004 */  beq        $t3, $at, .L800AD614
/* AE204 800AD604 00000000 */   nop
/* AE208 800AD608 24010017 */  addiu      $at, $zero, 0x17
/* AE20C 800AD60C 1561002E */  bne        $t3, $at, .L800AD6C8
/* AE210 800AD610 00000000 */   nop
.L800AD614:
/* AE214 800AD614 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE218 800AD618 8FAE002C */  lw         $t6, 0x2c($sp)
/* AE21C 800AD61C 8D8D0010 */  lw         $t5, 0x10($t4)
/* AE220 800AD620 15AE0029 */  bne        $t5, $t6, .L800AD6C8
/* AE224 800AD624 00000000 */   nop
/* AE228 800AD628 8FB80028 */  lw         $t8, 0x28($sp)
/* AE22C 800AD62C 8FAF0024 */  lw         $t7, 0x24($sp)
/* AE230 800AD630 8F190078 */  lw         $t9, 0x78($t8)
/* AE234 800AD634 8DE40014 */  lw         $a0, 0x14($t7)
/* AE238 800AD638 0320F809 */  jalr       $t9
/* AE23C 800AD63C 00000000 */   nop
/* AE240 800AD640 0C026EBB */  jal        alUnlink
/* AE244 800AD644 8FA40024 */   lw        $a0, 0x24($sp)
/* AE248 800AD648 8FA80020 */  lw         $t0, 0x20($sp)
/* AE24C 800AD64C 11000007 */  beqz       $t0, .L800AD66C
/* AE250 800AD650 00000000 */   nop
/* AE254 800AD654 8FA90020 */  lw         $t1, 0x20($sp)
/* AE258 800AD658 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE25C 800AD65C 8D2A0008 */  lw         $t2, 8($t1)
/* AE260 800AD660 8D6C0008 */  lw         $t4, 8($t3)
/* AE264 800AD664 014C6821 */  addu       $t5, $t2, $t4
/* AE268 800AD668 AD2D0008 */  sw         $t5, 8($t1)
.L800AD66C:
/* AE26C 800AD66C 8FA50028 */  lw         $a1, 0x28($sp)
/* AE270 800AD670 8FA40024 */  lw         $a0, 0x24($sp)
/* AE274 800AD674 0C026EAE */  jal        alLink
/* AE278 800AD678 24A50048 */   addiu     $a1, $a1, 0x48
/* AE27C 800AD67C 87AE001E */  lh         $t6, 0x1e($sp)
/* AE280 800AD680 24010016 */  addiu      $at, $zero, 0x16
/* AE284 800AD684 15C10006 */  bne        $t6, $at, .L800AD6A0
/* AE288 800AD688 00000000 */   nop
/* AE28C 800AD68C 8FAF002C */  lw         $t7, 0x2c($sp)
/* AE290 800AD690 91F80037 */  lbu        $t8, 0x37($t7)
/* AE294 800AD694 331900FE */  andi       $t9, $t8, 0xfe
/* AE298 800AD698 10000005 */  b          .L800AD6B0
/* AE29C 800AD69C A1F90037 */   sb        $t9, 0x37($t7)
.L800AD6A0:
/* AE2A0 800AD6A0 8FA8002C */  lw         $t0, 0x2c($sp)
/* AE2A4 800AD6A4 910B0037 */  lbu        $t3, 0x37($t0)
/* AE2A8 800AD6A8 316A00FD */  andi       $t2, $t3, 0xfd
/* AE2AC 800AD6AC A10A0037 */  sb         $t2, 0x37($t0)
.L800AD6B0:
/* AE2B0 800AD6B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* AE2B4 800AD6B4 918D0037 */  lbu        $t5, 0x37($t4)
/* AE2B8 800AD6B8 15A00003 */  bnez       $t5, .L800AD6C8
/* AE2BC 800AD6BC 00000000 */   nop
/* AE2C0 800AD6C0 10000008 */  b          .L800AD6E4
/* AE2C4 800AD6C4 00000000 */   nop
.L800AD6C8:
/* AE2C8 800AD6C8 8FA90020 */  lw         $t1, 0x20($sp)
/* AE2CC 800AD6CC AFA90024 */  sw         $t1, 0x24($sp)
/* AE2D0 800AD6D0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE2D4 800AD6D4 15C0FFC2 */  bnez       $t6, .L800AD5E0
/* AE2D8 800AD6D8 00000000 */   nop
.L800AD6DC:
/* AE2DC 800AD6DC 10000001 */  b          .L800AD6E4
/* AE2E0 800AD6E0 00000000 */   nop
.L800AD6E4:
/* AE2E4 800AD6E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE2E8 800AD6E8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE2EC 800AD6EC 03E00008 */  jr         $ra
/* AE2F0 800AD6F0 00000000 */   nop

glabel func_800AD6F4
/* AE2F4 800AD6F4 AFA50004 */  sw         $a1, 4($sp)
/* AE2F8 800AD6F8 8C8E0018 */  lw         $t6, 0x18($a0)
/* AE2FC 800AD6FC 11C00009 */  beqz       $t6, .L800AD724
/* AE300 800AD700 00000000 */   nop
/* AE304 800AD704 8C8F0018 */  lw         $t7, 0x18($a0)
/* AE308 800AD708 C7A40004 */  lwc1       $f4, 4($sp)
/* AE30C 800AD70C C5E60014 */  lwc1       $f6, 0x14($t7)
/* AE310 800AD710 46062202 */  mul.s      $f8, $f4, $f6
/* AE314 800AD714 4600428D */  trunc.w.s  $f10, $f8
/* AE318 800AD718 44195000 */  mfc1       $t9, $f10
/* AE31C 800AD71C 10000003 */  b          .L800AD72C
/* AE320 800AD720 AC990024 */   sw        $t9, 0x24($a0)
.L800AD724:
/* AE324 800AD724 240801E8 */  addiu      $t0, $zero, 0x1e8
/* AE328 800AD728 AC880024 */  sw         $t0, 0x24($a0)
.L800AD72C:
/* AE32C 800AD72C 10000001 */  b          .L800AD734
/* AE330 800AD730 00000000 */   nop
.L800AD734:
/* AE334 800AD734 03E00008 */  jr         $ra
/* AE338 800AD738 00000000 */   nop
/* AE33C 800AD73C 00000000 */  nop
