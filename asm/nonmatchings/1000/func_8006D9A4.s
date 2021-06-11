glabel func_8006D9A4
/* 6E5A4 8006D9A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E5A8 8006D9A8 AFA40020 */  sw         $a0, 0x20($sp)
/* 6E5AC 8006D9AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E5B0 8006D9B0 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E5B4 8006D9B4 0C01B22E */  jal        func_8006C8B8
/* 6E5B8 8006D9B8 00000000 */   nop
/* 6E5BC 8006D9BC 14400050 */  bnez       $v0, .L8006DB00
/* 6E5C0 8006D9C0 3C0F800F */   lui       $t7, %hi(gActors)
/* 6E5C4 8006D9C4 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E5C8 8006D9C8 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6E5CC 8006D9CC 00047080 */  sll        $t6, $a0, 2
/* 6E5D0 8006D9D0 01C47023 */  subu       $t6, $t6, $a0
/* 6E5D4 8006D9D4 000E7080 */  sll        $t6, $t6, 2
/* 6E5D8 8006D9D8 01C47021 */  addu       $t6, $t6, $a0
/* 6E5DC 8006D9DC 000E7080 */  sll        $t6, $t6, 2
/* 6E5E0 8006D9E0 01C47023 */  subu       $t6, $t6, $a0
/* 6E5E4 8006D9E4 000E70C0 */  sll        $t6, $t6, 3
/* 6E5E8 8006D9E8 01CF1021 */  addu       $v0, $t6, $t7
/* 6E5EC 8006D9EC 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E5F0 8006D9F0 240100D0 */  addiu      $at, $zero, 0xd0
/* 6E5F4 8006D9F4 14610040 */  bne        $v1, $at, .L8006DAF8
/* 6E5F8 8006D9F8 3C060800 */   lui       $a2, 0x800
/* 6E5FC 8006D9FC 8C590080 */  lw         $t9, 0x80($v0)
/* 6E600 8006DA00 3C010001 */  lui        $at, 1
/* 6E604 8006DA04 03214025 */  or         $t0, $t9, $at
/* 6E608 8006DA08 3C01FFFD */  lui        $at, 0xfffd
/* 6E60C 8006DA0C 3421FFFF */  ori        $at, $at, 0xffff
/* 6E610 8006DA10 8C4B0098 */  lw         $t3, 0x98($v0)
/* 6E614 8006DA14 8C450150 */  lw         $a1, 0x150($v0)
/* 6E618 8006DA18 01015024 */  and        $t2, $t0, $at
/* 6E61C 8006DA1C 2401FFBF */  addiu      $at, $zero, -0x41
/* 6E620 8006DA20 24780001 */  addiu      $t8, $v1, 1
/* 6E624 8006DA24 AC480080 */  sw         $t0, 0x80($v0)
/* 6E628 8006DA28 01616024 */  and        $t4, $t3, $at
/* 6E62C 8006DA2C 00056900 */  sll        $t5, $a1, 4
/* 6E630 8006DA30 A45800D0 */  sh         $t8, 0xd0($v0)
/* 6E634 8006DA34 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6E638 8006DA38 AC4C0098 */  sw         $t4, 0x98($v0)
/* 6E63C 8006DA3C 05A0002E */  bltz       $t5, .L8006DAF8
/* 6E640 8006DA40 AC4A0080 */   sw        $t2, 0x80($v0)
/* 6E644 8006DA44 00A67025 */  or         $t6, $a1, $a2
/* 6E648 8006DA48 AC4E0150 */  sw         $t6, 0x150($v0)
/* 6E64C 8006DA4C 0C01B39D */  jal        func_8006CE74
/* 6E650 8006DA50 AFA2001C */   sw        $v0, 0x1c($sp)
/* 6E654 8006DA54 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6E658 8006DA58 3C01800F */  lui        $at, %hi(D_800EC5D8)
/* 6E65C 8006DA5C C44400B4 */  lwc1       $f4, 0xb4($v0)
/* 6E660 8006DA60 C429C5D8 */  lwc1       $f9, %lo(D_800EC5D8)($at)
/* 6E664 8006DA64 C428C5DC */  lwc1       $f8, -0x3a24($at)
/* 6E668 8006DA68 460021A1 */  cvt.d.s    $f6, $f4
/* 6E66C 8006DA6C 46283282 */  mul.d      $f10, $f6, $f8
/* 6E670 8006DA70 3C013F80 */  lui        $at, 0x3f80
/* 6E674 8006DA74 44819000 */  mtc1       $at, $f18
/* 6E678 8006DA78 3C0141C0 */  lui        $at, 0x41c0
/* 6E67C 8006DA7C 44813000 */  mtc1       $at, $f6
/* 6E680 8006DA80 46205420 */  cvt.s.d    $f16, $f10
/* 6E684 8006DA84 8459008C */  lh         $t9, 0x8c($v0)
/* 6E688 8006DA88 3C014040 */  lui        $at, 0x4040
/* 6E68C 8006DA8C E45000B4 */  swc1       $f16, 0xb4($v0)
/* 6E690 8006DA90 44802000 */  mtc1       $zero, $f4
/* 6E694 8006DA94 44814000 */  mtc1       $at, $f8
/* 6E698 8006DA98 C44A00B4 */  lwc1       $f10, 0xb4($v0)
/* 6E69C 8006DA9C E4520118 */  swc1       $f18, 0x118($v0)
/* 6E6A0 8006DAA0 44999000 */  mtc1       $t9, $f18
/* 6E6A4 8006DAA4 460A4402 */  mul.s      $f16, $f8, $f10
/* 6E6A8 8006DAA8 E444011C */  swc1       $f4, 0x11c($v0)
/* 6E6AC 8006DAAC E4460144 */  swc1       $f6, 0x144($v0)
/* 6E6B0 8006DAB0 3C0F800E */  lui        $t7, %hi(D_800E1380)
/* 6E6B4 8006DAB4 46809120 */  cvt.s.w    $f4, $f18
/* 6E6B8 8006DAB8 25EF1380 */  addiu      $t7, $t7, %lo(D_800E1380)
/* 6E6BC 8006DABC 24181090 */  addiu      $t8, $zero, 0x1090
/* 6E6C0 8006DAC0 46102181 */  sub.s      $f6, $f4, $f16
/* 6E6C4 8006DAC4 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E6C8 8006DAC8 4448F800 */  cfc1       $t0, $31
/* 6E6CC 8006DACC AC4F00E8 */  sw         $t7, 0xe8($v0)
/* 6E6D0 8006DAD0 35010003 */  ori        $at, $t0, 3
/* 6E6D4 8006DAD4 38210002 */  xori       $at, $at, 2
/* 6E6D8 8006DAD8 44C1F800 */  ctc1       $at, $31
/* 6E6DC 8006DADC A44000E6 */  sh         $zero, 0xe6($v0)
/* 6E6E0 8006DAE0 46003224 */  cvt.w.s    $f8, $f6
/* 6E6E4 8006DAE4 A4580084 */  sh         $t8, 0x84($v0)
/* 6E6E8 8006DAE8 44094000 */  mfc1       $t1, $f8
/* 6E6EC 8006DAEC 44C8F800 */  ctc1       $t0, $31
/* 6E6F0 8006DAF0 A449008C */  sh         $t1, 0x8c($v0)
/* 6E6F4 8006DAF4 00000000 */  nop
.L8006DAF8:
/* 6E6F8 8006DAF8 0C01A885 */  jal        func_8006A214
/* 6E6FC 8006DAFC 00000000 */   nop
.L8006DB00:
/* 6E700 8006DB00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E704 8006DB04 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6E708 8006DB08 03E00008 */  jr         $ra
/* 6E70C 8006DB0C 00000000 */   nop
