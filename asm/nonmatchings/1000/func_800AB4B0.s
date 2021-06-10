glabel func_800AB4B0
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
/* AC0F8 800AB4F8 0C02AF4B */  jal        func_800ABD2C
/* AC0FC 800AB4FC 8FA4004C */   lw        $a0, 0x4c($sp)
/* AC100 800AB500 100001AF */  b          .L800ABBC0
/* AC104 800AB504 00000000 */   nop
/* AC108 800AB508 24190009 */  addiu      $t9, $zero, 9
/* AC10C 800AB50C A7B9003C */  sh         $t9, 0x3c($sp)
/* AC110 800AB510 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC114 800AB514 27A5003C */  addiu      $a1, $sp, 0x3c
/* AC118 800AB518 25040048 */  addiu      $a0, $t0, 0x48
/* AC11C 800AB51C 0C02B620 */  jal        func_800AD880
/* AC120 800AB520 8D06005C */   lw        $a2, 0x5c($t0)
/* AC124 800AB524 100001A6 */  b          .L800ABBC0
/* AC128 800AB528 00000000 */   nop
/* AC12C 800AB52C 8FA9004C */  lw         $t1, 0x4c($sp)
/* AC130 800AB530 8D2A003C */  lw         $t2, 0x3c($t1)
/* AC134 800AB534 AFAA0038 */  sw         $t2, 0x38($sp)
/* AC138 800AB538 8FAB004C */  lw         $t3, 0x4c($sp)
/* AC13C 800AB53C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC140 800AB540 0C02B6F4 */  jal        func_800ADBD0
/* AC144 800AB544 8D640014 */   lw        $a0, 0x14($t3)
/* AC148 800AB548 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC14C 800AB54C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC150 800AB550 0C02B728 */  jal        func_800ADCA0
/* AC154 800AB554 8D840014 */   lw        $a0, 0x14($t4)
/* AC158 800AB558 8FAD0038 */  lw         $t5, 0x38($sp)
/* AC15C 800AB55C 8DAE0010 */  lw         $t6, 0x10($t5)
/* AC160 800AB560 AFAE0030 */  sw         $t6, 0x30($sp)
/* AC164 800AB564 8FAF0030 */  lw         $t7, 0x30($sp)
/* AC168 800AB568 91F80037 */  lbu        $t8, 0x37($t7)
/* AC16C 800AB56C 13000004 */  beqz       $t8, .L800AB580
/* AC170 800AB570 00000000 */   nop
/* AC174 800AB574 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC178 800AB578 0C02B56E */  jal        func_800AD5B8
/* AC17C 800AB57C 8FA50030 */   lw        $a1, 0x30($sp)
.L800AB580:
/* AC180 800AB580 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC184 800AB584 0C02B302 */  jal        func_800ACC08
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
/* AC200 800AB600 0C02B3CE */  jal        func_800ACF38
/* AC204 800AB604 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC208 800AB608 00028400 */  sll        $s0, $v0, 0x10
/* AC20C 800AB60C 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC210 800AB610 00107C03 */  sra        $t7, $s0, 0x10
/* AC214 800AB614 01E08025 */  or         $s0, $t7, $zero
/* AC218 800AB618 02003025 */  or         $a2, $s0, $zero
/* AC21C 800AB61C 8FA50038 */  lw         $a1, 0x38($sp)
/* AC220 800AB620 8FA70034 */  lw         $a3, 0x34($sp)
/* AC224 800AB624 0C02B768 */  jal        func_800ADDA0
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
/* AC304 800AB704 0C02B3CE */  jal        func_800ACF38
/* AC308 800AB708 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC30C 800AB70C 8FB8004C */  lw         $t8, 0x4c($sp)
/* AC310 800AB710 00028400 */  sll        $s0, $v0, 0x10
/* AC314 800AB714 00107C03 */  sra        $t7, $s0, 0x10
/* AC318 800AB718 01E08025 */  or         $s0, $t7, $zero
/* AC31C 800AB71C 8FA40030 */  lw         $a0, 0x30($sp)
/* AC320 800AB720 0C02B3F9 */  jal        func_800ACFE4
/* AC324 800AB724 8F05001C */   lw        $a1, 0x1c($t8)
/* AC328 800AB728 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC32C 800AB72C 8FA50030 */  lw         $a1, 0x30($sp)
/* AC330 800AB730 00408825 */  or         $s1, $v0, $zero
/* AC334 800AB734 02203825 */  or         $a3, $s1, $zero
/* AC338 800AB738 02003025 */  or         $a2, $s0, $zero
/* AC33C 800AB73C 8D040014 */  lw         $a0, 0x14($t0)
/* AC340 800AB740 0C02B768 */  jal        func_800ADDA0
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
/* AC36C 800AB76C 0C02B620 */  jal        func_800AD880
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
/* AC400 800AB800 0C02B7A4 */  jal        func_800ADE90
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
/* AC434 800AB834 0C02B620 */  jal        func_800AD880
/* AC438 800AB838 24840048 */   addiu     $a0, $a0, 0x48
/* AC43C 800AB83C 100000E0 */  b          .L800ABBC0
/* AC440 800AB840 00000000 */   nop
/* AC444 800AB844 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC448 800AB848 01402025 */  or         $a0, $t2, $zero
/* AC44C 800AB84C 0C02AF8D */  jal        func_800ABE34
/* AC450 800AB850 25450038 */   addiu     $a1, $t2, 0x38
/* AC454 800AB854 100000DA */  b          .L800ABBC0
/* AC458 800AB858 00000000 */   nop
/* AC45C 800AB85C 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC460 800AB860 01A02025 */  or         $a0, $t5, $zero
/* AC464 800AB864 0C02B2B3 */  jal        func_800ACACC
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
/* AC494 800AB894 0C02AF09 */  jal        func_800ABC24
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
/* AC4D4 800AB8D4 0C02B6F4 */  jal        func_800ADBD0
/* AC4D8 800AB8D8 24A50004 */   addiu     $a1, $a1, 4
/* AC4DC 800AB8DC 8FAD004C */  lw         $t5, 0x4c($sp)
/* AC4E0 800AB8E0 8FA50030 */  lw         $a1, 0x30($sp)
/* AC4E4 800AB8E4 8DA40014 */  lw         $a0, 0x14($t5)
/* AC4E8 800AB8E8 0C02B728 */  jal        func_800ADCA0
/* AC4EC 800AB8EC 24A50004 */   addiu     $a1, $a1, 4
/* AC4F0 800AB8F0 8FAC0030 */  lw         $t4, 0x30($sp)
/* AC4F4 800AB8F4 918E0037 */  lbu        $t6, 0x37($t4)
/* AC4F8 800AB8F8 11C00004 */  beqz       $t6, .L800AB90C
/* AC4FC 800AB8FC 00000000 */   nop
/* AC500 800AB900 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC504 800AB904 0C02B56E */  jal        func_800AD5B8
/* AC508 800AB908 8FA50030 */   lw        $a1, 0x30($sp)
.L800AB90C:
/* AC50C 800AB90C 8FA50030 */  lw         $a1, 0x30($sp)
/* AC510 800AB910 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC514 800AB914 0C02B302 */  jal        func_800ACC08
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
/* AC560 800AB960 0C02B6A4 */  jal        func_800ADA90
/* AC564 800AB964 24840048 */   addiu     $a0, $a0, 0x48
/* AC568 800AB968 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC56C 800AB96C 24050002 */  addiu      $a1, $zero, 2
/* AC570 800AB970 0C02B6A4 */  jal        func_800ADA90
/* AC574 800AB974 24840048 */   addiu     $a0, $a0, 0x48
/* AC578 800AB978 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC57C 800AB97C 8D4D0064 */  lw         $t5, 0x64($t2)
/* AC580 800AB980 11A00011 */  beqz       $t5, .L800AB9C8
/* AC584 800AB984 AFAD0030 */   sw        $t5, 0x30($sp)
.L800AB988:
/* AC588 800AB988 8FA50030 */  lw         $a1, 0x30($sp)
/* AC58C 800AB98C 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC590 800AB990 3406C350 */  ori        $a2, $zero, 0xc350
/* AC594 800AB994 0C02B487 */  jal        func_800AD21C
/* AC598 800AB998 24A50004 */   addiu     $a1, $a1, 4
/* AC59C 800AB99C 10400006 */  beqz       $v0, .L800AB9B8
/* AC5A0 800AB9A0 00000000 */   nop
/* AC5A4 800AB9A4 8FA50030 */  lw         $a1, 0x30($sp)
/* AC5A8 800AB9A8 8FA4004C */  lw         $a0, 0x4c($sp)
/* AC5AC 800AB9AC 3406C350 */  ori        $a2, $zero, 0xc350
/* AC5B0 800AB9B0 0C02B429 */  jal        func_800AD0A4
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
/* AC5EC 800AB9EC 0C02B620 */  jal        func_800AD880
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
/* AC61C 800ABA1C 0C02B3CE */  jal        func_800ACF38
/* AC620 800ABA20 8FA5004C */   lw        $a1, 0x4c($sp)
/* AC624 800ABA24 8FAC004C */  lw         $t4, 0x4c($sp)
/* AC628 800ABA28 00028400 */  sll        $s0, $v0, 0x10
/* AC62C 800ABA2C 00106C03 */  sra        $t5, $s0, 0x10
/* AC630 800ABA30 01A08025 */  or         $s0, $t5, $zero
/* AC634 800ABA34 8FA40030 */  lw         $a0, 0x30($sp)
/* AC638 800ABA38 0C02B3F9 */  jal        func_800ACFE4
/* AC63C 800ABA3C 8D85001C */   lw        $a1, 0x1c($t4)
/* AC640 800ABA40 8FAE004C */  lw         $t6, 0x4c($sp)
/* AC644 800ABA44 8FA50030 */  lw         $a1, 0x30($sp)
/* AC648 800ABA48 00408825 */  or         $s1, $v0, $zero
/* AC64C 800ABA4C 02203825 */  or         $a3, $s1, $zero
/* AC650 800ABA50 02003025 */  or         $a2, $s0, $zero
/* AC654 800ABA54 8DC40014 */  lw         $a0, 0x14($t6)
/* AC658 800ABA58 0C02B768 */  jal        func_800ADDA0
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
/* AC700 800ABB00 0C026E74 */  jal        func_8009B9D0
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
/* AC73C 800ABB3C 0C02B4CF */  jal        func_800AD33C
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
/* AC774 800ABB74 0C026E74 */  jal        func_8009B9D0
/* AC778 800ABB78 24060131 */   addiu     $a2, $zero, 0x131
.L800ABB7C:
/* AC77C 800ABB7C 8FA8004C */  lw         $t0, 0x4c($sp)
/* AC780 800ABB80 8D0D003C */  lw         $t5, 0x3c($t0)
/* AC784 800ABB84 AD0D0020 */  sw         $t5, 0x20($t0)
/* AC788 800ABB88 8FAA004C */  lw         $t2, 0x4c($sp)
/* AC78C 800ABB8C 01402025 */  or         $a0, $t2, $zero
/* AC790 800ABB90 0C02B4CF */  jal        func_800AD33C
/* AC794 800ABB94 8D450020 */   lw        $a1, 0x20($t2)
/* AC798 800ABB98 10000009 */  b          .L800ABBC0
/* AC79C 800ABB9C 00000000 */   nop
/* AC7A0 800ABBA0 3C04800F */  lui        $a0, %hi(D_800EE050)
/* AC7A4 800ABBA4 3C05800F */  lui        $a1, %hi(D_800EE058)
/* AC7A8 800ABBA8 24A5E058 */  addiu      $a1, $a1, %lo(D_800EE058)
/* AC7AC 800ABBAC 2484E050 */  addiu      $a0, $a0, %lo(D_800EE050)
/* AC7B0 800ABBB0 0C026E74 */  jal        func_8009B9D0
/* AC7B4 800ABBB4 2406013B */   addiu     $a2, $zero, 0x13b
/* AC7B8 800ABBB8 10000001 */  b          .L800ABBC0
/* AC7BC 800ABBBC 00000000 */   nop
.L800ABBC0:
/* AC7C0 800ABBC0 8FAE004C */  lw         $t6, 0x4c($sp)
/* AC7C4 800ABBC4 25C40048 */  addiu      $a0, $t6, 0x48
/* AC7C8 800ABBC8 0C02B5F7 */  jal        func_800AD7DC
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
