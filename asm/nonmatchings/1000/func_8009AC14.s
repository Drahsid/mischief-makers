glabel func_8009AC14
/* 9B814 8009AC14 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B818 8009AC18 3C0E8018 */  lui        $t6, %hi(D_80185630)
/* 9B81C 8009AC1C 25CE5630 */  addiu      $t6, $t6, %lo(D_80185630)
/* 9B820 8009AC20 AFAE000C */  sw         $t6, 0xc($sp)
/* 9B824 8009AC24 AFA00000 */  sw         $zero, ($sp)
.L8009AC28:
/* 9B828 8009AC28 8FAF0000 */  lw         $t7, ($sp)
/* 9B82C 8009AC2C 3C018018 */  lui        $at, %hi(D_80185630)
/* 9B830 8009AC30 000FC080 */  sll        $t8, $t7, 2
/* 9B834 8009AC34 00380821 */  addu       $at, $at, $t8
/* 9B838 8009AC38 AC205630 */  sw         $zero, %lo(D_80185630)($at)
/* 9B83C 8009AC3C 8FB90000 */  lw         $t9, ($sp)
/* 9B840 8009AC40 27280001 */  addiu      $t0, $t9, 1
/* 9B844 8009AC44 29010010 */  slti       $at, $t0, 0x10
/* 9B848 8009AC48 1420FFF7 */  bnez       $at, .L8009AC28
/* 9B84C 8009AC4C AFA80000 */   sw        $t0, ($sp)
/* 9B850 8009AC50 24090001 */  addiu      $t1, $zero, 1
/* 9B854 8009AC54 3C018018 */  lui        $at, %hi(D_8018566C)
/* 9B858 8009AC58 AC29566C */  sw         $t1, %lo(D_8018566C)($at)
/* 9B85C 8009AC5C 240A00FF */  addiu      $t2, $zero, 0xff
/* 9B860 8009AC60 A3AA0004 */  sb         $t2, 4($sp)
/* 9B864 8009AC64 240B0001 */  addiu      $t3, $zero, 1
/* 9B868 8009AC68 A3AB0005 */  sb         $t3, 5($sp)
/* 9B86C 8009AC6C 240C0004 */  addiu      $t4, $zero, 4
/* 9B870 8009AC70 A3AC0006 */  sb         $t4, 6($sp)
/* 9B874 8009AC74 240D0001 */  addiu      $t5, $zero, 1
/* 9B878 8009AC78 A3AD0007 */  sb         $t5, 7($sp)
/* 9B87C 8009AC7C 340EFFFF */  ori        $t6, $zero, 0xffff
/* 9B880 8009AC80 A7AE0008 */  sh         $t6, 8($sp)
/* 9B884 8009AC84 240FFFFF */  addiu      $t7, $zero, -1
/* 9B888 8009AC88 A3AF000A */  sb         $t7, 0xa($sp)
/* 9B88C 8009AC8C 2418FFFF */  addiu      $t8, $zero, -1
/* 9B890 8009AC90 A3B8000B */  sb         $t8, 0xb($sp)
/* 9B894 8009AC94 3C198018 */  lui        $t9, %hi(D_80185671)
/* 9B898 8009AC98 93395671 */  lbu        $t9, %lo(D_80185671)($t9)
/* 9B89C 8009AC9C AFA00000 */  sw         $zero, ($sp)
/* 9B8A0 8009ACA0 1B200014 */  blez       $t9, .L8009ACF4
/* 9B8A4 8009ACA4 00000000 */   nop
.L8009ACA8:
/* 9B8A8 8009ACA8 27A90004 */  addiu      $t1, $sp, 4
/* 9B8AC 8009ACAC 8D210000 */  lw         $at, ($t1)
/* 9B8B0 8009ACB0 8FA8000C */  lw         $t0, 0xc($sp)
/* 9B8B4 8009ACB4 A9010000 */  swl        $at, ($t0)
/* 9B8B8 8009ACB8 B9010003 */  swr        $at, 3($t0)
/* 9B8BC 8009ACBC 8D2B0004 */  lw         $t3, 4($t1)
/* 9B8C0 8009ACC0 A90B0004 */  swl        $t3, 4($t0)
/* 9B8C4 8009ACC4 B90B0007 */  swr        $t3, 7($t0)
/* 9B8C8 8009ACC8 8FAC000C */  lw         $t4, 0xc($sp)
/* 9B8CC 8009ACCC 258D0008 */  addiu      $t5, $t4, 8
/* 9B8D0 8009ACD0 AFAD000C */  sw         $t5, 0xc($sp)
/* 9B8D4 8009ACD4 8FAE0000 */  lw         $t6, ($sp)
/* 9B8D8 8009ACD8 3C188018 */  lui        $t8, %hi(D_80185671)
/* 9B8DC 8009ACDC 93185671 */  lbu        $t8, %lo(D_80185671)($t8)
/* 9B8E0 8009ACE0 25CF0001 */  addiu      $t7, $t6, 1
/* 9B8E4 8009ACE4 AFAF0000 */  sw         $t7, ($sp)
/* 9B8E8 8009ACE8 01F8082A */  slt        $at, $t7, $t8
/* 9B8EC 8009ACEC 1420FFEE */  bnez       $at, .L8009ACA8
/* 9B8F0 8009ACF0 00000000 */   nop
.L8009ACF4:
/* 9B8F4 8009ACF4 8FAA000C */  lw         $t2, 0xc($sp)
/* 9B8F8 8009ACF8 241900FE */  addiu      $t9, $zero, 0xfe
/* 9B8FC 8009ACFC A1590000 */  sb         $t9, ($t2)
/* 9B900 8009AD00 10000001 */  b          .L8009AD08
/* 9B904 8009AD04 00000000 */   nop
.L8009AD08:
/* 9B908 8009AD08 03E00008 */  jr         $ra
/* 9B90C 8009AD0C 27BD0010 */   addiu     $sp, $sp, 0x10
