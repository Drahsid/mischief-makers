glabel func_8001A254
/* 1AE54 8001A254 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1AE58 8001A258 3C028018 */  lui        $v0, %hi(D_8017815E)
/* 1AE5C 8001A25C 3C048018 */  lui        $a0, %hi(D_8017815C)
/* 1AE60 8001A260 9484815C */  lhu        $a0, %lo(D_8017815C)($a0)
/* 1AE64 8001A264 9442815E */  lhu        $v0, %lo(D_8017815E)($v0)
/* 1AE68 8001A268 AFBF004C */  sw         $ra, 0x4c($sp)
/* 1AE6C 8001A26C 0044082A */  slt        $at, $v0, $a0
/* 1AE70 8001A270 AFBE0048 */  sw         $fp, 0x48($sp)
/* 1AE74 8001A274 AFB70044 */  sw         $s7, 0x44($sp)
/* 1AE78 8001A278 AFB60040 */  sw         $s6, 0x40($sp)
/* 1AE7C 8001A27C AFB5003C */  sw         $s5, 0x3c($sp)
/* 1AE80 8001A280 AFB40038 */  sw         $s4, 0x38($sp)
/* 1AE84 8001A284 AFB30034 */  sw         $s3, 0x34($sp)
/* 1AE88 8001A288 AFB20030 */  sw         $s2, 0x30($sp)
/* 1AE8C 8001A28C AFB1002C */  sw         $s1, 0x2c($sp)
/* 1AE90 8001A290 AFB00028 */  sw         $s0, 0x28($sp)
/* 1AE94 8001A294 E7B50020 */  swc1       $f21, 0x20($sp)
/* 1AE98 8001A298 E7B40024 */  swc1       $f20, 0x24($sp)
/* 1AE9C 8001A29C 10200003 */  beqz       $at, .L8001A2AC
/* 1AEA0 8001A2A0 00801825 */   or        $v1, $a0, $zero
/* 1AEA4 8001A2A4 10000027 */  b          .L8001A344
/* 1AEA8 8001A2A8 00001025 */   or        $v0, $zero, $zero
.L8001A2AC:
/* 1AEAC 8001A2AC 1443001E */  bne        $v0, $v1, .L8001A328
/* 1AEB0 8001A2B0 00044840 */   sll       $t1, $a0, 1
/* 1AEB4 8001A2B4 3C038017 */  lui        $v1, %hi(gWorldProgress)
/* 1AEB8 8001A2B8 90631B18 */  lbu        $v1, %lo(gWorldProgress)($v1)
/* 1AEBC 8001A2BC 3C028018 */  lui        $v0, 0x8018
/* 1AEC0 8001A2C0 2861003B */  slti       $at, $v1, 0x3b
/* 1AEC4 8001A2C4 14200003 */  bnez       $at, .L8001A2D4
/* 1AEC8 8001A2C8 3C0E8018 */   lui       $t6, %hi(D_80178152)
/* 1AECC 8001A2CC 1000001D */  b          .L8001A344
/* 1AED0 8001A2D0 24020009 */   addiu     $v0, $zero, 9
.L8001A2D4:
/* 1AED4 8001A2D4 95CE8152 */  lhu        $t6, %lo(D_80178152)($t6)
/* 1AED8 8001A2D8 94428158 */  lhu        $v0, -0x7ea8($v0)
/* 1AEDC 8001A2DC 11C00019 */  beqz       $t6, .L8001A344
/* 1AEE0 8001A2E0 24010038 */   addiu     $at, $zero, 0x38
/* 1AEE4 8001A2E4 10610017 */  beq        $v1, $at, .L8001A344
/* 1AEE8 8001A2E8 3C0F8018 */   lui       $t7, %hi(D_80178156)
/* 1AEEC 8001A2EC 95EF8156 */  lhu        $t7, %lo(D_80178156)($t7)
/* 1AEF0 8001A2F0 0004C040 */  sll        $t8, $a0, 1
/* 1AEF4 8001A2F4 15E00003 */  bnez       $t7, .L8001A304
/* 1AEF8 8001A2F8 3C19800D */   lui       $t9, %hi(D_800C8C04)
/* 1AEFC 8001A2FC 10000011 */  b          .L8001A344
/* 1AF00 8001A300 00001025 */   or        $v0, $zero, $zero
.L8001A304:
/* 1AF04 8001A304 0338C821 */  addu       $t9, $t9, $t8
/* 1AF08 8001A308 97398C04 */  lhu        $t9, %lo(D_800C8C04)($t9)
/* 1AF0C 8001A30C 00000000 */  nop
/* 1AF10 8001A310 1059000D */  beq        $v0, $t9, .L8001A348
/* 1AF14 8001A314 00009825 */   or        $s3, $zero, $zero
/* 1AF18 8001A318 24420001 */  addiu      $v0, $v0, 1
/* 1AF1C 8001A31C 3048FFFF */  andi       $t0, $v0, 0xffff
/* 1AF20 8001A320 10000008 */  b          .L8001A344
/* 1AF24 8001A324 01001025 */   or        $v0, $t0, $zero
.L8001A328:
/* 1AF28 8001A328 3C02800D */  lui        $v0, %hi(D_800C8C04)
/* 1AF2C 8001A32C 00491021 */  addu       $v0, $v0, $t1
/* 1AF30 8001A330 94428C04 */  lhu        $v0, %lo(D_800C8C04)($v0)
/* 1AF34 8001A334 24010004 */  addiu      $at, $zero, 4
/* 1AF38 8001A338 14610003 */  bne        $v1, $at, .L8001A348
/* 1AF3C 8001A33C 00009825 */   or        $s3, $zero, $zero
/* 1AF40 8001A340 24020009 */  addiu      $v0, $zero, 9
.L8001A344:
/* 1AF44 8001A344 00009825 */  or         $s3, $zero, $zero
.L8001A348:
/* 1AF48 8001A348 18400080 */  blez       $v0, .L8001A54C
/* 1AF4C 8001A34C AFA20050 */   sw        $v0, 0x50($sp)
/* 1AF50 8001A350 3C013F40 */  lui        $at, 0x3f40
/* 1AF54 8001A354 3C16800F */  lui        $s6, %hi(gActors)
/* 1AF58 8001A358 4481A000 */  mtc1       $at, $f20
/* 1AF5C 8001A35C 26D6F510 */  addiu      $s6, $s6, %lo(gActors)
/* 1AF60 8001A360 00008825 */  or         $s1, $zero, $zero
/* 1AF64 8001A364 341E8000 */  ori        $fp, $zero, 0x8000
/* 1AF68 8001A368 24170198 */  addiu      $s7, $zero, 0x198
.L8001A36C:
/* 1AF6C 8001A36C 3C0B8018 */  lui        $t3, %hi(D_80178154)
/* 1AF70 8001A370 956B8154 */  lhu        $t3, %lo(D_80178154)($t3)
/* 1AF74 8001A374 00000000 */  nop
/* 1AF78 8001A378 01718021 */  addu       $s0, $t3, $s1
/* 1AF7C 8001A37C 320CFFFF */  andi       $t4, $s0, 0xffff
/* 1AF80 8001A380 29810037 */  slti       $at, $t4, 0x37
/* 1AF84 8001A384 01808025 */  or         $s0, $t4, $zero
/* 1AF88 8001A388 14200004 */  bnez       $at, .L8001A39C
/* 1AF8C 8001A38C 01809025 */   or        $s2, $t4, $zero
/* 1AF90 8001A390 25900001 */  addiu      $s0, $t4, 1
/* 1AF94 8001A394 3212FFFF */  andi       $s2, $s0, 0xffff
/* 1AF98 8001A398 02408025 */  or         $s0, $s2, $zero
.L8001A39C:
/* 1AF9C 8001A39C 0C0071FC */  jal        func_8001C7F0
/* 1AFA0 8001A3A0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 1AFA4 8001A3A4 14400002 */  bnez       $v0, .L8001A3B0
/* 1AFA8 8001A3A8 2624009C */   addiu     $a0, $s1, 0x9c
/* 1AFAC 8001A3AC 1060002A */  beqz       $v1, .L8001A458
.L8001A3B0:
/* 1AFB0 8001A3B0 00131040 */   sll       $v0, $s3, 1
/* 1AFB4 8001A3B4 3C06800D */  lui        $a2, %hi(D_800C95F4)
/* 1AFB8 8001A3B8 3C18800D */  lui        $t8, %hi(D_800C9610)
/* 1AFBC 8001A3BC 0302C021 */  addu       $t8, $t8, $v0
/* 1AFC0 8001A3C0 00C23021 */  addu       $a2, $a2, $v0
/* 1AFC4 8001A3C4 84C695F4 */  lh         $a2, %lo(D_800C95F4)($a2)
/* 1AFC8 8001A3C8 87189610 */  lh         $t8, %lo(D_800C9610)($t8)
/* 1AFCC 8001A3CC 24C60006 */  addiu      $a2, $a2, 6
/* 1AFD0 8001A3D0 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 1AFD4 8001A3D4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1AFD8 8001A3D8 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 1AFDC 8001A3DC 3C14800E */  lui        $s4, %hi(D_800D8C78)
/* 1AFE0 8001A3E0 26948C78 */  addiu      $s4, $s4, %lo(D_800D8C78)
/* 1AFE4 8001A3E4 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 1AFE8 8001A3E8 01C02025 */  or         $a0, $t6, $zero
/* 1AFEC 8001A3EC 01E03025 */  or         $a2, $t7, $zero
/* 1AFF0 8001A3F0 06210004 */  bgez       $s1, .L8001A404
/* 1AFF4 8001A3F4 32390001 */   andi      $t9, $s1, 1
/* 1AFF8 8001A3F8 13200002 */  beqz       $t9, .L8001A404
/* 1AFFC 8001A3FC 00000000 */   nop
/* 1B000 8001A400 2739FFFE */  addiu      $t9, $t9, -2
.L8001A404:
/* 1B004 8001A404 001940C0 */  sll        $t0, $t9, 3
/* 1B008 8001A408 01194023 */  subu       $t0, $t0, $t9
/* 1B00C 8001A40C 00084080 */  sll        $t0, $t0, 2
/* 1B010 8001A410 01194023 */  subu       $t0, $t0, $t9
/* 1B014 8001A414 00084040 */  sll        $t0, $t0, 1
/* 1B018 8001A418 250AFFE5 */  addiu      $t2, $t0, -0x1b
/* 1B01C 8001A41C 030A3823 */  subu       $a3, $t8, $t2
/* 1B020 8001A420 30EBFFFF */  andi       $t3, $a3, 0xffff
/* 1B024 8001A424 01603825 */  or         $a3, $t3, $zero
/* 1B028 8001A428 0C009D44 */  jal        func_80027510
/* 1B02C 8001A42C AFA00010 */   sw        $zero, 0x10($sp)
/* 1B030 8001A430 02370019 */  multu      $s1, $s7
/* 1B034 8001A434 00006012 */  mflo       $t4
/* 1B038 8001A438 02CC6821 */  addu       $t5, $s6, $t4
/* 1B03C 8001A43C 01BE1021 */  addu       $v0, $t5, $fp
/* 1B040 8001A440 944E7934 */  lhu        $t6, 0x7934($v0)
/* 1B044 8001A444 E4547958 */  swc1       $f20, 0x7958($v0)
/* 1B048 8001A448 35CF0241 */  ori        $t7, $t6, 0x241
/* 1B04C 8001A44C A44F7934 */  sh         $t7, 0x7934($v0)
/* 1B050 8001A450 E4547954 */  swc1       $f20, 0x7954($v0)
/* 1B054 8001A454 AC547A2C */  sw         $s4, 0x7a2c($v0)
.L8001A458:
/* 1B058 8001A458 2401003A */  addiu      $at, $zero, 0x3a
/* 1B05C 8001A45C 16410008 */  bne        $s2, $at, .L8001A480
/* 1B060 8001A460 00105040 */   sll       $t2, $s0, 1
/* 1B064 8001A464 02370019 */  multu      $s1, $s7
/* 1B068 8001A468 24190037 */  addiu      $t9, $zero, 0x37
/* 1B06C 8001A46C 00004012 */  mflo       $t0
/* 1B070 8001A470 02C84821 */  addu       $t1, $s6, $t0
/* 1B074 8001A474 013EC021 */  addu       $t8, $t1, $fp
/* 1B078 8001A478 1000002E */  b          .L8001A534
/* 1B07C 8001A47C A7197928 */   sh        $t9, 0x7928($t8)
.L8001A480:
/* 1B080 8001A480 3C04800C */  lui        $a0, 0x800c
/* 1B084 8001A484 008A2021 */  addu       $a0, $a0, $t2
/* 1B088 8001A488 3C0B800D */  lui        $t3, %hi(D_800C95F4)
/* 1B08C 8001A48C 3C0C800D */  lui        $t4, %hi(D_800C9610)
/* 1B090 8001A490 258C9610 */  addiu      $t4, $t4, %lo(D_800C9610)
/* 1B094 8001A494 256B95F4 */  addiu      $t3, $t3, %lo(D_800C95F4)
/* 1B098 8001A498 94844F28 */  lhu        $a0, 0x4f28($a0)
/* 1B09C 8001A49C 00131040 */  sll        $v0, $s3, 1
/* 1B0A0 8001A4A0 004B9021 */  addu       $s2, $v0, $t3
/* 1B0A4 8001A4A4 004CA021 */  addu       $s4, $v0, $t4
/* 1B0A8 8001A4A8 3205FFFF */  andi       $a1, $s0, 0xffff
/* 1B0AC 8001A4AC 06210004 */  bgez       $s1, .L8001A4C0
/* 1B0B0 8001A4B0 32350001 */   andi      $s5, $s1, 1
/* 1B0B4 8001A4B4 12A00002 */  beqz       $s5, .L8001A4C0
/* 1B0B8 8001A4B8 00000000 */   nop
/* 1B0BC 8001A4BC 26B5FFFE */  addiu      $s5, $s5, -2
.L8001A4C0:
/* 1B0C0 8001A4C0 001568C0 */  sll        $t5, $s5, 3
/* 1B0C4 8001A4C4 01B56823 */  subu       $t5, $t5, $s5
/* 1B0C8 8001A4C8 000D6880 */  sll        $t5, $t5, 2
/* 1B0CC 8001A4CC 01B56823 */  subu       $t5, $t5, $s5
/* 1B0D0 8001A4D0 000D6840 */  sll        $t5, $t5, 1
/* 1B0D4 8001A4D4 25B5FFE5 */  addiu      $s5, $t5, -0x1b
/* 1B0D8 8001A4D8 32AEFFFF */  andi       $t6, $s5, 0xffff
/* 1B0DC 8001A4DC 0C0069D6 */  jal        func_8001A758
/* 1B0E0 8001A4E0 01C0A825 */   or        $s5, $t6, $zero
/* 1B0E4 8001A4E4 86460000 */  lh         $a2, ($s2)
/* 1B0E8 8001A4E8 86990000 */  lh         $t9, ($s4)
/* 1B0EC 8001A4EC 00024080 */  sll        $t0, $v0, 2
/* 1B0F0 8001A4F0 3C05800D */  lui        $a1, 0x800d
/* 1B0F4 8001A4F4 00A82821 */  addu       $a1, $a1, $t0
/* 1B0F8 8001A4F8 262400A8 */  addiu      $a0, $s1, 0xa8
/* 1B0FC 8001A4FC 3C0A800D */  lui        $t2, %hi(D_800D1790)
/* 1B100 8001A500 24C6FFFC */  addiu      $a2, $a2, -4
/* 1B104 8001A504 03353823 */  subu       $a3, $t9, $s5
/* 1B108 8001A508 30F8FFFF */  andi       $t8, $a3, 0xffff
/* 1B10C 8001A50C 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 1B110 8001A510 254A1790 */  addiu      $t2, $t2, %lo(D_800D1790)
/* 1B114 8001A514 308FFFFF */  andi       $t7, $a0, 0xffff
/* 1B118 8001A518 8CA59680 */  lw         $a1, -0x6980($a1)
/* 1B11C 8001A51C 01E02025 */  or         $a0, $t7, $zero
/* 1B120 8001A520 AFAA0014 */  sw         $t2, 0x14($sp)
/* 1B124 8001A524 01203025 */  or         $a2, $t1, $zero
/* 1B128 8001A528 03003825 */  or         $a3, $t8, $zero
/* 1B12C 8001A52C 0C009DB7 */  jal        func_800276DC
/* 1B130 8001A530 AFA00010 */   sw        $zero, 0x10($sp)
.L8001A534:
/* 1B134 8001A534 8FAC0050 */  lw         $t4, 0x50($sp)
/* 1B138 8001A538 26730001 */  addiu      $s3, $s3, 1
/* 1B13C 8001A53C 3271FFFF */  andi       $s1, $s3, 0xffff
/* 1B140 8001A540 022C082A */  slt        $at, $s1, $t4
/* 1B144 8001A544 1420FF89 */  bnez       $at, .L8001A36C
/* 1B148 8001A548 02209825 */   or        $s3, $s1, $zero
.L8001A54C:
/* 1B14C 8001A54C 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1B150 8001A550 C7B50020 */  lwc1       $f21, 0x20($sp)
/* 1B154 8001A554 C7B40024 */  lwc1       $f20, 0x24($sp)
/* 1B158 8001A558 8FB00028 */  lw         $s0, 0x28($sp)
/* 1B15C 8001A55C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1B160 8001A560 8FB20030 */  lw         $s2, 0x30($sp)
/* 1B164 8001A564 8FB30034 */  lw         $s3, 0x34($sp)
/* 1B168 8001A568 8FB40038 */  lw         $s4, 0x38($sp)
/* 1B16C 8001A56C 8FB5003C */  lw         $s5, 0x3c($sp)
/* 1B170 8001A570 8FB60040 */  lw         $s6, 0x40($sp)
/* 1B174 8001A574 8FB70044 */  lw         $s7, 0x44($sp)
/* 1B178 8001A578 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1B17C 8001A57C 03E00008 */  jr         $ra
/* 1B180 8001A580 27BD0060 */   addiu     $sp, $sp, 0x60
