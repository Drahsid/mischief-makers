glabel func_8003F05C
/* 3FC5C 8003F05C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FC60 8003F060 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FC64 8003F064 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3FC68 8003F068 AFA60020 */  sw         $a2, 0x20($sp)
/* 3FC6C 8003F06C AFA70024 */  sw         $a3, 0x24($sp)
/* 3FC70 8003F070 00057400 */  sll        $t6, $a1, 0x10
/* 3FC74 8003F074 0006C400 */  sll        $t8, $a2, 0x10
/* 3FC78 8003F078 00074400 */  sll        $t0, $a3, 0x10
/* 3FC7C 8003F07C 3C04800E */  lui        $a0, 0x800e
/* 3FC80 8003F080 00083C03 */  sra        $a3, $t0, 0x10
/* 3FC84 8003F084 00183403 */  sra        $a2, $t8, 0x10
/* 3FC88 8003F088 000E2C03 */  sra        $a1, $t6, 0x10
/* 3FC8C 8003F08C E7AC0018 */  swc1       $f12, 0x18($sp)
/* 3FC90 8003F090 0C00C48F */  jal        func_8003123C
/* 3FC94 8003F094 248414E8 */   addiu     $a0, $a0, 0x14e8
/* 3FC98 8003F098 10400023 */  beqz       $v0, .L8003F128
/* 3FC9C 8003F09C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3FCA0 8003F0A0 00025080 */  sll        $t2, $v0, 2
/* 3FCA4 8003F0A4 C7A40018 */  lwc1       $f4, 0x18($sp)
/* 3FCA8 8003F0A8 01425023 */  subu       $t2, $t2, $v0
/* 3FCAC 8003F0AC 3C013FF8 */  lui        $at, 0x3ff8
/* 3FCB0 8003F0B0 44813800 */  mtc1       $at, $f7
/* 3FCB4 8003F0B4 44803000 */  mtc1       $zero, $f6
/* 3FCB8 8003F0B8 000A5080 */  sll        $t2, $t2, 2
/* 3FCBC 8003F0BC 01425021 */  addu       $t2, $t2, $v0
/* 3FCC0 8003F0C0 46002021 */  cvt.d.s    $f0, $f4
/* 3FCC4 8003F0C4 46260202 */  mul.d      $f8, $f0, $f6
/* 3FCC8 8003F0C8 000A5080 */  sll        $t2, $t2, 2
/* 3FCCC 8003F0CC 01425023 */  subu       $t2, $t2, $v0
/* 3FCD0 8003F0D0 3C0B800F */  lui        $t3, %hi(gActors)
/* 3FCD4 8003F0D4 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3FCD8 8003F0D8 000A50C0 */  sll        $t2, $t2, 3
/* 3FCDC 8003F0DC 014B1821 */  addu       $v1, $t2, $t3
/* 3FCE0 8003F0E0 462040A0 */  cvt.s.d    $f2, $f8
/* 3FCE4 8003F0E4 240C0101 */  addiu      $t4, $zero, 0x101
/* 3FCE8 8003F0E8 240D0010 */  addiu      $t5, $zero, 0x10
/* 3FCEC 8003F0EC 240EFFFD */  addiu      $t6, $zero, -3
/* 3FCF0 8003F0F0 A46C0094 */  sh         $t4, 0x94($v1)
/* 3FCF4 8003F0F4 AC6D0154 */  sw         $t5, 0x154($v1)
/* 3FCF8 8003F0F8 AC6E0164 */  sw         $t6, 0x164($v1)
/* 3FCFC 8003F0FC E46200B4 */  swc1       $f2, 0xb4($v1)
/* 3FD00 8003F100 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 3FD04 8003F104 3C01800F */  lui        $at, %hi(D_800EBC30)
/* 3FD08 8003F108 C42BBC30 */  lwc1       $f11, %lo(D_800EBC30)($at)
/* 3FD0C 8003F10C C42ABC34 */  lwc1       $f10, -0x43cc($at)
/* 3FD10 8003F110 3C0F0001 */  lui        $t7, 1
/* 3FD14 8003F114 462A0402 */  mul.d      $f16, $f0, $f10
/* 3FD18 8003F118 AC6F00F4 */  sw         $t7, 0xf4($v1)
/* 3FD1C 8003F11C 46208320 */  cvt.s.d    $f12, $f16
/* 3FD20 8003F120 E46C0110 */  swc1       $f12, 0x110($v1)
/* 3FD24 8003F124 E46C0114 */  swc1       $f12, 0x114($v1)
.L8003F128:
/* 3FD28 8003F128 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FD2C 8003F12C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3FD30 8003F130 03E00008 */  jr         $ra
/* 3FD34 8003F134 00801025 */   or        $v0, $a0, $zero
