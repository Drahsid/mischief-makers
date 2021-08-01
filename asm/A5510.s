.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel guPerspectiveF
/* A5510 800A4910 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A5514 800A4914 AFBF001C */  sw         $ra, 0x1c($sp)
/* A5518 800A4918 AFA40030 */  sw         $a0, 0x30($sp)
/* A551C 800A491C AFA50034 */  sw         $a1, 0x34($sp)
/* A5520 800A4920 AFA60038 */  sw         $a2, 0x38($sp)
/* A5524 800A4924 AFA7003C */  sw         $a3, 0x3c($sp)
/* A5528 800A4928 F7B40010 */  sdc1       $f20, 0x10($sp)
/* A552C 800A492C 0C02CB32 */  jal        guMtxIdentF
/* A5530 800A4930 8FA40030 */   lw        $a0, 0x30($sp)
/* A5534 800A4934 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A5538 800A4938 3C01800F */  lui        $at, %hi(D_800EDA70)
/* A553C 800A493C D428DA70 */  ldc1       $f8, %lo(D_800EDA70)($at)
/* A5540 800A4940 460021A1 */  cvt.d.s    $f6, $f4
/* A5544 800A4944 46283282 */  mul.d      $f10, $f6, $f8
/* A5548 800A4948 46205420 */  cvt.s.d    $f16, $f10
/* A554C 800A494C E7B00038 */  swc1       $f16, 0x38($sp)
/* A5550 800A4950 3C014000 */  lui        $at, 0x4000
/* A5554 800A4954 44812000 */  mtc1       $at, $f4
/* A5558 800A4958 C7B20038 */  lwc1       $f18, 0x38($sp)
/* A555C 800A495C 0C02CB68 */  jal        __cosf
/* A5560 800A4960 46049303 */   div.s     $f12, $f18, $f4
/* A5564 800A4964 3C014000 */  lui        $at, 0x4000
/* A5568 800A4968 44814000 */  mtc1       $at, $f8
/* A556C 800A496C C7A60038 */  lwc1       $f6, 0x38($sp)
/* A5570 800A4970 46000506 */  mov.s      $f20, $f0
/* A5574 800A4974 0C02CBF8 */  jal        __sinf
/* A5578 800A4978 46083303 */   div.s     $f12, $f6, $f8
/* A557C 800A497C 4600A283 */  div.s      $f10, $f20, $f0
/* A5580 800A4980 E7AA002C */  swc1       $f10, 0x2c($sp)
/* A5584 800A4984 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* A5588 800A4988 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A558C 800A498C 8FAE0030 */  lw         $t6, 0x30($sp)
/* A5590 800A4990 46128103 */  div.s      $f4, $f16, $f18
/* A5594 800A4994 E5C40000 */  swc1       $f4, ($t6)
/* A5598 800A4998 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A559C 800A499C 8FAF0030 */  lw         $t7, 0x30($sp)
/* A55A0 800A49A0 E5E60014 */  swc1       $f6, 0x14($t7)
/* A55A4 800A49A4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* A55A8 800A49A8 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* A55AC 800A49AC 8FB80030 */  lw         $t8, 0x30($sp)
/* A55B0 800A49B0 460A4400 */  add.s      $f16, $f8, $f10
/* A55B4 800A49B4 460A4481 */  sub.s      $f18, $f8, $f10
/* A55B8 800A49B8 46128103 */  div.s      $f4, $f16, $f18
/* A55BC 800A49BC E7040028 */  swc1       $f4, 0x28($t8)
/* A55C0 800A49C0 3C01BF80 */  lui        $at, 0xbf80
/* A55C4 800A49C4 44813000 */  mtc1       $at, $f6
/* A55C8 800A49C8 8FB90030 */  lw         $t9, 0x30($sp)
/* A55CC 800A49CC E726002C */  swc1       $f6, 0x2c($t9)
/* A55D0 800A49D0 3C014000 */  lui        $at, 0x4000
/* A55D4 800A49D4 44814000 */  mtc1       $at, $f8
/* A55D8 800A49D8 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* A55DC 800A49DC C7B20044 */  lwc1       $f18, 0x44($sp)
/* A55E0 800A49E0 8FA80030 */  lw         $t0, 0x30($sp)
/* A55E4 800A49E4 460A4402 */  mul.s      $f16, $f8, $f10
/* A55E8 800A49E8 46125181 */  sub.s      $f6, $f10, $f18
/* A55EC 800A49EC 46128102 */  mul.s      $f4, $f16, $f18
/* A55F0 800A49F0 46062203 */  div.s      $f8, $f4, $f6
/* A55F4 800A49F4 E5080038 */  swc1       $f8, 0x38($t0)
/* A55F8 800A49F8 44808000 */  mtc1       $zero, $f16
/* A55FC 800A49FC 8FA90030 */  lw         $t1, 0x30($sp)
/* A5600 800A4A00 E530003C */  swc1       $f16, 0x3c($t1)
/* A5604 800A4A04 AFA00028 */  sw         $zero, 0x28($sp)
.L800A4A08:
/* A5608 800A4A08 AFA00024 */  sw         $zero, 0x24($sp)
.L800A4A0C:
/* A560C 800A4A0C 8FAB0028 */  lw         $t3, 0x28($sp)
/* A5610 800A4A10 8FAA0030 */  lw         $t2, 0x30($sp)
/* A5614 800A4A14 8FAE0024 */  lw         $t6, 0x24($sp)
/* A5618 800A4A18 000B6100 */  sll        $t4, $t3, 4
/* A561C 800A4A1C 014C6821 */  addu       $t5, $t2, $t4
/* A5620 800A4A20 000E7880 */  sll        $t7, $t6, 2
/* A5624 800A4A24 01AFC021 */  addu       $t8, $t5, $t7
/* A5628 800A4A28 C70A0000 */  lwc1       $f10, ($t8)
/* A562C 800A4A2C C7B20048 */  lwc1       $f18, 0x48($sp)
/* A5630 800A4A30 46125102 */  mul.s      $f4, $f10, $f18
/* A5634 800A4A34 E7040000 */  swc1       $f4, ($t8)
/* A5638 800A4A38 8FB90024 */  lw         $t9, 0x24($sp)
/* A563C 800A4A3C 27280001 */  addiu      $t0, $t9, 1
/* A5640 800A4A40 29010004 */  slti       $at, $t0, 4
/* A5644 800A4A44 1420FFF1 */  bnez       $at, .L800A4A0C
/* A5648 800A4A48 AFA80024 */   sw        $t0, 0x24($sp)
/* A564C 800A4A4C 8FA90028 */  lw         $t1, 0x28($sp)
/* A5650 800A4A50 252B0001 */  addiu      $t3, $t1, 1
/* A5654 800A4A54 29610004 */  slti       $at, $t3, 4
/* A5658 800A4A58 1420FFEB */  bnez       $at, .L800A4A08
/* A565C 800A4A5C AFAB0028 */   sw        $t3, 0x28($sp)
/* A5660 800A4A60 8FAA0034 */  lw         $t2, 0x34($sp)
/* A5664 800A4A64 11400046 */  beqz       $t2, .L800A4B80
/* A5668 800A4A68 00000000 */   nop
/* A566C 800A4A6C C7A60040 */  lwc1       $f6, 0x40($sp)
/* A5670 800A4A70 C7A80044 */  lwc1       $f8, 0x44($sp)
/* A5674 800A4A74 3C014000 */  lui        $at, 0x4000
/* A5678 800A4A78 44819800 */  mtc1       $at, $f19
/* A567C 800A4A7C 46083400 */  add.s      $f16, $f6, $f8
/* A5680 800A4A80 44809000 */  mtc1       $zero, $f18
/* A5684 800A4A84 460082A1 */  cvt.d.s    $f10, $f16
/* A5688 800A4A88 4632503E */  c.le.d     $f10, $f18
/* A568C 800A4A8C 00000000 */  nop
/* A5690 800A4A90 45000005 */  bc1f       .L800A4AA8
/* A5694 800A4A94 00000000 */   nop
/* A5698 800A4A98 8FAE0034 */  lw         $t6, 0x34($sp)
/* A569C 800A4A9C 340CFFFF */  ori        $t4, $zero, 0xffff
/* A56A0 800A4AA0 10000037 */  b          .L800A4B80
/* A56A4 800A4AA4 A5CC0000 */   sh        $t4, ($t6)
.L800A4AA8:
/* A56A8 800A4AA8 C7A40040 */  lwc1       $f4, 0x40($sp)
/* A56AC 800A4AAC C7A60044 */  lwc1       $f6, 0x44($sp)
/* A56B0 800A4AB0 3C014100 */  lui        $at, 0x4100
/* A56B4 800A4AB4 44815800 */  mtc1       $at, $f11
/* A56B8 800A4AB8 46062200 */  add.s      $f8, $f4, $f6
/* A56BC 800A4ABC 44805000 */  mtc1       $zero, $f10
/* A56C0 800A4AC0 240F0001 */  addiu      $t7, $zero, 1
/* A56C4 800A4AC4 46004421 */  cvt.d.s    $f16, $f8
/* A56C8 800A4AC8 46305483 */  div.d      $f18, $f10, $f16
/* A56CC 800A4ACC 444DF800 */  cfc1       $t5, $31
/* A56D0 800A4AD0 44CFF800 */  ctc1       $t7, $31
/* A56D4 800A4AD4 00000000 */  nop
/* A56D8 800A4AD8 46209124 */  cvt.w.d    $f4, $f18
/* A56DC 800A4ADC 444FF800 */  cfc1       $t7, $31
/* A56E0 800A4AE0 00000000 */  nop
/* A56E4 800A4AE4 31E10004 */  andi       $at, $t7, 4
/* A56E8 800A4AE8 31EF0078 */  andi       $t7, $t7, 0x78
/* A56EC 800A4AEC 11E00015 */  beqz       $t7, .L800A4B44
/* A56F0 800A4AF0 00000000 */   nop
/* A56F4 800A4AF4 3C0141E0 */  lui        $at, 0x41e0
/* A56F8 800A4AF8 44812800 */  mtc1       $at, $f5
/* A56FC 800A4AFC 44802000 */  mtc1       $zero, $f4
/* A5700 800A4B00 240F0001 */  addiu      $t7, $zero, 1
/* A5704 800A4B04 46249101 */  sub.d      $f4, $f18, $f4
/* A5708 800A4B08 44CFF800 */  ctc1       $t7, $31
/* A570C 800A4B0C 00000000 */  nop
/* A5710 800A4B10 46202124 */  cvt.w.d    $f4, $f4
/* A5714 800A4B14 444FF800 */  cfc1       $t7, $31
/* A5718 800A4B18 00000000 */  nop
/* A571C 800A4B1C 31E10004 */  andi       $at, $t7, 4
/* A5720 800A4B20 31EF0078 */  andi       $t7, $t7, 0x78
/* A5724 800A4B24 15E00005 */  bnez       $t7, .L800A4B3C
/* A5728 800A4B28 00000000 */   nop
/* A572C 800A4B2C 440F2000 */  mfc1       $t7, $f4
/* A5730 800A4B30 3C018000 */  lui        $at, 0x8000
/* A5734 800A4B34 10000007 */  b          .L800A4B54
/* A5738 800A4B38 01E17825 */   or        $t7, $t7, $at
.L800A4B3C:
/* A573C 800A4B3C 10000005 */  b          .L800A4B54
/* A5740 800A4B40 240FFFFF */   addiu     $t7, $zero, -1
.L800A4B44:
/* A5744 800A4B44 440F2000 */  mfc1       $t7, $f4
/* A5748 800A4B48 00000000 */  nop
/* A574C 800A4B4C 05E0FFFB */  bltz       $t7, .L800A4B3C
/* A5750 800A4B50 00000000 */   nop
.L800A4B54:
/* A5754 800A4B54 8FB80034 */  lw         $t8, 0x34($sp)
/* A5758 800A4B58 44CDF800 */  ctc1       $t5, $31
/* A575C 800A4B5C A70F0000 */  sh         $t7, ($t8)
/* A5760 800A4B60 00000000 */  nop
/* A5764 800A4B64 8FB90034 */  lw         $t9, 0x34($sp)
/* A5768 800A4B68 97280000 */  lhu        $t0, ($t9)
/* A576C 800A4B6C 1D000004 */  bgtz       $t0, .L800A4B80
/* A5770 800A4B70 00000000 */   nop
/* A5774 800A4B74 8FAB0034 */  lw         $t3, 0x34($sp)
/* A5778 800A4B78 24090001 */  addiu      $t1, $zero, 1
/* A577C 800A4B7C A5690000 */  sh         $t1, ($t3)
.L800A4B80:
/* A5780 800A4B80 10000001 */  b          .L800A4B88
/* A5784 800A4B84 00000000 */   nop
.L800A4B88:
/* A5788 800A4B88 8FBF001C */  lw         $ra, 0x1c($sp)
/* A578C 800A4B8C D7B40010 */  ldc1       $f20, 0x10($sp)
/* A5790 800A4B90 27BD0030 */  addiu      $sp, $sp, 0x30
/* A5794 800A4B94 03E00008 */  jr         $ra
/* A5798 800A4B98 00000000 */   nop

