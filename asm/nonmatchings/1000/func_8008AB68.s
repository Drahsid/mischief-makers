glabel func_8008AB68
/* 8B768 8008AB68 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8B76C 8008AB6C 000E7880 */  sll        $t7, $t6, 2
/* 8B770 8008AB70 01EE7823 */  subu       $t7, $t7, $t6
/* 8B774 8008AB74 000F7880 */  sll        $t7, $t7, 2
/* 8B778 8008AB78 01EE7821 */  addu       $t7, $t7, $t6
/* 8B77C 8008AB7C 000F7880 */  sll        $t7, $t7, 2
/* 8B780 8008AB80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B784 8008AB84 01EE7823 */  subu       $t7, $t7, $t6
/* 8B788 8008AB88 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8B78C 8008AB8C AFB00018 */  sw         $s0, 0x18($sp)
/* 8B790 8008AB90 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8B794 8008AB94 000F78C0 */  sll        $t7, $t7, 3
/* 8B798 8008AB98 01F88021 */  addu       $s0, $t7, $t8
/* 8B79C 8008AB9C 8E02016C */  lw         $v0, 0x16c($s0)
/* 8B7A0 8008ABA0 AFA40020 */  sw         $a0, 0x20($sp)
/* 8B7A4 8008ABA4 01C02025 */  or         $a0, $t6, $zero
/* 8B7A8 8008ABA8 1040000D */  beqz       $v0, .L8008ABE0
/* 8B7AC 8008ABAC AFBF001C */   sw        $ra, 0x1c($sp)
/* 8B7B0 8008ABB0 24010001 */  addiu      $at, $zero, 1
/* 8B7B4 8008ABB4 1041000D */  beq        $v0, $at, .L8008ABEC
/* 8B7B8 8008ABB8 3C063DCC */   lui       $a2, 0x3dcc
/* 8B7BC 8008ABBC 24010002 */  addiu      $at, $zero, 2
/* 8B7C0 8008ABC0 10410020 */  beq        $v0, $at, .L8008AC44
/* 8B7C4 8008ABC4 3C063F19 */   lui       $a2, 0x3f19
/* 8B7C8 8008ABC8 24010003 */  addiu      $at, $zero, 3
/* 8B7CC 8008ABCC 10410040 */  beq        $v0, $at, .L8008ACD0
/* 8B7D0 8008ABD0 3C063E4C */   lui       $a2, 0x3e4c
/* 8B7D4 8008ABD4 8E020170 */  lw         $v0, 0x170($s0)
/* 8B7D8 8008ABD8 10000053 */  b          .L8008AD28
/* 8B7DC 8008ABDC 244FFFFF */   addiu     $t7, $v0, -1
.L8008ABE0:
/* 8B7E0 8008ABE0 24020006 */  addiu      $v0, $zero, 6
/* 8B7E4 8008ABE4 1000004F */  b          .L8008AD24
/* 8B7E8 8008ABE8 AE020170 */   sw        $v0, 0x170($s0)
.L8008ABEC:
/* 8B7EC 8008ABEC 3C01800F */  lui        $at, %hi(D_800ED24C)
/* 8B7F0 8008ABF0 C42ED24C */  lwc1       $f14, %lo(D_800ED24C)($at)
/* 8B7F4 8008ABF4 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B7F8 8008ABF8 0C00A618 */  jal        func_80029860
/* 8B7FC 8008ABFC 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B800 8008AC00 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B804 8008AC04 3C01800F */  lui        $at, %hi(D_800ED250)
/* 8B808 8008AC08 C42ED250 */  lwc1       $f14, %lo(D_800ED250)($at)
/* 8B80C 8008AC0C C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B810 8008AC10 3C063DCC */  lui        $a2, 0x3dcc
/* 8B814 8008AC14 0C00A618 */  jal        func_80029860
/* 8B818 8008AC18 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B81C 8008AC1C 8E020170 */  lw         $v0, 0x170($s0)
/* 8B820 8008AC20 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 8B824 8008AC24 04410040 */  bgez       $v0, .L8008AD28
/* 8B828 8008AC28 244FFFFF */   addiu     $t7, $v0, -1
/* 8B82C 8008AC2C 8E09016C */  lw         $t1, 0x16c($s0)
/* 8B830 8008AC30 24020004 */  addiu      $v0, $zero, 4
/* 8B834 8008AC34 252A0001 */  addiu      $t2, $t1, 1
/* 8B838 8008AC38 AE020170 */  sw         $v0, 0x170($s0)
/* 8B83C 8008AC3C 10000039 */  b          .L8008AD24
/* 8B840 8008AC40 AE0A016C */   sw        $t2, 0x16c($s0)
.L8008AC44:
/* 8B844 8008AC44 3C01800F */  lui        $at, %hi(D_800ED254)
/* 8B848 8008AC48 C42ED254 */  lwc1       $f14, %lo(D_800ED254)($at)
/* 8B84C 8008AC4C C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B850 8008AC50 34C6999A */  ori        $a2, $a2, 0x999a
/* 8B854 8008AC54 0C00A618 */  jal        func_80029860
/* 8B858 8008AC58 A7A40022 */   sh        $a0, 0x22($sp)
/* 8B85C 8008AC5C E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B860 8008AC60 3C01800F */  lui        $at, %hi(D_800ED258)
/* 8B864 8008AC64 C42ED258 */  lwc1       $f14, %lo(D_800ED258)($at)
/* 8B868 8008AC68 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B86C 8008AC6C 3C063F19 */  lui        $a2, 0x3f19
/* 8B870 8008AC70 0C00A618 */  jal        func_80029860
/* 8B874 8008AC74 34C6999A */   ori       $a2, $a2, 0x999a
/* 8B878 8008AC78 8E020170 */  lw         $v0, 0x170($s0)
/* 8B87C 8008AC7C 97A40022 */  lhu        $a0, 0x22($sp)
/* 8B880 8008AC80 04410028 */  bgez       $v0, .L8008AD24
/* 8B884 8008AC84 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 8B888 8008AC88 8E0C016C */  lw         $t4, 0x16c($s0)
/* 8B88C 8008AC8C 960E00D8 */  lhu        $t6, 0xd8($s0)
/* 8B890 8008AC90 240B0006 */  addiu      $t3, $zero, 6
/* 8B894 8008AC94 24010001 */  addiu      $at, $zero, 1
/* 8B898 8008AC98 258D0001 */  addiu      $t5, $t4, 1
/* 8B89C 8008AC9C AE0B0170 */  sw         $t3, 0x170($s0)
/* 8B8A0 8008ACA0 15C10006 */  bne        $t6, $at, .L8008ACBC
/* 8B8A4 8008ACA4 AE0D016C */   sw        $t5, 0x16c($s0)
/* 8B8A8 8008ACA8 0C022907 */  jal        func_8008A41C
/* 8B8AC 8008ACAC 00000000 */   nop
/* 8B8B0 8008ACB0 8E020170 */  lw         $v0, 0x170($s0)
/* 8B8B4 8008ACB4 1000001C */  b          .L8008AD28
/* 8B8B8 8008ACB8 244FFFFF */   addiu     $t7, $v0, -1
.L8008ACBC:
/* 8B8BC 8008ACBC 0C0228CB */  jal        func_8008A32C
/* 8B8C0 8008ACC0 00000000 */   nop
/* 8B8C4 8008ACC4 8E020170 */  lw         $v0, 0x170($s0)
/* 8B8C8 8008ACC8 10000017 */  b          .L8008AD28
/* 8B8CC 8008ACCC 244FFFFF */   addiu     $t7, $v0, -1
.L8008ACD0:
/* 8B8D0 8008ACD0 3C013F80 */  lui        $at, 0x3f80
/* 8B8D4 8008ACD4 44817000 */  mtc1       $at, $f14
/* 8B8D8 8008ACD8 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 8B8DC 8008ACDC 0C00A618 */  jal        func_80029860
/* 8B8E0 8008ACE0 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B8E4 8008ACE4 3C013F80 */  lui        $at, 0x3f80
/* 8B8E8 8008ACE8 44817000 */  mtc1       $at, $f14
/* 8B8EC 8008ACEC C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8B8F0 8008ACF0 3C063E4C */  lui        $a2, 0x3e4c
/* 8B8F4 8008ACF4 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 8B8F8 8008ACF8 0C00A618 */  jal        func_80029860
/* 8B8FC 8008ACFC 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8B900 8008AD00 8E020170 */  lw         $v0, 0x170($s0)
/* 8B904 8008AD04 3C013F80 */  lui        $at, 0x3f80
/* 8B908 8008AD08 44811000 */  mtc1       $at, $f2
/* 8B90C 8008AD0C 04410005 */  bgez       $v0, .L8008AD24
/* 8B910 8008AD10 E60000B8 */   swc1      $f0, 0xb8($s0)
/* 8B914 8008AD14 8E020170 */  lw         $v0, 0x170($s0)
/* 8B918 8008AD18 E60200B8 */  swc1       $f2, 0xb8($s0)
/* 8B91C 8008AD1C E60200B4 */  swc1       $f2, 0xb4($s0)
/* 8B920 8008AD20 AE00016C */  sw         $zero, 0x16c($s0)
.L8008AD24:
/* 8B924 8008AD24 244FFFFF */  addiu      $t7, $v0, -1
.L8008AD28:
/* 8B928 8008AD28 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8B92C 8008AD2C AE0F0170 */  sw         $t7, 0x170($s0)
/* 8B930 8008AD30 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B934 8008AD34 03E00008 */  jr         $ra
/* 8B938 8008AD38 27BD0020 */   addiu     $sp, $sp, 0x20
