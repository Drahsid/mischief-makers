glabel func_8005B5FC
/* 5C1FC 8005B5FC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5C200 8005B600 24080198 */  addiu      $t0, $zero, 0x198
/* 5C204 8005B604 01C80019 */  multu      $t6, $t0
/* 5C208 8005B608 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 5C20C 8005B60C 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 5C210 8005B610 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5C214 8005B614 AFA40038 */  sw         $a0, 0x38($sp)
/* 5C218 8005B618 01C02025 */  or         $a0, $t6, $zero
/* 5C21C 8005B61C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C220 8005B620 27A50024 */  addiu      $a1, $sp, 0x24
/* 5C224 8005B624 00007812 */  mflo       $t7
/* 5C228 8005B628 00EF3021 */  addu       $a2, $a3, $t7
/* 5C22C 8005B62C 90D80180 */  lbu        $t8, 0x180($a2)
/* 5C230 8005B630 00000000 */  nop
/* 5C234 8005B634 17000057 */  bnez       $t8, .L8005B794
/* 5C238 8005B638 00000000 */   nop
/* 5C23C 8005B63C 84D90088 */  lh         $t9, 0x88($a2)
/* 5C240 8005B640 84C9008C */  lh         $t1, 0x8c($a2)
/* 5C244 8005B644 84CA0090 */  lh         $t2, 0x90($a2)
/* 5C248 8005B648 AFA6001C */  sw         $a2, 0x1c($sp)
/* 5C24C 8005B64C AFB90024 */  sw         $t9, 0x24($sp)
/* 5C250 8005B650 AFA90028 */  sw         $t1, 0x28($sp)
/* 5C254 8005B654 0C0164A8 */  jal        func_800592A0
/* 5C258 8005B658 AFAA002C */   sw        $t2, 0x2c($sp)
/* 5C25C 8005B65C 8FA6001C */  lw         $a2, 0x1c($sp)
/* 5C260 8005B660 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 5C264 8005B664 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 5C268 8005B668 1040006C */  beqz       $v0, .L8005B81C
/* 5C26C 8005B66C 24080198 */   addiu     $t0, $zero, 0x198
/* 5C270 8005B670 00480019 */  multu      $v0, $t0
/* 5C274 8005B674 3C0142C6 */  lui        $at, 0x42c6
/* 5C278 8005B678 444FF800 */  cfc1       $t7, $31
/* 5C27C 8005B67C 24180001 */  addiu      $t8, $zero, 1
/* 5C280 8005B680 44D8F800 */  ctc1       $t8, $31
/* 5C284 8005B684 44810000 */  mtc1       $at, $f0
/* 5C288 8005B688 240E00CA */  addiu      $t6, $zero, 0xca
/* 5C28C 8005B68C 46000124 */  cvt.w.s    $f4, $f0
/* 5C290 8005B690 3C014F00 */  lui        $at, 0x4f00
/* 5C294 8005B694 4458F800 */  cfc1       $t8, $31
/* 5C298 8005B698 00000000 */  nop
/* 5C29C 8005B69C 33180078 */  andi       $t8, $t8, 0x78
/* 5C2A0 8005B6A0 00005812 */  mflo       $t3
/* 5C2A4 8005B6A4 00EB1821 */  addu       $v1, $a3, $t3
/* 5C2A8 8005B6A8 946C0094 */  lhu        $t4, 0x94($v1)
/* 5C2AC 8005B6AC A46E0084 */  sh         $t6, 0x84($v1)
/* 5C2B0 8005B6B0 358D0001 */  ori        $t5, $t4, 1
/* 5C2B4 8005B6B4 A46D0094 */  sh         $t5, 0x94($v1)
/* 5C2B8 8005B6B8 13000012 */  beqz       $t8, .L8005B704
/* 5C2BC 8005B6BC E4600148 */   swc1      $f0, 0x148($v1)
/* 5C2C0 8005B6C0 44812000 */  mtc1       $at, $f4
/* 5C2C4 8005B6C4 24180001 */  addiu      $t8, $zero, 1
/* 5C2C8 8005B6C8 46040101 */  sub.s      $f4, $f0, $f4
/* 5C2CC 8005B6CC 3C018000 */  lui        $at, 0x8000
/* 5C2D0 8005B6D0 44D8F800 */  ctc1       $t8, $31
/* 5C2D4 8005B6D4 00000000 */  nop
/* 5C2D8 8005B6D8 46002124 */  cvt.w.s    $f4, $f4
/* 5C2DC 8005B6DC 4458F800 */  cfc1       $t8, $31
/* 5C2E0 8005B6E0 00000000 */  nop
/* 5C2E4 8005B6E4 33180078 */  andi       $t8, $t8, 0x78
/* 5C2E8 8005B6E8 17000004 */  bnez       $t8, .L8005B6FC
/* 5C2EC 8005B6EC 00000000 */   nop
/* 5C2F0 8005B6F0 44182000 */  mfc1       $t8, $f4
/* 5C2F4 8005B6F4 10000007 */  b          .L8005B714
/* 5C2F8 8005B6F8 0301C025 */   or        $t8, $t8, $at
.L8005B6FC:
/* 5C2FC 8005B6FC 10000005 */  b          .L8005B714
/* 5C300 8005B700 2418FFFF */   addiu     $t8, $zero, -1
.L8005B704:
/* 5C304 8005B704 44182000 */  mfc1       $t8, $f4
/* 5C308 8005B708 00000000 */  nop
/* 5C30C 8005B70C 0700FFFB */  bltz       $t8, .L8005B6FC
/* 5C310 8005B710 00000000 */   nop
.L8005B714:
/* 5C314 8005B714 90D90182 */  lbu        $t9, 0x182($a2)
/* 5C318 8005B718 44CFF800 */  ctc1       $t7, $31
/* 5C31C 8005B71C 1720000E */  bnez       $t9, .L8005B758
/* 5C320 8005B720 A0D80180 */   sb        $t8, 0x180($a2)
/* 5C324 8005B724 44800000 */  mtc1       $zero, $f0
/* 5C328 8005B728 3C01800F */  lui        $at, %hi(D_800EBF34)
/* 5C32C 8005B72C E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C330 8005B730 C426BF34 */  lwc1       $f6, %lo(D_800EBF34)($at)
/* 5C334 8005B734 3C01800F */  lui        $at, %hi(D_800EBF38)
/* 5C338 8005B738 E4660110 */  swc1       $f6, 0x110($v1)
/* 5C33C 8005B73C C428BF38 */  lwc1       $f8, %lo(D_800EBF38)($at)
/* 5C340 8005B740 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5C344 8005B744 E4600114 */  swc1       $f0, 0x114($v1)
/* 5C348 8005B748 E460011C */  swc1       $f0, 0x11c($v1)
/* 5C34C 8005B74C E4680118 */  swc1       $f8, 0x118($v1)
/* 5C350 8005B750 1000000E */  b          .L8005B78C
/* 5C354 8005B754 ACC00184 */   sw        $zero, 0x184($a2)
.L8005B758:
/* 5C358 8005B758 44800000 */  mtc1       $zero, $f0
/* 5C35C 8005B75C 3C01800F */  lui        $at, %hi(D_800EBF3C)
/* 5C360 8005B760 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C364 8005B764 E4600110 */  swc1       $f0, 0x110($v1)
/* 5C368 8005B768 E4600118 */  swc1       $f0, 0x118($v1)
/* 5C36C 8005B76C E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5C370 8005B770 C42ABF3C */  lwc1       $f10, %lo(D_800EBF3C)($at)
/* 5C374 8005B774 3C01800F */  lui        $at, %hi(D_800EBF40)
/* 5C378 8005B778 E46A0114 */  swc1       $f10, 0x114($v1)
/* 5C37C 8005B77C C430BF40 */  lwc1       $f16, %lo(D_800EBF40)($at)
/* 5C380 8005B780 24090001 */  addiu      $t1, $zero, 1
/* 5C384 8005B784 E470011C */  swc1       $f16, 0x11c($v1)
/* 5C388 8005B788 ACC90184 */  sw         $t1, 0x184($a2)
.L8005B78C:
/* 5C38C 8005B78C E4C00144 */  swc1       $f0, 0x144($a2)
/* 5C390 8005B790 A0C20182 */  sb         $v0, 0x182($a2)
.L8005B794:
/* 5C394 8005B794 8CCA0184 */  lw         $t2, 0x184($a2)
/* 5C398 8005B798 90C30182 */  lbu        $v1, 0x182($a2)
/* 5C39C 8005B79C 1540000A */  bnez       $t2, .L8005B7C8
/* 5C3A0 8005B7A0 3C01800F */   lui       $at, 0x800f
/* 5C3A4 8005B7A4 00680019 */  multu      $v1, $t0
/* 5C3A8 8005B7A8 C4C40144 */  lwc1       $f4, 0x144($a2)
/* 5C3AC 8005B7AC 00005812 */  mflo       $t3
/* 5C3B0 8005B7B0 00EB1021 */  addu       $v0, $a3, $t3
/* 5C3B4 8005B7B4 C452011C */  lwc1       $f18, 0x11c($v0)
/* 5C3B8 8005B7B8 00000000 */  nop
/* 5C3BC 8005B7BC 46049180 */  add.s      $f6, $f18, $f4
/* 5C3C0 8005B7C0 10000009 */  b          .L8005B7E8
/* 5C3C4 8005B7C4 E446011C */   swc1      $f6, 0x11c($v0)
.L8005B7C8:
/* 5C3C8 8005B7C8 00680019 */  multu      $v1, $t0
/* 5C3CC 8005B7CC C4CA0144 */  lwc1       $f10, 0x144($a2)
/* 5C3D0 8005B7D0 00006012 */  mflo       $t4
/* 5C3D4 8005B7D4 00EC1021 */  addu       $v0, $a3, $t4
/* 5C3D8 8005B7D8 C4480118 */  lwc1       $f8, 0x118($v0)
/* 5C3DC 8005B7DC 00000000 */  nop
/* 5C3E0 8005B7E0 460A4400 */  add.s      $f16, $f8, $f10
/* 5C3E4 8005B7E4 E4500118 */  swc1       $f16, 0x118($v0)
.L8005B7E8:
/* 5C3E8 8005B7E8 C4D20144 */  lwc1       $f18, 0x144($a2)
/* 5C3EC 8005B7EC C427BF48 */  lwc1       $f7, -0x40b8($at)
/* 5C3F0 8005B7F0 C426BF4C */  lwc1       $f6, -0x40b4($at)
/* 5C3F4 8005B7F4 90CD0180 */  lbu        $t5, 0x180($a2)
/* 5C3F8 8005B7F8 46009121 */  cvt.d.s    $f4, $f18
/* 5C3FC 8005B7FC 46262200 */  add.d      $f8, $f4, $f6
/* 5C400 8005B800 25AEFFFF */  addiu      $t6, $t5, -1
/* 5C404 8005B804 462042A0 */  cvt.s.d    $f10, $f8
/* 5C408 8005B808 31CF00FF */  andi       $t7, $t6, 0xff
/* 5C40C 8005B80C E4CA0144 */  swc1       $f10, 0x144($a2)
/* 5C410 8005B810 15E00002 */  bnez       $t7, .L8005B81C
/* 5C414 8005B814 A0CE0180 */   sb        $t6, 0x180($a2)
/* 5C418 8005B818 A4C00180 */  sh         $zero, 0x180($a2)
.L8005B81C:
/* 5C41C 8005B81C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C420 8005B820 27BD0038 */  addiu      $sp, $sp, 0x38
/* 5C424 8005B824 03E00008 */  jr         $ra
/* 5C428 8005B828 00000000 */   nop
