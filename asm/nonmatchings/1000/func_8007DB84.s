glabel func_8007DB84
/* 7E784 8007DB84 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7E788 8007DB88 AFB70054 */  sw         $s7, 0x54($sp)
/* 7E78C 8007DB8C 3097FFFF */  andi       $s7, $a0, 0xffff
/* 7E790 8007DB90 00177080 */  sll        $t6, $s7, 2
/* 7E794 8007DB94 01D77023 */  subu       $t6, $t6, $s7
/* 7E798 8007DB98 000E7080 */  sll        $t6, $t6, 2
/* 7E79C 8007DB9C 01D77021 */  addu       $t6, $t6, $s7
/* 7E7A0 8007DBA0 AFBE0058 */  sw         $fp, 0x58($sp)
/* 7E7A4 8007DBA4 000E7080 */  sll        $t6, $t6, 2
/* 7E7A8 8007DBA8 3C1E800F */  lui        $fp, %hi(gActors)
/* 7E7AC 8007DBAC 01D77023 */  subu       $t6, $t6, $s7
/* 7E7B0 8007DBB0 27DEF510 */  addiu      $fp, $fp, %lo(gActors)
/* 7E7B4 8007DBB4 AFB00038 */  sw         $s0, 0x38($sp)
/* 7E7B8 8007DBB8 000E70C0 */  sll        $t6, $t6, 3
/* 7E7BC 8007DBBC 03CE8021 */  addu       $s0, $fp, $t6
/* 7E7C0 8007DBC0 8E0F0158 */  lw         $t7, 0x158($s0)
/* 7E7C4 8007DBC4 8E180160 */  lw         $t8, 0x160($s0)
/* 7E7C8 8007DBC8 AFBF005C */  sw         $ra, 0x5c($sp)
/* 7E7CC 8007DBCC 01F81021 */  addu       $v0, $t7, $t8
/* 7E7D0 8007DBD0 AFB60050 */  sw         $s6, 0x50($sp)
/* 7E7D4 8007DBD4 AFB5004C */  sw         $s5, 0x4c($sp)
/* 7E7D8 8007DBD8 AFB40048 */  sw         $s4, 0x48($sp)
/* 7E7DC 8007DBDC AFB30044 */  sw         $s3, 0x44($sp)
/* 7E7E0 8007DBE0 AFB20040 */  sw         $s2, 0x40($sp)
/* 7E7E4 8007DBE4 AFB1003C */  sw         $s1, 0x3c($sp)
/* 7E7E8 8007DBE8 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7E7EC 8007DBEC E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7E7F0 8007DBF0 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7E7F4 8007DBF4 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7E7F8 8007DBF8 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7E7FC 8007DBFC E7B60024 */  swc1       $f22, 0x24($sp)
/* 7E800 8007DC00 E7B50018 */  swc1       $f21, 0x18($sp)
/* 7E804 8007DC04 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7E808 8007DC08 AFA40060 */  sw         $a0, 0x60($sp)
/* 7E80C 8007DC0C AE020158 */  sw         $v0, 0x158($s0)
/* 7E810 8007DC10 04410003 */  bgez       $v0, .L8007DC20
/* 7E814 8007DC14 AE000160 */   sw        $zero, 0x160($s0)
/* 7E818 8007DC18 AE000158 */  sw         $zero, 0x158($s0)
/* 7E81C 8007DC1C 00001025 */  or         $v0, $zero, $zero
.L8007DC20:
/* 7E820 8007DC20 8E03015C */  lw         $v1, 0x15c($s0)
/* 7E824 8007DC24 00000000 */  nop
/* 7E828 8007DC28 0062082A */  slt        $at, $v1, $v0
/* 7E82C 8007DC2C 10200003 */  beqz       $at, .L8007DC3C
/* 7E830 8007DC30 00000000 */   nop
/* 7E834 8007DC34 AE030158 */  sw         $v1, 0x158($s0)
/* 7E838 8007DC38 00601025 */  or         $v0, $v1, $zero
.L8007DC3C:
/* 7E83C 8007DC3C 0C01F338 */  jal        func_8007CCE0
/* 7E840 8007DC40 00402025 */   or        $a0, $v0, $zero
/* 7E844 8007DC44 3C014100 */  lui        $at, 0x4100
/* 7E848 8007DC48 44812000 */  mtc1       $at, $f4
/* 7E84C 8007DC4C C60C014C */  lwc1       $f12, 0x14c($s0)
/* 7E850 8007DC50 24110001 */  addiu      $s1, $zero, 1
/* 7E854 8007DC54 460C2181 */  sub.s      $f6, $f4, $f12
/* 7E858 8007DC58 3C16800E */  lui        $s6, 0x800e
/* 7E85C 8007DC5C 4448F800 */  cfc1       $t0, $31
/* 7E860 8007DC60 44D1F800 */  ctc1       $s1, $31
/* 7E864 8007DC64 00009825 */  or         $s3, $zero, $zero
/* 7E868 8007DC68 46003224 */  cvt.w.s    $f8, $f6
/* 7E86C 8007DC6C 3C014F00 */  lui        $at, 0x4f00
/* 7E870 8007DC70 4451F800 */  cfc1       $s1, $31
/* 7E874 8007DC74 26D60F00 */  addiu      $s6, $s6, 0xf00
/* 7E878 8007DC78 32310078 */  andi       $s1, $s1, 0x78
/* 7E87C 8007DC7C 12200012 */  beqz       $s1, .L8007DCC8
/* 7E880 8007DC80 00009025 */   or        $s2, $zero, $zero
/* 7E884 8007DC84 44814000 */  mtc1       $at, $f8
/* 7E888 8007DC88 24110001 */  addiu      $s1, $zero, 1
/* 7E88C 8007DC8C 46083201 */  sub.s      $f8, $f6, $f8
/* 7E890 8007DC90 3C018000 */  lui        $at, 0x8000
/* 7E894 8007DC94 44D1F800 */  ctc1       $s1, $31
/* 7E898 8007DC98 00000000 */  nop
/* 7E89C 8007DC9C 46004224 */  cvt.w.s    $f8, $f8
/* 7E8A0 8007DCA0 4451F800 */  cfc1       $s1, $31
/* 7E8A4 8007DCA4 00000000 */  nop
/* 7E8A8 8007DCA8 32310078 */  andi       $s1, $s1, 0x78
/* 7E8AC 8007DCAC 16200004 */  bnez       $s1, .L8007DCC0
/* 7E8B0 8007DCB0 00000000 */   nop
/* 7E8B4 8007DCB4 44114000 */  mfc1       $s1, $f8
/* 7E8B8 8007DCB8 10000007 */  b          .L8007DCD8
/* 7E8BC 8007DCBC 02218825 */   or        $s1, $s1, $at
.L8007DCC0:
/* 7E8C0 8007DCC0 10000005 */  b          .L8007DCD8
/* 7E8C4 8007DCC4 2411FFFF */   addiu     $s1, $zero, -1
.L8007DCC8:
/* 7E8C8 8007DCC8 44114000 */  mfc1       $s1, $f8
/* 7E8CC 8007DCCC 00000000 */  nop
/* 7E8D0 8007DCD0 0620FFFB */  bltz       $s1, .L8007DCC0
/* 7E8D4 8007DCD4 00000000 */   nop
.L8007DCD8:
/* 7E8D8 8007DCD8 8E140188 */  lw         $s4, 0x188($s0)
/* 7E8DC 8007DCDC 44C8F800 */  ctc1       $t0, $31
/* 7E8E0 8007DCE0 44805000 */  mtc1       $zero, $f10
/* 7E8E4 8007DCE4 3229FFFF */  andi       $t1, $s1, 0xffff
/* 7E8E8 8007DCE8 01208825 */  or         $s1, $t1, $zero
/* 7E8EC 8007DCEC 06810004 */  bgez       $s4, .L8007DD00
/* 7E8F0 8007DCF0 00145403 */   sra       $t2, $s4, 0x10
/* 7E8F4 8007DCF4 3401FFFF */  ori        $at, $zero, 0xffff
/* 7E8F8 8007DCF8 00340821 */  addu       $at, $at, $s4
/* 7E8FC 8007DCFC 00015403 */  sra        $t2, $at, 0x10
.L8007DD00:
/* 7E900 8007DD00 000A5C00 */  sll        $t3, $t2, 0x10
/* 7E904 8007DD04 000BA403 */  sra        $s4, $t3, 0x10
/* 7E908 8007DD08 04010005 */  bgez       $zero, .L8007DD20
/* 7E90C 8007DD0C 46805420 */   cvt.s.w   $f16, $f10
/* 7E910 8007DD10 3C014F80 */  lui        $at, 0x4f80
/* 7E914 8007DD14 44819000 */  mtc1       $at, $f18
/* 7E918 8007DD18 00000000 */  nop
/* 7E91C 8007DD1C 46128400 */  add.s      $f16, $f16, $f18
.L8007DD20:
/* 7E920 8007DD20 460C803C */  c.lt.s     $f16, $f12
/* 7E924 8007DD24 3C014110 */  lui        $at, 0x4110
/* 7E928 8007DD28 45000072 */  bc1f       .L8007DEF4
/* 7E92C 8007DD2C 3C15800C */   lui       $s5, 0x800c
/* 7E930 8007DD30 4481D000 */  mtc1       $at, $f26
/* 7E934 8007DD34 3C014000 */  lui        $at, 0x4000
/* 7E938 8007DD38 4481C000 */  mtc1       $at, $f24
/* 7E93C 8007DD3C 3C014780 */  lui        $at, 0x4780
/* 7E940 8007DD40 4481B000 */  mtc1       $at, $f22
/* 7E944 8007DD44 3C014012 */  lui        $at, 0x4012
/* 7E948 8007DD48 4481A800 */  mtc1       $at, $f21
/* 7E94C 8007DD4C 4480A000 */  mtc1       $zero, $f20
/* 7E950 8007DD50 26B5CCD0 */  addiu      $s5, $s5, -0x3330
.L8007DD54:
/* 7E954 8007DD54 0C01F4A4 */  jal        func_8007D290
/* 7E958 8007DD58 32E4FFFF */   andi      $a0, $s7, 0xffff
/* 7E95C 8007DD5C 10400065 */  beqz       $v0, .L8007DEF4
/* 7E960 8007DD60 3C014F80 */   lui       $at, 0x4f80
/* 7E964 8007DD64 C60C014C */  lwc1       $f12, 0x14c($s0)
/* 7E968 8007DD68 44923000 */  mtc1       $s2, $f6
/* 7E96C 8007DD6C C60200B4 */  lwc1       $f2, 0xb4($s0)
/* 7E970 8007DD70 46186103 */  div.s      $f4, $f12, $f24
/* 7E974 8007DD74 06410004 */  bgez       $s2, .L8007DD88
/* 7E978 8007DD78 46803220 */   cvt.s.w   $f8, $f6
/* 7E97C 8007DD7C 44815000 */  mtc1       $at, $f10
/* 7E980 8007DD80 00000000 */  nop
/* 7E984 8007DD84 460A4200 */  add.s      $f8, $f8, $f10
.L8007DD88:
/* 7E988 8007DD88 46086481 */  sub.s      $f18, $f12, $f8
/* 7E98C 8007DD8C 328F03FF */  andi       $t7, $s4, 0x3ff
/* 7E990 8007DD90 46122401 */  sub.s      $f16, $f4, $f18
/* 7E994 8007DD94 000FC080 */  sll        $t8, $t7, 2
/* 7E998 8007DD98 461A8182 */  mul.s      $f6, $f16, $f26
/* 7E99C 8007DD9C 46001121 */  cvt.d.s    $f4, $f2
/* 7E9A0 8007DDA0 02B8C821 */  addu       $t9, $s5, $t8
/* 7E9A4 8007DDA4 8E0E0088 */  lw         $t6, 0x88($s0)
/* 7E9A8 8007DDA8 46023282 */  mul.s      $f10, $f6, $f2
/* 7E9AC 8007DDAC 448E3000 */  mtc1       $t6, $f6
/* 7E9B0 8007DDB0 00026880 */  sll        $t5, $v0, 2
/* 7E9B4 8007DDB4 01A26823 */  subu       $t5, $t5, $v0
/* 7E9B8 8007DDB8 46342482 */  mul.d      $f18, $f4, $f20
/* 7E9BC 8007DDBC C7240000 */  lwc1       $f4, ($t9)
/* 7E9C0 8007DDC0 46005221 */  cvt.d.s    $f8, $f10
/* 7E9C4 8007DDC4 000D6880 */  sll        $t5, $t5, 2
/* 7E9C8 8007DDC8 01A26821 */  addu       $t5, $t5, $v0
/* 7E9CC 8007DDCC 46289400 */  add.d      $f16, $f18, $f8
/* 7E9D0 8007DDD0 000D6880 */  sll        $t5, $t5, 2
/* 7E9D4 8007DDD4 4604B482 */  mul.s      $f18, $f22, $f4
/* 7E9D8 8007DDD8 46208020 */  cvt.s.d    $f0, $f16
/* 7E9DC 8007DDDC 01A26823 */  subu       $t5, $t5, $v0
/* 7E9E0 8007DDE0 000D68C0 */  sll        $t5, $t5, 3
/* 7E9E4 8007DDE4 46120202 */  mul.s      $f8, $f0, $f18
/* 7E9E8 8007DDE8 268BFF00 */  addiu      $t3, $s4, -0x100
/* 7E9EC 8007DDEC 03CD1821 */  addu       $v1, $fp, $t5
/* 7E9F0 8007DDF0 316C03FF */  andi       $t4, $t3, 0x3ff
/* 7E9F4 8007DDF4 468032A0 */  cvt.s.w    $f10, $f6
/* 7E9F8 8007DDF8 000C6880 */  sll        $t5, $t4, 2
/* 7E9FC 8007DDFC 02AD7021 */  addu       $t6, $s5, $t5
/* 7EA00 8007DE00 46085400 */  add.s      $f16, $f10, $f8
/* 7EA04 8007DE04 C5CA0000 */  lwc1       $f10, ($t6)
/* 7EA08 8007DE08 4448F800 */  cfc1       $t0, $31
/* 7EA0C 8007DE0C 02D1C821 */  addu       $t9, $s6, $s1
/* 7EA10 8007DE10 35010003 */  ori        $at, $t0, 3
/* 7EA14 8007DE14 38210002 */  xori       $at, $at, 2
/* 7EA18 8007DE18 44C1F800 */  ctc1       $at, $31
/* 7EA1C 8007DE1C 93240000 */  lbu        $a0, ($t9)
/* 7EA20 8007DE20 460081A4 */  cvt.w.s    $f6, $f16
/* 7EA24 8007DE24 26520001 */  addiu      $s2, $s2, 1
/* 7EA28 8007DE28 44C8F800 */  ctc1       $t0, $31
/* 7EA2C 8007DE2C 44093000 */  mfc1       $t1, $f6
/* 7EA30 8007DE30 460AB202 */  mul.s      $f8, $f22, $f10
/* 7EA34 8007DE34 AC690088 */  sw         $t1, 0x88($v1)
/* 7EA38 8007DE38 8E0A008C */  lw         $t2, 0x8c($s0)
/* 7EA3C 8007DE3C 324CFFFF */  andi       $t4, $s2, 0xffff
/* 7EA40 8007DE40 448A2000 */  mtc1       $t2, $f4
/* 7EA44 8007DE44 46080402 */  mul.s      $f16, $f0, $f8
/* 7EA48 8007DE48 01809025 */  or         $s2, $t4, $zero
/* 7EA4C 8007DE4C 00044040 */  sll        $t0, $a0, 1
/* 7EA50 8007DE50 44925000 */  mtc1       $s2, $f10
/* 7EA54 8007DE54 468024A0 */  cvt.s.w    $f18, $f4
/* 7EA58 8007DE58 250902D2 */  addiu      $t1, $t0, 0x2d2
/* 7EA5C 8007DE5C A4690084 */  sh         $t1, 0x84($v1)
/* 7EA60 8007DE60 46109180 */  add.s      $f6, $f18, $f16
/* 7EA64 8007DE64 444FF800 */  cfc1       $t7, $31
/* 7EA68 8007DE68 00000000 */  nop
/* 7EA6C 8007DE6C 35E10003 */  ori        $at, $t7, 3
/* 7EA70 8007DE70 38210002 */  xori       $at, $at, 2
/* 7EA74 8007DE74 44C1F800 */  ctc1       $at, $31
/* 7EA78 8007DE78 2A210007 */  slti       $at, $s1, 7
/* 7EA7C 8007DE7C 46003124 */  cvt.w.s    $f4, $f6
/* 7EA80 8007DE80 26310001 */  addiu      $s1, $s1, 1
/* 7EA84 8007DE84 44182000 */  mfc1       $t8, $f4
/* 7EA88 8007DE88 44CFF800 */  ctc1       $t7, $31
/* 7EA8C 8007DE8C 10200005 */  beqz       $at, .L8007DEA4
/* 7EA90 8007DE90 AC78008C */   sw        $t8, 0x8c($v1)
/* 7EA94 8007DE94 14800003 */  bnez       $a0, .L8007DEA4
/* 7EA98 8007DE98 00000000 */   nop
/* 7EA9C 8007DE9C 12600003 */  beqz       $s3, .L8007DEAC
/* 7EAA0 8007DEA0 00000000 */   nop
.L8007DEA4:
/* 7EAA4 8007DEA4 10000005 */  b          .L8007DEBC
/* 7EAA8 8007DEA8 24130001 */   addiu     $s3, $zero, 1
.L8007DEAC:
/* 7EAAC 8007DEAC 8C6A018C */  lw         $t2, 0x18c($v1)
/* 7EAB0 8007DEB0 00000000 */  nop
/* 7EAB4 8007DEB4 254B0008 */  addiu      $t3, $t2, 8
/* 7EAB8 8007DEB8 AC6B018C */  sw         $t3, 0x18c($v1)
.L8007DEBC:
/* 7EABC 8007DEBC 322DFFFF */  andi       $t5, $s1, 0xffff
/* 7EAC0 8007DEC0 01A08825 */  or         $s1, $t5, $zero
/* 7EAC4 8007DEC4 05810005 */  bgez       $t4, .L8007DEDC
/* 7EAC8 8007DEC8 46805220 */   cvt.s.w   $f8, $f10
/* 7EACC 8007DECC 3C014F80 */  lui        $at, 0x4f80
/* 7EAD0 8007DED0 44819000 */  mtc1       $at, $f18
/* 7EAD4 8007DED4 00000000 */  nop
/* 7EAD8 8007DED8 46124200 */  add.s      $f8, $f8, $f18
.L8007DEDC:
/* 7EADC 8007DEDC C610014C */  lwc1       $f16, 0x14c($s0)
/* 7EAE0 8007DEE0 00000000 */  nop
/* 7EAE4 8007DEE4 4610403C */  c.lt.s     $f8, $f16
/* 7EAE8 8007DEE8 00000000 */  nop
/* 7EAEC 8007DEEC 4501FF99 */  bc1t       .L8007DD54
/* 7EAF0 8007DEF0 00000000 */   nop
.L8007DEF4:
/* 7EAF4 8007DEF4 8FBF005C */  lw         $ra, 0x5c($sp)
/* 7EAF8 8007DEF8 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7EAFC 8007DEFC C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7EB00 8007DF00 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7EB04 8007DF04 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7EB08 8007DF08 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7EB0C 8007DF0C C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7EB10 8007DF10 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7EB14 8007DF14 C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7EB18 8007DF18 8FB00038 */  lw         $s0, 0x38($sp)
/* 7EB1C 8007DF1C 8FB1003C */  lw         $s1, 0x3c($sp)
/* 7EB20 8007DF20 8FB20040 */  lw         $s2, 0x40($sp)
/* 7EB24 8007DF24 8FB30044 */  lw         $s3, 0x44($sp)
/* 7EB28 8007DF28 8FB40048 */  lw         $s4, 0x48($sp)
/* 7EB2C 8007DF2C 8FB5004C */  lw         $s5, 0x4c($sp)
/* 7EB30 8007DF30 8FB60050 */  lw         $s6, 0x50($sp)
/* 7EB34 8007DF34 8FB70054 */  lw         $s7, 0x54($sp)
/* 7EB38 8007DF38 8FBE0058 */  lw         $fp, 0x58($sp)
/* 7EB3C 8007DF3C 03E00008 */  jr         $ra
/* 7EB40 8007DF40 27BD0060 */   addiu     $sp, $sp, 0x60
