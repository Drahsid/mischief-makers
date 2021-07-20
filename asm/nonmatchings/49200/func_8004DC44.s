glabel func_8004DC44
/* 4E844 8004DC44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4E848 8004DC48 AFA40028 */  sw         $a0, 0x28($sp)
/* 4E84C 8004DC4C 97AE002A */  lhu        $t6, 0x2a($sp)
/* 4E850 8004DC50 24080198 */  addiu      $t0, $zero, 0x198
/* 4E854 8004DC54 01C80019 */  multu      $t6, $t0
/* 4E858 8004DC58 3C06800F */  lui        $a2, %hi(gActors)
/* 4E85C 8004DC5C 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 4E860 8004DC60 AFB00018 */  sw         $s0, 0x18($sp)
/* 4E864 8004DC64 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4E868 8004DC68 24010001 */  addiu      $at, $zero, 1
/* 4E86C 8004DC6C 240400CB */  addiu      $a0, $zero, 0xcb
/* 4E870 8004DC70 00007812 */  mflo       $t7
/* 4E874 8004DC74 00CF8021 */  addu       $s0, $a2, $t7
/* 4E878 8004DC78 9218012E */  lbu        $t8, 0x12e($s0)
/* 4E87C 8004DC7C 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4E880 8004DC80 960500D6 */  lhu        $a1, 0xd6($s0)
/* 4E884 8004DC84 37190041 */  ori        $t9, $t8, 0x41
/* 4E888 8004DC88 10400007 */  beqz       $v0, .L8004DCA8
/* 4E88C 8004DC8C A219012E */   sb        $t9, 0x12e($s0)
/* 4E890 8004DC90 1041002E */  beq        $v0, $at, .L8004DD4C
/* 4E894 8004DC94 24010002 */   addiu     $at, $zero, 2
/* 4E898 8004DC98 1041008C */  beq        $v0, $at, .L8004DECC
/* 4E89C 8004DC9C 00000000 */   nop
/* 4E8A0 8004DCA0 10000149 */  b          .L8004E1C8
/* 4E8A4 8004DCA4 8FBF001C */   lw        $ra, 0x1c($sp)
.L8004DCA8:
/* 4E8A8 8004DCA8 0C000CD3 */  jal        func_8000334C
/* 4E8AC 8004DCAC A7A50026 */   sh        $a1, 0x26($sp)
/* 4E8B0 8004DCB0 44802000 */  mtc1       $zero, $f4
/* 4E8B4 8004DCB4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4E8B8 8004DCB8 0C01803C */  jal        func_800600F0
/* 4E8BC 8004DCBC E604014C */   swc1      $f4, 0x14c($s0)
/* 4E8C0 8004DCC0 97A50026 */  lhu        $a1, 0x26($sp)
/* 4E8C4 8004DCC4 1040001F */  beqz       $v0, .L8004DD44
/* 4E8C8 8004DCC8 24080198 */   addiu     $t0, $zero, 0x198
/* 4E8CC 8004DCCC 00024880 */  sll        $t1, $v0, 2
/* 4E8D0 8004DCD0 01224823 */  subu       $t1, $t1, $v0
/* 4E8D4 8004DCD4 00094880 */  sll        $t1, $t1, 2
/* 4E8D8 8004DCD8 01224821 */  addu       $t1, $t1, $v0
/* 4E8DC 8004DCDC 97AB002A */  lhu        $t3, 0x2a($sp)
/* 4E8E0 8004DCE0 00094880 */  sll        $t1, $t1, 2
/* 4E8E4 8004DCE4 01224823 */  subu       $t1, $t1, $v0
/* 4E8E8 8004DCE8 3C0A800F */  lui        $t2, %hi(gActors)
/* 4E8EC 8004DCEC 448B3000 */  mtc1       $t3, $f6
/* 4E8F0 8004DCF0 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 4E8F4 8004DCF4 000948C0 */  sll        $t1, $t1, 3
/* 4E8F8 8004DCF8 012A1821 */  addu       $v1, $t1, $t2
/* 4E8FC 8004DCFC A46500D6 */  sh         $a1, 0xd6($v1)
/* 4E900 8004DD00 05610005 */  bgez       $t3, .L8004DD18
/* 4E904 8004DD04 46803220 */   cvt.s.w   $f8, $f6
/* 4E908 8004DD08 3C014F80 */  lui        $at, 0x4f80
/* 4E90C 8004DD0C 44815000 */  mtc1       $at, $f10
/* 4E910 8004DD10 00000000 */  nop
/* 4E914 8004DD14 460A4200 */  add.s      $f8, $f8, $f10
.L8004DD18:
/* 4E918 8004DD18 44828000 */  mtc1       $v0, $f16
/* 4E91C 8004DD1C E468014C */  swc1       $f8, 0x14c($v1)
/* 4E920 8004DD20 04410005 */  bgez       $v0, .L8004DD38
/* 4E924 8004DD24 468084A0 */   cvt.s.w   $f18, $f16
/* 4E928 8004DD28 3C014F80 */  lui        $at, 0x4f80
/* 4E92C 8004DD2C 44812000 */  mtc1       $at, $f4
/* 4E930 8004DD30 00000000 */  nop
/* 4E934 8004DD34 46049480 */  add.s      $f18, $f18, $f4
.L8004DD38:
/* 4E938 8004DD38 240C0002 */  addiu      $t4, $zero, 2
/* 4E93C 8004DD3C E612014C */  swc1       $f18, 0x14c($s0)
/* 4E940 8004DD40 A20C00D0 */  sb         $t4, 0xd0($s0)
.L8004DD44:
/* 4E944 8004DD44 3C06800F */  lui        $a2, %hi(gActors)
/* 4E948 8004DD48 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
.L8004DD4C:
/* 4E94C 8004DD4C 00A80019 */  multu      $a1, $t0
/* 4E950 8004DD50 240D0087 */  addiu      $t5, $zero, 0x87
/* 4E954 8004DD54 A2000140 */  sb         $zero, 0x140($s0)
/* 4E958 8004DD58 AE0D0170 */  sw         $t5, 0x170($s0)
/* 4E95C 8004DD5C 860F008C */  lh         $t7, 0x8c($s0)
/* 4E960 8004DD60 861800AE */  lh         $t8, 0xae($s0)
/* 4E964 8004DD64 24070001 */  addiu      $a3, $zero, 1
/* 4E968 8004DD68 01F8C821 */  addu       $t9, $t7, $t8
/* 4E96C 8004DD6C 240F0004 */  addiu      $t7, $zero, 4
/* 4E970 8004DD70 24180086 */  addiu      $t8, $zero, 0x86
/* 4E974 8004DD74 00007012 */  mflo       $t6
/* 4E978 8004DD78 00CE1821 */  addu       $v1, $a2, $t6
/* 4E97C 8004DD7C 846900A8 */  lh         $t1, 0xa8($v1)
/* 4E980 8004DD80 846A00A6 */  lh         $t2, 0xa6($v1)
/* 4E984 8004DD84 846D008C */  lh         $t5, 0x8c($v1)
/* 4E988 8004DD88 012A5821 */  addu       $t3, $t1, $t2
/* 4E98C 8004DD8C 05610003 */  bgez       $t3, .L8004DD9C
/* 4E990 8004DD90 000B6043 */   sra       $t4, $t3, 1
/* 4E994 8004DD94 25610001 */  addiu      $at, $t3, 1
/* 4E998 8004DD98 00016043 */  sra        $t4, $at, 1
.L8004DD9C:
/* 4E99C 8004DD9C 018D7021 */  addu       $t6, $t4, $t5
/* 4E9A0 8004DDA0 032E082A */  slt        $at, $t9, $t6
/* 4E9A4 8004DDA4 14200003 */  bnez       $at, .L8004DDB4
/* 4E9A8 8004DDA8 00000000 */   nop
/* 4E9AC 8004DDAC A20F0140 */  sb         $t7, 0x140($s0)
/* 4E9B0 8004DDB0 AE180170 */  sw         $t8, 0x170($s0)
.L8004DDB4:
/* 4E9B4 8004DDB4 8E0900EC */  lw         $t1, 0xec($s0)
/* 4E9B8 8004DDB8 8E0A00F8 */  lw         $t2, 0xf8($s0)
/* 4E9BC 8004DDBC 8E0C0080 */  lw         $t4, 0x80($s0)
/* 4E9C0 8004DDC0 3C010081 */  lui        $at, 0x81
/* 4E9C4 8004DDC4 012A5821 */  addu       $t3, $t1, $t2
/* 4E9C8 8004DDC8 01816824 */  and        $t5, $t4, $at
/* 4E9CC 8004DDCC 15A00006 */  bnez       $t5, .L8004DDE8
/* 4E9D0 8004DDD0 AE0B00EC */   sw        $t3, 0xec($s0)
/* 4E9D4 8004DDD4 8E1900F0 */  lw         $t9, 0xf0($s0)
/* 4E9D8 8004DDD8 8E0E00FC */  lw         $t6, 0xfc($s0)
/* 4E9DC 8004DDDC 00000000 */  nop
/* 4E9E0 8004DDE0 032E7821 */  addu       $t7, $t9, $t6
/* 4E9E4 8004DDE4 AE0F00F0 */  sw         $t7, 0xf0($s0)
.L8004DDE8:
/* 4E9E8 8004DDE8 921800D0 */  lbu        $t8, 0xd0($s0)
/* 4E9EC 8004DDEC 24010001 */  addiu      $at, $zero, 1
/* 4E9F0 8004DDF0 17010035 */  bne        $t8, $at, .L8004DEC8
/* 4E9F4 8004DDF4 240A000A */   addiu     $t2, $zero, 0xa
/* 4E9F8 8004DDF8 4449F800 */  cfc1       $t1, $31
/* 4E9FC 8004DDFC 44C7F800 */  ctc1       $a3, $31
/* 4EA00 8004DE00 C606014C */  lwc1       $f6, 0x14c($s0)
/* 4EA04 8004DE04 3C014F00 */  lui        $at, 0x4f00
/* 4EA08 8004DE08 460032A4 */  cvt.w.s    $f10, $f6
/* 4EA0C 8004DE0C 4447F800 */  cfc1       $a3, $31
/* 4EA10 8004DE10 00000000 */  nop
/* 4EA14 8004DE14 30E70078 */  andi       $a3, $a3, 0x78
/* 4EA18 8004DE18 10E00012 */  beqz       $a3, .L8004DE64
/* 4EA1C 8004DE1C 00000000 */   nop
/* 4EA20 8004DE20 44815000 */  mtc1       $at, $f10
/* 4EA24 8004DE24 24070001 */  addiu      $a3, $zero, 1
/* 4EA28 8004DE28 460A3281 */  sub.s      $f10, $f6, $f10
/* 4EA2C 8004DE2C 3C018000 */  lui        $at, 0x8000
/* 4EA30 8004DE30 44C7F800 */  ctc1       $a3, $31
/* 4EA34 8004DE34 00000000 */  nop
/* 4EA38 8004DE38 460052A4 */  cvt.w.s    $f10, $f10
/* 4EA3C 8004DE3C 4447F800 */  cfc1       $a3, $31
/* 4EA40 8004DE40 00000000 */  nop
/* 4EA44 8004DE44 30E70078 */  andi       $a3, $a3, 0x78
/* 4EA48 8004DE48 14E00004 */  bnez       $a3, .L8004DE5C
/* 4EA4C 8004DE4C 00000000 */   nop
/* 4EA50 8004DE50 44075000 */  mfc1       $a3, $f10
/* 4EA54 8004DE54 10000007 */  b          .L8004DE74
/* 4EA58 8004DE58 00E13825 */   or        $a3, $a3, $at
.L8004DE5C:
/* 4EA5C 8004DE5C 10000005 */  b          .L8004DE74
/* 4EA60 8004DE60 2407FFFF */   addiu     $a3, $zero, -1
.L8004DE64:
/* 4EA64 8004DE64 44075000 */  mfc1       $a3, $f10
/* 4EA68 8004DE68 00000000 */  nop
/* 4EA6C 8004DE6C 04E0FFFB */  bltz       $a3, .L8004DE5C
/* 4EA70 8004DE70 00000000 */   nop
.L8004DE74:
/* 4EA74 8004DE74 30EAFFFF */  andi       $t2, $a3, 0xffff
/* 4EA78 8004DE78 01480019 */  multu      $t2, $t0
/* 4EA7C 8004DE7C 8C6C0088 */  lw         $t4, 0x88($v1)
/* 4EA80 8004DE80 8E0D0088 */  lw         $t5, 0x88($s0)
/* 4EA84 8004DE84 3C01800F */  lui        $at, 0x800f
/* 4EA88 8004DE88 018DC823 */  subu       $t9, $t4, $t5
/* 4EA8C 8004DE8C 44C9F800 */  ctc1       $t1, $31
/* 4EA90 8004DE90 24090002 */  addiu      $t1, $zero, 2
/* 4EA94 8004DE94 00005812 */  mflo       $t3
/* 4EA98 8004DE98 00CB1021 */  addu       $v0, $a2, $t3
/* 4EA9C 8004DE9C AC5900F8 */  sw         $t9, 0xf8($v0)
/* 4EAA0 8004DEA0 8E0F008C */  lw         $t7, 0x8c($s0)
/* 4EAA4 8004DEA4 8C6E008C */  lw         $t6, 0x8c($v1)
/* 4EAA8 8004DEA8 00000000 */  nop
/* 4EAAC 8004DEAC 01CFC023 */  subu       $t8, $t6, $t7
/* 4EAB0 8004DEB0 AC5800FC */  sw         $t8, 0xfc($v0)
/* 4EAB4 8004DEB4 C428BDA8 */  lwc1       $f8, -0x4258($at)
/* 4EAB8 8004DEB8 00000000 */  nop
/* 4EABC 8004DEBC E44800B4 */  swc1       $f8, 0xb4($v0)
/* 4EAC0 8004DEC0 A20900D0 */  sb         $t1, 0xd0($s0)
/* 4EAC4 8004DEC4 240A000A */  addiu      $t2, $zero, 0xa
.L8004DEC8:
/* 4EAC8 8004DEC8 AE0A0150 */  sw         $t2, 0x150($s0)
.L8004DECC:
/* 4EACC 8004DECC 444BF800 */  cfc1       $t3, $31
/* 4EAD0 8004DED0 24070001 */  addiu      $a3, $zero, 1
/* 4EAD4 8004DED4 44C7F800 */  ctc1       $a3, $31
/* 4EAD8 8004DED8 C610014C */  lwc1       $f16, 0x14c($s0)
/* 4EADC 8004DEDC 3C014F00 */  lui        $at, 0x4f00
/* 4EAE0 8004DEE0 46008124 */  cvt.w.s    $f4, $f16
/* 4EAE4 8004DEE4 3C198013 */  lui        $t9, 0x8013
/* 4EAE8 8004DEE8 4447F800 */  cfc1       $a3, $31
/* 4EAEC 8004DEEC 3C0E800C */  lui        $t6, 0x800c
/* 4EAF0 8004DEF0 30E70078 */  andi       $a3, $a3, 0x78
/* 4EAF4 8004DEF4 10E00012 */  beqz       $a3, .L8004DF40
/* 4EAF8 8004DEF8 24050001 */   addiu     $a1, $zero, 1
/* 4EAFC 8004DEFC 44812000 */  mtc1       $at, $f4
/* 4EB00 8004DF00 24070001 */  addiu      $a3, $zero, 1
/* 4EB04 8004DF04 46048101 */  sub.s      $f4, $f16, $f4
/* 4EB08 8004DF08 3C018000 */  lui        $at, 0x8000
/* 4EB0C 8004DF0C 44C7F800 */  ctc1       $a3, $31
/* 4EB10 8004DF10 00000000 */  nop
/* 4EB14 8004DF14 46002124 */  cvt.w.s    $f4, $f4
/* 4EB18 8004DF18 4447F800 */  cfc1       $a3, $31
/* 4EB1C 8004DF1C 00000000 */  nop
/* 4EB20 8004DF20 30E70078 */  andi       $a3, $a3, 0x78
/* 4EB24 8004DF24 14E00004 */  bnez       $a3, .L8004DF38
/* 4EB28 8004DF28 00000000 */   nop
/* 4EB2C 8004DF2C 44072000 */  mfc1       $a3, $f4
/* 4EB30 8004DF30 10000007 */  b          .L8004DF50
/* 4EB34 8004DF34 00E13825 */   or        $a3, $a3, $at
.L8004DF38:
/* 4EB38 8004DF38 10000005 */  b          .L8004DF50
/* 4EB3C 8004DF3C 2407FFFF */   addiu     $a3, $zero, -1
.L8004DF40:
/* 4EB40 8004DF40 44072000 */  mfc1       $a3, $f4
/* 4EB44 8004DF44 00000000 */  nop
/* 4EB48 8004DF48 04E0FFFB */  bltz       $a3, .L8004DF38
/* 4EB4C 8004DF4C 00000000 */   nop
.L8004DF50:
/* 4EB50 8004DF50 44CBF800 */  ctc1       $t3, $31
/* 4EB54 8004DF54 30ECFFFF */  andi       $t4, $a3, 0xffff
/* 4EB58 8004DF58 1180002B */  beqz       $t4, .L8004E008
/* 4EB5C 8004DF5C 01803825 */   or        $a3, $t4, $zero
/* 4EB60 8004DF60 01880019 */  multu      $t4, $t0
/* 4EB64 8004DF64 3C013FE0 */  lui        $at, 0x3fe0
/* 4EB68 8004DF68 44815800 */  mtc1       $at, $f11
/* 4EB6C 8004DF6C 44805000 */  mtc1       $zero, $f10
/* 4EB70 8004DF70 3C013F00 */  lui        $at, 0x3f00
/* 4EB74 8004DF74 00006812 */  mflo       $t5
/* 4EB78 8004DF78 00CD1021 */  addu       $v0, $a2, $t5
/* 4EB7C 8004DF7C C4520110 */  lwc1       $f18, 0x110($v0)
/* 4EB80 8004DF80 00000000 */  nop
/* 4EB84 8004DF84 460091A1 */  cvt.d.s    $f6, $f18
/* 4EB88 8004DF88 462A303C */  c.lt.d     $f6, $f10
/* 4EB8C 8004DF8C 00000000 */  nop
/* 4EB90 8004DF90 45000004 */  bc1f       .L8004DFA4
/* 4EB94 8004DF94 00000000 */   nop
/* 4EB98 8004DF98 44814000 */  mtc1       $at, $f8
/* 4EB9C 8004DF9C 00000000 */  nop
/* 4EBA0 8004DFA0 E4480110 */  swc1       $f8, 0x110($v0)
.L8004DFA4:
/* 4EBA4 8004DFA4 973970CE */  lhu        $t9, 0x70ce($t9)
/* 4EBA8 8004DFA8 95CEE514 */  lhu        $t6, -0x1aec($t6)
/* 4EBAC 8004DFAC 3C014008 */  lui        $at, 0x4008
/* 4EBB0 8004DFB0 032E7824 */  and        $t7, $t9, $t6
/* 4EBB4 8004DFB4 11E00015 */  beqz       $t7, .L8004E00C
/* 4EBB8 8004DFB8 97A4002A */   lhu       $a0, 0x2a($sp)
/* 4EBBC 8004DFBC C4500110 */  lwc1       $f16, 0x110($v0)
/* 4EBC0 8004DFC0 44812800 */  mtc1       $at, $f5
/* 4EBC4 8004DFC4 44802000 */  mtc1       $zero, $f4
/* 4EBC8 8004DFC8 46008021 */  cvt.d.s    $f0, $f16
/* 4EBCC 8004DFCC 46240482 */  mul.d      $f18, $f0, $f4
/* 4EBD0 8004DFD0 3C013FF8 */  lui        $at, 0x3ff8
/* 4EBD4 8004DFD4 44815800 */  mtc1       $at, $f11
/* 4EBD8 8004DFD8 44805000 */  mtc1       $zero, $f10
/* 4EBDC 8004DFDC 3C01800F */  lui        $at, %hi(D_800EBDB0)
/* 4EBE0 8004DFE0 462A003C */  c.lt.d     $f0, $f10
/* 4EBE4 8004DFE4 462091A0 */  cvt.s.d    $f6, $f18
/* 4EBE8 8004DFE8 45000007 */  bc1f       .L8004E008
/* 4EBEC 8004DFEC E44600B4 */   swc1      $f6, 0xb4($v0)
/* 4EBF0 8004DFF0 C429BDB0 */  lwc1       $f9, %lo(D_800EBDB0)($at)
/* 4EBF4 8004DFF4 C428BDB4 */  lwc1       $f8, -0x424c($at)
/* 4EBF8 8004DFF8 00000000 */  nop
/* 4EBFC 8004DFFC 46280400 */  add.d      $f16, $f0, $f8
/* 4EC00 8004E000 46208120 */  cvt.s.d    $f4, $f16
/* 4EC04 8004E004 E4440110 */  swc1       $f4, 0x110($v0)
.L8004E008:
/* 4EC08 8004E008 97A4002A */  lhu        $a0, 0x2a($sp)
.L8004E00C:
/* 4EC0C 8004E00C 0C017154 */  jal        func_8005C550
/* 4EC10 8004E010 A7A70024 */   sh        $a3, 0x24($sp)
/* 4EC14 8004E014 8E180080 */  lw         $t8, 0x80($s0)
/* 4EC18 8004E018 00002025 */  or         $a0, $zero, $zero
/* 4EC1C 8004E01C 37090080 */  ori        $t1, $t8, 0x80
/* 4EC20 8004E020 0C012325 */  jal        func_80048C94
/* 4EC24 8004E024 AE090080 */   sw        $t1, 0x80($s0)
/* 4EC28 8004E028 44829000 */  mtc1       $v0, $f18
/* 4EC2C 8004E02C 3C013FF8 */  lui        $at, 0x3ff8
/* 4EC30 8004E030 468091A1 */  cvt.d.w    $f6, $f18
/* 4EC34 8004E034 44815800 */  mtc1       $at, $f11
/* 4EC38 8004E038 44805000 */  mtc1       $zero, $f10
/* 4EC3C 8004E03C 8E0400EC */  lw         $a0, 0xec($s0)
/* 4EC40 8004E040 462A3202 */  mul.d      $f8, $f6, $f10
/* 4EC44 8004E044 00002825 */  or         $a1, $zero, $zero
/* 4EC48 8004E048 444AF800 */  cfc1       $t2, $31
/* 4EC4C 8004E04C 00000000 */  nop
/* 4EC50 8004E050 35410003 */  ori        $at, $t2, 3
/* 4EC54 8004E054 38210002 */  xori       $at, $at, 2
/* 4EC58 8004E058 44C1F800 */  ctc1       $at, $31
/* 4EC5C 8004E05C 00000000 */  nop
/* 4EC60 8004E060 46204424 */  cvt.w.d    $f16, $f8
/* 4EC64 8004E064 44068000 */  mfc1       $a2, $f16
/* 4EC68 8004E068 44CAF800 */  ctc1       $t2, $31
/* 4EC6C 8004E06C 0C00A607 */  jal        func_8002981C
/* 4EC70 8004E070 00000000 */   nop
/* 4EC74 8004E074 AE0200EC */  sw         $v0, 0xec($s0)
/* 4EC78 8004E078 0C012325 */  jal        func_80048C94
/* 4EC7C 8004E07C 00002025 */   or        $a0, $zero, $zero
/* 4EC80 8004E080 44822000 */  mtc1       $v0, $f4
/* 4EC84 8004E084 3C013FF8 */  lui        $at, 0x3ff8
/* 4EC88 8004E088 468024A1 */  cvt.d.w    $f18, $f4
/* 4EC8C 8004E08C 44813800 */  mtc1       $at, $f7
/* 4EC90 8004E090 44803000 */  mtc1       $zero, $f6
/* 4EC94 8004E094 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 4EC98 8004E098 46269282 */  mul.d      $f10, $f18, $f6
/* 4EC9C 8004E09C 00002825 */  or         $a1, $zero, $zero
/* 4ECA0 8004E0A0 444BF800 */  cfc1       $t3, $31
/* 4ECA4 8004E0A4 00000000 */  nop
/* 4ECA8 8004E0A8 35610003 */  ori        $at, $t3, 3
/* 4ECAC 8004E0AC 38210002 */  xori       $at, $at, 2
/* 4ECB0 8004E0B0 44C1F800 */  ctc1       $at, $31
/* 4ECB4 8004E0B4 00000000 */  nop
/* 4ECB8 8004E0B8 46205224 */  cvt.w.d    $f8, $f10
/* 4ECBC 8004E0BC 44064000 */  mfc1       $a2, $f8
/* 4ECC0 8004E0C0 44CBF800 */  ctc1       $t3, $31
/* 4ECC4 8004E0C4 0C00A607 */  jal        func_8002981C
/* 4ECC8 8004E0C8 00000000 */   nop
/* 4ECCC 8004E0CC 8E0C0150 */  lw         $t4, 0x150($s0)
/* 4ECD0 8004E0D0 97A70024 */  lhu        $a3, 0x24($sp)
/* 4ECD4 8004E0D4 258DFFFF */  addiu      $t5, $t4, -1
/* 4ECD8 8004E0D8 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 4ECDC 8004E0DC 15A00039 */  bnez       $t5, .L8004E1C4
/* 4ECE0 8004E0E0 AE0D0150 */   sw        $t5, 0x150($s0)
/* 4ECE4 8004E0E4 10E0002E */  beqz       $a3, .L8004E1A0
/* 4ECE8 8004E0E8 00077080 */   sll       $t6, $a3, 2
/* 4ECEC 8004E0EC 01C77023 */  subu       $t6, $t6, $a3
/* 4ECF0 8004E0F0 000E7080 */  sll        $t6, $t6, 2
/* 4ECF4 8004E0F4 01C77021 */  addu       $t6, $t6, $a3
/* 4ECF8 8004E0F8 000E7080 */  sll        $t6, $t6, 2
/* 4ECFC 8004E0FC 01C77023 */  subu       $t6, $t6, $a3
/* 4ED00 8004E100 3C0F800F */  lui        $t7, %hi(gActors)
/* 4ED04 8004E104 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 4ED08 8004E108 000E70C0 */  sll        $t6, $t6, 3
/* 4ED0C 8004E10C 01CF1021 */  addu       $v0, $t6, $t7
/* 4ED10 8004E110 8C580098 */  lw         $t8, 0x98($v0)
/* 4ED14 8004E114 97AA002A */  lhu        $t2, 0x2a($sp)
/* 4ED18 8004E118 8C4B0088 */  lw         $t3, 0x88($v0)
/* 4ED1C 8004E11C 8C4C008C */  lw         $t4, 0x8c($v0)
/* 4ED20 8004E120 8C4D0090 */  lw         $t5, 0x90($v0)
/* 4ED24 8004E124 37090200 */  ori        $t1, $t8, 0x200
/* 4ED28 8004E128 AC490098 */  sw         $t1, 0x98($v0)
/* 4ED2C 8004E12C A44A00D6 */  sh         $t2, 0xd6($v0)
/* 4ED30 8004E130 AC4B0104 */  sw         $t3, 0x104($v0)
/* 4ED34 8004E134 AC4C0108 */  sw         $t4, 0x108($v0)
/* 4ED38 8004E138 AC4D010C */  sw         $t5, 0x10c($v0)
/* 4ED3C 8004E13C 92190140 */  lbu        $t9, 0x140($s0)
/* 4ED40 8004E140 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 4ED44 8004E144 17200004 */  bnez       $t9, .L8004E158
/* 4ED48 8004E148 246373E0 */   addiu     $v1, $v1, %lo(D_801373E0)
/* 4ED4C 8004E14C 240E0001 */  addiu      $t6, $zero, 1
/* 4ED50 8004E150 10000002 */  b          .L8004E15C
/* 4ED54 8004E154 A60E0142 */   sh        $t6, 0x142($s0)
.L8004E158:
/* 4ED58 8004E158 A6000142 */  sh         $zero, 0x142($s0)
.L8004E15C:
/* 4ED5C 8004E15C 8E0F0080 */  lw         $t7, 0x80($s0)
/* 4ED60 8004E160 3C010200 */  lui        $at, 0x200
/* 4ED64 8004E164 01E1C025 */  or         $t8, $t7, $at
/* 4ED68 8004E168 A60700D6 */  sh         $a3, 0xd6($s0)
/* 4ED6C 8004E16C AE180080 */  sw         $t8, 0x80($s0)
/* 4ED70 8004E170 A200012F */  sb         $zero, 0x12f($s0)
/* 4ED74 8004E174 8C490088 */  lw         $t1, 0x88($v0)
/* 4ED78 8004E178 8E0A0088 */  lw         $t2, 0x88($s0)
/* 4ED7C 8004E17C 8C4C008C */  lw         $t4, 0x8c($v0)
/* 4ED80 8004E180 8E0D008C */  lw         $t5, 0x8c($s0)
/* 4ED84 8004E184 240E0022 */  addiu      $t6, $zero, 0x22
/* 4ED88 8004E188 012A5823 */  subu       $t3, $t1, $t2
/* 4ED8C 8004E18C 018DC823 */  subu       $t9, $t4, $t5
/* 4ED90 8004E190 AC6B0000 */  sw         $t3, ($v1)
/* 4ED94 8004E194 AC790004 */  sw         $t9, 4($v1)
/* 4ED98 8004E198 1000000A */  b          .L8004E1C4
/* 4ED9C 8004E19C A60E00D0 */   sh        $t6, 0xd0($s0)
.L8004E1A0:
/* 4EDA0 8004E1A0 8E0F0080 */  lw         $t7, 0x80($s0)
/* 4EDA4 8004E1A4 3C010081 */  lui        $at, 0x81
/* 4EDA8 8004E1A8 01E1C024 */  and        $t8, $t7, $at
/* 4EDAC 8004E1AC 13000003 */  beqz       $t8, .L8004E1BC
/* 4EDB0 8004E1B0 24090003 */   addiu     $t1, $zero, 3
/* 4EDB4 8004E1B4 10000003 */  b          .L8004E1C4
/* 4EDB8 8004E1B8 A60900D0 */   sh        $t1, 0xd0($s0)
.L8004E1BC:
/* 4EDBC 8004E1BC 240A0016 */  addiu      $t2, $zero, 0x16
/* 4EDC0 8004E1C0 A60A00D0 */  sh         $t2, 0xd0($s0)
.L8004E1C4:
/* 4EDC4 8004E1C4 8FBF001C */  lw         $ra, 0x1c($sp)
.L8004E1C8:
/* 4EDC8 8004E1C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 4EDCC 8004E1CC 03E00008 */  jr         $ra
/* 4EDD0 8004E1D0 27BD0028 */   addiu     $sp, $sp, 0x28
