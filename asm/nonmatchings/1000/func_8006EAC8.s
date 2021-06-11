glabel func_8006EAC8
/* 6F6C8 8006EAC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6F6CC 8006EACC AFB00018 */  sw         $s0, 0x18($sp)
/* 6F6D0 8006EAD0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 6F6D4 8006EAD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6F6D8 8006EAD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 6F6DC 8006EADC 0C01B242 */  jal        func_8006C908
/* 6F6E0 8006EAE0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6F6E4 8006EAE4 144001C1 */  bnez       $v0, .L8006F1EC
/* 6F6E8 8006EAE8 00107080 */   sll       $t6, $s0, 2
/* 6F6EC 8006EAEC 01D07023 */  subu       $t6, $t6, $s0
/* 6F6F0 8006EAF0 000E7080 */  sll        $t6, $t6, 2
/* 6F6F4 8006EAF4 01D07021 */  addu       $t6, $t6, $s0
/* 6F6F8 8006EAF8 000E7080 */  sll        $t6, $t6, 2
/* 6F6FC 8006EAFC 01D07023 */  subu       $t6, $t6, $s0
/* 6F700 8006EB00 3C0F800F */  lui        $t7, %hi(gActors)
/* 6F704 8006EB04 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6F708 8006EB08 000E70C0 */  sll        $t6, $t6, 3
/* 6F70C 8006EB0C 01CF1821 */  addu       $v1, $t6, $t7
/* 6F710 8006EB10 946200D0 */  lhu        $v0, 0xd0($v1)
/* 6F714 8006EB14 24010170 */  addiu      $at, $zero, 0x170
/* 6F718 8006EB18 1441001B */  bne        $v0, $at, .L8006EB88
/* 6F71C 8006EB1C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6F720 8006EB20 3C014100 */  lui        $at, 0x4100
/* 6F724 8006EB24 44812000 */  mtc1       $at, $f4
/* 6F728 8006EB28 3C014140 */  lui        $at, 0x4140
/* 6F72C 8006EB2C 44813000 */  mtc1       $at, $f6
/* 6F730 8006EB30 8C680080 */  lw         $t0, 0x80($v1)
/* 6F734 8006EB34 846C00B0 */  lh         $t4, 0xb0($v1)
/* 6F738 8006EB38 3C01BF80 */  lui        $at, 0xbf80
/* 6F73C 8006EB3C 44814000 */  mtc1       $at, $f8
/* 6F740 8006EB40 846A00AA */  lh         $t2, 0xaa($v1)
/* 6F744 8006EB44 846B00AC */  lh         $t3, 0xac($v1)
/* 6F748 8006EB48 3C19800E */  lui        $t9, %hi(D_800E1D0C)
/* 6F74C 8006EB4C 24060001 */  addiu      $a2, $zero, 1
/* 6F750 8006EB50 24580001 */  addiu      $t8, $v0, 1
/* 6F754 8006EB54 27391D0C */  addiu      $t9, $t9, %lo(D_800E1D0C)
/* 6F758 8006EB58 31090280 */  andi       $t1, $t0, 0x280
/* 6F75C 8006EB5C 258DFFFC */  addiu      $t5, $t4, -4
/* 6F760 8006EB60 A47800D0 */  sh         $t8, 0xd0($v1)
/* 6F764 8006EB64 AC7900E8 */  sw         $t9, 0xe8($v1)
/* 6F768 8006EB68 A46600E6 */  sh         $a2, 0xe6($v1)
/* 6F76C 8006EB6C AC690160 */  sw         $t1, 0x160($v1)
/* 6F770 8006EB70 A46D00A8 */  sh         $t5, 0xa8($v1)
/* 6F774 8006EB74 E4640144 */  swc1       $f4, 0x144($v1)
/* 6F778 8006EB78 E4660118 */  swc1       $f6, 0x118($v1)
/* 6F77C 8006EB7C E468011C */  swc1       $f8, 0x11c($v1)
/* 6F780 8006EB80 A46A00A2 */  sh         $t2, 0xa2($v1)
/* 6F784 8006EB84 A46B00A4 */  sh         $t3, 0xa4($v1)
.L8006EB88:
/* 6F788 8006EB88 3C01800F */  lui        $at, %hi(D_800EC5E0)
/* 6F78C 8006EB8C C47000B4 */  lwc1       $f16, 0xb4($v1)
/* 6F790 8006EB90 C42BC5E0 */  lwc1       $f11, %lo(D_800EC5E0)($at)
/* 6F794 8006EB94 C42AC5E4 */  lwc1       $f10, -0x3a1c($at)
/* 6F798 8006EB98 460084A1 */  cvt.d.s    $f18, $f16
/* 6F79C 8006EB9C 46325032 */  c.eq.d     $f10, $f18
/* 6F7A0 8006EBA0 24060001 */  addiu      $a2, $zero, 1
/* 6F7A4 8006EBA4 4500000C */  bc1f       .L8006EBD8
/* 6F7A8 8006EBA8 3C020004 */   lui       $v0, 4
/* 6F7AC 8006EBAC 3C0F0002 */  lui        $t7, 2
/* 6F7B0 8006EBB0 3C180003 */  lui        $t8, 3
/* 6F7B4 8006EBB4 240E0003 */  addiu      $t6, $zero, 3
/* 6F7B8 8006EBB8 35EF8000 */  ori        $t7, $t7, 0x8000
/* 6F7BC 8006EBBC 37188000 */  ori        $t8, $t8, 0x8000
/* 6F7C0 8006EBC0 2419000E */  addiu      $t9, $zero, 0xe
/* 6F7C4 8006EBC4 A06E00DB */  sb         $t6, 0xdb($v1)
/* 6F7C8 8006EBC8 AC6F00F8 */  sw         $t7, 0xf8($v1)
/* 6F7CC 8006EBCC AC7800FC */  sw         $t8, 0xfc($v1)
/* 6F7D0 8006EBD0 10000008 */  b          .L8006EBF4
/* 6F7D4 8006EBD4 A47900E4 */   sh        $t9, 0xe4($v1)
.L8006EBD8:
/* 6F7D8 8006EBD8 34428000 */  ori        $v0, $v0, 0x8000
/* 6F7DC 8006EBDC 24080007 */  addiu      $t0, $zero, 7
/* 6F7E0 8006EBE0 24090023 */  addiu      $t1, $zero, 0x23
/* 6F7E4 8006EBE4 A06800DB */  sb         $t0, 0xdb($v1)
/* 6F7E8 8006EBE8 AC6200F8 */  sw         $v0, 0xf8($v1)
/* 6F7EC 8006EBEC AC6200FC */  sw         $v0, 0xfc($v1)
/* 6F7F0 8006EBF0 A46900E4 */  sh         $t1, 0xe4($v1)
.L8006EBF4:
/* 6F7F4 8006EBF4 846A00E6 */  lh         $t2, 0xe6($v1)
/* 6F7F8 8006EBF8 3C0B800E */  lui        $t3, %hi(D_800E1D0C)
/* 6F7FC 8006EBFC 15400003 */  bnez       $t2, .L8006EC0C
/* 6F800 8006EC00 256B1D0C */   addiu     $t3, $t3, %lo(D_800E1D0C)
/* 6F804 8006EC04 AC6B00E8 */  sw         $t3, 0xe8($v1)
/* 6F808 8006EC08 A46600E6 */  sh         $a2, 0xe6($v1)
.L8006EC0C:
/* 6F80C 8006EC0C 0C0197C5 */  jal        func_80065F14
/* 6F810 8006EC10 AFA30020 */   sw        $v1, 0x20($sp)
/* 6F814 8006EC14 8FA30020 */  lw         $v1, 0x20($sp)
/* 6F818 8006EC18 44802000 */  mtc1       $zero, $f4
/* 6F81C 8006EC1C C4600118 */  lwc1       $f0, 0x118($v1)
/* 6F820 8006EC20 24060001 */  addiu      $a2, $zero, 1
/* 6F824 8006EC24 4600203C */  c.lt.s     $f4, $f0
/* 6F828 8006EC28 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6F82C 8006EC2C 45000006 */  bc1f       .L8006EC48
/* 6F830 8006EC30 3C013F80 */   lui       $at, 0x3f80
/* 6F834 8006EC34 44813000 */  mtc1       $at, $f6
/* 6F838 8006EC38 00000000 */  nop
/* 6F83C 8006EC3C 46060201 */  sub.s      $f8, $f0, $f6
/* 6F840 8006EC40 10000005 */  b          .L8006EC58
/* 6F844 8006EC44 E4680118 */   swc1      $f8, 0x118($v1)
.L8006EC48:
/* 6F848 8006EC48 0C01A76A */  jal        func_80069DA8
/* 6F84C 8006EC4C AFA30020 */   sw        $v1, 0x20($sp)
/* 6F850 8006EC50 8FA30020 */  lw         $v1, 0x20($sp)
/* 6F854 8006EC54 24060001 */  addiu      $a2, $zero, 1
.L8006EC58:
/* 6F858 8006EC58 444CF800 */  cfc1       $t4, $31
/* 6F85C 8006EC5C 24020001 */  addiu      $v0, $zero, 1
/* 6F860 8006EC60 44C2F800 */  ctc1       $v0, $31
/* 6F864 8006EC64 C4700138 */  lwc1       $f16, 0x138($v1)
/* 6F868 8006EC68 3C014F00 */  lui        $at, 0x4f00
/* 6F86C 8006EC6C 460082A4 */  cvt.w.s    $f10, $f16
/* 6F870 8006EC70 4442F800 */  cfc1       $v0, $31
/* 6F874 8006EC74 00000000 */  nop
/* 6F878 8006EC78 30420078 */  andi       $v0, $v0, 0x78
/* 6F87C 8006EC7C 10400012 */  beqz       $v0, .L8006ECC8
/* 6F880 8006EC80 00000000 */   nop
/* 6F884 8006EC84 44815000 */  mtc1       $at, $f10
/* 6F888 8006EC88 24020001 */  addiu      $v0, $zero, 1
/* 6F88C 8006EC8C 460A8281 */  sub.s      $f10, $f16, $f10
/* 6F890 8006EC90 3C018000 */  lui        $at, 0x8000
/* 6F894 8006EC94 44C2F800 */  ctc1       $v0, $31
/* 6F898 8006EC98 00000000 */  nop
/* 6F89C 8006EC9C 460052A4 */  cvt.w.s    $f10, $f10
/* 6F8A0 8006ECA0 4442F800 */  cfc1       $v0, $31
/* 6F8A4 8006ECA4 00000000 */  nop
/* 6F8A8 8006ECA8 30420078 */  andi       $v0, $v0, 0x78
/* 6F8AC 8006ECAC 14400004 */  bnez       $v0, .L8006ECC0
/* 6F8B0 8006ECB0 00000000 */   nop
/* 6F8B4 8006ECB4 44025000 */  mfc1       $v0, $f10
/* 6F8B8 8006ECB8 10000007 */  b          .L8006ECD8
/* 6F8BC 8006ECBC 00411025 */   or        $v0, $v0, $at
.L8006ECC0:
/* 6F8C0 8006ECC0 10000005 */  b          .L8006ECD8
/* 6F8C4 8006ECC4 2402FFFF */   addiu     $v0, $zero, -1
.L8006ECC8:
/* 6F8C8 8006ECC8 44025000 */  mfc1       $v0, $f10
/* 6F8CC 8006ECCC 00000000 */  nop
/* 6F8D0 8006ECD0 0440FFFB */  bltz       $v0, .L8006ECC0
/* 6F8D4 8006ECD4 00000000 */   nop
.L8006ECD8:
/* 6F8D8 8006ECD8 44CCF800 */  ctc1       $t4, $31
/* 6F8DC 8006ECDC 304DFFFF */  andi       $t5, $v0, 0xffff
/* 6F8E0 8006ECE0 11A600D4 */  beq        $t5, $a2, .L8006F034
/* 6F8E4 8006ECE4 24010002 */   addiu     $at, $zero, 2
/* 6F8E8 8006ECE8 11A10085 */  beq        $t5, $at, .L8006EF00
/* 6F8EC 8006ECEC 00000000 */   nop
/* 6F8F0 8006ECF0 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 6F8F4 8006ECF4 00000000 */  nop
/* 6F8F8 8006ECF8 18400006 */  blez       $v0, .L8006ED14
/* 6F8FC 8006ECFC 00000000 */   nop
/* 6F900 8006ED00 8C6E0098 */  lw         $t6, 0x98($v1)
/* 6F904 8006ED04 00000000 */  nop
/* 6F908 8006ED08 31CF0010 */  andi       $t7, $t6, 0x10
/* 6F90C 8006ED0C 15E00008 */  bnez       $t7, .L8006ED30
/* 6F910 8006ED10 00000000 */   nop
.L8006ED14:
/* 6F914 8006ED14 0441004D */  bgez       $v0, .L8006EE4C
/* 6F918 8006ED18 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6F91C 8006ED1C 8C780098 */  lw         $t8, 0x98($v1)
/* 6F920 8006ED20 00000000 */  nop
/* 6F924 8006ED24 33190020 */  andi       $t9, $t8, 0x20
/* 6F928 8006ED28 13200048 */  beqz       $t9, .L8006EE4C
/* 6F92C 8006ED2C 00000000 */   nop
.L8006ED30:
/* 6F930 8006ED30 8C6800EC */  lw         $t0, 0xec($v1)
/* 6F934 8006ED34 3C01800F */  lui        $at, %hi(D_800EC5E8)
/* 6F938 8006ED38 44889000 */  mtc1       $t0, $f18
/* 6F93C 8006ED3C C421C5E8 */  lwc1       $f1, %lo(D_800EC5E8)($at)
/* 6F940 8006ED40 46809120 */  cvt.s.w    $f4, $f18
/* 6F944 8006ED44 C420C5EC */  lwc1       $f0, -0x3a14($at)
/* 6F948 8006ED48 00025023 */  negu       $t2, $v0
/* 6F94C 8006ED4C 460021A1 */  cvt.d.s    $f6, $f4
/* 6F950 8006ED50 46203202 */  mul.d      $f8, $f6, $f0
/* 6F954 8006ED54 448A5000 */  mtc1       $t2, $f10
/* 6F958 8006ED58 8C6C0150 */  lw         $t4, 0x150($v1)
/* 6F95C 8006ED5C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6F960 8006ED60 318D0080 */  andi       $t5, $t4, 0x80
/* 6F964 8006ED64 4449F800 */  cfc1       $t1, $31
/* 6F968 8006ED68 2405002D */  addiu      $a1, $zero, 0x2d
/* 6F96C 8006ED6C 35210003 */  ori        $at, $t1, 3
/* 6F970 8006ED70 38210002 */  xori       $at, $at, 2
/* 6F974 8006ED74 44C1F800 */  ctc1       $at, $31
/* 6F978 8006ED78 00000000 */  nop
/* 6F97C 8006ED7C 46204424 */  cvt.w.d    $f16, $f8
/* 6F980 8006ED80 44C9F800 */  ctc1       $t1, $31
/* 6F984 8006ED84 E47000F8 */  swc1       $f16, 0xf8($v1)
/* 6F988 8006ED88 468054A0 */  cvt.s.w    $f18, $f10
/* 6F98C 8006ED8C 46009121 */  cvt.d.s    $f4, $f18
/* 6F990 8006ED90 46202182 */  mul.d      $f6, $f4, $f0
/* 6F994 8006ED94 444BF800 */  cfc1       $t3, $31
/* 6F998 8006ED98 00000000 */  nop
/* 6F99C 8006ED9C 35610003 */  ori        $at, $t3, 3
/* 6F9A0 8006EDA0 38210002 */  xori       $at, $at, 2
/* 6F9A4 8006EDA4 44C1F800 */  ctc1       $at, $31
/* 6F9A8 8006EDA8 00000000 */  nop
/* 6F9AC 8006EDAC 46203224 */  cvt.w.d    $f8, $f6
/* 6F9B0 8006EDB0 44CBF800 */  ctc1       $t3, $31
/* 6F9B4 8006EDB4 15A00006 */  bnez       $t5, .L8006EDD0
/* 6F9B8 8006EDB8 E46800FC */   swc1      $f8, 0xfc($v1)
/* 6F9BC 8006EDBC 0C00AE3C */  jal        func_8002B8F0
/* 6F9C0 8006EDC0 AFA30020 */   sw        $v1, 0x20($sp)
/* 6F9C4 8006EDC4 8FA30020 */  lw         $v1, 0x20($sp)
/* 6F9C8 8006EDC8 1040000C */  beqz       $v0, .L8006EDFC
/* 6F9CC 8006EDCC 24060001 */   addiu     $a2, $zero, 1
.L8006EDD0:
/* 6F9D0 8006EDD0 3C013F80 */  lui        $at, 0x3f80
/* 6F9D4 8006EDD4 44818000 */  mtc1       $at, $f16
/* 6F9D8 8006EDD8 3C0E800E */  lui        $t6, %hi(D_800E1D30)
/* 6F9DC 8006EDDC 25CE1D30 */  addiu      $t6, $t6, %lo(D_800E1D30)
/* 6F9E0 8006EDE0 AC6E00E8 */  sw         $t6, 0xe8($v1)
/* 6F9E4 8006EDE4 A46600E6 */  sh         $a2, 0xe6($v1)
/* 6F9E8 8006EDE8 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6F9EC 8006EDEC 0C01A5C5 */  jal        func_80069714
/* 6F9F0 8006EDF0 E4700118 */   swc1      $f16, 0x118($v1)
/* 6F9F4 8006EDF4 1000000E */  b          .L8006EE30
/* 6F9F8 8006EDF8 2404009D */   addiu     $a0, $zero, 0x9d
.L8006EDFC:
/* 6F9FC 8006EDFC 3C013F80 */  lui        $at, 0x3f80
/* 6FA00 8006EE00 44815000 */  mtc1       $at, $f10
/* 6FA04 8006EE04 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6FA08 8006EE08 AFA30020 */  sw         $v1, 0x20($sp)
/* 6FA0C 8006EE0C 0C01A605 */  jal        func_80069814
/* 6FA10 8006EE10 E46A0118 */   swc1      $f10, 0x118($v1)
/* 6FA14 8006EE14 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FA18 8006EE18 3C01FFFF */  lui        $at, 0xffff
/* 6FA1C 8006EE1C 8C6F0080 */  lw         $t7, 0x80($v1)
/* 6FA20 8006EE20 3421417F */  ori        $at, $at, 0x417f
/* 6FA24 8006EE24 01E1C024 */  and        $t8, $t7, $at
/* 6FA28 8006EE28 AC780080 */  sw         $t8, 0x80($v1)
/* 6FA2C 8006EE2C 2404009D */  addiu      $a0, $zero, 0x9d
.L8006EE30:
/* 6FA30 8006EE30 0C000DB2 */  jal        func_800036C8
/* 6FA34 8006EE34 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6FA38 8006EE38 24040036 */  addiu      $a0, $zero, 0x36
/* 6FA3C 8006EE3C 0C000DB2 */  jal        func_800036C8
/* 6FA40 8006EE40 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6FA44 8006EE44 100000EA */  b          .L8006F1F0
/* 6FA48 8006EE48 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006EE4C:
/* 6FA4C 8006EE4C 0C01BA8F */  jal        func_8006EA3C
/* 6FA50 8006EE50 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FA54 8006EE54 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FA58 8006EE58 104000E5 */  beqz       $v0, .L8006F1F0
/* 6FA5C 8006EE5C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 6FA60 8006EE60 8C790150 */  lw         $t9, 0x150($v1)
/* 6FA64 8006EE64 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6FA68 8006EE68 33280080 */  andi       $t0, $t9, 0x80
/* 6FA6C 8006EE6C 15000005 */  bnez       $t0, .L8006EE84
/* 6FA70 8006EE70 2405002D */   addiu     $a1, $zero, 0x2d
/* 6FA74 8006EE74 0C00AE3C */  jal        func_8002B8F0
/* 6FA78 8006EE78 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FA7C 8006EE7C 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FA80 8006EE80 00000000 */  nop
.L8006EE84:
/* 6FA84 8006EE84 8C6900EC */  lw         $t1, 0xec($v1)
/* 6FA88 8006EE88 3C01800F */  lui        $at, %hi(D_800EC5F0)
/* 6FA8C 8006EE8C 44899000 */  mtc1       $t1, $f18
/* 6FA90 8006EE90 C429C5F0 */  lwc1       $f9, %lo(D_800EC5F0)($at)
/* 6FA94 8006EE94 46809120 */  cvt.s.w    $f4, $f18
/* 6FA98 8006EE98 C428C5F4 */  lwc1       $f8, -0x3a0c($at)
/* 6FA9C 8006EE9C 3C0B0001 */  lui        $t3, 1
/* 6FAA0 8006EEA0 460021A1 */  cvt.d.s    $f6, $f4
/* 6FAA4 8006EEA4 46283402 */  mul.d      $f16, $f6, $f8
/* 6FAA8 8006EEA8 356B8000 */  ori        $t3, $t3, 0x8000
/* 6FAAC 8006EEAC AC6B00FC */  sw         $t3, 0xfc($v1)
/* 6FAB0 8006EEB0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6FAB4 8006EEB4 444AF800 */  cfc1       $t2, $31
/* 6FAB8 8006EEB8 00000000 */  nop
/* 6FABC 8006EEBC 35410003 */  ori        $at, $t2, 3
/* 6FAC0 8006EEC0 38210002 */  xori       $at, $at, 2
/* 6FAC4 8006EEC4 44C1F800 */  ctc1       $at, $31
/* 6FAC8 8006EEC8 3C013F80 */  lui        $at, 0x3f80
/* 6FACC 8006EECC 462082A4 */  cvt.w.d    $f10, $f16
/* 6FAD0 8006EED0 44819000 */  mtc1       $at, $f18
/* 6FAD4 8006EED4 44CAF800 */  ctc1       $t2, $31
/* 6FAD8 8006EED8 E46A00F8 */  swc1       $f10, 0xf8($v1)
/* 6FADC 8006EEDC 0C01A605 */  jal        func_80069814
/* 6FAE0 8006EEE0 E4720118 */   swc1      $f18, 0x118($v1)
/* 6FAE4 8006EEE4 2404002D */  addiu      $a0, $zero, 0x2d
/* 6FAE8 8006EEE8 0C000DB2 */  jal        func_800036C8
/* 6FAEC 8006EEEC 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6FAF0 8006EEF0 0C00D191 */  jal        func_80034644
/* 6FAF4 8006EEF4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FAF8 8006EEF8 100000BD */  b          .L8006F1F0
/* 6FAFC 8006EEFC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006EF00:
/* 6FB00 8006EF00 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 6FB04 8006EF04 00000000 */  nop
/* 6FB08 8006EF08 1840002D */  blez       $v0, .L8006EFC0
/* 6FB0C 8006EF0C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FB10 8006EF10 8C640098 */  lw         $a0, 0x98($v1)
/* 6FB14 8006EF14 00000000 */  nop
/* 6FB18 8006EF18 308C0010 */  andi       $t4, $a0, 0x10
/* 6FB1C 8006EF1C 11800027 */  beqz       $t4, .L8006EFBC
/* 6FB20 8006EF20 00000000 */   nop
/* 6FB24 8006EF24 04410025 */  bgez       $v0, .L8006EFBC
/* 6FB28 8006EF28 308D0020 */   andi      $t5, $a0, 0x20
/* 6FB2C 8006EF2C 11A00023 */  beqz       $t5, .L8006EFBC
/* 6FB30 8006EF30 3C01800F */   lui       $at, %hi(D_800EC5F8)
/* 6FB34 8006EF34 8C6B00EC */  lw         $t3, 0xec($v1)
/* 6FB38 8006EF38 C421C5F8 */  lwc1       $f1, %lo(D_800EC5F8)($at)
/* 6FB3C 8006EF3C 448B2000 */  mtc1       $t3, $f4
/* 6FB40 8006EF40 C420C5FC */  lwc1       $f0, -0x3a04($at)
/* 6FB44 8006EF44 468021A0 */  cvt.s.w    $f6, $f4
/* 6FB48 8006EF48 8C6F0080 */  lw         $t7, 0x80($v1)
/* 6FB4C 8006EF4C 2401F87F */  addiu      $at, $zero, -0x781
/* 6FB50 8006EF50 46003221 */  cvt.d.s    $f8, $f6
/* 6FB54 8006EF54 46204402 */  mul.d      $f16, $f8, $f0
/* 6FB58 8006EF58 01E1C024 */  and        $t8, $t7, $at
/* 6FB5C 8006EF5C 240E0150 */  addiu      $t6, $zero, 0x150
/* 6FB60 8006EF60 A46E00D0 */  sh         $t6, 0xd0($v1)
/* 6FB64 8006EF64 AC780080 */  sw         $t8, 0x80($v1)
/* 6FB68 8006EF68 444CF800 */  cfc1       $t4, $31
/* 6FB6C 8006EF6C 3C08800E */  lui        $t0, %hi(D_800E3574)
/* 6FB70 8006EF70 35810003 */  ori        $at, $t4, 3
/* 6FB74 8006EF74 95083574 */  lhu        $t0, %lo(D_800E3574)($t0)
/* 6FB78 8006EF78 38210002 */  xori       $at, $at, 2
/* 6FB7C 8006EF7C 44C1F800 */  ctc1       $at, $31
/* 6FB80 8006EF80 3C0A800E */  lui        $t2, %hi(D_800E1C2C)
/* 6FB84 8006EF84 462082A4 */  cvt.w.d    $f10, $f16
/* 6FB88 8006EF88 254A1C2C */  addiu      $t2, $t2, %lo(D_800E1C2C)
/* 6FB8C 8006EF8C 44CCF800 */  ctc1       $t4, $31
/* 6FB90 8006EF90 03084825 */  or         $t1, $t8, $t0
/* 6FB94 8006EF94 AC690080 */  sw         $t1, 0x80($v1)
/* 6FB98 8006EF98 AC6A00E8 */  sw         $t2, 0xe8($v1)
/* 6FB9C 8006EF9C A46600E6 */  sh         $a2, 0xe6($v1)
/* 6FBA0 8006EFA0 E46A00EC */  swc1       $f10, 0xec($v1)
/* 6FBA4 8006EFA4 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6FBA8 8006EFA8 240400AC */  addiu      $a0, $zero, 0xac
/* 6FBAC 8006EFAC 0C000DB2 */  jal        func_800036C8
/* 6FBB0 8006EFB0 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6FBB4 8006EFB4 1000008E */  b          .L8006F1F0
/* 6FBB8 8006EFB8 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006EFBC:
/* 6FBBC 8006EFBC 3204FFFF */  andi       $a0, $s0, 0xffff
.L8006EFC0:
/* 6FBC0 8006EFC0 0C01BA8F */  jal        func_8006EA3C
/* 6FBC4 8006EFC4 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FBC8 8006EFC8 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FBCC 8006EFCC 10400087 */  beqz       $v0, .L8006F1EC
/* 6FBD0 8006EFD0 240D0100 */   addiu     $t5, $zero, 0x100
/* 6FBD4 8006EFD4 8C6E0080 */  lw         $t6, 0x80($v1)
/* 6FBD8 8006EFD8 2401F87F */  addiu      $at, $zero, -0x781
/* 6FBDC 8006EFDC 01C17824 */  and        $t7, $t6, $at
/* 6FBE0 8006EFE0 8C6900EC */  lw         $t1, 0xec($v1)
/* 6FBE4 8006EFE4 A46D00D0 */  sh         $t5, 0xd0($v1)
/* 6FBE8 8006EFE8 AC6F0080 */  sw         $t7, 0x80($v1)
/* 6FBEC 8006EFEC 3C19800E */  lui        $t9, %hi(D_800E3574)
/* 6FBF0 8006EFF0 97393574 */  lhu        $t9, %lo(D_800E3574)($t9)
/* 6FBF4 8006EFF4 00095023 */  negu       $t2, $t1
/* 6FBF8 8006EFF8 01F94025 */  or         $t0, $t7, $t9
/* 6FBFC 8006EFFC AC680080 */  sw         $t0, 0x80($v1)
/* 6FC00 8006F000 01E0C025 */  or         $t8, $t7, $zero
/* 6FC04 8006F004 05410003 */  bgez       $t2, .L8006F014
/* 6FC08 8006F008 000A5843 */   sra       $t3, $t2, 1
/* 6FC0C 8006F00C 25410001 */  addiu      $at, $t2, 1
/* 6FC10 8006F010 00015843 */  sra        $t3, $at, 1
.L8006F014:
/* 6FC14 8006F014 AC6B00EC */  sw         $t3, 0xec($v1)
/* 6FC18 8006F018 2404002D */  addiu      $a0, $zero, 0x2d
/* 6FC1C 8006F01C 0C000DB2 */  jal        func_800036C8
/* 6FC20 8006F020 3205FFFF */   andi      $a1, $s0, 0xffff
/* 6FC24 8006F024 0C00D191 */  jal        func_80034644
/* 6FC28 8006F028 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FC2C 8006F02C 10000070 */  b          .L8006F1F0
/* 6FC30 8006F030 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006F034:
/* 6FC34 8006F034 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 6FC38 8006F038 00000000 */  nop
/* 6FC3C 8006F03C 18400006 */  blez       $v0, .L8006F058
/* 6FC40 8006F040 00000000 */   nop
/* 6FC44 8006F044 8C6C0098 */  lw         $t4, 0x98($v1)
/* 6FC48 8006F048 00000000 */  nop
/* 6FC4C 8006F04C 318D0010 */  andi       $t5, $t4, 0x10
/* 6FC50 8006F050 15A00006 */  bnez       $t5, .L8006F06C
/* 6FC54 8006F054 00000000 */   nop
.L8006F058:
/* 6FC58 8006F058 8C640098 */  lw         $a0, 0x98($v1)
/* 6FC5C 8006F05C 04410028 */  bgez       $v0, .L8006F100
/* 6FC60 8006F060 308E0020 */   andi      $t6, $a0, 0x20
/* 6FC64 8006F064 11C00027 */  beqz       $t6, .L8006F104
/* 6FC68 8006F068 308E0001 */   andi      $t6, $a0, 1
.L8006F06C:
/* 6FC6C 8006F06C 8C780080 */  lw         $t8, 0x80($v1)
/* 6FC70 8006F070 2401F87F */  addiu      $at, $zero, -0x781
/* 6FC74 8006F074 240F0150 */  addiu      $t7, $zero, 0x150
/* 6FC78 8006F078 0301C824 */  and        $t9, $t8, $at
/* 6FC7C 8006F07C A46F00D0 */  sh         $t7, 0xd0($v1)
/* 6FC80 8006F080 AC790080 */  sw         $t9, 0x80($v1)
/* 6FC84 8006F084 3C09800E */  lui        $t1, %hi(D_800E3574)
/* 6FC88 8006F088 95293574 */  lhu        $t1, %lo(D_800E3574)($t1)
/* 6FC8C 8006F08C 8C6C00EC */  lw         $t4, 0xec($v1)
/* 6FC90 8006F090 3C0B800E */  lui        $t3, %hi(D_800E1C2C)
/* 6FC94 8006F094 448C9000 */  mtc1       $t4, $f18
/* 6FC98 8006F098 256B1C2C */  addiu      $t3, $t3, %lo(D_800E1C2C)
/* 6FC9C 8006F09C 03295025 */  or         $t2, $t9, $t1
/* 6FCA0 8006F0A0 46809120 */  cvt.s.w    $f4, $f18
/* 6FCA4 8006F0A4 AC6A0080 */  sw         $t2, 0x80($v1)
/* 6FCA8 8006F0A8 AC6B00E8 */  sw         $t3, 0xe8($v1)
/* 6FCAC 8006F0AC A46600E6 */  sh         $a2, 0xe6($v1)
/* 6FCB0 8006F0B0 3C01800F */  lui        $at, %hi(D_800EC600)
/* 6FCB4 8006F0B4 C429C600 */  lwc1       $f9, %lo(D_800EC600)($at)
/* 6FCB8 8006F0B8 C428C604 */  lwc1       $f8, -0x39fc($at)
/* 6FCBC 8006F0BC 460021A1 */  cvt.d.s    $f6, $f4
/* 6FCC0 8006F0C0 46283402 */  mul.d      $f16, $f6, $f8
/* 6FCC4 8006F0C4 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6FCC8 8006F0C8 240400AC */  addiu      $a0, $zero, 0xac
/* 6FCCC 8006F0CC 3205FFFF */  andi       $a1, $s0, 0xffff
/* 6FCD0 8006F0D0 444DF800 */  cfc1       $t5, $31
/* 6FCD4 8006F0D4 00000000 */  nop
/* 6FCD8 8006F0D8 35A10003 */  ori        $at, $t5, 3
/* 6FCDC 8006F0DC 38210002 */  xori       $at, $at, 2
/* 6FCE0 8006F0E0 44C1F800 */  ctc1       $at, $31
/* 6FCE4 8006F0E4 00000000 */  nop
/* 6FCE8 8006F0E8 462082A4 */  cvt.w.d    $f10, $f16
/* 6FCEC 8006F0EC 44CDF800 */  ctc1       $t5, $31
/* 6FCF0 8006F0F0 0C000DB2 */  jal        func_800036C8
/* 6FCF4 8006F0F4 E46A00EC */   swc1      $f10, 0xec($v1)
/* 6FCF8 8006F0F8 1000003D */  b          .L8006F1F0
/* 6FCFC 8006F0FC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006F100:
/* 6FD00 8006F100 308E0001 */  andi       $t6, $a0, 1
.L8006F104:
/* 6FD04 8006F104 11C00009 */  beqz       $t6, .L8006F12C
/* 6FD08 8006F108 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FD0C 8006F10C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 6FD10 8006F110 0C00D191 */  jal        func_80034644
/* 6FD14 8006F114 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FD18 8006F118 0C01AD12 */  jal        func_8006B448
/* 6FD1C 8006F11C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FD20 8006F120 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FD24 8006F124 10000006 */  b          .L8006F140
/* 6FD28 8006F128 3204FFFF */   andi      $a0, $s0, 0xffff
.L8006F12C:
/* 6FD2C 8006F12C 0C01AD46 */  jal        func_8006B518
/* 6FD30 8006F130 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FD34 8006F134 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FD38 8006F138 00000000 */  nop
/* 6FD3C 8006F13C 3204FFFF */  andi       $a0, $s0, 0xffff
.L8006F140:
/* 6FD40 8006F140 0C01BA6D */  jal        func_8006E9B4
/* 6FD44 8006F144 AFA30020 */   sw        $v1, 0x20($sp)
/* 6FD48 8006F148 8FA30020 */  lw         $v1, 0x20($sp)
/* 6FD4C 8006F14C 10400025 */  beqz       $v0, .L8006F1E4
/* 6FD50 8006F150 240F0100 */   addiu     $t7, $zero, 0x100
/* 6FD54 8006F154 8C780080 */  lw         $t8, 0x80($v1)
/* 6FD58 8006F158 2401F87F */  addiu      $at, $zero, -0x781
/* 6FD5C 8006F15C 8C6B00EC */  lw         $t3, 0xec($v1)
/* 6FD60 8006F160 0301C824 */  and        $t9, $t8, $at
/* 6FD64 8006F164 A46F00D0 */  sh         $t7, 0xd0($v1)
/* 6FD68 8006F168 AC790080 */  sw         $t9, 0x80($v1)
/* 6FD6C 8006F16C 3C09800E */  lui        $t1, %hi(D_800E3574)
/* 6FD70 8006F170 95293574 */  lhu        $t1, %lo(D_800E3574)($t1)
/* 6FD74 8006F174 000B6023 */  negu       $t4, $t3
/* 6FD78 8006F178 448C9000 */  mtc1       $t4, $f18
/* 6FD7C 8006F17C 03295025 */  or         $t2, $t9, $t1
/* 6FD80 8006F180 46809120 */  cvt.s.w    $f4, $f18
/* 6FD84 8006F184 AC6A0080 */  sw         $t2, 0x80($v1)
/* 6FD88 8006F188 3C01800F */  lui        $at, %hi(D_800EC608)
/* 6FD8C 8006F18C C429C608 */  lwc1       $f9, %lo(D_800EC608)($at)
/* 6FD90 8006F190 C428C60C */  lwc1       $f8, -0x39f4($at)
/* 6FD94 8006F194 460021A1 */  cvt.d.s    $f6, $f4
/* 6FD98 8006F198 46283402 */  mul.d      $f16, $f6, $f8
/* 6FD9C 8006F19C 3C0E0002 */  lui        $t6, 2
/* 6FDA0 8006F1A0 AC6E00F0 */  sw         $t6, 0xf0($v1)
/* 6FDA4 8006F1A4 2404002D */  addiu      $a0, $zero, 0x2d
/* 6FDA8 8006F1A8 3205FFFF */  andi       $a1, $s0, 0xffff
/* 6FDAC 8006F1AC 444DF800 */  cfc1       $t5, $31
/* 6FDB0 8006F1B0 00000000 */  nop
/* 6FDB4 8006F1B4 35A10003 */  ori        $at, $t5, 3
/* 6FDB8 8006F1B8 38210002 */  xori       $at, $at, 2
/* 6FDBC 8006F1BC 44C1F800 */  ctc1       $at, $31
/* 6FDC0 8006F1C0 00000000 */  nop
/* 6FDC4 8006F1C4 462082A4 */  cvt.w.d    $f10, $f16
/* 6FDC8 8006F1C8 44CDF800 */  ctc1       $t5, $31
/* 6FDCC 8006F1CC 0C000DB2 */  jal        func_800036C8
/* 6FDD0 8006F1D0 E46A00EC */   swc1      $f10, 0xec($v1)
/* 6FDD4 8006F1D4 0C00D191 */  jal        func_80034644
/* 6FDD8 8006F1D8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6FDDC 8006F1DC 10000004 */  b          .L8006F1F0
/* 6FDE0 8006F1E0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8006F1E4:
/* 6FDE4 8006F1E4 0C019817 */  jal        func_8006605C
/* 6FDE8 8006F1E8 3204FFFF */   andi      $a0, $s0, 0xffff
.L8006F1EC:
/* 6FDEC 8006F1EC 8FBF001C */  lw         $ra, 0x1c($sp)
.L8006F1F0:
/* 6FDF0 8006F1F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 6FDF4 8006F1F4 03E00008 */  jr         $ra
/* 6FDF8 8006F1F8 27BD0028 */   addiu     $sp, $sp, 0x28
