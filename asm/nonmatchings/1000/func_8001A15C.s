glabel func_8001A15C
/* 1AD5C 8001A15C 3C07800D */  lui        $a3, %hi(D_800C81E0)
/* 1AD60 8001A160 24E781E0 */  addiu      $a3, $a3, %lo(D_800C81E0)
/* 1AD64 8001A164 94E60000 */  lhu        $a2, ($a3)
/* 1AD68 8001A168 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AD6C 8001A16C 3401FFFF */  ori        $at, $zero, 0xffff
/* 1AD70 8001A170 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AD74 8001A174 AFA40018 */  sw         $a0, 0x18($sp)
/* 1AD78 8001A178 10C10032 */  beq        $a2, $at, .L8001A244
/* 1AD7C 8001A17C 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1AD80 8001A180 00067080 */  sll        $t6, $a2, 2
/* 1AD84 8001A184 01C67023 */  subu       $t6, $t6, $a2
/* 1AD88 8001A188 000E7080 */  sll        $t6, $t6, 2
/* 1AD8C 8001A18C 01C67021 */  addu       $t6, $t6, $a2
/* 1AD90 8001A190 000E7080 */  sll        $t6, $t6, 2
/* 1AD94 8001A194 01C67023 */  subu       $t6, $t6, $a2
/* 1AD98 8001A198 3C0F800F */  lui        $t7, %hi(gActors)
/* 1AD9C 8001A19C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 1ADA0 8001A1A0 000E70C0 */  sll        $t6, $t6, 3
/* 1ADA4 8001A1A4 01CF1021 */  addu       $v0, $t6, $t7
/* 1ADA8 8001A1A8 3C014334 */  lui        $at, 0x4334
/* 1ADAC 8001A1AC 44812000 */  mtc1       $at, $f4
/* 1ADB0 8001A1B0 C4420254 */  lwc1       $f2, 0x254($v0)
/* 1ADB4 8001A1B4 3408FFFF */  ori        $t0, $zero, 0xffff
/* 1ADB8 8001A1B8 46022032 */  c.eq.s     $f4, $f2
/* 1ADBC 8001A1BC 00054840 */  sll        $t1, $a1, 1
/* 1ADC0 8001A1C0 4500000D */  bc1f       .L8001A1F8
/* 1ADC4 8001A1C4 3C014110 */   lui       $at, 0x4110
/* 1ADC8 8001A1C8 94580094 */  lhu        $t8, 0x94($v0)
/* 1ADCC 8001A1CC 3C06800D */  lui        $a2, 0x800d
/* 1ADD0 8001A1D0 3319FFF1 */  andi       $t9, $t8, 0xfff1
/* 1ADD4 8001A1D4 A4590094 */  sh         $t9, 0x94($v0)
/* 1ADD8 8001A1D8 AC400218 */  sw         $zero, 0x218($v0)
/* 1ADDC 8001A1DC A4E80000 */  sh         $t0, ($a3)
/* 1ADE0 8001A1E0 00C93021 */  addu       $a2, $a2, $t1
/* 1ADE4 8001A1E4 94C495DC */  lhu        $a0, -0x6a24($a2)
/* 1ADE8 8001A1E8 0C0067ED */  jal        func_80019FB4
/* 1ADEC 8001A1EC 00000000 */   nop
/* 1ADF0 8001A1F0 10000015 */  b          .L8001A248
/* 1ADF4 8001A1F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001A1F8:
/* 1ADF8 8001A1F8 44810000 */  mtc1       $at, $f0
/* 1ADFC 8001A1FC C44600BC */  lwc1       $f6, 0xbc($v0)
/* 1AE00 8001A200 C44A00C4 */  lwc1       $f10, 0xc4($v0)
/* 1AE04 8001A204 46001480 */  add.s      $f18, $f2, $f0
/* 1AE08 8001A208 3C0142B4 */  lui        $at, 0x42b4
/* 1AE0C 8001A20C 46003200 */  add.s      $f8, $f6, $f0
/* 1AE10 8001A210 E4520254 */  swc1       $f18, 0x254($v0)
/* 1AE14 8001A214 46005400 */  add.s      $f16, $f10, $f0
/* 1AE18 8001A218 E44800BC */  swc1       $f8, 0xbc($v0)
/* 1AE1C 8001A21C 44814000 */  mtc1       $at, $f8
/* 1AE20 8001A220 C44A0254 */  lwc1       $f10, 0x254($v0)
/* 1AE24 8001A224 C444025C */  lwc1       $f4, 0x25c($v0)
/* 1AE28 8001A228 460A4032 */  c.eq.s     $f8, $f10
/* 1AE2C 8001A22C 46002180 */  add.s      $f6, $f4, $f0
/* 1AE30 8001A230 E45000C4 */  swc1       $f16, 0xc4($v0)
/* 1AE34 8001A234 45000003 */  bc1f       .L8001A244
/* 1AE38 8001A238 E446025C */   swc1      $f6, 0x25c($v0)
/* 1AE3C 8001A23C 240A0001 */  addiu      $t2, $zero, 1
/* 1AE40 8001A240 A44A0090 */  sh         $t2, 0x90($v0)
.L8001A244:
/* 1AE44 8001A244 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001A248:
/* 1AE48 8001A248 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1AE4C 8001A24C 03E00008 */  jr         $ra
/* 1AE50 8001A250 00000000 */   nop
