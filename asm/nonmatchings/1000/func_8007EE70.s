glabel func_8007EE70
/* 7FA70 8007EE70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7FA74 8007EE74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FA78 8007EE78 AFA40020 */  sw         $a0, 0x20($sp)
/* 7FA7C 8007EE7C AFA50024 */  sw         $a1, 0x24($sp)
/* 7FA80 8007EE80 AFA60028 */  sw         $a2, 0x28($sp)
/* 7FA84 8007EE84 0C00A14A */  jal        func_80028528
/* 7FA88 8007EE88 AFA7002C */   sw        $a3, 0x2c($sp)
/* 7FA8C 8007EE8C 1040002E */  beqz       $v0, .L8007EF48
/* 7FA90 8007EE90 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7FA94 8007EE94 00047080 */  sll        $t6, $a0, 2
/* 7FA98 8007EE98 01C47023 */  subu       $t6, $t6, $a0
/* 7FA9C 8007EE9C 000E7080 */  sll        $t6, $t6, 2
/* 7FAA0 8007EEA0 01C47021 */  addu       $t6, $t6, $a0
/* 7FAA4 8007EEA4 000E7080 */  sll        $t6, $t6, 2
/* 7FAA8 8007EEA8 01C47023 */  subu       $t6, $t6, $a0
/* 7FAAC 8007EEAC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 7FAB0 8007EEB0 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 7FAB4 8007EEB4 000E70C0 */  sll        $t6, $t6, 3
/* 7FAB8 8007EEB8 01CF1021 */  addu       $v0, $t6, $t7
/* 7FABC 8007EEBC 24180034 */  addiu      $t8, $zero, 0x34
/* 7FAC0 8007EEC0 A45800D2 */  sh         $t8, 0xd2($v0)
/* 7FAC4 8007EEC4 AFA20018 */  sw         $v0, 0x18($sp)
/* 7FAC8 8007EEC8 0C0078B4 */  jal        func_8001E2D0
/* 7FACC 8007EECC A7A4001E */   sh        $a0, 0x1e($sp)
/* 7FAD0 8007EED0 8FA20018 */  lw         $v0, 0x18($sp)
/* 7FAD4 8007EED4 8FA30020 */  lw         $v1, 0x20($sp)
/* 7FAD8 8007EED8 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7FADC 8007EEDC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 7FAE0 8007EEE0 8FAC002C */  lw         $t4, 0x2c($sp)
/* 7FAE4 8007EEE4 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 7FAE8 8007EEE8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 7FAEC 8007EEEC 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7FAF0 8007EEF0 24080003 */  addiu      $t0, $zero, 3
/* 7FAF4 8007EEF4 240902D0 */  addiu      $t1, $zero, 0x2d0
/* 7FAF8 8007EEF8 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 7FAFC 8007EEFC 3079DFFF */  andi       $t9, $v1, 0xdfff
/* 7FB00 8007EF00 306E2000 */  andi       $t6, $v1, 0x2000
/* 7FB04 8007EF04 A4590094 */  sh         $t9, 0x94($v0)
/* 7FB08 8007EF08 AC480080 */  sw         $t0, 0x80($v0)
/* 7FB0C 8007EF0C A4490084 */  sh         $t1, 0x84($v0)
/* 7FB10 8007EF10 A04D009F */  sb         $t5, 0x9f($v0)
/* 7FB14 8007EF14 AC4A0088 */  sw         $t2, 0x88($v0)
/* 7FB18 8007EF18 AC4B008C */  sw         $t3, 0x8c($v0)
/* 7FB1C 8007EF1C AC4C0090 */  sw         $t4, 0x90($v0)
/* 7FB20 8007EF20 E44400B4 */  swc1       $f4, 0xb4($v0)
/* 7FB24 8007EF24 11C00005 */  beqz       $t6, .L8007EF3C
/* 7FB28 8007EF28 E44600B8 */   swc1      $f6, 0xb8($v0)
/* 7FB2C 8007EF2C 3C013F80 */  lui        $at, 0x3f80
/* 7FB30 8007EF30 44814000 */  mtc1       $at, $f8
/* 7FB34 8007EF34 10000004 */  b          .L8007EF48
/* 7FB38 8007EF38 E4480148 */   swc1      $f8, 0x148($v0)
.L8007EF3C:
/* 7FB3C 8007EF3C 44805000 */  mtc1       $zero, $f10
/* 7FB40 8007EF40 00000000 */  nop
/* 7FB44 8007EF44 E44A0148 */  swc1       $f10, 0x148($v0)
.L8007EF48:
/* 7FB48 8007EF48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FB4C 8007EF4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FB50 8007EF50 03E00008 */  jr         $ra
/* 7FB54 8007EF54 00801025 */   or        $v0, $a0, $zero
