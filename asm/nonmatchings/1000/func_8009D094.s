glabel func_8009D094
/* 9DC94 8009D094 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* 9DC98 8009D098 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9DC9C 8009D09C AFA400A8 */  sw         $a0, 0xa8($sp)
/* 9DCA0 8009D0A0 AFA500AC */  sw         $a1, 0xac($sp)
/* 9DCA4 8009D0A4 AFB10028 */  sw         $s1, 0x28($sp)
/* 9DCA8 8009D0A8 AFB00024 */  sw         $s0, 0x24($sp)
/* 9DCAC 8009D0AC 8FAE00AC */  lw         $t6, 0xac($sp)
/* 9DCB0 8009D0B0 00000000 */  nop
/* 9DCB4 8009D0B4 25CF0004 */  addiu      $t7, $t6, 4
/* 9DCB8 8009D0B8 AFAF0090 */  sw         $t7, 0x90($sp)
/* 9DCBC 8009D0BC 8FB80090 */  lw         $t8, 0x90($sp)
/* 9DCC0 8009D0C0 00000000 */  nop
/* 9DCC4 8009D0C4 93190004 */  lbu        $t9, 4($t8)
/* 9DCC8 8009D0C8 00000000 */  nop
/* 9DCCC 8009D0CC 332800F0 */  andi       $t0, $t9, 0xf0
/* 9DCD0 8009D0D0 AFA8009C */  sw         $t0, 0x9c($sp)
/* 9DCD4 8009D0D4 8FA90090 */  lw         $t1, 0x90($sp)
/* 9DCD8 8009D0D8 00000000 */  nop
/* 9DCDC 8009D0DC 912A0004 */  lbu        $t2, 4($t1)
/* 9DCE0 8009D0E0 00000000 */  nop
/* 9DCE4 8009D0E4 314B000F */  andi       $t3, $t2, 0xf
/* 9DCE8 8009D0E8 A3AB009B */  sb         $t3, 0x9b($sp)
/* 9DCEC 8009D0EC 8FAC0090 */  lw         $t4, 0x90($sp)
/* 9DCF0 8009D0F0 00000000 */  nop
/* 9DCF4 8009D0F4 918D0005 */  lbu        $t5, 5($t4)
/* 9DCF8 8009D0F8 00000000 */  nop
/* 9DCFC 8009D0FC A3AD009A */  sb         $t5, 0x9a($sp)
/* 9DD00 8009D100 A3AD0098 */  sb         $t5, 0x98($sp)
/* 9DD04 8009D104 8FAE0090 */  lw         $t6, 0x90($sp)
/* 9DD08 8009D108 00000000 */  nop
/* 9DD0C 8009D10C 91CF0006 */  lbu        $t7, 6($t6)
/* 9DD10 8009D110 00000000 */  nop
/* 9DD14 8009D114 A3AF0099 */  sb         $t7, 0x99($sp)
/* 9DD18 8009D118 A3AF0097 */  sb         $t7, 0x97($sp)
/* 9DD1C 8009D11C 8FB8009C */  lw         $t8, 0x9c($sp)
/* 9DD20 8009D120 00000000 */  nop
/* 9DD24 8009D124 2719FF80 */  addiu      $t9, $t8, -0x80
/* 9DD28 8009D128 2F210061 */  sltiu      $at, $t9, 0x61
/* 9DD2C 8009D12C 1020033B */  beqz       $at, .L8009DE1C
/* 9DD30 8009D130 00000000 */   nop
/* 9DD34 8009D134 0019C880 */  sll        $t9, $t9, 2
/* 9DD38 8009D138 3C01800F */  lui        $at, %hi(D_800ED7A0)
/* 9DD3C 8009D13C 00390821 */  addu       $at, $at, $t9
/* 9DD40 8009D140 8C39D7A0 */  lw         $t9, %lo(D_800ED7A0)($at)
/* 9DD44 8009D144 00000000 */  nop
/* 9DD48 8009D148 03200008 */  jr         $t9
/* 9DD4C 8009D14C 00000000 */   nop
/* 9DD50 8009D150 93A80099 */  lbu        $t0, 0x99($sp)
/* 9DD54 8009D154 00000000 */  nop
/* 9DD58 8009D158 11000181 */  beqz       $t0, .L8009D760
/* 9DD5C 8009D15C 00000000 */   nop
/* 9DD60 8009D160 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9DD64 8009D164 24010001 */  addiu      $at, $zero, 1
/* 9DD68 8009D168 8D2A002C */  lw         $t2, 0x2c($t1)
/* 9DD6C 8009D16C 00000000 */  nop
/* 9DD70 8009D170 11410003 */  beq        $t2, $at, .L8009D180
/* 9DD74 8009D174 00000000 */   nop
/* 9DD78 8009D178 1000032A */  b          .L8009DE24
/* 9DD7C 8009D17C 00000000 */   nop
.L8009D180:
/* 9DD80 8009D180 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DD84 8009D184 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DD88 8009D188 93A60099 */  lbu        $a2, 0x99($sp)
/* 9DD8C 8009D18C 93A7009B */  lbu        $a3, 0x9b($sp)
/* 9DD90 8009D190 0C02B35F */  jal        func_800ACD7C
/* 9DD94 8009D194 00000000 */   nop
/* 9DD98 8009D198 AFA20060 */  sw         $v0, 0x60($sp)
/* 9DD9C 8009D19C 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9DDA0 8009D1A0 00000000 */  nop
/* 9DDA4 8009D1A4 15600003 */  bnez       $t3, .L8009D1B4
/* 9DDA8 8009D1A8 00000000 */   nop
/* 9DDAC 8009D1AC 1000031F */  b          .L8009DE2C
/* 9DDB0 8009D1B0 00000000 */   nop
.L8009D1B4:
/* 9DDB4 8009D1B4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9DDB8 8009D1B8 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9DDBC 8009D1BC 8D8D0060 */  lw         $t5, 0x60($t4)
/* 9DDC0 8009D1C0 000E7900 */  sll        $t7, $t6, 4
/* 9DDC4 8009D1C4 01AFC021 */  addu       $t8, $t5, $t7
/* 9DDC8 8009D1C8 93190008 */  lbu        $t9, 8($t8)
/* 9DDCC 8009D1CC 00000000 */  nop
/* 9DDD0 8009D1D0 A7B90064 */  sh         $t9, 0x64($sp)
/* 9DDD4 8009D1D4 A7A00066 */  sh         $zero, 0x66($sp)
/* 9DDD8 8009D1D8 A3A00068 */  sb         $zero, 0x68($sp)
/* 9DDDC 8009D1DC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DDE0 8009D1E0 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DDE4 8009D1E4 93A60099 */  lbu        $a2, 0x99($sp)
/* 9DDE8 8009D1E8 93A7009B */  lbu        $a3, 0x9b($sp)
/* 9DDEC 8009D1EC 0C02B2DB */  jal        func_800ACB6C
/* 9DDF0 8009D1F0 00000000 */   nop
/* 9DDF4 8009D1F4 AFA20074 */  sw         $v0, 0x74($sp)
/* 9DDF8 8009D1F8 8FA80074 */  lw         $t0, 0x74($sp)
/* 9DDFC 8009D1FC 00000000 */  nop
/* 9DE00 8009D200 15000003 */  bnez       $t0, .L8009D210
/* 9DE04 8009D204 00000000 */   nop
/* 9DE08 8009D208 10000308 */  b          .L8009DE2C
/* 9DE0C 8009D20C 00000000 */   nop
.L8009D210:
/* 9DE10 8009D210 8FA90074 */  lw         $t1, 0x74($sp)
/* 9DE14 8009D214 00000000 */  nop
/* 9DE18 8009D218 252A0004 */  addiu      $t2, $t1, 4
/* 9DE1C 8009D21C AFAA00A4 */  sw         $t2, 0xa4($sp)
/* 9DE20 8009D220 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9DE24 8009D224 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9DE28 8009D228 8D640014 */  lw         $a0, 0x14($t3)
/* 9DE2C 8009D22C 0C02B7DC */  jal        func_800ADF70
/* 9DE30 8009D230 27A60064 */   addiu     $a2, $sp, 0x64
/* 9DE34 8009D234 8FAC0060 */  lw         $t4, 0x60($sp)
/* 9DE38 8009D238 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DE3C 8009D23C 00000000 */  nop
/* 9DE40 8009D240 ADCC0020 */  sw         $t4, 0x20($t6)
/* 9DE44 8009D244 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9DE48 8009D248 00000000 */  nop
/* 9DE4C 8009D24C A1A00034 */  sb         $zero, 0x34($t5)
/* 9DE50 8009D250 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* 9DE54 8009D254 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9DE58 8009D258 8DF80060 */  lw         $t8, 0x60($t7)
/* 9DE5C 8009D25C 00194100 */  sll        $t0, $t9, 4
/* 9DE60 8009D260 03084821 */  addu       $t1, $t8, $t0
/* 9DE64 8009D264 912A000B */  lbu        $t2, 0xb($t1)
/* 9DE68 8009D268 00000000 */  nop
/* 9DE6C 8009D26C 29410040 */  slti       $at, $t2, 0x40
/* 9DE70 8009D270 14200005 */  bnez       $at, .L8009D288
/* 9DE74 8009D274 00000000 */   nop
/* 9DE78 8009D278 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DE7C 8009D27C 240B0002 */  addiu      $t3, $zero, 2
/* 9DE80 8009D280 10000004 */  b          .L8009D294
/* 9DE84 8009D284 A18B0035 */   sb        $t3, 0x35($t4)
.L8009D288:
/* 9DE88 8009D288 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DE8C 8009D28C 00000000 */  nop
/* 9DE90 8009D290 A1C00035 */  sb         $zero, 0x35($t6)
.L8009D294:
/* 9DE94 8009D294 8FAF0060 */  lw         $t7, 0x60($sp)
/* 9DE98 8009D298 93AD009A */  lbu        $t5, 0x9a($sp)
/* 9DE9C 8009D29C 8DF90004 */  lw         $t9, 4($t7)
/* 9DEA0 8009D2A0 00000000 */  nop
/* 9DEA4 8009D2A4 93380004 */  lbu        $t8, 4($t9)
/* 9DEA8 8009D2A8 832A0005 */  lb         $t2, 5($t9)
/* 9DEAC 8009D2AC 01B84023 */  subu       $t0, $t5, $t8
/* 9DEB0 8009D2B0 00084880 */  sll        $t1, $t0, 2
/* 9DEB4 8009D2B4 01284823 */  subu       $t1, $t1, $t0
/* 9DEB8 8009D2B8 000948C0 */  sll        $t1, $t1, 3
/* 9DEBC 8009D2BC 01284821 */  addu       $t1, $t1, $t0
/* 9DEC0 8009D2C0 00094880 */  sll        $t1, $t1, 2
/* 9DEC4 8009D2C4 012A5821 */  addu       $t3, $t1, $t2
/* 9DEC8 8009D2C8 A7AB005E */  sh         $t3, 0x5e($sp)
/* 9DECC 8009D2CC 87A4005E */  lh         $a0, 0x5e($sp)
/* 9DED0 8009D2D0 0C02B8B4 */  jal        func_800AE2D0
/* 9DED4 8009D2D4 00000000 */   nop
/* 9DED8 8009D2D8 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DEDC 8009D2DC 00000000 */  nop
/* 9DEE0 8009D2E0 E5800028 */  swc1       $f0, 0x28($t4)
/* 9DEE4 8009D2E4 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9DEE8 8009D2E8 8FB80074 */  lw         $t8, 0x74($sp)
/* 9DEEC 8009D2EC 8DCF0000 */  lw         $t7, ($t6)
/* 9DEF0 8009D2F0 00000000 */  nop
/* 9DEF4 8009D2F4 91ED000C */  lbu        $t5, 0xc($t7)
/* 9DEF8 8009D2F8 00000000 */  nop
/* 9DEFC 8009D2FC A30D0030 */  sb         $t5, 0x30($t8)
/* 9DF00 8009D300 8FA90060 */  lw         $t1, 0x60($sp)
/* 9DF04 8009D304 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9DF08 8009D308 8D2A0000 */  lw         $t2, ($t1)
/* 9DF0C 8009D30C 8D19001C */  lw         $t9, 0x1c($t0)
/* 9DF10 8009D310 8D4B0000 */  lw         $t3, ($t2)
/* 9DF14 8009D314 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DF18 8009D318 032B6021 */  addu       $t4, $t9, $t3
/* 9DF1C 8009D31C ADCC0024 */  sw         $t4, 0x24($t6)
/* 9DF20 8009D320 8FAF0074 */  lw         $t7, 0x74($sp)
/* 9DF24 8009D324 00000000 */  nop
/* 9DF28 8009D328 A1E00037 */  sb         $zero, 0x37($t7)
/* 9DF2C 8009D32C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9DF30 8009D330 93A8009B */  lbu        $t0, 0x9b($sp)
/* 9DF34 8009D334 8DB80060 */  lw         $t8, 0x60($t5)
/* 9DF38 8009D338 00084900 */  sll        $t1, $t0, 4
/* 9DF3C 8009D33C 03095021 */  addu       $t2, $t8, $t1
/* 9DF40 8009D340 8D590000 */  lw         $t9, ($t2)
/* 9DF44 8009D344 00000000 */  nop
/* 9DF48 8009D348 AFB90048 */  sw         $t9, 0x48($sp)
/* 9DF4C 8009D34C 3C0142FE */  lui        $at, 0x42fe
/* 9DF50 8009D350 44812000 */  mtc1       $at, $f4
/* 9DF54 8009D354 00000000 */  nop
/* 9DF58 8009D358 E7A40054 */  swc1       $f4, 0x54($sp)
/* 9DF5C 8009D35C 8FAB0048 */  lw         $t3, 0x48($sp)
/* 9DF60 8009D360 00000000 */  nop
/* 9DF64 8009D364 916C0004 */  lbu        $t4, 4($t3)
/* 9DF68 8009D368 00000000 */  nop
/* 9DF6C 8009D36C 1180002C */  beqz       $t4, .L8009D420
/* 9DF70 8009D370 00000000 */   nop
/* 9DF74 8009D374 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9DF78 8009D378 00000000 */  nop
/* 9DF7C 8009D37C 8DCF0070 */  lw         $t7, 0x70($t6)
/* 9DF80 8009D380 00000000 */  nop
/* 9DF84 8009D384 11E00026 */  beqz       $t7, .L8009D420
/* 9DF88 8009D388 00000000 */   nop
/* 9DF8C 8009D38C 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9DF90 8009D390 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9DF94 8009D394 91A80006 */  lbu        $t0, 6($t5)
/* 9DF98 8009D398 91A60004 */  lbu        $a2, 4($t5)
/* 9DF9C 8009D39C 91A70005 */  lbu        $a3, 5($t5)
/* 9DFA0 8009D3A0 AFA80010 */  sw         $t0, 0x10($sp)
/* 9DFA4 8009D3A4 91B80007 */  lbu        $t8, 7($t5)
/* 9DFA8 8009D3A8 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9DFAC 8009D3AC AFB80014 */  sw         $t8, 0x14($sp)
/* 9DFB0 8009D3B0 8D390070 */  lw         $t9, 0x70($t1)
/* 9DFB4 8009D3B4 27A50054 */  addiu      $a1, $sp, 0x54
/* 9DFB8 8009D3B8 0320F809 */  jalr       $t9
/* 9DFBC 8009D3BC 00000000 */   nop
/* 9DFC0 8009D3C0 AFA20078 */  sw         $v0, 0x78($sp)
/* 9DFC4 8009D3C4 8FAA0078 */  lw         $t2, 0x78($sp)
/* 9DFC8 8009D3C8 00000000 */  nop
/* 9DFCC 8009D3CC 11400014 */  beqz       $t2, .L8009D420
/* 9DFD0 8009D3D0 00000000 */   nop
/* 9DFD4 8009D3D4 240B0016 */  addiu      $t3, $zero, 0x16
/* 9DFD8 8009D3D8 A7AB007C */  sh         $t3, 0x7c($sp)
/* 9DFDC 8009D3DC 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DFE0 8009D3E0 00000000 */  nop
/* 9DFE4 8009D3E4 AFAC0080 */  sw         $t4, 0x80($sp)
/* 9DFE8 8009D3E8 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9DFEC 8009D3EC 00000000 */  nop
/* 9DFF0 8009D3F0 AFAE0084 */  sw         $t6, 0x84($sp)
/* 9DFF4 8009D3F4 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DFF8 8009D3F8 8FA60078 */  lw         $a2, 0x78($sp)
/* 9DFFC 8009D3FC 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E000 8009D400 0C02B620 */  jal        func_800AD880
/* 9E004 8009D404 24840048 */   addiu     $a0, $a0, 0x48
/* 9E008 8009D408 8FAF0074 */  lw         $t7, 0x74($sp)
/* 9E00C 8009D40C 00000000 */  nop
/* 9E010 8009D410 91E80037 */  lbu        $t0, 0x37($t7)
/* 9E014 8009D414 00000000 */  nop
/* 9E018 8009D418 350D0001 */  ori        $t5, $t0, 1
/* 9E01C 8009D41C A1ED0037 */  sb         $t5, 0x37($t7)
.L8009D420:
/* 9E020 8009D420 4458F800 */  cfc1       $t8, $31
/* 9E024 8009D424 24090001 */  addiu      $t1, $zero, 1
/* 9E028 8009D428 44C9F800 */  ctc1       $t1, $31
/* 9E02C 8009D42C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 9E030 8009D430 00000000 */  nop
/* 9E034 8009D434 46003224 */  cvt.w.s    $f8, $f6
/* 9E038 8009D438 4449F800 */  cfc1       $t1, $31
/* 9E03C 8009D43C 00000000 */  nop
/* 9E040 8009D440 31210004 */  andi       $at, $t1, 4
/* 9E044 8009D444 31290078 */  andi       $t1, $t1, 0x78
/* 9E048 8009D448 11200014 */  beqz       $t1, .L8009D49C
/* 9E04C 8009D44C 00000000 */   nop
/* 9E050 8009D450 3C014F00 */  lui        $at, 0x4f00
/* 9E054 8009D454 44814000 */  mtc1       $at, $f8
/* 9E058 8009D458 24090001 */  addiu      $t1, $zero, 1
/* 9E05C 8009D45C 46083201 */  sub.s      $f8, $f6, $f8
/* 9E060 8009D460 44C9F800 */  ctc1       $t1, $31
/* 9E064 8009D464 00000000 */  nop
/* 9E068 8009D468 46004224 */  cvt.w.s    $f8, $f8
/* 9E06C 8009D46C 4449F800 */  cfc1       $t1, $31
/* 9E070 8009D470 00000000 */  nop
/* 9E074 8009D474 31210004 */  andi       $at, $t1, 4
/* 9E078 8009D478 31290078 */  andi       $t1, $t1, 0x78
/* 9E07C 8009D47C 15200005 */  bnez       $t1, .L8009D494
/* 9E080 8009D480 00000000 */   nop
/* 9E084 8009D484 44094000 */  mfc1       $t1, $f8
/* 9E088 8009D488 3C018000 */  lui        $at, 0x8000
/* 9E08C 8009D48C 10000007 */  b          .L8009D4AC
/* 9E090 8009D490 01214825 */   or        $t1, $t1, $at
.L8009D494:
/* 9E094 8009D494 10000005 */  b          .L8009D4AC
/* 9E098 8009D498 2409FFFF */   addiu     $t1, $zero, -1
.L8009D49C:
/* 9E09C 8009D49C 44094000 */  mfc1       $t1, $f8
/* 9E0A0 8009D4A0 00000000 */  nop
/* 9E0A4 8009D4A4 0520FFFB */  bltz       $t1, .L8009D494
/* 9E0A8 8009D4A8 00000000 */   nop
.L8009D4AC:
/* 9E0AC 8009D4AC 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E0B0 8009D4B0 44D8F800 */  ctc1       $t8, $31
/* 9E0B4 8009D4B4 A3290036 */  sb         $t1, 0x36($t9)
/* 9E0B8 8009D4B8 00000000 */  nop
/* 9E0BC 8009D4BC 3C013F80 */  lui        $at, 0x3f80
/* 9E0C0 8009D4C0 44815000 */  mtc1       $at, $f10
/* 9E0C4 8009D4C4 00000000 */  nop
/* 9E0C8 8009D4C8 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 9E0CC 8009D4CC 8FAA0048 */  lw         $t2, 0x48($sp)
/* 9E0D0 8009D4D0 00000000 */  nop
/* 9E0D4 8009D4D4 914B0008 */  lbu        $t3, 8($t2)
/* 9E0D8 8009D4D8 00000000 */  nop
/* 9E0DC 8009D4DC 1160002F */  beqz       $t3, .L8009D59C
/* 9E0E0 8009D4E0 00000000 */   nop
/* 9E0E4 8009D4E4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E0E8 8009D4E8 00000000 */  nop
/* 9E0EC 8009D4EC 8D8E0070 */  lw         $t6, 0x70($t4)
/* 9E0F0 8009D4F0 00000000 */  nop
/* 9E0F4 8009D4F4 11C00029 */  beqz       $t6, .L8009D59C
/* 9E0F8 8009D4F8 00000000 */   nop
/* 9E0FC 8009D4FC 8FA80048 */  lw         $t0, 0x48($sp)
/* 9E100 8009D500 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E104 8009D504 910D000A */  lbu        $t5, 0xa($t0)
/* 9E108 8009D508 91060008 */  lbu        $a2, 8($t0)
/* 9E10C 8009D50C 91070009 */  lbu        $a3, 9($t0)
/* 9E110 8009D510 AFAD0010 */  sw         $t5, 0x10($sp)
/* 9E114 8009D514 910F000B */  lbu        $t7, 0xb($t0)
/* 9E118 8009D518 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9E11C 8009D51C AFAF0014 */  sw         $t7, 0x14($sp)
/* 9E120 8009D520 8F190070 */  lw         $t9, 0x70($t8)
/* 9E124 8009D524 27A50054 */  addiu      $a1, $sp, 0x54
/* 9E128 8009D528 0320F809 */  jalr       $t9
/* 9E12C 8009D52C 00000000 */   nop
/* 9E130 8009D530 AFA20078 */  sw         $v0, 0x78($sp)
/* 9E134 8009D534 8FA90078 */  lw         $t1, 0x78($sp)
/* 9E138 8009D538 00000000 */  nop
/* 9E13C 8009D53C 11200017 */  beqz       $t1, .L8009D59C
/* 9E140 8009D540 00000000 */   nop
/* 9E144 8009D544 240A0017 */  addiu      $t2, $zero, 0x17
/* 9E148 8009D548 A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E14C 8009D54C 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9E150 8009D550 00000000 */  nop
/* 9E154 8009D554 AFAB0080 */  sw         $t3, 0x80($sp)
/* 9E158 8009D558 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9E15C 8009D55C 00000000 */  nop
/* 9E160 8009D560 AFAC0084 */  sw         $t4, 0x84($sp)
/* 9E164 8009D564 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9E168 8009D568 00000000 */  nop
/* 9E16C 8009D56C A3AE0088 */  sb         $t6, 0x88($sp)
/* 9E170 8009D570 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E174 8009D574 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E178 8009D578 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E17C 8009D57C 0C02B620 */  jal        func_800AD880
/* 9E180 8009D580 24840048 */   addiu     $a0, $a0, 0x48
/* 9E184 8009D584 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9E188 8009D588 00000000 */  nop
/* 9E18C 8009D58C 91A80037 */  lbu        $t0, 0x37($t5)
/* 9E190 8009D590 00000000 */  nop
/* 9E194 8009D594 350F0002 */  ori        $t7, $t0, 2
/* 9E198 8009D598 A1AF0037 */  sb         $t7, 0x37($t5)
.L8009D59C:
/* 9E19C 8009D59C C7B00054 */  lwc1       $f16, 0x54($sp)
/* 9E1A0 8009D5A0 8FB80074 */  lw         $t8, 0x74($sp)
/* 9E1A4 8009D5A4 00000000 */  nop
/* 9E1A8 8009D5A8 E710002C */  swc1       $f16, 0x2c($t8)
/* 9E1AC 8009D5AC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E1B0 8009D5B0 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E1B4 8009D5B4 8F290060 */  lw         $t1, 0x60($t9)
/* 9E1B8 8009D5B8 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9E1BC 8009D5BC 000A5900 */  sll        $t3, $t2, 4
/* 9E1C0 8009D5C0 012B6021 */  addu       $t4, $t1, $t3
/* 9E1C4 8009D5C4 C592000C */  lwc1       $f18, 0xc($t4)
/* 9E1C8 8009D5C8 C5C40028 */  lwc1       $f4, 0x28($t6)
/* 9E1CC 8009D5CC C5C8002C */  lwc1       $f8, 0x2c($t6)
/* 9E1D0 8009D5D0 46049182 */  mul.s      $f6, $f18, $f4
/* 9E1D4 8009D5D4 00000000 */  nop
/* 9E1D8 8009D5D8 46083282 */  mul.s      $f10, $f6, $f8
/* 9E1DC 8009D5DC E7AA0058 */  swc1       $f10, 0x58($sp)
/* 9E1E0 8009D5E0 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9E1E4 8009D5E4 93AD009B */  lbu        $t5, 0x9b($sp)
/* 9E1E8 8009D5E8 8D0F0060 */  lw         $t7, 0x60($t0)
/* 9E1EC 8009D5EC 000DC100 */  sll        $t8, $t5, 4
/* 9E1F0 8009D5F0 01F8C821 */  addu       $t9, $t7, $t8
/* 9E1F4 8009D5F4 932A000A */  lbu        $t2, 0xa($t9)
/* 9E1F8 8009D5F8 00000000 */  nop
/* 9E1FC 8009D5FC A3AA0053 */  sb         $t2, 0x53($sp)
/* 9E200 8009D600 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E204 8009D604 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E208 8009D608 0C02B40A */  jal        func_800AD028
/* 9E20C 8009D60C 00000000 */   nop
/* 9E210 8009D610 A3A20073 */  sb         $v0, 0x73($sp)
/* 9E214 8009D614 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E218 8009D618 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E21C 8009D61C 0C02B3CE */  jal        func_800ACF38
/* 9E220 8009D620 00000000 */   nop
/* 9E224 8009D624 A7A2008E */  sh         $v0, 0x8e($sp)
/* 9E228 8009D628 8FA90060 */  lw         $t1, 0x60($sp)
/* 9E22C 8009D62C 00000000 */  nop
/* 9E230 8009D630 8D2B0000 */  lw         $t3, ($t1)
/* 9E234 8009D634 00000000 */  nop
/* 9E238 8009D638 8D6C0000 */  lw         $t4, ($t3)
/* 9E23C 8009D63C 00000000 */  nop
/* 9E240 8009D640 AFAC0078 */  sw         $t4, 0x78($sp)
/* 9E244 8009D644 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E248 8009D648 8FA80060 */  lw         $t0, 0x60($sp)
/* 9E24C 8009D64C 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E250 8009D650 8D060008 */  lw         $a2, 8($t0)
/* 9E254 8009D654 87AD008E */  lh         $t5, 0x8e($sp)
/* 9E258 8009D658 93AF0073 */  lbu        $t7, 0x73($sp)
/* 9E25C 8009D65C 93B80053 */  lbu        $t8, 0x53($sp)
/* 9E260 8009D660 8FB90078 */  lw         $t9, 0x78($sp)
/* 9E264 8009D664 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9E268 8009D668 8FA70058 */  lw         $a3, 0x58($sp)
/* 9E26C 8009D66C AFAD0010 */  sw         $t5, 0x10($sp)
/* 9E270 8009D670 AFAF0014 */  sw         $t7, 0x14($sp)
/* 9E274 8009D674 AFB80018 */  sw         $t8, 0x18($sp)
/* 9E278 8009D678 0C02B8DC */  jal        func_800AE370
/* 9E27C 8009D67C AFB9001C */   sw        $t9, 0x1c($sp)
/* 9E280 8009D680 240A0006 */  addiu      $t2, $zero, 6
/* 9E284 8009D684 A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E288 8009D688 8FA900A4 */  lw         $t1, 0xa4($sp)
/* 9E28C 8009D68C 00000000 */  nop
/* 9E290 8009D690 AFA90080 */  sw         $t1, 0x80($sp)
/* 9E294 8009D694 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9E298 8009D698 00000000 */  nop
/* 9E29C 8009D69C 8D6C0000 */  lw         $t4, ($t3)
/* 9E2A0 8009D6A0 00000000 */  nop
/* 9E2A4 8009D6A4 918E000D */  lbu        $t6, 0xd($t4)
/* 9E2A8 8009D6A8 00000000 */  nop
/* 9E2AC 8009D6AC A3AE0088 */  sb         $t6, 0x88($sp)
/* 9E2B0 8009D6B0 8FA80060 */  lw         $t0, 0x60($sp)
/* 9E2B4 8009D6B4 00000000 */  nop
/* 9E2B8 8009D6B8 8D0D0000 */  lw         $t5, ($t0)
/* 9E2BC 8009D6BC 00000000 */  nop
/* 9E2C0 8009D6C0 8DAF0004 */  lw         $t7, 4($t5)
/* 9E2C4 8009D6C4 00000000 */  nop
/* 9E2C8 8009D6C8 AFAF0084 */  sw         $t7, 0x84($sp)
/* 9E2CC 8009D6CC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E2D0 8009D6D0 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E2D4 8009D6D4 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E2D8 8009D6D8 0C02B620 */  jal        func_800AD880
/* 9E2DC 8009D6DC 24840048 */   addiu     $a0, $a0, 0x48
/* 9E2E0 8009D6E0 8FB80090 */  lw         $t8, 0x90($sp)
/* 9E2E4 8009D6E4 00000000 */  nop
/* 9E2E8 8009D6E8 8F190008 */  lw         $t9, 8($t8)
/* 9E2EC 8009D6EC 00000000 */  nop
/* 9E2F0 8009D6F0 13200019 */  beqz       $t9, .L8009D758
/* 9E2F4 8009D6F4 00000000 */   nop
/* 9E2F8 8009D6F8 240A0015 */  addiu      $t2, $zero, 0x15
/* 9E2FC 8009D6FC A7AA007C */  sh         $t2, 0x7c($sp)
/* 9E300 8009D700 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9E304 8009D704 00000000 */  nop
/* 9E308 8009D708 352B0080 */  ori        $t3, $t1, 0x80
/* 9E30C 8009D70C A3AB0084 */  sb         $t3, 0x84($sp)
/* 9E310 8009D710 93AC009A */  lbu        $t4, 0x9a($sp)
/* 9E314 8009D714 00000000 */  nop
/* 9E318 8009D718 A3AC0085 */  sb         $t4, 0x85($sp)
/* 9E31C 8009D71C A3A00086 */  sb         $zero, 0x86($sp)
/* 9E320 8009D720 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E324 8009D724 8FAD0090 */  lw         $t5, 0x90($sp)
/* 9E328 8009D728 8DC80024 */  lw         $t0, 0x24($t6)
/* 9E32C 8009D72C 8DAF0008 */  lw         $t7, 8($t5)
/* 9E330 8009D730 00000000 */  nop
/* 9E334 8009D734 010F0019 */  multu      $t0, $t7
/* 9E338 8009D738 0000C012 */  mflo       $t8
/* 9E33C 8009D73C AFB80078 */  sw         $t8, 0x78($sp)
/* 9E340 8009D740 00000000 */  nop
/* 9E344 8009D744 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E348 8009D748 8FA60078 */  lw         $a2, 0x78($sp)
/* 9E34C 8009D74C 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9E350 8009D750 0C02B620 */  jal        func_800AD880
/* 9E354 8009D754 24840048 */   addiu     $a0, $a0, 0x48
.L8009D758:
/* 9E358 8009D758 100001B2 */  b          .L8009DE24
/* 9E35C 8009D75C 00000000 */   nop
.L8009D760:
/* 9E360 8009D760 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E364 8009D764 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9E368 8009D768 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E36C 8009D76C 0C02B33D */  jal        func_800ACCF4
/* 9E370 8009D770 00000000 */   nop
/* 9E374 8009D774 AFA20074 */  sw         $v0, 0x74($sp)
/* 9E378 8009D778 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E37C 8009D77C 00000000 */  nop
/* 9E380 8009D780 17200003 */  bnez       $t9, .L8009D790
/* 9E384 8009D784 00000000 */   nop
/* 9E388 8009D788 100001A8 */  b          .L8009DE2C
/* 9E38C 8009D78C 00000000 */   nop
.L8009D790:
/* 9E390 8009D790 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9E394 8009D794 24010002 */  addiu      $at, $zero, 2
/* 9E398 8009D798 91490035 */  lbu        $t1, 0x35($t2)
/* 9E39C 8009D79C 00000000 */  nop
/* 9E3A0 8009D7A0 15210005 */  bne        $t1, $at, .L8009D7B8
/* 9E3A4 8009D7A4 00000000 */   nop
/* 9E3A8 8009D7A8 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9E3AC 8009D7AC 240B0004 */  addiu      $t3, $zero, 4
/* 9E3B0 8009D7B0 1000000D */  b          .L8009D7E8
/* 9E3B4 8009D7B4 A18B0035 */   sb        $t3, 0x35($t4)
.L8009D7B8:
/* 9E3B8 8009D7B8 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9E3BC 8009D7BC 240E0003 */  addiu      $t6, $zero, 3
/* 9E3C0 8009D7C0 A1AE0035 */  sb         $t6, 0x35($t5)
/* 9E3C4 8009D7C4 8FA80074 */  lw         $t0, 0x74($sp)
/* 9E3C8 8009D7C8 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E3CC 8009D7CC 8D0F0020 */  lw         $t7, 0x20($t0)
/* 9E3D0 8009D7D0 25050004 */  addiu      $a1, $t0, 4
/* 9E3D4 8009D7D4 8DF80000 */  lw         $t8, ($t7)
/* 9E3D8 8009D7D8 00000000 */  nop
/* 9E3DC 8009D7DC 8F060008 */  lw         $a2, 8($t8)
/* 9E3E0 8009D7E0 0C02B429 */  jal        func_800AD0A4
/* 9E3E4 8009D7E4 00000000 */   nop
.L8009D7E8:
/* 9E3E8 8009D7E8 1000018E */  b          .L8009DE24
/* 9E3EC 8009D7EC 00000000 */   nop
/* 9E3F0 8009D7F0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E3F4 8009D7F4 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9E3F8 8009D7F8 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E3FC 8009D7FC 0C02B33D */  jal        func_800ACCF4
/* 9E400 8009D800 00000000 */   nop
/* 9E404 8009D804 AFA20074 */  sw         $v0, 0x74($sp)
/* 9E408 8009D808 8FB90074 */  lw         $t9, 0x74($sp)
/* 9E40C 8009D80C 00000000 */  nop
/* 9E410 8009D810 17200003 */  bnez       $t9, .L8009D820
/* 9E414 8009D814 00000000 */   nop
/* 9E418 8009D818 10000184 */  b          .L8009DE2C
/* 9E41C 8009D81C 00000000 */   nop
.L8009D820:
/* 9E420 8009D820 93AA0097 */  lbu        $t2, 0x97($sp)
/* 9E424 8009D824 8FA90074 */  lw         $t1, 0x74($sp)
/* 9E428 8009D828 00000000 */  nop
/* 9E42C 8009D82C A12A0033 */  sb         $t2, 0x33($t1)
/* 9E430 8009D830 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E434 8009D834 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E438 8009D838 0C02B3CE */  jal        func_800ACF38
/* 9E43C 8009D83C 00000000 */   nop
/* 9E440 8009D840 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E444 8009D844 00028C00 */  sll        $s1, $v0, 0x10
/* 9E448 8009D848 00115C03 */  sra        $t3, $s1, 0x10
/* 9E44C 8009D84C 8FA40074 */  lw         $a0, 0x74($sp)
/* 9E450 8009D850 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E454 8009D854 0C02B3F9 */  jal        func_800ACFE4
/* 9E458 8009D858 01608825 */   or        $s1, $t3, $zero
/* 9E45C 8009D85C 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E460 8009D860 8FA50074 */  lw         $a1, 0x74($sp)
/* 9E464 8009D864 00408025 */  or         $s0, $v0, $zero
/* 9E468 8009D868 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E46C 8009D86C 02003825 */  or         $a3, $s0, $zero
/* 9E470 8009D870 02203025 */  or         $a2, $s1, $zero
/* 9E474 8009D874 0C02B768 */  jal        func_800ADDA0
/* 9E478 8009D878 24A50004 */   addiu     $a1, $a1, 4
/* 9E47C 8009D87C 10000169 */  b          .L8009DE24
/* 9E480 8009D880 00000000 */   nop
/* 9E484 8009D884 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E488 8009D888 00000000 */  nop
/* 9E48C 8009D88C 8DA80064 */  lw         $t0, 0x64($t5)
/* 9E490 8009D890 00000000 */  nop
/* 9E494 8009D894 11000024 */  beqz       $t0, .L8009D928
/* 9E498 8009D898 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009D89C:
/* 9E49C 8009D89C 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E4A0 8009D8A0 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9E4A4 8009D8A4 91F80031 */  lbu        $t8, 0x31($t7)
/* 9E4A8 8009D8A8 00000000 */  nop
/* 9E4AC 8009D8AC 17190018 */  bne        $t8, $t9, .L8009D910
/* 9E4B0 8009D8B0 00000000 */   nop
/* 9E4B4 8009D8B4 93AA0098 */  lbu        $t2, 0x98($sp)
/* 9E4B8 8009D8B8 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E4BC 8009D8BC 00000000 */  nop
/* 9E4C0 8009D8C0 A12A0033 */  sb         $t2, 0x33($t1)
/* 9E4C4 8009D8C4 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E4C8 8009D8C8 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E4CC 8009D8CC 0C02B3CE */  jal        func_800ACF38
/* 9E4D0 8009D8D0 00000000 */   nop
/* 9E4D4 8009D8D4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E4D8 8009D8D8 00028C00 */  sll        $s1, $v0, 0x10
/* 9E4DC 8009D8DC 00115C03 */  sra        $t3, $s1, 0x10
/* 9E4E0 8009D8E0 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E4E4 8009D8E4 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E4E8 8009D8E8 0C02B3F9 */  jal        func_800ACFE4
/* 9E4EC 8009D8EC 01608825 */   or        $s1, $t3, $zero
/* 9E4F0 8009D8F0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E4F4 8009D8F4 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E4F8 8009D8F8 00408025 */  or         $s0, $v0, $zero
/* 9E4FC 8009D8FC 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E500 8009D900 02003825 */  or         $a3, $s0, $zero
/* 9E504 8009D904 02203025 */  or         $a2, $s1, $zero
/* 9E508 8009D908 0C02B768 */  jal        func_800ADDA0
/* 9E50C 8009D90C 24A50004 */   addiu     $a1, $a1, 4
.L8009D910:
/* 9E510 8009D910 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E514 8009D914 00000000 */  nop
/* 9E518 8009D918 8DA80000 */  lw         $t0, ($t5)
/* 9E51C 8009D91C 00000000 */  nop
/* 9E520 8009D920 1500FFDE */  bnez       $t0, .L8009D89C
/* 9E524 8009D924 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009D928:
/* 9E528 8009D928 1000013E */  b          .L8009DE24
/* 9E52C 8009D92C 00000000 */   nop
/* 9E530 8009D930 93B00098 */  lbu        $s0, 0x98($sp)
/* 9E534 8009D934 24010007 */  addiu      $at, $zero, 7
/* 9E538 8009D938 12010035 */  beq        $s0, $at, .L8009DA10
/* 9E53C 8009D93C 00000000 */   nop
/* 9E540 8009D940 2401000A */  addiu      $at, $zero, 0xa
/* 9E544 8009D944 1201000C */  beq        $s0, $at, .L8009D978
/* 9E548 8009D948 00000000 */   nop
/* 9E54C 8009D94C 24010010 */  addiu      $at, $zero, 0x10
/* 9E550 8009D950 12010060 */  beq        $s0, $at, .L8009DAD4
/* 9E554 8009D954 00000000 */   nop
/* 9E558 8009D958 24010040 */  addiu      $at, $zero, 0x40
/* 9E55C 8009D95C 12010066 */  beq        $s0, $at, .L8009DAF8
/* 9E560 8009D960 00000000 */   nop
/* 9E564 8009D964 2401005B */  addiu      $at, $zero, 0x5b
/* 9E568 8009D968 120100AD */  beq        $s0, $at, .L8009DC20
/* 9E56C 8009D96C 00000000 */   nop
/* 9E570 8009D970 100000CC */  b          .L8009DCA4
/* 9E574 8009D974 00000000 */   nop
.L8009D978:
/* 9E578 8009D978 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E57C 8009D97C 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E580 8009D980 8F190060 */  lw         $t9, 0x60($t8)
/* 9E584 8009D984 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E588 8009D988 000A4900 */  sll        $t1, $t2, 4
/* 9E58C 8009D98C 03295821 */  addu       $t3, $t9, $t1
/* 9E590 8009D990 A16F0007 */  sb         $t7, 7($t3)
/* 9E594 8009D994 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E598 8009D998 00000000 */  nop
/* 9E59C 8009D99C 8D8E0064 */  lw         $t6, 0x64($t4)
/* 9E5A0 8009D9A0 00000000 */  nop
/* 9E5A4 8009D9A4 11C00018 */  beqz       $t6, .L8009DA08
/* 9E5A8 8009D9A8 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009D9AC:
/* 9E5AC 8009D9AC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E5B0 8009D9B0 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9E5B4 8009D9B4 91A80031 */  lbu        $t0, 0x31($t5)
/* 9E5B8 8009D9B8 00000000 */  nop
/* 9E5BC 8009D9BC 1518000C */  bne        $t0, $t8, .L8009D9F0
/* 9E5C0 8009D9C0 00000000 */   nop
/* 9E5C4 8009D9C4 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E5C8 8009D9C8 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E5CC 8009D9CC 0C02B40A */  jal        func_800AD028
/* 9E5D0 8009D9D0 00000000 */   nop
/* 9E5D4 8009D9D4 A3A20073 */  sb         $v0, 0x73($sp)
/* 9E5D8 8009D9D8 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E5DC 8009D9DC 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E5E0 8009D9E0 93A60073 */  lbu        $a2, 0x73($sp)
/* 9E5E4 8009D9E4 8D440014 */  lw         $a0, 0x14($t2)
/* 9E5E8 8009D9E8 0C02B930 */  jal        func_800AE4C0
/* 9E5EC 8009D9EC 24A50004 */   addiu     $a1, $a1, 4
.L8009D9F0:
/* 9E5F0 8009D9F0 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E5F4 8009D9F4 00000000 */  nop
/* 9E5F8 8009D9F8 8F290000 */  lw         $t1, ($t9)
/* 9E5FC 8009D9FC 00000000 */  nop
/* 9E600 8009DA00 1520FFEA */  bnez       $t1, .L8009D9AC
/* 9E604 8009DA04 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009DA08:
/* 9E608 8009DA08 100000A8 */  b          .L8009DCAC
/* 9E60C 8009DA0C 00000000 */   nop
.L8009DA10:
/* 9E610 8009DA10 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E614 8009DA14 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9E618 8009DA18 8D6C0060 */  lw         $t4, 0x60($t3)
/* 9E61C 8009DA1C 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E620 8009DA20 000E6900 */  sll        $t5, $t6, 4
/* 9E624 8009DA24 018D4021 */  addu       $t0, $t4, $t5
/* 9E628 8009DA28 A10F0009 */  sb         $t7, 9($t0)
/* 9E62C 8009DA2C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E630 8009DA30 00000000 */  nop
/* 9E634 8009DA34 8F0A0064 */  lw         $t2, 0x64($t8)
/* 9E638 8009DA38 00000000 */  nop
/* 9E63C 8009DA3C 11400023 */  beqz       $t2, .L8009DACC
/* 9E640 8009DA40 AFAA00A0 */   sw        $t2, 0xa0($sp)
.L8009DA44:
/* 9E644 8009DA44 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E648 8009DA48 93AB009B */  lbu        $t3, 0x9b($sp)
/* 9E64C 8009DA4C 93290031 */  lbu        $t1, 0x31($t9)
/* 9E650 8009DA50 00000000 */  nop
/* 9E654 8009DA54 152B0017 */  bne        $t1, $t3, .L8009DAB4
/* 9E658 8009DA58 00000000 */   nop
/* 9E65C 8009DA5C 932E0034 */  lbu        $t6, 0x34($t9)
/* 9E660 8009DA60 24010003 */  addiu      $at, $zero, 3
/* 9E664 8009DA64 11C10013 */  beq        $t6, $at, .L8009DAB4
/* 9E668 8009DA68 00000000 */   nop
/* 9E66C 8009DA6C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E670 8009DA70 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 9E674 8009DA74 0C02B3CE */  jal        func_800ACF38
/* 9E678 8009DA78 00000000 */   nop
/* 9E67C 8009DA7C A7A2008E */  sh         $v0, 0x8e($sp)
/* 9E680 8009DA80 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E684 8009DA84 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E688 8009DA88 8D85001C */  lw         $a1, 0x1c($t4)
/* 9E68C 8009DA8C 0C02B3F9 */  jal        func_800ACFE4
/* 9E690 8009DA90 00000000 */   nop
/* 9E694 8009DA94 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E698 8009DA98 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E69C 8009DA9C 00408025 */  or         $s0, $v0, $zero
/* 9E6A0 8009DAA0 87A6008E */  lh         $a2, 0x8e($sp)
/* 9E6A4 8009DAA4 8DA40014 */  lw         $a0, 0x14($t5)
/* 9E6A8 8009DAA8 02003825 */  or         $a3, $s0, $zero
/* 9E6AC 8009DAAC 0C02B768 */  jal        func_800ADDA0
/* 9E6B0 8009DAB0 24A50004 */   addiu     $a1, $a1, 4
.L8009DAB4:
/* 9E6B4 8009DAB4 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E6B8 8009DAB8 00000000 */  nop
/* 9E6BC 8009DABC 8DE80000 */  lw         $t0, ($t7)
/* 9E6C0 8009DAC0 00000000 */  nop
/* 9E6C4 8009DAC4 1500FFDF */  bnez       $t0, .L8009DA44
/* 9E6C8 8009DAC8 AFA800A0 */   sw        $t0, 0xa0($sp)
.L8009DACC:
/* 9E6CC 8009DACC 10000077 */  b          .L8009DCAC
/* 9E6D0 8009DAD0 00000000 */   nop
.L8009DAD4:
/* 9E6D4 8009DAD4 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E6D8 8009DAD8 93AB009B */  lbu        $t3, 0x9b($sp)
/* 9E6DC 8009DADC 8D490060 */  lw         $t1, 0x60($t2)
/* 9E6E0 8009DAE0 93B80097 */  lbu        $t8, 0x97($sp)
/* 9E6E4 8009DAE4 000BC900 */  sll        $t9, $t3, 4
/* 9E6E8 8009DAE8 01397021 */  addu       $t6, $t1, $t9
/* 9E6EC 8009DAEC A1D80008 */  sb         $t8, 8($t6)
/* 9E6F0 8009DAF0 1000006E */  b          .L8009DCAC
/* 9E6F4 8009DAF4 00000000 */   nop
.L8009DAF8:
/* 9E6F8 8009DAF8 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E6FC 8009DAFC 93A8009B */  lbu        $t0, 0x9b($sp)
/* 9E700 8009DB00 8DAF0060 */  lw         $t7, 0x60($t5)
/* 9E704 8009DB04 93AC0097 */  lbu        $t4, 0x97($sp)
/* 9E708 8009DB08 00085100 */  sll        $t2, $t0, 4
/* 9E70C 8009DB0C 01EA5821 */  addu       $t3, $t7, $t2
/* 9E710 8009DB10 A16C000B */  sb         $t4, 0xb($t3)
/* 9E714 8009DB14 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9E718 8009DB18 00000000 */  nop
/* 9E71C 8009DB1C 8D390064 */  lw         $t9, 0x64($t1)
/* 9E720 8009DB20 00000000 */  nop
/* 9E724 8009DB24 1320003C */  beqz       $t9, .L8009DC18
/* 9E728 8009DB28 AFB900A0 */   sw        $t9, 0xa0($sp)
.L8009DB2C:
/* 9E72C 8009DB2C 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E730 8009DB30 93AD009B */  lbu        $t5, 0x9b($sp)
/* 9E734 8009DB34 930E0031 */  lbu        $t6, 0x31($t8)
/* 9E738 8009DB38 00000000 */  nop
/* 9E73C 8009DB3C 15CD0030 */  bne        $t6, $t5, .L8009DC00
/* 9E740 8009DB40 00000000 */   nop
/* 9E744 8009DB44 93080035 */  lbu        $t0, 0x35($t8)
/* 9E748 8009DB48 24010003 */  addiu      $at, $zero, 3
/* 9E74C 8009DB4C 1101002C */  beq        $t0, $at, .L8009DC00
/* 9E750 8009DB50 00000000 */   nop
/* 9E754 8009DB54 93AF0097 */  lbu        $t7, 0x97($sp)
/* 9E758 8009DB58 00000000 */  nop
/* 9E75C 8009DB5C 29E10040 */  slti       $at, $t7, 0x40
/* 9E760 8009DB60 1420000C */  bnez       $at, .L8009DB94
/* 9E764 8009DB64 00000000 */   nop
/* 9E768 8009DB68 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E76C 8009DB6C 00000000 */  nop
/* 9E770 8009DB70 914C0035 */  lbu        $t4, 0x35($t2)
/* 9E774 8009DB74 00000000 */  nop
/* 9E778 8009DB78 15800004 */  bnez       $t4, .L8009DB8C
/* 9E77C 8009DB7C 00000000 */   nop
/* 9E780 8009DB80 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E784 8009DB84 240B0002 */  addiu      $t3, $zero, 2
/* 9E788 8009DB88 A12B0035 */  sb         $t3, 0x35($t1)
.L8009DB8C:
/* 9E78C 8009DB8C 1000001C */  b          .L8009DC00
/* 9E790 8009DB90 00000000 */   nop
.L8009DB94:
/* 9E794 8009DB94 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E798 8009DB98 24010002 */  addiu      $at, $zero, 2
/* 9E79C 8009DB9C 932E0035 */  lbu        $t6, 0x35($t9)
/* 9E7A0 8009DBA0 00000000 */  nop
/* 9E7A4 8009DBA4 15C10004 */  bne        $t6, $at, .L8009DBB8
/* 9E7A8 8009DBA8 00000000 */   nop
/* 9E7AC 8009DBAC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E7B0 8009DBB0 10000013 */  b          .L8009DC00
/* 9E7B4 8009DBB4 A1A00035 */   sb        $zero, 0x35($t5)
.L8009DBB8:
/* 9E7B8 8009DBB8 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E7BC 8009DBBC 24010004 */  addiu      $at, $zero, 4
/* 9E7C0 8009DBC0 93080035 */  lbu        $t0, 0x35($t8)
/* 9E7C4 8009DBC4 00000000 */  nop
/* 9E7C8 8009DBC8 1501000D */  bne        $t0, $at, .L8009DC00
/* 9E7CC 8009DBCC 00000000 */   nop
/* 9E7D0 8009DBD0 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E7D4 8009DBD4 240F0003 */  addiu      $t7, $zero, 3
/* 9E7D8 8009DBD8 A14F0035 */  sb         $t7, 0x35($t2)
/* 9E7DC 8009DBDC 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* 9E7E0 8009DBE0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E7E4 8009DBE4 8D8B0020 */  lw         $t3, 0x20($t4)
/* 9E7E8 8009DBE8 25850004 */  addiu      $a1, $t4, 4
/* 9E7EC 8009DBEC 8D690000 */  lw         $t1, ($t3)
/* 9E7F0 8009DBF0 00000000 */  nop
/* 9E7F4 8009DBF4 8D260008 */  lw         $a2, 8($t1)
/* 9E7F8 8009DBF8 0C02B429 */  jal        func_800AD0A4
/* 9E7FC 8009DBFC 00000000 */   nop
.L8009DC00:
/* 9E800 8009DC00 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E804 8009DC04 00000000 */  nop
/* 9E808 8009DC08 8F2E0000 */  lw         $t6, ($t9)
/* 9E80C 8009DC0C 00000000 */  nop
/* 9E810 8009DC10 15C0FFC6 */  bnez       $t6, .L8009DB2C
/* 9E814 8009DC14 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009DC18:
/* 9E818 8009DC18 10000024 */  b          .L8009DCAC
/* 9E81C 8009DC1C 00000000 */   nop
.L8009DC20:
/* 9E820 8009DC20 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E824 8009DC24 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E828 8009DC28 8F080060 */  lw         $t0, 0x60($t8)
/* 9E82C 8009DC2C 93AD0097 */  lbu        $t5, 0x97($sp)
/* 9E830 8009DC30 000F5100 */  sll        $t2, $t7, 4
/* 9E834 8009DC34 010A6021 */  addu       $t4, $t0, $t2
/* 9E838 8009DC38 A18D000A */  sb         $t5, 0xa($t4)
/* 9E83C 8009DC3C 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E840 8009DC40 00000000 */  nop
/* 9E844 8009DC44 8D690064 */  lw         $t1, 0x64($t3)
/* 9E848 8009DC48 00000000 */  nop
/* 9E84C 8009DC4C 11200013 */  beqz       $t1, .L8009DC9C
/* 9E850 8009DC50 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009DC54:
/* 9E854 8009DC54 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E858 8009DC58 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9E85C 8009DC5C 932E0031 */  lbu        $t6, 0x31($t9)
/* 9E860 8009DC60 00000000 */  nop
/* 9E864 8009DC64 15D80007 */  bne        $t6, $t8, .L8009DC84
/* 9E868 8009DC68 00000000 */   nop
/* 9E86C 8009DC6C 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* 9E870 8009DC70 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E874 8009DC74 93A60097 */  lbu        $a2, 0x97($sp)
/* 9E878 8009DC78 8DE40014 */  lw         $a0, 0x14($t7)
/* 9E87C 8009DC7C 0C02B968 */  jal        func_800AE5A0
/* 9E880 8009DC80 24A50004 */   addiu     $a1, $a1, 4
.L8009DC84:
/* 9E884 8009DC84 8FA800A0 */  lw         $t0, 0xa0($sp)
/* 9E888 8009DC88 00000000 */  nop
/* 9E88C 8009DC8C 8D0A0000 */  lw         $t2, ($t0)
/* 9E890 8009DC90 00000000 */  nop
/* 9E894 8009DC94 1540FFEF */  bnez       $t2, .L8009DC54
/* 9E898 8009DC98 AFAA00A0 */   sw        $t2, 0xa0($sp)
.L8009DC9C:
/* 9E89C 8009DC9C 10000003 */  b          .L8009DCAC
/* 9E8A0 8009DCA0 00000000 */   nop
.L8009DCA4:
/* 9E8A4 8009DCA4 10000001 */  b          .L8009DCAC
/* 9E8A8 8009DCA8 00000000 */   nop
.L8009DCAC:
/* 9E8AC 8009DCAC 1000005D */  b          .L8009DE24
/* 9E8B0 8009DCB0 00000000 */   nop
/* 9E8B4 8009DCB4 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E8B8 8009DCB8 93AD009A */  lbu        $t5, 0x9a($sp)
/* 9E8BC 8009DCBC 8D8B0020 */  lw         $t3, 0x20($t4)
/* 9E8C0 8009DCC0 00000000 */  nop
/* 9E8C4 8009DCC4 85690000 */  lh         $t1, ($t3)
/* 9E8C8 8009DCC8 00000000 */  nop
/* 9E8CC 8009DCCC 01A9082A */  slt        $at, $t5, $t1
/* 9E8D0 8009DCD0 10200010 */  beqz       $at, .L8009DD14
/* 9E8D4 8009DCD4 00000000 */   nop
/* 9E8D8 8009DCD8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E8DC 8009DCDC 93B8009A */  lbu        $t8, 0x9a($sp)
/* 9E8E0 8009DCE0 8F2E0020 */  lw         $t6, 0x20($t9)
/* 9E8E4 8009DCE4 00187880 */  sll        $t7, $t8, 2
/* 9E8E8 8009DCE8 01CF4021 */  addu       $t0, $t6, $t7
/* 9E8EC 8009DCEC 8D0A000C */  lw         $t2, 0xc($t0)
/* 9E8F0 8009DCF0 00000000 */  nop
/* 9E8F4 8009DCF4 AFAA0044 */  sw         $t2, 0x44($sp)
/* 9E8F8 8009DCF8 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E8FC 8009DCFC 8FA50044 */  lw         $a1, 0x44($sp)
/* 9E900 8009DD00 93A6009B */  lbu        $a2, 0x9b($sp)
/* 9E904 8009DD04 0C02B509 */  jal        func_800AD424
/* 9E908 8009DD08 00000000 */   nop
/* 9E90C 8009DD0C 10000001 */  b          .L8009DD14
/* 9E910 8009DD10 00000000 */   nop
.L8009DD14:
/* 9E914 8009DD14 10000043 */  b          .L8009DE24
/* 9E918 8009DD18 00000000 */   nop
/* 9E91C 8009DD1C 93AC0097 */  lbu        $t4, 0x97($sp)
/* 9E920 8009DD20 93AD0098 */  lbu        $t5, 0x98($sp)
/* 9E924 8009DD24 000C59C0 */  sll        $t3, $t4, 7
/* 9E928 8009DD28 016D4821 */  addu       $t1, $t3, $t5
/* 9E92C 8009DD2C 2539E000 */  addiu      $t9, $t1, -0x2000
/* 9E930 8009DD30 AFB90040 */  sw         $t9, 0x40($sp)
/* 9E934 8009DD34 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E938 8009DD38 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E93C 8009DD3C 8F0E0060 */  lw         $t6, 0x60($t8)
/* 9E940 8009DD40 000F4100 */  sll        $t0, $t7, 4
/* 9E944 8009DD44 01C85021 */  addu       $t2, $t6, $t0
/* 9E948 8009DD48 854C0004 */  lh         $t4, 4($t2)
/* 9E94C 8009DD4C 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9E950 8009DD50 00000000 */  nop
/* 9E954 8009DD54 018B0019 */  multu      $t4, $t3
/* 9E958 8009DD58 00006812 */  mflo       $t5
/* 9E95C 8009DD5C 05A10003 */  bgez       $t5, .L8009DD6C
/* 9E960 8009DD60 000D4B43 */   sra       $t1, $t5, 0xd
/* 9E964 8009DD64 25A11FFF */  addiu      $at, $t5, 0x1fff
/* 9E968 8009DD68 00014B43 */  sra        $t1, $at, 0xd
.L8009DD6C:
/* 9E96C 8009DD6C AFA90038 */  sw         $t1, 0x38($sp)
/* 9E970 8009DD70 8FA40038 */  lw         $a0, 0x38($sp)
/* 9E974 8009DD74 0C02B8B4 */  jal        func_800AE2D0
/* 9E978 8009DD78 00000000 */   nop
/* 9E97C 8009DD7C E7A0003C */  swc1       $f0, 0x3c($sp)
/* 9E980 8009DD80 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E984 8009DD84 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E988 8009DD88 8F380060 */  lw         $t8, 0x60($t9)
/* 9E98C 8009DD8C C7B0003C */  lwc1       $f16, 0x3c($sp)
/* 9E990 8009DD90 000F7100 */  sll        $t6, $t7, 4
/* 9E994 8009DD94 030E4021 */  addu       $t0, $t8, $t6
/* 9E998 8009DD98 E510000C */  swc1       $f16, 0xc($t0)
/* 9E99C 8009DD9C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E9A0 8009DDA0 00000000 */  nop
/* 9E9A4 8009DDA4 8D4C0064 */  lw         $t4, 0x64($t2)
/* 9E9A8 8009DDA8 00000000 */  nop
/* 9E9AC 8009DDAC 11800019 */  beqz       $t4, .L8009DE14
/* 9E9B0 8009DDB0 AFAC00A0 */   sw        $t4, 0xa0($sp)
.L8009DDB4:
/* 9E9B4 8009DDB4 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* 9E9B8 8009DDB8 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9E9BC 8009DDBC 916D0031 */  lbu        $t5, 0x31($t3)
/* 9E9C0 8009DDC0 00000000 */  nop
/* 9E9C4 8009DDC4 15A9000D */  bne        $t5, $t1, .L8009DDFC
/* 9E9C8 8009DDC8 00000000 */   nop
/* 9E9CC 8009DDCC 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E9D0 8009DDD0 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 9E9D4 8009DDD4 C5F20028 */  lwc1       $f18, 0x28($t7)
/* 9E9D8 8009DDD8 C5E8002C */  lwc1       $f8, 0x2c($t7)
/* 9E9DC 8009DDDC 46049182 */  mul.s      $f6, $f18, $f4
/* 9E9E0 8009DDE0 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E9E4 8009DDE4 25E50004 */  addiu      $a1, $t7, 4
/* 9E9E8 8009DDE8 8F240014 */  lw         $a0, 0x14($t9)
/* 9E9EC 8009DDEC 46083282 */  mul.s      $f10, $f6, $f8
/* 9E9F0 8009DDF0 44065000 */  mfc1       $a2, $f10
/* 9E9F4 8009DDF4 0C02B7A4 */  jal        func_800ADE90
/* 9E9F8 8009DDF8 00000000 */   nop
.L8009DDFC:
/* 9E9FC 8009DDFC 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9EA00 8009DE00 00000000 */  nop
/* 9EA04 8009DE04 8F0E0000 */  lw         $t6, ($t8)
/* 9EA08 8009DE08 00000000 */  nop
/* 9EA0C 8009DE0C 15C0FFE9 */  bnez       $t6, .L8009DDB4
/* 9EA10 8009DE10 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009DE14:
/* 9EA14 8009DE14 10000003 */  b          .L8009DE24
/* 9EA18 8009DE18 00000000 */   nop
.L8009DE1C:
/* 9EA1C 8009DE1C 10000001 */  b          .L8009DE24
/* 9EA20 8009DE20 00000000 */   nop
.L8009DE24:
/* 9EA24 8009DE24 10000001 */  b          .L8009DE2C
/* 9EA28 8009DE28 00000000 */   nop
.L8009DE2C:
/* 9EA2C 8009DE2C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 9EA30 8009DE30 8FB00024 */  lw         $s0, 0x24($sp)
/* 9EA34 8009DE34 8FB10028 */  lw         $s1, 0x28($sp)
/* 9EA38 8009DE38 03E00008 */  jr         $ra
/* 9EA3C 8009DE3C 27BD00A8 */   addiu     $sp, $sp, 0xa8
