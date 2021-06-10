glabel func_8005CAA8
/* 5D6A8 8005CAA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5D6AC 8005CAAC 000E7880 */  sll        $t7, $t6, 2
/* 5D6B0 8005CAB0 01EE7823 */  subu       $t7, $t7, $t6
/* 5D6B4 8005CAB4 000F7880 */  sll        $t7, $t7, 2
/* 5D6B8 8005CAB8 01EE7821 */  addu       $t7, $t7, $t6
/* 5D6BC 8005CABC 000F7880 */  sll        $t7, $t7, 2
/* 5D6C0 8005CAC0 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 5D6C4 8005CAC4 01EE7823 */  subu       $t7, $t7, $t6
/* 5D6C8 8005CAC8 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 5D6CC 8005CACC 000F78C0 */  sll        $t7, $t7, 3
/* 5D6D0 8005CAD0 00EF1021 */  addu       $v0, $a3, $t7
/* 5D6D4 8005CAD4 8043017D */  lb         $v1, 0x17d($v0)
/* 5D6D8 8005CAD8 AFA40000 */  sw         $a0, ($sp)
/* 5D6DC 8005CADC 1060000B */  beqz       $v1, .L8005CB0C
/* 5D6E0 8005CAE0 00000000 */   nop
/* 5D6E4 8005CAE4 8058017C */  lb         $t8, 0x17c($v0)
/* 5D6E8 8005CAE8 00000000 */  nop
/* 5D6EC 8005CAEC 27190001 */  addiu      $t9, $t8, 1
/* 5D6F0 8005CAF0 A059017C */  sb         $t9, 0x17c($v0)
/* 5D6F4 8005CAF4 8048017C */  lb         $t0, 0x17c($v0)
/* 5D6F8 8005CAF8 00000000 */  nop
/* 5D6FC 8005CAFC 0103082A */  slt        $at, $t0, $v1
/* 5D700 8005CB00 14200002 */  bnez       $at, .L8005CB0C
/* 5D704 8005CB04 00000000 */   nop
/* 5D708 8005CB08 A040017C */  sb         $zero, 0x17c($v0)
.L8005CB0C:
/* 5D70C 8005CB0C 8049017C */  lb         $t1, 0x17c($v0)
/* 5D710 8005CB10 00001825 */  or         $v1, $zero, $zero
/* 5D714 8005CB14 152001A4 */  bnez       $t1, .L8005D1A8
/* 5D718 8005CB18 00000000 */   nop
/* 5D71C 8005CB1C 8444017E */  lh         $a0, 0x17e($v0)
/* 5D720 8005CB20 804B017D */  lb         $t3, 0x17d($v0)
/* 5D724 8005CB24 00045080 */  sll        $t2, $a0, 2
/* 5D728 8005CB28 15600057 */  bnez       $t3, .L8005CC88
/* 5D72C 8005CB2C 01402025 */   or        $a0, $t2, $zero
/* 5D730 8005CB30 8C4C0080 */  lw         $t4, 0x80($v0)
/* 5D734 8005CB34 00853021 */  addu       $a2, $a0, $a1
/* 5D738 8005CB38 318D0020 */  andi       $t5, $t4, 0x20
/* 5D73C 8005CB3C 15A00008 */  bnez       $t5, .L8005CB60
/* 5D740 8005CB40 00000000 */   nop
/* 5D744 8005CB44 01453021 */  addu       $a2, $t2, $a1
/* 5D748 8005CB48 80CE0000 */  lb         $t6, ($a2)
/* 5D74C 8005CB4C 00000000 */  nop
/* 5D750 8005CB50 A44E00AA */  sh         $t6, 0xaa($v0)
/* 5D754 8005CB54 80CF0001 */  lb         $t7, 1($a2)
/* 5D758 8005CB58 10000009 */  b          .L8005CB80
/* 5D75C 8005CB5C A44F00AC */   sh        $t7, 0xac($v0)
.L8005CB60:
/* 5D760 8005CB60 80D80001 */  lb         $t8, 1($a2)
/* 5D764 8005CB64 00000000 */  nop
/* 5D768 8005CB68 0018C823 */  negu       $t9, $t8
/* 5D76C 8005CB6C A45900AA */  sh         $t9, 0xaa($v0)
/* 5D770 8005CB70 80C80000 */  lb         $t0, ($a2)
/* 5D774 8005CB74 00000000 */  nop
/* 5D778 8005CB78 00084823 */  negu       $t1, $t0
/* 5D77C 8005CB7C A44900AC */  sh         $t1, 0xac($v0)
.L8005CB80:
/* 5D780 8005CB80 80CA0002 */  lb         $t2, 2($a2)
/* 5D784 8005CB84 844C00AA */  lh         $t4, 0xaa($v0)
/* 5D788 8005CB88 A44A00AE */  sh         $t2, 0xae($v0)
/* 5D78C 8005CB8C 80CB0003 */  lb         $t3, 3($a2)
/* 5D790 8005CB90 448C2000 */  mtc1       $t4, $f4
/* 5D794 8005CB94 A44B00B0 */  sh         $t3, 0xb0($v0)
/* 5D798 8005CB98 468021A0 */  cvt.s.w    $f6, $f4
/* 5D79C 8005CB9C C4E80120 */  lwc1       $f8, 0x120($a3)
/* 5D7A0 8005CBA0 844F00AC */  lh         $t7, 0xac($v0)
/* 5D7A4 8005CBA4 46083282 */  mul.s      $f10, $f6, $f8
/* 5D7A8 8005CBA8 448F9000 */  mtc1       $t7, $f18
/* 5D7AC 8005CBAC 844800AE */  lh         $t0, 0xae($v0)
/* 5D7B0 8005CBB0 844B00B0 */  lh         $t3, 0xb0($v0)
/* 5D7B4 8005CBB4 444DF800 */  cfc1       $t5, $31
/* 5D7B8 8005CBB8 00000000 */  nop
/* 5D7BC 8005CBBC 35A10003 */  ori        $at, $t5, 3
/* 5D7C0 8005CBC0 38210002 */  xori       $at, $at, 2
/* 5D7C4 8005CBC4 44C1F800 */  ctc1       $at, $31
/* 5D7C8 8005CBC8 00000000 */  nop
/* 5D7CC 8005CBCC 46005424 */  cvt.w.s    $f16, $f10
/* 5D7D0 8005CBD0 44CDF800 */  ctc1       $t5, $31
/* 5D7D4 8005CBD4 440E8000 */  mfc1       $t6, $f16
/* 5D7D8 8005CBD8 46809120 */  cvt.s.w    $f4, $f18
/* 5D7DC 8005CBDC A44E00AA */  sh         $t6, 0xaa($v0)
/* 5D7E0 8005CBE0 C4E60120 */  lwc1       $f6, 0x120($a3)
/* 5D7E4 8005CBE4 44888000 */  mtc1       $t0, $f16
/* 5D7E8 8005CBE8 46062202 */  mul.s      $f8, $f4, $f6
/* 5D7EC 8005CBEC 4458F800 */  cfc1       $t8, $31
/* 5D7F0 8005CBF0 00000000 */  nop
/* 5D7F4 8005CBF4 37010003 */  ori        $at, $t8, 3
/* 5D7F8 8005CBF8 38210002 */  xori       $at, $at, 2
/* 5D7FC 8005CBFC 44C1F800 */  ctc1       $at, $31
/* 5D800 8005CC00 00000000 */  nop
/* 5D804 8005CC04 460042A4 */  cvt.w.s    $f10, $f8
/* 5D808 8005CC08 44D8F800 */  ctc1       $t8, $31
/* 5D80C 8005CC0C 44195000 */  mfc1       $t9, $f10
/* 5D810 8005CC10 468084A0 */  cvt.s.w    $f18, $f16
/* 5D814 8005CC14 A45900AC */  sh         $t9, 0xac($v0)
/* 5D818 8005CC18 C4E40120 */  lwc1       $f4, 0x120($a3)
/* 5D81C 8005CC1C 448B5000 */  mtc1       $t3, $f10
/* 5D820 8005CC20 46049182 */  mul.s      $f6, $f18, $f4
/* 5D824 8005CC24 4449F800 */  cfc1       $t1, $31
/* 5D828 8005CC28 00000000 */  nop
/* 5D82C 8005CC2C 35210003 */  ori        $at, $t1, 3
/* 5D830 8005CC30 38210002 */  xori       $at, $at, 2
/* 5D834 8005CC34 44C1F800 */  ctc1       $at, $31
/* 5D838 8005CC38 00000000 */  nop
/* 5D83C 8005CC3C 46003224 */  cvt.w.s    $f8, $f6
/* 5D840 8005CC40 44C9F800 */  ctc1       $t1, $31
/* 5D844 8005CC44 440A4000 */  mfc1       $t2, $f8
/* 5D848 8005CC48 46805420 */  cvt.s.w    $f16, $f10
/* 5D84C 8005CC4C A44A00AE */  sh         $t2, 0xae($v0)
/* 5D850 8005CC50 C4F20120 */  lwc1       $f18, 0x120($a3)
/* 5D854 8005CC54 00000000 */  nop
/* 5D858 8005CC58 46128102 */  mul.s      $f4, $f16, $f18
/* 5D85C 8005CC5C 444CF800 */  cfc1       $t4, $31
/* 5D860 8005CC60 00000000 */  nop
/* 5D864 8005CC64 35810003 */  ori        $at, $t4, 3
/* 5D868 8005CC68 38210002 */  xori       $at, $at, 2
/* 5D86C 8005CC6C 44C1F800 */  ctc1       $at, $31
/* 5D870 8005CC70 00000000 */  nop
/* 5D874 8005CC74 460021A4 */  cvt.w.s    $f6, $f4
/* 5D878 8005CC78 440D3000 */  mfc1       $t5, $f6
/* 5D87C 8005CC7C 44CCF800 */  ctc1       $t4, $31
/* 5D880 8005CC80 10000145 */  b          .L8005D198
/* 5D884 8005CC84 A44D00B0 */   sh        $t5, 0xb0($v0)
.L8005CC88:
/* 5D888 8005CC88 8C4E0080 */  lw         $t6, 0x80($v0)
/* 5D88C 8005CC8C 00A43021 */  addu       $a2, $a1, $a0
/* 5D890 8005CC90 31CF0020 */  andi       $t7, $t6, 0x20
/* 5D894 8005CC94 15E0006D */  bnez       $t7, .L8005CE4C
/* 5D898 8005CC98 00000000 */   nop
/* 5D89C 8005CC9C 00A43021 */  addu       $a2, $a1, $a0
/* 5D8A0 8005CCA0 80D90000 */  lb         $t9, ($a2)
/* 5D8A4 8005CCA4 845800AA */  lh         $t8, 0xaa($v0)
/* 5D8A8 8005CCA8 44995000 */  mtc1       $t9, $f10
/* 5D8AC 8005CCAC C4E20120 */  lwc1       $f2, 0x120($a3)
/* 5D8B0 8005CCB0 46805420 */  cvt.s.w    $f16, $f10
/* 5D8B4 8005CCB4 44984000 */  mtc1       $t8, $f8
/* 5D8B8 8005CCB8 3C013F80 */  lui        $at, 0x3f80
/* 5D8BC 8005CCBC 46101302 */  mul.s      $f12, $f2, $f16
/* 5D8C0 8005CCC0 46804020 */  cvt.s.w    $f0, $f8
/* 5D8C4 8005CCC4 460C003C */  c.lt.s     $f0, $f12
/* 5D8C8 8005CCC8 00000000 */  nop
/* 5D8CC 8005CCCC 45000017 */  bc1f       .L8005CD2C
/* 5D8D0 8005CCD0 00000000 */   nop
/* 5D8D4 8005CCD4 44817000 */  mtc1       $at, $f14
/* 5D8D8 8005CCD8 24030001 */  addiu      $v1, $zero, 1
/* 5D8DC 8005CCDC 46027482 */  mul.s      $f18, $f14, $f2
/* 5D8E0 8005CCE0 46120100 */  add.s      $f4, $f0, $f18
/* 5D8E4 8005CCE4 4448F800 */  cfc1       $t0, $31
/* 5D8E8 8005CCE8 00000000 */  nop
/* 5D8EC 8005CCEC 35010003 */  ori        $at, $t0, 3
/* 5D8F0 8005CCF0 38210002 */  xori       $at, $at, 2
/* 5D8F4 8005CCF4 44C1F800 */  ctc1       $at, $31
/* 5D8F8 8005CCF8 3C01800F */  lui        $at, 0x800f
/* 5D8FC 8005CCFC 460021A4 */  cvt.w.s    $f6, $f4
/* 5D900 8005CD00 44093000 */  mfc1       $t1, $f6
/* 5D904 8005CD04 44C8F800 */  ctc1       $t0, $31
/* 5D908 8005CD08 A44900AA */  sh         $t1, 0xaa($v0)
/* 5D90C 8005CD0C 80CB0000 */  lb         $t3, ($a2)
/* 5D910 8005CD10 844A00AA */  lh         $t2, 0xaa($v0)
/* 5D914 8005CD14 448B5000 */  mtc1       $t3, $f10
/* 5D918 8005CD18 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5D91C 8005CD1C 46805420 */  cvt.s.w    $f16, $f10
/* 5D920 8005CD20 448A4000 */  mtc1       $t2, $f8
/* 5D924 8005CD24 46101302 */  mul.s      $f12, $f2, $f16
/* 5D928 8005CD28 46804020 */  cvt.s.w    $f0, $f8
.L8005CD2C:
/* 5D92C 8005CD2C 4600603C */  c.lt.s     $f12, $f0
/* 5D930 8005CD30 3C013F80 */  lui        $at, 0x3f80
/* 5D934 8005CD34 44817000 */  mtc1       $at, $f14
/* 5D938 8005CD38 45000010 */  bc1f       .L8005CD7C
/* 5D93C 8005CD3C 00000000 */   nop
/* 5D940 8005CD40 46027482 */  mul.s      $f18, $f14, $f2
/* 5D944 8005CD44 24630001 */  addiu      $v1, $v1, 1
/* 5D948 8005CD48 46120101 */  sub.s      $f4, $f0, $f18
/* 5D94C 8005CD4C 444CF800 */  cfc1       $t4, $31
/* 5D950 8005CD50 00000000 */  nop
/* 5D954 8005CD54 35810003 */  ori        $at, $t4, 3
/* 5D958 8005CD58 38210002 */  xori       $at, $at, 2
/* 5D95C 8005CD5C 44C1F800 */  ctc1       $at, $31
/* 5D960 8005CD60 3C01800F */  lui        $at, %hi(D_800EF630)
/* 5D964 8005CD64 460021A4 */  cvt.w.s    $f6, $f4
/* 5D968 8005CD68 440D3000 */  mfc1       $t5, $f6
/* 5D96C 8005CD6C 44CCF800 */  ctc1       $t4, $31
/* 5D970 8005CD70 A44D00AA */  sh         $t5, 0xaa($v0)
/* 5D974 8005CD74 C422F630 */  lwc1       $f2, %lo(D_800EF630)($at)
/* 5D978 8005CD78 00000000 */  nop
.L8005CD7C:
/* 5D97C 8005CD7C 80CF0001 */  lb         $t7, 1($a2)
/* 5D980 8005CD80 844E00AC */  lh         $t6, 0xac($v0)
/* 5D984 8005CD84 448F5000 */  mtc1       $t7, $f10
/* 5D988 8005CD88 448E4000 */  mtc1       $t6, $f8
/* 5D98C 8005CD8C 46805420 */  cvt.s.w    $f16, $f10
/* 5D990 8005CD90 46101302 */  mul.s      $f12, $f2, $f16
/* 5D994 8005CD94 46804020 */  cvt.s.w    $f0, $f8
/* 5D998 8005CD98 460C003C */  c.lt.s     $f0, $f12
/* 5D99C 8005CD9C 00000000 */  nop
/* 5D9A0 8005CDA0 45000016 */  bc1f       .L8005CDFC
/* 5D9A4 8005CDA4 00000000 */   nop
/* 5D9A8 8005CDA8 46027482 */  mul.s      $f18, $f14, $f2
/* 5D9AC 8005CDAC 24630001 */  addiu      $v1, $v1, 1
/* 5D9B0 8005CDB0 46120100 */  add.s      $f4, $f0, $f18
/* 5D9B4 8005CDB4 4458F800 */  cfc1       $t8, $31
/* 5D9B8 8005CDB8 00000000 */  nop
/* 5D9BC 8005CDBC 37010003 */  ori        $at, $t8, 3
/* 5D9C0 8005CDC0 38210002 */  xori       $at, $at, 2
/* 5D9C4 8005CDC4 44C1F800 */  ctc1       $at, $31
/* 5D9C8 8005CDC8 3C01800F */  lui        $at, 0x800f
/* 5D9CC 8005CDCC 460021A4 */  cvt.w.s    $f6, $f4
/* 5D9D0 8005CDD0 44193000 */  mfc1       $t9, $f6
/* 5D9D4 8005CDD4 44D8F800 */  ctc1       $t8, $31
/* 5D9D8 8005CDD8 A45900AC */  sh         $t9, 0xac($v0)
/* 5D9DC 8005CDDC 80C90001 */  lb         $t1, 1($a2)
/* 5D9E0 8005CDE0 844800AC */  lh         $t0, 0xac($v0)
/* 5D9E4 8005CDE4 44895000 */  mtc1       $t1, $f10
/* 5D9E8 8005CDE8 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5D9EC 8005CDEC 46805420 */  cvt.s.w    $f16, $f10
/* 5D9F0 8005CDF0 44884000 */  mtc1       $t0, $f8
/* 5D9F4 8005CDF4 46101302 */  mul.s      $f12, $f2, $f16
/* 5D9F8 8005CDF8 46804020 */  cvt.s.w    $f0, $f8
.L8005CDFC:
/* 5D9FC 8005CDFC 4600603C */  c.lt.s     $f12, $f0
/* 5DA00 8005CE00 00000000 */  nop
/* 5DA04 8005CE04 4500007F */  bc1f       .L8005D004
/* 5DA08 8005CE08 00000000 */   nop
/* 5DA0C 8005CE0C 46027482 */  mul.s      $f18, $f14, $f2
/* 5DA10 8005CE10 24630001 */  addiu      $v1, $v1, 1
/* 5DA14 8005CE14 46120101 */  sub.s      $f4, $f0, $f18
/* 5DA18 8005CE18 444AF800 */  cfc1       $t2, $31
/* 5DA1C 8005CE1C 00000000 */  nop
/* 5DA20 8005CE20 35410003 */  ori        $at, $t2, 3
/* 5DA24 8005CE24 38210002 */  xori       $at, $at, 2
/* 5DA28 8005CE28 44C1F800 */  ctc1       $at, $31
/* 5DA2C 8005CE2C 3C01800F */  lui        $at, %hi(D_800EF630)
/* 5DA30 8005CE30 460021A4 */  cvt.w.s    $f6, $f4
/* 5DA34 8005CE34 440B3000 */  mfc1       $t3, $f6
/* 5DA38 8005CE38 44CAF800 */  ctc1       $t2, $31
/* 5DA3C 8005CE3C A44B00AC */  sh         $t3, 0xac($v0)
/* 5DA40 8005CE40 C422F630 */  lwc1       $f2, %lo(D_800EF630)($at)
/* 5DA44 8005CE44 10000070 */  b          .L8005D008
/* 5DA48 8005CE48 80CD0002 */   lb        $t5, 2($a2)
.L8005CE4C:
/* 5DA4C 8005CE4C 80CD0001 */  lb         $t5, 1($a2)
/* 5DA50 8005CE50 844C00AA */  lh         $t4, 0xaa($v0)
/* 5DA54 8005CE54 000D7023 */  negu       $t6, $t5
/* 5DA58 8005CE58 448E5000 */  mtc1       $t6, $f10
/* 5DA5C 8005CE5C C4E20120 */  lwc1       $f2, 0x120($a3)
/* 5DA60 8005CE60 46805420 */  cvt.s.w    $f16, $f10
/* 5DA64 8005CE64 448C4000 */  mtc1       $t4, $f8
/* 5DA68 8005CE68 3C013F80 */  lui        $at, 0x3f80
/* 5DA6C 8005CE6C 46101302 */  mul.s      $f12, $f2, $f16
/* 5DA70 8005CE70 46804020 */  cvt.s.w    $f0, $f8
/* 5DA74 8005CE74 460C003C */  c.lt.s     $f0, $f12
/* 5DA78 8005CE78 00000000 */  nop
/* 5DA7C 8005CE7C 45000018 */  bc1f       .L8005CEE0
/* 5DA80 8005CE80 00000000 */   nop
/* 5DA84 8005CE84 44817000 */  mtc1       $at, $f14
/* 5DA88 8005CE88 24030001 */  addiu      $v1, $zero, 1
/* 5DA8C 8005CE8C 46027482 */  mul.s      $f18, $f14, $f2
/* 5DA90 8005CE90 46120100 */  add.s      $f4, $f0, $f18
/* 5DA94 8005CE94 444FF800 */  cfc1       $t7, $31
/* 5DA98 8005CE98 00000000 */  nop
/* 5DA9C 8005CE9C 35E10003 */  ori        $at, $t7, 3
/* 5DAA0 8005CEA0 38210002 */  xori       $at, $at, 2
/* 5DAA4 8005CEA4 44C1F800 */  ctc1       $at, $31
/* 5DAA8 8005CEA8 3C01800F */  lui        $at, 0x800f
/* 5DAAC 8005CEAC 460021A4 */  cvt.w.s    $f6, $f4
/* 5DAB0 8005CEB0 44183000 */  mfc1       $t8, $f6
/* 5DAB4 8005CEB4 44CFF800 */  ctc1       $t7, $31
/* 5DAB8 8005CEB8 A45800AA */  sh         $t8, 0xaa($v0)
/* 5DABC 8005CEBC 80C80001 */  lb         $t0, 1($a2)
/* 5DAC0 8005CEC0 845900AA */  lh         $t9, 0xaa($v0)
/* 5DAC4 8005CEC4 00084823 */  negu       $t1, $t0
/* 5DAC8 8005CEC8 44895000 */  mtc1       $t1, $f10
/* 5DACC 8005CECC C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DAD0 8005CED0 46805420 */  cvt.s.w    $f16, $f10
/* 5DAD4 8005CED4 44994000 */  mtc1       $t9, $f8
/* 5DAD8 8005CED8 46101302 */  mul.s      $f12, $f2, $f16
/* 5DADC 8005CEDC 46804020 */  cvt.s.w    $f0, $f8
.L8005CEE0:
/* 5DAE0 8005CEE0 4600603C */  c.lt.s     $f12, $f0
/* 5DAE4 8005CEE4 3C013F80 */  lui        $at, 0x3f80
/* 5DAE8 8005CEE8 44817000 */  mtc1       $at, $f14
/* 5DAEC 8005CEEC 45000010 */  bc1f       .L8005CF30
/* 5DAF0 8005CEF0 00000000 */   nop
/* 5DAF4 8005CEF4 46027482 */  mul.s      $f18, $f14, $f2
/* 5DAF8 8005CEF8 24630001 */  addiu      $v1, $v1, 1
/* 5DAFC 8005CEFC 46120101 */  sub.s      $f4, $f0, $f18
/* 5DB00 8005CF00 444AF800 */  cfc1       $t2, $31
/* 5DB04 8005CF04 00000000 */  nop
/* 5DB08 8005CF08 35410003 */  ori        $at, $t2, 3
/* 5DB0C 8005CF0C 38210002 */  xori       $at, $at, 2
/* 5DB10 8005CF10 44C1F800 */  ctc1       $at, $31
/* 5DB14 8005CF14 3C01800F */  lui        $at, %hi(D_800EF630)
/* 5DB18 8005CF18 460021A4 */  cvt.w.s    $f6, $f4
/* 5DB1C 8005CF1C 440B3000 */  mfc1       $t3, $f6
/* 5DB20 8005CF20 44CAF800 */  ctc1       $t2, $31
/* 5DB24 8005CF24 A44B00AA */  sh         $t3, 0xaa($v0)
/* 5DB28 8005CF28 C422F630 */  lwc1       $f2, %lo(D_800EF630)($at)
/* 5DB2C 8005CF2C 00000000 */  nop
.L8005CF30:
/* 5DB30 8005CF30 80CD0000 */  lb         $t5, ($a2)
/* 5DB34 8005CF34 844C00AC */  lh         $t4, 0xac($v0)
/* 5DB38 8005CF38 000D7023 */  negu       $t6, $t5
/* 5DB3C 8005CF3C 448E5000 */  mtc1       $t6, $f10
/* 5DB40 8005CF40 448C4000 */  mtc1       $t4, $f8
/* 5DB44 8005CF44 46805420 */  cvt.s.w    $f16, $f10
/* 5DB48 8005CF48 46101302 */  mul.s      $f12, $f2, $f16
/* 5DB4C 8005CF4C 46804020 */  cvt.s.w    $f0, $f8
/* 5DB50 8005CF50 460C003C */  c.lt.s     $f0, $f12
/* 5DB54 8005CF54 00000000 */  nop
/* 5DB58 8005CF58 45000017 */  bc1f       .L8005CFB8
/* 5DB5C 8005CF5C 00000000 */   nop
/* 5DB60 8005CF60 46027482 */  mul.s      $f18, $f14, $f2
/* 5DB64 8005CF64 24630001 */  addiu      $v1, $v1, 1
/* 5DB68 8005CF68 46120100 */  add.s      $f4, $f0, $f18
/* 5DB6C 8005CF6C 444FF800 */  cfc1       $t7, $31
/* 5DB70 8005CF70 00000000 */  nop
/* 5DB74 8005CF74 35E10003 */  ori        $at, $t7, 3
/* 5DB78 8005CF78 38210002 */  xori       $at, $at, 2
/* 5DB7C 8005CF7C 44C1F800 */  ctc1       $at, $31
/* 5DB80 8005CF80 3C01800F */  lui        $at, 0x800f
/* 5DB84 8005CF84 460021A4 */  cvt.w.s    $f6, $f4
/* 5DB88 8005CF88 44183000 */  mfc1       $t8, $f6
/* 5DB8C 8005CF8C 44CFF800 */  ctc1       $t7, $31
/* 5DB90 8005CF90 A45800AC */  sh         $t8, 0xac($v0)
/* 5DB94 8005CF94 80C80000 */  lb         $t0, ($a2)
/* 5DB98 8005CF98 845900AC */  lh         $t9, 0xac($v0)
/* 5DB9C 8005CF9C 00084823 */  negu       $t1, $t0
/* 5DBA0 8005CFA0 44895000 */  mtc1       $t1, $f10
/* 5DBA4 8005CFA4 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DBA8 8005CFA8 46805420 */  cvt.s.w    $f16, $f10
/* 5DBAC 8005CFAC 44994000 */  mtc1       $t9, $f8
/* 5DBB0 8005CFB0 46101302 */  mul.s      $f12, $f2, $f16
/* 5DBB4 8005CFB4 46804020 */  cvt.s.w    $f0, $f8
.L8005CFB8:
/* 5DBB8 8005CFB8 4600603C */  c.lt.s     $f12, $f0
/* 5DBBC 8005CFBC 00000000 */  nop
/* 5DBC0 8005CFC0 45000010 */  bc1f       .L8005D004
/* 5DBC4 8005CFC4 00000000 */   nop
/* 5DBC8 8005CFC8 46027482 */  mul.s      $f18, $f14, $f2
/* 5DBCC 8005CFCC 24630001 */  addiu      $v1, $v1, 1
/* 5DBD0 8005CFD0 46120101 */  sub.s      $f4, $f0, $f18
/* 5DBD4 8005CFD4 444AF800 */  cfc1       $t2, $31
/* 5DBD8 8005CFD8 00000000 */  nop
/* 5DBDC 8005CFDC 35410003 */  ori        $at, $t2, 3
/* 5DBE0 8005CFE0 38210002 */  xori       $at, $at, 2
/* 5DBE4 8005CFE4 44C1F800 */  ctc1       $at, $31
/* 5DBE8 8005CFE8 3C01800F */  lui        $at, %hi(D_800EF630)
/* 5DBEC 8005CFEC 460021A4 */  cvt.w.s    $f6, $f4
/* 5DBF0 8005CFF0 440B3000 */  mfc1       $t3, $f6
/* 5DBF4 8005CFF4 44CAF800 */  ctc1       $t2, $31
/* 5DBF8 8005CFF8 A44B00AC */  sh         $t3, 0xac($v0)
/* 5DBFC 8005CFFC C422F630 */  lwc1       $f2, %lo(D_800EF630)($at)
/* 5DC00 8005D000 00000000 */  nop
.L8005D004:
/* 5DC04 8005D004 80CD0002 */  lb         $t5, 2($a2)
.L8005D008:
/* 5DC08 8005D008 844C00AE */  lh         $t4, 0xae($v0)
/* 5DC0C 8005D00C 448D5000 */  mtc1       $t5, $f10
/* 5DC10 8005D010 448C4000 */  mtc1       $t4, $f8
/* 5DC14 8005D014 46805420 */  cvt.s.w    $f16, $f10
/* 5DC18 8005D018 46101302 */  mul.s      $f12, $f2, $f16
/* 5DC1C 8005D01C 46804020 */  cvt.s.w    $f0, $f8
/* 5DC20 8005D020 460C003C */  c.lt.s     $f0, $f12
/* 5DC24 8005D024 00000000 */  nop
/* 5DC28 8005D028 45000016 */  bc1f       .L8005D084
/* 5DC2C 8005D02C 00000000 */   nop
/* 5DC30 8005D030 46027482 */  mul.s      $f18, $f14, $f2
/* 5DC34 8005D034 24630001 */  addiu      $v1, $v1, 1
/* 5DC38 8005D038 46120100 */  add.s      $f4, $f0, $f18
/* 5DC3C 8005D03C 444EF800 */  cfc1       $t6, $31
/* 5DC40 8005D040 00000000 */  nop
/* 5DC44 8005D044 35C10003 */  ori        $at, $t6, 3
/* 5DC48 8005D048 38210002 */  xori       $at, $at, 2
/* 5DC4C 8005D04C 44C1F800 */  ctc1       $at, $31
/* 5DC50 8005D050 3C01800F */  lui        $at, 0x800f
/* 5DC54 8005D054 460021A4 */  cvt.w.s    $f6, $f4
/* 5DC58 8005D058 440F3000 */  mfc1       $t7, $f6
/* 5DC5C 8005D05C 44CEF800 */  ctc1       $t6, $31
/* 5DC60 8005D060 A44F00AE */  sh         $t7, 0xae($v0)
/* 5DC64 8005D064 80D90002 */  lb         $t9, 2($a2)
/* 5DC68 8005D068 845800AE */  lh         $t8, 0xae($v0)
/* 5DC6C 8005D06C 44995000 */  mtc1       $t9, $f10
/* 5DC70 8005D070 C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DC74 8005D074 46805420 */  cvt.s.w    $f16, $f10
/* 5DC78 8005D078 44984000 */  mtc1       $t8, $f8
/* 5DC7C 8005D07C 46101302 */  mul.s      $f12, $f2, $f16
/* 5DC80 8005D080 46804020 */  cvt.s.w    $f0, $f8
.L8005D084:
/* 5DC84 8005D084 4600603C */  c.lt.s     $f12, $f0
/* 5DC88 8005D088 00000000 */  nop
/* 5DC8C 8005D08C 45000010 */  bc1f       .L8005D0D0
/* 5DC90 8005D090 00000000 */   nop
/* 5DC94 8005D094 46027482 */  mul.s      $f18, $f14, $f2
/* 5DC98 8005D098 24630001 */  addiu      $v1, $v1, 1
/* 5DC9C 8005D09C 46120101 */  sub.s      $f4, $f0, $f18
/* 5DCA0 8005D0A0 4448F800 */  cfc1       $t0, $31
/* 5DCA4 8005D0A4 00000000 */  nop
/* 5DCA8 8005D0A8 35010003 */  ori        $at, $t0, 3
/* 5DCAC 8005D0AC 38210002 */  xori       $at, $at, 2
/* 5DCB0 8005D0B0 44C1F800 */  ctc1       $at, $31
/* 5DCB4 8005D0B4 3C01800F */  lui        $at, %hi(D_800EF630)
/* 5DCB8 8005D0B8 460021A4 */  cvt.w.s    $f6, $f4
/* 5DCBC 8005D0BC 44093000 */  mfc1       $t1, $f6
/* 5DCC0 8005D0C0 44C8F800 */  ctc1       $t0, $31
/* 5DCC4 8005D0C4 A44900AE */  sh         $t1, 0xae($v0)
/* 5DCC8 8005D0C8 C422F630 */  lwc1       $f2, %lo(D_800EF630)($at)
/* 5DCCC 8005D0CC 00000000 */  nop
.L8005D0D0:
/* 5DCD0 8005D0D0 80CB0003 */  lb         $t3, 3($a2)
/* 5DCD4 8005D0D4 844A00B0 */  lh         $t2, 0xb0($v0)
/* 5DCD8 8005D0D8 448B5000 */  mtc1       $t3, $f10
/* 5DCDC 8005D0DC 448A4000 */  mtc1       $t2, $f8
/* 5DCE0 8005D0E0 46805420 */  cvt.s.w    $f16, $f10
/* 5DCE4 8005D0E4 46101302 */  mul.s      $f12, $f2, $f16
/* 5DCE8 8005D0E8 46804020 */  cvt.s.w    $f0, $f8
/* 5DCEC 8005D0EC 460C003C */  c.lt.s     $f0, $f12
/* 5DCF0 8005D0F0 00000000 */  nop
/* 5DCF4 8005D0F4 45000016 */  bc1f       .L8005D150
/* 5DCF8 8005D0F8 00000000 */   nop
/* 5DCFC 8005D0FC 46027482 */  mul.s      $f18, $f14, $f2
/* 5DD00 8005D100 24630001 */  addiu      $v1, $v1, 1
/* 5DD04 8005D104 46120100 */  add.s      $f4, $f0, $f18
/* 5DD08 8005D108 444CF800 */  cfc1       $t4, $31
/* 5DD0C 8005D10C 00000000 */  nop
/* 5DD10 8005D110 35810003 */  ori        $at, $t4, 3
/* 5DD14 8005D114 38210002 */  xori       $at, $at, 2
/* 5DD18 8005D118 44C1F800 */  ctc1       $at, $31
/* 5DD1C 8005D11C 3C01800F */  lui        $at, 0x800f
/* 5DD20 8005D120 460021A4 */  cvt.w.s    $f6, $f4
/* 5DD24 8005D124 440D3000 */  mfc1       $t5, $f6
/* 5DD28 8005D128 44CCF800 */  ctc1       $t4, $31
/* 5DD2C 8005D12C A44D00B0 */  sh         $t5, 0xb0($v0)
/* 5DD30 8005D130 80CF0003 */  lb         $t7, 3($a2)
/* 5DD34 8005D134 844E00B0 */  lh         $t6, 0xb0($v0)
/* 5DD38 8005D138 448F5000 */  mtc1       $t7, $f10
/* 5DD3C 8005D13C C422F630 */  lwc1       $f2, -0x9d0($at)
/* 5DD40 8005D140 46805420 */  cvt.s.w    $f16, $f10
/* 5DD44 8005D144 448E4000 */  mtc1       $t6, $f8
/* 5DD48 8005D148 46101302 */  mul.s      $f12, $f2, $f16
/* 5DD4C 8005D14C 46804020 */  cvt.s.w    $f0, $f8
.L8005D150:
/* 5DD50 8005D150 4600603C */  c.lt.s     $f12, $f0
/* 5DD54 8005D154 00000000 */  nop
/* 5DD58 8005D158 4500000F */  bc1f       .L8005D198
/* 5DD5C 8005D15C 00000000 */   nop
/* 5DD60 8005D160 46027482 */  mul.s      $f18, $f14, $f2
/* 5DD64 8005D164 24630001 */  addiu      $v1, $v1, 1
/* 5DD68 8005D168 46120101 */  sub.s      $f4, $f0, $f18
/* 5DD6C 8005D16C 4458F800 */  cfc1       $t8, $31
/* 5DD70 8005D170 00000000 */  nop
/* 5DD74 8005D174 37010003 */  ori        $at, $t8, 3
/* 5DD78 8005D178 38210002 */  xori       $at, $at, 2
/* 5DD7C 8005D17C 44C1F800 */  ctc1       $at, $31
/* 5DD80 8005D180 00000000 */  nop
/* 5DD84 8005D184 460021A4 */  cvt.w.s    $f6, $f4
/* 5DD88 8005D188 44193000 */  mfc1       $t9, $f6
/* 5DD8C 8005D18C 44D8F800 */  ctc1       $t8, $31
/* 5DD90 8005D190 A45900B0 */  sh         $t9, 0xb0($v0)
/* 5DD94 8005D194 00000000 */  nop
.L8005D198:
/* 5DD98 8005D198 14600003 */  bnez       $v1, .L8005D1A8
/* 5DD9C 8005D19C 00000000 */   nop
/* 5DDA0 8005D1A0 A040017D */  sb         $zero, 0x17d($v0)
/* 5DDA4 8005D1A4 A040017C */  sb         $zero, 0x17c($v0)
.L8005D1A8:
/* 5DDA8 8005D1A8 03E00008 */  jr         $ra
/* 5DDAC 8005D1AC 00000000 */   nop
