glabel func_8007D0F4
/* 7DCF4 8007D0F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DCF8 8007D0F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DCFC 8007D0FC AFA40020 */  sw         $a0, 0x20($sp)
/* 7DD00 8007D100 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DD04 8007D104 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DD08 8007D108 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DD0C 8007D10C 24050090 */  addiu      $a1, $zero, 0x90
/* 7DD10 8007D110 0C00A12E */  jal        func_800284B8
/* 7DD14 8007D114 2404008C */   addiu     $a0, $zero, 0x8c
/* 7DD18 8007D118 1040002F */  beqz       $v0, .L8007D1D8
/* 7DD1C 8007D11C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DD20 8007D120 00047080 */  sll        $t6, $a0, 2
/* 7DD24 8007D124 01C47023 */  subu       $t6, $t6, $a0
/* 7DD28 8007D128 000E7080 */  sll        $t6, $t6, 2
/* 7DD2C 8007D12C 01C47021 */  addu       $t6, $t6, $a0
/* 7DD30 8007D130 000E7080 */  sll        $t6, $t6, 2
/* 7DD34 8007D134 01C47023 */  subu       $t6, $t6, $a0
/* 7DD38 8007D138 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 7DD3C 8007D13C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 7DD40 8007D140 000E70C0 */  sll        $t6, $t6, 3
/* 7DD44 8007D144 01CF1021 */  addu       $v0, $t6, $t7
/* 7DD48 8007D148 24180035 */  addiu      $t8, $zero, 0x35
/* 7DD4C 8007D14C A45800D2 */  sh         $t8, 0xd2($v0)
/* 7DD50 8007D150 AFA20018 */  sw         $v0, 0x18($sp)
/* 7DD54 8007D154 0C0078B4 */  jal        func_8001E2D0
/* 7DD58 8007D158 A7A4001E */   sh        $a0, 0x1e($sp)
/* 7DD5C 8007D15C 8FA20018 */  lw         $v0, 0x18($sp)
/* 7DD60 8007D160 97A30032 */  lhu        $v1, 0x32($sp)
/* 7DD64 8007D164 87A5002A */  lh         $a1, 0x2a($sp)
/* 7DD68 8007D168 306B7FFF */  andi       $t3, $v1, 0x7fff
/* 7DD6C 8007D16C 306C8000 */  andi       $t4, $v1, 0x8000
/* 7DD70 8007D170 448B2000 */  mtc1       $t3, $f4
/* 7DD74 8007D174 448C4000 */  mtc1       $t4, $f8
/* 7DD78 8007D178 468021A0 */  cvt.s.w    $f6, $f4
/* 7DD7C 8007D17C 87A6002E */  lh         $a2, 0x2e($sp)
/* 7DD80 8007D180 44800000 */  mtc1       $zero, $f0
/* 7DD84 8007D184 468042A0 */  cvt.s.w    $f10, $f8
/* 7DD88 8007D188 8FA90024 */  lw         $t1, 0x24($sp)
/* 7DD8C 8007D18C 97AA0022 */  lhu        $t2, 0x22($sp)
/* 7DD90 8007D190 24190901 */  addiu      $t9, $zero, 0x901
/* 7DD94 8007D194 24080002 */  addiu      $t0, $zero, 2
/* 7DD98 8007D198 3C0D0080 */  lui        $t5, 0x80
/* 7DD9C 8007D19C 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7DDA0 8007D1A0 A4590094 */  sh         $t9, 0x94($v0)
/* 7DDA4 8007D1A4 AC480080 */  sw         $t0, 0x80($v0)
/* 7DDA8 8007D1A8 A040009F */  sb         $zero, 0x9f($v0)
/* 7DDAC 8007D1AC E4460114 */  swc1       $f6, 0x114($v0)
/* 7DDB0 8007D1B0 E44A0118 */  swc1       $f10, 0x118($v0)
/* 7DDB4 8007D1B4 AC4D0090 */  sw         $t5, 0x90($v0)
/* 7DDB8 8007D1B8 AC450158 */  sw         $a1, 0x158($v0)
/* 7DDBC 8007D1BC A4450088 */  sh         $a1, 0x88($v0)
/* 7DDC0 8007D1C0 AC46015C */  sw         $a2, 0x15c($v0)
/* 7DDC4 8007D1C4 A446008C */  sh         $a2, 0x8c($v0)
/* 7DDC8 8007D1C8 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 7DDCC 8007D1CC E44000B8 */  swc1       $f0, 0xb8($v0)
/* 7DDD0 8007D1D0 AC490150 */  sw         $t1, 0x150($v0)
/* 7DDD4 8007D1D4 AC4A0154 */  sw         $t2, 0x154($v0)
.L8007D1D8:
/* 7DDD8 8007D1D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DDDC 8007D1DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DDE0 8007D1E0 03E00008 */  jr         $ra
/* 7DDE4 8007D1E4 00801025 */   or        $v0, $a0, $zero
