glabel func_8002D040
/* 2DC40 8002D040 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2DC44 8002D044 AFA40020 */  sw         $a0, 0x20($sp)
/* 2DC48 8002D048 AFA50024 */  sw         $a1, 0x24($sp)
/* 2DC4C 8002D04C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2DC50 8002D050 97A50022 */  lhu        $a1, 0x22($sp)
/* 2DC54 8002D054 AFB00018 */  sw         $s0, 0x18($sp)
/* 2DC58 8002D058 0C000DB2 */  jal        func_800036C8
/* 2DC5C 8002D05C 24040043 */   addiu     $a0, $zero, 0x43
/* 2DC60 8002D060 2404FFFA */  addiu      $a0, $zero, -6
/* 2DC64 8002D064 0C01728D */  jal        func_8005CA34
/* 2DC68 8002D068 2405000A */   addiu     $a1, $zero, 0xa
/* 2DC6C 8002D06C 97AE0022 */  lhu        $t6, 0x22($sp)
/* 2DC70 8002D070 3C18800F */  lui        $t8, 0x800f
/* 2DC74 8002D074 000E7880 */  sll        $t7, $t6, 2
/* 2DC78 8002D078 01EE7823 */  subu       $t7, $t7, $t6
/* 2DC7C 8002D07C 000F7880 */  sll        $t7, $t7, 2
/* 2DC80 8002D080 01EE7821 */  addu       $t7, $t7, $t6
/* 2DC84 8002D084 000F7880 */  sll        $t7, $t7, 2
/* 2DC88 8002D088 01EE7823 */  subu       $t7, $t7, $t6
/* 2DC8C 8002D08C 000F78C0 */  sll        $t7, $t7, 3
/* 2DC90 8002D090 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 2DC94 8002D094 01F88021 */  addu       $s0, $t7, $t8
/* 2DC98 8002D098 3C014100 */  lui        $at, 0x4100
/* 2DC9C 8002D09C 44812000 */  mtc1       $at, $f4
/* 2DCA0 8002D0A0 3C0A0001 */  lui        $t2, 1
/* 2DCA4 8002D0A4 3C0B0007 */  lui        $t3, 7
/* 2DCA8 8002D0A8 24020008 */  addiu      $v0, $zero, 8
/* 2DCAC 8002D0AC 2403FFF8 */  addiu      $v1, $zero, -8
/* 2DCB0 8002D0B0 24190001 */  addiu      $t9, $zero, 1
/* 2DCB4 8002D0B4 24080282 */  addiu      $t0, $zero, 0x282
/* 2DCB8 8002D0B8 356BC000 */  ori        $t3, $t3, 0xc000
/* 2DCBC 8002D0BC 354A1000 */  ori        $t2, $t2, 0x1000
/* 2DCC0 8002D0C0 24090028 */  addiu      $t1, $zero, 0x28
/* 2DCC4 8002D0C4 240C000B */  addiu      $t4, $zero, 0xb
/* 2DCC8 8002D0C8 240D0084 */  addiu      $t5, $zero, 0x84
/* 2DCCC 8002D0CC 86050088 */  lh         $a1, 0x88($s0)
/* 2DCD0 8002D0D0 8606008C */  lh         $a2, 0x8c($s0)
/* 2DCD4 8002D0D4 3C04800E */  lui        $a0, 0x800e
/* 2DCD8 8002D0D8 A61900D2 */  sh         $t9, 0xd2($s0)
/* 2DCDC 8002D0DC A60200A6 */  sh         $v0, 0xa6($s0)
/* 2DCE0 8002D0E0 A60300A8 */  sh         $v1, 0xa8($s0)
/* 2DCE4 8002D0E4 A60300A2 */  sh         $v1, 0xa2($s0)
/* 2DCE8 8002D0E8 A60200A4 */  sh         $v0, 0xa4($s0)
/* 2DCEC 8002D0EC AE080080 */  sw         $t0, 0x80($s0)
/* 2DCF0 8002D0F0 A60900E4 */  sh         $t1, 0xe4($s0)
/* 2DCF4 8002D0F4 AE0A00F8 */  sw         $t2, 0xf8($s0)
/* 2DCF8 8002D0F8 AE0B00FC */  sw         $t3, 0xfc($s0)
/* 2DCFC 8002D0FC A20000DE */  sb         $zero, 0xde($s0)
/* 2DD00 8002D100 A20000DF */  sb         $zero, 0xdf($s0)
/* 2DD04 8002D104 A20D00DA */  sb         $t5, 0xda($s0)
/* 2DD08 8002D108 A20C00DB */  sb         $t4, 0xdb($s0)
/* 2DD0C 8002D10C AE0000EC */  sw         $zero, 0xec($s0)
/* 2DD10 8002D110 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 2DD14 8002D114 24841380 */  addiu      $a0, $a0, 0x1380
/* 2DD18 8002D118 24070011 */  addiu      $a3, $zero, 0x11
/* 2DD1C 8002D11C 0C00C48F */  jal        func_8003123C
/* 2DD20 8002D120 E6040110 */   swc1      $f4, 0x110($s0)
/* 2DD24 8002D124 10400020 */  beqz       $v0, .L8002D1A8
/* 2DD28 8002D128 3044FFFF */   andi      $a0, $v0, 0xffff
/* 2DD2C 8002D12C 00047080 */  sll        $t6, $a0, 2
/* 2DD30 8002D130 01C47023 */  subu       $t6, $t6, $a0
/* 2DD34 8002D134 000E7080 */  sll        $t6, $t6, 2
/* 2DD38 8002D138 01C47021 */  addu       $t6, $t6, $a0
/* 2DD3C 8002D13C 000E7080 */  sll        $t6, $t6, 2
/* 2DD40 8002D140 01C47023 */  subu       $t6, $t6, $a0
/* 2DD44 8002D144 3C0F800F */  lui        $t7, %hi(gActors)
/* 2DD48 8002D148 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 2DD4C 8002D14C 000E70C0 */  sll        $t6, $t6, 3
/* 2DD50 8002D150 01CF1021 */  addu       $v0, $t6, $t7
/* 2DD54 8002D154 3C013F80 */  lui        $at, 0x3f80
/* 2DD58 8002D158 44810000 */  mtc1       $at, $f0
/* 2DD5C 8002D15C 3C013E80 */  lui        $at, 0x3e80
/* 2DD60 8002D160 44811000 */  mtc1       $at, $f2
/* 2DD64 8002D164 3C19800E */  lui        $t9, %hi(D_800D84E8)
/* 2DD68 8002D168 24180209 */  addiu      $t8, $zero, 0x209
/* 2DD6C 8002D16C 273984E8 */  addiu      $t9, $t9, %lo(D_800D84E8)
/* 2DD70 8002D170 24080168 */  addiu      $t0, $zero, 0x168
/* 2DD74 8002D174 3C090080 */  lui        $t1, 0x80
/* 2DD78 8002D178 240AFFF1 */  addiu      $t2, $zero, -0xf
/* 2DD7C 8002D17C A4580094 */  sh         $t8, 0x94($v0)
/* 2DD80 8002D180 AC59018C */  sw         $t9, 0x18c($v0)
/* 2DD84 8002D184 A4480084 */  sh         $t0, 0x84($v0)
/* 2DD88 8002D188 AC490150 */  sw         $t1, 0x150($v0)
/* 2DD8C 8002D18C AC4A0154 */  sw         $t2, 0x154($v0)
/* 2DD90 8002D190 2405007F */  addiu      $a1, $zero, 0x7f
/* 2DD94 8002D194 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 2DD98 8002D198 E44000B8 */  swc1       $f0, 0xb8($v0)
/* 2DD9C 8002D19C E4420110 */  swc1       $f2, 0x110($v0)
/* 2DDA0 8002D1A0 0C00ABAD */  jal        func_8002AEB4
/* 2DDA4 8002D1A4 E4420114 */   swc1      $f2, 0x114($v0)
.L8002D1A8:
/* 2DDA8 8002D1A8 3C04800E */  lui        $a0, %hi(D_800E14C8)
/* 2DDAC 8002D1AC 86050088 */  lh         $a1, 0x88($s0)
/* 2DDB0 8002D1B0 8606008C */  lh         $a2, 0x8c($s0)
/* 2DDB4 8002D1B4 248414C8 */  addiu      $a0, $a0, %lo(D_800E14C8)
/* 2DDB8 8002D1B8 0C00C48F */  jal        func_8003123C
/* 2DDBC 8002D1BC 24070010 */   addiu     $a3, $zero, 0x10
/* 2DDC0 8002D1C0 1040001D */  beqz       $v0, .L8002D238
/* 2DDC4 8002D1C4 3C013FC0 */   lui       $at, 0x3fc0
/* 2DDC8 8002D1C8 00025880 */  sll        $t3, $v0, 2
/* 2DDCC 8002D1CC 01625823 */  subu       $t3, $t3, $v0
/* 2DDD0 8002D1D0 000B5880 */  sll        $t3, $t3, 2
/* 2DDD4 8002D1D4 01625821 */  addu       $t3, $t3, $v0
/* 2DDD8 8002D1D8 000B5880 */  sll        $t3, $t3, 2
/* 2DDDC 8002D1DC 44810000 */  mtc1       $at, $f0
/* 2DDE0 8002D1E0 01625823 */  subu       $t3, $t3, $v0
/* 2DDE4 8002D1E4 3C0C800F */  lui        $t4, %hi(gActors)
/* 2DDE8 8002D1E8 3C01800F */  lui        $at, %hi(D_800EB85C)
/* 2DDEC 8002D1EC 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 2DDF0 8002D1F0 000B58C0 */  sll        $t3, $t3, 3
/* 2DDF4 8002D1F4 C422B85C */  lwc1       $f2, %lo(D_800EB85C)($at)
/* 2DDF8 8002D1F8 016C1821 */  addu       $v1, $t3, $t4
/* 2DDFC 8002D1FC 3C188003 */  lui        $t8, %hi(func_80030B0C)
/* 2DE00 8002D200 240D0001 */  addiu      $t5, $zero, 1
/* 2DE04 8002D204 240E0010 */  addiu      $t6, $zero, 0x10
/* 2DE08 8002D208 240FFFFE */  addiu      $t7, $zero, -2
/* 2DE0C 8002D20C 27180B0C */  addiu      $t8, $t8, %lo(func_80030B0C)
/* 2DE10 8002D210 2419001E */  addiu      $t9, $zero, 0x1e
/* 2DE14 8002D214 A46D0094 */  sh         $t5, 0x94($v1)
/* 2DE18 8002D218 AC6E0154 */  sw         $t6, 0x154($v1)
/* 2DE1C 8002D21C AC6F0164 */  sw         $t7, 0x164($v1)
/* 2DE20 8002D220 AC78017C */  sw         $t8, 0x17c($v1)
/* 2DE24 8002D224 AC790104 */  sw         $t9, 0x104($v1)
/* 2DE28 8002D228 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 2DE2C 8002D22C E46000B8 */  swc1       $f0, 0xb8($v1)
/* 2DE30 8002D230 E4620110 */  swc1       $f2, 0x110($v1)
/* 2DE34 8002D234 E4620114 */  swc1       $f2, 0x114($v1)
.L8002D238:
/* 2DE38 8002D238 3C014040 */  lui        $at, 0x4040
/* 2DE3C 8002D23C 44816000 */  mtc1       $at, $f12
/* 2DE40 8002D240 86050088 */  lh         $a1, 0x88($s0)
/* 2DE44 8002D244 8606008C */  lh         $a2, 0x8c($s0)
/* 2DE48 8002D248 0C00FE78 */  jal        func_8003F9E0
/* 2DE4C 8002D24C 24070010 */   addiu     $a3, $zero, 0x10
/* 2DE50 8002D250 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2DE54 8002D254 8FB00018 */  lw         $s0, 0x18($sp)
/* 2DE58 8002D258 03E00008 */  jr         $ra
/* 2DE5C 8002D25C 27BD0020 */   addiu     $sp, $sp, 0x20
