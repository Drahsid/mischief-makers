glabel func_80027D94
/* 28994 80027D94 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 28998 80027D98 AFBF0064 */  sw         $ra, 0x64($sp)
/* 2899C 80027D9C AFBE0060 */  sw         $fp, 0x60($sp)
/* 289A0 80027DA0 AFB7005C */  sw         $s7, 0x5c($sp)
/* 289A4 80027DA4 AFB60058 */  sw         $s6, 0x58($sp)
/* 289A8 80027DA8 AFB50054 */  sw         $s5, 0x54($sp)
/* 289AC 80027DAC AFB40050 */  sw         $s4, 0x50($sp)
/* 289B0 80027DB0 AFB3004C */  sw         $s3, 0x4c($sp)
/* 289B4 80027DB4 AFB20048 */  sw         $s2, 0x48($sp)
/* 289B8 80027DB8 AFB10044 */  sw         $s1, 0x44($sp)
/* 289BC 80027DBC AFB00040 */  sw         $s0, 0x40($sp)
/* 289C0 80027DC0 E7BD0038 */  swc1       $f29, 0x38($sp)
/* 289C4 80027DC4 E7BC003C */  swc1       $f28, 0x3c($sp)
/* 289C8 80027DC8 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 289CC 80027DCC E7BA0034 */  swc1       $f26, 0x34($sp)
/* 289D0 80027DD0 E7B90028 */  swc1       $f25, 0x28($sp)
/* 289D4 80027DD4 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 289D8 80027DD8 E7B70020 */  swc1       $f23, 0x20($sp)
/* 289DC 80027DDC E7B60024 */  swc1       $f22, 0x24($sp)
/* 289E0 80027DE0 E7B50018 */  swc1       $f21, 0x18($sp)
/* 289E4 80027DE4 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 289E8 80027DE8 AFA40068 */  sw         $a0, 0x68($sp)
/* 289EC 80027DEC AFA60070 */  sw         $a2, 0x70($sp)
/* 289F0 80027DF0 AFA70074 */  sw         $a3, 0x74($sp)
/* 289F4 80027DF4 94A20000 */  lhu        $v0, ($a1)
/* 289F8 80027DF8 34018FFF */  ori        $at, $zero, 0x8fff
/* 289FC 80027DFC 00A08025 */  or         $s0, $a1, $zero
/* 28A00 80027E00 3091FFFF */  andi       $s1, $a0, 0xffff
/* 28A04 80027E04 30D2FFFF */  andi       $s2, $a2, 0xffff
/* 28A08 80027E08 1041006D */  beq        $v0, $at, .L80027FC0
/* 28A0C 80027E0C 30F7FFFF */   andi      $s7, $a3, 0xffff
/* 28A10 80027E10 3C014180 */  lui        $at, 0x4180
/* 28A14 80027E14 44812000 */  mtc1       $at, $f4
/* 28A18 80027E18 C7B80088 */  lwc1       $f24, 0x88($sp)
/* 28A1C 80027E1C 3C013FF0 */  lui        $at, 0x3ff0
/* 28A20 80027E20 4481B800 */  mtc1       $at, $f23
/* 28A24 80027E24 C7BA008C */  lwc1       $f26, 0x8c($sp)
/* 28A28 80027E28 4480B000 */  mtc1       $zero, $f22
/* 28A2C 80027E2C 97BE007A */  lhu        $fp, 0x7a($sp)
/* 28A30 80027E30 93B60087 */  lbu        $s6, 0x87($sp)
/* 28A34 80027E34 93B50083 */  lbu        $s5, 0x83($sp)
/* 28A38 80027E38 93B4007F */  lbu        $s4, 0x7f($sp)
/* 28A3C 80027E3C 46182702 */  mul.s      $f28, $f4, $f24
/* 28A40 80027E40 00000000 */  nop
.L80027E44:
/* 28A44 80027E44 10400030 */  beqz       $v0, .L80027F08
/* 28A48 80027E48 3224FFFF */   andi      $a0, $s1, 0xffff
/* 28A4C 80027E4C 02957025 */  or         $t6, $s4, $s5
/* 28A50 80027E50 01D69825 */  or         $s3, $t6, $s6
/* 28A54 80027E54 3245FFFF */  andi       $a1, $s2, 0xffff
/* 28A58 80027E58 32E6FFFF */  andi       $a2, $s7, 0xffff
/* 28A5C 80027E5C 33C7FFFF */  andi       $a3, $fp, 0xffff
/* 28A60 80027E60 0C009CDC */  jal        func_80027370
/* 28A64 80027E64 4600C521 */   cvt.d.s   $f20, $f24
/* 28A68 80027E68 00117880 */  sll        $t7, $s1, 2
/* 28A6C 80027E6C 01F17823 */  subu       $t7, $t7, $s1
/* 28A70 80027E70 000F7880 */  sll        $t7, $t7, 2
/* 28A74 80027E74 01F17821 */  addu       $t7, $t7, $s1
/* 28A78 80027E78 000F7880 */  sll        $t7, $t7, 2
/* 28A7C 80027E7C 01F17823 */  subu       $t7, $t7, $s1
/* 28A80 80027E80 3C18800F */  lui        $t8, %hi(gActors)
/* 28A84 80027E84 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 28A88 80027E88 000F78C0 */  sll        $t7, $t7, 3
/* 28A8C 80027E8C 01F81021 */  addu       $v0, $t7, $t8
/* 28A90 80027E90 8C590080 */  lw         $t9, 0x80($v0)
/* 28A94 80027E94 4634B032 */  c.eq.d     $f22, $f20
/* 28A98 80027E98 37280008 */  ori        $t0, $t9, 8
/* 28A9C 80027E9C 45000006 */  bc1f       .L80027EB8
/* 28AA0 80027EA0 AC480080 */   sw        $t0, 0x80($v0)
/* 28AA4 80027EA4 4600D1A1 */  cvt.d.s    $f6, $f26
/* 28AA8 80027EA8 4626B032 */  c.eq.d     $f22, $f6
/* 28AAC 80027EAC 00000000 */  nop
/* 28AB0 80027EB0 45010005 */  bc1t       .L80027EC8
/* 28AB4 80027EB4 00000000 */   nop
.L80027EB8:
/* 28AB8 80027EB8 94490094 */  lhu        $t1, 0x94($v0)
/* 28ABC 80027EBC 00000000 */  nop
/* 28AC0 80027EC0 352A0001 */  ori        $t2, $t1, 1
/* 28AC4 80027EC4 A44A0094 */  sh         $t2, 0x94($v0)
.L80027EC8:
/* 28AC8 80027EC8 E45800B4 */  swc1       $f24, 0xb4($v0)
/* 28ACC 80027ECC E45A00B8 */  swc1       $f26, 0xb8($v0)
/* 28AD0 80027ED0 960B0000 */  lhu        $t3, ($s0)
/* 28AD4 80027ED4 26310001 */  addiu      $s1, $s1, 1
/* 28AD8 80027ED8 000B6040 */  sll        $t4, $t3, 1
/* 28ADC 80027EDC 258D02D2 */  addiu      $t5, $t4, 0x2d2
/* 28AE0 80027EE0 12600007 */  beqz       $s3, .L80027F00
/* 28AE4 80027EE4 A44D0084 */   sh        $t5, 0x84($v0)
/* 28AE8 80027EE8 944E0094 */  lhu        $t6, 0x94($v0)
/* 28AEC 80027EEC A054009C */  sb         $s4, 0x9c($v0)
/* 28AF0 80027EF0 35CF0010 */  ori        $t7, $t6, 0x10
/* 28AF4 80027EF4 A44F0094 */  sh         $t7, 0x94($v0)
/* 28AF8 80027EF8 A055009D */  sb         $s5, 0x9d($v0)
/* 28AFC 80027EFC A056009E */  sb         $s6, 0x9e($v0)
.L80027F00:
/* 28B00 80027F00 3238FFFF */  andi       $t8, $s1, 0xffff
/* 28B04 80027F04 03008825 */  or         $s1, $t8, $zero
.L80027F08:
/* 28B08 80027F08 44924000 */  mtc1       $s2, $f8
/* 28B0C 80027F0C 26100002 */  addiu      $s0, $s0, 2
/* 28B10 80027F10 06410005 */  bgez       $s2, .L80027F28
/* 28B14 80027F14 468042A0 */   cvt.s.w   $f10, $f8
/* 28B18 80027F18 3C014F80 */  lui        $at, 0x4f80
/* 28B1C 80027F1C 44818000 */  mtc1       $at, $f16
/* 28B20 80027F20 00000000 */  nop
/* 28B24 80027F24 46105280 */  add.s      $f10, $f10, $f16
.L80027F28:
/* 28B28 80027F28 461C5480 */  add.s      $f18, $f10, $f28
/* 28B2C 80027F2C 24120001 */  addiu      $s2, $zero, 1
/* 28B30 80027F30 4459F800 */  cfc1       $t9, $31
/* 28B34 80027F34 44D2F800 */  ctc1       $s2, $31
/* 28B38 80027F38 3C014F00 */  lui        $at, 0x4f00
/* 28B3C 80027F3C 46009124 */  cvt.w.s    $f4, $f18
/* 28B40 80027F40 4452F800 */  cfc1       $s2, $31
/* 28B44 80027F44 00000000 */  nop
/* 28B48 80027F48 32520078 */  andi       $s2, $s2, 0x78
/* 28B4C 80027F4C 12400012 */  beqz       $s2, .L80027F98
/* 28B50 80027F50 00000000 */   nop
/* 28B54 80027F54 44812000 */  mtc1       $at, $f4
/* 28B58 80027F58 24120001 */  addiu      $s2, $zero, 1
/* 28B5C 80027F5C 46049101 */  sub.s      $f4, $f18, $f4
/* 28B60 80027F60 3C018000 */  lui        $at, 0x8000
/* 28B64 80027F64 44D2F800 */  ctc1       $s2, $31
/* 28B68 80027F68 00000000 */  nop
/* 28B6C 80027F6C 46002124 */  cvt.w.s    $f4, $f4
/* 28B70 80027F70 4452F800 */  cfc1       $s2, $31
/* 28B74 80027F74 00000000 */  nop
/* 28B78 80027F78 32520078 */  andi       $s2, $s2, 0x78
/* 28B7C 80027F7C 16400004 */  bnez       $s2, .L80027F90
/* 28B80 80027F80 00000000 */   nop
/* 28B84 80027F84 44122000 */  mfc1       $s2, $f4
/* 28B88 80027F88 10000007 */  b          .L80027FA8
/* 28B8C 80027F8C 02419025 */   or        $s2, $s2, $at
.L80027F90:
/* 28B90 80027F90 10000005 */  b          .L80027FA8
/* 28B94 80027F94 2412FFFF */   addiu     $s2, $zero, -1
.L80027F98:
/* 28B98 80027F98 44122000 */  mfc1       $s2, $f4
/* 28B9C 80027F9C 00000000 */  nop
/* 28BA0 80027FA0 0640FFFB */  bltz       $s2, .L80027F90
/* 28BA4 80027FA4 00000000 */   nop
.L80027FA8:
/* 28BA8 80027FA8 96020000 */  lhu        $v0, ($s0)
/* 28BAC 80027FAC 44D9F800 */  ctc1       $t9, $31
/* 28BB0 80027FB0 3248FFFF */  andi       $t0, $s2, 0xffff
/* 28BB4 80027FB4 34018FFF */  ori        $at, $zero, 0x8fff
/* 28BB8 80027FB8 1441FFA2 */  bne        $v0, $at, .L80027E44
/* 28BBC 80027FBC 01009025 */   or        $s2, $t0, $zero
.L80027FC0:
/* 28BC0 80027FC0 8FBF0064 */  lw         $ra, 0x64($sp)
/* 28BC4 80027FC4 02201025 */  or         $v0, $s1, $zero
/* 28BC8 80027FC8 8FB10044 */  lw         $s1, 0x44($sp)
/* 28BCC 80027FCC C7B50018 */  lwc1       $f21, 0x18($sp)
/* 28BD0 80027FD0 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 28BD4 80027FD4 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 28BD8 80027FD8 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 28BDC 80027FDC C7B90028 */  lwc1       $f25, 0x28($sp)
/* 28BE0 80027FE0 C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 28BE4 80027FE4 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 28BE8 80027FE8 C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 28BEC 80027FEC C7BD0038 */  lwc1       $f29, 0x38($sp)
/* 28BF0 80027FF0 C7BC003C */  lwc1       $f28, 0x3c($sp)
/* 28BF4 80027FF4 8FB00040 */  lw         $s0, 0x40($sp)
/* 28BF8 80027FF8 8FB20048 */  lw         $s2, 0x48($sp)
/* 28BFC 80027FFC 8FB3004C */  lw         $s3, 0x4c($sp)
/* 28C00 80028000 8FB40050 */  lw         $s4, 0x50($sp)
/* 28C04 80028004 8FB50054 */  lw         $s5, 0x54($sp)
/* 28C08 80028008 8FB60058 */  lw         $s6, 0x58($sp)
/* 28C0C 8002800C 8FB7005C */  lw         $s7, 0x5c($sp)
/* 28C10 80028010 8FBE0060 */  lw         $fp, 0x60($sp)
/* 28C14 80028014 03E00008 */  jr         $ra
/* 28C18 80028018 27BD0068 */   addiu     $sp, $sp, 0x68