glabel func_80089A10
/* 8A610 80089A10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8A614 80089A14 000E7880 */  sll        $t7, $t6, 2
/* 8A618 80089A18 01EE7823 */  subu       $t7, $t7, $t6
/* 8A61C 80089A1C 000F7880 */  sll        $t7, $t7, 2
/* 8A620 80089A20 01EE7821 */  addu       $t7, $t7, $t6
/* 8A624 80089A24 000F7880 */  sll        $t7, $t7, 2
/* 8A628 80089A28 01EE7823 */  subu       $t7, $t7, $t6
/* 8A62C 80089A2C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8A630 80089A30 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8A634 80089A34 000F78C0 */  sll        $t7, $t7, 3
/* 8A638 80089A38 01F81821 */  addu       $v1, $t7, $t8
/* 8A63C 80089A3C 8C790150 */  lw         $t9, 0x150($v1)
/* 8A640 80089A40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8A644 80089A44 3328000F */  andi       $t0, $t9, 0xf
/* 8A648 80089A48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A64C 80089A4C 1100000C */  beqz       $t0, .L80089A80
/* 8A650 80089A50 AFA40028 */   sw        $a0, 0x28($sp)
/* 8A654 80089A54 24010001 */  addiu      $at, $zero, 1
/* 8A658 80089A58 11010070 */  beq        $t0, $at, .L80089C1C
/* 8A65C 80089A5C 3C19800C */   lui       $t9, 0x800c
/* 8A660 80089A60 24010002 */  addiu      $at, $zero, 2
/* 8A664 80089A64 1101009D */  beq        $t0, $at, .L80089CDC
/* 8A668 80089A68 3C19800C */   lui       $t9, 0x800c
/* 8A66C 80089A6C 24010003 */  addiu      $at, $zero, 3
/* 8A670 80089A70 110100CA */  beq        $t0, $at, .L80089D9C
/* 8A674 80089A74 3C19800C */   lui       $t9, 0x800c
/* 8A678 80089A78 1000011C */  b          .L80089EEC
/* 8A67C 80089A7C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80089A80:
/* 8A680 80089A80 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 8A684 80089A84 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 8A688 80089A88 00000000 */  nop
/* 8A68C 80089A8C 312A000F */  andi       $t2, $t1, 0xf
/* 8A690 80089A90 15400116 */  bnez       $t2, .L80089EEC
/* 8A694 80089A94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8A698 80089A98 0C0005E3 */  jal        func_8000178C
/* 8A69C 80089A9C AFA30018 */   sw        $v1, 0x18($sp)
/* 8A6A0 80089AA0 0C0005E3 */  jal        func_8000178C
/* 8A6A4 80089AA4 A7A2001C */   sh        $v0, 0x1c($sp)
/* 8A6A8 80089AA8 97AB001C */  lhu        $t3, 0x1c($sp)
/* 8A6AC 80089AAC 8FA30018 */  lw         $v1, 0x18($sp)
/* 8A6B0 80089AB0 256CFF80 */  addiu      $t4, $t3, -0x80
/* 8A6B4 80089AB4 448C2000 */  mtc1       $t4, $f4
/* 8A6B8 80089AB8 3C013FA0 */  lui        $at, 0x3fa0
/* 8A6BC 80089ABC 468021A1 */  cvt.d.w    $f6, $f4
/* 8A6C0 80089AC0 44814800 */  mtc1       $at, $f9
/* 8A6C4 80089AC4 44804000 */  mtc1       $zero, $f8
/* 8A6C8 80089AC8 846D0088 */  lh         $t5, 0x88($v1)
/* 8A6CC 80089ACC 46283282 */  mul.d      $f10, $f6, $f8
/* 8A6D0 80089AD0 448D8000 */  mtc1       $t5, $f16
/* 8A6D4 80089AD4 244FFF80 */  addiu      $t7, $v0, -0x80
/* 8A6D8 80089AD8 448F4000 */  mtc1       $t7, $f8
/* 8A6DC 80089ADC 8478008C */  lh         $t8, 0x8c($v1)
/* 8A6E0 80089AE0 468084A1 */  cvt.d.w    $f18, $f16
/* 8A6E4 80089AE4 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8A6E8 80089AE8 84670090 */  lh         $a3, 0x90($v1)
/* 8A6EC 80089AEC 46325100 */  add.d      $f4, $f10, $f18
/* 8A6F0 80089AF0 44805000 */  mtc1       $zero, $f10
/* 8A6F4 80089AF4 444EF800 */  cfc1       $t6, $31
/* 8A6F8 80089AF8 24841380 */  addiu      $a0, $a0, %lo(D_800E1380)
/* 8A6FC 80089AFC 35C10003 */  ori        $at, $t6, 3
/* 8A700 80089B00 38210002 */  xori       $at, $at, 2
/* 8A704 80089B04 44C1F800 */  ctc1       $at, $31
/* 8A708 80089B08 3C013FC0 */  lui        $at, 0x3fc0
/* 8A70C 80089B0C 462021A4 */  cvt.w.d    $f6, $f4
/* 8A710 80089B10 44815800 */  mtc1       $at, $f11
/* 8A714 80089B14 44CEF800 */  ctc1       $t6, $31
/* 8A718 80089B18 44982000 */  mtc1       $t8, $f4
/* 8A71C 80089B1C 46804421 */  cvt.d.w    $f16, $f8
/* 8A720 80089B20 44053000 */  mfc1       $a1, $f6
/* 8A724 80089B24 3C014030 */  lui        $at, 0x4030
/* 8A728 80089B28 462A8482 */  mul.d      $f18, $f16, $f10
/* 8A72C 80089B2C 468021A1 */  cvt.d.w    $f6, $f4
/* 8A730 80089B30 44808000 */  mtc1       $zero, $f16
/* 8A734 80089B34 44818800 */  mtc1       $at, $f17
/* 8A738 80089B38 46269200 */  add.d      $f8, $f18, $f6
/* 8A73C 80089B3C 46304280 */  add.d      $f10, $f8, $f16
/* 8A740 80089B40 4459F800 */  cfc1       $t9, $31
/* 8A744 80089B44 00000000 */  nop
/* 8A748 80089B48 37210003 */  ori        $at, $t9, 3
/* 8A74C 80089B4C 38210002 */  xori       $at, $at, 2
/* 8A750 80089B50 44C1F800 */  ctc1       $at, $31
/* 8A754 80089B54 00000000 */  nop
/* 8A758 80089B58 46205124 */  cvt.w.d    $f4, $f10
/* 8A75C 80089B5C 44062000 */  mfc1       $a2, $f4
/* 8A760 80089B60 44D9F800 */  ctc1       $t9, $31
/* 8A764 80089B64 0C00C48F */  jal        func_8003123C
/* 8A768 80089B68 00000000 */   nop
/* 8A76C 80089B6C 104000DE */  beqz       $v0, .L80089EE8
/* 8A770 80089B70 3044FFFF */   andi      $a0, $v0, 0xffff
/* 8A774 80089B74 00044080 */  sll        $t0, $a0, 2
/* 8A778 80089B78 01044023 */  subu       $t0, $t0, $a0
/* 8A77C 80089B7C 00084080 */  sll        $t0, $t0, 2
/* 8A780 80089B80 01044021 */  addu       $t0, $t0, $a0
/* 8A784 80089B84 00084080 */  sll        $t0, $t0, 2
/* 8A788 80089B88 01044023 */  subu       $t0, $t0, $a0
/* 8A78C 80089B8C 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 8A790 80089B90 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 8A794 80089B94 000840C0 */  sll        $t0, $t0, 3
/* 8A798 80089B98 01091821 */  addu       $v1, $t0, $t1
/* 8A79C 80089B9C 946A0094 */  lhu        $t2, 0x94($v1)
/* 8A7A0 80089BA0 240C01AE */  addiu      $t4, $zero, 0x1ae
/* 8A7A4 80089BA4 354B0009 */  ori        $t3, $t2, 9
/* 8A7A8 80089BA8 A46B0094 */  sh         $t3, 0x94($v1)
/* 8A7AC 80089BAC A46C0084 */  sh         $t4, 0x84($v1)
/* 8A7B0 80089BB0 0C0005E3 */  jal        func_8000178C
/* 8A7B4 80089BB4 AFA30018 */   sw        $v1, 0x18($sp)
/* 8A7B8 80089BB8 44829000 */  mtc1       $v0, $f18
/* 8A7BC 80089BBC 8FA30018 */  lw         $v1, 0x18($sp)
/* 8A7C0 80089BC0 04410006 */  bgez       $v0, .L80089BDC
/* 8A7C4 80089BC4 468091A1 */   cvt.d.w   $f6, $f18
/* 8A7C8 80089BC8 3C0141F0 */  lui        $at, 0x41f0
/* 8A7CC 80089BCC 44814800 */  mtc1       $at, $f9
/* 8A7D0 80089BD0 44804000 */  mtc1       $zero, $f8
/* 8A7D4 80089BD4 00000000 */  nop
/* 8A7D8 80089BD8 46283180 */  add.d      $f6, $f6, $f8
.L80089BDC:
/* 8A7DC 80089BDC 3C013F80 */  lui        $at, 0x3f80
/* 8A7E0 80089BE0 44818800 */  mtc1       $at, $f17
/* 8A7E4 80089BE4 44808000 */  mtc1       $zero, $f16
/* 8A7E8 80089BE8 240DFFF6 */  addiu      $t5, $zero, -0xa
/* 8A7EC 80089BEC 46303282 */  mul.d      $f10, $f6, $f16
/* 8A7F0 80089BF0 3C0EFFF8 */  lui        $t6, 0xfff8
/* 8A7F4 80089BF4 240F07D0 */  addiu      $t7, $zero, 0x7d0
/* 8A7F8 80089BF8 24180028 */  addiu      $t8, $zero, 0x28
/* 8A7FC 80089BFC AC6D0154 */  sw         $t5, 0x154($v1)
/* 8A800 80089C00 46205020 */  cvt.s.d    $f0, $f10
/* 8A804 80089C04 AC6E0150 */  sw         $t6, 0x150($v1)
/* 8A808 80089C08 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 8A80C 80089C0C E46000B8 */  swc1       $f0, 0xb8($v1)
/* 8A810 80089C10 AC6F015C */  sw         $t7, 0x15c($v1)
/* 8A814 80089C14 100000B4 */  b          .L80089EE8
/* 8A818 80089C18 AC78016C */   sw        $t8, 0x16c($v1)
.L80089C1C:
/* 8A81C 80089C1C 9739E4E0 */  lhu        $t9, -0x1b20($t9)
/* 8A820 80089C20 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8A824 80089C24 3328003F */  andi       $t0, $t9, 0x3f
/* 8A828 80089C28 150000AF */  bnez       $t0, .L80089EE8
/* 8A82C 80089C2C 24841380 */   addiu     $a0, $a0, %lo(D_800E1380)
/* 8A830 80089C30 8466008C */  lh         $a2, 0x8c($v1)
/* 8A834 80089C34 84650088 */  lh         $a1, 0x88($v1)
/* 8A838 80089C38 24070001 */  addiu      $a3, $zero, 1
/* 8A83C 80089C3C 0C00C48F */  jal        func_8003123C
/* 8A840 80089C40 24C60008 */   addiu     $a2, $a2, 8
/* 8A844 80089C44 104000A8 */  beqz       $v0, .L80089EE8
/* 8A848 80089C48 3C01800F */   lui       $at, 0x800f
/* 8A84C 80089C4C 00024880 */  sll        $t1, $v0, 2
/* 8A850 80089C50 01224823 */  subu       $t1, $t1, $v0
/* 8A854 80089C54 00094880 */  sll        $t1, $t1, 2
/* 8A858 80089C58 01224821 */  addu       $t1, $t1, $v0
/* 8A85C 80089C5C 00094880 */  sll        $t1, $t1, 2
/* 8A860 80089C60 01224823 */  subu       $t1, $t1, $v0
/* 8A864 80089C64 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 8A868 80089C68 C422D210 */  lwc1       $f2, -0x2df0($at)
/* 8A86C 80089C6C 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 8A870 80089C70 000948C0 */  sll        $t1, $t1, 3
/* 8A874 80089C74 012A1821 */  addu       $v1, $t1, $t2
/* 8A878 80089C78 240B0001 */  addiu      $t3, $zero, 1
/* 8A87C 80089C7C 240C0007 */  addiu      $t4, $zero, 7
/* 8A880 80089C80 240D01A2 */  addiu      $t5, $zero, 0x1a2
/* 8A884 80089C84 340EA000 */  ori        $t6, $zero, 0xa000
/* 8A888 80089C88 240FFFFD */  addiu      $t7, $zero, -3
/* 8A88C 80089C8C A46B0094 */  sh         $t3, 0x94($v1)
/* 8A890 80089C90 AC6C0080 */  sw         $t4, 0x80($v1)
/* 8A894 80089C94 A46D0084 */  sh         $t5, 0x84($v1)
/* 8A898 80089C98 AC6E00F0 */  sw         $t6, 0xf0($v1)
/* 8A89C 80089C9C AC6F0154 */  sw         $t7, 0x154($v1)
/* 8A8A0 80089CA0 3C01800F */  lui        $at, %hi(D_800ED214)
/* 8A8A4 80089CA4 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 8A8A8 80089CA8 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 8A8AC 80089CAC C424D214 */  lwc1       $f4, %lo(D_800ED214)($at)
/* 8A8B0 80089CB0 3C01800F */  lui        $at, %hi(D_800ED218)
/* 8A8B4 80089CB4 E4640110 */  swc1       $f4, 0x110($v1)
/* 8A8B8 80089CB8 C432D218 */  lwc1       $f18, %lo(D_800ED218)($at)
/* 8A8BC 80089CBC 44800000 */  mtc1       $zero, $f0
/* 8A8C0 80089CC0 2418FE70 */  addiu      $t8, $zero, -0x190
/* 8A8C4 80089CC4 AC78015C */  sw         $t8, 0x15c($v1)
/* 8A8C8 80089CC8 AC60016C */  sw         $zero, 0x16c($v1)
/* 8A8CC 80089CCC E4720114 */  swc1       $f18, 0x114($v1)
/* 8A8D0 80089CD0 E4600118 */  swc1       $f0, 0x118($v1)
/* 8A8D4 80089CD4 10000084 */  b          .L80089EE8
/* 8A8D8 80089CD8 E460011C */   swc1      $f0, 0x11c($v1)
.L80089CDC:
/* 8A8DC 80089CDC 9739E4E0 */  lhu        $t9, -0x1b20($t9)
/* 8A8E0 80089CE0 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8A8E4 80089CE4 3328003F */  andi       $t0, $t9, 0x3f
/* 8A8E8 80089CE8 1500007F */  bnez       $t0, .L80089EE8
/* 8A8EC 80089CEC 24841380 */   addiu     $a0, $a0, %lo(D_800E1380)
/* 8A8F0 80089CF0 8466008C */  lh         $a2, 0x8c($v1)
/* 8A8F4 80089CF4 84650088 */  lh         $a1, 0x88($v1)
/* 8A8F8 80089CF8 84670090 */  lh         $a3, 0x90($v1)
/* 8A8FC 80089CFC 0C00C48F */  jal        func_8003123C
/* 8A900 80089D00 24C60010 */   addiu     $a2, $a2, 0x10
/* 8A904 80089D04 10400078 */  beqz       $v0, .L80089EE8
/* 8A908 80089D08 3C01800F */   lui       $at, 0x800f
/* 8A90C 80089D0C 00024880 */  sll        $t1, $v0, 2
/* 8A910 80089D10 01224823 */  subu       $t1, $t1, $v0
/* 8A914 80089D14 00094880 */  sll        $t1, $t1, 2
/* 8A918 80089D18 01224821 */  addu       $t1, $t1, $v0
/* 8A91C 80089D1C 00094880 */  sll        $t1, $t1, 2
/* 8A920 80089D20 01224823 */  subu       $t1, $t1, $v0
/* 8A924 80089D24 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 8A928 80089D28 C422D21C */  lwc1       $f2, -0x2de4($at)
/* 8A92C 80089D2C 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 8A930 80089D30 000948C0 */  sll        $t1, $t1, 3
/* 8A934 80089D34 012A1821 */  addu       $v1, $t1, $t2
/* 8A938 80089D38 240B0001 */  addiu      $t3, $zero, 1
/* 8A93C 80089D3C 240C0007 */  addiu      $t4, $zero, 7
/* 8A940 80089D40 240D01A2 */  addiu      $t5, $zero, 0x1a2
/* 8A944 80089D44 340EA000 */  ori        $t6, $zero, 0xa000
/* 8A948 80089D48 240FFFFD */  addiu      $t7, $zero, -3
/* 8A94C 80089D4C A46B0094 */  sh         $t3, 0x94($v1)
/* 8A950 80089D50 AC6C0080 */  sw         $t4, 0x80($v1)
/* 8A954 80089D54 A46D0084 */  sh         $t5, 0x84($v1)
/* 8A958 80089D58 AC6E00F0 */  sw         $t6, 0xf0($v1)
/* 8A95C 80089D5C AC6F0154 */  sw         $t7, 0x154($v1)
/* 8A960 80089D60 3C01800F */  lui        $at, %hi(D_800ED220)
/* 8A964 80089D64 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 8A968 80089D68 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 8A96C 80089D6C C428D220 */  lwc1       $f8, %lo(D_800ED220)($at)
/* 8A970 80089D70 3C01800F */  lui        $at, %hi(D_800ED224)
/* 8A974 80089D74 E4680110 */  swc1       $f8, 0x110($v1)
/* 8A978 80089D78 C426D224 */  lwc1       $f6, %lo(D_800ED224)($at)
/* 8A97C 80089D7C 44800000 */  mtc1       $zero, $f0
/* 8A980 80089D80 2418FE70 */  addiu      $t8, $zero, -0x190
/* 8A984 80089D84 AC78015C */  sw         $t8, 0x15c($v1)
/* 8A988 80089D88 AC60016C */  sw         $zero, 0x16c($v1)
/* 8A98C 80089D8C E4660114 */  swc1       $f6, 0x114($v1)
/* 8A990 80089D90 E4600118 */  swc1       $f0, 0x118($v1)
/* 8A994 80089D94 10000054 */  b          .L80089EE8
/* 8A998 80089D98 E460011C */   swc1      $f0, 0x11c($v1)
.L80089D9C:
/* 8A99C 80089D9C 9739E4E0 */  lhu        $t9, -0x1b20($t9)
/* 8A9A0 80089DA0 00000000 */  nop
/* 8A9A4 80089DA4 3328000F */  andi       $t0, $t9, 0xf
/* 8A9A8 80089DA8 15000050 */  bnez       $t0, .L80089EEC
/* 8A9AC 80089DAC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8A9B0 80089DB0 0C0005E3 */  jal        func_8000178C
/* 8A9B4 80089DB4 AFA30018 */   sw        $v1, 0x18($sp)
/* 8A9B8 80089DB8 0C0005E3 */  jal        func_8000178C
/* 8A9BC 80089DBC A7A2001C */   sh        $v0, 0x1c($sp)
/* 8A9C0 80089DC0 97A9001C */  lhu        $t1, 0x1c($sp)
/* 8A9C4 80089DC4 8FA30018 */  lw         $v1, 0x18($sp)
/* 8A9C8 80089DC8 252AFF80 */  addiu      $t2, $t1, -0x80
/* 8A9CC 80089DCC 448A8000 */  mtc1       $t2, $f16
/* 8A9D0 80089DD0 3C01800F */  lui        $at, %hi(D_800ED228)
/* 8A9D4 80089DD4 468082A1 */  cvt.d.w    $f10, $f16
/* 8A9D8 80089DD8 C421D228 */  lwc1       $f1, %lo(D_800ED228)($at)
/* 8A9DC 80089DDC C420D22C */  lwc1       $f0, -0x2dd4($at)
/* 8A9E0 80089DE0 846B0088 */  lh         $t3, 0x88($v1)
/* 8A9E4 80089DE4 46205102 */  mul.d      $f4, $f10, $f0
/* 8A9E8 80089DE8 448B9000 */  mtc1       $t3, $f18
/* 8A9EC 80089DEC 244DFF80 */  addiu      $t5, $v0, -0x80
/* 8A9F0 80089DF0 448D5000 */  mtc1       $t5, $f10
/* 8A9F4 80089DF4 846E008C */  lh         $t6, 0x8c($v1)
/* 8A9F8 80089DF8 46809221 */  cvt.d.w    $f8, $f18
/* 8A9FC 80089DFC 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8AA00 80089E00 84670090 */  lh         $a3, 0x90($v1)
/* 8AA04 80089E04 46282180 */  add.d      $f6, $f4, $f8
/* 8AA08 80089E08 448E4000 */  mtc1       $t6, $f8
/* 8AA0C 80089E0C 444CF800 */  cfc1       $t4, $31
/* 8AA10 80089E10 24841380 */  addiu      $a0, $a0, %lo(D_800E1380)
/* 8AA14 80089E14 35810003 */  ori        $at, $t4, 3
/* 8AA18 80089E18 38210002 */  xori       $at, $at, 2
/* 8AA1C 80089E1C 44C1F800 */  ctc1       $at, $31
/* 8AA20 80089E20 00000000 */  nop
/* 8AA24 80089E24 46203424 */  cvt.w.d    $f16, $f6
/* 8AA28 80089E28 44CCF800 */  ctc1       $t4, $31
/* 8AA2C 80089E2C 44058000 */  mfc1       $a1, $f16
/* 8AA30 80089E30 468054A1 */  cvt.d.w    $f18, $f10
/* 8AA34 80089E34 46209102 */  mul.d      $f4, $f18, $f0
/* 8AA38 80089E38 468041A1 */  cvt.d.w    $f6, $f8
/* 8AA3C 80089E3C 46262400 */  add.d      $f16, $f4, $f6
/* 8AA40 80089E40 444FF800 */  cfc1       $t7, $31
/* 8AA44 80089E44 00000000 */  nop
/* 8AA48 80089E48 35E10003 */  ori        $at, $t7, 3
/* 8AA4C 80089E4C 38210002 */  xori       $at, $at, 2
/* 8AA50 80089E50 44C1F800 */  ctc1       $at, $31
/* 8AA54 80089E54 00000000 */  nop
/* 8AA58 80089E58 462082A4 */  cvt.w.d    $f10, $f16
/* 8AA5C 80089E5C 44065000 */  mfc1       $a2, $f10
/* 8AA60 80089E60 44CFF800 */  ctc1       $t7, $31
/* 8AA64 80089E64 0C00C48F */  jal        func_8003123C
/* 8AA68 80089E68 00000000 */   nop
/* 8AA6C 80089E6C 1040001E */  beqz       $v0, .L80089EE8
/* 8AA70 80089E70 3C013F80 */   lui       $at, 0x3f80
/* 8AA74 80089E74 0002C080 */  sll        $t8, $v0, 2
/* 8AA78 80089E78 0302C023 */  subu       $t8, $t8, $v0
/* 8AA7C 80089E7C 0018C080 */  sll        $t8, $t8, 2
/* 8AA80 80089E80 0302C021 */  addu       $t8, $t8, $v0
/* 8AA84 80089E84 0018C080 */  sll        $t8, $t8, 2
/* 8AA88 80089E88 0302C023 */  subu       $t8, $t8, $v0
/* 8AA8C 80089E8C 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 8AA90 80089E90 44811000 */  mtc1       $at, $f2
/* 8AA94 80089E94 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 8AA98 80089E98 0018C0C0 */  sll        $t8, $t8, 3
/* 8AA9C 80089E9C 3C01800F */  lui        $at, %hi(D_800ED230)
/* 8AAA0 80089EA0 03191821 */  addu       $v1, $t8, $t9
/* 8AAA4 80089EA4 C42CD230 */  lwc1       $f12, %lo(D_800ED230)($at)
/* 8AAA8 80089EA8 44800000 */  mtc1       $zero, $f0
/* 8AAAC 80089EAC 94680094 */  lhu        $t0, 0x94($v1)
/* 8AAB0 80089EB0 240A01D6 */  addiu      $t2, $zero, 0x1d6
/* 8AAB4 80089EB4 240BFFF6 */  addiu      $t3, $zero, -0xa
/* 8AAB8 80089EB8 3C0CFFE0 */  lui        $t4, 0xffe0
/* 8AABC 80089EBC 35090009 */  ori        $t1, $t0, 9
/* 8AAC0 80089EC0 A4690094 */  sh         $t1, 0x94($v1)
/* 8AAC4 80089EC4 A46A0084 */  sh         $t2, 0x84($v1)
/* 8AAC8 80089EC8 AC6B0154 */  sw         $t3, 0x154($v1)
/* 8AACC 80089ECC AC6C0150 */  sw         $t4, 0x150($v1)
/* 8AAD0 80089ED0 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 8AAD4 80089ED4 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 8AAD8 80089ED8 E46C0110 */  swc1       $f12, 0x110($v1)
/* 8AADC 80089EDC E46C0114 */  swc1       $f12, 0x114($v1)
/* 8AAE0 80089EE0 E4600118 */  swc1       $f0, 0x118($v1)
/* 8AAE4 80089EE4 E460011C */  swc1       $f0, 0x11c($v1)
.L80089EE8:
/* 8AAE8 80089EE8 8FBF0014 */  lw         $ra, 0x14($sp)
.L80089EEC:
/* 8AAEC 80089EEC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 8AAF0 80089EF0 03E00008 */  jr         $ra
/* 8AAF4 80089EF4 00000000 */   nop
