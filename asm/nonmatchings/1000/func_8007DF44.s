glabel func_8007DF44
/* 7EB44 8007DF44 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7EB48 8007DF48 000E7880 */  sll        $t7, $t6, 2
/* 7EB4C 8007DF4C 01EE7823 */  subu       $t7, $t7, $t6
/* 7EB50 8007DF50 000F7880 */  sll        $t7, $t7, 2
/* 7EB54 8007DF54 01EE7821 */  addu       $t7, $t7, $t6
/* 7EB58 8007DF58 000F7880 */  sll        $t7, $t7, 2
/* 7EB5C 8007DF5C 01EE7823 */  subu       $t7, $t7, $t6
/* 7EB60 8007DF60 3C18800F */  lui        $t8, %hi(gActors)
/* 7EB64 8007DF64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7EB68 8007DF68 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7EB6C 8007DF6C 000F78C0 */  sll        $t7, $t7, 3
/* 7EB70 8007DF70 01F82821 */  addu       $a1, $t7, $t8
/* 7EB74 8007DF74 C4A4014C */  lwc1       $f4, 0x14c($a1)
/* 7EB78 8007DF78 C4A60134 */  lwc1       $f6, 0x134($a1)
/* 7EB7C 8007DF7C 8CB90150 */  lw         $t9, 0x150($a1)
/* 7EB80 8007DF80 46062200 */  add.s      $f8, $f4, $f6
/* 7EB84 8007DF84 AFA40040 */  sw         $a0, 0x40($sp)
/* 7EB88 8007DF88 33288000 */  andi       $t0, $t9, 0x8000
/* 7EB8C 8007DF8C 01C02025 */  or         $a0, $t6, $zero
/* 7EB90 8007DF90 AFBF002C */  sw         $ra, 0x2c($sp)
/* 7EB94 8007DF94 AFB10028 */  sw         $s1, 0x28($sp)
/* 7EB98 8007DF98 AFB00024 */  sw         $s0, 0x24($sp)
/* 7EB9C 8007DF9C E7B70018 */  swc1       $f23, 0x18($sp)
/* 7EBA0 8007DFA0 E7B6001C */  swc1       $f22, 0x1c($sp)
/* 7EBA4 8007DFA4 E7B50010 */  swc1       $f21, 0x10($sp)
/* 7EBA8 8007DFA8 E7B40014 */  swc1       $f20, 0x14($sp)
/* 7EBAC 8007DFAC 11000003 */  beqz       $t0, .L8007DFBC
/* 7EBB0 8007DFB0 E4A8014C */   swc1      $f8, 0x14c($a1)
/* 7EBB4 8007DFB4 1000028E */  b          .L8007E9F0
/* 7EBB8 8007DFB8 A4A00094 */   sh        $zero, 0x94($a1)
.L8007DFBC:
/* 7EBBC 8007DFBC 44806000 */  mtc1       $zero, $f12
/* 7EBC0 8007DFC0 C4A0014C */  lwc1       $f0, 0x14c($a1)
/* 7EBC4 8007DFC4 4480A000 */  mtc1       $zero, $f20
/* 7EBC8 8007DFC8 460C003C */  c.lt.s     $f0, $f12
/* 7EBCC 8007DFCC 00003025 */  or         $a2, $zero, $zero
/* 7EBD0 8007DFD0 45000097 */  bc1f       .L8007E230
/* 7EBD4 8007DFD4 2411035C */   addiu     $s1, $zero, 0x35c
/* 7EBD8 8007DFD8 C4AA0138 */  lwc1       $f10, 0x138($a1)
/* 7EBDC 8007DFDC 3C014110 */  lui        $at, 0x4110
/* 7EBE0 8007DFE0 460A6032 */  c.eq.s     $f12, $f10
/* 7EBE4 8007DFE4 00000000 */  nop
/* 7EBE8 8007DFE8 45000019 */  bc1f       .L8007E050
/* 7EBEC 8007DFEC 00000000 */   nop
/* 7EBF0 8007DFF0 C4B0013C */  lwc1       $f16, 0x13c($a1)
/* 7EBF4 8007DFF4 00000000 */  nop
/* 7EBF8 8007DFF8 46106032 */  c.eq.s     $f12, $f16
/* 7EBFC 8007DFFC 00000000 */  nop
/* 7EC00 8007E000 45000013 */  bc1f       .L8007E050
/* 7EC04 8007E004 00000000 */   nop
/* 7EC08 8007E008 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7EC0C 8007E00C 00000000 */  nop
/* 7EC10 8007E010 46126032 */  c.eq.s     $f12, $f18
/* 7EC14 8007E014 00000000 */  nop
/* 7EC18 8007E018 4500000D */  bc1f       .L8007E050
/* 7EC1C 8007E01C 00000000 */   nop
/* 7EC20 8007E020 C4A40144 */  lwc1       $f4, 0x144($a1)
/* 7EC24 8007E024 00000000 */  nop
/* 7EC28 8007E028 46046032 */  c.eq.s     $f12, $f4
/* 7EC2C 8007E02C 00000000 */  nop
/* 7EC30 8007E030 45000007 */  bc1f       .L8007E050
/* 7EC34 8007E034 00000000 */   nop
/* 7EC38 8007E038 C4A60148 */  lwc1       $f6, 0x148($a1)
/* 7EC3C 8007E03C 00000000 */  nop
/* 7EC40 8007E040 46066032 */  c.eq.s     $f12, $f6
/* 7EC44 8007E044 00000000 */  nop
/* 7EC48 8007E048 45010076 */  bc1t       .L8007E224
/* 7EC4C 8007E04C 00000000 */   nop
.L8007E050:
/* 7EC50 8007E050 44811000 */  mtc1       $at, $f2
/* 7EC54 8007E054 3C013F80 */  lui        $at, 0x3f80
/* 7EC58 8007E058 44817000 */  mtc1       $at, $f14
/* 7EC5C 8007E05C C4A80148 */  lwc1       $f8, 0x148($a1)
/* 7EC60 8007E060 E4A2014C */  swc1       $f2, 0x14c($a1)
/* 7EC64 8007E064 460E4281 */  sub.s      $f10, $f8, $f14
/* 7EC68 8007E068 E4AA0148 */  swc1       $f10, 0x148($a1)
/* 7EC6C 8007E06C C4B00148 */  lwc1       $f16, 0x148($a1)
/* 7EC70 8007E070 00000000 */  nop
/* 7EC74 8007E074 460C803C */  c.lt.s     $f16, $f12
/* 7EC78 8007E078 00000000 */  nop
/* 7EC7C 8007E07C 450000C3 */  bc1f       .L8007E38C
/* 7EC80 8007E080 00000000 */   nop
/* 7EC84 8007E084 C4B20138 */  lwc1       $f18, 0x138($a1)
/* 7EC88 8007E088 00000000 */  nop
/* 7EC8C 8007E08C 46126032 */  c.eq.s     $f12, $f18
/* 7EC90 8007E090 00000000 */  nop
/* 7EC94 8007E094 45000013 */  bc1f       .L8007E0E4
/* 7EC98 8007E098 00000000 */   nop
/* 7EC9C 8007E09C C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7ECA0 8007E0A0 00000000 */  nop
/* 7ECA4 8007E0A4 46046032 */  c.eq.s     $f12, $f4
/* 7ECA8 8007E0A8 00000000 */  nop
/* 7ECAC 8007E0AC 4500000D */  bc1f       .L8007E0E4
/* 7ECB0 8007E0B0 00000000 */   nop
/* 7ECB4 8007E0B4 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7ECB8 8007E0B8 00000000 */  nop
/* 7ECBC 8007E0BC 46066032 */  c.eq.s     $f12, $f6
/* 7ECC0 8007E0C0 00000000 */  nop
/* 7ECC4 8007E0C4 45000007 */  bc1f       .L8007E0E4
/* 7ECC8 8007E0C8 00000000 */   nop
/* 7ECCC 8007E0CC C4A80144 */  lwc1       $f8, 0x144($a1)
/* 7ECD0 8007E0D0 00000000 */  nop
/* 7ECD4 8007E0D4 46086032 */  c.eq.s     $f12, $f8
/* 7ECD8 8007E0D8 00000000 */  nop
/* 7ECDC 8007E0DC 4501004E */  bc1t       .L8007E218
/* 7ECE0 8007E0E0 00000000 */   nop
.L8007E0E4:
/* 7ECE4 8007E0E4 C4AA0144 */  lwc1       $f10, 0x144($a1)
/* 7ECE8 8007E0E8 E4A20148 */  swc1       $f2, 0x148($a1)
/* 7ECEC 8007E0EC 460E5401 */  sub.s      $f16, $f10, $f14
/* 7ECF0 8007E0F0 E4B00144 */  swc1       $f16, 0x144($a1)
/* 7ECF4 8007E0F4 C4B20144 */  lwc1       $f18, 0x144($a1)
/* 7ECF8 8007E0F8 00000000 */  nop
/* 7ECFC 8007E0FC 460C903C */  c.lt.s     $f18, $f12
/* 7ED00 8007E100 00000000 */  nop
/* 7ED04 8007E104 450000A1 */  bc1f       .L8007E38C
/* 7ED08 8007E108 00000000 */   nop
/* 7ED0C 8007E10C C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7ED10 8007E110 00000000 */  nop
/* 7ED14 8007E114 46046032 */  c.eq.s     $f12, $f4
/* 7ED18 8007E118 00000000 */  nop
/* 7ED1C 8007E11C 4500000D */  bc1f       .L8007E154
/* 7ED20 8007E120 00000000 */   nop
/* 7ED24 8007E124 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7ED28 8007E128 00000000 */  nop
/* 7ED2C 8007E12C 46066032 */  c.eq.s     $f12, $f6
/* 7ED30 8007E130 00000000 */  nop
/* 7ED34 8007E134 45000007 */  bc1f       .L8007E154
/* 7ED38 8007E138 00000000 */   nop
/* 7ED3C 8007E13C C4A80140 */  lwc1       $f8, 0x140($a1)
/* 7ED40 8007E140 00000000 */  nop
/* 7ED44 8007E144 46086032 */  c.eq.s     $f12, $f8
/* 7ED48 8007E148 00000000 */  nop
/* 7ED4C 8007E14C 45010030 */  bc1t       .L8007E210
/* 7ED50 8007E150 00000000 */   nop
.L8007E154:
/* 7ED54 8007E154 C4AA0140 */  lwc1       $f10, 0x140($a1)
/* 7ED58 8007E158 E4A20144 */  swc1       $f2, 0x144($a1)
/* 7ED5C 8007E15C 460E5401 */  sub.s      $f16, $f10, $f14
/* 7ED60 8007E160 E4B00140 */  swc1       $f16, 0x140($a1)
/* 7ED64 8007E164 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7ED68 8007E168 00000000 */  nop
/* 7ED6C 8007E16C 460C903C */  c.lt.s     $f18, $f12
/* 7ED70 8007E170 00000000 */  nop
/* 7ED74 8007E174 45000085 */  bc1f       .L8007E38C
/* 7ED78 8007E178 00000000 */   nop
/* 7ED7C 8007E17C C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7ED80 8007E180 00000000 */  nop
/* 7ED84 8007E184 46046032 */  c.eq.s     $f12, $f4
/* 7ED88 8007E188 00000000 */  nop
/* 7ED8C 8007E18C 45000007 */  bc1f       .L8007E1AC
/* 7ED90 8007E190 00000000 */   nop
/* 7ED94 8007E194 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7ED98 8007E198 00000000 */  nop
/* 7ED9C 8007E19C 46066032 */  c.eq.s     $f12, $f6
/* 7EDA0 8007E1A0 00000000 */  nop
/* 7EDA4 8007E1A4 45010018 */  bc1t       .L8007E208
/* 7EDA8 8007E1A8 00000000 */   nop
.L8007E1AC:
/* 7EDAC 8007E1AC C4AA013C */  lwc1       $f10, 0x13c($a1)
/* 7EDB0 8007E1B0 3C0140A0 */  lui        $at, 0x40a0
/* 7EDB4 8007E1B4 460E5401 */  sub.s      $f16, $f10, $f14
/* 7EDB8 8007E1B8 44814000 */  mtc1       $at, $f8
/* 7EDBC 8007E1BC E4B0013C */  swc1       $f16, 0x13c($a1)
/* 7EDC0 8007E1C0 C4B2013C */  lwc1       $f18, 0x13c($a1)
/* 7EDC4 8007E1C4 E4A80140 */  swc1       $f8, 0x140($a1)
/* 7EDC8 8007E1C8 460C903C */  c.lt.s     $f18, $f12
/* 7EDCC 8007E1CC 00000000 */  nop
/* 7EDD0 8007E1D0 4500006E */  bc1f       .L8007E38C
/* 7EDD4 8007E1D4 00000000 */   nop
/* 7EDD8 8007E1D8 C4A00138 */  lwc1       $f0, 0x138($a1)
/* 7EDDC 8007E1DC 00000000 */  nop
/* 7EDE0 8007E1E0 46006032 */  c.eq.s     $f12, $f0
/* 7EDE4 8007E1E4 00000000 */  nop
/* 7EDE8 8007E1E8 45010005 */  bc1t       .L8007E200
/* 7EDEC 8007E1EC 00000000 */   nop
/* 7EDF0 8007E1F0 460E0101 */  sub.s      $f4, $f0, $f14
/* 7EDF4 8007E1F4 E4A2013C */  swc1       $f2, 0x13c($a1)
/* 7EDF8 8007E1F8 10000064 */  b          .L8007E38C
/* 7EDFC 8007E1FC E4A40138 */   swc1      $f4, 0x138($a1)
.L8007E200:
/* 7EE00 8007E200 10000062 */  b          .L8007E38C
/* 7EE04 8007E204 E4AC013C */   swc1      $f12, 0x13c($a1)
.L8007E208:
/* 7EE08 8007E208 10000060 */  b          .L8007E38C
/* 7EE0C 8007E20C E4AC0140 */   swc1      $f12, 0x140($a1)
.L8007E210:
/* 7EE10 8007E210 1000005E */  b          .L8007E38C
/* 7EE14 8007E214 E4AC0144 */   swc1      $f12, 0x144($a1)
.L8007E218:
/* 7EE18 8007E218 E4AC0148 */  swc1       $f12, 0x148($a1)
/* 7EE1C 8007E21C 1000005C */  b          .L8007E390
/* 7EE20 8007E220 8CA70188 */   lw        $a3, 0x188($a1)
.L8007E224:
/* 7EE24 8007E224 E4AC014C */  swc1       $f12, 0x14c($a1)
/* 7EE28 8007E228 10000059 */  b          .L8007E390
/* 7EE2C 8007E22C 8CA70188 */   lw        $a3, 0x188($a1)
.L8007E230:
/* 7EE30 8007E230 3C014110 */  lui        $at, 0x4110
/* 7EE34 8007E234 44811000 */  mtc1       $at, $f2
/* 7EE38 8007E238 00000000 */  nop
/* 7EE3C 8007E23C 4600103C */  c.lt.s     $f2, $f0
/* 7EE40 8007E240 00000000 */  nop
/* 7EE44 8007E244 45000051 */  bc1f       .L8007E38C
/* 7EE48 8007E248 00000000 */   nop
/* 7EE4C 8007E24C C4A60138 */  lwc1       $f6, 0x138($a1)
/* 7EE50 8007E250 00000000 */  nop
/* 7EE54 8007E254 46061032 */  c.eq.s     $f2, $f6
/* 7EE58 8007E258 00000000 */  nop
/* 7EE5C 8007E25C 4500001D */  bc1f       .L8007E2D4
/* 7EE60 8007E260 3C013F80 */   lui       $at, 0x3f80
/* 7EE64 8007E264 C4A8013C */  lwc1       $f8, 0x13c($a1)
/* 7EE68 8007E268 3C0140A0 */  lui        $at, 0x40a0
/* 7EE6C 8007E26C 46081032 */  c.eq.s     $f2, $f8
/* 7EE70 8007E270 00000000 */  nop
/* 7EE74 8007E274 45000016 */  bc1f       .L8007E2D0
/* 7EE78 8007E278 00000000 */   nop
/* 7EE7C 8007E27C 44815000 */  mtc1       $at, $f10
/* 7EE80 8007E280 C4B00140 */  lwc1       $f16, 0x140($a1)
/* 7EE84 8007E284 00000000 */  nop
/* 7EE88 8007E288 46105032 */  c.eq.s     $f10, $f16
/* 7EE8C 8007E28C 00000000 */  nop
/* 7EE90 8007E290 45000010 */  bc1f       .L8007E2D4
/* 7EE94 8007E294 3C013F80 */   lui       $at, 0x3f80
/* 7EE98 8007E298 C4B20144 */  lwc1       $f18, 0x144($a1)
/* 7EE9C 8007E29C 00000000 */  nop
/* 7EEA0 8007E2A0 46121032 */  c.eq.s     $f2, $f18
/* 7EEA4 8007E2A4 00000000 */  nop
/* 7EEA8 8007E2A8 4500000A */  bc1f       .L8007E2D4
/* 7EEAC 8007E2AC 3C013F80 */   lui       $at, 0x3f80
/* 7EEB0 8007E2B0 C4A40148 */  lwc1       $f4, 0x148($a1)
/* 7EEB4 8007E2B4 00000000 */  nop
/* 7EEB8 8007E2B8 46041032 */  c.eq.s     $f2, $f4
/* 7EEBC 8007E2BC 00000000 */  nop
/* 7EEC0 8007E2C0 45000004 */  bc1f       .L8007E2D4
/* 7EEC4 8007E2C4 3C013F80 */   lui       $at, 0x3f80
/* 7EEC8 8007E2C8 10000030 */  b          .L8007E38C
/* 7EECC 8007E2CC E4A2014C */   swc1      $f2, 0x14c($a1)
.L8007E2D0:
/* 7EED0 8007E2D0 3C013F80 */  lui        $at, 0x3f80
.L8007E2D4:
/* 7EED4 8007E2D4 44817000 */  mtc1       $at, $f14
/* 7EED8 8007E2D8 C4A60148 */  lwc1       $f6, 0x148($a1)
/* 7EEDC 8007E2DC E4AC014C */  swc1       $f12, 0x14c($a1)
/* 7EEE0 8007E2E0 460E3200 */  add.s      $f8, $f6, $f14
/* 7EEE4 8007E2E4 E4A80148 */  swc1       $f8, 0x148($a1)
/* 7EEE8 8007E2E8 C4AA0148 */  lwc1       $f10, 0x148($a1)
/* 7EEEC 8007E2EC 00000000 */  nop
/* 7EEF0 8007E2F0 460A103C */  c.lt.s     $f2, $f10
/* 7EEF4 8007E2F4 00000000 */  nop
/* 7EEF8 8007E2F8 45000024 */  bc1f       .L8007E38C
/* 7EEFC 8007E2FC 00000000 */   nop
/* 7EF00 8007E300 C4B00144 */  lwc1       $f16, 0x144($a1)
/* 7EF04 8007E304 E4AC0148 */  swc1       $f12, 0x148($a1)
/* 7EF08 8007E308 460E8480 */  add.s      $f18, $f16, $f14
/* 7EF0C 8007E30C E4B20144 */  swc1       $f18, 0x144($a1)
/* 7EF10 8007E310 C4A40144 */  lwc1       $f4, 0x144($a1)
/* 7EF14 8007E314 00000000 */  nop
/* 7EF18 8007E318 4604103C */  c.lt.s     $f2, $f4
/* 7EF1C 8007E31C 00000000 */  nop
/* 7EF20 8007E320 4500001A */  bc1f       .L8007E38C
/* 7EF24 8007E324 00000000 */   nop
/* 7EF28 8007E328 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7EF2C 8007E32C 3C0140A0 */  lui        $at, 0x40a0
/* 7EF30 8007E330 460E3200 */  add.s      $f8, $f6, $f14
/* 7EF34 8007E334 44815000 */  mtc1       $at, $f10
/* 7EF38 8007E338 E4A80140 */  swc1       $f8, 0x140($a1)
/* 7EF3C 8007E33C C4B00140 */  lwc1       $f16, 0x140($a1)
/* 7EF40 8007E340 E4AC0144 */  swc1       $f12, 0x144($a1)
/* 7EF44 8007E344 4610503C */  c.lt.s     $f10, $f16
/* 7EF48 8007E348 00000000 */  nop
/* 7EF4C 8007E34C 4500000F */  bc1f       .L8007E38C
/* 7EF50 8007E350 00000000 */   nop
/* 7EF54 8007E354 C4B2013C */  lwc1       $f18, 0x13c($a1)
/* 7EF58 8007E358 E4AC0140 */  swc1       $f12, 0x140($a1)
/* 7EF5C 8007E35C 460E9100 */  add.s      $f4, $f18, $f14
/* 7EF60 8007E360 E4A4013C */  swc1       $f4, 0x13c($a1)
/* 7EF64 8007E364 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7EF68 8007E368 00000000 */  nop
/* 7EF6C 8007E36C 4606103C */  c.lt.s     $f2, $f6
/* 7EF70 8007E370 00000000 */  nop
/* 7EF74 8007E374 45000005 */  bc1f       .L8007E38C
/* 7EF78 8007E378 00000000 */   nop
/* 7EF7C 8007E37C C4A80138 */  lwc1       $f8, 0x138($a1)
/* 7EF80 8007E380 E4AC013C */  swc1       $f12, 0x13c($a1)
/* 7EF84 8007E384 460E4280 */  add.s      $f10, $f8, $f14
/* 7EF88 8007E388 E4AA0138 */  swc1       $f10, 0x138($a1)
.L8007E38C:
/* 7EF8C 8007E38C 8CA70188 */  lw         $a3, 0x188($a1)
.L8007E390:
/* 7EF90 8007E390 3C10800C */  lui        $s0, 0x800c
/* 7EF94 8007E394 04E10004 */  bgez       $a3, .L8007E3A8
/* 7EF98 8007E398 00074C03 */   sra       $t1, $a3, 0x10
/* 7EF9C 8007E39C 3401FFFF */  ori        $at, $zero, 0xffff
/* 7EFA0 8007E3A0 00270821 */  addu       $at, $at, $a3
/* 7EFA4 8007E3A4 00014C03 */  sra        $t1, $at, 0x10
.L8007E3A8:
/* 7EFA8 8007E3A8 3C014780 */  lui        $at, 0x4780
/* 7EFAC 8007E3AC 4481B000 */  mtc1       $at, $f22
/* 7EFB0 8007E3B0 3C014012 */  lui        $at, 0x4012
/* 7EFB4 8007E3B4 00095400 */  sll        $t2, $t1, 0x10
/* 7EFB8 8007E3B8 4481A800 */  mtc1       $at, $f21
/* 7EFBC 8007E3BC 000A3C03 */  sra        $a3, $t2, 0x10
/* 7EFC0 8007E3C0 2610CCD0 */  addiu      $s0, $s0, -0x3330
/* 7EFC4 8007E3C4 A7A40042 */  sh         $a0, 0x42($sp)
.L8007E3C8:
/* 7EFC8 8007E3C8 97A40042 */  lhu        $a0, 0x42($sp)
/* 7EFCC 8007E3CC AFA50030 */  sw         $a1, 0x30($sp)
/* 7EFD0 8007E3D0 A7A6003C */  sh         $a2, 0x3c($sp)
/* 7EFD4 8007E3D4 0C01F4A4 */  jal        func_8007D290
/* 7EFD8 8007E3D8 A7A7003A */   sh        $a3, 0x3a($sp)
/* 7EFDC 8007E3DC 97A6003C */  lhu        $a2, 0x3c($sp)
/* 7EFE0 8007E3E0 8FA50030 */  lw         $a1, 0x30($sp)
/* 7EFE4 8007E3E4 87A7003A */  lh         $a3, 0x3a($sp)
/* 7EFE8 8007E3E8 44806000 */  mtc1       $zero, $f12
/* 7EFEC 8007E3EC 1040017B */  beqz       $v0, .L8007E9DC
/* 7EFF0 8007E3F0 000660C0 */   sll       $t4, $a2, 3
/* 7EFF4 8007E3F4 01866021 */  addu       $t4, $t4, $a2
/* 7EFF8 8007E3F8 C4A200B4 */  lwc1       $f2, 0xb4($a1)
/* 7EFFC 8007E3FC 258DFFDC */  addiu      $t5, $t4, -0x24
/* 7F000 8007E400 448D2000 */  mtc1       $t5, $f4
/* 7F004 8007E404 46001421 */  cvt.d.s    $f16, $f2
/* 7F008 8007E408 46348482 */  mul.d      $f18, $f16, $f20
/* 7F00C 8007E40C 468021A0 */  cvt.s.w    $f6, $f4
/* 7F010 8007E410 30F903FF */  andi       $t9, $a3, 0x3ff
/* 7F014 8007E414 00194080 */  sll        $t0, $t9, 2
/* 7F018 8007E418 02084821 */  addu       $t1, $s0, $t0
/* 7F01C 8007E41C 46023202 */  mul.s      $f8, $f6, $f2
/* 7F020 8007E420 8CB80088 */  lw         $t8, 0x88($a1)
/* 7F024 8007E424 00027080 */  sll        $t6, $v0, 2
/* 7F028 8007E428 44982000 */  mtc1       $t8, $f4
/* 7F02C 8007E42C 460042A1 */  cvt.d.s    $f10, $f8
/* 7F030 8007E430 C5280000 */  lwc1       $f8, ($t1)
/* 7F034 8007E434 462A9400 */  add.d      $f16, $f18, $f10
/* 7F038 8007E438 01C27023 */  subu       $t6, $t6, $v0
/* 7F03C 8007E43C 4608B482 */  mul.s      $f18, $f22, $f8
/* 7F040 8007E440 46208020 */  cvt.s.d    $f0, $f16
/* 7F044 8007E444 000E7080 */  sll        $t6, $t6, 2
/* 7F048 8007E448 01C27021 */  addu       $t6, $t6, $v0
/* 7F04C 8007E44C 46120282 */  mul.s      $f10, $f0, $f18
/* 7F050 8007E450 000E7080 */  sll        $t6, $t6, 2
/* 7F054 8007E454 01C27023 */  subu       $t6, $t6, $v0
/* 7F058 8007E458 3C0F800F */  lui        $t7, %hi(gActors)
/* 7F05C 8007E45C 468021A0 */  cvt.s.w    $f6, $f4
/* 7F060 8007E460 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7F064 8007E464 000E70C0 */  sll        $t6, $t6, 3
/* 7F068 8007E468 460A3400 */  add.s      $f16, $f6, $f10
/* 7F06C 8007E46C 01CF1821 */  addu       $v1, $t6, $t7
/* 7F070 8007E470 444AF800 */  cfc1       $t2, $31
/* 7F074 8007E474 24EDFF00 */  addiu      $t5, $a3, -0x100
/* 7F078 8007E478 35410003 */  ori        $at, $t2, 3
/* 7F07C 8007E47C 38210002 */  xori       $at, $at, 2
/* 7F080 8007E480 44C1F800 */  ctc1       $at, $31
/* 7F084 8007E484 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 7F088 8007E488 46008124 */  cvt.w.s    $f4, $f16
/* 7F08C 8007E48C 000E7880 */  sll        $t7, $t6, 2
/* 7F090 8007E490 020FC021 */  addu       $t8, $s0, $t7
/* 7F094 8007E494 44CAF800 */  ctc1       $t2, $31
/* 7F098 8007E498 440B2000 */  mfc1       $t3, $f4
/* 7F09C 8007E49C C7060000 */  lwc1       $f6, ($t8)
/* 7F0A0 8007E4A0 AC6B0088 */  sw         $t3, 0x88($v1)
/* 7F0A4 8007E4A4 4606B282 */  mul.s      $f10, $f22, $f6
/* 7F0A8 8007E4A8 8CAC008C */  lw         $t4, 0x8c($a1)
/* 7F0AC 8007E4AC 00C02025 */  or         $a0, $a2, $zero
/* 7F0B0 8007E4B0 448C4000 */  mtc1       $t4, $f8
/* 7F0B4 8007E4B4 460A0402 */  mul.s      $f16, $f0, $f10
/* 7F0B8 8007E4B8 00044880 */  sll        $t1, $a0, 2
/* 7F0BC 8007E4BC 468044A0 */  cvt.s.w    $f18, $f8
/* 7F0C0 8007E4C0 46109100 */  add.s      $f4, $f18, $f16
/* 7F0C4 8007E4C4 4459F800 */  cfc1       $t9, $31
/* 7F0C8 8007E4C8 00000000 */  nop
/* 7F0CC 8007E4CC 37210003 */  ori        $at, $t9, 3
/* 7F0D0 8007E4D0 38210002 */  xori       $at, $at, 2
/* 7F0D4 8007E4D4 44C1F800 */  ctc1       $at, $31
/* 7F0D8 8007E4D8 2CC10008 */  sltiu      $at, $a2, 8
/* 7F0DC 8007E4DC 46002224 */  cvt.w.s    $f8, $f4
/* 7F0E0 8007E4E0 44084000 */  mfc1       $t0, $f8
/* 7F0E4 8007E4E4 44D9F800 */  ctc1       $t9, $31
/* 7F0E8 8007E4E8 AC68008C */  sw         $t0, 0x8c($v1)
/* 7F0EC 8007E4EC C4A600B8 */  lwc1       $f6, 0xb8($a1)
/* 7F0F0 8007E4F0 1020013A */  beqz       $at, .L8007E9DC
/* 7F0F4 8007E4F4 E46600B8 */   swc1      $f6, 0xb8($v1)
/* 7F0F8 8007E4F8 3C01800F */  lui        $at, %hi(D_800ECFC8)
/* 7F0FC 8007E4FC 00290821 */  addu       $at, $at, $t1
/* 7F100 8007E500 8C29CFC8 */  lw         $t1, %lo(D_800ECFC8)($at)
/* 7F104 8007E504 00000000 */  nop
/* 7F108 8007E508 01200008 */  jr         $t1
/* 7F10C 8007E50C 00000000 */   nop
/* 7F110 8007E510 444AF800 */  cfc1       $t2, $31
/* 7F114 8007E514 240B0001 */  addiu      $t3, $zero, 1
/* 7F118 8007E518 44CBF800 */  ctc1       $t3, $31
/* 7F11C 8007E51C C4AA0138 */  lwc1       $f10, 0x138($a1)
/* 7F120 8007E520 3C014F00 */  lui        $at, 0x4f00
/* 7F124 8007E524 460054A4 */  cvt.w.s    $f18, $f10
/* 7F128 8007E528 444BF800 */  cfc1       $t3, $31
/* 7F12C 8007E52C 00000000 */  nop
/* 7F130 8007E530 316B0078 */  andi       $t3, $t3, 0x78
/* 7F134 8007E534 11600012 */  beqz       $t3, .L8007E580
/* 7F138 8007E538 00000000 */   nop
/* 7F13C 8007E53C 44819000 */  mtc1       $at, $f18
/* 7F140 8007E540 240B0001 */  addiu      $t3, $zero, 1
/* 7F144 8007E544 46125481 */  sub.s      $f18, $f10, $f18
/* 7F148 8007E548 3C018000 */  lui        $at, 0x8000
/* 7F14C 8007E54C 44CBF800 */  ctc1       $t3, $31
/* 7F150 8007E550 00000000 */  nop
/* 7F154 8007E554 460094A4 */  cvt.w.s    $f18, $f18
/* 7F158 8007E558 444BF800 */  cfc1       $t3, $31
/* 7F15C 8007E55C 00000000 */  nop
/* 7F160 8007E560 316B0078 */  andi       $t3, $t3, 0x78
/* 7F164 8007E564 15600004 */  bnez       $t3, .L8007E578
/* 7F168 8007E568 00000000 */   nop
/* 7F16C 8007E56C 440B9000 */  mfc1       $t3, $f18
/* 7F170 8007E570 10000007 */  b          .L8007E590
/* 7F174 8007E574 01615825 */   or        $t3, $t3, $at
.L8007E578:
/* 7F178 8007E578 10000005 */  b          .L8007E590
/* 7F17C 8007E57C 240BFFFF */   addiu     $t3, $zero, -1
.L8007E580:
/* 7F180 8007E580 440B9000 */  mfc1       $t3, $f18
/* 7F184 8007E584 00000000 */  nop
/* 7F188 8007E588 0560FFFB */  bltz       $t3, .L8007E578
/* 7F18C 8007E58C 00000000 */   nop
.L8007E590:
/* 7F190 8007E590 000B6840 */  sll        $t5, $t3, 1
/* 7F194 8007E594 25AE02D2 */  addiu      $t6, $t5, 0x2d2
/* 7F198 8007E598 A46E0084 */  sh         $t6, 0x84($v1)
/* 7F19C 8007E59C 44CAF800 */  ctc1       $t2, $31
/* 7F1A0 8007E5A0 C4B00138 */  lwc1       $f16, 0x138($a1)
/* 7F1A4 8007E5A4 00000000 */  nop
/* 7F1A8 8007E5A8 46106032 */  c.eq.s     $f12, $f16
/* 7F1AC 8007E5AC 00000000 */  nop
/* 7F1B0 8007E5B0 4500010A */  bc1f       .L8007E9DC
/* 7F1B4 8007E5B4 00000000 */   nop
/* 7F1B8 8007E5B8 8C6F018C */  lw         $t7, 0x18c($v1)
/* 7F1BC 8007E5BC 00000000 */  nop
/* 7F1C0 8007E5C0 25F80008 */  addiu      $t8, $t7, 8
/* 7F1C4 8007E5C4 10000105 */  b          .L8007E9DC
/* 7F1C8 8007E5C8 AC78018C */   sw        $t8, 0x18c($v1)
/* 7F1CC 8007E5CC 4459F800 */  cfc1       $t9, $31
/* 7F1D0 8007E5D0 24080001 */  addiu      $t0, $zero, 1
/* 7F1D4 8007E5D4 44C8F800 */  ctc1       $t0, $31
/* 7F1D8 8007E5D8 C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7F1DC 8007E5DC 3C014F00 */  lui        $at, 0x4f00
/* 7F1E0 8007E5E0 46002224 */  cvt.w.s    $f8, $f4
/* 7F1E4 8007E5E4 4448F800 */  cfc1       $t0, $31
/* 7F1E8 8007E5E8 00000000 */  nop
/* 7F1EC 8007E5EC 31080078 */  andi       $t0, $t0, 0x78
/* 7F1F0 8007E5F0 11000012 */  beqz       $t0, .L8007E63C
/* 7F1F4 8007E5F4 00000000 */   nop
/* 7F1F8 8007E5F8 44814000 */  mtc1       $at, $f8
/* 7F1FC 8007E5FC 24080001 */  addiu      $t0, $zero, 1
/* 7F200 8007E600 46082201 */  sub.s      $f8, $f4, $f8
/* 7F204 8007E604 3C018000 */  lui        $at, 0x8000
/* 7F208 8007E608 44C8F800 */  ctc1       $t0, $31
/* 7F20C 8007E60C 00000000 */  nop
/* 7F210 8007E610 46004224 */  cvt.w.s    $f8, $f8
/* 7F214 8007E614 4448F800 */  cfc1       $t0, $31
/* 7F218 8007E618 00000000 */  nop
/* 7F21C 8007E61C 31080078 */  andi       $t0, $t0, 0x78
/* 7F220 8007E620 15000004 */  bnez       $t0, .L8007E634
/* 7F224 8007E624 00000000 */   nop
/* 7F228 8007E628 44084000 */  mfc1       $t0, $f8
/* 7F22C 8007E62C 10000007 */  b          .L8007E64C
/* 7F230 8007E630 01014025 */   or        $t0, $t0, $at
.L8007E634:
/* 7F234 8007E634 10000005 */  b          .L8007E64C
/* 7F238 8007E638 2408FFFF */   addiu     $t0, $zero, -1
.L8007E63C:
/* 7F23C 8007E63C 44084000 */  mfc1       $t0, $f8
/* 7F240 8007E640 00000000 */  nop
/* 7F244 8007E644 0500FFFB */  bltz       $t0, .L8007E634
/* 7F248 8007E648 00000000 */   nop
.L8007E64C:
/* 7F24C 8007E64C 00085040 */  sll        $t2, $t0, 1
/* 7F250 8007E650 254B02D2 */  addiu      $t3, $t2, 0x2d2
/* 7F254 8007E654 A46B0084 */  sh         $t3, 0x84($v1)
/* 7F258 8007E658 44D9F800 */  ctc1       $t9, $31
/* 7F25C 8007E65C C4A60138 */  lwc1       $f6, 0x138($a1)
/* 7F260 8007E660 00000000 */  nop
/* 7F264 8007E664 46066032 */  c.eq.s     $f12, $f6
/* 7F268 8007E668 00000000 */  nop
/* 7F26C 8007E66C 450000DB */  bc1f       .L8007E9DC
/* 7F270 8007E670 00000000 */   nop
/* 7F274 8007E674 C4AA013C */  lwc1       $f10, 0x13c($a1)
/* 7F278 8007E678 00000000 */  nop
/* 7F27C 8007E67C 460A6032 */  c.eq.s     $f12, $f10
/* 7F280 8007E680 00000000 */  nop
/* 7F284 8007E684 450000D5 */  bc1f       .L8007E9DC
/* 7F288 8007E688 00000000 */   nop
/* 7F28C 8007E68C 8C6C018C */  lw         $t4, 0x18c($v1)
/* 7F290 8007E690 00000000 */  nop
/* 7F294 8007E694 258D0008 */  addiu      $t5, $t4, 8
/* 7F298 8007E698 100000D0 */  b          .L8007E9DC
/* 7F29C 8007E69C AC6D018C */   sw        $t5, 0x18c($v1)
/* 7F2A0 8007E6A0 846E008C */  lh         $t6, 0x8c($v1)
/* 7F2A4 8007E6A4 A4710084 */  sh         $s1, 0x84($v1)
/* 7F2A8 8007E6A8 25CFFFFE */  addiu      $t7, $t6, -2
/* 7F2AC 8007E6AC 100000CB */  b          .L8007E9DC
/* 7F2B0 8007E6B0 A46F008C */   sh        $t7, 0x8c($v1)
/* 7F2B4 8007E6B4 4458F800 */  cfc1       $t8, $31
/* 7F2B8 8007E6B8 24190001 */  addiu      $t9, $zero, 1
/* 7F2BC 8007E6BC 44D9F800 */  ctc1       $t9, $31
/* 7F2C0 8007E6C0 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7F2C4 8007E6C4 3C014F00 */  lui        $at, 0x4f00
/* 7F2C8 8007E6C8 46009424 */  cvt.w.s    $f16, $f18
/* 7F2CC 8007E6CC 4459F800 */  cfc1       $t9, $31
/* 7F2D0 8007E6D0 00000000 */  nop
/* 7F2D4 8007E6D4 33390078 */  andi       $t9, $t9, 0x78
/* 7F2D8 8007E6D8 13200012 */  beqz       $t9, .L8007E724
/* 7F2DC 8007E6DC 00000000 */   nop
/* 7F2E0 8007E6E0 44818000 */  mtc1       $at, $f16
/* 7F2E4 8007E6E4 24190001 */  addiu      $t9, $zero, 1
/* 7F2E8 8007E6E8 46109401 */  sub.s      $f16, $f18, $f16
/* 7F2EC 8007E6EC 3C018000 */  lui        $at, 0x8000
/* 7F2F0 8007E6F0 44D9F800 */  ctc1       $t9, $31
/* 7F2F4 8007E6F4 00000000 */  nop
/* 7F2F8 8007E6F8 46008424 */  cvt.w.s    $f16, $f16
/* 7F2FC 8007E6FC 4459F800 */  cfc1       $t9, $31
/* 7F300 8007E700 00000000 */  nop
/* 7F304 8007E704 33390078 */  andi       $t9, $t9, 0x78
/* 7F308 8007E708 17200004 */  bnez       $t9, .L8007E71C
/* 7F30C 8007E70C 00000000 */   nop
/* 7F310 8007E710 44198000 */  mfc1       $t9, $f16
/* 7F314 8007E714 10000007 */  b          .L8007E734
/* 7F318 8007E718 0321C825 */   or        $t9, $t9, $at
.L8007E71C:
/* 7F31C 8007E71C 10000005 */  b          .L8007E734
/* 7F320 8007E720 2419FFFF */   addiu     $t9, $zero, -1
.L8007E724:
/* 7F324 8007E724 44198000 */  mfc1       $t9, $f16
/* 7F328 8007E728 00000000 */  nop
/* 7F32C 8007E72C 0720FFFB */  bltz       $t9, .L8007E71C
/* 7F330 8007E730 00000000 */   nop
.L8007E734:
/* 7F334 8007E734 00194840 */  sll        $t1, $t9, 1
/* 7F338 8007E738 252A02D2 */  addiu      $t2, $t1, 0x2d2
/* 7F33C 8007E73C A46A0084 */  sh         $t2, 0x84($v1)
/* 7F340 8007E740 44D8F800 */  ctc1       $t8, $31
/* 7F344 8007E744 C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7F348 8007E748 00000000 */  nop
/* 7F34C 8007E74C 46046032 */  c.eq.s     $f12, $f4
/* 7F350 8007E750 00000000 */  nop
/* 7F354 8007E754 450000A1 */  bc1f       .L8007E9DC
/* 7F358 8007E758 00000000 */   nop
/* 7F35C 8007E75C C4A8013C */  lwc1       $f8, 0x13c($a1)
/* 7F360 8007E760 00000000 */  nop
/* 7F364 8007E764 46086032 */  c.eq.s     $f12, $f8
/* 7F368 8007E768 00000000 */  nop
/* 7F36C 8007E76C 4500009B */  bc1f       .L8007E9DC
/* 7F370 8007E770 00000000 */   nop
/* 7F374 8007E774 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7F378 8007E778 00000000 */  nop
/* 7F37C 8007E77C 46066032 */  c.eq.s     $f12, $f6
/* 7F380 8007E780 00000000 */  nop
/* 7F384 8007E784 45000095 */  bc1f       .L8007E9DC
/* 7F388 8007E788 00000000 */   nop
/* 7F38C 8007E78C 8C6B018C */  lw         $t3, 0x18c($v1)
/* 7F390 8007E790 00000000 */  nop
/* 7F394 8007E794 256C0008 */  addiu      $t4, $t3, 8
/* 7F398 8007E798 10000090 */  b          .L8007E9DC
/* 7F39C 8007E79C AC6C018C */   sw        $t4, 0x18c($v1)
/* 7F3A0 8007E7A0 444DF800 */  cfc1       $t5, $31
/* 7F3A4 8007E7A4 240E0001 */  addiu      $t6, $zero, 1
/* 7F3A8 8007E7A8 44CEF800 */  ctc1       $t6, $31
/* 7F3AC 8007E7AC C4AA0144 */  lwc1       $f10, 0x144($a1)
/* 7F3B0 8007E7B0 3C014F00 */  lui        $at, 0x4f00
/* 7F3B4 8007E7B4 460054A4 */  cvt.w.s    $f18, $f10
/* 7F3B8 8007E7B8 444EF800 */  cfc1       $t6, $31
/* 7F3BC 8007E7BC 00000000 */  nop
/* 7F3C0 8007E7C0 31CE0078 */  andi       $t6, $t6, 0x78
/* 7F3C4 8007E7C4 11C00012 */  beqz       $t6, .L8007E810
/* 7F3C8 8007E7C8 00000000 */   nop
/* 7F3CC 8007E7CC 44819000 */  mtc1       $at, $f18
/* 7F3D0 8007E7D0 240E0001 */  addiu      $t6, $zero, 1
/* 7F3D4 8007E7D4 46125481 */  sub.s      $f18, $f10, $f18
/* 7F3D8 8007E7D8 3C018000 */  lui        $at, 0x8000
/* 7F3DC 8007E7DC 44CEF800 */  ctc1       $t6, $31
/* 7F3E0 8007E7E0 00000000 */  nop
/* 7F3E4 8007E7E4 460094A4 */  cvt.w.s    $f18, $f18
/* 7F3E8 8007E7E8 444EF800 */  cfc1       $t6, $31
/* 7F3EC 8007E7EC 00000000 */  nop
/* 7F3F0 8007E7F0 31CE0078 */  andi       $t6, $t6, 0x78
/* 7F3F4 8007E7F4 15C00004 */  bnez       $t6, .L8007E808
/* 7F3F8 8007E7F8 00000000 */   nop
/* 7F3FC 8007E7FC 440E9000 */  mfc1       $t6, $f18
/* 7F400 8007E800 10000007 */  b          .L8007E820
/* 7F404 8007E804 01C17025 */   or        $t6, $t6, $at
.L8007E808:
/* 7F408 8007E808 10000005 */  b          .L8007E820
/* 7F40C 8007E80C 240EFFFF */   addiu     $t6, $zero, -1
.L8007E810:
/* 7F410 8007E810 440E9000 */  mfc1       $t6, $f18
/* 7F414 8007E814 00000000 */  nop
/* 7F418 8007E818 05C0FFFB */  bltz       $t6, .L8007E808
/* 7F41C 8007E81C 00000000 */   nop
.L8007E820:
/* 7F420 8007E820 000EC040 */  sll        $t8, $t6, 1
/* 7F424 8007E824 271902D2 */  addiu      $t9, $t8, 0x2d2
/* 7F428 8007E828 A4790084 */  sh         $t9, 0x84($v1)
/* 7F42C 8007E82C 44CDF800 */  ctc1       $t5, $31
/* 7F430 8007E830 C4B00138 */  lwc1       $f16, 0x138($a1)
/* 7F434 8007E834 00000000 */  nop
/* 7F438 8007E838 46106032 */  c.eq.s     $f12, $f16
/* 7F43C 8007E83C 00000000 */  nop
/* 7F440 8007E840 45000066 */  bc1f       .L8007E9DC
/* 7F444 8007E844 00000000 */   nop
/* 7F448 8007E848 C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7F44C 8007E84C 00000000 */  nop
/* 7F450 8007E850 46046032 */  c.eq.s     $f12, $f4
/* 7F454 8007E854 00000000 */  nop
/* 7F458 8007E858 45000060 */  bc1f       .L8007E9DC
/* 7F45C 8007E85C 00000000 */   nop
/* 7F460 8007E860 C4A80140 */  lwc1       $f8, 0x140($a1)
/* 7F464 8007E864 00000000 */  nop
/* 7F468 8007E868 46086032 */  c.eq.s     $f12, $f8
/* 7F46C 8007E86C 00000000 */  nop
/* 7F470 8007E870 4500005A */  bc1f       .L8007E9DC
/* 7F474 8007E874 00000000 */   nop
/* 7F478 8007E878 C4A60144 */  lwc1       $f6, 0x144($a1)
/* 7F47C 8007E87C 00000000 */  nop
/* 7F480 8007E880 46066032 */  c.eq.s     $f12, $f6
/* 7F484 8007E884 00000000 */  nop
/* 7F488 8007E888 45000054 */  bc1f       .L8007E9DC
/* 7F48C 8007E88C 00000000 */   nop
/* 7F490 8007E890 8C68018C */  lw         $t0, 0x18c($v1)
/* 7F494 8007E894 00000000 */  nop
/* 7F498 8007E898 25090008 */  addiu      $t1, $t0, 8
/* 7F49C 8007E89C 1000004F */  b          .L8007E9DC
/* 7F4A0 8007E8A0 AC69018C */   sw        $t1, 0x18c($v1)
/* 7F4A4 8007E8A4 846A008C */  lh         $t2, 0x8c($v1)
/* 7F4A8 8007E8A8 A4710084 */  sh         $s1, 0x84($v1)
/* 7F4AC 8007E8AC 254BFFFE */  addiu      $t3, $t2, -2
/* 7F4B0 8007E8B0 1000004A */  b          .L8007E9DC
/* 7F4B4 8007E8B4 A46B008C */   sh        $t3, 0x8c($v1)
/* 7F4B8 8007E8B8 444CF800 */  cfc1       $t4, $31
/* 7F4BC 8007E8BC 240D0001 */  addiu      $t5, $zero, 1
/* 7F4C0 8007E8C0 44CDF800 */  ctc1       $t5, $31
/* 7F4C4 8007E8C4 C4AA0148 */  lwc1       $f10, 0x148($a1)
/* 7F4C8 8007E8C8 3C014F00 */  lui        $at, 0x4f00
/* 7F4CC 8007E8CC 460054A4 */  cvt.w.s    $f18, $f10
/* 7F4D0 8007E8D0 444DF800 */  cfc1       $t5, $31
/* 7F4D4 8007E8D4 00000000 */  nop
/* 7F4D8 8007E8D8 31AD0078 */  andi       $t5, $t5, 0x78
/* 7F4DC 8007E8DC 11A00012 */  beqz       $t5, .L8007E928
/* 7F4E0 8007E8E0 00000000 */   nop
/* 7F4E4 8007E8E4 44819000 */  mtc1       $at, $f18
/* 7F4E8 8007E8E8 240D0001 */  addiu      $t5, $zero, 1
/* 7F4EC 8007E8EC 46125481 */  sub.s      $f18, $f10, $f18
/* 7F4F0 8007E8F0 3C018000 */  lui        $at, 0x8000
/* 7F4F4 8007E8F4 44CDF800 */  ctc1       $t5, $31
/* 7F4F8 8007E8F8 00000000 */  nop
/* 7F4FC 8007E8FC 460094A4 */  cvt.w.s    $f18, $f18
/* 7F500 8007E900 444DF800 */  cfc1       $t5, $31
/* 7F504 8007E904 00000000 */  nop
/* 7F508 8007E908 31AD0078 */  andi       $t5, $t5, 0x78
/* 7F50C 8007E90C 15A00004 */  bnez       $t5, .L8007E920
/* 7F510 8007E910 00000000 */   nop
/* 7F514 8007E914 440D9000 */  mfc1       $t5, $f18
/* 7F518 8007E918 10000007 */  b          .L8007E938
/* 7F51C 8007E91C 01A16825 */   or        $t5, $t5, $at
.L8007E920:
/* 7F520 8007E920 10000005 */  b          .L8007E938
/* 7F524 8007E924 240DFFFF */   addiu     $t5, $zero, -1
.L8007E928:
/* 7F528 8007E928 440D9000 */  mfc1       $t5, $f18
/* 7F52C 8007E92C 00000000 */  nop
/* 7F530 8007E930 05A0FFFB */  bltz       $t5, .L8007E920
/* 7F534 8007E934 00000000 */   nop
.L8007E938:
/* 7F538 8007E938 000D7840 */  sll        $t7, $t5, 1
/* 7F53C 8007E93C 25F802D2 */  addiu      $t8, $t7, 0x2d2
/* 7F540 8007E940 44CCF800 */  ctc1       $t4, $31
/* 7F544 8007E944 10000025 */  b          .L8007E9DC
/* 7F548 8007E948 A4780084 */   sh        $t8, 0x84($v1)
/* 7F54C 8007E94C 4459F800 */  cfc1       $t9, $31
/* 7F550 8007E950 24080001 */  addiu      $t0, $zero, 1
/* 7F554 8007E954 44C8F800 */  ctc1       $t0, $31
/* 7F558 8007E958 C4B0014C */  lwc1       $f16, 0x14c($a1)
/* 7F55C 8007E95C 3C014F00 */  lui        $at, 0x4f00
/* 7F560 8007E960 46008124 */  cvt.w.s    $f4, $f16
/* 7F564 8007E964 4448F800 */  cfc1       $t0, $31
/* 7F568 8007E968 00000000 */  nop
/* 7F56C 8007E96C 31080078 */  andi       $t0, $t0, 0x78
/* 7F570 8007E970 11000012 */  beqz       $t0, .L8007E9BC
/* 7F574 8007E974 00000000 */   nop
/* 7F578 8007E978 44812000 */  mtc1       $at, $f4
/* 7F57C 8007E97C 24080001 */  addiu      $t0, $zero, 1
/* 7F580 8007E980 46048101 */  sub.s      $f4, $f16, $f4
/* 7F584 8007E984 3C018000 */  lui        $at, 0x8000
/* 7F588 8007E988 44C8F800 */  ctc1       $t0, $31
/* 7F58C 8007E98C 00000000 */  nop
/* 7F590 8007E990 46002124 */  cvt.w.s    $f4, $f4
/* 7F594 8007E994 4448F800 */  cfc1       $t0, $31
/* 7F598 8007E998 00000000 */  nop
/* 7F59C 8007E99C 31080078 */  andi       $t0, $t0, 0x78
/* 7F5A0 8007E9A0 15000004 */  bnez       $t0, .L8007E9B4
/* 7F5A4 8007E9A4 00000000 */   nop
/* 7F5A8 8007E9A8 44082000 */  mfc1       $t0, $f4
/* 7F5AC 8007E9AC 10000007 */  b          .L8007E9CC
/* 7F5B0 8007E9B0 01014025 */   or        $t0, $t0, $at
.L8007E9B4:
/* 7F5B4 8007E9B4 10000005 */  b          .L8007E9CC
/* 7F5B8 8007E9B8 2408FFFF */   addiu     $t0, $zero, -1
.L8007E9BC:
/* 7F5BC 8007E9BC 44082000 */  mfc1       $t0, $f4
/* 7F5C0 8007E9C0 00000000 */  nop
/* 7F5C4 8007E9C4 0500FFFB */  bltz       $t0, .L8007E9B4
/* 7F5C8 8007E9C8 00000000 */   nop
.L8007E9CC:
/* 7F5CC 8007E9CC 00085040 */  sll        $t2, $t0, 1
/* 7F5D0 8007E9D0 44D9F800 */  ctc1       $t9, $31
/* 7F5D4 8007E9D4 254B02D2 */  addiu      $t3, $t2, 0x2d2
/* 7F5D8 8007E9D8 A46B0084 */  sh         $t3, 0x84($v1)
.L8007E9DC:
/* 7F5DC 8007E9DC 24C60001 */  addiu      $a2, $a2, 1
/* 7F5E0 8007E9E0 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 7F5E4 8007E9E4 29810008 */  slti       $at, $t4, 8
/* 7F5E8 8007E9E8 1420FE77 */  bnez       $at, .L8007E3C8
/* 7F5EC 8007E9EC 01803025 */   or        $a2, $t4, $zero
.L8007E9F0:
/* 7F5F0 8007E9F0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 7F5F4 8007E9F4 C7B50010 */  lwc1       $f21, 0x10($sp)
/* 7F5F8 8007E9F8 C7B40014 */  lwc1       $f20, 0x14($sp)
/* 7F5FC 8007E9FC C7B70018 */  lwc1       $f23, 0x18($sp)
/* 7F600 8007EA00 C7B6001C */  lwc1       $f22, 0x1c($sp)
/* 7F604 8007EA04 8FB00024 */  lw         $s0, 0x24($sp)
/* 7F608 8007EA08 8FB10028 */  lw         $s1, 0x28($sp)
/* 7F60C 8007EA0C 03E00008 */  jr         $ra
/* 7F610 8007EA10 27BD0040 */   addiu     $sp, $sp, 0x40