glabel guPerspective
/* A579C 800A4B9C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A57A0 800A4BA0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A57A4 800A4BA4 AFA40068 */  sw         $a0, 0x68($sp)
/* A57A8 800A4BA8 AFA5006C */  sw         $a1, 0x6c($sp)
/* A57AC 800A4BAC AFA60070 */  sw         $a2, 0x70($sp)
/* A57B0 800A4BB0 AFA70074 */  sw         $a3, 0x74($sp)
/* A57B4 800A4BB4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* A57B8 800A4BB8 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* A57BC 800A4BBC C7A80080 */  lwc1       $f8, 0x80($sp)
/* A57C0 800A4BC0 27A40028 */  addiu      $a0, $sp, 0x28
/* A57C4 800A4BC4 8FA5006C */  lw         $a1, 0x6c($sp)
/* A57C8 800A4BC8 8FA60070 */  lw         $a2, 0x70($sp)
/* A57CC 800A4BCC 8FA70074 */  lw         $a3, 0x74($sp)
/* A57D0 800A4BD0 E7A40010 */  swc1       $f4, 0x10($sp)
/* A57D4 800A4BD4 E7A60014 */  swc1       $f6, 0x14($sp)
/* A57D8 800A4BD8 0C029244 */  jal        guPerspectiveF
/* A57DC 800A4BDC E7A80018 */   swc1      $f8, 0x18($sp)
/* A57E0 800A4BE0 27A40028 */  addiu      $a0, $sp, 0x28
/* A57E4 800A4BE4 0C02CA98 */  jal        guMtxF2L
/* A57E8 800A4BE8 8FA50068 */   lw        $a1, 0x68($sp)
/* A57EC 800A4BEC 10000001 */  b          .L800A4BF4
/* A57F0 800A4BF0 00000000 */   nop
.L800A4BF4:
/* A57F4 800A4BF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* A57F8 800A4BF8 27BD0068 */  addiu      $sp, $sp, 0x68
/* A57FC 800A4BFC 03E00008 */  jr         $ra
/* A5800 800A4C00 00000000 */   nop
/* A5804 800A4C04 00000000 */  nop
/* A5808 800A4C08 00000000 */  nop
/* A580C 800A4C0C 00000000 */  nop
