glabel func_8002CCD0
/* 2D8D0 8002CCD0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2D8D4 8002CCD4 000E4880 */  sll        $t1, $t6, 2
/* 2D8D8 8002CCD8 012E4823 */  subu       $t1, $t1, $t6
/* 2D8DC 8002CCDC 00094880 */  sll        $t1, $t1, 2
/* 2D8E0 8002CCE0 012E4821 */  addu       $t1, $t1, $t6
/* 2D8E4 8002CCE4 00094880 */  sll        $t1, $t1, 2
/* 2D8E8 8002CCE8 012E4823 */  subu       $t1, $t1, $t6
/* 2D8EC 8002CCEC 3C0A800F */  lui        $t2, %hi(gActors)
/* 2D8F0 8002CCF0 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2D8F4 8002CCF4 000948C0 */  sll        $t1, $t1, 3
/* 2D8F8 8002CCF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2D8FC 8002CCFC 012A1821 */  addu       $v1, $t1, $t2
/* 2D900 8002CD00 94620084 */  lhu        $v0, 0x84($v1)
/* 2D904 8002CD04 44800000 */  mtc1       $zero, $f0
/* 2D908 8002CD08 AFA5002C */  sw         $a1, 0x2c($sp)
/* 2D90C 8002CD0C AFA60030 */  sw         $a2, 0x30($sp)
/* 2D910 8002CD10 00057C00 */  sll        $t7, $a1, 0x10
/* 2D914 8002CD14 0006CC00 */  sll        $t9, $a2, 0x10
/* 2D918 8002CD18 28413013 */  slti       $at, $v0, 0x3013
/* 2D91C 8002CD1C 00193403 */  sra        $a2, $t9, 0x10
/* 2D920 8002CD20 000F2C03 */  sra        $a1, $t7, 0x10
/* 2D924 8002CD24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D928 8002CD28 AFA40028 */  sw         $a0, 0x28($sp)
/* 2D92C 8002CD2C AFA70034 */  sw         $a3, 0x34($sp)
/* 2D930 8002CD30 14200012 */  bnez       $at, .L8002CD7C
/* 2D934 8002CD34 E4600110 */   swc1      $f0, 0x110($v1)
/* 2D938 8002CD38 2841302F */  slti       $at, $v0, 0x302f
/* 2D93C 8002CD3C 1420000A */  bnez       $at, .L8002CD68
/* 2D940 8002CD40 244BCFB4 */   addiu     $t3, $v0, -0x304c
/* 2D944 8002CD44 2D610023 */  sltiu      $at, $t3, 0x23
/* 2D948 8002CD48 1020001B */  beqz       $at, .L8002CDB8
/* 2D94C 8002CD4C 000B5880 */   sll       $t3, $t3, 2
/* 2D950 8002CD50 3C01800F */  lui        $at, %hi(D_800EB794)
/* 2D954 8002CD54 002B0821 */  addu       $at, $at, $t3
/* 2D958 8002CD58 8C2BB794 */  lw         $t3, %lo(D_800EB794)($at)
/* 2D95C 8002CD5C 00000000 */  nop
/* 2D960 8002CD60 01600008 */  jr         $t3
/* 2D964 8002CD64 00000000 */   nop
.L8002CD68:
/* 2D968 8002CD68 2401302E */  addiu      $at, $zero, 0x302e
/* 2D96C 8002CD6C 10410014 */  beq        $v0, $at, .L8002CDC0
/* 2D970 8002CD70 00000000 */   nop
/* 2D974 8002CD74 10000010 */  b          .L8002CDB8
/* 2D978 8002CD78 00000000 */   nop
.L8002CD7C:
/* 2D97C 8002CD7C 28410247 */  slti       $at, $v0, 0x247
/* 2D980 8002CD80 1420000A */  bnez       $at, .L8002CDAC
/* 2D984 8002CD84 244CCFFC */   addiu     $t4, $v0, -0x3004
/* 2D988 8002CD88 2D81000F */  sltiu      $at, $t4, 0xf
/* 2D98C 8002CD8C 1020000A */  beqz       $at, .L8002CDB8
/* 2D990 8002CD90 000C6080 */   sll       $t4, $t4, 2
/* 2D994 8002CD94 3C01800F */  lui        $at, %hi(D_800EB820)
/* 2D998 8002CD98 002C0821 */  addu       $at, $at, $t4
/* 2D99C 8002CD9C 8C2CB820 */  lw         $t4, %lo(D_800EB820)($at)
/* 2D9A0 8002CDA0 00000000 */  nop
/* 2D9A4 8002CDA4 01800008 */  jr         $t4
/* 2D9A8 8002CDA8 00000000 */   nop
.L8002CDAC:
/* 2D9AC 8002CDAC 24010246 */  addiu      $at, $zero, 0x246
/* 2D9B0 8002CDB0 10410041 */  beq        $v0, $at, .L8002CEB8
/* 2D9B4 8002CDB4 240D001E */   addiu     $t5, $zero, 0x1e
.L8002CDB8:
/* 2D9B8 8002CDB8 1000009D */  b          .L8002D030
/* 2D9BC 8002CDBC AC600080 */   sw        $zero, 0x80($v1)
.L8002CDC0:
/* 2D9C0 8002CDC0 1000003E */  b          .L8002CEBC
/* 2D9C4 8002CDC4 A46000D8 */   sh        $zero, 0xd8($v1)
/* 2D9C8 8002CDC8 8C62018C */  lw         $v0, 0x18c($v1)
/* 2D9CC 8002CDCC 3C0E800E */  lui        $t6, %hi(D_800DCE7C)
/* 2D9D0 8002CDD0 240D0002 */  addiu      $t5, $zero, 2
/* 2D9D4 8002CDD4 25CECE7C */  addiu      $t6, $t6, %lo(D_800DCE7C)
/* 2D9D8 8002CDD8 15C20004 */  bne        $t6, $v0, .L8002CDEC
/* 2D9DC 8002CDDC A46D00D8 */   sh        $t5, 0xd8($v1)
/* 2D9E0 8002CDE0 240F0006 */  addiu      $t7, $zero, 6
/* 2D9E4 8002CDE4 10000035 */  b          .L8002CEBC
/* 2D9E8 8002CDE8 A46F00D8 */   sh        $t7, 0xd8($v1)
.L8002CDEC:
/* 2D9EC 8002CDEC 3C18800E */  lui        $t8, %hi(D_800DD07C)
/* 2D9F0 8002CDF0 2718D07C */  addiu      $t8, $t8, %lo(D_800DD07C)
/* 2D9F4 8002CDF4 17020004 */  bne        $t8, $v0, .L8002CE08
/* 2D9F8 8002CDF8 3C08800E */   lui       $t0, %hi(D_800DD27C)
/* 2D9FC 8002CDFC 2419000A */  addiu      $t9, $zero, 0xa
/* 2DA00 8002CE00 1000002E */  b          .L8002CEBC
/* 2DA04 8002CE04 A47900D8 */   sh        $t9, 0xd8($v1)
.L8002CE08:
/* 2DA08 8002CE08 2508D27C */  addiu      $t0, $t0, %lo(D_800DD27C)
/* 2DA0C 8002CE0C 1502002B */  bne        $t0, $v0, .L8002CEBC
/* 2DA10 8002CE10 2409000E */   addiu     $t1, $zero, 0xe
/* 2DA14 8002CE14 10000029 */  b          .L8002CEBC
/* 2DA18 8002CE18 A46900D8 */   sh        $t1, 0xd8($v1)
/* 2DA1C 8002CE1C 8C62018C */  lw         $v0, 0x18c($v1)
/* 2DA20 8002CE20 3C0B800E */  lui        $t3, %hi(D_800DCE7C)
/* 2DA24 8002CE24 240A0004 */  addiu      $t2, $zero, 4
/* 2DA28 8002CE28 256BCE7C */  addiu      $t3, $t3, %lo(D_800DCE7C)
/* 2DA2C 8002CE2C 15620004 */  bne        $t3, $v0, .L8002CE40
/* 2DA30 8002CE30 A46A00D8 */   sh        $t2, 0xd8($v1)
/* 2DA34 8002CE34 240C0008 */  addiu      $t4, $zero, 8
/* 2DA38 8002CE38 10000020 */  b          .L8002CEBC
/* 2DA3C 8002CE3C A46C00D8 */   sh        $t4, 0xd8($v1)
.L8002CE40:
/* 2DA40 8002CE40 3C0D800E */  lui        $t5, %hi(D_800DD07C)
/* 2DA44 8002CE44 25ADD07C */  addiu      $t5, $t5, %lo(D_800DD07C)
/* 2DA48 8002CE48 15A20004 */  bne        $t5, $v0, .L8002CE5C
/* 2DA4C 8002CE4C 3C0F800E */   lui       $t7, %hi(D_800DD27C)
/* 2DA50 8002CE50 240E000C */  addiu      $t6, $zero, 0xc
/* 2DA54 8002CE54 10000019 */  b          .L8002CEBC
/* 2DA58 8002CE58 A46E00D8 */   sh        $t6, 0xd8($v1)
.L8002CE5C:
/* 2DA5C 8002CE5C 25EFD27C */  addiu      $t7, $t7, %lo(D_800DD27C)
/* 2DA60 8002CE60 15E20016 */  bne        $t7, $v0, .L8002CEBC
/* 2DA64 8002CE64 24180010 */   addiu     $t8, $zero, 0x10
/* 2DA68 8002CE68 10000014 */  b          .L8002CEBC
/* 2DA6C 8002CE6C A47800D8 */   sh        $t8, 0xd8($v1)
/* 2DA70 8002CE70 24190012 */  addiu      $t9, $zero, 0x12
/* 2DA74 8002CE74 10000011 */  b          .L8002CEBC
/* 2DA78 8002CE78 A47900D8 */   sh        $t9, 0xd8($v1)
/* 2DA7C 8002CE7C 24080014 */  addiu      $t0, $zero, 0x14
/* 2DA80 8002CE80 1000000E */  b          .L8002CEBC
/* 2DA84 8002CE84 A46800D8 */   sh        $t0, 0xd8($v1)
/* 2DA88 8002CE88 24090016 */  addiu      $t1, $zero, 0x16
/* 2DA8C 8002CE8C 1000000B */  b          .L8002CEBC
/* 2DA90 8002CE90 A46900D8 */   sh        $t1, 0xd8($v1)
/* 2DA94 8002CE94 240A0018 */  addiu      $t2, $zero, 0x18
/* 2DA98 8002CE98 10000008 */  b          .L8002CEBC
/* 2DA9C 8002CE9C A46A00D8 */   sh        $t2, 0xd8($v1)
/* 2DAA0 8002CEA0 240B001A */  addiu      $t3, $zero, 0x1a
/* 2DAA4 8002CEA4 10000005 */  b          .L8002CEBC
/* 2DAA8 8002CEA8 A46B00D8 */   sh        $t3, 0xd8($v1)
/* 2DAAC 8002CEAC 240C001C */  addiu      $t4, $zero, 0x1c
/* 2DAB0 8002CEB0 10000002 */  b          .L8002CEBC
/* 2DAB4 8002CEB4 A46C00D8 */   sh        $t4, 0xd8($v1)
.L8002CEB8:
/* 2DAB8 8002CEB8 A46D00D8 */  sh         $t5, 0xd8($v1)
.L8002CEBC:
/* 2DABC 8002CEBC 240E2607 */  addiu      $t6, $zero, 0x2607
/* 2DAC0 8002CEC0 240F0002 */  addiu      $t7, $zero, 2
/* 2DAC4 8002CEC4 A46E00D2 */  sh         $t6, 0xd2($v1)
/* 2DAC8 8002CEC8 AC6F0080 */  sw         $t7, 0x80($v1)
/* 2DACC 8002CECC AC600098 */  sw         $zero, 0x98($v1)
/* 2DAD0 8002CED0 A46000D0 */  sh         $zero, 0xd0($v1)
/* 2DAD4 8002CED4 E4600114 */  swc1       $f0, 0x114($v1)
/* 2DAD8 8002CED8 E4600118 */  swc1       $f0, 0x118($v1)
/* 2DADC 8002CEDC E460011C */  swc1       $f0, 0x11c($v1)
/* 2DAE0 8002CEE0 E4600120 */  swc1       $f0, 0x120($v1)
/* 2DAE4 8002CEE4 E4600124 */  swc1       $f0, 0x124($v1)
/* 2DAE8 8002CEE8 E4600128 */  swc1       $f0, 0x128($v1)
/* 2DAEC 8002CEEC E460012C */  swc1       $f0, 0x12c($v1)
/* 2DAF0 8002CEF0 E4600130 */  swc1       $f0, 0x130($v1)
/* 2DAF4 8002CEF4 E4600134 */  swc1       $f0, 0x134($v1)
/* 2DAF8 8002CEF8 E4600138 */  swc1       $f0, 0x138($v1)
/* 2DAFC 8002CEFC E460013C */  swc1       $f0, 0x13c($v1)
/* 2DB00 8002CF00 E4600140 */  swc1       $f0, 0x140($v1)
/* 2DB04 8002CF04 E4600144 */  swc1       $f0, 0x144($v1)
/* 2DB08 8002CF08 E4600148 */  swc1       $f0, 0x148($v1)
/* 2DB0C 8002CF0C E460014C */  swc1       $f0, 0x14c($v1)
/* 2DB10 8002CF10 AC600150 */  sw         $zero, 0x150($v1)
/* 2DB14 8002CF14 AC600154 */  sw         $zero, 0x154($v1)
/* 2DB18 8002CF18 AC600158 */  sw         $zero, 0x158($v1)
/* 2DB1C 8002CF1C AC60015C */  sw         $zero, 0x15c($v1)
/* 2DB20 8002CF20 AC600160 */  sw         $zero, 0x160($v1)
/* 2DB24 8002CF24 AC600164 */  sw         $zero, 0x164($v1)
/* 2DB28 8002CF28 AC600168 */  sw         $zero, 0x168($v1)
/* 2DB2C 8002CF2C AC60016C */  sw         $zero, 0x16c($v1)
/* 2DB30 8002CF30 AC600170 */  sw         $zero, 0x170($v1)
/* 2DB34 8002CF34 AC600174 */  sw         $zero, 0x174($v1)
/* 2DB38 8002CF38 AC600178 */  sw         $zero, 0x178($v1)
/* 2DB3C 8002CF3C AC60017C */  sw         $zero, 0x17c($v1)
/* 2DB40 8002CF40 AC600180 */  sw         $zero, 0x180($v1)
/* 2DB44 8002CF44 AC600184 */  sw         $zero, 0x184($v1)
/* 2DB48 8002CF48 AC600188 */  sw         $zero, 0x188($v1)
/* 2DB4C 8002CF4C AC60018C */  sw         $zero, 0x18c($v1)
/* 2DB50 8002CF50 AC600190 */  sw         $zero, 0x190($v1)
/* 2DB54 8002CF54 A4650088 */  sh         $a1, 0x88($v1)
/* 2DB58 8002CF58 A466008C */  sh         $a2, 0x8c($v1)
/* 2DB5C 8002CF5C 0C0005E3 */  jal        func_8000178C
/* 2DB60 8002CF60 AFA30018 */   sw        $v1, 0x18($sp)
/* 2DB64 8002CF64 97A40036 */  lhu        $a0, 0x36($sp)
/* 2DB68 8002CF68 8FA30018 */  lw         $v1, 0x18($sp)
/* 2DB6C 8002CF6C 30980001 */  andi       $t8, $a0, 1
/* 2DB70 8002CF70 13000016 */  beqz       $t8, .L8002CFCC
/* 2DB74 8002CF74 308D0002 */   andi      $t5, $a0, 2
/* 2DB78 8002CF78 00024080 */  sll        $t0, $v0, 2
/* 2DB7C 8002CF7C 310903FF */  andi       $t1, $t0, 0x3ff
/* 2DB80 8002CF80 00095080 */  sll        $t2, $t1, 2
/* 2DB84 8002CF84 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 2DB88 8002CF88 002A0821 */  addu       $at, $at, $t2
/* 2DB8C 8002CF8C C424CCD0 */  lwc1       $f4, %lo(D_800BCCD0)($at)
/* 2DB90 8002CF90 3C014800 */  lui        $at, 0x4800
/* 2DB94 8002CF94 44813000 */  mtc1       $at, $f6
/* 2DB98 8002CF98 00000000 */  nop
/* 2DB9C 8002CF9C 46062202 */  mul.s      $f8, $f4, $f6
/* 2DBA0 8002CFA0 444BF800 */  cfc1       $t3, $31
/* 2DBA4 8002CFA4 00000000 */  nop
/* 2DBA8 8002CFA8 35610003 */  ori        $at, $t3, 3
/* 2DBAC 8002CFAC 38210002 */  xori       $at, $at, 2
/* 2DBB0 8002CFB0 44C1F800 */  ctc1       $at, $31
/* 2DBB4 8002CFB4 00000000 */  nop
/* 2DBB8 8002CFB8 460042A4 */  cvt.w.s    $f10, $f8
/* 2DBBC 8002CFBC 440C5000 */  mfc1       $t4, $f10
/* 2DBC0 8002CFC0 44CBF800 */  ctc1       $t3, $31
/* 2DBC4 8002CFC4 AC6C00EC */  sw         $t4, 0xec($v1)
/* 2DBC8 8002CFC8 00000000 */  nop
.L8002CFCC:
/* 2DBCC 8002CFCC 11A00017 */  beqz       $t5, .L8002D02C
/* 2DBD0 8002CFD0 240B001E */   addiu     $t3, $zero, 0x1e
/* 2DBD4 8002CFD4 00027880 */  sll        $t7, $v0, 2
/* 2DBD8 8002CFD8 25F8FF00 */  addiu      $t8, $t7, -0x100
/* 2DBDC 8002CFDC 331903FF */  andi       $t9, $t8, 0x3ff
/* 2DBE0 8002CFE0 00194080 */  sll        $t0, $t9, 2
/* 2DBE4 8002CFE4 3C01800C */  lui        $at, %hi(D_800BCCD0)
/* 2DBE8 8002CFE8 00280821 */  addu       $at, $at, $t0
/* 2DBEC 8002CFEC C430CCD0 */  lwc1       $f16, %lo(D_800BCCD0)($at)
/* 2DBF0 8002CFF0 3C014800 */  lui        $at, 0x4800
/* 2DBF4 8002CFF4 44819000 */  mtc1       $at, $f18
/* 2DBF8 8002CFF8 00000000 */  nop
/* 2DBFC 8002CFFC 46128102 */  mul.s      $f4, $f16, $f18
/* 2DC00 8002D000 4449F800 */  cfc1       $t1, $31
/* 2DC04 8002D004 00000000 */  nop
/* 2DC08 8002D008 35210003 */  ori        $at, $t1, 3
/* 2DC0C 8002D00C 38210002 */  xori       $at, $at, 2
/* 2DC10 8002D010 44C1F800 */  ctc1       $at, $31
/* 2DC14 8002D014 00000000 */  nop
/* 2DC18 8002D018 460021A4 */  cvt.w.s    $f6, $f4
/* 2DC1C 8002D01C 440A3000 */  mfc1       $t2, $f6
/* 2DC20 8002D020 44C9F800 */  ctc1       $t1, $31
/* 2DC24 8002D024 AC6A00F0 */  sw         $t2, 0xf0($v1)
/* 2DC28 8002D028 00000000 */  nop
.L8002D02C:
/* 2DC2C 8002D02C A46B00D4 */  sh         $t3, 0xd4($v1)
.L8002D030:
/* 2DC30 8002D030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DC34 8002D034 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2DC38 8002D038 03E00008 */  jr         $ra
/* 2DC3C 8002D03C 00000000 */   nop
