glabel func_80041018
/* 41C18 80041018 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 41C1C 8004101C AFA40038 */  sw         $a0, 0x38($sp)
/* 41C20 80041020 97AE003A */  lhu        $t6, 0x3a($sp)
/* 41C24 80041024 3C18800F */  lui        $t8, 0x800f
/* 41C28 80041028 000E7880 */  sll        $t7, $t6, 2
/* 41C2C 8004102C 01EE7823 */  subu       $t7, $t7, $t6
/* 41C30 80041030 000F7880 */  sll        $t7, $t7, 2
/* 41C34 80041034 01EE7821 */  addu       $t7, $t7, $t6
/* 41C38 80041038 000F7880 */  sll        $t7, $t7, 2
/* 41C3C 8004103C 01EE7823 */  subu       $t7, $t7, $t6
/* 41C40 80041040 AFB00018 */  sw         $s0, 0x18($sp)
/* 41C44 80041044 000F78C0 */  sll        $t7, $t7, 3
/* 41C48 80041048 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 41C4C 8004104C 01F88021 */  addu       $s0, $t7, $t8
/* 41C50 80041050 4459F800 */  cfc1       $t9, $31
/* 41C54 80041054 24080001 */  addiu      $t0, $zero, 1
/* 41C58 80041058 44C8F800 */  ctc1       $t0, $31
/* 41C5C 8004105C C6040120 */  lwc1       $f4, 0x120($s0)
/* 41C60 80041060 AFBF001C */  sw         $ra, 0x1c($sp)
/* 41C64 80041064 460021A4 */  cvt.w.s    $f6, $f4
/* 41C68 80041068 4448F800 */  cfc1       $t0, $31
/* 41C6C 8004106C 00000000 */  nop
/* 41C70 80041070 31080078 */  andi       $t0, $t0, 0x78
/* 41C74 80041074 11000012 */  beqz       $t0, .L800410C0
/* 41C78 80041078 3C014F00 */   lui       $at, 0x4f00
/* 41C7C 8004107C 44813000 */  mtc1       $at, $f6
/* 41C80 80041080 24080001 */  addiu      $t0, $zero, 1
/* 41C84 80041084 46062181 */  sub.s      $f6, $f4, $f6
/* 41C88 80041088 3C018000 */  lui        $at, 0x8000
/* 41C8C 8004108C 44C8F800 */  ctc1       $t0, $31
/* 41C90 80041090 00000000 */  nop
/* 41C94 80041094 460031A4 */  cvt.w.s    $f6, $f6
/* 41C98 80041098 4448F800 */  cfc1       $t0, $31
/* 41C9C 8004109C 00000000 */  nop
/* 41CA0 800410A0 31080078 */  andi       $t0, $t0, 0x78
/* 41CA4 800410A4 15000004 */  bnez       $t0, .L800410B8
/* 41CA8 800410A8 00000000 */   nop
/* 41CAC 800410AC 44083000 */  mfc1       $t0, $f6
/* 41CB0 800410B0 10000007 */  b          .L800410D0
/* 41CB4 800410B4 01014025 */   or        $t0, $t0, $at
.L800410B8:
/* 41CB8 800410B8 10000005 */  b          .L800410D0
/* 41CBC 800410BC 2408FFFF */   addiu     $t0, $zero, -1
.L800410C0:
/* 41CC0 800410C0 44083000 */  mfc1       $t0, $f6
/* 41CC4 800410C4 00000000 */  nop
/* 41CC8 800410C8 0500FFFB */  bltz       $t0, .L800410B8
/* 41CCC 800410CC 00000000 */   nop
.L800410D0:
/* 41CD0 800410D0 44D9F800 */  ctc1       $t9, $31
/* 41CD4 800410D4 240B0001 */  addiu      $t3, $zero, 1
/* 41CD8 800410D8 C6080110 */  lwc1       $f8, 0x110($s0)
/* 41CDC 800410DC 444AF800 */  cfc1       $t2, $31
/* 41CE0 800410E0 44CBF800 */  ctc1       $t3, $31
/* 41CE4 800410E4 A208009F */  sb         $t0, 0x9f($s0)
/* 41CE8 800410E8 460042A4 */  cvt.w.s    $f10, $f8
/* 41CEC 800410EC 3C014F00 */  lui        $at, 0x4f00
/* 41CF0 800410F0 444BF800 */  cfc1       $t3, $31
/* 41CF4 800410F4 00000000 */  nop
/* 41CF8 800410F8 316B0078 */  andi       $t3, $t3, 0x78
/* 41CFC 800410FC 11600012 */  beqz       $t3, .L80041148
/* 41D00 80041100 00000000 */   nop
/* 41D04 80041104 44815000 */  mtc1       $at, $f10
/* 41D08 80041108 240B0001 */  addiu      $t3, $zero, 1
/* 41D0C 8004110C 460A4281 */  sub.s      $f10, $f8, $f10
/* 41D10 80041110 3C018000 */  lui        $at, 0x8000
/* 41D14 80041114 44CBF800 */  ctc1       $t3, $31
/* 41D18 80041118 00000000 */  nop
/* 41D1C 8004111C 460052A4 */  cvt.w.s    $f10, $f10
/* 41D20 80041120 444BF800 */  cfc1       $t3, $31
/* 41D24 80041124 00000000 */  nop
/* 41D28 80041128 316B0078 */  andi       $t3, $t3, 0x78
/* 41D2C 8004112C 15600004 */  bnez       $t3, .L80041140
/* 41D30 80041130 00000000 */   nop
/* 41D34 80041134 440B5000 */  mfc1       $t3, $f10
/* 41D38 80041138 10000007 */  b          .L80041158
/* 41D3C 8004113C 01615825 */   or        $t3, $t3, $at
.L80041140:
/* 41D40 80041140 10000005 */  b          .L80041158
/* 41D44 80041144 240BFFFF */   addiu     $t3, $zero, -1
.L80041148:
/* 41D48 80041148 440B5000 */  mfc1       $t3, $f10
/* 41D4C 8004114C 00000000 */  nop
/* 41D50 80041150 0560FFFB */  bltz       $t3, .L80041140
/* 41D54 80041154 00000000 */   nop
.L80041158:
/* 41D58 80041158 44CAF800 */  ctc1       $t2, $31
/* 41D5C 8004115C 316D000F */  andi       $t5, $t3, 0xf
/* 41D60 80041160 24010001 */  addiu      $at, $zero, 1
/* 41D64 80041164 15A10016 */  bne        $t5, $at, .L800411C0
/* 41D68 80041168 00000000 */   nop
/* 41D6C 8004116C C610011C */  lwc1       $f16, 0x11c($s0)
/* 41D70 80041170 3C02800C */  lui        $v0, %hi(D_800BE4E0)
/* 41D74 80041174 460084A1 */  cvt.d.s    $f18, $f16
/* 41D78 80041178 46209120 */  cvt.s.d    $f4, $f18
/* 41D7C 8004117C 3C18800E */  lui        $t8, %hi(D_800D8528)
/* 41D80 80041180 E60400B4 */  swc1       $f4, 0xb4($s0)
/* 41D84 80041184 9442E4E0 */  lhu        $v0, %lo(D_800BE4E0)($v0)
/* 41D88 80041188 27188528 */  addiu      $t8, $t8, %lo(D_800D8528)
/* 41D8C 8004118C 304E0010 */  andi       $t6, $v0, 0x10
/* 41D90 80041190 11C00005 */  beqz       $t6, .L800411A8
/* 41D94 80041194 0002C880 */   sll       $t9, $v0, 2
/* 41D98 80041198 3C0F8022 */  lui        $t7, 0x8022
/* 41D9C 8004119C 35EFD548 */  ori        $t7, $t7, 0xd548
/* 41DA0 800411A0 10000002 */  b          .L800411AC
/* 41DA4 800411A4 AE0F018C */   sw        $t7, 0x18c($s0)
.L800411A8:
/* 41DA8 800411A8 AE18018C */  sw         $t8, 0x18c($s0)
.L800411AC:
/* 41DAC 800411AC 0322C823 */  subu       $t9, $t9, $v0
/* 41DB0 800411B0 3328003F */  andi       $t0, $t9, 0x3f
/* 41DB4 800411B4 25090020 */  addiu      $t1, $t0, 0x20
/* 41DB8 800411B8 1000001A */  b          .L80041224
/* 41DBC 800411BC A209009D */   sb        $t1, 0x9d($s0)
.L800411C0:
/* 41DC0 800411C0 3C01800F */  lui        $at, %hi(D_800EBCD0)
/* 41DC4 800411C4 C606011C */  lwc1       $f6, 0x11c($s0)
/* 41DC8 800411C8 C42BBCD0 */  lwc1       $f11, %lo(D_800EBCD0)($at)
/* 41DCC 800411CC C42ABCD4 */  lwc1       $f10, -0x432c($at)
/* 41DD0 800411D0 46003221 */  cvt.d.s    $f8, $f6
/* 41DD4 800411D4 462A4402 */  mul.d      $f16, $f8, $f10
/* 41DD8 800411D8 3C02800C */  lui        $v0, 0x800c
/* 41DDC 800411DC 3C0B8022 */  lui        $t3, 0x8022
/* 41DE0 800411E0 3C0C800E */  lui        $t4, %hi(D_800D8548)
/* 41DE4 800411E4 356BD4E8 */  ori        $t3, $t3, 0xd4e8
/* 41DE8 800411E8 462084A0 */  cvt.s.d    $f18, $f16
/* 41DEC 800411EC 258C8548 */  addiu      $t4, $t4, %lo(D_800D8548)
/* 41DF0 800411F0 E61200B4 */  swc1       $f18, 0xb4($s0)
/* 41DF4 800411F4 9442E4E0 */  lhu        $v0, -0x1b20($v0)
/* 41DF8 800411F8 00000000 */  nop
/* 41DFC 800411FC 304A0010 */  andi       $t2, $v0, 0x10
/* 41E00 80041200 11400003 */  beqz       $t2, .L80041210
/* 41E04 80041204 00026880 */   sll       $t5, $v0, 2
/* 41E08 80041208 10000002 */  b          .L80041214
/* 41E0C 8004120C AE0B018C */   sw        $t3, 0x18c($s0)
.L80041210:
/* 41E10 80041210 AE0C018C */  sw         $t4, 0x18c($s0)
.L80041214:
/* 41E14 80041214 01A26823 */  subu       $t5, $t5, $v0
/* 41E18 80041218 31AE003F */  andi       $t6, $t5, 0x3f
/* 41E1C 8004121C 25CF0020 */  addiu      $t7, $t6, 0x20
/* 41E20 80041220 A20F009C */  sb         $t7, 0x9c($s0)
.L80041224:
/* 41E24 80041224 C60C0148 */  lwc1       $f12, 0x148($s0)
/* 41E28 80041228 C60400C0 */  lwc1       $f4, 0xc0($s0)
/* 41E2C 8004122C 30580100 */  andi       $t8, $v0, 0x100
/* 41E30 80041230 460C2180 */  add.s      $f6, $f4, $f12
/* 41E34 80041234 13000008 */  beqz       $t8, .L80041258
/* 41E38 80041238 E60600C0 */   swc1      $f6, 0xc0($s0)
/* 41E3C 8004123C 3C0141A0 */  lui        $at, 0x41a0
/* 41E40 80041240 44817000 */  mtc1       $at, $f14
/* 41E44 80041244 3C063E4C */  lui        $a2, 0x3e4c
/* 41E48 80041248 0C00A618 */  jal        func_80029860
/* 41E4C 8004124C 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 41E50 80041250 10000007 */  b          .L80041270
/* 41E54 80041254 E6000148 */   swc1      $f0, 0x148($s0)
.L80041258:
/* 41E58 80041258 3C01C1A0 */  lui        $at, 0xc1a0
/* 41E5C 8004125C 44817000 */  mtc1       $at, $f14
/* 41E60 80041260 3C063E4C */  lui        $a2, 0x3e4c
/* 41E64 80041264 0C00A618 */  jal        func_80029860
/* 41E68 80041268 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 41E6C 8004126C E6000148 */  swc1       $f0, 0x148($s0)
.L80041270:
/* 41E70 80041270 4459F800 */  cfc1       $t9, $31
/* 41E74 80041274 C6080148 */  lwc1       $f8, 0x148($s0)
/* 41E78 80041278 37210003 */  ori        $at, $t9, 3
/* 41E7C 8004127C 38210002 */  xori       $at, $at, 2
/* 41E80 80041280 44C1F800 */  ctc1       $at, $31
/* 41E84 80041284 00000000 */  nop
/* 41E88 80041288 460042A4 */  cvt.w.s    $f10, $f8
/* 41E8C 8004128C 44045000 */  mfc1       $a0, $f10
/* 41E90 80041290 44D9F800 */  ctc1       $t9, $31
/* 41E94 80041294 0C00A273 */  jal        func_800289CC
/* 41E98 80041298 00000000 */   nop
/* 41E9C 8004129C 44829000 */  mtc1       $v0, $f18
/* 41EA0 800412A0 C610012C */  lwc1       $f16, 0x12c($s0)
/* 41EA4 800412A4 46809120 */  cvt.s.w    $f4, $f18
/* 41EA8 800412A8 24090001 */  addiu      $t1, $zero, 1
/* 41EAC 800412AC C6080110 */  lwc1       $f8, 0x110($s0)
/* 41EB0 800412B0 46048180 */  add.s      $f6, $f16, $f4
/* 41EB4 800412B4 3C014F00 */  lui        $at, 0x4f00
/* 41EB8 800412B8 4448F800 */  cfc1       $t0, $31
/* 41EBC 800412BC 44C9F800 */  ctc1       $t1, $31
/* 41EC0 800412C0 E606012C */  swc1       $f6, 0x12c($s0)
/* 41EC4 800412C4 460042A4 */  cvt.w.s    $f10, $f8
/* 41EC8 800412C8 4449F800 */  cfc1       $t1, $31
/* 41ECC 800412CC 00000000 */  nop
/* 41ED0 800412D0 31290078 */  andi       $t1, $t1, 0x78
/* 41ED4 800412D4 11200012 */  beqz       $t1, .L80041320
/* 41ED8 800412D8 00000000 */   nop
/* 41EDC 800412DC 44815000 */  mtc1       $at, $f10
/* 41EE0 800412E0 24090001 */  addiu      $t1, $zero, 1
/* 41EE4 800412E4 460A4281 */  sub.s      $f10, $f8, $f10
/* 41EE8 800412E8 3C018000 */  lui        $at, 0x8000
/* 41EEC 800412EC 44C9F800 */  ctc1       $t1, $31
/* 41EF0 800412F0 00000000 */  nop
/* 41EF4 800412F4 460052A4 */  cvt.w.s    $f10, $f10
/* 41EF8 800412F8 4449F800 */  cfc1       $t1, $31
/* 41EFC 800412FC 00000000 */  nop
/* 41F00 80041300 31290078 */  andi       $t1, $t1, 0x78
/* 41F04 80041304 15200004 */  bnez       $t1, .L80041318
/* 41F08 80041308 00000000 */   nop
/* 41F0C 8004130C 44095000 */  mfc1       $t1, $f10
/* 41F10 80041310 10000007 */  b          .L80041330
/* 41F14 80041314 01214825 */   or        $t1, $t1, $at
.L80041318:
/* 41F18 80041318 10000005 */  b          .L80041330
/* 41F1C 8004131C 2409FFFF */   addiu     $t1, $zero, -1
.L80041320:
/* 41F20 80041320 44095000 */  mfc1       $t1, $f10
/* 41F24 80041324 00000000 */  nop
/* 41F28 80041328 0520FFFB */  bltz       $t1, .L80041318
/* 41F2C 8004132C 00000000 */   nop
.L80041330:
/* 41F30 80041330 44C8F800 */  ctc1       $t0, $31
/* 41F34 80041334 312B0080 */  andi       $t3, $t1, 0x80
/* 41F38 80041338 11600010 */  beqz       $t3, .L8004137C
/* 41F3C 8004133C 3C0143B4 */   lui       $at, 0x43b4
/* 41F40 80041340 44819000 */  mtc1       $at, $f18
/* 41F44 80041344 C610012C */  lwc1       $f16, 0x12c($s0)
/* 41F48 80041348 97A5003A */  lhu        $a1, 0x3a($sp)
/* 41F4C 8004134C 4610903C */  c.lt.s     $f18, $f16
/* 41F50 80041350 00000000 */  nop
/* 41F54 80041354 45000009 */  bc1f       .L8004137C
/* 41F58 80041358 00000000 */   nop
/* 41F5C 8004135C 0C000DDE */  jal        func_80003778
/* 41F60 80041360 24040140 */   addiu     $a0, $zero, 0x140
/* 41F64 80041364 3C0143B4 */  lui        $at, 0x43b4
/* 41F68 80041368 44813000 */  mtc1       $at, $f6
/* 41F6C 8004136C C604012C */  lwc1       $f4, 0x12c($s0)
/* 41F70 80041370 00000000 */  nop
/* 41F74 80041374 46062201 */  sub.s      $f8, $f4, $f6
/* 41F78 80041378 E608012C */  swc1       $f8, 0x12c($s0)
.L8004137C:
/* 41F7C 8004137C C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 41F80 80041380 97A4003A */  lhu        $a0, 0x3a($sp)
/* 41F84 80041384 24050020 */  addiu      $a1, $zero, 0x20
/* 41F88 80041388 0C00A23B */  jal        func_800288EC
/* 41F8C 8004138C E60A00B8 */   swc1      $f10, 0xb8($s0)
/* 41F90 80041390 1440005C */  bnez       $v0, .L80041504
/* 41F94 80041394 97A4003A */   lhu       $a0, 0x3a($sp)
/* 41F98 80041398 86070090 */  lh         $a3, 0x90($s0)
/* 41F9C 8004139C 96040084 */  lhu        $a0, 0x84($s0)
/* 41FA0 800413A0 86050088 */  lh         $a1, 0x88($s0)
/* 41FA4 800413A4 8606008C */  lh         $a2, 0x8c($s0)
/* 41FA8 800413A8 0C00C4A1 */  jal        func_80031284
/* 41FAC 800413AC 24E70001 */   addiu     $a3, $a3, 1
/* 41FB0 800413B0 10400053 */  beqz       $v0, .L80041500
/* 41FB4 800413B4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 41FB8 800413B8 00046080 */  sll        $t4, $a0, 2
/* 41FBC 800413BC 01846023 */  subu       $t4, $t4, $a0
/* 41FC0 800413C0 000C6080 */  sll        $t4, $t4, 2
/* 41FC4 800413C4 01846021 */  addu       $t4, $t4, $a0
/* 41FC8 800413C8 000C6080 */  sll        $t4, $t4, 2
/* 41FCC 800413CC 01846023 */  subu       $t4, $t4, $a0
/* 41FD0 800413D0 3C0D800F */  lui        $t5, %hi(D_800EF510)
/* 41FD4 800413D4 960E0094 */  lhu        $t6, 0x94($s0)
/* 41FD8 800413D8 25ADF510 */  addiu      $t5, $t5, %lo(D_800EF510)
/* 41FDC 800413DC 000C60C0 */  sll        $t4, $t4, 3
/* 41FE0 800413E0 018D1021 */  addu       $v0, $t4, $t5
/* 41FE4 800413E4 A44E0094 */  sh         $t6, 0x94($v0)
/* 41FE8 800413E8 8E0F018C */  lw         $t7, 0x18c($s0)
/* 41FEC 800413EC 44809000 */  mtc1       $zero, $f18
/* 41FF0 800413F0 AC4F018C */  sw         $t7, 0x18c($v0)
/* 41FF4 800413F4 E4520148 */  swc1       $f18, 0x148($v0)
/* 41FF8 800413F8 C61000B4 */  lwc1       $f16, 0xb4($s0)
/* 41FFC 800413FC 3C013FF8 */  lui        $at, 0x3ff8
/* 42000 80041400 44813800 */  mtc1       $at, $f7
/* 42004 80041404 44803000 */  mtc1       $zero, $f6
/* 42008 80041408 46008121 */  cvt.d.s    $f4, $f16
/* 4200C 8004140C 46262202 */  mul.d      $f8, $f4, $f6
/* 42010 80041410 AFA20020 */  sw         $v0, 0x20($sp)
/* 42014 80041414 2405007F */  addiu      $a1, $zero, 0x7f
/* 42018 80041418 462042A0 */  cvt.s.d    $f10, $f8
/* 4201C 8004141C E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 42020 80041420 C45200B4 */  lwc1       $f18, 0xb4($v0)
/* 42024 80041424 0C00ABAD */  jal        func_8002AEB4
/* 42028 80041428 E45200B8 */   swc1      $f18, 0xb8($v0)
/* 4202C 8004142C 3C0142B4 */  lui        $at, 0x42b4
/* 42030 80041430 44812000 */  mtc1       $at, $f4
/* 42034 80041434 C61000C0 */  lwc1       $f16, 0xc0($s0)
/* 42038 80041438 8FA20020 */  lw         $v0, 0x20($sp)
/* 4203C 8004143C 46048180 */  add.s      $f6, $f16, $f4
/* 42040 80041440 3C014F80 */  lui        $at, 0x4f80
/* 42044 80041444 E44600C0 */  swc1       $f6, 0xc0($v0)
/* 42048 80041448 9218009F */  lbu        $t8, 0x9f($s0)
/* 4204C 8004144C 00000000 */  nop
/* 42050 80041450 44984000 */  mtc1       $t8, $f8
/* 42054 80041454 07010004 */  bgez       $t8, .L80041468
/* 42058 80041458 468042A0 */   cvt.s.w   $f10, $f8
/* 4205C 8004145C 44819000 */  mtc1       $at, $f18
/* 42060 80041460 00000000 */  nop
/* 42064 80041464 46125280 */  add.s      $f10, $f10, $f18
.L80041468:
/* 42068 80041468 3C014040 */  lui        $at, 0x4040
/* 4206C 8004146C 44818000 */  mtc1       $at, $f16
/* 42070 80041470 24080001 */  addiu      $t0, $zero, 1
/* 42074 80041474 46105103 */  div.s      $f4, $f10, $f16
/* 42078 80041478 3C014F00 */  lui        $at, 0x4f00
/* 4207C 8004147C 4459F800 */  cfc1       $t9, $31
/* 42080 80041480 44C8F800 */  ctc1       $t0, $31
/* 42084 80041484 00000000 */  nop
/* 42088 80041488 460021A4 */  cvt.w.s    $f6, $f4
/* 4208C 8004148C 4448F800 */  cfc1       $t0, $31
/* 42090 80041490 00000000 */  nop
/* 42094 80041494 31080078 */  andi       $t0, $t0, 0x78
/* 42098 80041498 11000012 */  beqz       $t0, .L800414E4
/* 4209C 8004149C 00000000 */   nop
/* 420A0 800414A0 44813000 */  mtc1       $at, $f6
/* 420A4 800414A4 24080001 */  addiu      $t0, $zero, 1
/* 420A8 800414A8 46062181 */  sub.s      $f6, $f4, $f6
/* 420AC 800414AC 3C018000 */  lui        $at, 0x8000
/* 420B0 800414B0 44C8F800 */  ctc1       $t0, $31
/* 420B4 800414B4 00000000 */  nop
/* 420B8 800414B8 460031A4 */  cvt.w.s    $f6, $f6
/* 420BC 800414BC 4448F800 */  cfc1       $t0, $31
/* 420C0 800414C0 00000000 */  nop
/* 420C4 800414C4 31080078 */  andi       $t0, $t0, 0x78
/* 420C8 800414C8 15000004 */  bnez       $t0, .L800414DC
/* 420CC 800414CC 00000000 */   nop
/* 420D0 800414D0 44083000 */  mfc1       $t0, $f6
/* 420D4 800414D4 10000007 */  b          .L800414F4
/* 420D8 800414D8 01014025 */   or        $t0, $t0, $at
.L800414DC:
/* 420DC 800414DC 10000005 */  b          .L800414F4
/* 420E0 800414E0 2408FFFF */   addiu     $t0, $zero, -1
.L800414E4:
/* 420E4 800414E4 44083000 */  mfc1       $t0, $f6
/* 420E8 800414E8 00000000 */  nop
/* 420EC 800414EC 0500FFFB */  bltz       $t0, .L800414DC
/* 420F0 800414F0 00000000 */   nop
.L800414F4:
/* 420F4 800414F4 44D9F800 */  ctc1       $t9, $31
/* 420F8 800414F8 A048009F */  sb         $t0, 0x9f($v0)
/* 420FC 800414FC 00000000 */  nop
.L80041500:
/* 42100 80041500 97A4003A */  lhu        $a0, 0x3a($sp)
.L80041504:
/* 42104 80041504 0C010382 */  jal        func_80040E08
/* 42108 80041508 00002825 */   or        $a1, $zero, $zero
/* 4210C 8004150C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 42110 80041510 8FB00018 */  lw         $s0, 0x18($sp)
/* 42114 80041514 03E00008 */  jr         $ra
/* 42118 80041518 27BD0038 */   addiu     $sp, $sp, 0x38
