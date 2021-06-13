glabel func_8003EEC0
/* 3FAC0 8003EEC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FAC4 8003EEC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FAC8 8003EEC8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3FACC 8003EECC AFA60020 */  sw         $a2, 0x20($sp)
/* 3FAD0 8003EED0 AFA70024 */  sw         $a3, 0x24($sp)
/* 3FAD4 8003EED4 00057400 */  sll        $t6, $a1, 0x10
/* 3FAD8 8003EED8 0006C400 */  sll        $t8, $a2, 0x10
/* 3FADC 8003EEDC 00074400 */  sll        $t0, $a3, 0x10
/* 3FAE0 8003EEE0 00083C03 */  sra        $a3, $t0, 0x10
/* 3FAE4 8003EEE4 00183403 */  sra        $a2, $t8, 0x10
/* 3FAE8 8003EEE8 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FAEC 8003EEEC E7AC0018 */  swc1       $f12, 0x18($sp)
/* 3FAF0 8003EEF0 0C00C4A1 */  jal        func_80031284
/* 3FAF4 8003EEF4 24040168 */   addiu     $a0, $zero, 0x168
/* 3FAF8 8003EEF8 10400023 */  beqz       $v0, .L8003EF88
/* 3FAFC 8003EEFC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3FB00 8003EF00 00025080 */  sll        $t2, $v0, 2
/* 3FB04 8003EF04 C7A40018 */  lwc1       $f4, 0x18($sp)
/* 3FB08 8003EF08 01425023 */  subu       $t2, $t2, $v0
/* 3FB0C 8003EF0C 3C013FF8 */  lui        $at, 0x3ff8
/* 3FB10 8003EF10 44813800 */  mtc1       $at, $f7
/* 3FB14 8003EF14 44803000 */  mtc1       $zero, $f6
/* 3FB18 8003EF18 000A5080 */  sll        $t2, $t2, 2
/* 3FB1C 8003EF1C 01425021 */  addu       $t2, $t2, $v0
/* 3FB20 8003EF20 46002021 */  cvt.d.s    $f0, $f4
/* 3FB24 8003EF24 46260202 */  mul.d      $f8, $f0, $f6
/* 3FB28 8003EF28 000A5080 */  sll        $t2, $t2, 2
/* 3FB2C 8003EF2C 01425023 */  subu       $t2, $t2, $v0
/* 3FB30 8003EF30 3C0B800F */  lui        $t3, %hi(gActors)
/* 3FB34 8003EF34 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3FB38 8003EF38 000A50C0 */  sll        $t2, $t2, 3
/* 3FB3C 8003EF3C 014B1821 */  addu       $v1, $t2, $t3
/* 3FB40 8003EF40 462040A0 */  cvt.s.d    $f2, $f8
/* 3FB44 8003EF44 3C0E800E */  lui        $t6, %hi(D_800D84E8)
/* 3FB48 8003EF48 240C0301 */  addiu      $t4, $zero, 0x301
/* 3FB4C 8003EF4C 240DFFE0 */  addiu      $t5, $zero, -0x20
/* 3FB50 8003EF50 25CE84E8 */  addiu      $t6, $t6, %lo(D_800D84E8)
/* 3FB54 8003EF54 A46C0094 */  sh         $t4, 0x94($v1)
/* 3FB58 8003EF58 AC6D0154 */  sw         $t5, 0x154($v1)
/* 3FB5C 8003EF5C AC6E018C */  sw         $t6, 0x18c($v1)
/* 3FB60 8003EF60 E46200B4 */  swc1       $f2, 0xb4($v1)
/* 3FB64 8003EF64 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 3FB68 8003EF68 3C01800F */  lui        $at, %hi(D_800EBC20)
/* 3FB6C 8003EF6C C42BBC20 */  lwc1       $f11, %lo(D_800EBC20)($at)
/* 3FB70 8003EF70 C42ABC24 */  lwc1       $f10, -0x43dc($at)
/* 3FB74 8003EF74 00000000 */  nop
/* 3FB78 8003EF78 462A0402 */  mul.d      $f16, $f0, $f10
/* 3FB7C 8003EF7C 46208320 */  cvt.s.d    $f12, $f16
/* 3FB80 8003EF80 E46C0110 */  swc1       $f12, 0x110($v1)
/* 3FB84 8003EF84 E46C0114 */  swc1       $f12, 0x114($v1)
.L8003EF88:
/* 3FB88 8003EF88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FB8C 8003EF8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3FB90 8003EF90 03E00008 */  jr         $ra
/* 3FB94 8003EF94 00801025 */   or        $v0, $a0, $zero
