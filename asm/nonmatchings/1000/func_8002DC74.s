glabel func_8002DC74
/* 2E874 8002DC74 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2E878 8002DC78 000E7880 */  sll        $t7, $t6, 2
/* 2E87C 8002DC7C 01EE7823 */  subu       $t7, $t7, $t6
/* 2E880 8002DC80 000F7880 */  sll        $t7, $t7, 2
/* 2E884 8002DC84 01EE7821 */  addu       $t7, $t7, $t6
/* 2E888 8002DC88 000F7880 */  sll        $t7, $t7, 2
/* 2E88C 8002DC8C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2E890 8002DC90 01EE7823 */  subu       $t7, $t7, $t6
/* 2E894 8002DC94 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2E898 8002DC98 AFB00020 */  sw         $s0, 0x20($sp)
/* 2E89C 8002DC9C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2E8A0 8002DCA0 000F78C0 */  sll        $t7, $t7, 3
/* 2E8A4 8002DCA4 01F88021 */  addu       $s0, $t7, $t8
/* 2E8A8 8002DCA8 8E020098 */  lw         $v0, 0x98($s0)
/* 2E8AC 8002DCAC AFA40028 */  sw         $a0, 0x28($sp)
/* 2E8B0 8002DCB0 30590002 */  andi       $t9, $v0, 2
/* 2E8B4 8002DCB4 01C02025 */  or         $a0, $t6, $zero
/* 2E8B8 8002DCB8 1320000A */  beqz       $t9, .L8002DCE4
/* 2E8BC 8002DCBC AFBF0024 */   sw        $ra, 0x24($sp)
/* 2E8C0 8002DCC0 3C013F80 */  lui        $at, 0x3f80
/* 2E8C4 8002DCC4 44816000 */  mtc1       $at, $f12
/* 2E8C8 8002DCC8 86050088 */  lh         $a1, 0x88($s0)
/* 2E8CC 8002DCCC 8606008C */  lh         $a2, 0x8c($s0)
/* 2E8D0 8002DCD0 86070090 */  lh         $a3, 0x90($s0)
/* 2E8D4 8002DCD4 0C00FE78 */  jal        func_8003F9E0
/* 2E8D8 8002DCD8 AE000080 */   sw        $zero, 0x80($s0)
/* 2E8DC 8002DCDC 100000B5 */  b          .L8002DFB4
/* 2E8E0 8002DCE0 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002DCE4:
/* 2E8E4 8002DCE4 30480001 */  andi       $t0, $v0, 1
/* 2E8E8 8002DCE8 15000006 */  bnez       $t0, .L8002DD04
/* 2E8EC 8002DCEC 00000000 */   nop
/* 2E8F0 8002DCF0 0C00AF04 */  jal        func_8002BC10
/* 2E8F4 8002DCF4 A7A4002A */   sh        $a0, 0x2a($sp)
/* 2E8F8 8002DCF8 97A4002A */  lhu        $a0, 0x2a($sp)
/* 2E8FC 8002DCFC 1040000A */  beqz       $v0, .L8002DD28
/* 2E900 8002DD00 00000000 */   nop
.L8002DD04:
/* 2E904 8002DD04 86090090 */  lh         $t1, 0x90($s0)
/* 2E908 8002DD08 86060088 */  lh         $a2, 0x88($s0)
/* 2E90C 8002DD0C 8607008C */  lh         $a3, 0x8c($s0)
/* 2E910 8002DD10 AE000080 */  sw         $zero, 0x80($s0)
/* 2E914 8002DD14 00002825 */  or         $a1, $zero, $zero
/* 2E918 8002DD18 0C00FB52 */  jal        func_8003ED48
/* 2E91C 8002DD1C AFA90010 */   sw        $t1, 0x10($sp)
/* 2E920 8002DD20 100000A4 */  b          .L8002DFB4
/* 2E924 8002DD24 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002DD28:
/* 2E928 8002DD28 44801000 */  mtc1       $zero, $f2
/* 2E92C 8002DD2C C6000118 */  lwc1       $f0, 0x118($s0)
/* 2E930 8002DD30 3C013F80 */  lui        $at, 0x3f80
/* 2E934 8002DD34 46001032 */  c.eq.s     $f2, $f0
/* 2E938 8002DD38 00000000 */  nop
/* 2E93C 8002DD3C 45010010 */  bc1t       .L8002DD80
/* 2E940 8002DD40 00000000 */   nop
/* 2E944 8002DD44 44812000 */  mtc1       $at, $f4
/* 2E948 8002DD48 00000000 */  nop
/* 2E94C 8002DD4C 46040181 */  sub.s      $f6, $f0, $f4
/* 2E950 8002DD50 E6060118 */  swc1       $f6, 0x118($s0)
/* 2E954 8002DD54 C6080118 */  lwc1       $f8, 0x118($s0)
/* 2E958 8002DD58 00000000 */  nop
/* 2E95C 8002DD5C 46081032 */  c.eq.s     $f2, $f8
/* 2E960 8002DD60 00000000 */  nop
/* 2E964 8002DD64 45000006 */  bc1f       .L8002DD80
/* 2E968 8002DD68 00000000 */   nop
/* 2E96C 8002DD6C 8E0A0080 */  lw         $t2, 0x80($s0)
/* 2E970 8002DD70 8E0B015C */  lw         $t3, 0x15c($s0)
/* 2E974 8002DD74 00000000 */  nop
/* 2E978 8002DD78 014B6025 */  or         $t4, $t2, $t3
/* 2E97C 8002DD7C AE0C0080 */  sw         $t4, 0x80($s0)
.L8002DD80:
/* 2E980 8002DD80 3C01800F */  lui        $at, %hi(D_800EB880)
/* 2E984 8002DD84 C6020114 */  lwc1       $f2, 0x114($s0)
/* 2E988 8002DD88 C42BB880 */  lwc1       $f11, %lo(D_800EB880)($at)
/* 2E98C 8002DD8C C42AB884 */  lwc1       $f10, -0x477c($at)
/* 2E990 8002DD90 46001021 */  cvt.d.s    $f0, $f2
/* 2E994 8002DD94 462A003C */  c.lt.d     $f0, $f10
/* 2E998 8002DD98 3C01800F */  lui        $at, %hi(D_800EB888)
/* 2E99C 8002DD9C 45000009 */  bc1f       .L8002DDC4
/* 2E9A0 8002DDA0 00000000 */   nop
/* 2E9A4 8002DDA4 C431B888 */  lwc1       $f17, %lo(D_800EB888)($at)
/* 2E9A8 8002DDA8 C430B88C */  lwc1       $f16, -0x4774($at)
/* 2E9AC 8002DDAC 00000000 */  nop
/* 2E9B0 8002DDB0 46300481 */  sub.d      $f18, $f0, $f16
/* 2E9B4 8002DDB4 46209120 */  cvt.s.d    $f4, $f18
/* 2E9B8 8002DDB8 E6040114 */  swc1       $f4, 0x114($s0)
/* 2E9BC 8002DDBC C6020114 */  lwc1       $f2, 0x114($s0)
/* 2E9C0 8002DDC0 00000000 */  nop
.L8002DDC4:
/* 2E9C4 8002DDC4 3C01800F */  lui        $at, %hi(D_800EB890)
/* 2E9C8 8002DDC8 C42EB890 */  lwc1       $f14, %lo(D_800EB890)($at)
/* 2E9CC 8002DDCC C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 2E9D0 8002DDD0 44061000 */  mfc1       $a2, $f2
/* 2E9D4 8002DDD4 0C00A618 */  jal        func_80029860
/* 2E9D8 8002DDD8 00000000 */   nop
/* 2E9DC 8002DDDC E60000B4 */  swc1       $f0, 0xb4($s0)
/* 2E9E0 8002DDE0 3C01800F */  lui        $at, %hi(D_800EB894)
/* 2E9E4 8002DDE4 C42EB894 */  lwc1       $f14, %lo(D_800EB894)($at)
/* 2E9E8 8002DDE8 3C01800F */  lui        $at, %hi(D_800EB898)
/* 2E9EC 8002DDEC C6060114 */  lwc1       $f6, 0x114($s0)
/* 2E9F0 8002DDF0 C42BB898 */  lwc1       $f11, %lo(D_800EB898)($at)
/* 2E9F4 8002DDF4 C42AB89C */  lwc1       $f10, -0x4764($at)
/* 2E9F8 8002DDF8 46003221 */  cvt.d.s    $f8, $f6
/* 2E9FC 8002DDFC 462A4402 */  mul.d      $f16, $f8, $f10
/* 2EA00 8002DE00 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 2EA04 8002DE04 462084A0 */  cvt.s.d    $f18, $f16
/* 2EA08 8002DE08 44069000 */  mfc1       $a2, $f18
/* 2EA0C 8002DE0C 0C00A618 */  jal        func_80029860
/* 2EA10 8002DE10 00000000 */   nop
/* 2EA14 8002DE14 8E0400EC */  lw         $a0, 0xec($s0)
/* 2EA18 8002DE18 8E050150 */  lw         $a1, 0x150($s0)
/* 2EA1C 8002DE1C 8E060164 */  lw         $a2, 0x164($s0)
/* 2EA20 8002DE20 0C00A607 */  jal        func_8002981C
/* 2EA24 8002DE24 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 2EA28 8002DE28 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 2EA2C 8002DE2C 8E050154 */  lw         $a1, 0x154($s0)
/* 2EA30 8002DE30 8E060168 */  lw         $a2, 0x168($s0)
/* 2EA34 8002DE34 0C00A607 */  jal        func_8002981C
/* 2EA38 8002DE38 AE0200EC */   sw        $v0, 0xec($s0)
/* 2EA3C 8002DE3C AE0200F0 */  sw         $v0, 0xf0($s0)
/* 2EA40 8002DE40 3C0D800C */  lui        $t5, %hi(D_800BE4E0)
/* 2EA44 8002DE44 95ADE4E0 */  lhu        $t5, %lo(D_800BE4E0)($t5)
/* 2EA48 8002DE48 24010005 */  addiu      $at, $zero, 5
/* 2EA4C 8002DE4C 01A1001A */  div        $zero, $t5, $at
/* 2EA50 8002DE50 3C04800E */  lui        $a0, %hi(D_800E157C)
/* 2EA54 8002DE54 2484157C */  addiu      $a0, $a0, %lo(D_800E157C)
/* 2EA58 8002DE58 00007010 */  mfhi       $t6
/* 2EA5C 8002DE5C 15C00055 */  bnez       $t6, .L8002DFB4
/* 2EA60 8002DE60 8FBF0024 */   lw        $ra, 0x24($sp)
/* 2EA64 8002DE64 86070090 */  lh         $a3, 0x90($s0)
/* 2EA68 8002DE68 86050088 */  lh         $a1, 0x88($s0)
/* 2EA6C 8002DE6C 8606008C */  lh         $a2, 0x8c($s0)
/* 2EA70 8002DE70 0C00C48F */  jal        func_8003123C
/* 2EA74 8002DE74 24E7FFFF */   addiu     $a3, $a3, -1
/* 2EA78 8002DE78 1040004D */  beqz       $v0, .L8002DFB0
/* 2EA7C 8002DE7C 3C01800F */   lui       $at, 0x800f
/* 2EA80 8002DE80 00027880 */  sll        $t7, $v0, 2
/* 2EA84 8002DE84 01E27823 */  subu       $t7, $t7, $v0
/* 2EA88 8002DE88 000F7880 */  sll        $t7, $t7, 2
/* 2EA8C 8002DE8C 01E27821 */  addu       $t7, $t7, $v0
/* 2EA90 8002DE90 000F7880 */  sll        $t7, $t7, 2
/* 2EA94 8002DE94 01E27823 */  subu       $t7, $t7, $v0
/* 2EA98 8002DE98 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2EA9C 8002DE9C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2EAA0 8002DEA0 000F78C0 */  sll        $t7, $t7, 3
/* 2EAA4 8002DEA4 C421B8A0 */  lwc1       $f1, -0x4760($at)
/* 2EAA8 8002DEA8 C420B8A4 */  lwc1       $f0, -0x475c($at)
/* 2EAAC 8002DEAC 01F81821 */  addu       $v1, $t7, $t8
/* 2EAB0 8002DEB0 3C088022 */  lui        $t0, 0x8022
/* 2EAB4 8002DEB4 24190209 */  addiu      $t9, $zero, 0x209
/* 2EAB8 8002DEB8 3508D4E8 */  ori        $t0, $t0, 0xd4e8
/* 2EABC 8002DEBC A4790094 */  sh         $t9, 0x94($v1)
/* 2EAC0 8002DEC0 AC68018C */  sw         $t0, 0x18c($v1)
/* 2EAC4 8002DEC4 8E090158 */  lw         $t1, 0x158($s0)
/* 2EAC8 8002DEC8 2404FFFF */  addiu      $a0, $zero, -1
/* 2EACC 8002DECC AC690160 */  sw         $t1, 0x160($v1)
/* 2EAD0 8002DED0 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 2EAD4 8002DED4 00000000 */  nop
/* 2EAD8 8002DED8 460021A1 */  cvt.d.s    $f6, $f4
/* 2EADC 8002DEDC 46203200 */  add.d      $f8, $f6, $f0
/* 2EAE0 8002DEE0 462042A0 */  cvt.s.d    $f10, $f8
/* 2EAE4 8002DEE4 E46A00B4 */  swc1       $f10, 0xb4($v1)
/* 2EAE8 8002DEE8 C61000B8 */  lwc1       $f16, 0xb8($s0)
/* 2EAEC 8002DEEC 00000000 */  nop
/* 2EAF0 8002DEF0 460084A1 */  cvt.d.s    $f18, $f16
/* 2EAF4 8002DEF4 46209100 */  add.d      $f4, $f18, $f0
/* 2EAF8 8002DEF8 462021A0 */  cvt.s.d    $f6, $f4
/* 2EAFC 8002DEFC E46600B8 */  swc1       $f6, 0xb8($v1)
/* 2EB00 8002DF00 8E0A00EC */  lw         $t2, 0xec($s0)
/* 2EB04 8002DF04 00000000 */  nop
/* 2EB08 8002DF08 000A5823 */  negu       $t3, $t2
/* 2EB0C 8002DF0C 05610003 */  bgez       $t3, .L8002DF1C
/* 2EB10 8002DF10 000B6043 */   sra       $t4, $t3, 1
/* 2EB14 8002DF14 25610001 */  addiu      $at, $t3, 1
/* 2EB18 8002DF18 00016043 */  sra        $t4, $at, 1
.L8002DF1C:
/* 2EB1C 8002DF1C AC6C00EC */  sw         $t4, 0xec($v1)
/* 2EB20 8002DF20 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 2EB24 8002DF24 8C7800EC */  lw         $t8, 0xec($v1)
/* 2EB28 8002DF28 000D7023 */  negu       $t6, $t5
/* 2EB2C 8002DF2C 05C10003 */  bgez       $t6, .L8002DF3C
/* 2EB30 8002DF30 000E7843 */   sra       $t7, $t6, 1
/* 2EB34 8002DF34 25C10001 */  addiu      $at, $t6, 1
/* 2EB38 8002DF38 00017843 */  sra        $t7, $at, 1
.L8002DF3C:
/* 2EB3C 8002DF3C 3C014140 */  lui        $at, 0x4140
/* 2EB40 8002DF40 44814000 */  mtc1       $at, $f8
/* 2EB44 8002DF44 AC6F00F0 */  sw         $t7, 0xf0($v1)
/* 2EB48 8002DF48 8C6800F0 */  lw         $t0, 0xf0($v1)
/* 2EB4C 8002DF4C AC6400F4 */  sw         $a0, 0xf4($v1)
/* 2EB50 8002DF50 AC640164 */  sw         $a0, 0x164($v1)
/* 2EB54 8002DF54 E4680148 */  swc1       $f8, 0x148($v1)
/* 2EB58 8002DF58 07010003 */  bgez       $t8, .L8002DF68
/* 2EB5C 8002DF5C 0018C983 */   sra       $t9, $t8, 6
/* 2EB60 8002DF60 2701003F */  addiu      $at, $t8, 0x3f
/* 2EB64 8002DF64 0001C983 */  sra        $t9, $at, 6
.L8002DF68:
/* 2EB68 8002DF68 AC790168 */  sw         $t9, 0x168($v1)
/* 2EB6C 8002DF6C 05010003 */  bgez       $t0, .L8002DF7C
/* 2EB70 8002DF70 00084983 */   sra       $t1, $t0, 6
/* 2EB74 8002DF74 2501003F */  addiu      $at, $t0, 0x3f
/* 2EB78 8002DF78 00014983 */  sra        $t1, $at, 6
.L8002DF7C:
/* 2EB7C 8002DF7C AC69016C */  sw         $t1, 0x16c($v1)
/* 2EB80 8002DF80 3C01800F */  lui        $at, %hi(D_800EB8A8)
/* 2EB84 8002DF84 C42AB8A8 */  lwc1       $f10, %lo(D_800EB8A8)($at)
/* 2EB88 8002DF88 8C6A0088 */  lw         $t2, 0x88($v1)
/* 2EB8C 8002DF8C E46A0114 */  swc1       $f10, 0x114($v1)
/* 2EB90 8002DF90 8E0B00EC */  lw         $t3, 0xec($s0)
/* 2EB94 8002DF94 8C6D008C */  lw         $t5, 0x8c($v1)
/* 2EB98 8002DF98 014B6023 */  subu       $t4, $t2, $t3
/* 2EB9C 8002DF9C AC6C0088 */  sw         $t4, 0x88($v1)
/* 2EBA0 8002DFA0 8E0E00F0 */  lw         $t6, 0xf0($s0)
/* 2EBA4 8002DFA4 00000000 */  nop
/* 2EBA8 8002DFA8 01AE7823 */  subu       $t7, $t5, $t6
/* 2EBAC 8002DFAC AC6F008C */  sw         $t7, 0x8c($v1)
.L8002DFB0:
/* 2EBB0 8002DFB0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002DFB4:
/* 2EBB4 8002DFB4 8FB00020 */  lw         $s0, 0x20($sp)
/* 2EBB8 8002DFB8 03E00008 */  jr         $ra
/* 2EBBC 8002DFBC 27BD0028 */   addiu     $sp, $sp, 0x28
