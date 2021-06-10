glabel func_8008B284
/* 8BE84 8008B284 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8BE88 8008B288 AFA40028 */  sw         $a0, 0x28($sp)
/* 8BE8C 8008B28C 97AE002A */  lhu        $t6, 0x2a($sp)
/* 8BE90 8008B290 3C18800F */  lui        $t8, 0x800f
/* 8BE94 8008B294 000E7880 */  sll        $t7, $t6, 2
/* 8BE98 8008B298 01EE7823 */  subu       $t7, $t7, $t6
/* 8BE9C 8008B29C 000F7880 */  sll        $t7, $t7, 2
/* 8BEA0 8008B2A0 01EE7821 */  addu       $t7, $t7, $t6
/* 8BEA4 8008B2A4 000F7880 */  sll        $t7, $t7, 2
/* 8BEA8 8008B2A8 01EE7823 */  subu       $t7, $t7, $t6
/* 8BEAC 8008B2AC AFB00018 */  sw         $s0, 0x18($sp)
/* 8BEB0 8008B2B0 000F78C0 */  sll        $t7, $t7, 3
/* 8BEB4 8008B2B4 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8BEB8 8008B2B8 01F88021 */  addu       $s0, $t7, $t8
/* 8BEBC 8008B2BC 8E02016C */  lw         $v0, 0x16c($s0)
/* 8BEC0 8008B2C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8BEC4 8008B2C4 1040000D */  beqz       $v0, .L8008B2FC
/* 8BEC8 8008B2C8 A7A00026 */   sh        $zero, 0x26($sp)
/* 8BECC 8008B2CC 24010001 */  addiu      $at, $zero, 1
/* 8BED0 8008B2D0 1041000D */  beq        $v0, $at, .L8008B308
/* 8BED4 8008B2D4 3C063E99 */   lui       $a2, 0x3e99
/* 8BED8 8008B2D8 24010002 */  addiu      $at, $zero, 2
/* 8BEDC 8008B2DC 10410020 */  beq        $v0, $at, .L8008B360
/* 8BEE0 8008B2E0 3C063F33 */   lui       $a2, 0x3f33
/* 8BEE4 8008B2E4 24010003 */  addiu      $at, $zero, 3
/* 8BEE8 8008B2E8 10410037 */  beq        $v0, $at, .L8008B3C8
/* 8BEEC 8008B2EC 3C063E4C */   lui       $a2, 0x3e4c
/* 8BEF0 8008B2F0 8E030170 */  lw         $v1, 0x170($s0)
/* 8BEF4 8008B2F4 1000004A */  b          .L8008B420
/* 8BEF8 8008B2F8 246FFFFF */   addiu     $t7, $v1, -1
.L8008B2FC:
/* 8BEFC 8008B2FC 24030006 */  addiu      $v1, $zero, 6
/* 8BF00 8008B300 10000046 */  b          .L8008B41C
/* 8BF04 8008B304 AE030170 */   sw        $v1, 0x170($s0)
.L8008B308:
/* 8BF08 8008B308 3C01800F */  lui        $at, %hi(D_800ED26C)
/* 8BF0C 8008B30C C42ED26C */  lwc1       $f14, %lo(D_800ED26C)($at)
/* 8BF10 8008B310 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8BF14 8008B314 0C00A618 */  jal        func_80029860
/* 8BF18 8008B318 34C6999A */   ori       $a2, $a2, 0x999a
/* 8BF1C 8008B31C E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8BF20 8008B320 3C01800F */  lui        $at, %hi(D_800ED270)
/* 8BF24 8008B324 C42ED270 */  lwc1       $f14, %lo(D_800ED270)($at)
/* 8BF28 8008B328 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8BF2C 8008B32C 3C063F33 */  lui        $a2, 0x3f33
/* 8BF30 8008B330 0C00A618 */  jal        func_80029860
/* 8BF34 8008B334 34C63333 */   ori       $a2, $a2, 0x3333
/* 8BF38 8008B338 8E030170 */  lw         $v1, 0x170($s0)
/* 8BF3C 8008B33C E60000B8 */  swc1       $f0, 0xb8($s0)
/* 8BF40 8008B340 04610037 */  bgez       $v1, .L8008B420
/* 8BF44 8008B344 246FFFFF */   addiu     $t7, $v1, -1
/* 8BF48 8008B348 8E09016C */  lw         $t1, 0x16c($s0)
/* 8BF4C 8008B34C 24030002 */  addiu      $v1, $zero, 2
/* 8BF50 8008B350 252A0001 */  addiu      $t2, $t1, 1
/* 8BF54 8008B354 AE030170 */  sw         $v1, 0x170($s0)
/* 8BF58 8008B358 10000030 */  b          .L8008B41C
/* 8BF5C 8008B35C AE0A016C */   sw        $t2, 0x16c($s0)
.L8008B360:
/* 8BF60 8008B360 3C01800F */  lui        $at, %hi(D_800ED274)
/* 8BF64 8008B364 C42ED274 */  lwc1       $f14, %lo(D_800ED274)($at)
/* 8BF68 8008B368 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8BF6C 8008B36C 0C00A618 */  jal        func_80029860
/* 8BF70 8008B370 34C63333 */   ori       $a2, $a2, 0x3333
/* 8BF74 8008B374 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8BF78 8008B378 3C01800F */  lui        $at, %hi(D_800ED278)
/* 8BF7C 8008B37C C42ED278 */  lwc1       $f14, %lo(D_800ED278)($at)
/* 8BF80 8008B380 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8BF84 8008B384 3C063F33 */  lui        $a2, 0x3f33
/* 8BF88 8008B388 0C00A618 */  jal        func_80029860
/* 8BF8C 8008B38C 34C63333 */   ori       $a2, $a2, 0x3333
/* 8BF90 8008B390 8E030170 */  lw         $v1, 0x170($s0)
/* 8BF94 8008B394 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 8BF98 8008B398 04610020 */  bgez       $v1, .L8008B41C
/* 8BF9C 8008B39C 240B0006 */   addiu     $t3, $zero, 6
/* 8BFA0 8008B3A0 8E0C016C */  lw         $t4, 0x16c($s0)
/* 8BFA4 8008B3A4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 8BFA8 8008B3A8 258D0001 */  addiu      $t5, $t4, 1
/* 8BFAC 8008B3AC AE0B0170 */  sw         $t3, 0x170($s0)
/* 8BFB0 8008B3B0 0C022BFA */  jal        func_8008AFE8
/* 8BFB4 8008B3B4 AE0D016C */   sw        $t5, 0x16c($s0)
/* 8BFB8 8008B3B8 240E0001 */  addiu      $t6, $zero, 1
/* 8BFBC 8008B3BC 8E030170 */  lw         $v1, 0x170($s0)
/* 8BFC0 8008B3C0 10000016 */  b          .L8008B41C
/* 8BFC4 8008B3C4 A7AE0026 */   sh        $t6, 0x26($sp)
.L8008B3C8:
/* 8BFC8 8008B3C8 3C013F80 */  lui        $at, 0x3f80
/* 8BFCC 8008B3CC 44817000 */  mtc1       $at, $f14
/* 8BFD0 8008B3D0 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8BFD4 8008B3D4 0C00A618 */  jal        func_80029860
/* 8BFD8 8008B3D8 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8BFDC 8008B3DC 3C013F80 */  lui        $at, 0x3f80
/* 8BFE0 8008B3E0 44817000 */  mtc1       $at, $f14
/* 8BFE4 8008B3E4 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8BFE8 8008B3E8 3C063E4C */  lui        $a2, 0x3e4c
/* 8BFEC 8008B3EC E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8BFF0 8008B3F0 0C00A618 */  jal        func_80029860
/* 8BFF4 8008B3F4 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8BFF8 8008B3F8 8E030170 */  lw         $v1, 0x170($s0)
/* 8BFFC 8008B3FC 3C013F80 */  lui        $at, 0x3f80
/* 8C000 8008B400 44811000 */  mtc1       $at, $f2
/* 8C004 8008B404 04610005 */  bgez       $v1, .L8008B41C
/* 8C008 8008B408 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 8C00C 8008B40C 8E030170 */  lw         $v1, 0x170($s0)
/* 8C010 8008B410 E60200B8 */  swc1       $f2, 0xb8($s0)
/* 8C014 8008B414 E60200B4 */  swc1       $f2, 0xb4($s0)
/* 8C018 8008B418 AE00016C */  sw         $zero, 0x16c($s0)
.L8008B41C:
/* 8C01C 8008B41C 246FFFFF */  addiu      $t7, $v1, -1
.L8008B420:
/* 8C020 8008B420 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8C024 8008B424 AE0F0170 */  sw         $t7, 0x170($s0)
/* 8C028 8008B428 8FB00018 */  lw         $s0, 0x18($sp)
/* 8C02C 8008B42C 97A20026 */  lhu        $v0, 0x26($sp)
/* 8C030 8008B430 03E00008 */  jr         $ra
/* 8C034 8008B434 27BD0028 */   addiu     $sp, $sp, 0x28
