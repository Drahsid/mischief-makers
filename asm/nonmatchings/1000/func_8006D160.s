glabel func_8006D160
/* 6DD60 8006D160 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6DD64 8006D164 AFA40028 */  sw         $a0, 0x28($sp)
/* 6DD68 8006D168 97AE002A */  lhu        $t6, 0x2a($sp)
/* 6DD6C 8006D16C 3C18800F */  lui        $t8, 0x800f
/* 6DD70 8006D170 000E7880 */  sll        $t7, $t6, 2
/* 6DD74 8006D174 01EE7823 */  subu       $t7, $t7, $t6
/* 6DD78 8006D178 000F7880 */  sll        $t7, $t7, 2
/* 6DD7C 8006D17C 01EE7821 */  addu       $t7, $t7, $t6
/* 6DD80 8006D180 000F7880 */  sll        $t7, $t7, 2
/* 6DD84 8006D184 01EE7823 */  subu       $t7, $t7, $t6
/* 6DD88 8006D188 000F78C0 */  sll        $t7, $t7, 3
/* 6DD8C 8006D18C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 6DD90 8006D190 01F81821 */  addu       $v1, $t7, $t8
/* 6DD94 8006D194 947900D0 */  lhu        $t9, 0xd0($v1)
/* 6DD98 8006D198 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6DD9C 8006D19C 1720008D */  bnez       $t9, .L8006D3D4
/* 6DDA0 8006D1A0 24060001 */   addiu     $a2, $zero, 1
/* 6DDA4 8006D1A4 4448F800 */  cfc1       $t0, $31
/* 6DDA8 8006D1A8 44C6F800 */  ctc1       $a2, $31
/* 6DDAC 8006D1AC C4640110 */  lwc1       $f4, 0x110($v1)
/* 6DDB0 8006D1B0 3C0B0010 */  lui        $t3, 0x10
/* 6DDB4 8006D1B4 460021A4 */  cvt.w.s    $f6, $f4
/* 6DDB8 8006D1B8 24070001 */  addiu      $a3, $zero, 1
/* 6DDBC 8006D1BC 4446F800 */  cfc1       $a2, $31
/* 6DDC0 8006D1C0 240A0200 */  addiu      $t2, $zero, 0x200
/* 6DDC4 8006D1C4 30C60078 */  andi       $a2, $a2, 0x78
/* 6DDC8 8006D1C8 10C00013 */  beqz       $a2, .L8006D218
/* 6DDCC 8006D1CC 356B1003 */   ori       $t3, $t3, 0x1003
/* 6DDD0 8006D1D0 3C014F00 */  lui        $at, 0x4f00
/* 6DDD4 8006D1D4 44813000 */  mtc1       $at, $f6
/* 6DDD8 8006D1D8 24060001 */  addiu      $a2, $zero, 1
/* 6DDDC 8006D1DC 46062181 */  sub.s      $f6, $f4, $f6
/* 6DDE0 8006D1E0 3C018000 */  lui        $at, 0x8000
/* 6DDE4 8006D1E4 44C6F800 */  ctc1       $a2, $31
/* 6DDE8 8006D1E8 00000000 */  nop
/* 6DDEC 8006D1EC 460031A4 */  cvt.w.s    $f6, $f6
/* 6DDF0 8006D1F0 4446F800 */  cfc1       $a2, $31
/* 6DDF4 8006D1F4 00000000 */  nop
/* 6DDF8 8006D1F8 30C60078 */  andi       $a2, $a2, 0x78
/* 6DDFC 8006D1FC 14C00004 */  bnez       $a2, .L8006D210
/* 6DE00 8006D200 00000000 */   nop
/* 6DE04 8006D204 44063000 */  mfc1       $a2, $f6
/* 6DE08 8006D208 10000007 */  b          .L8006D228
/* 6DE0C 8006D20C 00C13025 */   or        $a2, $a2, $at
.L8006D210:
/* 6DE10 8006D210 10000005 */  b          .L8006D228
/* 6DE14 8006D214 2406FFFF */   addiu     $a2, $zero, -1
.L8006D218:
/* 6DE18 8006D218 44063000 */  mfc1       $a2, $f6
/* 6DE1C 8006D21C 00000000 */  nop
/* 6DE20 8006D220 04C0FFFB */  bltz       $a2, .L8006D210
/* 6DE24 8006D224 00000000 */   nop
.L8006D228:
/* 6DE28 8006D228 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 6DE2C 8006D22C 3C0C800E */  lui        $t4, %hi(D_800E1700)
/* 6DE30 8006D230 44C8F800 */  ctc1       $t0, $31
/* 6DE34 8006D234 258C1700 */  addiu      $t4, $t4, %lo(D_800E1700)
/* 6DE38 8006D238 312D0100 */  andi       $t5, $t1, 0x100
/* 6DE3C 8006D23C 01203025 */  or         $a2, $t1, $zero
/* 6DE40 8006D240 A46A0094 */  sh         $t2, 0x94($v1)
/* 6DE44 8006D244 AC6B0080 */  sw         $t3, 0x80($v1)
/* 6DE48 8006D248 AC6C00E8 */  sw         $t4, 0xe8($v1)
/* 6DE4C 8006D24C A46700E6 */  sh         $a3, 0xe6($v1)
/* 6DE50 8006D250 11A00006 */  beqz       $t5, .L8006D26C
/* 6DE54 8006D254 AC690150 */   sw        $t1, 0x150($v1)
/* 6DE58 8006D258 3C01BF80 */  lui        $at, 0xbf80
/* 6DE5C 8006D25C 44814000 */  mtc1       $at, $f8
/* 6DE60 8006D260 356F0020 */  ori        $t7, $t3, 0x20
/* 6DE64 8006D264 AC6F0080 */  sw         $t7, 0x80($v1)
/* 6DE68 8006D268 E4680148 */  swc1       $f8, 0x148($v1)
.L8006D26C:
/* 6DE6C 8006D26C 30D82000 */  andi       $t8, $a2, 0x2000
/* 6DE70 8006D270 13000006 */  beqz       $t8, .L8006D28C
/* 6DE74 8006D274 30CB0200 */   andi      $t3, $a2, 0x200
/* 6DE78 8006D278 8C790080 */  lw         $t9, 0x80($v1)
/* 6DE7C 8006D27C 00000000 */  nop
/* 6DE80 8006D280 37280100 */  ori        $t0, $t9, 0x100
/* 6DE84 8006D284 10000005 */  b          .L8006D29C
/* 6DE88 8006D288 AC680080 */   sw        $t0, 0x80($v1)
.L8006D28C:
/* 6DE8C 8006D28C 8C690080 */  lw         $t1, 0x80($v1)
/* 6DE90 8006D290 00000000 */  nop
/* 6DE94 8006D294 352A0400 */  ori        $t2, $t1, 0x400
/* 6DE98 8006D298 AC6A0080 */  sw         $t2, 0x80($v1)
.L8006D29C:
/* 6DE9C 8006D29C 11600003 */  beqz       $t3, .L8006D2AC
/* 6DEA0 8006D2A0 30CD1000 */   andi      $t5, $a2, 0x1000
/* 6DEA4 8006D2A4 240C01D0 */  addiu      $t4, $zero, 0x1d0
/* 6DEA8 8006D2A8 A46C00D0 */  sh         $t4, 0xd0($v1)
.L8006D2AC:
/* 6DEAC 8006D2AC 11A00005 */  beqz       $t5, .L8006D2C4
/* 6DEB0 8006D2B0 30D80003 */   andi      $t8, $a2, 3
/* 6DEB4 8006D2B4 8C6E0150 */  lw         $t6, 0x150($v1)
/* 6DEB8 8006D2B8 00000000 */  nop
/* 6DEBC 8006D2BC 35CF1000 */  ori        $t7, $t6, 0x1000
/* 6DEC0 8006D2C0 AC6F0150 */  sw         $t7, 0x150($v1)
.L8006D2C4:
/* 6DEC4 8006D2C4 0018C840 */  sll        $t9, $t8, 1
/* 6DEC8 8006D2C8 3C08800D */  lui        $t0, %hi(D_800D7EBC)
/* 6DECC 8006D2CC 01194021 */  addu       $t0, $t0, $t9
/* 6DED0 8006D2D0 95087EBC */  lhu        $t0, %lo(D_800D7EBC)($t0)
/* 6DED4 8006D2D4 3C0A800C */  lui        $t2, %hi(D_800BE558)
/* 6DED8 8006D2D8 A4680188 */  sh         $t0, 0x188($v1)
/* 6DEDC 8006D2DC 854AE558 */  lh         $t2, %lo(D_800BE558)($t2)
/* 6DEE0 8006D2E0 84690088 */  lh         $t1, 0x88($v1)
/* 6DEE4 8006D2E4 3C0C800C */  lui        $t4, %hi(D_800BE55C)
/* 6DEE8 8006D2E8 012A1021 */  addu       $v0, $t1, $t2
/* 6DEEC 8006D2EC A4620190 */  sh         $v0, 0x190($v1)
/* 6DEF0 8006D2F0 858CE55C */  lh         $t4, %lo(D_800BE55C)($t4)
/* 6DEF4 8006D2F4 846B008C */  lh         $t3, 0x8c($v1)
/* 6DEF8 8006D2F8 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6DEFC 8006D2FC 016C2021 */  addu       $a0, $t3, $t4
/* 6DF00 8006D300 30AD00C0 */  andi       $t5, $a1, 0xc0
/* 6DF04 8006D304 A4640192 */  sh         $a0, 0x192($v1)
/* 6DF08 8006D308 A4620184 */  sh         $v0, 0x184($v1)
/* 6DF0C 8006D30C 11A0000C */  beqz       $t5, .L8006D340
/* 6DF10 8006D310 A4640186 */   sh        $a0, 0x186($v1)
/* 6DF14 8006D314 24010040 */  addiu      $at, $zero, 0x40
/* 6DF18 8006D318 11A1000B */  beq        $t5, $at, .L8006D348
/* 6DF1C 8006D31C 240E0032 */   addiu     $t6, $zero, 0x32
/* 6DF20 8006D320 24010080 */  addiu      $at, $zero, 0x80
/* 6DF24 8006D324 11A1000A */  beq        $t5, $at, .L8006D350
/* 6DF28 8006D328 240F0064 */   addiu     $t7, $zero, 0x64
/* 6DF2C 8006D32C 240100C0 */  addiu      $at, $zero, 0xc0
/* 6DF30 8006D330 11A10009 */  beq        $t5, $at, .L8006D358
/* 6DF34 8006D334 241800FF */   addiu     $t8, $zero, 0xff
/* 6DF38 8006D338 10000009 */  b          .L8006D360
/* 6DF3C 8006D33C 24190001 */   addiu     $t9, $zero, 1
.L8006D340:
/* 6DF40 8006D340 10000006 */  b          .L8006D35C
/* 6DF44 8006D344 A46700E0 */   sh        $a3, 0xe0($v1)
.L8006D348:
/* 6DF48 8006D348 10000004 */  b          .L8006D35C
/* 6DF4C 8006D34C A46E00E0 */   sh        $t6, 0xe0($v1)
.L8006D350:
/* 6DF50 8006D350 10000002 */  b          .L8006D35C
/* 6DF54 8006D354 A46F00E0 */   sh        $t7, 0xe0($v1)
.L8006D358:
/* 6DF58 8006D358 A47800E0 */  sh         $t8, 0xe0($v1)
.L8006D35C:
/* 6DF5C 8006D35C 24190001 */  addiu      $t9, $zero, 1
.L8006D360:
/* 6DF60 8006D360 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6DF64 8006D364 A07900DE */  sb         $t9, 0xde($v1)
/* 6DF68 8006D368 0C01B357 */  jal        func_8006CD5C
/* 6DF6C 8006D36C AFA30018 */   sw        $v1, 0x18($sp)
/* 6DF70 8006D370 8FA30018 */  lw         $v1, 0x18($sp)
/* 6DF74 8006D374 44805000 */  mtc1       $zero, $f10
/* 6DF78 8006D378 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6DF7C 8006D37C 0C019A84 */  jal        func_80066A10
/* 6DF80 8006D380 E46A0144 */   swc1      $f10, 0x144($v1)
/* 6DF84 8006D384 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6DF88 8006D388 0C00A213 */  jal        func_8002884C
/* 6DF8C 8006D38C 00000000 */   nop
/* 6DF90 8006D390 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6DF94 8006D394 8FA30018 */  lw         $v1, 0x18($sp)
/* 6DF98 8006D398 14400005 */  bnez       $v0, .L8006D3B0
/* 6DF9C 8006D39C 00045900 */   sll       $t3, $a0, 4
/* 6DFA0 8006D3A0 8C680150 */  lw         $t0, 0x150($v1)
/* 6DFA4 8006D3A4 3C010200 */  lui        $at, 0x200
/* 6DFA8 8006D3A8 01014825 */  or         $t1, $t0, $at
/* 6DFAC 8006D3AC AC690150 */  sw         $t1, 0x150($v1)
.L8006D3B0:
/* 6DFB0 8006D3B0 8C6A0154 */  lw         $t2, 0x154($v1)
/* 6DFB4 8006D3B4 3C0CFFFF */  lui        $t4, 0xffff
/* 6DFB8 8006D3B8 15400004 */  bnez       $t2, .L8006D3CC
/* 6DFBC 8006D3BC 358C0300 */   ori       $t4, $t4, 0x300
/* 6DFC0 8006D3C0 018B1023 */  subu       $v0, $t4, $t3
/* 6DFC4 8006D3C4 AC620090 */  sw         $v0, 0x90($v1)
/* 6DFC8 8006D3C8 AC620154 */  sw         $v0, 0x154($v1)
.L8006D3CC:
/* 6DFCC 8006D3CC 0C01B31C */  jal        func_8006CC70
/* 6DFD0 8006D3D0 00000000 */   nop
.L8006D3D4:
/* 6DFD4 8006D3D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DFD8 8006D3D8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6DFDC 8006D3DC 03E00008 */  jr         $ra
/* 6DFE0 8006D3E0 00000000 */   nop
