glabel func_80081E38
/* 82A38 80081E38 44809000 */  mtc1       $zero, $f18
/* 82A3C 80081E3C 3086FFFF */  andi       $a2, $a0, 0xffff
/* 82A40 80081E40 3C013FE0 */  lui        $at, 0x3fe0
/* 82A44 80081E44 44819800 */  mtc1       $at, $f19
/* 82A48 80081E48 3C01800F */  lui        $at, %hi(D_800ED050)
/* 82A4C 80081E4C C431D050 */  lwc1       $f17, %lo(D_800ED050)($at)
/* 82A50 80081E50 C430D054 */  lwc1       $f16, -0x2fac($at)
/* 82A54 80081E54 00067080 */  sll        $t6, $a2, 2
/* 82A58 80081E58 01C67023 */  subu       $t6, $t6, $a2
/* 82A5C 80081E5C 000E7080 */  sll        $t6, $t6, 2
/* 82A60 80081E60 01C67021 */  addu       $t6, $t6, $a2
/* 82A64 80081E64 000E7080 */  sll        $t6, $t6, 2
/* 82A68 80081E68 01C67023 */  subu       $t6, $t6, $a2
/* 82A6C 80081E6C 000E70C0 */  sll        $t6, $t6, 3
/* 82A70 80081E70 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 82A74 80081E74 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 82A78 80081E78 01CF1021 */  addu       $v0, $t6, $t7
/* 82A7C 80081E7C C44E024C */  lwc1       $f14, 0x24c($v0)
/* 82A80 80081E80 C44C0250 */  lwc1       $f12, 0x250($v0)
/* 82A84 80081E84 3C01800F */  lui        $at, %hi(D_800ED058)
/* 82A88 80081E88 C42BD058 */  lwc1       $f11, %lo(D_800ED058)($at)
/* 82A8C 80081E8C C42AD05C */  lwc1       $f10, -0x2fa4($at)
/* 82A90 80081E90 460073A1 */  cvt.d.s    $f14, $f14
/* 82A94 80081E94 462A7282 */  mul.d      $f10, $f14, $f10
/* 82A98 80081E98 C44E08AC */  lwc1       $f14, 0x8ac($v0)
/* 82A9C 80081E9C 3C01800F */  lui        $at, 0x800f
/* 82AA0 80081EA0 C4480BDC */  lwc1       $f8, 0xbdc($v0)
/* 82AA4 80081EA4 C4460F0C */  lwc1       $f6, 0xf0c($v0)
/* 82AA8 80081EA8 462052A0 */  cvt.s.d    $f10, $f10
/* 82AAC 80081EAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 82AB0 80081EB0 E44A024C */  swc1       $f10, 0x24c($v0)
/* 82AB4 80081EB4 C42BD060 */  lwc1       $f11, -0x2fa0($at)
/* 82AB8 80081EB8 C42AD064 */  lwc1       $f10, -0x2f9c($at)
/* 82ABC 80081EBC 46006321 */  cvt.d.s    $f12, $f12
/* 82AC0 80081EC0 462A6282 */  mul.d      $f10, $f12, $f10
/* 82AC4 80081EC4 460073A1 */  cvt.d.s    $f14, $f14
/* 82AC8 80081EC8 C44C123C */  lwc1       $f12, 0x123c($v0)
/* 82ACC 80081ECC AFA40020 */  sw         $a0, 0x20($sp)
/* 82AD0 80081ED0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 82AD4 80081ED4 46327382 */  mul.d      $f14, $f14, $f18
/* 82AD8 80081ED8 462052A0 */  cvt.s.d    $f10, $f10
/* 82ADC 80081EDC C444156C */  lwc1       $f4, 0x156c($v0)
/* 82AE0 80081EE0 46004221 */  cvt.d.s    $f8, $f8
/* 82AE4 80081EE4 C4421570 */  lwc1       $f2, 0x1570($v0)
/* 82AE8 80081EE8 46324202 */  mul.d      $f8, $f8, $f18
/* 82AEC 80081EEC 462073A0 */  cvt.s.d    $f14, $f14
/* 82AF0 80081EF0 94580BBC */  lhu        $t8, 0xbbc($v0)
/* 82AF4 80081EF4 460031A1 */  cvt.d.s    $f6, $f6
/* 82AF8 80081EF8 24C40007 */  addiu      $a0, $a2, 7
/* 82AFC 80081EFC 46323182 */  mul.d      $f6, $f6, $f18
/* 82B00 80081F00 46204220 */  cvt.s.d    $f8, $f8
/* 82B04 80081F04 37190010 */  ori        $t9, $t8, 0x10
/* 82B08 80081F08 46006321 */  cvt.d.s    $f12, $f12
/* 82B0C 80081F0C 3088FFFF */  andi       $t0, $a0, 0xffff
/* 82B10 80081F10 46326482 */  mul.d      $f18, $f12, $f18
/* 82B14 80081F14 462031A0 */  cvt.s.d    $f6, $f6
/* 82B18 80081F18 E44A0250 */  swc1       $f10, 0x250($v0)
/* 82B1C 80081F1C 46002121 */  cvt.d.s    $f4, $f4
/* 82B20 80081F20 E44E08AC */  swc1       $f14, 0x8ac($v0)
/* 82B24 80081F24 46302102 */  mul.d      $f4, $f4, $f16
/* 82B28 80081F28 462094A0 */  cvt.s.d    $f18, $f18
/* 82B2C 80081F2C E4480BDC */  swc1       $f8, 0xbdc($v0)
/* 82B30 80081F30 460010A1 */  cvt.d.s    $f2, $f2
/* 82B34 80081F34 E4460F0C */  swc1       $f6, 0xf0c($v0)
/* 82B38 80081F38 46301402 */  mul.d      $f16, $f2, $f16
/* 82B3C 80081F3C 46202120 */  cvt.s.d    $f4, $f4
/* 82B40 80081F40 E452123C */  swc1       $f18, 0x123c($v0)
/* 82B44 80081F44 E444156C */  swc1       $f4, 0x156c($v0)
/* 82B48 80081F48 A4590BBC */  sh         $t9, 0xbbc($v0)
/* 82B4C 80081F4C 46208420 */  cvt.s.d    $f16, $f16
/* 82B50 80081F50 01002025 */  or         $a0, $t0, $zero
/* 82B54 80081F54 E4501570 */  swc1       $f16, 0x1570($v0)
/* 82B58 80081F58 24050020 */  addiu      $a1, $zero, 0x20
/* 82B5C 80081F5C AFA20018 */  sw         $v0, 0x18($sp)
/* 82B60 80081F60 0C00ABAD */  jal        func_8002AEB4
/* 82B64 80081F64 AFA6001C */   sw        $a2, 0x1c($sp)
/* 82B68 80081F68 8FA20018 */  lw         $v0, 0x18($sp)
/* 82B6C 80081F6C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82B70 80081F70 9449121C */  lhu        $t1, 0x121c($v0)
/* 82B74 80081F74 2464000B */  addiu      $a0, $v1, 0xb
/* 82B78 80081F78 308BFFFF */  andi       $t3, $a0, 0xffff
/* 82B7C 80081F7C 352A0010 */  ori        $t2, $t1, 0x10
/* 82B80 80081F80 01602025 */  or         $a0, $t3, $zero
/* 82B84 80081F84 24050020 */  addiu      $a1, $zero, 0x20
/* 82B88 80081F88 0C00ABAD */  jal        func_8002AEB4
/* 82B8C 80081F8C A44A121C */   sh        $t2, 0x121c($v0)
/* 82B90 80081F90 8FA20018 */  lw         $v0, 0x18($sp)
/* 82B94 80081F94 8FA3001C */  lw         $v1, 0x1c($sp)
/* 82B98 80081F98 944C154C */  lhu        $t4, 0x154c($v0)
/* 82B9C 80081F9C 2464000D */  addiu      $a0, $v1, 0xd
/* 82BA0 80081FA0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 82BA4 80081FA4 358D0010 */  ori        $t5, $t4, 0x10
/* 82BA8 80081FA8 01C02025 */  or         $a0, $t6, $zero
/* 82BAC 80081FAC 24050010 */  addiu      $a1, $zero, 0x10
/* 82BB0 80081FB0 0C00ABAD */  jal        func_8002AEB4
/* 82BB4 80081FB4 A44D154C */   sh        $t5, 0x154c($v0)
/* 82BB8 80081FB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 82BBC 80081FBC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 82BC0 80081FC0 03E00008 */  jr         $ra
/* 82BC4 80081FC4 00000000 */   nop
