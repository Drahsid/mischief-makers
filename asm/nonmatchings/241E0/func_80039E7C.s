glabel func_80039E7C
/* 3AA7C 80039E7C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3AA80 80039E80 AFB40028 */  sw         $s4, 0x28($sp)
/* 3AA84 80039E84 AFB20020 */  sw         $s2, 0x20($sp)
/* 3AA88 80039E88 3092FFFF */  andi       $s2, $a0, 0xffff
/* 3AA8C 80039E8C 24140198 */  addiu      $s4, $zero, 0x198
/* 3AA90 80039E90 02540019 */  multu      $s2, $s4
/* 3AA94 80039E94 AFB30024 */  sw         $s3, 0x24($sp)
/* 3AA98 80039E98 3C13800F */  lui        $s3, %hi(D_800EF510)
/* 3AA9C 80039E9C 2673F510 */  addiu      $s3, $s3, %lo(D_800EF510)
/* 3AAA0 80039EA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 3AAA4 80039EA4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3AAA8 80039EA8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 3AAAC 80039EAC AFA40030 */  sw         $a0, 0x30($sp)
/* 3AAB0 80039EB0 00007012 */  mflo       $t6
/* 3AAB4 80039EB4 026E8021 */  addu       $s0, $s3, $t6
/* 3AAB8 80039EB8 960200D8 */  lhu        $v0, 0xd8($s0)
/* 3AABC 80039EBC 00000000 */  nop
/* 3AAC0 80039EC0 30517000 */  andi       $s1, $v0, 0x7000
/* 3AAC4 80039EC4 06210003 */  bgez       $s1, .L80039ED4
/* 3AAC8 80039EC8 00117B03 */   sra       $t7, $s1, 0xc
/* 3AACC 80039ECC 26210FFF */  addiu      $at, $s1, 0xfff
/* 3AAD0 80039ED0 00017B03 */  sra        $t7, $at, 0xc
.L80039ED4:
/* 3AAD4 80039ED4 000FC400 */  sll        $t8, $t7, 0x10
/* 3AAD8 80039ED8 30430F00 */  andi       $v1, $v0, 0xf00
/* 3AADC 80039EDC 1060000C */  beqz       $v1, .L80039F10
/* 3AAE0 80039EE0 00188C03 */   sra       $s1, $t8, 0x10
/* 3AAE4 80039EE4 24010100 */  addiu      $at, $zero, 0x100
/* 3AAE8 80039EE8 1061001F */  beq        $v1, $at, .L80039F68
/* 3AAEC 80039EEC 24010200 */   addiu     $at, $zero, 0x200
/* 3AAF0 80039EF0 10610033 */  beq        $v1, $at, .L80039FC0
/* 3AAF4 80039EF4 24010400 */   addiu     $at, $zero, 0x400
/* 3AAF8 80039EF8 10610053 */  beq        $v1, $at, .L8003A048
/* 3AAFC 80039EFC 24010500 */   addiu     $at, $zero, 0x500
/* 3AB00 80039F00 10610069 */  beq        $v1, $at, .L8003A0A8
/* 3AB04 80039F04 00000000 */   nop
/* 3AB08 80039F08 1000007E */  b          .L8003A104
/* 3AB0C 80039F0C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80039F10:
/* 3AB10 80039F10 8E080180 */  lw         $t0, 0x180($s0)
/* 3AB14 80039F14 00000000 */  nop
/* 3AB18 80039F18 0111082A */  slt        $at, $t0, $s1
/* 3AB1C 80039F1C 10200079 */  beqz       $at, .L8003A104
/* 3AB20 80039F20 8FBF002C */   lw        $ra, 0x2c($sp)
/* 3AB24 80039F24 0C00E768 */  jal        func_80039DA0
/* 3AB28 80039F28 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3AB2C 80039F2C 00540019 */  multu      $v0, $s4
/* 3AB30 80039F30 3045FFFF */  andi       $a1, $v0, 0xffff
/* 3AB34 80039F34 00004812 */  mflo       $t1
/* 3AB38 80039F38 02695021 */  addu       $t2, $s3, $t1
/* 3AB3C 80039F3C 8D4B0080 */  lw         $t3, 0x80($t2)
/* 3AB40 80039F40 00000000 */  nop
/* 3AB44 80039F44 1560006F */  bnez       $t3, .L8003A104
/* 3AB48 80039F48 8FBF002C */   lw        $ra, 0x2c($sp)
/* 3AB4C 80039F4C 0C00E6B7 */  jal        func_80039ADC
/* 3AB50 80039F50 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3AB54 80039F54 8E0C0180 */  lw         $t4, 0x180($s0)
/* 3AB58 80039F58 00000000 */  nop
/* 3AB5C 80039F5C 258D0001 */  addiu      $t5, $t4, 1
/* 3AB60 80039F60 10000067 */  b          .L8003A100
/* 3AB64 80039F64 AE0D0180 */   sw        $t5, 0x180($s0)
.L80039F68:
/* 3AB68 80039F68 8E0E0180 */  lw         $t6, 0x180($s0)
/* 3AB6C 80039F6C 00000000 */  nop
/* 3AB70 80039F70 01D1082A */  slt        $at, $t6, $s1
/* 3AB74 80039F74 10200063 */  beqz       $at, .L8003A104
/* 3AB78 80039F78 8FBF002C */   lw        $ra, 0x2c($sp)
/* 3AB7C 80039F7C 0C00E768 */  jal        func_80039DA0
/* 3AB80 80039F80 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3AB84 80039F84 00540019 */  multu      $v0, $s4
/* 3AB88 80039F88 3045FFFF */  andi       $a1, $v0, 0xffff
/* 3AB8C 80039F8C 00007812 */  mflo       $t7
/* 3AB90 80039F90 026FC021 */  addu       $t8, $s3, $t7
/* 3AB94 80039F94 8F190080 */  lw         $t9, 0x80($t8)
/* 3AB98 80039F98 00000000 */  nop
/* 3AB9C 80039F9C 17200059 */  bnez       $t9, .L8003A104
/* 3ABA0 80039FA0 8FBF002C */   lw        $ra, 0x2c($sp)
/* 3ABA4 80039FA4 0C00E707 */  jal        func_80039C1C
/* 3ABA8 80039FA8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3ABAC 80039FAC 8E080180 */  lw         $t0, 0x180($s0)
/* 3ABB0 80039FB0 00000000 */  nop
/* 3ABB4 80039FB4 25090001 */  addiu      $t1, $t0, 1
/* 3ABB8 80039FB8 10000051 */  b          .L8003A100
/* 3ABBC 80039FBC AE090180 */   sw        $t1, 0x180($s0)
.L80039FC0:
/* 3ABC0 80039FC0 8E020180 */  lw         $v0, 0x180($s0)
/* 3ABC4 80039FC4 00126080 */  sll        $t4, $s2, 2
/* 3ABC8 80039FC8 0051082A */  slt        $at, $v0, $s1
/* 3ABCC 80039FCC 1020004C */  beqz       $at, .L8003A100
/* 3ABD0 80039FD0 00025080 */   sll       $t2, $v0, 2
/* 3ABD4 80039FD4 01425023 */  subu       $t2, $t2, $v0
/* 3ABD8 80039FD8 000A5080 */  sll        $t2, $t2, 2
/* 3ABDC 80039FDC 01926023 */  subu       $t4, $t4, $s2
/* 3ABE0 80039FE0 000C6080 */  sll        $t4, $t4, 2
/* 3ABE4 80039FE4 01425021 */  addu       $t2, $t2, $v0
/* 3ABE8 80039FE8 000A5080 */  sll        $t2, $t2, 2
/* 3ABEC 80039FEC 01926021 */  addu       $t4, $t4, $s2
/* 3ABF0 80039FF0 000C6080 */  sll        $t4, $t4, 2
/* 3ABF4 80039FF4 01425023 */  subu       $t2, $t2, $v0
/* 3ABF8 80039FF8 000A50C0 */  sll        $t2, $t2, 3
/* 3ABFC 80039FFC 01926023 */  subu       $t4, $t4, $s2
/* 3AC00 8003A000 000C60C0 */  sll        $t4, $t4, 3
/* 3AC04 8003A004 026A5821 */  addu       $t3, $s3, $t2
/* 3AC08 8003A008 016C6821 */  addu       $t5, $t3, $t4
/* 3AC0C 8003A00C 8DAE0218 */  lw         $t6, 0x218($t5)
/* 3AC10 8003A010 244F0001 */  addiu      $t7, $v0, 1
/* 3AC14 8003A014 11C0003A */  beqz       $t6, .L8003A100
/* 3AC18 8003A018 01F22821 */   addu      $a1, $t7, $s2
/* 3AC1C 8003A01C 30B9FFFF */  andi       $t9, $a1, 0xffff
/* 3AC20 8003A020 03340019 */  multu      $t9, $s4
/* 3AC24 8003A024 AE0F0180 */  sw         $t7, 0x180($s0)
/* 3AC28 8003A028 03202825 */  or         $a1, $t9, $zero
/* 3AC2C 8003A02C 3244FFFF */  andi       $a0, $s2, 0xffff
/* 3AC30 8003A030 00004012 */  mflo       $t0
/* 3AC34 8003A034 02684821 */  addu       $t1, $s3, $t0
/* 3AC38 8003A038 0C00E63E */  jal        func_800398F8
/* 3AC3C 8003A03C AD200080 */   sw        $zero, 0x80($t1)
/* 3AC40 8003A040 10000030 */  b          .L8003A104
/* 3AC44 8003A044 8FBF002C */   lw        $ra, 0x2c($sp)
.L8003A048:
/* 3AC48 8003A048 1A20002D */  blez       $s1, .L8003A100
/* 3AC4C 8003A04C AE000180 */   sw        $zero, 0x180($s0)
.L8003A050:
/* 3AC50 8003A050 0C00E768 */  jal        func_80039DA0
/* 3AC54 8003A054 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3AC58 8003A058 00540019 */  multu      $v0, $s4
/* 3AC5C 8003A05C 3045FFFF */  andi       $a1, $v0, 0xffff
/* 3AC60 8003A060 00005012 */  mflo       $t2
/* 3AC64 8003A064 026A5821 */  addu       $t3, $s3, $t2
/* 3AC68 8003A068 8D6C0080 */  lw         $t4, 0x80($t3)
/* 3AC6C 8003A06C 00000000 */  nop
/* 3AC70 8003A070 15800005 */  bnez       $t4, .L8003A088
/* 3AC74 8003A074 00000000 */   nop
/* 3AC78 8003A078 0C00E6B7 */  jal        func_80039ADC
/* 3AC7C 8003A07C 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3AC80 8003A080 10000020 */  b          .L8003A104
/* 3AC84 8003A084 8FBF002C */   lw        $ra, 0x2c($sp)
.L8003A088:
/* 3AC88 8003A088 8E0D0180 */  lw         $t5, 0x180($s0)
/* 3AC8C 8003A08C 00000000 */  nop
/* 3AC90 8003A090 25AE0001 */  addiu      $t6, $t5, 1
/* 3AC94 8003A094 01D1082A */  slt        $at, $t6, $s1
/* 3AC98 8003A098 1420FFED */  bnez       $at, .L8003A050
/* 3AC9C 8003A09C AE0E0180 */   sw        $t6, 0x180($s0)
/* 3ACA0 8003A0A0 10000018 */  b          .L8003A104
/* 3ACA4 8003A0A4 8FBF002C */   lw        $ra, 0x2c($sp)
.L8003A0A8:
/* 3ACA8 8003A0A8 1A200015 */  blez       $s1, .L8003A100
/* 3ACAC 8003A0AC AE000180 */   sw        $zero, 0x180($s0)
.L8003A0B0:
/* 3ACB0 8003A0B0 0C00E768 */  jal        func_80039DA0
/* 3ACB4 8003A0B4 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3ACB8 8003A0B8 00540019 */  multu      $v0, $s4
/* 3ACBC 8003A0BC 3045FFFF */  andi       $a1, $v0, 0xffff
/* 3ACC0 8003A0C0 0000C012 */  mflo       $t8
/* 3ACC4 8003A0C4 0278C821 */  addu       $t9, $s3, $t8
/* 3ACC8 8003A0C8 8F280080 */  lw         $t0, 0x80($t9)
/* 3ACCC 8003A0CC 00000000 */  nop
/* 3ACD0 8003A0D0 15000005 */  bnez       $t0, .L8003A0E8
/* 3ACD4 8003A0D4 00000000 */   nop
/* 3ACD8 8003A0D8 0C00E707 */  jal        func_80039C1C
/* 3ACDC 8003A0DC 3244FFFF */   andi      $a0, $s2, 0xffff
/* 3ACE0 8003A0E0 10000008 */  b          .L8003A104
/* 3ACE4 8003A0E4 8FBF002C */   lw        $ra, 0x2c($sp)
.L8003A0E8:
/* 3ACE8 8003A0E8 8E090180 */  lw         $t1, 0x180($s0)
/* 3ACEC 8003A0EC 00000000 */  nop
/* 3ACF0 8003A0F0 252A0001 */  addiu      $t2, $t1, 1
/* 3ACF4 8003A0F4 0151082A */  slt        $at, $t2, $s1
/* 3ACF8 8003A0F8 1420FFED */  bnez       $at, .L8003A0B0
/* 3ACFC 8003A0FC AE0A0180 */   sw        $t2, 0x180($s0)
.L8003A100:
/* 3AD00 8003A100 8FBF002C */  lw         $ra, 0x2c($sp)
.L8003A104:
/* 3AD04 8003A104 8FB00018 */  lw         $s0, 0x18($sp)
/* 3AD08 8003A108 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3AD0C 8003A10C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3AD10 8003A110 8FB30024 */  lw         $s3, 0x24($sp)
/* 3AD14 8003A114 8FB40028 */  lw         $s4, 0x28($sp)
/* 3AD18 8003A118 03E00008 */  jr         $ra
/* 3AD1C 8003A11C 27BD0030 */   addiu     $sp, $sp, 0x30
