glabel func_8003C328
/* 3CF28 8003C328 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3CF2C 8003C32C AFA40038 */  sw         $a0, 0x38($sp)
/* 3CF30 8003C330 97AE003A */  lhu        $t6, 0x3a($sp)
/* 3CF34 8003C334 3C08800F */  lui        $t0, 0x800f
/* 3CF38 8003C338 25CFFFFF */  addiu      $t7, $t6, -1
/* 3CF3C 8003C33C 000E5080 */  sll        $t2, $t6, 2
/* 3CF40 8003C340 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 3CF44 8003C344 014E5023 */  subu       $t2, $t2, $t6
/* 3CF48 8003C348 000A5080 */  sll        $t2, $t2, 2
/* 3CF4C 8003C34C 0018C880 */  sll        $t9, $t8, 2
/* 3CF50 8003C350 0338C823 */  subu       $t9, $t9, $t8
/* 3CF54 8003C354 014E5021 */  addu       $t2, $t2, $t6
/* 3CF58 8003C358 000A5080 */  sll        $t2, $t2, 2
/* 3CF5C 8003C35C 0019C880 */  sll        $t9, $t9, 2
/* 3CF60 8003C360 0338C821 */  addu       $t9, $t9, $t8
/* 3CF64 8003C364 014E5023 */  subu       $t2, $t2, $t6
/* 3CF68 8003C368 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 3CF6C 8003C36C 000A50C0 */  sll        $t2, $t2, 3
/* 3CF70 8003C370 0019C880 */  sll        $t9, $t9, 2
/* 3CF74 8003C374 0338C823 */  subu       $t9, $t9, $t8
/* 3CF78 8003C378 010A3821 */  addu       $a3, $t0, $t2
/* 3CF7C 8003C37C 8CEB0090 */  lw         $t3, 0x90($a3)
/* 3CF80 8003C380 0019C8C0 */  sll        $t9, $t9, 3
/* 3CF84 8003C384 01194821 */  addu       $t1, $t0, $t9
/* 3CF88 8003C388 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CF8C 8003C38C AFA90020 */  sw         $t1, 0x20($sp)
/* 3CF90 8003C390 256C0001 */  addiu      $t4, $t3, 1
/* 3CF94 8003C394 AD2C0090 */  sw         $t4, 0x90($t1)
/* 3CF98 8003C398 8CEF0150 */  lw         $t7, 0x150($a3)
/* 3CF9C 8003C39C 3C017FFF */  lui        $at, 0x7fff
/* 3CFA0 8003C3A0 94E300D0 */  lhu        $v1, 0xd0($a3)
/* 3CFA4 8003C3A4 3421FFFF */  ori        $at, $at, 0xffff
/* 3CFA8 8003C3A8 01E1C024 */  and        $t8, $t7, $at
/* 3CFAC 8003C3AC ACF80150 */  sw         $t8, 0x150($a3)
/* 3CFB0 8003C3B0 10600006 */  beqz       $v1, .L8003C3CC
/* 3CFB4 8003C3B4 00601025 */   or        $v0, $v1, $zero
/* 3CFB8 8003C3B8 24010001 */  addiu      $at, $zero, 1
/* 3CFBC 8003C3BC 1041005D */  beq        $v0, $at, .L8003C534
/* 3CFC0 8003C3C0 00000000 */   nop
/* 3CFC4 8003C3C4 10000451 */  b          .L8003D50C
/* 3CFC8 8003C3C8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8003C3CC:
/* 3CFCC 8003C3CC 444EF800 */  cfc1       $t6, $31
/* 3CFD0 8003C3D0 24020001 */  addiu      $v0, $zero, 1
/* 3CFD4 8003C3D4 44C2F800 */  ctc1       $v0, $31
/* 3CFD8 8003C3D8 C4E40110 */  lwc1       $f4, 0x110($a3)
/* 3CFDC 8003C3DC 24790001 */  addiu      $t9, $v1, 1
/* 3CFE0 8003C3E0 460021A4 */  cvt.w.s    $f6, $f4
/* 3CFE4 8003C3E4 24090003 */  addiu      $t1, $zero, 3
/* 3CFE8 8003C3E8 4442F800 */  cfc1       $v0, $31
/* 3CFEC 8003C3EC A4F900D0 */  sh         $t9, 0xd0($a3)
/* 3CFF0 8003C3F0 30420078 */  andi       $v0, $v0, 0x78
/* 3CFF4 8003C3F4 10400013 */  beqz       $v0, .L8003C444
/* 3CFF8 8003C3F8 ACE90080 */   sw        $t1, 0x80($a3)
/* 3CFFC 8003C3FC 3C014F00 */  lui        $at, 0x4f00
/* 3D000 8003C400 44813000 */  mtc1       $at, $f6
/* 3D004 8003C404 24020001 */  addiu      $v0, $zero, 1
/* 3D008 8003C408 46062181 */  sub.s      $f6, $f4, $f6
/* 3D00C 8003C40C 3C018000 */  lui        $at, 0x8000
/* 3D010 8003C410 44C2F800 */  ctc1       $v0, $31
/* 3D014 8003C414 00000000 */  nop
/* 3D018 8003C418 460031A4 */  cvt.w.s    $f6, $f6
/* 3D01C 8003C41C 4442F800 */  cfc1       $v0, $31
/* 3D020 8003C420 00000000 */  nop
/* 3D024 8003C424 30420078 */  andi       $v0, $v0, 0x78
/* 3D028 8003C428 14400004 */  bnez       $v0, .L8003C43C
/* 3D02C 8003C42C 00000000 */   nop
/* 3D030 8003C430 44023000 */  mfc1       $v0, $f6
/* 3D034 8003C434 10000007 */  b          .L8003C454
/* 3D038 8003C438 00411025 */   or        $v0, $v0, $at
.L8003C43C:
/* 3D03C 8003C43C 10000005 */  b          .L8003C454
/* 3D040 8003C440 2402FFFF */   addiu     $v0, $zero, -1
.L8003C444:
/* 3D044 8003C444 44023000 */  mfc1       $v0, $f6
/* 3D048 8003C448 00000000 */  nop
/* 3D04C 8003C44C 0440FFFB */  bltz       $v0, .L8003C43C
/* 3D050 8003C450 00000000 */   nop
.L8003C454:
/* 3D054 8003C454 304AFFFF */  andi       $t2, $v0, 0xffff
/* 3D058 8003C458 44CEF800 */  ctc1       $t6, $31
/* 3D05C 8003C45C 314B0800 */  andi       $t3, $t2, 0x800
/* 3D060 8003C460 1160001A */  beqz       $t3, .L8003C4CC
/* 3D064 8003C464 ACEA0150 */   sw        $t2, 0x150($a3)
/* 3D068 8003C468 240C0001 */  addiu      $t4, $zero, 1
/* 3D06C 8003C46C 240D02CA */  addiu      $t5, $zero, 0x2ca
/* 3D070 8003C470 A4EC0094 */  sh         $t4, 0x94($a3)
/* 3D074 8003C474 A4ED0084 */  sh         $t5, 0x84($a3)
/* 3D078 8003C478 3C01800F */  lui        $at, %hi(D_800EBB70)
/* 3D07C 8003C47C C428BB70 */  lwc1       $f8, %lo(D_800EBB70)($at)
/* 3D080 8003C480 3C01800F */  lui        $at, %hi(D_800EBB74)
/* 3D084 8003C484 E4E800B4 */  swc1       $f8, 0xb4($a3)
/* 3D088 8003C488 C42ABB74 */  lwc1       $f10, %lo(D_800EBB74)($at)
/* 3D08C 8003C48C 31420300 */  andi       $v0, $t2, 0x300
/* 3D090 8003C490 01401825 */  or         $v1, $t2, $zero
/* 3D094 8003C494 10400006 */  beqz       $v0, .L8003C4B0
/* 3D098 8003C498 E4EA00B8 */   swc1      $f10, 0xb8($a3)
/* 3D09C 8003C49C 24010200 */  addiu      $at, $zero, 0x200
/* 3D0A0 8003C4A0 10410007 */  beq        $v0, $at, .L8003C4C0
/* 3D0A4 8003C4A4 24180002 */   addiu     $t8, $zero, 2
/* 3D0A8 8003C4A8 1000000E */  b          .L8003C4E4
/* 3D0AC 8003C4AC 30620380 */   andi      $v0, $v1, 0x380
.L8003C4B0:
/* 3D0B0 8003C4B0 240F0001 */  addiu      $t7, $zero, 1
/* 3D0B4 8003C4B4 8CE30150 */  lw         $v1, 0x150($a3)
/* 3D0B8 8003C4B8 10000009 */  b          .L8003C4E0
/* 3D0BC 8003C4BC ACEF0190 */   sw        $t7, 0x190($a3)
.L8003C4C0:
/* 3D0C0 8003C4C0 8CE30150 */  lw         $v1, 0x150($a3)
/* 3D0C4 8003C4C4 10000006 */  b          .L8003C4E0
/* 3D0C8 8003C4C8 ACF80190 */   sw        $t8, 0x190($a3)
.L8003C4CC:
/* 3D0CC 8003C4CC 24190008 */  addiu      $t9, $zero, 8
/* 3D0D0 8003C4D0 24093006 */  addiu      $t1, $zero, 0x3006
/* 3D0D4 8003C4D4 8CE30150 */  lw         $v1, 0x150($a3)
/* 3D0D8 8003C4D8 A4F90094 */  sh         $t9, 0x94($a3)
/* 3D0DC 8003C4DC A4E90084 */  sh         $t1, 0x84($a3)
.L8003C4E0:
/* 3D0E0 8003C4E0 30620380 */  andi       $v0, $v1, 0x380
.L8003C4E4:
/* 3D0E4 8003C4E4 3C0EFFFE */  lui        $t6, 0xfffe
/* 3D0E8 8003C4E8 00025400 */  sll        $t2, $v0, 0x10
/* 3D0EC 8003C4EC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 3D0F0 8003C4F0 35CE8000 */  ori        $t6, $t6, 0x8000
/* 3D0F4 8003C4F4 3C0B0010 */  lui        $t3, 0x10
/* 3D0F8 8003C4F8 3C0C0002 */  lui        $t4, 2
/* 3D0FC 8003C4FC ACEE0090 */  sw         $t6, 0x90($a3)
/* 3D100 8003C500 ACEA015C */  sw         $t2, 0x15c($a3)
/* 3D104 8003C504 ACEA0170 */  sw         $t2, 0x170($a3)
/* 3D108 8003C508 ACEB0160 */  sw         $t3, 0x160($a3)
/* 3D10C 8003C50C ACEC0164 */  sw         $t4, 0x164($a3)
/* 3D110 8003C510 240D0006 */  addiu      $t5, $zero, 6
/* 3D114 8003C514 A1ED00DE */  sb         $t5, 0xde($t7)
/* 3D118 8003C518 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3D11C 8003C51C AFA7001C */  sw         $a3, 0x1c($sp)
/* 3D120 8003C520 0C000DB2 */  jal        func_800036C8
/* 3D124 8003C524 24040082 */   addiu     $a0, $zero, 0x82
/* 3D128 8003C528 3C08800F */  lui        $t0, %hi(gActors)
/* 3D12C 8003C52C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3D130 8003C530 2508F510 */  addiu      $t0, $t0, %lo(gActors)
.L8003C534:
/* 3D134 8003C534 8CF80150 */  lw         $t8, 0x150($a3)
/* 3D138 8003C538 3C060010 */  lui        $a2, 0x10
/* 3D13C 8003C53C 33190800 */  andi       $t9, $t8, 0x800
/* 3D140 8003C540 13200009 */  beqz       $t9, .L8003C568
/* 3D144 8003C544 00000000 */   nop
/* 3D148 8003C548 8CE40170 */  lw         $a0, 0x170($a3)
/* 3D14C 8003C54C 8CE5015C */  lw         $a1, 0x15c($a3)
/* 3D150 8003C550 0C00A634 */  jal        func_800298D0
/* 3D154 8003C554 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3D158 8003C558 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3D15C 8003C55C 3C08800F */  lui        $t0, %hi(gActors)
/* 3D160 8003C560 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 3D164 8003C564 ACE2015C */  sw         $v0, 0x15c($a3)
.L8003C568:
/* 3D168 8003C568 8CE9015C */  lw         $t1, 0x15c($a3)
/* 3D16C 8003C56C AFA0002C */  sw         $zero, 0x2c($sp)
/* 3D170 8003C570 05210004 */  bgez       $t1, .L8003C584
/* 3D174 8003C574 00097403 */   sra       $t6, $t1, 0x10
/* 3D178 8003C578 3401FFFF */  ori        $at, $zero, 0xffff
/* 3D17C 8003C57C 00290821 */  addu       $at, $at, $t1
/* 3D180 8003C580 00017403 */  sra        $t6, $at, 0x10
.L8003C584:
/* 3D184 8003C584 25CBFF00 */  addiu      $t3, $t6, -0x100
/* 3D188 8003C588 448B8000 */  mtc1       $t3, $f16
/* 3D18C 8003C58C 3C01800F */  lui        $at, %hi(D_800EBB78)
/* 3D190 8003C590 468084A1 */  cvt.d.w    $f18, $f16
/* 3D194 8003C594 C425BB78 */  lwc1       $f5, %lo(D_800EBB78)($at)
/* 3D198 8003C598 C424BB7C */  lwc1       $f4, -0x4484($at)
/* 3D19C 8003C59C AFAE0030 */  sw         $t6, 0x30($sp)
/* 3D1A0 8003C5A0 46249182 */  mul.d      $f6, $f18, $f4
/* 3D1A4 8003C5A4 AFAB0018 */  sw         $t3, 0x18($sp)
/* 3D1A8 8003C5A8 AFA00028 */  sw         $zero, 0x28($sp)
/* 3D1AC 8003C5AC 24010080 */  addiu      $at, $zero, 0x80
/* 3D1B0 8003C5B0 46203220 */  cvt.s.d    $f8, $f6
/* 3D1B4 8003C5B4 11C0000D */  beqz       $t6, .L8003C5EC
/* 3D1B8 8003C5B8 E4E800C4 */   swc1      $f8, 0xc4($a3)
/* 3D1BC 8003C5BC 11C10015 */  beq        $t6, $at, .L8003C614
/* 3D1C0 8003C5C0 24010100 */   addiu     $at, $zero, 0x100
/* 3D1C4 8003C5C4 11C1000E */  beq        $t6, $at, .L8003C600
/* 3D1C8 8003C5C8 24010180 */   addiu     $at, $zero, 0x180
/* 3D1CC 8003C5CC 11C10011 */  beq        $t6, $at, .L8003C614
/* 3D1D0 8003C5D0 24010200 */   addiu     $at, $zero, 0x200
/* 3D1D4 8003C5D4 11C10005 */  beq        $t6, $at, .L8003C5EC
/* 3D1D8 8003C5D8 24010300 */   addiu     $at, $zero, 0x300
/* 3D1DC 8003C5DC 11C10009 */  beq        $t6, $at, .L8003C604
/* 3D1E0 8003C5E0 8FB80020 */   lw        $t8, 0x20($sp)
/* 3D1E4 8003C5E4 1000001C */  b          .L8003C658
/* 3D1E8 8003C5E8 8CE30160 */   lw        $v1, 0x160($a3)
.L8003C5EC:
/* 3D1EC 8003C5EC 8FAD0020 */  lw         $t5, 0x20($sp)
/* 3D1F0 8003C5F0 00000000 */  nop
/* 3D1F4 8003C5F4 8DAF0158 */  lw         $t7, 0x158($t5)
/* 3D1F8 8003C5F8 10000016 */  b          .L8003C654
/* 3D1FC 8003C5FC AFAF0028 */   sw        $t7, 0x28($sp)
.L8003C600:
/* 3D200 8003C600 8FB80020 */  lw         $t8, 0x20($sp)
.L8003C604:
/* 3D204 8003C604 00000000 */  nop
/* 3D208 8003C608 8F190154 */  lw         $t9, 0x154($t8)
/* 3D20C 8003C60C 10000011 */  b          .L8003C654
/* 3D210 8003C610 AFB9002C */   sw        $t9, 0x2c($sp)
.L8003C614:
/* 3D214 8003C614 8FA90020 */  lw         $t1, 0x20($sp)
/* 3D218 8003C618 00000000 */  nop
/* 3D21C 8003C61C 8D2E0154 */  lw         $t6, 0x154($t1)
/* 3D220 8003C620 00000000 */  nop
/* 3D224 8003C624 05C10003 */  bgez       $t6, .L8003C634
/* 3D228 8003C628 000E5043 */   sra       $t2, $t6, 1
/* 3D22C 8003C62C 25C10001 */  addiu      $at, $t6, 1
/* 3D230 8003C630 00015043 */  sra        $t2, $at, 1
.L8003C634:
/* 3D234 8003C634 AFAA002C */  sw         $t2, 0x2c($sp)
/* 3D238 8003C638 8D2B0158 */  lw         $t3, 0x158($t1)
/* 3D23C 8003C63C 00000000 */  nop
/* 3D240 8003C640 05610003 */  bgez       $t3, .L8003C650
/* 3D244 8003C644 000B6043 */   sra       $t4, $t3, 1
/* 3D248 8003C648 25610001 */  addiu      $at, $t3, 1
/* 3D24C 8003C64C 00016043 */  sra        $t4, $at, 1
.L8003C650:
/* 3D250 8003C650 AFAC0028 */  sw         $t4, 0x28($sp)
.L8003C654:
/* 3D254 8003C654 8CE30160 */  lw         $v1, 0x160($a3)
.L8003C658:
/* 3D258 8003C658 3C040040 */  lui        $a0, 0x40
/* 3D25C 8003C65C 0064082A */  slt        $at, $v1, $a0
/* 3D260 8003C660 10200165 */  beqz       $at, .L8003CBF8
/* 3D264 8003C664 00000000 */   nop
/* 3D268 8003C668 C4E0011C */  lwc1       $f0, 0x11c($a3)
/* 3D26C 8003C66C 44805000 */  mtc1       $zero, $f10
/* 3D270 8003C670 00837823 */  subu       $t7, $a0, $v1
/* 3D274 8003C674 460A003C */  c.lt.s     $f0, $f10
/* 3D278 8003C678 3C013F80 */  lui        $at, 0x3f80
/* 3D27C 8003C67C 45000009 */  bc1f       .L8003C6A4
/* 3D280 8003C680 00000000 */   nop
/* 3D284 8003C684 8CED0164 */  lw         $t5, 0x164($a3)
/* 3D288 8003C688 05E10003 */  bgez       $t7, .L8003C698
/* 3D28C 8003C68C 000FC143 */   sra       $t8, $t7, 5
/* 3D290 8003C690 25E1001F */  addiu      $at, $t7, 0x1f
/* 3D294 8003C694 0001C143 */  sra        $t8, $at, 5
.L8003C698:
/* 3D298 8003C698 01B8C821 */  addu       $t9, $t5, $t8
/* 3D29C 8003C69C 10000005 */  b          .L8003C6B4
/* 3D2A0 8003C6A0 ACF90164 */   sw        $t9, 0x164($a3)
.L8003C6A4:
/* 3D2A4 8003C6A4 44818000 */  mtc1       $at, $f16
/* 3D2A8 8003C6A8 8CE30160 */  lw         $v1, 0x160($a3)
/* 3D2AC 8003C6AC 46100481 */  sub.s      $f18, $f0, $f16
/* 3D2B0 8003C6B0 E4F2011C */  swc1       $f18, 0x11c($a3)
.L8003C6B4:
/* 3D2B4 8003C6B4 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D2B8 8003C6B8 3C010040 */  lui        $at, 0x40
/* 3D2BC 8003C6BC 34210001 */  ori        $at, $at, 1
/* 3D2C0 8003C6C0 00627021 */  addu       $t6, $v1, $v0
/* 3D2C4 8003C6C4 01C1082A */  slt        $at, $t6, $at
/* 3D2C8 8003C6C8 14200148 */  bnez       $at, .L8003CBEC
/* 3D2CC 8003C6CC ACEE0160 */   sw        $t6, 0x160($a3)
/* 3D2D0 8003C6D0 8CE90098 */  lw         $t1, 0x98($a3)
/* 3D2D4 8003C6D4 3C010004 */  lui        $at, 4
/* 3D2D8 8003C6D8 312B0200 */  andi       $t3, $t1, 0x200
/* 3D2DC 8003C6DC 1160012A */  beqz       $t3, .L8003CB88
/* 3D2E0 8003C6E0 34210001 */   ori       $at, $at, 1
/* 3D2E4 8003C6E4 0041082A */  slt        $at, $v0, $at
/* 3D2E8 8003C6E8 14200127 */  bnez       $at, .L8003CB88
/* 3D2EC 8003C6EC 24040082 */   addiu     $a0, $zero, 0x82
/* 3D2F0 8003C6F0 8D0C0098 */  lw         $t4, 0x98($t0)
/* 3D2F4 8003C6F4 3C010001 */  lui        $at, 1
/* 3D2F8 8003C6F8 01817825 */  or         $t7, $t4, $at
/* 3D2FC 8003C6FC AD0F0098 */  sw         $t7, 0x98($t0)
/* 3D300 8003C700 8CED0150 */  lw         $t5, 0x150($a3)
/* 3D304 8003C704 3C018000 */  lui        $at, 0x8000
/* 3D308 8003C708 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3D30C 8003C70C 01A1C025 */  or         $t8, $t5, $at
/* 3D310 8003C710 ACF80150 */  sw         $t8, 0x150($a3)
/* 3D314 8003C714 0C000DB2 */  jal        func_800036C8
/* 3D318 8003C718 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3D31C 8003C71C 8FB90030 */  lw         $t9, 0x30($sp)
/* 3D320 8003C720 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3D324 8003C724 3C08800F */  lui        $t0, %hi(gActors)
/* 3D328 8003C728 13200013 */  beqz       $t9, .L8003C778
/* 3D32C 8003C72C 2508F510 */   addiu     $t0, $t0, %lo(gActors)
/* 3D330 8003C730 24010080 */  addiu      $at, $zero, 0x80
/* 3D334 8003C734 1321006D */  beq        $t9, $at, .L8003C8EC
/* 3D338 8003C738 24010100 */   addiu     $at, $zero, 0x100
/* 3D33C 8003C73C 13210028 */  beq        $t9, $at, .L8003C7E0
/* 3D340 8003C740 24010180 */   addiu     $at, $zero, 0x180
/* 3D344 8003C744 13210092 */  beq        $t9, $at, .L8003C990
/* 3D348 8003C748 24010200 */   addiu     $at, $zero, 0x200
/* 3D34C 8003C74C 13210039 */  beq        $t9, $at, .L8003C834
/* 3D350 8003C750 24010280 */   addiu     $at, $zero, 0x280
/* 3D354 8003C754 132100B9 */  beq        $t9, $at, .L8003CA3C
/* 3D358 8003C758 24010300 */   addiu     $at, $zero, 0x300
/* 3D35C 8003C75C 1321004E */  beq        $t9, $at, .L8003C898
/* 3D360 8003C760 24010380 */   addiu     $at, $zero, 0x380
/* 3D364 8003C764 132100DD */  beq        $t9, $at, .L8003CADC
/* 3D368 8003C768 00000000 */   nop
/* 3D36C 8003C76C 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D370 8003C770 10000106 */  b          .L8003CB8C
/* 3D374 8003C774 3C010001 */   lui       $at, 1
.L8003C778:
/* 3D378 8003C778 8D0E0080 */  lw         $t6, 0x80($t0)
/* 3D37C 8003C77C 2401FFDF */  addiu      $at, $zero, -0x21
/* 3D380 8003C780 01C15024 */  and        $t2, $t6, $at
/* 3D384 8003C784 AD0A0080 */  sw         $t2, 0x80($t0)
/* 3D388 8003C788 8CE90164 */  lw         $t1, 0x164($a3)
/* 3D38C 8003C78C 3C013FF8 */  lui        $at, 0x3ff8
/* 3D390 8003C790 44892000 */  mtc1       $t1, $f4
/* 3D394 8003C794 44815800 */  mtc1       $at, $f11
/* 3D398 8003C798 468021A0 */  cvt.s.w    $f6, $f4
/* 3D39C 8003C79C 44805000 */  mtc1       $zero, $f10
/* 3D3A0 8003C7A0 3C0C0003 */  lui        $t4, 3
/* 3D3A4 8003C7A4 46003221 */  cvt.d.s    $f8, $f6
/* 3D3A8 8003C7A8 462A4402 */  mul.d      $f16, $f8, $f10
/* 3D3AC 8003C7AC AD0C00FC */  sw         $t4, 0xfc($t0)
/* 3D3B0 8003C7B0 444BF800 */  cfc1       $t3, $31
/* 3D3B4 8003C7B4 00000000 */  nop
/* 3D3B8 8003C7B8 35610003 */  ori        $at, $t3, 3
/* 3D3BC 8003C7BC 38210002 */  xori       $at, $at, 2
/* 3D3C0 8003C7C0 44C1F800 */  ctc1       $at, $31
/* 3D3C4 8003C7C4 00000000 */  nop
/* 3D3C8 8003C7C8 462084A4 */  cvt.w.d    $f18, $f16
/* 3D3CC 8003C7CC E51200F8 */  swc1       $f18, 0xf8($t0)
/* 3D3D0 8003C7D0 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D3D4 8003C7D4 44CBF800 */  ctc1       $t3, $31
/* 3D3D8 8003C7D8 100000EC */  b          .L8003CB8C
/* 3D3DC 8003C7DC 3C010001 */   lui       $at, 1
.L8003C7E0:
/* 3D3E0 8003C7E0 AD0000F8 */  sw         $zero, 0xf8($t0)
/* 3D3E4 8003C7E4 8CEF0164 */  lw         $t7, 0x164($a3)
/* 3D3E8 8003C7E8 3C013FF8 */  lui        $at, 0x3ff8
/* 3D3EC 8003C7EC 448F2000 */  mtc1       $t7, $f4
/* 3D3F0 8003C7F0 44815800 */  mtc1       $at, $f11
/* 3D3F4 8003C7F4 468021A0 */  cvt.s.w    $f6, $f4
/* 3D3F8 8003C7F8 44805000 */  mtc1       $zero, $f10
/* 3D3FC 8003C7FC 46003221 */  cvt.d.s    $f8, $f6
/* 3D400 8003C800 462A4402 */  mul.d      $f16, $f8, $f10
/* 3D404 8003C804 444DF800 */  cfc1       $t5, $31
/* 3D408 8003C808 00000000 */  nop
/* 3D40C 8003C80C 35A10003 */  ori        $at, $t5, 3
/* 3D410 8003C810 38210002 */  xori       $at, $at, 2
/* 3D414 8003C814 44C1F800 */  ctc1       $at, $31
/* 3D418 8003C818 00000000 */  nop
/* 3D41C 8003C81C 462084A4 */  cvt.w.d    $f18, $f16
/* 3D420 8003C820 E51200FC */  swc1       $f18, 0xfc($t0)
/* 3D424 8003C824 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D428 8003C828 44CDF800 */  ctc1       $t5, $31
/* 3D42C 8003C82C 100000D7 */  b          .L8003CB8C
/* 3D430 8003C830 3C010001 */   lui       $at, 1
.L8003C834:
/* 3D434 8003C834 8D180080 */  lw         $t8, 0x80($t0)
/* 3D438 8003C838 3C01BFF8 */  lui        $at, 0xbff8
/* 3D43C 8003C83C 37190020 */  ori        $t9, $t8, 0x20
/* 3D440 8003C840 AD190080 */  sw         $t9, 0x80($t0)
/* 3D444 8003C844 8CEE0164 */  lw         $t6, 0x164($a3)
/* 3D448 8003C848 44815800 */  mtc1       $at, $f11
/* 3D44C 8003C84C 448E2000 */  mtc1       $t6, $f4
/* 3D450 8003C850 44805000 */  mtc1       $zero, $f10
/* 3D454 8003C854 468021A0 */  cvt.s.w    $f6, $f4
/* 3D458 8003C858 3C090003 */  lui        $t1, 3
/* 3D45C 8003C85C AD0900FC */  sw         $t1, 0xfc($t0)
/* 3D460 8003C860 46003221 */  cvt.d.s    $f8, $f6
/* 3D464 8003C864 462A4402 */  mul.d      $f16, $f8, $f10
/* 3D468 8003C868 444AF800 */  cfc1       $t2, $31
/* 3D46C 8003C86C 00000000 */  nop
/* 3D470 8003C870 35410003 */  ori        $at, $t2, 3
/* 3D474 8003C874 38210002 */  xori       $at, $at, 2
/* 3D478 8003C878 44C1F800 */  ctc1       $at, $31
/* 3D47C 8003C87C 00000000 */  nop
/* 3D480 8003C880 462084A4 */  cvt.w.d    $f18, $f16
/* 3D484 8003C884 E51200F8 */  swc1       $f18, 0xf8($t0)
/* 3D488 8003C888 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D48C 8003C88C 44CAF800 */  ctc1       $t2, $31
/* 3D490 8003C890 100000BE */  b          .L8003CB8C
/* 3D494 8003C894 3C010001 */   lui       $at, 1
.L8003C898:
/* 3D498 8003C898 AD0000F8 */  sw         $zero, 0xf8($t0)
/* 3D49C 8003C89C 8CEB0164 */  lw         $t3, 0x164($a3)
/* 3D4A0 8003C8A0 3C01BFF8 */  lui        $at, 0xbff8
/* 3D4A4 8003C8A4 448B2000 */  mtc1       $t3, $f4
/* 3D4A8 8003C8A8 44815800 */  mtc1       $at, $f11
/* 3D4AC 8003C8AC 468021A0 */  cvt.s.w    $f6, $f4
/* 3D4B0 8003C8B0 44805000 */  mtc1       $zero, $f10
/* 3D4B4 8003C8B4 46003221 */  cvt.d.s    $f8, $f6
/* 3D4B8 8003C8B8 462A4402 */  mul.d      $f16, $f8, $f10
/* 3D4BC 8003C8BC 444CF800 */  cfc1       $t4, $31
/* 3D4C0 8003C8C0 00000000 */  nop
/* 3D4C4 8003C8C4 35810003 */  ori        $at, $t4, 3
/* 3D4C8 8003C8C8 38210002 */  xori       $at, $at, 2
/* 3D4CC 8003C8CC 44C1F800 */  ctc1       $at, $31
/* 3D4D0 8003C8D0 00000000 */  nop
/* 3D4D4 8003C8D4 462084A4 */  cvt.w.d    $f18, $f16
/* 3D4D8 8003C8D8 E51200FC */  swc1       $f18, 0xfc($t0)
/* 3D4DC 8003C8DC 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D4E0 8003C8E0 44CCF800 */  ctc1       $t4, $31
/* 3D4E4 8003C8E4 100000A9 */  b          .L8003CB8C
/* 3D4E8 8003C8E8 3C010001 */   lui       $at, 1
.L8003C8EC:
/* 3D4EC 8003C8EC 3C01800F */  lui        $at, %hi(D_800EBB80)
/* 3D4F0 8003C8F0 C421BB80 */  lwc1       $f1, %lo(D_800EBB80)($at)
/* 3D4F4 8003C8F4 C420BB84 */  lwc1       $f0, -0x447c($at)
/* 3D4F8 8003C8F8 8D0F0080 */  lw         $t7, 0x80($t0)
/* 3D4FC 8003C8FC 2401FFDF */  addiu      $at, $zero, -0x21
/* 3D500 8003C900 01E16824 */  and        $t5, $t7, $at
/* 3D504 8003C904 AD0D0080 */  sw         $t5, 0x80($t0)
/* 3D508 8003C908 8CF80164 */  lw         $t8, 0x164($a3)
/* 3D50C 8003C90C 00000000 */  nop
/* 3D510 8003C910 44982000 */  mtc1       $t8, $f4
/* 3D514 8003C914 00000000 */  nop
/* 3D518 8003C918 468021A0 */  cvt.s.w    $f6, $f4
/* 3D51C 8003C91C 46003221 */  cvt.d.s    $f8, $f6
/* 3D520 8003C920 46204282 */  mul.d      $f10, $f8, $f0
/* 3D524 8003C924 4459F800 */  cfc1       $t9, $31
/* 3D528 8003C928 00000000 */  nop
/* 3D52C 8003C92C 37210003 */  ori        $at, $t9, 3
/* 3D530 8003C930 38210002 */  xori       $at, $at, 2
/* 3D534 8003C934 44C1F800 */  ctc1       $at, $31
/* 3D538 8003C938 00000000 */  nop
/* 3D53C 8003C93C 46205424 */  cvt.w.d    $f16, $f10
/* 3D540 8003C940 E51000F8 */  swc1       $f16, 0xf8($t0)
/* 3D544 8003C944 8CEE0164 */  lw         $t6, 0x164($a3)
/* 3D548 8003C948 44D9F800 */  ctc1       $t9, $31
/* 3D54C 8003C94C 448E9000 */  mtc1       $t6, $f18
/* 3D550 8003C950 00000000 */  nop
/* 3D554 8003C954 46809120 */  cvt.s.w    $f4, $f18
/* 3D558 8003C958 460021A1 */  cvt.d.s    $f6, $f4
/* 3D55C 8003C95C 46203202 */  mul.d      $f8, $f6, $f0
/* 3D560 8003C960 444AF800 */  cfc1       $t2, $31
/* 3D564 8003C964 00000000 */  nop
/* 3D568 8003C968 35410003 */  ori        $at, $t2, 3
/* 3D56C 8003C96C 38210002 */  xori       $at, $at, 2
/* 3D570 8003C970 44C1F800 */  ctc1       $at, $31
/* 3D574 8003C974 00000000 */  nop
/* 3D578 8003C978 462042A4 */  cvt.w.d    $f10, $f8
/* 3D57C 8003C97C E50A00FC */  swc1       $f10, 0xfc($t0)
/* 3D580 8003C980 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D584 8003C984 44CAF800 */  ctc1       $t2, $31
/* 3D588 8003C988 10000080 */  b          .L8003CB8C
/* 3D58C 8003C98C 3C010001 */   lui       $at, 1
.L8003C990:
/* 3D590 8003C990 3C01800F */  lui        $at, %hi(D_800EBB88)
/* 3D594 8003C994 C421BB88 */  lwc1       $f1, %lo(D_800EBB88)($at)
/* 3D598 8003C998 C420BB8C */  lwc1       $f0, -0x4474($at)
/* 3D59C 8003C99C 8D090080 */  lw         $t1, 0x80($t0)
/* 3D5A0 8003C9A0 3C01800F */  lui        $at, %hi(D_800EBB90)
/* 3D5A4 8003C9A4 C423BB90 */  lwc1       $f3, %lo(D_800EBB90)($at)
/* 3D5A8 8003C9A8 C422BB94 */  lwc1       $f2, -0x446c($at)
/* 3D5AC 8003C9AC 352B0020 */  ori        $t3, $t1, 0x20
/* 3D5B0 8003C9B0 AD0B0080 */  sw         $t3, 0x80($t0)
/* 3D5B4 8003C9B4 8CEC0164 */  lw         $t4, 0x164($a3)
/* 3D5B8 8003C9B8 00000000 */  nop
/* 3D5BC 8003C9BC 448C8000 */  mtc1       $t4, $f16
/* 3D5C0 8003C9C0 00000000 */  nop
/* 3D5C4 8003C9C4 468084A0 */  cvt.s.w    $f18, $f16
/* 3D5C8 8003C9C8 46009121 */  cvt.d.s    $f4, $f18
/* 3D5CC 8003C9CC 46222182 */  mul.d      $f6, $f4, $f2
/* 3D5D0 8003C9D0 444FF800 */  cfc1       $t7, $31
/* 3D5D4 8003C9D4 00000000 */  nop
/* 3D5D8 8003C9D8 35E10003 */  ori        $at, $t7, 3
/* 3D5DC 8003C9DC 38210002 */  xori       $at, $at, 2
/* 3D5E0 8003C9E0 44C1F800 */  ctc1       $at, $31
/* 3D5E4 8003C9E4 00000000 */  nop
/* 3D5E8 8003C9E8 46203224 */  cvt.w.d    $f8, $f6
/* 3D5EC 8003C9EC E50800F8 */  swc1       $f8, 0xf8($t0)
/* 3D5F0 8003C9F0 8CED0164 */  lw         $t5, 0x164($a3)
/* 3D5F4 8003C9F4 44CFF800 */  ctc1       $t7, $31
/* 3D5F8 8003C9F8 448D5000 */  mtc1       $t5, $f10
/* 3D5FC 8003C9FC 00000000 */  nop
/* 3D600 8003CA00 46805420 */  cvt.s.w    $f16, $f10
/* 3D604 8003CA04 460084A1 */  cvt.d.s    $f18, $f16
/* 3D608 8003CA08 46209102 */  mul.d      $f4, $f18, $f0
/* 3D60C 8003CA0C 4458F800 */  cfc1       $t8, $31
/* 3D610 8003CA10 00000000 */  nop
/* 3D614 8003CA14 37010003 */  ori        $at, $t8, 3
/* 3D618 8003CA18 38210002 */  xori       $at, $at, 2
/* 3D61C 8003CA1C 44C1F800 */  ctc1       $at, $31
/* 3D620 8003CA20 00000000 */  nop
/* 3D624 8003CA24 462021A4 */  cvt.w.d    $f6, $f4
/* 3D628 8003CA28 E50600FC */  swc1       $f6, 0xfc($t0)
/* 3D62C 8003CA2C 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D630 8003CA30 44D8F800 */  ctc1       $t8, $31
/* 3D634 8003CA34 10000055 */  b          .L8003CB8C
/* 3D638 8003CA38 3C010001 */   lui       $at, 1
.L8003CA3C:
/* 3D63C 8003CA3C 8D190080 */  lw         $t9, 0x80($t0)
/* 3D640 8003CA40 3C01800F */  lui        $at, %hi(D_800EBB98)
/* 3D644 8003CA44 C423BB98 */  lwc1       $f3, %lo(D_800EBB98)($at)
/* 3D648 8003CA48 C422BB9C */  lwc1       $f2, -0x4464($at)
/* 3D64C 8003CA4C 372E0020 */  ori        $t6, $t9, 0x20
/* 3D650 8003CA50 AD0E0080 */  sw         $t6, 0x80($t0)
/* 3D654 8003CA54 8CEA0164 */  lw         $t2, 0x164($a3)
/* 3D658 8003CA58 00000000 */  nop
/* 3D65C 8003CA5C 448A4000 */  mtc1       $t2, $f8
/* 3D660 8003CA60 00000000 */  nop
/* 3D664 8003CA64 468042A0 */  cvt.s.w    $f10, $f8
/* 3D668 8003CA68 46005421 */  cvt.d.s    $f16, $f10
/* 3D66C 8003CA6C 46228482 */  mul.d      $f18, $f16, $f2
/* 3D670 8003CA70 4449F800 */  cfc1       $t1, $31
/* 3D674 8003CA74 00000000 */  nop
/* 3D678 8003CA78 35210003 */  ori        $at, $t1, 3
/* 3D67C 8003CA7C 38210002 */  xori       $at, $at, 2
/* 3D680 8003CA80 44C1F800 */  ctc1       $at, $31
/* 3D684 8003CA84 00000000 */  nop
/* 3D688 8003CA88 46209124 */  cvt.w.d    $f4, $f18
/* 3D68C 8003CA8C E50400F8 */  swc1       $f4, 0xf8($t0)
/* 3D690 8003CA90 8CEB0164 */  lw         $t3, 0x164($a3)
/* 3D694 8003CA94 44C9F800 */  ctc1       $t1, $31
/* 3D698 8003CA98 448B3000 */  mtc1       $t3, $f6
/* 3D69C 8003CA9C 00000000 */  nop
/* 3D6A0 8003CAA0 46803220 */  cvt.s.w    $f8, $f6
/* 3D6A4 8003CAA4 460042A1 */  cvt.d.s    $f10, $f8
/* 3D6A8 8003CAA8 46225402 */  mul.d      $f16, $f10, $f2
/* 3D6AC 8003CAAC 444CF800 */  cfc1       $t4, $31
/* 3D6B0 8003CAB0 00000000 */  nop
/* 3D6B4 8003CAB4 35810003 */  ori        $at, $t4, 3
/* 3D6B8 8003CAB8 38210002 */  xori       $at, $at, 2
/* 3D6BC 8003CABC 44C1F800 */  ctc1       $at, $31
/* 3D6C0 8003CAC0 00000000 */  nop
/* 3D6C4 8003CAC4 462084A4 */  cvt.w.d    $f18, $f16
/* 3D6C8 8003CAC8 E51200FC */  swc1       $f18, 0xfc($t0)
/* 3D6CC 8003CACC 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D6D0 8003CAD0 44CCF800 */  ctc1       $t4, $31
/* 3D6D4 8003CAD4 1000002D */  b          .L8003CB8C
/* 3D6D8 8003CAD8 3C010001 */   lui       $at, 1
.L8003CADC:
/* 3D6DC 8003CADC 3C01800F */  lui        $at, %hi(D_800EBBA0)
/* 3D6E0 8003CAE0 C421BBA0 */  lwc1       $f1, %lo(D_800EBBA0)($at)
/* 3D6E4 8003CAE4 C420BBA4 */  lwc1       $f0, -0x445c($at)
/* 3D6E8 8003CAE8 3C01800F */  lui        $at, %hi(D_800EBBA8)
/* 3D6EC 8003CAEC C423BBA8 */  lwc1       $f3, %lo(D_800EBBA8)($at)
/* 3D6F0 8003CAF0 C422BBAC */  lwc1       $f2, -0x4454($at)
/* 3D6F4 8003CAF4 8D0F0080 */  lw         $t7, 0x80($t0)
/* 3D6F8 8003CAF8 2401FFDF */  addiu      $at, $zero, -0x21
/* 3D6FC 8003CAFC 01E16824 */  and        $t5, $t7, $at
/* 3D700 8003CB00 AD0D0080 */  sw         $t5, 0x80($t0)
/* 3D704 8003CB04 8CF80164 */  lw         $t8, 0x164($a3)
/* 3D708 8003CB08 00000000 */  nop
/* 3D70C 8003CB0C 44982000 */  mtc1       $t8, $f4
/* 3D710 8003CB10 00000000 */  nop
/* 3D714 8003CB14 468021A0 */  cvt.s.w    $f6, $f4
/* 3D718 8003CB18 46003221 */  cvt.d.s    $f8, $f6
/* 3D71C 8003CB1C 46204282 */  mul.d      $f10, $f8, $f0
/* 3D720 8003CB20 4459F800 */  cfc1       $t9, $31
/* 3D724 8003CB24 00000000 */  nop
/* 3D728 8003CB28 37210003 */  ori        $at, $t9, 3
/* 3D72C 8003CB2C 38210002 */  xori       $at, $at, 2
/* 3D730 8003CB30 44C1F800 */  ctc1       $at, $31
/* 3D734 8003CB34 00000000 */  nop
/* 3D738 8003CB38 46205424 */  cvt.w.d    $f16, $f10
/* 3D73C 8003CB3C E51000F8 */  swc1       $f16, 0xf8($t0)
/* 3D740 8003CB40 8CEE0164 */  lw         $t6, 0x164($a3)
/* 3D744 8003CB44 44D9F800 */  ctc1       $t9, $31
/* 3D748 8003CB48 448E9000 */  mtc1       $t6, $f18
/* 3D74C 8003CB4C 00000000 */  nop
/* 3D750 8003CB50 46809120 */  cvt.s.w    $f4, $f18
/* 3D754 8003CB54 460021A1 */  cvt.d.s    $f6, $f4
/* 3D758 8003CB58 46223202 */  mul.d      $f8, $f6, $f2
/* 3D75C 8003CB5C 444AF800 */  cfc1       $t2, $31
/* 3D760 8003CB60 00000000 */  nop
/* 3D764 8003CB64 35410003 */  ori        $at, $t2, 3
/* 3D768 8003CB68 38210002 */  xori       $at, $at, 2
/* 3D76C 8003CB6C 44C1F800 */  ctc1       $at, $31
/* 3D770 8003CB70 00000000 */  nop
/* 3D774 8003CB74 462042A4 */  cvt.w.d    $f10, $f8
/* 3D778 8003CB78 E50A00FC */  swc1       $f10, 0xfc($t0)
/* 3D77C 8003CB7C 44CAF800 */  ctc1       $t2, $31
/* 3D780 8003CB80 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D784 8003CB84 00000000 */  nop
.L8003CB88:
/* 3D788 8003CB88 3C010001 */  lui        $at, 1
.L8003CB8C:
/* 3D78C 8003CB8C 34210001 */  ori        $at, $at, 1
/* 3D790 8003CB90 0041082A */  slt        $at, $v0, $at
/* 3D794 8003CB94 10200004 */  beqz       $at, .L8003CBA8
/* 3D798 8003CB98 3C01FFFF */   lui       $at, 0xffff
/* 3D79C 8003CB9C 0041082A */  slt        $at, $v0, $at
/* 3D7A0 8003CBA0 10200012 */  beqz       $at, .L8003CBEC
/* 3D7A4 8003CBA4 00000000 */   nop
.L8003CBA8:
/* 3D7A8 8003CBA8 44828000 */  mtc1       $v0, $f16
/* 3D7AC 8003CBAC 3C01800F */  lui        $at, %hi(D_800EBBB0)
/* 3D7B0 8003CBB0 468084A0 */  cvt.s.w    $f18, $f16
/* 3D7B4 8003CBB4 C427BBB0 */  lwc1       $f7, %lo(D_800EBBB0)($at)
/* 3D7B8 8003CBB8 C426BBB4 */  lwc1       $f6, -0x444c($at)
/* 3D7BC 8003CBBC 46009121 */  cvt.d.s    $f4, $f18
/* 3D7C0 8003CBC0 46262202 */  mul.d      $f8, $f4, $f6
/* 3D7C4 8003CBC4 4449F800 */  cfc1       $t1, $31
/* 3D7C8 8003CBC8 00000000 */  nop
/* 3D7CC 8003CBCC 35210003 */  ori        $at, $t1, 3
/* 3D7D0 8003CBD0 38210002 */  xori       $at, $at, 2
/* 3D7D4 8003CBD4 44C1F800 */  ctc1       $at, $31
/* 3D7D8 8003CBD8 00000000 */  nop
/* 3D7DC 8003CBDC 462042A4 */  cvt.w.d    $f10, $f8
/* 3D7E0 8003CBE0 44C9F800 */  ctc1       $t1, $31
/* 3D7E4 8003CBE4 E4EA0164 */  swc1       $f10, 0x164($a3)
/* 3D7E8 8003CBE8 00000000 */  nop
.L8003CBEC:
/* 3D7EC 8003CBEC 8CE30160 */  lw         $v1, 0x160($a3)
/* 3D7F0 8003CBF0 10000038 */  b          .L8003CCD4
/* 3D7F4 8003CBF4 3C020006 */   lui       $v0, 6
.L8003CBF8:
/* 3D7F8 8003CBF8 C4E0011C */  lwc1       $f0, 0x11c($a3)
/* 3D7FC 8003CBFC 44808000 */  mtc1       $zero, $f16
/* 3D800 8003CC00 3C013F80 */  lui        $at, 0x3f80
/* 3D804 8003CC04 4610003C */  c.lt.s     $f0, $f16
/* 3D808 8003CC08 00000000 */  nop
/* 3D80C 8003CC0C 4500000B */  bc1f       .L8003CC3C
/* 3D810 8003CC10 00000000 */   nop
/* 3D814 8003CC14 3C01FFC0 */  lui        $at, 0xffc0
/* 3D818 8003CC18 8CEB0164 */  lw         $t3, 0x164($a3)
/* 3D81C 8003CC1C 00616021 */  addu       $t4, $v1, $at
/* 3D820 8003CC20 05810003 */  bgez       $t4, .L8003CC30
/* 3D824 8003CC24 000C7943 */   sra       $t7, $t4, 5
/* 3D828 8003CC28 2581001F */  addiu      $at, $t4, 0x1f
/* 3D82C 8003CC2C 00017943 */  sra        $t7, $at, 5
.L8003CC30:
/* 3D830 8003CC30 016F6823 */  subu       $t5, $t3, $t7
/* 3D834 8003CC34 10000005 */  b          .L8003CC4C
/* 3D838 8003CC38 ACED0164 */   sw        $t5, 0x164($a3)
.L8003CC3C:
/* 3D83C 8003CC3C 44819000 */  mtc1       $at, $f18
/* 3D840 8003CC40 8CE30160 */  lw         $v1, 0x160($a3)
/* 3D844 8003CC44 46120101 */  sub.s      $f4, $f0, $f18
/* 3D848 8003CC48 E4E4011C */  swc1       $f4, 0x11c($a3)
.L8003CC4C:
/* 3D84C 8003CC4C 8CE20164 */  lw         $v0, 0x164($a3)
/* 3D850 8003CC50 00000000 */  nop
/* 3D854 8003CC54 0062C021 */  addu       $t8, $v1, $v0
/* 3D858 8003CC58 0304082A */  slt        $at, $t8, $a0
/* 3D85C 8003CC5C ACF80160 */  sw         $t8, 0x160($a3)
/* 3D860 8003CC60 1020001B */  beqz       $at, .L8003CCD0
/* 3D864 8003CC64 03001825 */   or        $v1, $t8, $zero
/* 3D868 8003CC68 3C010001 */  lui        $at, 1
/* 3D86C 8003CC6C 34210001 */  ori        $at, $at, 1
/* 3D870 8003CC70 0041082A */  slt        $at, $v0, $at
/* 3D874 8003CC74 10200004 */  beqz       $at, .L8003CC88
/* 3D878 8003CC78 3C01FFFF */   lui       $at, 0xffff
/* 3D87C 8003CC7C 0041082A */  slt        $at, $v0, $at
/* 3D880 8003CC80 10200013 */  beqz       $at, .L8003CCD0
/* 3D884 8003CC84 00000000 */   nop
.L8003CC88:
/* 3D888 8003CC88 44823000 */  mtc1       $v0, $f6
/* 3D88C 8003CC8C 3C01800F */  lui        $at, %hi(D_800EBBB8)
/* 3D890 8003CC90 46803220 */  cvt.s.w    $f8, $f6
/* 3D894 8003CC94 C431BBB8 */  lwc1       $f17, %lo(D_800EBBB8)($at)
/* 3D898 8003CC98 C430BBBC */  lwc1       $f16, -0x4444($at)
/* 3D89C 8003CC9C 460042A1 */  cvt.d.s    $f10, $f8
/* 3D8A0 8003CCA0 46305482 */  mul.d      $f18, $f10, $f16
/* 3D8A4 8003CCA4 8CE30160 */  lw         $v1, 0x160($a3)
/* 3D8A8 8003CCA8 4459F800 */  cfc1       $t9, $31
/* 3D8AC 8003CCAC 00000000 */  nop
/* 3D8B0 8003CCB0 37210003 */  ori        $at, $t9, 3
/* 3D8B4 8003CCB4 38210002 */  xori       $at, $at, 2
/* 3D8B8 8003CCB8 44C1F800 */  ctc1       $at, $31
/* 3D8BC 8003CCBC 00000000 */  nop
/* 3D8C0 8003CCC0 46209124 */  cvt.w.d    $f4, $f18
/* 3D8C4 8003CCC4 44D9F800 */  ctc1       $t9, $31
/* 3D8C8 8003CCC8 E4E40164 */  swc1       $f4, 0x164($a3)
/* 3D8CC 8003CCCC 00000000 */  nop
.L8003CCD0:
/* 3D8D0 8003CCD0 3C020006 */  lui        $v0, 6
.L8003CCD4:
/* 3D8D4 8003CCD4 0062082A */  slt        $at, $v1, $v0
/* 3D8D8 8003CCD8 10200003 */  beqz       $at, .L8003CCE8
/* 3D8DC 8003CCDC 3C0E0080 */   lui       $t6, 0x80
/* 3D8E0 8003CCE0 ACE20160 */  sw         $v0, 0x160($a3)
/* 3D8E4 8003CCE4 00401825 */  or         $v1, $v0, $zero
.L8003CCE8:
/* 3D8E8 8003CCE8 3C010080 */  lui        $at, 0x80
/* 3D8EC 8003CCEC 34210001 */  ori        $at, $at, 1
/* 3D8F0 8003CCF0 0061082A */  slt        $at, $v1, $at
/* 3D8F4 8003CCF4 14200002 */  bnez       $at, .L8003CD00
/* 3D8F8 8003CCF8 00000000 */   nop
/* 3D8FC 8003CCFC ACEE0160 */  sw         $t6, 0x160($a3)
.L8003CD00:
/* 3D900 8003CD00 8CE20098 */  lw         $v0, 0x98($a3)
/* 3D904 8003CD04 00000000 */  nop
/* 3D908 8003CD08 304A0200 */  andi       $t2, $v0, 0x200
/* 3D90C 8003CD0C 1140016D */  beqz       $t2, .L8003D2C4
/* 3D910 8003CD10 00024B80 */   sll       $t1, $v0, 0xe
/* 3D914 8003CD14 0521016B */  bgez       $t1, .L8003D2C4
/* 3D918 8003CD18 00000000 */   nop
/* 3D91C 8003CD1C 8FAC0030 */  lw         $t4, 0x30($sp)
/* 3D920 8003CD20 00003025 */  or         $a2, $zero, $zero
/* 3D924 8003CD24 11800011 */  beqz       $t4, .L8003CD6C
/* 3D928 8003CD28 24010080 */   addiu     $at, $zero, 0x80
/* 3D92C 8003CD2C 1181009C */  beq        $t4, $at, .L8003CFA0
/* 3D930 8003CD30 24010100 */   addiu     $at, $zero, 0x100
/* 3D934 8003CD34 11810036 */  beq        $t4, $at, .L8003CE10
/* 3D938 8003CD38 24010180 */   addiu     $at, $zero, 0x180
/* 3D93C 8003CD3C 118100CF */  beq        $t4, $at, .L8003D07C
/* 3D940 8003CD40 24010200 */   addiu     $at, $zero, 0x200
/* 3D944 8003CD44 11810058 */  beq        $t4, $at, .L8003CEA8
/* 3D948 8003CD48 24010280 */   addiu     $at, $zero, 0x280
/* 3D94C 8003CD4C 11810103 */  beq        $t4, $at, .L8003D15C
/* 3D950 8003CD50 24010300 */   addiu     $at, $zero, 0x300
/* 3D954 8003CD54 1181007D */  beq        $t4, $at, .L8003CF4C
/* 3D958 8003CD58 24010380 */   addiu     $at, $zero, 0x380
/* 3D95C 8003CD5C 11810119 */  beq        $t4, $at, .L8003D1C4
/* 3D960 8003CD60 00000000 */   nop
/* 3D964 8003CD64 1000012F */  b          .L8003D224
/* 3D968 8003CD68 24010001 */   addiu     $at, $zero, 1
.L8003CD6C:
/* 3D96C 8003CD6C A7A60034 */  sh         $a2, 0x34($sp)
/* 3D970 8003CD70 0C0121BD */  jal        func_800486F4
/* 3D974 8003CD74 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3D978 8003CD78 97A60034 */  lhu        $a2, 0x34($sp)
/* 3D97C 8003CD7C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3D980 8003CD80 1040000B */  beqz       $v0, .L8003CDB0
/* 3D984 8003CD84 3C0B0080 */   lui       $t3, 0x80
/* 3D988 8003CD88 24010004 */  addiu      $at, $zero, 4
/* 3D98C 8003CD8C 10410012 */  beq        $v0, $at, .L8003CDD8
/* 3D990 8003CD90 24010008 */   addiu     $at, $zero, 8
/* 3D994 8003CD94 10410014 */  beq        $v0, $at, .L8003CDE8
/* 3D998 8003CD98 3C0F0380 */   lui       $t7, 0x380
/* 3D99C 8003CD9C 2401000C */  addiu      $at, $zero, 0xc
/* 3D9A0 8003CDA0 1041000F */  beq        $v0, $at, .L8003CDE0
/* 3D9A4 8003CDA4 00000000 */   nop
/* 3D9A8 8003CDA8 1000011E */  b          .L8003D224
/* 3D9AC 8003CDAC 24010001 */   addiu     $at, $zero, 1
.L8003CDB0:
/* 3D9B0 8003CDB0 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3D9B4 8003CDB4 ACEB0170 */  sw         $t3, 0x170($a3)
/* 3D9B8 8003CDB8 24040115 */  addiu      $a0, $zero, 0x115
/* 3D9BC 8003CDBC A7A60034 */  sh         $a2, 0x34($sp)
/* 3D9C0 8003CDC0 0C000DB2 */  jal        func_800036C8
/* 3D9C4 8003CDC4 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3D9C8 8003CDC8 97A60034 */  lhu        $a2, 0x34($sp)
/* 3D9CC 8003CDCC 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3D9D0 8003CDD0 10000114 */  b          .L8003D224
/* 3D9D4 8003CDD4 24010001 */   addiu     $at, $zero, 1
.L8003CDD8:
/* 3D9D8 8003CDD8 10000111 */  b          .L8003D220
/* 3D9DC 8003CDDC 24060001 */   addiu     $a2, $zero, 1
.L8003CDE0:
/* 3D9E0 8003CDE0 1000010F */  b          .L8003D220
/* 3D9E4 8003CDE4 24060002 */   addiu     $a2, $zero, 2
.L8003CDE8:
/* 3D9E8 8003CDE8 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3D9EC 8003CDEC ACEF0170 */  sw         $t7, 0x170($a3)
/* 3D9F0 8003CDF0 24040115 */  addiu      $a0, $zero, 0x115
/* 3D9F4 8003CDF4 A7A60034 */  sh         $a2, 0x34($sp)
/* 3D9F8 8003CDF8 0C000DB2 */  jal        func_800036C8
/* 3D9FC 8003CDFC AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DA00 8003CE00 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DA04 8003CE04 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DA08 8003CE08 10000106 */  b          .L8003D224
/* 3DA0C 8003CE0C 24010001 */   addiu     $at, $zero, 1
.L8003CE10:
/* 3DA10 8003CE10 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DA14 8003CE14 0C0121BD */  jal        func_800486F4
/* 3DA18 8003CE18 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DA1C 8003CE1C 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DA20 8003CE20 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DA24 8003CE24 1040001C */  beqz       $v0, .L8003CE98
/* 3DA28 8003CE28 24010004 */   addiu     $at, $zero, 4
/* 3DA2C 8003CE2C 10410010 */  beq        $v0, $at, .L8003CE70
/* 3DA30 8003CE30 3C180080 */   lui       $t8, 0x80
/* 3DA34 8003CE34 24010008 */  addiu      $at, $zero, 8
/* 3DA38 8003CE38 10410019 */  beq        $v0, $at, .L8003CEA0
/* 3DA3C 8003CE3C 2401000C */   addiu     $at, $zero, 0xc
/* 3DA40 8003CE40 144100F7 */  bne        $v0, $at, .L8003D220
/* 3DA44 8003CE44 3C0D0180 */   lui       $t5, 0x180
/* 3DA48 8003CE48 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DA4C 8003CE4C ACED0170 */  sw         $t5, 0x170($a3)
/* 3DA50 8003CE50 24040115 */  addiu      $a0, $zero, 0x115
/* 3DA54 8003CE54 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DA58 8003CE58 0C000DB2 */  jal        func_800036C8
/* 3DA5C 8003CE5C AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DA60 8003CE60 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DA64 8003CE64 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DA68 8003CE68 100000EE */  b          .L8003D224
/* 3DA6C 8003CE6C 24010001 */   addiu     $at, $zero, 1
.L8003CE70:
/* 3DA70 8003CE70 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DA74 8003CE74 ACF80170 */  sw         $t8, 0x170($a3)
/* 3DA78 8003CE78 24040115 */  addiu      $a0, $zero, 0x115
/* 3DA7C 8003CE7C A7A60034 */  sh         $a2, 0x34($sp)
/* 3DA80 8003CE80 0C000DB2 */  jal        func_800036C8
/* 3DA84 8003CE84 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DA88 8003CE88 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DA8C 8003CE8C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DA90 8003CE90 100000E4 */  b          .L8003D224
/* 3DA94 8003CE94 24010001 */   addiu     $at, $zero, 1
.L8003CE98:
/* 3DA98 8003CE98 100000E1 */  b          .L8003D220
/* 3DA9C 8003CE9C 24060001 */   addiu     $a2, $zero, 1
.L8003CEA0:
/* 3DAA0 8003CEA0 100000DF */  b          .L8003D220
/* 3DAA4 8003CEA4 24060002 */   addiu     $a2, $zero, 2
.L8003CEA8:
/* 3DAA8 8003CEA8 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DAAC 8003CEAC 0C0121BD */  jal        func_800486F4
/* 3DAB0 8003CEB0 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DAB4 8003CEB4 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DAB8 8003CEB8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DABC 8003CEBC 1040000B */  beqz       $v0, .L8003CEEC
/* 3DAC0 8003CEC0 3C190180 */   lui       $t9, 0x180
/* 3DAC4 8003CEC4 24010004 */  addiu      $at, $zero, 4
/* 3DAC8 8003CEC8 10410014 */  beq        $v0, $at, .L8003CF1C
/* 3DACC 8003CECC 24010008 */   addiu     $at, $zero, 8
/* 3DAD0 8003CED0 10410014 */  beq        $v0, $at, .L8003CF24
/* 3DAD4 8003CED4 3C0E0280 */   lui       $t6, 0x280
/* 3DAD8 8003CED8 2401000C */  addiu      $at, $zero, 0xc
/* 3DADC 8003CEDC 1041000D */  beq        $v0, $at, .L8003CF14
/* 3DAE0 8003CEE0 00000000 */   nop
/* 3DAE4 8003CEE4 100000CF */  b          .L8003D224
/* 3DAE8 8003CEE8 24010001 */   addiu     $at, $zero, 1
.L8003CEEC:
/* 3DAEC 8003CEEC 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DAF0 8003CEF0 ACF90170 */  sw         $t9, 0x170($a3)
/* 3DAF4 8003CEF4 24040115 */  addiu      $a0, $zero, 0x115
/* 3DAF8 8003CEF8 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DAFC 8003CEFC 0C000DB2 */  jal        func_800036C8
/* 3DB00 8003CF00 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DB04 8003CF04 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DB08 8003CF08 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DB0C 8003CF0C 100000C5 */  b          .L8003D224
/* 3DB10 8003CF10 24010001 */   addiu     $at, $zero, 1
.L8003CF14:
/* 3DB14 8003CF14 100000C2 */  b          .L8003D220
/* 3DB18 8003CF18 24060001 */   addiu     $a2, $zero, 1
.L8003CF1C:
/* 3DB1C 8003CF1C 100000C0 */  b          .L8003D220
/* 3DB20 8003CF20 24060002 */   addiu     $a2, $zero, 2
.L8003CF24:
/* 3DB24 8003CF24 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DB28 8003CF28 ACEE0170 */  sw         $t6, 0x170($a3)
/* 3DB2C 8003CF2C 24040115 */  addiu      $a0, $zero, 0x115
/* 3DB30 8003CF30 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DB34 8003CF34 0C000DB2 */  jal        func_800036C8
/* 3DB38 8003CF38 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DB3C 8003CF3C 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DB40 8003CF40 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DB44 8003CF44 100000B7 */  b          .L8003D224
/* 3DB48 8003CF48 24010001 */   addiu     $at, $zero, 1
.L8003CF4C:
/* 3DB4C 8003CF4C A7A60034 */  sh         $a2, 0x34($sp)
/* 3DB50 8003CF50 0C0121BD */  jal        func_800486F4
/* 3DB54 8003CF54 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DB58 8003CF58 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DB5C 8003CF5C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DB60 8003CF60 1040000D */  beqz       $v0, .L8003CF98
/* 3DB64 8003CF64 24010008 */   addiu     $at, $zero, 8
/* 3DB68 8003CF68 10410009 */  beq        $v0, $at, .L8003CF90
/* 3DB6C 8003CF6C 24040115 */   addiu     $a0, $zero, 0x115
/* 3DB70 8003CF70 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DB74 8003CF74 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DB78 8003CF78 0C000DB2 */  jal        func_800036C8
/* 3DB7C 8003CF7C AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DB80 8003CF80 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DB84 8003CF84 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DB88 8003CF88 100000A6 */  b          .L8003D224
/* 3DB8C 8003CF8C 24010001 */   addiu     $at, $zero, 1
.L8003CF90:
/* 3DB90 8003CF90 100000A3 */  b          .L8003D220
/* 3DB94 8003CF94 24060001 */   addiu     $a2, $zero, 1
.L8003CF98:
/* 3DB98 8003CF98 100000A1 */  b          .L8003D220
/* 3DB9C 8003CF9C 24060002 */   addiu     $a2, $zero, 2
.L8003CFA0:
/* 3DBA0 8003CFA0 8CEA0190 */  lw         $t2, 0x190($a3)
/* 3DBA4 8003CFA4 24010001 */  addiu      $at, $zero, 1
/* 3DBA8 8003CFA8 1541001A */  bne        $t2, $at, .L8003D014
/* 3DBAC 8003CFAC 00000000 */   nop
/* 3DBB0 8003CFB0 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DBB4 8003CFB4 0C0121BD */  jal        func_800486F4
/* 3DBB8 8003CFB8 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DBBC 8003CFBC 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DBC0 8003CFC0 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DBC4 8003CFC4 10400008 */  beqz       $v0, .L8003CFE8
/* 3DBC8 8003CFC8 24010008 */   addiu     $at, $zero, 8
/* 3DBCC 8003CFCC 10410005 */  beq        $v0, $at, .L8003CFE4
/* 3DBD0 8003CFD0 2401000C */   addiu     $at, $zero, 0xc
/* 3DBD4 8003CFD4 1041000D */  beq        $v0, $at, .L8003D00C
/* 3DBD8 8003CFD8 00000000 */   nop
/* 3DBDC 8003CFDC 10000090 */  b          .L8003D220
/* 3DBE0 8003CFE0 24060001 */   addiu     $a2, $zero, 1
.L8003CFE4:
/* 3DBE4 8003CFE4 ACE00170 */  sw         $zero, 0x170($a3)
.L8003CFE8:
/* 3DBE8 8003CFE8 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DBEC 8003CFEC 24040115 */  addiu      $a0, $zero, 0x115
/* 3DBF0 8003CFF0 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DBF4 8003CFF4 0C000DB2 */  jal        func_800036C8
/* 3DBF8 8003CFF8 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DBFC 8003CFFC 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DC00 8003D000 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DC04 8003D004 10000087 */  b          .L8003D224
/* 3DC08 8003D008 24010001 */   addiu     $at, $zero, 1
.L8003D00C:
/* 3DC0C 8003D00C 10000084 */  b          .L8003D220
/* 3DC10 8003D010 24060002 */   addiu     $a2, $zero, 2
.L8003D014:
/* 3DC14 8003D014 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DC18 8003D018 0C0121BD */  jal        func_800486F4
/* 3DC1C 8003D01C AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DC20 8003D020 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DC24 8003D024 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DC28 8003D028 24010004 */  addiu      $at, $zero, 4
/* 3DC2C 8003D02C 10410009 */  beq        $v0, $at, .L8003D054
/* 3DC30 8003D030 24040115 */   addiu     $a0, $zero, 0x115
/* 3DC34 8003D034 24010008 */  addiu      $at, $zero, 8
/* 3DC38 8003D038 1041000E */  beq        $v0, $at, .L8003D074
/* 3DC3C 8003D03C 2401000C */   addiu     $at, $zero, 0xc
/* 3DC40 8003D040 10410003 */  beq        $v0, $at, .L8003D050
/* 3DC44 8003D044 3C090100 */   lui       $t1, 0x100
/* 3DC48 8003D048 10000075 */  b          .L8003D220
/* 3DC4C 8003D04C 24060001 */   addiu     $a2, $zero, 1
.L8003D050:
/* 3DC50 8003D050 ACE90170 */  sw         $t1, 0x170($a3)
.L8003D054:
/* 3DC54 8003D054 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DC58 8003D058 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DC5C 8003D05C 0C000DB2 */  jal        func_800036C8
/* 3DC60 8003D060 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DC64 8003D064 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DC68 8003D068 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DC6C 8003D06C 1000006D */  b          .L8003D224
/* 3DC70 8003D070 24010001 */   addiu     $at, $zero, 1
.L8003D074:
/* 3DC74 8003D074 1000006A */  b          .L8003D220
/* 3DC78 8003D078 24060002 */   addiu     $a2, $zero, 2
.L8003D07C:
/* 3DC7C 8003D07C 8CEC0190 */  lw         $t4, 0x190($a3)
/* 3DC80 8003D080 24010002 */  addiu      $at, $zero, 2
/* 3DC84 8003D084 1581001A */  bne        $t4, $at, .L8003D0F0
/* 3DC88 8003D088 00000000 */   nop
/* 3DC8C 8003D08C A7A60034 */  sh         $a2, 0x34($sp)
/* 3DC90 8003D090 0C0121BD */  jal        func_800486F4
/* 3DC94 8003D094 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DC98 8003D098 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DC9C 8003D09C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DCA0 8003D0A0 10400008 */  beqz       $v0, .L8003D0C4
/* 3DCA4 8003D0A4 24010004 */   addiu     $at, $zero, 4
/* 3DCA8 8003D0A8 1041000F */  beq        $v0, $at, .L8003D0E8
/* 3DCAC 8003D0AC 24010008 */   addiu     $at, $zero, 8
/* 3DCB0 8003D0B0 10410003 */  beq        $v0, $at, .L8003D0C0
/* 3DCB4 8003D0B4 3C0B0200 */   lui       $t3, 0x200
/* 3DCB8 8003D0B8 10000059 */  b          .L8003D220
/* 3DCBC 8003D0BC 24060001 */   addiu     $a2, $zero, 1
.L8003D0C0:
/* 3DCC0 8003D0C0 ACEB0170 */  sw         $t3, 0x170($a3)
.L8003D0C4:
/* 3DCC4 8003D0C4 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DCC8 8003D0C8 24040115 */  addiu      $a0, $zero, 0x115
/* 3DCCC 8003D0CC A7A60034 */  sh         $a2, 0x34($sp)
/* 3DCD0 8003D0D0 0C000DB2 */  jal        func_800036C8
/* 3DCD4 8003D0D4 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DCD8 8003D0D8 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DCDC 8003D0DC 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DCE0 8003D0E0 10000050 */  b          .L8003D224
/* 3DCE4 8003D0E4 24010001 */   addiu     $at, $zero, 1
.L8003D0E8:
/* 3DCE8 8003D0E8 1000004D */  b          .L8003D220
/* 3DCEC 8003D0EC 24060002 */   addiu     $a2, $zero, 2
.L8003D0F0:
/* 3DCF0 8003D0F0 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DCF4 8003D0F4 0C0121BD */  jal        func_800486F4
/* 3DCF8 8003D0F8 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DCFC 8003D0FC 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DD00 8003D100 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DD04 8003D104 24010004 */  addiu      $at, $zero, 4
/* 3DD08 8003D108 10410008 */  beq        $v0, $at, .L8003D12C
/* 3DD0C 8003D10C 24040115 */   addiu     $a0, $zero, 0x115
/* 3DD10 8003D110 24010008 */  addiu      $at, $zero, 8
/* 3DD14 8003D114 1041000F */  beq        $v0, $at, .L8003D154
/* 3DD18 8003D118 2401000C */   addiu     $at, $zero, 0xc
/* 3DD1C 8003D11C 10410006 */  beq        $v0, $at, .L8003D138
/* 3DD20 8003D120 97A5003A */   lhu       $a1, 0x3a($sp)
/* 3DD24 8003D124 1000003E */  b          .L8003D220
/* 3DD28 8003D128 24060001 */   addiu     $a2, $zero, 1
.L8003D12C:
/* 3DD2C 8003D12C 3C0F0100 */  lui        $t7, 0x100
/* 3DD30 8003D130 ACEF0170 */  sw         $t7, 0x170($a3)
/* 3DD34 8003D134 97A5003A */  lhu        $a1, 0x3a($sp)
.L8003D138:
/* 3DD38 8003D138 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DD3C 8003D13C 0C000DB2 */  jal        func_800036C8
/* 3DD40 8003D140 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DD44 8003D144 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DD48 8003D148 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DD4C 8003D14C 10000035 */  b          .L8003D224
/* 3DD50 8003D150 24010001 */   addiu     $at, $zero, 1
.L8003D154:
/* 3DD54 8003D154 10000032 */  b          .L8003D220
/* 3DD58 8003D158 24060002 */   addiu     $a2, $zero, 2
.L8003D15C:
/* 3DD5C 8003D15C A7A60034 */  sh         $a2, 0x34($sp)
/* 3DD60 8003D160 0C0121BD */  jal        func_800486F4
/* 3DD64 8003D164 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DD68 8003D168 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DD6C 8003D16C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DD70 8003D170 1040000A */  beqz       $v0, .L8003D19C
/* 3DD74 8003D174 24040115 */   addiu     $a0, $zero, 0x115
/* 3DD78 8003D178 24010004 */  addiu      $at, $zero, 4
/* 3DD7C 8003D17C 10410005 */  beq        $v0, $at, .L8003D194
/* 3DD80 8003D180 24010008 */   addiu     $at, $zero, 8
/* 3DD84 8003D184 10410008 */  beq        $v0, $at, .L8003D1A8
/* 3DD88 8003D188 97A5003A */   lhu       $a1, 0x3a($sp)
/* 3DD8C 8003D18C 10000024 */  b          .L8003D220
/* 3DD90 8003D190 24060001 */   addiu     $a2, $zero, 1
.L8003D194:
/* 3DD94 8003D194 10000022 */  b          .L8003D220
/* 3DD98 8003D198 24060002 */   addiu     $a2, $zero, 2
.L8003D19C:
/* 3DD9C 8003D19C 3C0D0200 */  lui        $t5, 0x200
/* 3DDA0 8003D1A0 ACED0170 */  sw         $t5, 0x170($a3)
/* 3DDA4 8003D1A4 97A5003A */  lhu        $a1, 0x3a($sp)
.L8003D1A8:
/* 3DDA8 8003D1A8 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DDAC 8003D1AC 0C000DB2 */  jal        func_800036C8
/* 3DDB0 8003D1B0 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DDB4 8003D1B4 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DDB8 8003D1B8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DDBC 8003D1BC 10000019 */  b          .L8003D224
/* 3DDC0 8003D1C0 24010001 */   addiu     $at, $zero, 1
.L8003D1C4:
/* 3DDC4 8003D1C4 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DDC8 8003D1C8 0C0121BD */  jal        func_800486F4
/* 3DDCC 8003D1CC AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DDD0 8003D1D0 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DDD4 8003D1D4 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DDD8 8003D1D8 10400008 */  beqz       $v0, .L8003D1FC
/* 3DDDC 8003D1DC 24040115 */   addiu     $a0, $zero, 0x115
/* 3DDE0 8003D1E0 24010008 */  addiu      $at, $zero, 8
/* 3DDE4 8003D1E4 10410006 */  beq        $v0, $at, .L8003D200
/* 3DDE8 8003D1E8 2401000C */   addiu     $at, $zero, 0xc
/* 3DDEC 8003D1EC 1041000C */  beq        $v0, $at, .L8003D220
/* 3DDF0 8003D1F0 24060002 */   addiu     $a2, $zero, 2
/* 3DDF4 8003D1F4 1000000A */  b          .L8003D220
/* 3DDF8 8003D1F8 24060001 */   addiu     $a2, $zero, 1
.L8003D1FC:
/* 3DDFC 8003D1FC ACE00170 */  sw         $zero, 0x170($a3)
.L8003D200:
/* 3DE00 8003D200 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DE04 8003D204 A7A60034 */  sh         $a2, 0x34($sp)
/* 3DE08 8003D208 0C000DB2 */  jal        func_800036C8
/* 3DE0C 8003D20C AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DE10 8003D210 97A60034 */  lhu        $a2, 0x34($sp)
/* 3DE14 8003D214 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DE18 8003D218 10000002 */  b          .L8003D224
/* 3DE1C 8003D21C 24010001 */   addiu     $at, $zero, 1
.L8003D220:
/* 3DE20 8003D220 24010001 */  addiu      $at, $zero, 1
.L8003D224:
/* 3DE24 8003D224 10C10006 */  beq        $a2, $at, .L8003D240
/* 3DE28 8003D228 24040114 */   addiu     $a0, $zero, 0x114
/* 3DE2C 8003D22C 24010002 */  addiu      $at, $zero, 2
/* 3DE30 8003D230 10C10014 */  beq        $a2, $at, .L8003D284
/* 3DE34 8003D234 24040114 */   addiu     $a0, $zero, 0x114
/* 3DE38 8003D238 10000023 */  b          .L8003D2C8
/* 3DE3C 8003D23C 8CE20164 */   lw        $v0, 0x164($a3)
.L8003D240:
/* 3DE40 8003D240 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DE44 8003D244 0C000DB2 */  jal        func_800036C8
/* 3DE48 8003D248 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DE4C 8003D24C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DE50 8003D250 3C010003 */  lui        $at, 3
/* 3DE54 8003D254 8CF80164 */  lw         $t8, 0x164($a3)
/* 3DE58 8003D258 3C0A0003 */  lui        $t2, 3
/* 3DE5C 8003D25C 0301C821 */  addu       $t9, $t8, $at
/* 3DE60 8003D260 3C014100 */  lui        $at, 0x4100
/* 3DE64 8003D264 44813000 */  mtc1       $at, $f6
/* 3DE68 8003D268 3C010003 */  lui        $at, 3
/* 3DE6C 8003D26C 0321082A */  slt        $at, $t9, $at
/* 3DE70 8003D270 ACF90164 */  sw         $t9, 0x164($a3)
/* 3DE74 8003D274 10200013 */  beqz       $at, .L8003D2C4
/* 3DE78 8003D278 E4E6011C */   swc1      $f6, 0x11c($a3)
/* 3DE7C 8003D27C 10000011 */  b          .L8003D2C4
/* 3DE80 8003D280 ACEA0164 */   sw        $t2, 0x164($a3)
.L8003D284:
/* 3DE84 8003D284 97A5003A */  lhu        $a1, 0x3a($sp)
/* 3DE88 8003D288 0C000DB2 */  jal        func_800036C8
/* 3DE8C 8003D28C AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DE90 8003D290 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3DE94 8003D294 3C014100 */  lui        $at, 0x4100
/* 3DE98 8003D298 44814000 */  mtc1       $at, $f8
/* 3DE9C 8003D29C 8CE90164 */  lw         $t1, 0x164($a3)
/* 3DEA0 8003D2A0 3C03FFFD */  lui        $v1, 0xfffd
/* 3DEA4 8003D2A4 3C01FFFD */  lui        $at, 0xfffd
/* 3DEA8 8003D2A8 34210001 */  ori        $at, $at, 1
/* 3DEAC 8003D2AC 01236021 */  addu       $t4, $t1, $v1
/* 3DEB0 8003D2B0 0181082A */  slt        $at, $t4, $at
/* 3DEB4 8003D2B4 ACEC0164 */  sw         $t4, 0x164($a3)
/* 3DEB8 8003D2B8 14200002 */  bnez       $at, .L8003D2C4
/* 3DEBC 8003D2BC E4E8011C */   swc1      $f8, 0x11c($a3)
/* 3DEC0 8003D2C0 ACE30164 */  sw         $v1, 0x164($a3)
.L8003D2C4:
/* 3DEC4 8003D2C4 8CE20164 */  lw         $v0, 0x164($a3)
.L8003D2C8:
/* 3DEC8 8003D2C8 3C03FFF0 */  lui        $v1, 0xfff0
/* 3DECC 8003D2CC 0043082A */  slt        $at, $v0, $v1
/* 3DED0 8003D2D0 10200003 */  beqz       $at, .L8003D2E0
/* 3DED4 8003D2D4 3C0F0010 */   lui       $t7, 0x10
/* 3DED8 8003D2D8 ACE30164 */  sw         $v1, 0x164($a3)
/* 3DEDC 8003D2DC 00601025 */  or         $v0, $v1, $zero
.L8003D2E0:
/* 3DEE0 8003D2E0 3C010010 */  lui        $at, 0x10
/* 3DEE4 8003D2E4 34210001 */  ori        $at, $at, 1
/* 3DEE8 8003D2E8 0041082A */  slt        $at, $v0, $at
/* 3DEEC 8003D2EC 14200002 */  bnez       $at, .L8003D2F8
/* 3DEF0 8003D2F0 3C02800C */   lui       $v0, 0x800c
/* 3DEF4 8003D2F4 ACEF0164 */  sw         $t7, 0x164($a3)
.L8003D2F8:
/* 3DEF8 8003D2F8 8CED0160 */  lw         $t5, 0x160($a3)
/* 3DEFC 8003D2FC 8FB80030 */  lw         $t8, 0x30($sp)
/* 3DF00 8003D300 448D5000 */  mtc1       $t5, $f10
/* 3DF04 8003D304 331903FF */  andi       $t9, $t8, 0x3ff
/* 3DF08 8003D308 2442CCD0 */  addiu      $v0, $v0, -0x3330
/* 3DF0C 8003D30C 00197080 */  sll        $t6, $t9, 2
/* 3DF10 8003D310 46805420 */  cvt.s.w    $f16, $f10
/* 3DF14 8003D314 8FA9002C */  lw         $t1, 0x2c($sp)
/* 3DF18 8003D318 004E5021 */  addu       $t2, $v0, $t6
/* 3DF1C 8003D31C C5520000 */  lwc1       $f18, ($t2)
/* 3DF20 8003D320 44893000 */  mtc1       $t1, $f6
/* 3DF24 8003D324 46128102 */  mul.s      $f4, $f16, $f18
/* 3DF28 8003D328 3C014780 */  lui        $at, 0x4780
/* 3DF2C 8003D32C 44810000 */  mtc1       $at, $f0
/* 3DF30 8003D330 84EC0088 */  lh         $t4, 0x88($a3)
/* 3DF34 8003D334 46803220 */  cvt.s.w    $f8, $f6
/* 3DF38 8003D338 448C9000 */  mtc1       $t4, $f18
/* 3DF3C 8003D33C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 3DF40 8003D340 46082280 */  add.s      $f10, $f4, $f8
/* 3DF44 8003D344 00000000 */  nop
/* 3DF48 8003D348 46005403 */  div.s      $f16, $f10, $f0
/* 3DF4C 8003D34C 468091A0 */  cvt.s.w    $f6, $f18
/* 3DF50 8003D350 46103100 */  add.s      $f4, $f6, $f16
/* 3DF54 8003D354 444BF800 */  cfc1       $t3, $31
/* 3DF58 8003D358 00000000 */  nop
/* 3DF5C 8003D35C 35610003 */  ori        $at, $t3, 3
/* 3DF60 8003D360 38210002 */  xori       $at, $at, 2
/* 3DF64 8003D364 44C1F800 */  ctc1       $at, $31
/* 3DF68 8003D368 00000000 */  nop
/* 3DF6C 8003D36C 46002224 */  cvt.w.s    $f8, $f4
/* 3DF70 8003D370 440F4000 */  mfc1       $t7, $f8
/* 3DF74 8003D374 44CBF800 */  ctc1       $t3, $31
/* 3DF78 8003D378 A5AF0088 */  sh         $t7, 0x88($t5)
/* 3DF7C 8003D37C 8FB90018 */  lw         $t9, 0x18($sp)
/* 3DF80 8003D380 8CF80160 */  lw         $t8, 0x160($a3)
/* 3DF84 8003D384 332E03FF */  andi       $t6, $t9, 0x3ff
/* 3DF88 8003D388 44985000 */  mtc1       $t8, $f10
/* 3DF8C 8003D38C 000E5080 */  sll        $t2, $t6, 2
/* 3DF90 8003D390 468054A0 */  cvt.s.w    $f18, $f10
/* 3DF94 8003D394 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3DF98 8003D398 004A4821 */  addu       $t1, $v0, $t2
/* 3DF9C 8003D39C C5260000 */  lwc1       $f6, ($t1)
/* 3DFA0 8003D3A0 448C2000 */  mtc1       $t4, $f4
/* 3DFA4 8003D3A4 46069402 */  mul.s      $f16, $f18, $f6
/* 3DFA8 8003D3A8 84EB008C */  lh         $t3, 0x8c($a3)
/* 3DFAC 8003D3AC 00000000 */  nop
/* 3DFB0 8003D3B0 448B3000 */  mtc1       $t3, $f6
/* 3DFB4 8003D3B4 46802220 */  cvt.s.w    $f8, $f4
/* 3DFB8 8003D3B8 46088280 */  add.s      $f10, $f16, $f8
/* 3DFBC 8003D3BC 00000000 */  nop
/* 3DFC0 8003D3C0 46005483 */  div.s      $f18, $f10, $f0
/* 3DFC4 8003D3C4 46803120 */  cvt.s.w    $f4, $f6
/* 3DFC8 8003D3C8 46122400 */  add.s      $f16, $f4, $f18
/* 3DFCC 8003D3CC 444FF800 */  cfc1       $t7, $31
/* 3DFD0 8003D3D0 00000000 */  nop
/* 3DFD4 8003D3D4 35E10003 */  ori        $at, $t7, 3
/* 3DFD8 8003D3D8 38210002 */  xori       $at, $at, 2
/* 3DFDC 8003D3DC 44C1F800 */  ctc1       $at, $31
/* 3DFE0 8003D3E0 00000000 */  nop
/* 3DFE4 8003D3E4 46008224 */  cvt.w.s    $f8, $f16
/* 3DFE8 8003D3E8 44184000 */  mfc1       $t8, $f8
/* 3DFEC 8003D3EC 44CFF800 */  ctc1       $t7, $31
/* 3DFF0 8003D3F0 A5B8008C */  sh         $t8, 0x8c($t5)
/* 3DFF4 8003D3F4 0C00A14A */  jal        func_80028528
/* 3DFF8 8003D3F8 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3DFFC 8003D3FC 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3E000 8003D400 3C08800F */  lui        $t0, %hi(gActors)
/* 3E004 8003D404 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 3E008 8003D408 1040003F */  beqz       $v0, .L8003D508
/* 3E00C 8003D40C 3046FFFF */   andi      $a2, $v0, 0xffff
/* 3E010 8003D410 0006C880 */  sll        $t9, $a2, 2
/* 3E014 8003D414 0326C823 */  subu       $t9, $t9, $a2
/* 3E018 8003D418 0019C880 */  sll        $t9, $t9, 2
/* 3E01C 8003D41C 0326C821 */  addu       $t9, $t9, $a2
/* 3E020 8003D420 0019C880 */  sll        $t9, $t9, 2
/* 3E024 8003D424 0326C823 */  subu       $t9, $t9, $a2
/* 3E028 8003D428 0019C8C0 */  sll        $t9, $t9, 3
/* 3E02C 8003D42C 01191021 */  addu       $v0, $t0, $t9
/* 3E030 8003D430 240E0034 */  addiu      $t6, $zero, 0x34
/* 3E034 8003D434 A44E00D2 */  sh         $t6, 0xd2($v0)
/* 3E038 8003D438 AFA20018 */  sw         $v0, 0x18($sp)
/* 3E03C 8003D43C 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 3E040 8003D440 0C0078B4 */  jal        func_8001E2D0
/* 3E044 8003D444 AFA7001C */   sw        $a3, 0x1c($sp)
/* 3E048 8003D448 8FA20018 */  lw         $v0, 0x18($sp)
/* 3E04C 8003D44C 8FA7001C */  lw         $a3, 0x1c($sp)
/* 3E050 8003D450 240A0009 */  addiu      $t2, $zero, 9
/* 3E054 8003D454 24090003 */  addiu      $t1, $zero, 3
/* 3E058 8003D458 240C3004 */  addiu      $t4, $zero, 0x3004
/* 3E05C 8003D45C A44A0094 */  sh         $t2, 0x94($v0)
/* 3E060 8003D460 AC490080 */  sw         $t1, 0x80($v0)
/* 3E064 8003D464 A44C0084 */  sh         $t4, 0x84($v0)
/* 3E068 8003D468 8CEB0160 */  lw         $t3, 0x160($a3)
/* 3E06C 8003D46C 3C014A00 */  lui        $at, 0x4a00
/* 3E070 8003D470 448B5000 */  mtc1       $t3, $f10
/* 3E074 8003D474 44812000 */  mtc1       $at, $f4
/* 3E078 8003D478 468051A0 */  cvt.s.w    $f6, $f10
/* 3E07C 8003D47C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 3E080 8003D480 8FB9002C */  lw         $t9, 0x2c($sp)
/* 3E084 8003D484 46043483 */  div.s      $f18, $f6, $f4
/* 3E088 8003D488 8FAC0020 */  lw         $t4, 0x20($sp)
/* 3E08C 8003D48C E45200B8 */  swc1       $f18, 0xb8($v0)
/* 3E090 8003D490 8CE30088 */  lw         $v1, 0x88($a3)
/* 3E094 8003D494 8DF80088 */  lw         $t8, 0x88($t7)
/* 3E098 8003D498 00000000 */  nop
/* 3E09C 8003D49C 00786823 */  subu       $t5, $v1, $t8
/* 3E0A0 8003D4A0 01B97021 */  addu       $t6, $t5, $t9
/* 3E0A4 8003D4A4 05C10003 */  bgez       $t6, .L8003D4B4
/* 3E0A8 8003D4A8 000E5043 */   sra       $t2, $t6, 1
/* 3E0AC 8003D4AC 25C10001 */  addiu      $at, $t6, 1
/* 3E0B0 8003D4B0 00015043 */  sra        $t2, $at, 1
.L8003D4B4:
/* 3E0B4 8003D4B4 006A4823 */  subu       $t1, $v1, $t2
/* 3E0B8 8003D4B8 AC490088 */  sw         $t1, 0x88($v0)
/* 3E0BC 8003D4BC 8CE4008C */  lw         $a0, 0x8c($a3)
/* 3E0C0 8003D4C0 8D8B008C */  lw         $t3, 0x8c($t4)
/* 3E0C4 8003D4C4 8FB80028 */  lw         $t8, 0x28($sp)
/* 3E0C8 8003D4C8 008B7823 */  subu       $t7, $a0, $t3
/* 3E0CC 8003D4CC 01F86821 */  addu       $t5, $t7, $t8
/* 3E0D0 8003D4D0 05A10003 */  bgez       $t5, .L8003D4E0
/* 3E0D4 8003D4D4 000DC843 */   sra       $t9, $t5, 1
/* 3E0D8 8003D4D8 25A10001 */  addiu      $at, $t5, 1
/* 3E0DC 8003D4DC 0001C843 */  sra        $t9, $at, 1
.L8003D4E0:
/* 3E0E0 8003D4E0 00997023 */  subu       $t6, $a0, $t9
/* 3E0E4 8003D4E4 AC4E008C */  sw         $t6, 0x8c($v0)
/* 3E0E8 8003D4E8 84EA0090 */  lh         $t2, 0x90($a3)
/* 3E0EC 8003D4EC 3C013F80 */  lui        $at, 0x3f80
/* 3E0F0 8003D4F0 2549FFFF */  addiu      $t1, $t2, -1
/* 3E0F4 8003D4F4 A4490090 */  sh         $t1, 0x90($v0)
/* 3E0F8 8003D4F8 44814000 */  mtc1       $at, $f8
/* 3E0FC 8003D4FC C4F000C4 */  lwc1       $f16, 0xc4($a3)
/* 3E100 8003D500 E4480148 */  swc1       $f8, 0x148($v0)
/* 3E104 8003D504 E45000C4 */  swc1       $f16, 0xc4($v0)
.L8003D508:
/* 3E108 8003D508 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003D50C:
/* 3E10C 8003D50C ACE00098 */  sw         $zero, 0x98($a3)
/* 3E110 8003D510 03E00008 */  jr         $ra
/* 3E114 8003D514 27BD0038 */   addiu     $sp, $sp, 0x38
