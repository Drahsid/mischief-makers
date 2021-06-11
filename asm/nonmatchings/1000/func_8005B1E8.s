glabel func_8005B1E8
/* 5BDE8 8005B1E8 3C0F8013 */  lui        $t7, %hi(D_8013745C)
/* 5BDEC 8005B1EC 8DEF745C */  lw         $t7, %lo(D_8013745C)($t7)
/* 5BDF0 8005B1F0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5BDF4 8005B1F4 24010005 */  addiu      $at, $zero, 5
/* 5BDF8 8005B1F8 01EEC021 */  addu       $t8, $t7, $t6
/* 5BDFC 8005B1FC 0301001A */  div        $zero, $t8, $at
/* 5BE00 8005B200 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5BE04 8005B204 AFA40040 */  sw         $a0, 0x40($sp)
/* 5BE08 8005B208 01C02025 */  or         $a0, $t6, $zero
/* 5BE0C 8005B20C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5BE10 8005B210 29C10010 */  slti       $at, $t6, 0x10
/* 5BE14 8005B214 0000C810 */  mfhi       $t9
/* 5BE18 8005B218 17200073 */  bnez       $t9, .L8005B3E8
/* 5BE1C 8005B21C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5BE20 8005B220 1020000C */  beqz       $at, .L8005B254
/* 5BE24 8005B224 000E4080 */   sll       $t0, $t6, 2
/* 5BE28 8005B228 010E4023 */  subu       $t0, $t0, $t6
/* 5BE2C 8005B22C 00084080 */  sll        $t0, $t0, 2
/* 5BE30 8005B230 010E4021 */  addu       $t0, $t0, $t6
/* 5BE34 8005B234 00084080 */  sll        $t0, $t0, 2
/* 5BE38 8005B238 010E4023 */  subu       $t0, $t0, $t6
/* 5BE3C 8005B23C 000840C0 */  sll        $t0, $t0, 3
/* 5BE40 8005B240 3C09800F */  lui        $t1, %hi(D_800EF5B0)
/* 5BE44 8005B244 01284821 */  addu       $t1, $t1, $t0
/* 5BE48 8005B248 9129F5B0 */  lbu        $t1, %lo(D_800EF5B0)($t1)
/* 5BE4C 8005B24C 00000000 */  nop
/* 5BE50 8005B250 11200064 */  beqz       $t1, .L8005B3E4
.L8005B254:
/* 5BE54 8005B254 00045080 */   sll       $t2, $a0, 2
/* 5BE58 8005B258 01445023 */  subu       $t2, $t2, $a0
/* 5BE5C 8005B25C 000A5080 */  sll        $t2, $t2, 2
/* 5BE60 8005B260 01445021 */  addu       $t2, $t2, $a0
/* 5BE64 8005B264 000A5080 */  sll        $t2, $t2, 2
/* 5BE68 8005B268 01445023 */  subu       $t2, $t2, $a0
/* 5BE6C 8005B26C 3C0B800F */  lui        $t3, %hi(gActors)
/* 5BE70 8005B270 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 5BE74 8005B274 000A50C0 */  sll        $t2, $t2, 3
/* 5BE78 8005B278 014B1021 */  addu       $v0, $t2, $t3
/* 5BE7C 8005B27C 844D00B0 */  lh         $t5, 0xb0($v0)
/* 5BE80 8005B280 844E008C */  lh         $t6, 0x8c($v0)
/* 5BE84 8005B284 84580090 */  lh         $t8, 0x90($v0)
/* 5BE88 8005B288 844C0088 */  lh         $t4, 0x88($v0)
/* 5BE8C 8005B28C 01AE7821 */  addu       $t7, $t5, $t6
/* 5BE90 8005B290 27190001 */  addiu      $t9, $t8, 1
/* 5BE94 8005B294 AFAF0030 */  sw         $t7, 0x30($sp)
/* 5BE98 8005B298 AFB90034 */  sw         $t9, 0x34($sp)
/* 5BE9C 8005B29C 27A5002C */  addiu      $a1, $sp, 0x2c
/* 5BEA0 8005B2A0 A7A40042 */  sh         $a0, 0x42($sp)
/* 5BEA4 8005B2A4 0C0164A8 */  jal        func_800592A0
/* 5BEA8 8005B2A8 AFAC002C */   sw        $t4, 0x2c($sp)
/* 5BEAC 8005B2AC 97A40042 */  lhu        $a0, 0x42($sp)
/* 5BEB0 8005B2B0 1040004C */  beqz       $v0, .L8005B3E4
/* 5BEB4 8005B2B4 3045FFFF */   andi      $a1, $v0, 0xffff
/* 5BEB8 8005B2B8 00054080 */  sll        $t0, $a1, 2
/* 5BEBC 8005B2BC 01054023 */  subu       $t0, $t0, $a1
/* 5BEC0 8005B2C0 00084080 */  sll        $t0, $t0, 2
/* 5BEC4 8005B2C4 01054021 */  addu       $t0, $t0, $a1
/* 5BEC8 8005B2C8 00084080 */  sll        $t0, $t0, 2
/* 5BECC 8005B2CC 01054023 */  subu       $t0, $t0, $a1
/* 5BED0 8005B2D0 3C09800F */  lui        $t1, %hi(gActors)
/* 5BED4 8005B2D4 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 5BED8 8005B2D8 000840C0 */  sll        $t0, $t0, 3
/* 5BEDC 8005B2DC 01091821 */  addu       $v1, $t0, $t1
/* 5BEE0 8005B2E0 3C014080 */  lui        $at, 0x4080
/* 5BEE4 8005B2E4 44813000 */  mtc1       $at, $f6
/* 5BEE8 8005B2E8 946A0094 */  lhu        $t2, 0x94($v1)
/* 5BEEC 8005B2EC 8C6C0080 */  lw         $t4, 0x80($v1)
/* 5BEF0 8005B2F0 3C0141A0 */  lui        $at, 0x41a0
/* 5BEF4 8005B2F4 8C6E0088 */  lw         $t6, 0x88($v1)
/* 5BEF8 8005B2F8 8C6F008C */  lw         $t7, 0x8c($v1)
/* 5BEFC 8005B2FC 44802000 */  mtc1       $zero, $f4
/* 5BF00 8005B300 44814000 */  mtc1       $at, $f8
/* 5BF04 8005B304 241801D8 */  addiu      $t8, $zero, 0x1d8
/* 5BF08 8005B308 2419FFF6 */  addiu      $t9, $zero, -0xa
/* 5BF0C 8005B30C 354B0001 */  ori        $t3, $t2, 1
/* 5BF10 8005B310 358D8000 */  ori        $t5, $t4, 0x8000
/* 5BF14 8005B314 A46B0094 */  sh         $t3, 0x94($v1)
/* 5BF18 8005B318 AC6D0080 */  sw         $t5, 0x80($v1)
/* 5BF1C 8005B31C A4780084 */  sh         $t8, 0x84($v1)
/* 5BF20 8005B320 AC790154 */  sw         $t9, 0x154($v1)
/* 5BF24 8005B324 3C01800F */  lui        $at, 0x800f
/* 5BF28 8005B328 E4660144 */  swc1       $f6, 0x144($v1)
/* 5BF2C 8005B32C AC6E0184 */  sw         $t6, 0x184($v1)
/* 5BF30 8005B330 AC6F0188 */  sw         $t7, 0x188($v1)
/* 5BF34 8005B334 E4640140 */  swc1       $f4, 0x140($v1)
/* 5BF38 8005B338 E4680148 */  swc1       $f8, 0x148($v1)
/* 5BF3C 8005B33C C42ABF04 */  lwc1       $f10, -0x40fc($at)
/* 5BF40 8005B340 3C01800F */  lui        $at, %hi(D_800EBF08)
/* 5BF44 8005B344 E46A0110 */  swc1       $f10, 0x110($v1)
/* 5BF48 8005B348 C430BF08 */  lwc1       $f16, %lo(D_800EBF08)($at)
/* 5BF4C 8005B34C 3C01800F */  lui        $at, %hi(D_800EBF0C)
/* 5BF50 8005B350 E4700118 */  swc1       $f16, 0x118($v1)
/* 5BF54 8005B354 C432BF0C */  lwc1       $f18, %lo(D_800EBF0C)($at)
/* 5BF58 8005B358 3C01800F */  lui        $at, %hi(D_800EBF10)
/* 5BF5C 8005B35C E4720114 */  swc1       $f18, 0x114($v1)
/* 5BF60 8005B360 C424BF10 */  lwc1       $f4, %lo(D_800EBF10)($at)
/* 5BF64 8005B364 AFA30020 */  sw         $v1, 0x20($sp)
/* 5BF68 8005B368 0C01746C */  jal        func_8005D1B0
/* 5BF6C 8005B36C E464011C */   swc1      $f4, 0x11c($v1)
/* 5BF70 8005B370 8FA30020 */  lw         $v1, 0x20($sp)
/* 5BF74 8005B374 1040000B */  beqz       $v0, .L8005B3A4
/* 5BF78 8005B378 3C01800F */   lui       $at, 0x800f
/* 5BF7C 8005B37C 24010001 */  addiu      $at, $zero, 1
/* 5BF80 8005B380 1041000D */  beq        $v0, $at, .L8005B3B8
/* 5BF84 8005B384 24010002 */   addiu     $at, $zero, 2
/* 5BF88 8005B388 10410011 */  beq        $v0, $at, .L8005B3D0
/* 5BF8C 8005B38C 3C013F80 */   lui       $at, 0x3f80
/* 5BF90 8005B390 44810000 */  mtc1       $at, $f0
/* 5BF94 8005B394 00000000 */  nop
/* 5BF98 8005B398 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5BF9C 8005B39C 10000011 */  b          .L8005B3E4
/* 5BFA0 8005B3A0 E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B3A4:
/* 5BFA4 8005B3A4 C420BF14 */  lwc1       $f0, -0x40ec($at)
/* 5BFA8 8005B3A8 00000000 */  nop
/* 5BFAC 8005B3AC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5BFB0 8005B3B0 1000000C */  b          .L8005B3E4
/* 5BFB4 8005B3B4 E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B3B8:
/* 5BFB8 8005B3B8 3C013F80 */  lui        $at, 0x3f80
/* 5BFBC 8005B3BC 44810000 */  mtc1       $at, $f0
/* 5BFC0 8005B3C0 00000000 */  nop
/* 5BFC4 8005B3C4 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5BFC8 8005B3C8 10000006 */  b          .L8005B3E4
/* 5BFCC 8005B3CC E46000B8 */   swc1      $f0, 0xb8($v1)
.L8005B3D0:
/* 5BFD0 8005B3D0 3C013FC0 */  lui        $at, 0x3fc0
/* 5BFD4 8005B3D4 44810000 */  mtc1       $at, $f0
/* 5BFD8 8005B3D8 00000000 */  nop
/* 5BFDC 8005B3DC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5BFE0 8005B3E0 E46000B8 */  swc1       $f0, 0xb8($v1)
.L8005B3E4:
/* 5BFE4 8005B3E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005B3E8:
/* 5BFE8 8005B3E8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5BFEC 8005B3EC 03E00008 */  jr         $ra
/* 5BFF0 8005B3F0 00000000 */   nop
