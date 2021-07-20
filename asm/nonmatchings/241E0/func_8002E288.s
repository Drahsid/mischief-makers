glabel func_8002E288
/* 2EE88 8002E288 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2EE8C 8002E28C 000E7880 */  sll        $t7, $t6, 2
/* 2EE90 8002E290 01EE7823 */  subu       $t7, $t7, $t6
/* 2EE94 8002E294 000F7880 */  sll        $t7, $t7, 2
/* 2EE98 8002E298 01EE7821 */  addu       $t7, $t7, $t6
/* 2EE9C 8002E29C 000F7880 */  sll        $t7, $t7, 2
/* 2EEA0 8002E2A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2EEA4 8002E2A4 01EE7823 */  subu       $t7, $t7, $t6
/* 2EEA8 8002E2A8 3C18800F */  lui        $t8, %hi(gActors)
/* 2EEAC 8002E2AC AFB00018 */  sw         $s0, 0x18($sp)
/* 2EEB0 8002E2B0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2EEB4 8002E2B4 000F78C0 */  sll        $t7, $t7, 3
/* 2EEB8 8002E2B8 01F88021 */  addu       $s0, $t7, $t8
/* 2EEBC 8002E2BC 8E020098 */  lw         $v0, 0x98($s0)
/* 2EEC0 8002E2C0 AFA40020 */  sw         $a0, 0x20($sp)
/* 2EEC4 8002E2C4 30590002 */  andi       $t9, $v0, 2
/* 2EEC8 8002E2C8 01C02025 */  or         $a0, $t6, $zero
/* 2EECC 8002E2CC 17200008 */  bnez       $t9, .L8002E2F0
/* 2EED0 8002E2D0 AFBF001C */   sw        $ra, 0x1c($sp)
/* 2EED4 8002E2D4 30480001 */  andi       $t0, $v0, 1
/* 2EED8 8002E2D8 15000006 */  bnez       $t0, .L8002E2F4
/* 2EEDC 8002E2DC 3C013F00 */   lui       $at, 0x3f00
/* 2EEE0 8002E2E0 0C00AF04 */  jal        func_8002BC10
/* 2EEE4 8002E2E4 00000000 */   nop
/* 2EEE8 8002E2E8 1040000A */  beqz       $v0, .L8002E314
/* 2EEEC 8002E2EC 3C063CA3 */   lui       $a2, 0x3ca3
.L8002E2F0:
/* 2EEF0 8002E2F0 3C013F00 */  lui        $at, 0x3f00
.L8002E2F4:
/* 2EEF4 8002E2F4 44816000 */  mtc1       $at, $f12
/* 2EEF8 8002E2F8 86050088 */  lh         $a1, 0x88($s0)
/* 2EEFC 8002E2FC 8606008C */  lh         $a2, 0x8c($s0)
/* 2EF00 8002E300 86070090 */  lh         $a3, 0x90($s0)
/* 2EF04 8002E304 0C00FE78 */  jal        func_8003F9E0
/* 2EF08 8002E308 AE000080 */   sw        $zero, 0x80($s0)
/* 2EF0C 8002E30C 10000079 */  b          .L8002E4F4
/* 2EF10 8002E310 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002E314:
/* 2EF14 8002E314 44801000 */  mtc1       $zero, $f2
/* 2EF18 8002E318 C6000118 */  lwc1       $f0, 0x118($s0)
/* 2EF1C 8002E31C 3C013F80 */  lui        $at, 0x3f80
/* 2EF20 8002E320 46001032 */  c.eq.s     $f2, $f0
/* 2EF24 8002E324 00000000 */  nop
/* 2EF28 8002E328 45010010 */  bc1t       .L8002E36C
/* 2EF2C 8002E32C 00000000 */   nop
/* 2EF30 8002E330 44812000 */  mtc1       $at, $f4
/* 2EF34 8002E334 00000000 */  nop
/* 2EF38 8002E338 46040181 */  sub.s      $f6, $f0, $f4
/* 2EF3C 8002E33C E6060118 */  swc1       $f6, 0x118($s0)
/* 2EF40 8002E340 C6080118 */  lwc1       $f8, 0x118($s0)
/* 2EF44 8002E344 00000000 */  nop
/* 2EF48 8002E348 46081032 */  c.eq.s     $f2, $f8
/* 2EF4C 8002E34C 00000000 */  nop
/* 2EF50 8002E350 45000007 */  bc1f       .L8002E370
/* 2EF54 8002E354 3C013F00 */   lui       $at, 0x3f00
/* 2EF58 8002E358 8E090080 */  lw         $t1, 0x80($s0)
/* 2EF5C 8002E35C 8E0A015C */  lw         $t2, 0x15c($s0)
/* 2EF60 8002E360 00000000 */  nop
/* 2EF64 8002E364 012A5825 */  or         $t3, $t1, $t2
/* 2EF68 8002E368 AE0B0080 */  sw         $t3, 0x80($s0)
.L8002E36C:
/* 2EF6C 8002E36C 3C013F00 */  lui        $at, 0x3f00
.L8002E370:
/* 2EF70 8002E370 44817000 */  mtc1       $at, $f14
/* 2EF74 8002E374 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 2EF78 8002E378 0C00A618 */  jal        func_80029860
/* 2EF7C 8002E37C 34C6D70A */   ori       $a2, $a2, 0xd70a
/* 2EF80 8002E380 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 2EF84 8002E384 3C01800F */  lui        $at, %hi(D_800EB8B8)
/* 2EF88 8002E388 C42EB8B8 */  lwc1       $f14, %lo(D_800EB8B8)($at)
/* 2EF8C 8002E38C C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 2EF90 8002E390 3C063D4C */  lui        $a2, 0x3d4c
/* 2EF94 8002E394 0C00A618 */  jal        func_80029860
/* 2EF98 8002E398 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 2EF9C 8002E39C 8E0400EC */  lw         $a0, 0xec($s0)
/* 2EFA0 8002E3A0 8E050150 */  lw         $a1, 0x150($s0)
/* 2EFA4 8002E3A4 8E060164 */  lw         $a2, 0x164($s0)
/* 2EFA8 8002E3A8 0C00A607 */  jal        func_8002981C
/* 2EFAC 8002E3AC E60000B8 */   swc1      $f0, 0xb8($s0)
/* 2EFB0 8002E3B0 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 2EFB4 8002E3B4 8E050154 */  lw         $a1, 0x154($s0)
/* 2EFB8 8002E3B8 8E060168 */  lw         $a2, 0x168($s0)
/* 2EFBC 8002E3BC 0C00A607 */  jal        func_8002981C
/* 2EFC0 8002E3C0 AE0200EC */   sw        $v0, 0xec($s0)
/* 2EFC4 8002E3C4 AE0200F0 */  sw         $v0, 0xf0($s0)
/* 2EFC8 8002E3C8 3C0C800C */  lui        $t4, %hi(D_800BE4E0)
/* 2EFCC 8002E3CC 958CE4E0 */  lhu        $t4, %lo(D_800BE4E0)($t4)
/* 2EFD0 8002E3D0 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 2EFD4 8002E3D4 318D0003 */  andi       $t5, $t4, 3
/* 2EFD8 8002E3D8 15A00045 */  bnez       $t5, .L8002E4F0
/* 2EFDC 8002E3DC 24841380 */   addiu     $a0, $a0, %lo(D_800E1380)
/* 2EFE0 8002E3E0 86070090 */  lh         $a3, 0x90($s0)
/* 2EFE4 8002E3E4 86050088 */  lh         $a1, 0x88($s0)
/* 2EFE8 8002E3E8 8606008C */  lh         $a2, 0x8c($s0)
/* 2EFEC 8002E3EC 0C00C48F */  jal        func_8003123C
/* 2EFF0 8002E3F0 24E7FFFF */   addiu     $a3, $a3, -1
/* 2EFF4 8002E3F4 1040003E */  beqz       $v0, .L8002E4F0
/* 2EFF8 8002E3F8 3C01800F */   lui       $at, 0x800f
/* 2EFFC 8002E3FC 00027080 */  sll        $t6, $v0, 2
/* 2F000 8002E400 01C27023 */  subu       $t6, $t6, $v0
/* 2F004 8002E404 000E7080 */  sll        $t6, $t6, 2
/* 2F008 8002E408 01C27021 */  addu       $t6, $t6, $v0
/* 2F00C 8002E40C 000E7080 */  sll        $t6, $t6, 2
/* 2F010 8002E410 01C27023 */  subu       $t6, $t6, $v0
/* 2F014 8002E414 3C0F800F */  lui        $t7, %hi(gActors)
/* 2F018 8002E418 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2F01C 8002E41C 000E70C0 */  sll        $t6, $t6, 3
/* 2F020 8002E420 C421B8C0 */  lwc1       $f1, -0x4740($at)
/* 2F024 8002E424 C420B8C4 */  lwc1       $f0, -0x473c($at)
/* 2F028 8002E428 01CF1821 */  addu       $v1, $t6, $t7
/* 2F02C 8002E42C 24180019 */  addiu      $t8, $zero, 0x19
/* 2F030 8002E430 A4780094 */  sh         $t8, 0x94($v1)
/* 2F034 8002E434 96190084 */  lhu        $t9, 0x84($s0)
/* 2F038 8002E438 24080050 */  addiu      $t0, $zero, 0x50
/* 2F03C 8002E43C A068009D */  sb         $t0, 0x9d($v1)
/* 2F040 8002E440 A4790084 */  sh         $t9, 0x84($v1)
/* 2F044 8002E444 8E0A0158 */  lw         $t2, 0x158($s0)
/* 2F048 8002E448 2409007F */  addiu      $t1, $zero, 0x7f
/* 2F04C 8002E44C 3C010200 */  lui        $at, 0x200
/* 2F050 8002E450 A209009E */  sb         $t1, 0x9e($s0)
/* 2F054 8002E454 01415821 */  addu       $t3, $t2, $at
/* 2F058 8002E458 AC6B0160 */  sw         $t3, 0x160($v1)
/* 2F05C 8002E45C C60A00B4 */  lwc1       $f10, 0xb4($s0)
/* 2F060 8002E460 2408FFFF */  addiu      $t0, $zero, -1
/* 2F064 8002E464 46005421 */  cvt.d.s    $f16, $f10
/* 2F068 8002E468 46208480 */  add.d      $f18, $f16, $f0
/* 2F06C 8002E46C 2409FFFC */  addiu      $t1, $zero, -4
/* 2F070 8002E470 46209120 */  cvt.s.d    $f4, $f18
/* 2F074 8002E474 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 2F078 8002E478 C60600B8 */  lwc1       $f6, 0xb8($s0)
/* 2F07C 8002E47C 00000000 */  nop
/* 2F080 8002E480 46003221 */  cvt.d.s    $f8, $f6
/* 2F084 8002E484 46204280 */  add.d      $f10, $f8, $f0
/* 2F088 8002E488 46205420 */  cvt.s.d    $f16, $f10
/* 2F08C 8002E48C E47000B8 */  swc1       $f16, 0xb8($v1)
/* 2F090 8002E490 8E0C00EC */  lw         $t4, 0xec($s0)
/* 2F094 8002E494 00000000 */  nop
/* 2F098 8002E498 000C6823 */  negu       $t5, $t4
/* 2F09C 8002E49C 05A10003 */  bgez       $t5, .L8002E4AC
/* 2F0A0 8002E4A0 000D7043 */   sra       $t6, $t5, 1
/* 2F0A4 8002E4A4 25A10001 */  addiu      $at, $t5, 1
/* 2F0A8 8002E4A8 00017043 */  sra        $t6, $at, 1
.L8002E4AC:
/* 2F0AC 8002E4AC AC6E00EC */  sw         $t6, 0xec($v1)
/* 2F0B0 8002E4B0 8E0F00F0 */  lw         $t7, 0xf0($s0)
/* 2F0B4 8002E4B4 AC6800F4 */  sw         $t0, 0xf4($v1)
/* 2F0B8 8002E4B8 000FC023 */  negu       $t8, $t7
/* 2F0BC 8002E4BC 07010003 */  bgez       $t8, .L8002E4CC
/* 2F0C0 8002E4C0 0018C843 */   sra       $t9, $t8, 1
/* 2F0C4 8002E4C4 27010001 */  addiu      $at, $t8, 1
/* 2F0C8 8002E4C8 0001C843 */  sra        $t9, $at, 1
.L8002E4CC:
/* 2F0CC 8002E4CC 3C014100 */  lui        $at, 0x4100
/* 2F0D0 8002E4D0 44819000 */  mtc1       $at, $f18
/* 2F0D4 8002E4D4 AC7900F0 */  sw         $t9, 0xf0($v1)
/* 2F0D8 8002E4D8 AC690154 */  sw         $t1, 0x154($v1)
/* 2F0DC 8002E4DC 3C01800F */  lui        $at, %hi(D_800EB8C8)
/* 2F0E0 8002E4E0 E4720148 */  swc1       $f18, 0x148($v1)
/* 2F0E4 8002E4E4 C424B8C8 */  lwc1       $f4, %lo(D_800EB8C8)($at)
/* 2F0E8 8002E4E8 00000000 */  nop
/* 2F0EC 8002E4EC E4640114 */  swc1       $f4, 0x114($v1)
.L8002E4F0:
/* 2F0F0 8002E4F0 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002E4F4:
/* 2F0F4 8002E4F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2F0F8 8002E4F8 03E00008 */  jr         $ra
/* 2F0FC 8002E4FC 27BD0020 */   addiu     $sp, $sp, 0x20
