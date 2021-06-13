glabel func_8003DBD0
/* 3E7D0 8003DBD0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3E7D4 8003DBD4 000E7880 */  sll        $t7, $t6, 2
/* 3E7D8 8003DBD8 01EE7823 */  subu       $t7, $t7, $t6
/* 3E7DC 8003DBDC 000F7880 */  sll        $t7, $t7, 2
/* 3E7E0 8003DBE0 01EE7821 */  addu       $t7, $t7, $t6
/* 3E7E4 8003DBE4 000F7880 */  sll        $t7, $t7, 2
/* 3E7E8 8003DBE8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 3E7EC 8003DBEC 01EE7823 */  subu       $t7, $t7, $t6
/* 3E7F0 8003DBF0 3C18800F */  lui        $t8, %hi(gActors)
/* 3E7F4 8003DBF4 AFB00038 */  sw         $s0, 0x38($sp)
/* 3E7F8 8003DBF8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3E7FC 8003DBFC 000F78C0 */  sll        $t7, $t7, 3
/* 3E800 8003DC00 01F88021 */  addu       $s0, $t7, $t8
/* 3E804 8003DC04 960200D0 */  lhu        $v0, 0xd0($s0)
/* 3E808 8003DC08 AFA40040 */  sw         $a0, 0x40($sp)
/* 3E80C 8003DC0C 2C410005 */  sltiu      $at, $v0, 5
/* 3E810 8003DC10 01C02025 */  or         $a0, $t6, $zero
/* 3E814 8003DC14 102000CF */  beqz       $at, .L8003DF54
/* 3E818 8003DC18 AFBF003C */   sw        $ra, 0x3c($sp)
/* 3E81C 8003DC1C 0002C880 */  sll        $t9, $v0, 2
/* 3E820 8003DC20 3C01800F */  lui        $at, %hi(D_800EBBC8)
/* 3E824 8003DC24 00390821 */  addu       $at, $at, $t9
/* 3E828 8003DC28 8C39BBC8 */  lw         $t9, %lo(D_800EBBC8)($at)
/* 3E82C 8003DC2C 00000000 */  nop
/* 3E830 8003DC30 03200008 */  jr         $t9
/* 3E834 8003DC34 00000000 */   nop
/* 3E838 8003DC38 0C00F5E5 */  jal        func_8003D794
/* 3E83C 8003DC3C 00000000 */   nop
/* 3E840 8003DC40 C6040110 */  lwc1       $f4, 0x110($s0)
/* 3E844 8003DC44 44803000 */  mtc1       $zero, $f6
/* 3E848 8003DC48 00000000 */  nop
/* 3E84C 8003DC4C 4606203C */  c.lt.s     $f4, $f6
/* 3E850 8003DC50 00000000 */  nop
/* 3E854 8003DC54 450000C0 */  bc1f       .L8003DF58
/* 3E858 8003DC58 3C013F80 */   lui       $at, 0x3f80
/* 3E85C 8003DC5C 8E080188 */  lw         $t0, 0x188($s0)
/* 3E860 8003DC60 3C0142F0 */  lui        $at, 0x42f0
/* 3E864 8003DC64 31098000 */  andi       $t1, $t0, 0x8000
/* 3E868 8003DC68 11200004 */  beqz       $t1, .L8003DC7C
/* 3E86C 8003DC6C 240D0080 */   addiu     $t5, $zero, 0x80
/* 3E870 8003DC70 240A0004 */  addiu      $t2, $zero, 4
/* 3E874 8003DC74 100000B7 */  b          .L8003DF54
/* 3E878 8003DC78 A60A00D0 */   sh        $t2, 0xd0($s0)
.L8003DC7C:
/* 3E87C 8003DC7C 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 3E880 8003DC80 44814000 */  mtc1       $at, $f8
/* 3E884 8003DC84 240E00B0 */  addiu      $t6, $zero, 0xb0
/* 3E888 8003DC88 256C0001 */  addiu      $t4, $t3, 1
/* 3E88C 8003DC8C A60C00D0 */  sh         $t4, 0xd0($s0)
/* 3E890 8003DC90 AE000154 */  sw         $zero, 0x154($s0)
/* 3E894 8003DC94 AE0D016C */  sw         $t5, 0x16c($s0)
/* 3E898 8003DC98 AE0E0170 */  sw         $t6, 0x170($s0)
/* 3E89C 8003DC9C 24040137 */  addiu      $a0, $zero, 0x137
/* 3E8A0 8003DCA0 0C000CD3 */  jal        func_8000334C
/* 3E8A4 8003DCA4 E6080110 */   swc1      $f8, 0x110($s0)
/* 3E8A8 8003DCA8 100000AB */  b          .L8003DF58
/* 3E8AC 8003DCAC 3C013F80 */   lui       $at, 0x3f80
/* 3E8B0 8003DCB0 C60A0110 */  lwc1       $f10, 0x110($s0)
/* 3E8B4 8003DCB4 44808000 */  mtc1       $zero, $f16
/* 3E8B8 8003DCB8 244F0001 */  addiu      $t7, $v0, 1
/* 3E8BC 8003DCBC 4610503C */  c.lt.s     $f10, $f16
/* 3E8C0 8003DCC0 3C014120 */  lui        $at, 0x4120
/* 3E8C4 8003DCC4 45000005 */  bc1f       .L8003DCDC
/* 3E8C8 8003DCC8 3C050020 */   lui       $a1, 0x20
/* 3E8CC 8003DCCC 44819000 */  mtc1       $at, $f18
/* 3E8D0 8003DCD0 A60F00D0 */  sh         $t7, 0xd0($s0)
/* 3E8D4 8003DCD4 1000009F */  b          .L8003DF54
/* 3E8D8 8003DCD8 E6120110 */   swc1      $f18, 0x110($s0)
.L8003DCDC:
/* 3E8DC 8003DCDC 8E040154 */  lw         $a0, 0x154($s0)
/* 3E8E0 8003DCE0 0C00A607 */  jal        func_8002981C
/* 3E8E4 8003DCE4 34068000 */   ori       $a2, $zero, 0x8000
/* 3E8E8 8003DCE8 3C013F80 */  lui        $at, 0x3f80
/* 3E8EC 8003DCEC 44812000 */  mtc1       $at, $f4
/* 3E8F0 8003DCF0 3C19800E */  lui        $t9, %hi(D_800D9AF4)
/* 3E8F4 8003DCF4 27399AF4 */  addiu      $t9, $t9, %lo(D_800D9AF4)
/* 3E8F8 8003DCF8 3C04800D */  lui        $a0, %hi(D_800D2750)
/* 3E8FC 8003DCFC 3C180080 */  lui        $t8, 0x80
/* 3E900 8003DD00 AE020154 */  sw         $v0, 0x154($s0)
/* 3E904 8003DD04 AFB80010 */  sw         $t8, 0x10($sp)
/* 3E908 8003DD08 24842750 */  addiu      $a0, $a0, %lo(D_800D2750)
/* 3E90C 8003DD0C AFB90014 */  sw         $t9, 0x14($sp)
/* 3E910 8003DD10 24050A00 */  addiu      $a1, $zero, 0xa00
/* 3E914 8003DD14 00003025 */  or         $a2, $zero, $zero
/* 3E918 8003DD18 00403825 */  or         $a3, $v0, $zero
/* 3E91C 8003DD1C AFA00018 */  sw         $zero, 0x18($sp)
/* 3E920 8003DD20 AFA0001C */  sw         $zero, 0x1c($sp)
/* 3E924 8003DD24 AFA00020 */  sw         $zero, 0x20($sp)
/* 3E928 8003DD28 AFA00024 */  sw         $zero, 0x24($sp)
/* 3E92C 8003DD2C AFA00028 */  sw         $zero, 0x28($sp)
/* 3E930 8003DD30 0C01FA85 */  jal        func_8007EA14
/* 3E934 8003DD34 E7A4002C */   swc1      $f4, 0x2c($sp)
/* 3E938 8003DD38 8E04016C */  lw         $a0, 0x16c($s0)
/* 3E93C 8003DD3C 00002825 */  or         $a1, $zero, $zero
/* 3E940 8003DD40 0C00A607 */  jal        func_8002981C
/* 3E944 8003DD44 24060004 */   addiu     $a2, $zero, 4
/* 3E948 8003DD48 8E040170 */  lw         $a0, 0x170($s0)
/* 3E94C 8003DD4C AE02016C */  sw         $v0, 0x16c($s0)
/* 3E950 8003DD50 24050054 */  addiu      $a1, $zero, 0x54
/* 3E954 8003DD54 0C00A607 */  jal        func_8002981C
/* 3E958 8003DD58 24060002 */   addiu     $a2, $zero, 2
/* 3E95C 8003DD5C 8E03016C */  lw         $v1, 0x16c($s0)
/* 3E960 8003DD60 8E0E0154 */  lw         $t6, 0x154($s0)
/* 3E964 8003DD64 00023823 */  negu       $a3, $v0
/* 3E968 8003DD68 3C01FFF7 */  lui        $at, 0xfff7
/* 3E96C 8003DD6C 24650001 */  addiu      $a1, $v1, 1
/* 3E970 8003DD70 00033023 */  negu       $a2, $v1
/* 3E974 8003DD74 00065400 */  sll        $t2, $a2, 0x10
/* 3E978 8003DD78 00054400 */  sll        $t0, $a1, 0x10
/* 3E97C 8003DD7C 00076400 */  sll        $t4, $a3, 0x10
/* 3E980 8003DD80 3C180080 */  lui        $t8, 0x80
/* 3E984 8003DD84 2419007F */  addiu      $t9, $zero, 0x7f
/* 3E988 8003DD88 01C17821 */  addu       $t7, $t6, $at
/* 3E98C 8003DD8C AE020170 */  sw         $v0, 0x170($s0)
/* 3E990 8003DD90 AFAF0018 */  sw         $t7, 0x18($sp)
/* 3E994 8003DD94 AFB90020 */  sw         $t9, 0x20($sp)
/* 3E998 8003DD98 AFB8001C */  sw         $t8, 0x1c($sp)
/* 3E99C 8003DD9C 000C3C03 */  sra        $a3, $t4, 0x10
/* 3E9A0 8003DDA0 00082C03 */  sra        $a1, $t0, 0x10
/* 3E9A4 8003DDA4 000A3403 */  sra        $a2, $t2, 0x10
/* 3E9A8 8003DDA8 24040800 */  addiu      $a0, $zero, 0x800
/* 3E9AC 8003DDAC AFA20010 */  sw         $v0, 0x10($sp)
/* 3E9B0 8003DDB0 AFA00014 */  sw         $zero, 0x14($sp)
/* 3E9B4 8003DDB4 AFA00024 */  sw         $zero, 0x24($sp)
/* 3E9B8 8003DDB8 0C00F5A3 */  jal        func_8003D68C
/* 3E9BC 8003DDBC AFA00028 */   sw        $zero, 0x28($sp)
/* 3E9C0 8003DDC0 10000065 */  b          .L8003DF58
/* 3E9C4 8003DDC4 3C013F80 */   lui       $at, 0x3f80
/* 3E9C8 8003DDC8 C6060110 */  lwc1       $f6, 0x110($s0)
/* 3E9CC 8003DDCC 44804000 */  mtc1       $zero, $f8
/* 3E9D0 8003DDD0 24480001 */  addiu      $t0, $v0, 1
/* 3E9D4 8003DDD4 4608303C */  c.lt.s     $f6, $f8
/* 3E9D8 8003DDD8 3C0142F0 */  lui        $at, 0x42f0
/* 3E9DC 8003DDDC 4500005D */  bc1f       .L8003DF54
/* 3E9E0 8003DDE0 24090080 */   addiu     $t1, $zero, 0x80
/* 3E9E4 8003DDE4 44815000 */  mtc1       $at, $f10
/* 3E9E8 8003DDE8 240A00B0 */  addiu      $t2, $zero, 0xb0
/* 3E9EC 8003DDEC A60800D0 */  sh         $t0, 0xd0($s0)
/* 3E9F0 8003DDF0 AE000154 */  sw         $zero, 0x154($s0)
/* 3E9F4 8003DDF4 AE09016C */  sw         $t1, 0x16c($s0)
/* 3E9F8 8003DDF8 AE0A0170 */  sw         $t2, 0x170($s0)
/* 3E9FC 8003DDFC 24040137 */  addiu      $a0, $zero, 0x137
/* 3EA00 8003DE00 0C000CD3 */  jal        func_8000334C
/* 3EA04 8003DE04 E60A0110 */   swc1      $f10, 0x110($s0)
/* 3EA08 8003DE08 10000053 */  b          .L8003DF58
/* 3EA0C 8003DE0C 3C013F80 */   lui       $at, 0x3f80
/* 3EA10 8003DE10 C6100110 */  lwc1       $f16, 0x110($s0)
/* 3EA14 8003DE14 44809000 */  mtc1       $zero, $f18
/* 3EA18 8003DE18 244B0001 */  addiu      $t3, $v0, 1
/* 3EA1C 8003DE1C 4612803C */  c.lt.s     $f16, $f18
/* 3EA20 8003DE20 3C014120 */  lui        $at, 0x4120
/* 3EA24 8003DE24 45000005 */  bc1f       .L8003DE3C
/* 3EA28 8003DE28 3C050020 */   lui       $a1, 0x20
/* 3EA2C 8003DE2C 44812000 */  mtc1       $at, $f4
/* 3EA30 8003DE30 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 3EA34 8003DE34 10000047 */  b          .L8003DF54
/* 3EA38 8003DE38 E6040110 */   swc1      $f4, 0x110($s0)
.L8003DE3C:
/* 3EA3C 8003DE3C 8E040154 */  lw         $a0, 0x154($s0)
/* 3EA40 8003DE40 0C00A607 */  jal        func_8002981C
/* 3EA44 8003DE44 34068000 */   ori       $a2, $zero, 0x8000
/* 3EA48 8003DE48 3C013F80 */  lui        $at, 0x3f80
/* 3EA4C 8003DE4C 44813000 */  mtc1       $at, $f6
/* 3EA50 8003DE50 3C0D800E */  lui        $t5, %hi(D_800D9AE4)
/* 3EA54 8003DE54 25AD9AE4 */  addiu      $t5, $t5, %lo(D_800D9AE4)
/* 3EA58 8003DE58 3C04800D */  lui        $a0, %hi(D_800D27B0)
/* 3EA5C 8003DE5C 3C0C0080 */  lui        $t4, 0x80
/* 3EA60 8003DE60 AE020154 */  sw         $v0, 0x154($s0)
/* 3EA64 8003DE64 AFAC0010 */  sw         $t4, 0x10($sp)
/* 3EA68 8003DE68 248427B0 */  addiu      $a0, $a0, %lo(D_800D27B0)
/* 3EA6C 8003DE6C AFAD0014 */  sw         $t5, 0x14($sp)
/* 3EA70 8003DE70 24050A00 */  addiu      $a1, $zero, 0xa00
/* 3EA74 8003DE74 00003025 */  or         $a2, $zero, $zero
/* 3EA78 8003DE78 00403825 */  or         $a3, $v0, $zero
/* 3EA7C 8003DE7C AFA00018 */  sw         $zero, 0x18($sp)
/* 3EA80 8003DE80 AFA0001C */  sw         $zero, 0x1c($sp)
/* 3EA84 8003DE84 AFA00020 */  sw         $zero, 0x20($sp)
/* 3EA88 8003DE88 AFA00024 */  sw         $zero, 0x24($sp)
/* 3EA8C 8003DE8C AFA00028 */  sw         $zero, 0x28($sp)
/* 3EA90 8003DE90 0C01FA85 */  jal        func_8007EA14
/* 3EA94 8003DE94 E7A6002C */   swc1      $f6, 0x2c($sp)
/* 3EA98 8003DE98 8E04016C */  lw         $a0, 0x16c($s0)
/* 3EA9C 8003DE9C 00002825 */  or         $a1, $zero, $zero
/* 3EAA0 8003DEA0 0C00A607 */  jal        func_8002981C
/* 3EAA4 8003DEA4 24060004 */   addiu     $a2, $zero, 4
/* 3EAA8 8003DEA8 8E040170 */  lw         $a0, 0x170($s0)
/* 3EAAC 8003DEAC AE02016C */  sw         $v0, 0x16c($s0)
/* 3EAB0 8003DEB0 2405005C */  addiu      $a1, $zero, 0x5c
/* 3EAB4 8003DEB4 0C00A607 */  jal        func_8002981C
/* 3EAB8 8003DEB8 24060002 */   addiu     $a2, $zero, 2
/* 3EABC 8003DEBC 8E03016C */  lw         $v1, 0x16c($s0)
/* 3EAC0 8003DEC0 8E0A0154 */  lw         $t2, 0x154($s0)
/* 3EAC4 8003DEC4 00023823 */  negu       $a3, $v0
/* 3EAC8 8003DEC8 3C01FFF7 */  lui        $at, 0xfff7
/* 3EACC 8003DECC 24650001 */  addiu      $a1, $v1, 1
/* 3EAD0 8003DED0 00033023 */  negu       $a2, $v1
/* 3EAD4 8003DED4 0006C400 */  sll        $t8, $a2, 0x10
/* 3EAD8 8003DED8 00057400 */  sll        $t6, $a1, 0x10
/* 3EADC 8003DEDC 00074400 */  sll        $t0, $a3, 0x10
/* 3EAE0 8003DEE0 3C0C0080 */  lui        $t4, 0x80
/* 3EAE4 8003DEE4 240D007F */  addiu      $t5, $zero, 0x7f
/* 3EAE8 8003DEE8 01415821 */  addu       $t3, $t2, $at
/* 3EAEC 8003DEEC AE020170 */  sw         $v0, 0x170($s0)
/* 3EAF0 8003DEF0 AFAB0018 */  sw         $t3, 0x18($sp)
/* 3EAF4 8003DEF4 AFAD0020 */  sw         $t5, 0x20($sp)
/* 3EAF8 8003DEF8 AFAC001C */  sw         $t4, 0x1c($sp)
/* 3EAFC 8003DEFC 00083C03 */  sra        $a3, $t0, 0x10
/* 3EB00 8003DF00 000E2C03 */  sra        $a1, $t6, 0x10
/* 3EB04 8003DF04 00183403 */  sra        $a2, $t8, 0x10
/* 3EB08 8003DF08 24040800 */  addiu      $a0, $zero, 0x800
/* 3EB0C 8003DF0C AFA20010 */  sw         $v0, 0x10($sp)
/* 3EB10 8003DF10 AFA00014 */  sw         $zero, 0x14($sp)
/* 3EB14 8003DF14 AFA00024 */  sw         $zero, 0x24($sp)
/* 3EB18 8003DF18 0C00F5A3 */  jal        func_8003D68C
/* 3EB1C 8003DF1C AFA00028 */   sw        $zero, 0x28($sp)
/* 3EB20 8003DF20 1000000D */  b          .L8003DF58
/* 3EB24 8003DF24 3C013F80 */   lui       $at, 0x3f80
/* 3EB28 8003DF28 C6080110 */  lwc1       $f8, 0x110($s0)
/* 3EB2C 8003DF2C 44805000 */  mtc1       $zero, $f10
/* 3EB30 8003DF30 3C02800D */  lui        $v0, %hi(D_800D28E8)
/* 3EB34 8003DF34 460A403C */  c.lt.s     $f8, $f10
/* 3EB38 8003DF38 244228E8 */  addiu      $v0, $v0, %lo(D_800D28E8)
/* 3EB3C 8003DF3C 45000006 */  bc1f       .L8003DF58
/* 3EB40 8003DF40 3C013F80 */   lui       $at, 0x3f80
/* 3EB44 8003DF44 944E0000 */  lhu        $t6, ($v0)
/* 3EB48 8003DF48 AE000080 */  sw         $zero, 0x80($s0)
/* 3EB4C 8003DF4C 25CF0001 */  addiu      $t7, $t6, 1
/* 3EB50 8003DF50 A44F0000 */  sh         $t7, ($v0)
.L8003DF54:
/* 3EB54 8003DF54 3C013F80 */  lui        $at, 0x3f80
.L8003DF58:
/* 3EB58 8003DF58 44819000 */  mtc1       $at, $f18
/* 3EB5C 8003DF5C C6100110 */  lwc1       $f16, 0x110($s0)
/* 3EB60 8003DF60 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3EB64 8003DF64 46128101 */  sub.s      $f4, $f16, $f18
/* 3EB68 8003DF68 E6040110 */  swc1       $f4, 0x110($s0)
/* 3EB6C 8003DF6C 8FB00038 */  lw         $s0, 0x38($sp)
/* 3EB70 8003DF70 03E00008 */  jr         $ra
/* 3EB74 8003DF74 27BD0040 */   addiu     $sp, $sp, 0x40
