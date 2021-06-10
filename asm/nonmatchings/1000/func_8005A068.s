glabel func_8005A068
/* 5AC68 8005A068 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5AC6C 8005A06C 44877000 */  mtc1       $a3, $f14
/* 5AC70 8005A070 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5AC74 8005A074 AFA40018 */  sw         $a0, 0x18($sp)
/* 5AC78 8005A078 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5AC7C 8005A07C 01C02025 */  or         $a0, $t6, $zero
/* 5AC80 8005A080 AFA60020 */  sw         $a2, 0x20($sp)
/* 5AC84 8005A084 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5AC88 8005A088 0C0164A8 */  jal        func_800592A0
/* 5AC8C 8005A08C E7AE0024 */   swc1      $f14, 0x24($sp)
/* 5AC90 8005A090 8FA5001C */  lw         $a1, 0x1c($sp)
/* 5AC94 8005A094 C7AE0024 */  lwc1       $f14, 0x24($sp)
/* 5AC98 8005A098 14400003 */  bnez       $v0, .L8005A0A8
/* 5AC9C 8005A09C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5ACA0 8005A0A0 1000003C */  b          .L8005A194
/* 5ACA4 8005A0A4 00801025 */   or        $v0, $a0, $zero
.L8005A0A8:
/* 5ACA8 8005A0A8 24080198 */  addiu      $t0, $zero, 0x198
/* 5ACAC 8005A0AC 00480019 */  multu      $v0, $t0
/* 5ACB0 8005A0B0 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 5ACB4 8005A0B4 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 5ACB8 8005A0B8 00007812 */  mflo       $t7
/* 5ACBC 8005A0BC 00EF1821 */  addu       $v1, $a3, $t7
/* 5ACC0 8005A0C0 94780094 */  lhu        $t8, 0x94($v1)
/* 5ACC4 8005A0C4 00000000 */  nop
/* 5ACC8 8005A0C8 37190209 */  ori        $t9, $t8, 0x209
/* 5ACCC 8005A0CC A4790094 */  sh         $t9, 0x94($v1)
/* 5ACD0 8005A0D0 8CA9000C */  lw         $t1, 0xc($a1)
/* 5ACD4 8005A0D4 00000000 */  nop
/* 5ACD8 8005A0D8 A4690084 */  sh         $t1, 0x84($v1)
/* 5ACDC 8005A0DC 8CA60010 */  lw         $a2, 0x10($a1)
/* 5ACE0 8005A0E0 00000000 */  nop
/* 5ACE4 8005A0E4 14C00006 */  bnez       $a2, .L8005A100
/* 5ACE8 8005A0E8 00000000 */   nop
/* 5ACEC 8005A0EC 332AFFFF */  andi       $t2, $t9, 0xffff
/* 5ACF0 8005A0F0 2401FDFF */  addiu      $at, $zero, -0x201
/* 5ACF4 8005A0F4 01415824 */  and        $t3, $t2, $at
/* 5ACF8 8005A0F8 10000002 */  b          .L8005A104
/* 5ACFC 8005A0FC A46B0094 */   sh        $t3, 0x94($v1)
.L8005A100:
/* 5AD00 8005A100 AC66018C */  sw         $a2, 0x18c($v1)
.L8005A104:
/* 5AD04 8005A104 8FA50028 */  lw         $a1, 0x28($sp)
/* 5AD08 8005A108 8FAC0020 */  lw         $t4, 0x20($sp)
/* 5AD0C 8005A10C 44852000 */  mtc1       $a1, $f4
/* 5AD10 8005A110 E46E00B4 */  swc1       $f14, 0xb4($v1)
/* 5AD14 8005A114 46802320 */  cvt.s.w    $f12, $f4
/* 5AD18 8005A118 E46E00B8 */  swc1       $f14, 0xb8($v1)
/* 5AD1C 8005A11C AC6C0160 */  sw         $t4, 0x160($v1)
/* 5AD20 8005A120 14A00003 */  bnez       $a1, .L8005A130
/* 5AD24 8005A124 E46C0148 */   swc1      $f12, 0x148($v1)
/* 5AD28 8005A128 1000001A */  b          .L8005A194
/* 5AD2C 8005A12C 00801025 */   or        $v0, $a0, $zero
.L8005A130:
/* 5AD30 8005A130 00880019 */  multu      $a0, $t0
/* 5AD34 8005A134 240E00C8 */  addiu      $t6, $zero, 0xc8
/* 5AD38 8005A138 460C7003 */  div.s      $f0, $f14, $f12
/* 5AD3C 8005A13C 00801025 */  or         $v0, $a0, $zero
/* 5AD40 8005A140 00006812 */  mflo       $t5
/* 5AD44 8005A144 00ED1821 */  addu       $v1, $a3, $t5
/* 5AD48 8005A148 46000187 */  neg.s      $f6, $f0
/* 5AD4C 8005A14C 01C5001A */  div        $zero, $t6, $a1
/* 5AD50 8005A150 460C3083 */  div.s      $f2, $f6, $f12
/* 5AD54 8005A154 14A00002 */  bnez       $a1, .L8005A160
/* 5AD58 8005A158 00000000 */   nop
/* 5AD5C 8005A15C 0007000D */  break      7
.L8005A160:
/* 5AD60 8005A160 2401FFFF */   addiu     $at, $zero, -1
/* 5AD64 8005A164 14A10004 */  bne        $a1, $at, .L8005A178
/* 5AD68 8005A168 3C018000 */   lui       $at, 0x8000
/* 5AD6C 8005A16C 15C10002 */  bne        $t6, $at, .L8005A178
/* 5AD70 8005A170 00000000 */   nop
/* 5AD74 8005A174 0006000D */  break      6
.L8005A178:
/* 5AD78 8005A178 E4600110 */   swc1      $f0, 0x110($v1)
/* 5AD7C 8005A17C E4600114 */  swc1       $f0, 0x114($v1)
/* 5AD80 8005A180 E4620118 */  swc1       $f2, 0x118($v1)
/* 5AD84 8005A184 E462011C */  swc1       $f2, 0x11c($v1)
/* 5AD88 8005A188 00007812 */  mflo       $t7
/* 5AD8C 8005A18C 000FC023 */  negu       $t8, $t7
/* 5AD90 8005A190 AC780154 */  sw         $t8, 0x154($v1)
.L8005A194:
/* 5AD94 8005A194 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5AD98 8005A198 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5AD9C 8005A19C 03E00008 */  jr         $ra
/* 5ADA0 8005A1A0 00000000 */   nop
