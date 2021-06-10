glabel func_8008A50C
/* 8B10C 8008A50C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B110 8008A510 AFA40020 */  sw         $a0, 0x20($sp)
/* 8B114 8008A514 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8B118 8008A518 3C18800F */  lui        $t8, 0x800f
/* 8B11C 8008A51C 000E7880 */  sll        $t7, $t6, 2
/* 8B120 8008A520 01EE7823 */  subu       $t7, $t7, $t6
/* 8B124 8008A524 000F7880 */  sll        $t7, $t7, 2
/* 8B128 8008A528 01EE7821 */  addu       $t7, $t7, $t6
/* 8B12C 8008A52C 000F7880 */  sll        $t7, $t7, 2
/* 8B130 8008A530 01EE7823 */  subu       $t7, $t7, $t6
/* 8B134 8008A534 AFB00018 */  sw         $s0, 0x18($sp)
/* 8B138 8008A538 000F78C0 */  sll        $t7, $t7, 3
/* 8B13C 8008A53C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8B140 8008A540 01F88021 */  addu       $s0, $t7, $t8
/* 8B144 8008A544 8E02016C */  lw         $v0, 0x16c($s0)
/* 8B148 8008A548 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8B14C 8008A54C 1040000C */  beqz       $v0, .L8008A580
/* 8B150 8008A550 24010001 */   addiu     $at, $zero, 1
/* 8B154 8008A554 1041000D */  beq        $v0, $at, .L8008A58C
/* 8B158 8008A558 3C063DCC */   lui       $a2, 0x3dcc
/* 8B15C 8008A55C 24010002 */  addiu      $at, $zero, 2
/* 8B160 8008A560 10410020 */  beq        $v0, $at, .L8008A5E4
/* 8B164 8008A564 3C063F19 */   lui       $a2, 0x3f19
/* 8B168 8008A568 24010003 */  addiu      $at, $zero, 3
/* 8B16C 8008A56C 10410042 */  beq        $v0, $at, .L8008A678
/* 8B170 8008A570 3C063E4C */   lui       $a2, 0x3e4c
/* 8B174 8008A574 8E020170 */  lw         $v0, 0x170($s0)
/* 8B178 8008A578 10000055 */  b          .L8008A6D0
/* 8B17C 8008A57C 2459FFFF */   addiu     $t9, $v0, -1
.L8008A580:
/* 8B180 8008A580 24020006 */  addiu      $v0, $zero, 6
/* 8B184 8008A584 10000051 */  b          .L8008A6CC
/* 8B188 8008A588 AE020170 */   sw        $v0, 0x170($s0)
.L8008A58C:
/* 8B18C 8008A58C 3C01800F */  lui        $at, %hi(D_800ED23C)
/* 8B190 8008A590 C42ED23C */  lwc1       $f14, %lo(D_800ED23C)($at)
/* 8B194 8008A594 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B198 8008A598 0C00A618 */  jal        func_80029860
/* 8B19C 8008A59C 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B1A0 8008A5A0 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B1A4 8008A5A4 3C01800F */  lui        $at, %hi(D_800ED240)
/* 8B1A8 8008A5A8 C42ED240 */  lwc1       $f14, %lo(D_800ED240)($at)
/* 8B1AC 8008A5AC C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B1B0 8008A5B0 3C063DCC */  lui        $a2, 0x3dcc
/* 8B1B4 8008A5B4 0C00A618 */  jal        func_80029860
/* 8B1B8 8008A5B8 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B1BC 8008A5BC 8E020170 */  lw         $v0, 0x170($s0)
/* 8B1C0 8008A5C0 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 8B1C4 8008A5C4 04410042 */  bgez       $v0, .L8008A6D0
/* 8B1C8 8008A5C8 2459FFFF */   addiu     $t9, $v0, -1
/* 8B1CC 8008A5CC 8E09016C */  lw         $t1, 0x16c($s0)
/* 8B1D0 8008A5D0 24020004 */  addiu      $v0, $zero, 4
/* 8B1D4 8008A5D4 252A0001 */  addiu      $t2, $t1, 1
/* 8B1D8 8008A5D8 AE020170 */  sw         $v0, 0x170($s0)
/* 8B1DC 8008A5DC 1000003B */  b          .L8008A6CC
/* 8B1E0 8008A5E0 AE0A016C */   sw        $t2, 0x16c($s0)
.L8008A5E4:
/* 8B1E4 8008A5E4 3C01800F */  lui        $at, %hi(D_800ED244)
/* 8B1E8 8008A5E8 C42ED244 */  lwc1       $f14, %lo(D_800ED244)($at)
/* 8B1EC 8008A5EC C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B1F0 8008A5F0 0C00A618 */  jal        func_80029860
/* 8B1F4 8008A5F4 34C6999A */   ori       $a2, $a2, 0x999a
/* 8B1F8 8008A5F8 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B1FC 8008A5FC 3C01800F */  lui        $at, %hi(D_800ED248)
/* 8B200 8008A600 C42ED248 */  lwc1       $f14, %lo(D_800ED248)($at)
/* 8B204 8008A604 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B208 8008A608 3C063F19 */  lui        $a2, 0x3f19
/* 8B20C 8008A60C 0C00A618 */  jal        func_80029860
/* 8B210 8008A610 34C6999A */   ori       $a2, $a2, 0x999a
/* 8B214 8008A614 8E0B0170 */  lw         $t3, 0x170($s0)
/* 8B218 8008A618 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 8B21C 8008A61C 05610013 */  bgez       $t3, .L8008A66C
/* 8B220 8008A620 240C0006 */   addiu     $t4, $zero, 6
/* 8B224 8008A624 8E0D016C */  lw         $t5, 0x16c($s0)
/* 8B228 8008A628 8E020150 */  lw         $v0, 0x150($s0)
/* 8B22C 8008A62C 25AE0001 */  addiu      $t6, $t5, 1
/* 8B230 8008A630 304F000A */  andi       $t7, $v0, 0xa
/* 8B234 8008A634 AE0C0170 */  sw         $t4, 0x170($s0)
/* 8B238 8008A638 11E00006 */  beqz       $t7, .L8008A654
/* 8B23C 8008A63C AE0E016C */   sw        $t6, 0x16c($s0)
/* 8B240 8008A640 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B244 8008A644 0C0228CB */  jal        func_8008A32C
/* 8B248 8008A648 00000000 */   nop
/* 8B24C 8008A64C 8E020150 */  lw         $v0, 0x150($s0)
/* 8B250 8008A650 00000000 */  nop
.L8008A654:
/* 8B254 8008A654 30580014 */  andi       $t8, $v0, 0x14
/* 8B258 8008A658 13000004 */  beqz       $t8, .L8008A66C
/* 8B25C 8008A65C 00000000 */   nop
/* 8B260 8008A660 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B264 8008A664 0C022907 */  jal        func_8008A41C
/* 8B268 8008A668 00000000 */   nop
.L8008A66C:
/* 8B26C 8008A66C 8E020170 */  lw         $v0, 0x170($s0)
/* 8B270 8008A670 10000017 */  b          .L8008A6D0
/* 8B274 8008A674 2459FFFF */   addiu     $t9, $v0, -1
.L8008A678:
/* 8B278 8008A678 3C013F80 */  lui        $at, 0x3f80
/* 8B27C 8008A67C 44817000 */  mtc1       $at, $f14
/* 8B280 8008A680 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B284 8008A684 0C00A618 */  jal        func_80029860
/* 8B288 8008A688 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B28C 8008A68C 3C013F80 */  lui        $at, 0x3f80
/* 8B290 8008A690 44817000 */  mtc1       $at, $f14
/* 8B294 8008A694 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B298 8008A698 3C063E4C */  lui        $a2, 0x3e4c
/* 8B29C 8008A69C E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B2A0 8008A6A0 0C00A618 */  jal        func_80029860
/* 8B2A4 8008A6A4 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B2A8 8008A6A8 8E020170 */  lw         $v0, 0x170($s0)
/* 8B2AC 8008A6AC 3C013F80 */  lui        $at, 0x3f80
/* 8B2B0 8008A6B0 44811000 */  mtc1       $at, $f2
/* 8B2B4 8008A6B4 04410005 */  bgez       $v0, .L8008A6CC
/* 8B2B8 8008A6B8 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 8B2BC 8008A6BC 8E020170 */  lw         $v0, 0x170($s0)
/* 8B2C0 8008A6C0 E60200B8 */  swc1       $f2, 0xb8($s0)
/* 8B2C4 8008A6C4 E60200B4 */  swc1       $f2, 0xb4($s0)
/* 8B2C8 8008A6C8 AE00016C */  sw         $zero, 0x16c($s0)
.L8008A6CC:
/* 8B2CC 8008A6CC 2459FFFF */  addiu      $t9, $v0, -1
.L8008A6D0:
/* 8B2D0 8008A6D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8B2D4 8008A6D4 AE190170 */  sw         $t9, 0x170($s0)
/* 8B2D8 8008A6D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B2DC 8008A6DC 03E00008 */  jr         $ra
/* 8B2E0 8008A6E0 27BD0020 */   addiu     $sp, $sp, 0x20
