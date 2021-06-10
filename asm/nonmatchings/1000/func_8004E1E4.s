glabel func_8004E1E4
/* 4EDE4 8004E1E4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4EDE8 8004E1E8 AFA40048 */  sw         $a0, 0x48($sp)
/* 4EDEC 8004E1EC 97AE004A */  lhu        $t6, 0x4a($sp)
/* 4EDF0 8004E1F0 3C18800F */  lui        $t8, 0x800f
/* 4EDF4 8004E1F4 000E7880 */  sll        $t7, $t6, 2
/* 4EDF8 8004E1F8 01EE7823 */  subu       $t7, $t7, $t6
/* 4EDFC 8004E1FC 000F7880 */  sll        $t7, $t7, 2
/* 4EE00 8004E200 01EE7821 */  addu       $t7, $t7, $t6
/* 4EE04 8004E204 000F7880 */  sll        $t7, $t7, 2
/* 4EE08 8004E208 01EE7823 */  subu       $t7, $t7, $t6
/* 4EE0C 8004E20C AFB00018 */  sw         $s0, 0x18($sp)
/* 4EE10 8004E210 000F78C0 */  sll        $t7, $t7, 3
/* 4EE14 8004E214 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4EE18 8004E218 01F88021 */  addu       $s0, $t7, $t8
/* 4EE1C 8004E21C 920200D0 */  lbu        $v0, 0xd0($s0)
/* 4EE20 8004E220 241900FF */  addiu      $t9, $zero, 0xff
/* 4EE24 8004E224 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4EE28 8004E228 1040000D */  beqz       $v0, .L8004E260
/* 4EE2C 8004E22C A219012E */   sb        $t9, 0x12e($s0)
/* 4EE30 8004E230 24010001 */  addiu      $at, $zero, 1
/* 4EE34 8004E234 1041004A */  beq        $v0, $at, .L8004E360
/* 4EE38 8004E238 3C063E19 */   lui       $a2, 0x3e19
/* 4EE3C 8004E23C 24010002 */  addiu      $at, $zero, 2
/* 4EE40 8004E240 10410062 */  beq        $v0, $at, .L8004E3CC
/* 4EE44 8004E244 3C063D4C */   lui       $a2, 0x3d4c
/* 4EE48 8004E248 24010003 */  addiu      $at, $zero, 3
/* 4EE4C 8004E24C 10410081 */  beq        $v0, $at, .L8004E454
/* 4EE50 8004E250 00000000 */   nop
/* 4EE54 8004E254 8E020150 */  lw         $v0, 0x150($s0)
/* 4EE58 8004E258 10000086 */  b          .L8004E474
/* 4EE5C 8004E25C 00000000 */   nop
.L8004E260:
/* 4EE60 8004E260 8E080080 */  lw         $t0, 0x80($s0)
/* 4EE64 8004E264 240A00A7 */  addiu      $t2, $zero, 0xa7
/* 4EE68 8004E268 35090001 */  ori        $t1, $t0, 1
/* 4EE6C 8004E26C AE090080 */  sw         $t1, 0x80($s0)
/* 4EE70 8004E270 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 4EE74 8004E274 AE0000EC */  sw         $zero, 0xec($s0)
/* 4EE78 8004E278 AE0A0170 */  sw         $t2, 0x170($s0)
/* 4EE7C 8004E27C 3C01800F */  lui        $at, %hi(D_800EBDB8)
/* 4EE80 8004E280 C424BDB8 */  lwc1       $f4, %lo(D_800EBDB8)($at)
/* 4EE84 8004E284 860D0090 */  lh         $t5, 0x90($s0)
/* 4EE88 8004E288 3C014040 */  lui        $at, 0x4040
/* 4EE8C 8004E28C 44813000 */  mtc1       $at, $f6
/* 4EE90 8004E290 860B0088 */  lh         $t3, 0x88($s0)
/* 4EE94 8004E294 860C008C */  lh         $t4, 0x8c($s0)
/* 4EE98 8004E298 97A4004A */  lhu        $a0, 0x4a($sp)
/* 4EE9C 8004E29C 25AE0001 */  addiu      $t6, $t5, 1
/* 4EEA0 8004E2A0 AFAE003C */  sw         $t6, 0x3c($sp)
/* 4EEA4 8004E2A4 27A50034 */  addiu      $a1, $sp, 0x34
/* 4EEA8 8004E2A8 E6040124 */  swc1       $f4, 0x124($s0)
/* 4EEAC 8004E2AC E6060128 */  swc1       $f6, 0x128($s0)
/* 4EEB0 8004E2B0 AFAB0034 */  sw         $t3, 0x34($sp)
/* 4EEB4 8004E2B4 0C0164A8 */  jal        func_800592A0
/* 4EEB8 8004E2B8 AFAC0038 */   sw        $t4, 0x38($sp)
/* 4EEBC 8004E2BC 10400022 */  beqz       $v0, .L8004E348
/* 4EEC0 8004E2C0 240D000A */   addiu     $t5, $zero, 0xa
/* 4EEC4 8004E2C4 00027880 */  sll        $t7, $v0, 2
/* 4EEC8 8004E2C8 01E27823 */  subu       $t7, $t7, $v0
/* 4EECC 8004E2CC 000F7880 */  sll        $t7, $t7, 2
/* 4EED0 8004E2D0 01E27821 */  addu       $t7, $t7, $v0
/* 4EED4 8004E2D4 000F7880 */  sll        $t7, $t7, 2
/* 4EED8 8004E2D8 01E27823 */  subu       $t7, $t7, $v0
/* 4EEDC 8004E2DC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 4EEE0 8004E2E0 3C01800F */  lui        $at, %hi(D_800EBDBC)
/* 4EEE4 8004E2E4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 4EEE8 8004E2E8 000F78C0 */  sll        $t7, $t7, 3
/* 4EEEC 8004E2EC C422BDBC */  lwc1       $f2, %lo(D_800EBDBC)($at)
/* 4EEF0 8004E2F0 01F81821 */  addu       $v1, $t7, $t8
/* 4EEF4 8004E2F4 94790094 */  lhu        $t9, 0x94($v1)
/* 4EEF8 8004E2F8 3C01800F */  lui        $at, %hi(D_800EBDC0)
/* 4EEFC 8004E2FC C42EBDC0 */  lwc1       $f14, %lo(D_800EBDC0)($at)
/* 4EF00 8004E300 240900CE */  addiu      $t1, $zero, 0xce
/* 4EF04 8004E304 37280801 */  ori        $t0, $t9, 0x801
/* 4EF08 8004E308 A4680094 */  sh         $t0, 0x94($v1)
/* 4EF0C 8004E30C A4690084 */  sh         $t1, 0x84($v1)
/* 4EF10 8004E310 8E0A0188 */  lw         $t2, 0x188($s0)
/* 4EF14 8004E314 44800000 */  mtc1       $zero, $f0
/* 4EF18 8004E318 3C0141F0 */  lui        $at, 0x41f0
/* 4EF1C 8004E31C 44814000 */  mtc1       $at, $f8
/* 4EF20 8004E320 240BFFFC */  addiu      $t3, $zero, -4
/* 4EF24 8004E324 AC6B0154 */  sw         $t3, 0x154($v1)
/* 4EF28 8004E328 E4620118 */  swc1       $f2, 0x118($v1)
/* 4EF2C 8004E32C E462011C */  swc1       $f2, 0x11c($v1)
/* 4EF30 8004E330 E46E00B4 */  swc1       $f14, 0xb4($v1)
/* 4EF34 8004E334 E46E00B8 */  swc1       $f14, 0xb8($v1)
/* 4EF38 8004E338 AC6A0188 */  sw         $t2, 0x188($v1)
/* 4EF3C 8004E33C E4600114 */  swc1       $f0, 0x114($v1)
/* 4EF40 8004E340 E4600110 */  swc1       $f0, 0x110($v1)
/* 4EF44 8004E344 E4680148 */  swc1       $f8, 0x148($v1)
.L8004E348:
/* 4EF48 8004E348 240200FF */  addiu      $v0, $zero, 0xff
/* 4EF4C 8004E34C 240E0001 */  addiu      $t6, $zero, 1
/* 4EF50 8004E350 AE020150 */  sw         $v0, 0x150($s0)
/* 4EF54 8004E354 AE0D0154 */  sw         $t5, 0x154($s0)
/* 4EF58 8004E358 10000046 */  b          .L8004E474
/* 4EF5C 8004E35C A20E00D0 */   sb        $t6, 0xd0($s0)
.L8004E360:
/* 4EF60 8004E360 3C013FC0 */  lui        $at, 0x3fc0
/* 4EF64 8004E364 44817000 */  mtc1       $at, $f14
/* 4EF68 8004E368 C60C0124 */  lwc1       $f12, 0x124($s0)
/* 4EF6C 8004E36C 0C00A618 */  jal        func_80029860
/* 4EF70 8004E370 34C6999A */   ori       $a2, $a2, 0x999a
/* 4EF74 8004E374 3C01800F */  lui        $at, %hi(D_800EBDC4)
/* 4EF78 8004E378 C42EBDC4 */  lwc1       $f14, %lo(D_800EBDC4)($at)
/* 4EF7C 8004E37C C60C0128 */  lwc1       $f12, 0x128($s0)
/* 4EF80 8004E380 3C063E94 */  lui        $a2, 0x3e94
/* 4EF84 8004E384 E6000124 */  swc1       $f0, 0x124($s0)
/* 4EF88 8004E388 0C00A618 */  jal        func_80029860
/* 4EF8C 8004E38C 34C67AE1 */   ori       $a2, $a2, 0x7ae1
/* 4EF90 8004E390 8E0F0154 */  lw         $t7, 0x154($s0)
/* 4EF94 8004E394 E6000128 */  swc1       $f0, 0x128($s0)
/* 4EF98 8004E398 25F8FFFF */  addiu      $t8, $t7, -1
/* 4EF9C 8004E39C 1F000007 */  bgtz       $t8, .L8004E3BC
/* 4EFA0 8004E3A0 AE180154 */   sw        $t8, 0x154($s0)
/* 4EFA4 8004E3A4 2408000A */  addiu      $t0, $zero, 0xa
/* 4EFA8 8004E3A8 AE080154 */  sw         $t0, 0x154($s0)
/* 4EFAC 8004E3AC 0C000CD3 */  jal        func_8000334C
/* 4EFB0 8004E3B0 24040085 */   addiu     $a0, $zero, 0x85
/* 4EFB4 8004E3B4 24090002 */  addiu      $t1, $zero, 2
/* 4EFB8 8004E3B8 A20900D0 */  sb         $t1, 0xd0($s0)
.L8004E3BC:
/* 4EFBC 8004E3BC 240A0008 */  addiu      $t2, $zero, 8
/* 4EFC0 8004E3C0 8E020150 */  lw         $v0, 0x150($s0)
/* 4EFC4 8004E3C4 1000002B */  b          .L8004E474
/* 4EFC8 8004E3C8 A20A0183 */   sb        $t2, 0x183($s0)
.L8004E3CC:
/* 4EFCC 8004E3CC 3C013F80 */  lui        $at, 0x3f80
/* 4EFD0 8004E3D0 44817000 */  mtc1       $at, $f14
/* 4EFD4 8004E3D4 C60C0124 */  lwc1       $f12, 0x124($s0)
/* 4EFD8 8004E3D8 0C00A618 */  jal        func_80029860
/* 4EFDC 8004E3DC 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 4EFE0 8004E3E0 3C013F80 */  lui        $at, 0x3f80
/* 4EFE4 8004E3E4 44817000 */  mtc1       $at, $f14
/* 4EFE8 8004E3E8 C60C0128 */  lwc1       $f12, 0x128($s0)
/* 4EFEC 8004E3EC 3C063DB8 */  lui        $a2, 0x3db8
/* 4EFF0 8004E3F0 E6000124 */  swc1       $f0, 0x124($s0)
/* 4EFF4 8004E3F4 0C00A618 */  jal        func_80029860
/* 4EFF8 8004E3F8 34C651EC */   ori       $a2, $a2, 0x51ec
/* 4EFFC 8004E3FC 8E0B0150 */  lw         $t3, 0x150($s0)
/* 4F000 8004E400 8E0D0154 */  lw         $t5, 0x154($s0)
/* 4F004 8004E404 3C013F80 */  lui        $at, 0x3f80
/* 4F008 8004E408 44811000 */  mtc1       $at, $f2
/* 4F00C 8004E40C 256CFFCD */  addiu      $t4, $t3, -0x33
/* 4F010 8004E410 25AEFFFF */  addiu      $t6, $t5, -1
/* 4F014 8004E414 E6000128 */  swc1       $f0, 0x128($s0)
/* 4F018 8004E418 AE0C0150 */  sw         $t4, 0x150($s0)
/* 4F01C 8004E41C 1DC00009 */  bgtz       $t6, .L8004E444
/* 4F020 8004E420 AE0E0154 */   sw        $t6, 0x154($s0)
/* 4F024 8004E424 2418FF6A */  addiu      $t8, $zero, -0x96
/* 4F028 8004E428 241900A8 */  addiu      $t9, $zero, 0xa8
/* 4F02C 8004E42C 24080003 */  addiu      $t0, $zero, 3
/* 4F030 8004E430 AE180150 */  sw         $t8, 0x150($s0)
/* 4F034 8004E434 E6020128 */  swc1       $f2, 0x128($s0)
/* 4F038 8004E438 E6020124 */  swc1       $f2, 0x124($s0)
/* 4F03C 8004E43C AE190170 */  sw         $t9, 0x170($s0)
/* 4F040 8004E440 A20800D0 */  sb         $t0, 0xd0($s0)
.L8004E444:
/* 4F044 8004E444 24090008 */  addiu      $t1, $zero, 8
/* 4F048 8004E448 8E020150 */  lw         $v0, 0x150($s0)
/* 4F04C 8004E44C 10000009 */  b          .L8004E474
/* 4F050 8004E450 A2090183 */   sb        $t1, 0x183($s0)
.L8004E454:
/* 4F054 8004E454 8E0A0150 */  lw         $t2, 0x150($s0)
/* 4F058 8004E458 240C0002 */  addiu      $t4, $zero, 2
/* 4F05C 8004E45C 25420006 */  addiu      $v0, $t2, 6
/* 4F060 8004E460 04400004 */  bltz       $v0, .L8004E474
/* 4F064 8004E464 AE020150 */   sw        $v0, 0x150($s0)
/* 4F068 8004E468 AE000150 */  sw         $zero, 0x150($s0)
/* 4F06C 8004E46C A60C00D0 */  sh         $t4, 0xd0($s0)
/* 4F070 8004E470 00001025 */  or         $v0, $zero, $zero
.L8004E474:
/* 4F074 8004E474 04410003 */  bgez       $v0, .L8004E484
/* 4F078 8004E478 00022043 */   sra       $a0, $v0, 1
/* 4F07C 8004E47C 24410001 */  addiu      $at, $v0, 1
/* 4F080 8004E480 00012043 */  sra        $a0, $at, 1
.L8004E484:
/* 4F084 8004E484 0C0171B4 */  jal        func_8005C6D0
/* 4F088 8004E488 00000000 */   nop
/* 4F08C 8004E48C 8E0D0150 */  lw         $t5, 0x150($s0)
/* 4F090 8004E490 A202009E */  sb         $v0, 0x9e($s0)
/* 4F094 8004E494 A202009D */  sb         $v0, 0x9d($s0)
/* 4F098 8004E498 05A00006 */  bltz       $t5, .L8004E4B4
/* 4F09C 8004E49C A202009C */   sb        $v0, 0x9c($s0)
/* 4F0A0 8004E4A0 960E0094 */  lhu        $t6, 0x94($s0)
/* 4F0A4 8004E4A4 00000000 */  nop
/* 4F0A8 8004E4A8 31CFFFEF */  andi       $t7, $t6, 0xffef
/* 4F0AC 8004E4AC 10000005 */  b          .L8004E4C4
/* 4F0B0 8004E4B0 A60F0094 */   sh        $t7, 0x94($s0)
.L8004E4B4:
/* 4F0B4 8004E4B4 96180094 */  lhu        $t8, 0x94($s0)
/* 4F0B8 8004E4B8 00000000 */  nop
/* 4F0BC 8004E4BC 37190010 */  ori        $t9, $t8, 0x10
/* 4F0C0 8004E4C0 A6190094 */  sh         $t9, 0x94($s0)
.L8004E4C4:
/* 4F0C4 8004E4C4 97A4004A */  lhu        $a0, 0x4a($sp)
/* 4F0C8 8004E4C8 0C017154 */  jal        func_8005C550
/* 4F0CC 8004E4CC 2405001E */   addiu     $a1, $zero, 0x1e
/* 4F0D0 8004E4D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4F0D4 8004E4D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 4F0D8 8004E4D8 03E00008 */  jr         $ra
/* 4F0DC 8004E4DC 27BD0048 */   addiu     $sp, $sp, 0x48
