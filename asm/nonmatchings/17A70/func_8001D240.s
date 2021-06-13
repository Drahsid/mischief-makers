glabel func_8001D240
/* 1DE40 8001D240 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1DE44 8001D244 AFBF003C */  sw         $ra, 0x3c($sp)
/* 1DE48 8001D248 AFB30038 */  sw         $s3, 0x38($sp)
/* 1DE4C 8001D24C AFB20034 */  sw         $s2, 0x34($sp)
/* 1DE50 8001D250 AFB10030 */  sw         $s1, 0x30($sp)
/* 1DE54 8001D254 0C007429 */  jal        func_8001D0A4
/* 1DE58 8001D258 AFB0002C */   sw        $s0, 0x2c($sp)
/* 1DE5C 8001D25C 3C118018 */  lui        $s1, %hi(D_80178168)
/* 1DE60 8001D260 8E318168 */  lw         $s1, %lo(D_80178168)($s1)
/* 1DE64 8001D264 240E0002 */  addiu      $t6, $zero, 2
/* 1DE68 8001D268 240F00C0 */  addiu      $t7, $zero, 0xc0
/* 1DE6C 8001D26C AFAF001C */  sw         $t7, 0x1c($sp)
/* 1DE70 8001D270 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1DE74 8001D274 2404003C */  addiu      $a0, $zero, 0x3c
/* 1DE78 8001D278 3045FFFF */  andi       $a1, $v0, 0xffff
/* 1DE7C 8001D27C 2406005A */  addiu      $a2, $zero, 0x5a
/* 1DE80 8001D280 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1DE84 8001D284 AFA00014 */  sw         $zero, 0x14($sp)
/* 1DE88 8001D288 0C009D1A */  jal        func_80027468
/* 1DE8C 8001D28C AFA00018 */   sw        $zero, 0x18($sp)
/* 1DE90 8001D290 2413003C */  addiu      $s3, $zero, 0x3c
/* 1DE94 8001D294 0233001B */  divu       $zero, $s1, $s3
/* 1DE98 8001D298 24020003 */  addiu      $v0, $zero, 3
/* 1DE9C 8001D29C 24010064 */  addiu      $at, $zero, 0x64
/* 1DEA0 8001D2A0 16600002 */  bnez       $s3, .L8001D2AC
/* 1DEA4 8001D2A4 00000000 */   nop
/* 1DEA8 8001D2A8 0007000D */  break      7
.L8001D2AC:
/* 1DEAC 8001D2AC 3C05800D */   lui       $a1, %hi(D_800C96C4)
/* 1DEB0 8001D2B0 24A596C4 */  addiu      $a1, $a1, %lo(D_800C96C4)
/* 1DEB4 8001D2B4 2404003D */  addiu      $a0, $zero, 0x3d
/* 1DEB8 8001D2B8 3406FFAA */  ori        $a2, $zero, 0xffaa
/* 1DEBC 8001D2BC 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1DEC0 8001D2C0 240B0002 */  addiu      $t3, $zero, 2
/* 1DEC4 8001D2C4 00008010 */  mfhi       $s0
/* 1DEC8 8001D2C8 0010C140 */  sll        $t8, $s0, 5
/* 1DECC 8001D2CC 0310C023 */  subu       $t8, $t8, $s0
/* 1DED0 8001D2D0 0018C080 */  sll        $t8, $t8, 2
/* 1DED4 8001D2D4 0310C021 */  addu       $t8, $t8, $s0
/* 1DED8 8001D2D8 0018C080 */  sll        $t8, $t8, 2
/* 1DEDC 8001D2DC 0302001B */  divu       $zero, $t8, $v0
/* 1DEE0 8001D2E0 14400002 */  bnez       $v0, .L8001D2EC
/* 1DEE4 8001D2E4 00000000 */   nop
/* 1DEE8 8001D2E8 0007000D */  break      7
.L8001D2EC:
/* 1DEEC 8001D2EC 0000C812 */   mflo      $t9
/* 1DEF0 8001D2F0 00000000 */  nop
/* 1DEF4 8001D2F4 00000000 */  nop
/* 1DEF8 8001D2F8 0321001B */  divu       $zero, $t9, $at
/* 1DEFC 8001D2FC 00004010 */  mfhi       $t0
/* 1DF00 8001D300 2D010032 */  sltiu      $at, $t0, 0x32
/* 1DF04 8001D304 1020000A */  beqz       $at, .L8001D330
/* 1DF08 8001D308 00000000 */   nop
/* 1DF0C 8001D30C 00104880 */  sll        $t1, $s0, 2
/* 1DF10 8001D310 01304821 */  addu       $t1, $t1, $s0
/* 1DF14 8001D314 0122001B */  divu       $zero, $t1, $v0
/* 1DF18 8001D318 14400002 */  bnez       $v0, .L8001D324
/* 1DF1C 8001D31C 00000000 */   nop
/* 1DF20 8001D320 0007000D */  break      7
.L8001D324:
/* 1DF24 8001D324 00001812 */   mflo      $v1
/* 1DF28 8001D328 1000000B */  b          .L8001D358
/* 1DF2C 8001D32C 3C013F80 */   lui       $at, 0x3f80
.L8001D330:
/* 1DF30 8001D330 00105080 */  sll        $t2, $s0, 2
/* 1DF34 8001D334 01505021 */  addu       $t2, $t2, $s0
/* 1DF38 8001D338 0142001B */  divu       $zero, $t2, $v0
/* 1DF3C 8001D33C 14400002 */  bnez       $v0, .L8001D348
/* 1DF40 8001D340 00000000 */   nop
/* 1DF44 8001D344 0007000D */  break      7
.L8001D348:
/* 1DF48 8001D348 00001812 */   mflo      $v1
/* 1DF4C 8001D34C 24630001 */  addiu      $v1, $v1, 1
/* 1DF50 8001D350 00000000 */  nop
/* 1DF54 8001D354 3C013F80 */  lui        $at, 0x3f80
.L8001D358:
/* 1DF58 8001D358 44810000 */  mtc1       $at, $f0
/* 1DF5C 8001D35C AFAB0010 */  sw         $t3, 0x10($sp)
/* 1DF60 8001D360 AFA00014 */  sw         $zero, 0x14($sp)
/* 1DF64 8001D364 AFA00018 */  sw         $zero, 0x18($sp)
/* 1DF68 8001D368 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1DF6C 8001D36C AFA30040 */  sw         $v1, 0x40($sp)
/* 1DF70 8001D370 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1DF74 8001D374 0C009F65 */  jal        func_80027D94
/* 1DF78 8001D378 E7A00024 */   swc1      $f0, 0x24($sp)
/* 1DF7C 8001D37C 8FA30040 */  lw         $v1, 0x40($sp)
/* 1DF80 8001D380 2412000A */  addiu      $s2, $zero, 0xa
/* 1DF84 8001D384 0072001B */  divu       $zero, $v1, $s2
/* 1DF88 8001D388 240E0002 */  addiu      $t6, $zero, 2
/* 1DF8C 8001D38C AFAE0010 */  sw         $t6, 0x10($sp)
/* 1DF90 8001D390 24040041 */  addiu      $a0, $zero, 0x41
/* 1DF94 8001D394 16400002 */  bnez       $s2, .L8001D3A0
/* 1DF98 8001D398 00000000 */   nop
/* 1DF9C 8001D39C 0007000D */  break      7
.L8001D3A0:
/* 1DFA0 8001D3A0 2406002A */   addiu     $a2, $zero, 0x2a
/* 1DFA4 8001D3A4 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1DFA8 8001D3A8 00002812 */  mflo       $a1
/* 1DFAC 8001D3AC 00056040 */  sll        $t4, $a1, 1
/* 1DFB0 8001D3B0 25850414 */  addiu      $a1, $t4, 0x414
/* 1DFB4 8001D3B4 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 1DFB8 8001D3B8 0C009CFF */  jal        func_800273FC
/* 1DFBC 8001D3BC 01A02825 */   or        $a1, $t5, $zero
/* 1DFC0 8001D3C0 8FA30040 */  lw         $v1, 0x40($sp)
/* 1DFC4 8001D3C4 24190002 */  addiu      $t9, $zero, 2
/* 1DFC8 8001D3C8 0072001B */  divu       $zero, $v1, $s2
/* 1DFCC 8001D3CC AFB90010 */  sw         $t9, 0x10($sp)
/* 1DFD0 8001D3D0 24040042 */  addiu      $a0, $zero, 0x42
/* 1DFD4 8001D3D4 16400002 */  bnez       $s2, .L8001D3E0
/* 1DFD8 8001D3D8 00000000 */   nop
/* 1DFDC 8001D3DC 0007000D */  break      7
.L8001D3E0:
/* 1DFE0 8001D3E0 2406003A */   addiu     $a2, $zero, 0x3a
/* 1DFE4 8001D3E4 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1DFE8 8001D3E8 00002810 */  mfhi       $a1
/* 1DFEC 8001D3EC 00057840 */  sll        $t7, $a1, 1
/* 1DFF0 8001D3F0 25E50414 */  addiu      $a1, $t7, 0x414
/* 1DFF4 8001D3F4 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 1DFF8 8001D3F8 0C009CFF */  jal        func_800273FC
/* 1DFFC 8001D3FC 03002825 */   or        $a1, $t8, $zero
/* 1E000 8001D400 0233001B */  divu       $zero, $s1, $s3
/* 1E004 8001D404 240A0002 */  addiu      $t2, $zero, 2
/* 1E008 8001D408 16600002 */  bnez       $s3, .L8001D414
/* 1E00C 8001D40C 00000000 */   nop
/* 1E010 8001D410 0007000D */  break      7
.L8001D414:
/* 1E014 8001D414 AFAA0010 */   sw        $t2, 0x10($sp)
/* 1E018 8001D418 24040043 */  addiu      $a0, $zero, 0x43
/* 1E01C 8001D41C 3406FFFA */  ori        $a2, $zero, 0xfffa
/* 1E020 8001D420 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1E024 8001D424 00008812 */  mflo       $s1
/* 1E028 8001D428 00000000 */  nop
/* 1E02C 8001D42C 00000000 */  nop
/* 1E030 8001D430 0233001B */  divu       $zero, $s1, $s3
/* 1E034 8001D434 16600002 */  bnez       $s3, .L8001D440
/* 1E038 8001D438 00000000 */   nop
/* 1E03C 8001D43C 0007000D */  break      7
.L8001D440:
/* 1E040 8001D440 00008010 */   mfhi      $s0
/* 1E044 8001D444 00000000 */  nop
/* 1E048 8001D448 00000000 */  nop
/* 1E04C 8001D44C 0212001B */  divu       $zero, $s0, $s2
/* 1E050 8001D450 16400002 */  bnez       $s2, .L8001D45C
/* 1E054 8001D454 00000000 */   nop
/* 1E058 8001D458 0007000D */  break      7
.L8001D45C:
/* 1E05C 8001D45C 00002812 */   mflo      $a1
/* 1E060 8001D460 00054040 */  sll        $t0, $a1, 1
/* 1E064 8001D464 25050414 */  addiu      $a1, $t0, 0x414
/* 1E068 8001D468 30A9FFFF */  andi       $t1, $a1, 0xffff
/* 1E06C 8001D46C 0C009CFF */  jal        func_800273FC
/* 1E070 8001D470 01202825 */   or        $a1, $t1, $zero
/* 1E074 8001D474 0212001B */  divu       $zero, $s0, $s2
/* 1E078 8001D478 240D0002 */  addiu      $t5, $zero, 2
/* 1E07C 8001D47C AFAD0010 */  sw         $t5, 0x10($sp)
/* 1E080 8001D480 24040044 */  addiu      $a0, $zero, 0x44
/* 1E084 8001D484 16400002 */  bnez       $s2, .L8001D490
/* 1E088 8001D488 00000000 */   nop
/* 1E08C 8001D48C 0007000D */  break      7
.L8001D490:
/* 1E090 8001D490 3246FFFF */   andi      $a2, $s2, 0xffff
/* 1E094 8001D494 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1E098 8001D498 00002810 */  mfhi       $a1
/* 1E09C 8001D49C 00055840 */  sll        $t3, $a1, 1
/* 1E0A0 8001D4A0 25650414 */  addiu      $a1, $t3, 0x414
/* 1E0A4 8001D4A4 30ACFFFF */  andi       $t4, $a1, 0xffff
/* 1E0A8 8001D4A8 0C009CFF */  jal        func_800273FC
/* 1E0AC 8001D4AC 01802825 */   or        $a1, $t4, $zero
/* 1E0B0 8001D4B0 0233001B */  divu       $zero, $s1, $s3
/* 1E0B4 8001D4B4 24180002 */  addiu      $t8, $zero, 2
/* 1E0B8 8001D4B8 16600002 */  bnez       $s3, .L8001D4C4
/* 1E0BC 8001D4BC 00000000 */   nop
/* 1E0C0 8001D4C0 0007000D */  break      7
.L8001D4C4:
/* 1E0C4 8001D4C4 AFB80010 */   sw        $t8, 0x10($sp)
/* 1E0C8 8001D4C8 24040045 */  addiu      $a0, $zero, 0x45
/* 1E0CC 8001D4CC 3406FFCA */  ori        $a2, $zero, 0xffca
/* 1E0D0 8001D4D0 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1E0D4 8001D4D4 00008812 */  mflo       $s1
/* 1E0D8 8001D4D8 00000000 */  nop
/* 1E0DC 8001D4DC 00000000 */  nop
/* 1E0E0 8001D4E0 0233001B */  divu       $zero, $s1, $s3
/* 1E0E4 8001D4E4 16600002 */  bnez       $s3, .L8001D4F0
/* 1E0E8 8001D4E8 00000000 */   nop
/* 1E0EC 8001D4EC 0007000D */  break      7
.L8001D4F0:
/* 1E0F0 8001D4F0 00008010 */   mfhi      $s0
/* 1E0F4 8001D4F4 00000000 */  nop
/* 1E0F8 8001D4F8 00000000 */  nop
/* 1E0FC 8001D4FC 0212001B */  divu       $zero, $s0, $s2
/* 1E100 8001D500 16400002 */  bnez       $s2, .L8001D50C
/* 1E104 8001D504 00000000 */   nop
/* 1E108 8001D508 0007000D */  break      7
.L8001D50C:
/* 1E10C 8001D50C 00002812 */   mflo      $a1
/* 1E110 8001D510 00057040 */  sll        $t6, $a1, 1
/* 1E114 8001D514 25C50414 */  addiu      $a1, $t6, 0x414
/* 1E118 8001D518 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1E11C 8001D51C 0C009CFF */  jal        func_800273FC
/* 1E120 8001D520 01E02825 */   or        $a1, $t7, $zero
/* 1E124 8001D524 0212001B */  divu       $zero, $s0, $s2
/* 1E128 8001D528 24090002 */  addiu      $t1, $zero, 2
/* 1E12C 8001D52C AFA90010 */  sw         $t1, 0x10($sp)
/* 1E130 8001D530 24040046 */  addiu      $a0, $zero, 0x46
/* 1E134 8001D534 16400002 */  bnez       $s2, .L8001D540
/* 1E138 8001D538 00000000 */   nop
/* 1E13C 8001D53C 0007000D */  break      7
.L8001D540:
/* 1E140 8001D540 3406FFDA */   ori       $a2, $zero, 0xffda
/* 1E144 8001D544 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1E148 8001D548 00002810 */  mfhi       $a1
/* 1E14C 8001D54C 0005C840 */  sll        $t9, $a1, 1
/* 1E150 8001D550 27250414 */  addiu      $a1, $t9, 0x414
/* 1E154 8001D554 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 1E158 8001D558 0C009CFF */  jal        func_800273FC
/* 1E15C 8001D55C 01002825 */   or        $a1, $t0, $zero
/* 1E160 8001D560 0233001B */  divu       $zero, $s1, $s3
/* 1E164 8001D564 240B0002 */  addiu      $t3, $zero, 2
/* 1E168 8001D568 16600002 */  bnez       $s3, .L8001D574
/* 1E16C 8001D56C 00000000 */   nop
/* 1E170 8001D570 0007000D */  break      7
.L8001D574:
/* 1E174 8001D574 AFAB0010 */   sw        $t3, 0x10($sp)
/* 1E178 8001D578 24040047 */  addiu      $a0, $zero, 0x47
/* 1E17C 8001D57C 3406FFAA */  ori        $a2, $zero, 0xffaa
/* 1E180 8001D580 3407FFB8 */  ori        $a3, $zero, 0xffb8
/* 1E184 8001D584 00008812 */  mflo       $s1
/* 1E188 8001D588 00112840 */  sll        $a1, $s1, 1
/* 1E18C 8001D58C 24A50414 */  addiu      $a1, $a1, 0x414
/* 1E190 8001D590 30AAFFFF */  andi       $t2, $a1, 0xffff
/* 1E194 8001D594 0C009CFF */  jal        func_800273FC
/* 1E198 8001D598 01402825 */   or        $a1, $t2, $zero
/* 1E19C 8001D59C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 1E1A0 8001D5A0 8FB0002C */  lw         $s0, 0x2c($sp)
/* 1E1A4 8001D5A4 8FB10030 */  lw         $s1, 0x30($sp)
/* 1E1A8 8001D5A8 8FB20034 */  lw         $s2, 0x34($sp)
/* 1E1AC 8001D5AC 8FB30038 */  lw         $s3, 0x38($sp)
/* 1E1B0 8001D5B0 03E00008 */  jr         $ra
/* 1E1B4 8001D5B4 27BD0048 */   addiu     $sp, $sp, 0x48
