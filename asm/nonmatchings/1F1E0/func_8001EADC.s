glabel func_8001EADC
/* 1F6DC 8001EADC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1F6E0 8001EAE0 24070198 */  addiu      $a3, $zero, 0x198
/* 1F6E4 8001EAE4 01E70019 */  multu      $t7, $a3
/* 1F6E8 8001EAE8 3C06800F */  lui        $a2, %hi(gActors)
/* 1F6EC 8001EAEC 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 1F6F0 8001EAF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F6F4 8001EAF4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F6F8 8001EAF8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1F6FC 8001EAFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F700 8001EB00 2401000B */  addiu      $at, $zero, 0xb
/* 1F704 8001EB04 01C02025 */  or         $a0, $t6, $zero
/* 1F708 8001EB08 01E02825 */  or         $a1, $t7, $zero
/* 1F70C 8001EB0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F710 8001EB10 0000C012 */  mflo       $t8
/* 1F714 8001EB14 00D81821 */  addu       $v1, $a2, $t8
/* 1F718 8001EB18 906200DE */  lbu        $v0, 0xde($v1)
/* 1F71C 8001EB1C 00000000 */  nop
/* 1F720 8001EB20 10410005 */  beq        $v0, $at, .L8001EB38
/* 1F724 8001EB24 2401000E */   addiu     $at, $zero, 0xe
/* 1F728 8001EB28 10410003 */  beq        $v0, $at, .L8001EB38
/* 1F72C 8001EB2C 2401000F */   addiu     $at, $zero, 0xf
/* 1F730 8001EB30 14410010 */  bne        $v0, $at, .L8001EB74
/* 1F734 8001EB34 00000000 */   nop
.L8001EB38:
/* 1F738 8001EB38 00870019 */  multu      $a0, $a3
/* 1F73C 8001EB3C 8C790098 */  lw         $t9, 0x98($v1)
/* 1F740 8001EB40 2401FFFD */  addiu      $at, $zero, -3
/* 1F744 8001EB44 03214024 */  and        $t0, $t9, $at
/* 1F748 8001EB48 AC680098 */  sw         $t0, 0x98($v1)
/* 1F74C 8001EB4C 00004812 */  mflo       $t1
/* 1F750 8001EB50 00C91021 */  addu       $v0, $a2, $t1
/* 1F754 8001EB54 8C4A0098 */  lw         $t2, 0x98($v0)
/* 1F758 8001EB58 904C00DA */  lbu        $t4, 0xda($v0)
/* 1F75C 8001EB5C 904D00DB */  lbu        $t5, 0xdb($v0)
/* 1F760 8001EB60 394B0003 */  xori       $t3, $t2, 3
/* 1F764 8001EB64 AC4B0098 */  sw         $t3, 0x98($v0)
/* 1F768 8001EB68 A04C00DC */  sb         $t4, 0xdc($v0)
/* 1F76C 8001EB6C 10000003 */  b          .L8001EB7C
/* 1F770 8001EB70 A04D00DD */   sb        $t5, 0xdd($v0)
.L8001EB74:
/* 1F774 8001EB74 0C007A77 */  jal        func_8001E9DC
/* 1F778 8001EB78 00000000 */   nop
.L8001EB7C:
/* 1F77C 8001EB7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F780 8001EB80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F784 8001EB84 03E00008 */  jr         $ra
/* 1F788 8001EB88 00000000 */   nop
