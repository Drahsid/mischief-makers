glabel func_8007D880
/* 7E480 8007D880 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7E484 8007D884 AFB60050 */  sw         $s6, 0x50($sp)
/* 7E488 8007D888 AFB40048 */  sw         $s4, 0x48($sp)
/* 7E48C 8007D88C 3094FFFF */  andi       $s4, $a0, 0xffff
/* 7E490 8007D890 24160198 */  addiu      $s6, $zero, 0x198
/* 7E494 8007D894 02960019 */  multu      $s4, $s6
/* 7E498 8007D898 AFB5004C */  sw         $s5, 0x4c($sp)
/* 7E49C 8007D89C 3C15800F */  lui        $s5, %hi(D_800EF510)
/* 7E4A0 8007D8A0 26B5F510 */  addiu      $s5, $s5, %lo(D_800EF510)
/* 7E4A4 8007D8A4 AFB20040 */  sw         $s2, 0x40($sp)
/* 7E4A8 8007D8A8 3C03800E */  lui        $v1, 0x800e
/* 7E4AC 8007D8AC AFBF0054 */  sw         $ra, 0x54($sp)
/* 7E4B0 8007D8B0 AFB30044 */  sw         $s3, 0x44($sp)
/* 7E4B4 8007D8B4 AFB1003C */  sw         $s1, 0x3c($sp)
/* 7E4B8 8007D8B8 AFB00038 */  sw         $s0, 0x38($sp)
/* 7E4BC 8007D8BC E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7E4C0 8007D8C0 E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7E4C4 8007D8C4 00007012 */  mflo       $t6
/* 7E4C8 8007D8C8 02AE9021 */  addu       $s2, $s5, $t6
/* 7E4CC 8007D8CC 8E4F0150 */  lw         $t7, 0x150($s2)
/* 7E4D0 8007D8D0 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7E4D4 8007D8D4 000FC080 */  sll        $t8, $t7, 2
/* 7E4D8 8007D8D8 00781821 */  addu       $v1, $v1, $t8
/* 7E4DC 8007D8DC 8C630F88 */  lw         $v1, 0xf88($v1)
/* 7E4E0 8007D8E0 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7E4E4 8007D8E4 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7E4E8 8007D8E8 E7B60024 */  swc1       $f22, 0x24($sp)
/* 7E4EC 8007D8EC E7B50018 */  swc1       $f21, 0x18($sp)
/* 7E4F0 8007D8F0 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7E4F4 8007D8F4 AFA40058 */  sw         $a0, 0x58($sp)
/* 7E4F8 8007D8F8 94700000 */  lhu        $s0, ($v1)
/* 7E4FC 8007D8FC 34138FFF */  ori        $s3, $zero, 0x8fff
/* 7E500 8007D900 44856000 */  mtc1       $a1, $f12
/* 7E504 8007D904 4480A000 */  mtc1       $zero, $f20
/* 7E508 8007D908 12700015 */  beq        $s3, $s0, .L8007D960
/* 7E50C 8007D90C 00608825 */   or        $s1, $v1, $zero
/* 7E510 8007D910 3C014004 */  lui        $at, 0x4004
/* 7E514 8007D914 4481B800 */  mtc1       $at, $f23
/* 7E518 8007D918 4480B000 */  mtc1       $zero, $f22
/* 7E51C 8007D91C 00000000 */  nop
/* 7E520 8007D920 32198000 */  andi       $t9, $s0, 0x8000
.L8007D924:
/* 7E524 8007D924 13200008 */  beqz       $t9, .L8007D948
/* 7E528 8007D928 00000000 */   nop
/* 7E52C 8007D92C 460061A1 */  cvt.d.s    $f6, $f12
/* 7E530 8007D930 00000000 */  nop
/* 7E534 8007D934 46363203 */  div.d      $f8, $f6, $f22
/* 7E538 8007D938 4600A121 */  cvt.d.s    $f4, $f20
/* 7E53C 8007D93C 46282280 */  add.d      $f10, $f4, $f8
/* 7E540 8007D940 10000002 */  b          .L8007D94C
/* 7E544 8007D944 46205520 */   cvt.s.d   $f20, $f10
.L8007D948:
/* 7E548 8007D948 460CA500 */  add.s      $f20, $f20, $f12
.L8007D94C:
/* 7E54C 8007D94C 96300002 */  lhu        $s0, 2($s1)
/* 7E550 8007D950 26310002 */  addiu      $s1, $s1, 2
/* 7E554 8007D954 1670FFF3 */  bne        $s3, $s0, .L8007D924
/* 7E558 8007D958 32198000 */   andi      $t9, $s0, 0x8000
/* 7E55C 8007D95C 00608825 */  or         $s1, $v1, $zero
.L8007D960:
/* 7E560 8007D960 3C014004 */  lui        $at, 0x4004
/* 7E564 8007D964 4481B800 */  mtc1       $at, $f23
/* 7E568 8007D968 3C01800F */  lui        $at, %hi(D_800ECFC0)
/* 7E56C 8007D96C C433CFC0 */  lwc1       $f19, %lo(D_800ECFC0)($at)
/* 7E570 8007D970 C432CFC4 */  lwc1       $f18, -0x303c($at)
/* 7E574 8007D974 46006621 */  cvt.d.s    $f24, $f12
/* 7E578 8007D978 4632C182 */  mul.d      $f6, $f24, $f18
/* 7E57C 8007D97C 4600A421 */  cvt.d.s    $f16, $f20
/* 7E580 8007D980 C64000B8 */  lwc1       $f0, 0xb8($s2)
/* 7E584 8007D984 3C014000 */  lui        $at, 0x4000
/* 7E588 8007D988 4480B000 */  mtc1       $zero, $f22
/* 7E58C 8007D98C 46268103 */  div.d      $f4, $f16, $f6
/* 7E590 8007D990 46000221 */  cvt.d.s    $f8, $f0
/* 7E594 8007D994 460CA401 */  sub.s      $f16, $f20, $f12
/* 7E598 8007D998 46008187 */  neg.s      $f6, $f16
/* 7E59C 8007D99C 46244282 */  mul.d      $f10, $f8, $f4
/* 7E5A0 8007D9A0 44814000 */  mtc1       $at, $f8
/* 7E5A4 8007D9A4 00000000 */  nop
/* 7E5A8 8007D9A8 46083103 */  div.s      $f4, $f6, $f8
/* 7E5AC 8007D9AC 462054A0 */  cvt.s.d    $f18, $f10
/* 7E5B0 8007D9B0 E65200B4 */  swc1       $f18, 0xb4($s2)
/* 7E5B4 8007D9B4 96300000 */  lhu        $s0, ($s1)
/* 7E5B8 8007D9B8 46040502 */  mul.s      $f20, $f0, $f4
/* 7E5BC 8007D9BC 00000000 */  nop
/* 7E5C0 8007D9C0 460C0682 */  mul.s      $f26, $f0, $f12
/* 7E5C4 8007D9C4 1270005D */  beq        $s3, $s0, .L8007DB3C
/* 7E5C8 8007D9C8 00000000 */   nop
/* 7E5CC 8007D9CC 32088000 */  andi       $t0, $s0, 0x8000
.L8007D9D0:
/* 7E5D0 8007D9D0 11000009 */  beqz       $t0, .L8007D9F8
/* 7E5D4 8007D9D4 00000000 */   nop
/* 7E5D8 8007D9D8 4636C283 */  div.d      $f10, $f24, $f22
/* 7E5DC 8007D9DC C65200B8 */  lwc1       $f18, 0xb8($s2)
/* 7E5E0 8007D9E0 4600A221 */  cvt.d.s    $f8, $f20
/* 7E5E4 8007D9E4 46009421 */  cvt.d.s    $f16, $f18
/* 7E5E8 8007D9E8 46305182 */  mul.d      $f6, $f10, $f16
/* 7E5EC 8007D9EC 46264100 */  add.d      $f4, $f8, $f6
/* 7E5F0 8007D9F0 1000004E */  b          .L8007DB2C
/* 7E5F4 8007D9F4 46202520 */   cvt.s.d   $f20, $f4
.L8007D9F8:
/* 7E5F8 8007D9F8 0C01F4A4 */  jal        func_8007D290
/* 7E5FC 8007D9FC 3284FFFF */   andi      $a0, $s4, 0xffff
/* 7E600 8007DA00 1040004F */  beqz       $v0, .L8007DB40
/* 7E604 8007DA04 8FBF0054 */   lw        $ra, 0x54($sp)
/* 7E608 8007DA08 00560019 */  multu      $v0, $s6
/* 7E60C 8007DA0C 00106040 */  sll        $t4, $s0, 1
/* 7E610 8007DA10 258D02D2 */  addiu      $t5, $t4, 0x2d2
/* 7E614 8007DA14 00004812 */  mflo       $t1
/* 7E618 8007DA18 02A91821 */  addu       $v1, $s5, $t1
/* 7E61C 8007DA1C 946A0094 */  lhu        $t2, 0x94($v1)
/* 7E620 8007DA20 A46D0084 */  sh         $t5, 0x84($v1)
/* 7E624 8007DA24 354B0001 */  ori        $t3, $t2, 1
/* 7E628 8007DA28 A46B0094 */  sh         $t3, 0x94($v1)
/* 7E62C 8007DA2C 864E0088 */  lh         $t6, 0x88($s2)
/* 7E630 8007DA30 00000000 */  nop
/* 7E634 8007DA34 448E9000 */  mtc1       $t6, $f18
/* 7E638 8007DA38 00000000 */  nop
/* 7E63C 8007DA3C 468092A0 */  cvt.s.w    $f10, $f18
/* 7E640 8007DA40 46145400 */  add.s      $f16, $f10, $f20
/* 7E644 8007DA44 444FF800 */  cfc1       $t7, $31
/* 7E648 8007DA48 00000000 */  nop
/* 7E64C 8007DA4C 35E10003 */  ori        $at, $t7, 3
/* 7E650 8007DA50 38210002 */  xori       $at, $at, 2
/* 7E654 8007DA54 44C1F800 */  ctc1       $at, $31
/* 7E658 8007DA58 3C014F80 */  lui        $at, 0x4f80
/* 7E65C 8007DA5C 46008224 */  cvt.w.s    $f8, $f16
/* 7E660 8007DA60 44184000 */  mfc1       $t8, $f8
/* 7E664 8007DA64 44CFF800 */  ctc1       $t7, $31
/* 7E668 8007DA68 A4780088 */  sh         $t8, 0x88($v1)
/* 7E66C 8007DA6C 8659008C */  lh         $t9, 0x8c($s2)
/* 7E670 8007DA70 00000000 */  nop
/* 7E674 8007DA74 A479008C */  sh         $t9, 0x8c($v1)
/* 7E678 8007DA78 9248009F */  lbu        $t0, 0x9f($s2)
/* 7E67C 8007DA7C 00000000 */  nop
/* 7E680 8007DA80 44883000 */  mtc1       $t0, $f6
/* 7E684 8007DA84 05010004 */  bgez       $t0, .L8007DA98
/* 7E688 8007DA88 46803120 */   cvt.s.w   $f4, $f6
/* 7E68C 8007DA8C 44819000 */  mtc1       $at, $f18
/* 7E690 8007DA90 00000000 */  nop
/* 7E694 8007DA94 46122100 */  add.s      $f4, $f4, $f18
.L8007DA98:
/* 7E698 8007DA98 46002021 */  cvt.d.s    $f0, $f4
/* 7E69C 8007DA9C 46200280 */  add.d      $f10, $f0, $f0
/* 7E6A0 8007DAA0 240A0001 */  addiu      $t2, $zero, 1
/* 7E6A4 8007DAA4 4449F800 */  cfc1       $t1, $31
/* 7E6A8 8007DAA8 44CAF800 */  ctc1       $t2, $31
/* 7E6AC 8007DAAC 3C0141E0 */  lui        $at, 0x41e0
/* 7E6B0 8007DAB0 46205424 */  cvt.w.d    $f16, $f10
/* 7E6B4 8007DAB4 444AF800 */  cfc1       $t2, $31
/* 7E6B8 8007DAB8 00000000 */  nop
/* 7E6BC 8007DABC 314A0078 */  andi       $t2, $t2, 0x78
/* 7E6C0 8007DAC0 11400013 */  beqz       $t2, .L8007DB10
/* 7E6C4 8007DAC4 00000000 */   nop
/* 7E6C8 8007DAC8 44818800 */  mtc1       $at, $f17
/* 7E6CC 8007DACC 44808000 */  mtc1       $zero, $f16
/* 7E6D0 8007DAD0 240A0001 */  addiu      $t2, $zero, 1
/* 7E6D4 8007DAD4 46305401 */  sub.d      $f16, $f10, $f16
/* 7E6D8 8007DAD8 3C018000 */  lui        $at, 0x8000
/* 7E6DC 8007DADC 44CAF800 */  ctc1       $t2, $31
/* 7E6E0 8007DAE0 00000000 */  nop
/* 7E6E4 8007DAE4 46208424 */  cvt.w.d    $f16, $f16
/* 7E6E8 8007DAE8 444AF800 */  cfc1       $t2, $31
/* 7E6EC 8007DAEC 00000000 */  nop
/* 7E6F0 8007DAF0 314A0078 */  andi       $t2, $t2, 0x78
/* 7E6F4 8007DAF4 15400004 */  bnez       $t2, .L8007DB08
/* 7E6F8 8007DAF8 00000000 */   nop
/* 7E6FC 8007DAFC 440A8000 */  mfc1       $t2, $f16
/* 7E700 8007DB00 10000007 */  b          .L8007DB20
/* 7E704 8007DB04 01415025 */   or        $t2, $t2, $at
.L8007DB08:
/* 7E708 8007DB08 10000005 */  b          .L8007DB20
/* 7E70C 8007DB0C 240AFFFF */   addiu     $t2, $zero, -1
.L8007DB10:
/* 7E710 8007DB10 440A8000 */  mfc1       $t2, $f16
/* 7E714 8007DB14 00000000 */  nop
/* 7E718 8007DB18 0540FFFB */  bltz       $t2, .L8007DB08
/* 7E71C 8007DB1C 00000000 */   nop
.L8007DB20:
/* 7E720 8007DB20 44C9F800 */  ctc1       $t1, $31
/* 7E724 8007DB24 A06A009F */  sb         $t2, 0x9f($v1)
/* 7E728 8007DB28 461AA500 */  add.s      $f20, $f20, $f26
.L8007DB2C:
/* 7E72C 8007DB2C 96300002 */  lhu        $s0, 2($s1)
/* 7E730 8007DB30 26310002 */  addiu      $s1, $s1, 2
/* 7E734 8007DB34 1670FFA6 */  bne        $s3, $s0, .L8007D9D0
/* 7E738 8007DB38 32088000 */   andi      $t0, $s0, 0x8000
.L8007DB3C:
/* 7E73C 8007DB3C 8FBF0054 */  lw         $ra, 0x54($sp)
.L8007DB40:
/* 7E740 8007DB40 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7E744 8007DB44 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7E748 8007DB48 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7E74C 8007DB4C C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7E750 8007DB50 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7E754 8007DB54 C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7E758 8007DB58 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7E75C 8007DB5C C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7E760 8007DB60 8FB00038 */  lw         $s0, 0x38($sp)
/* 7E764 8007DB64 8FB1003C */  lw         $s1, 0x3c($sp)
/* 7E768 8007DB68 8FB20040 */  lw         $s2, 0x40($sp)
/* 7E76C 8007DB6C 8FB30044 */  lw         $s3, 0x44($sp)
/* 7E770 8007DB70 8FB40048 */  lw         $s4, 0x48($sp)
/* 7E774 8007DB74 8FB5004C */  lw         $s5, 0x4c($sp)
/* 7E778 8007DB78 8FB60050 */  lw         $s6, 0x50($sp)
/* 7E77C 8007DB7C 03E00008 */  jr         $ra
/* 7E780 8007DB80 27BD0058 */   addiu     $sp, $sp, 0x58
