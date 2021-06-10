glabel func_8005BFA4
/* 5CBA4 8005BFA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5CBA8 8005BFA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 5CBAC 8005BFAC 3090FFFF */  andi       $s0, $a0, 0xffff
/* 5CBB0 8005BFB0 00107080 */  sll        $t6, $s0, 2
/* 5CBB4 8005BFB4 01D07023 */  subu       $t6, $t6, $s0
/* 5CBB8 8005BFB8 000E7080 */  sll        $t6, $t6, 2
/* 5CBBC 8005BFBC 01D07021 */  addu       $t6, $t6, $s0
/* 5CBC0 8005BFC0 000E7080 */  sll        $t6, $t6, 2
/* 5CBC4 8005BFC4 01D07023 */  subu       $t6, $t6, $s0
/* 5CBC8 8005BFC8 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 5CBCC 8005BFCC 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 5CBD0 8005BFD0 000E70C0 */  sll        $t6, $t6, 3
/* 5CBD4 8005BFD4 01CFC021 */  addu       $t8, $t6, $t7
/* 5CBD8 8005BFD8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5CBDC 8005BFDC AFA40028 */  sw         $a0, 0x28($sp)
/* 5CBE0 8005BFE0 AFB80024 */  sw         $t8, 0x24($sp)
/* 5CBE4 8005BFE4 93190183 */  lbu        $t9, 0x183($t8)
/* 5CBE8 8005BFE8 00000000 */  nop
/* 5CBEC 8005BFEC 2728FFFC */  addiu      $t0, $t9, -4
/* 5CBF0 8005BFF0 2D010005 */  sltiu      $at, $t0, 5
/* 5CBF4 8005BFF4 10200019 */  beqz       $at, .L8005C05C
/* 5CBF8 8005BFF8 00084080 */   sll       $t0, $t0, 2
/* 5CBFC 8005BFFC 3C01800F */  lui        $at, %hi(D_800EBF70)
/* 5CC00 8005C000 00280821 */  addu       $at, $at, $t0
/* 5CC04 8005C004 8C28BF70 */  lw         $t0, %lo(D_800EBF70)($at)
/* 5CC08 8005C008 00000000 */  nop
/* 5CC0C 8005C00C 01000008 */  jr         $t0
/* 5CC10 8005C010 00000000 */   nop
/* 5CC14 8005C014 0C016C7A */  jal        func_8005B1E8
/* 5CC18 8005C018 3204FFFF */   andi      $a0, $s0, 0xffff
/* 5CC1C 8005C01C 10000010 */  b          .L8005C060
/* 5CC20 8005C020 8FA90024 */   lw        $t1, 0x24($sp)
/* 5CC24 8005C024 0C016CFD */  jal        func_8005B3F4
/* 5CC28 8005C028 3204FFFF */   andi      $a0, $s0, 0xffff
/* 5CC2C 8005C02C 1000000C */  b          .L8005C060
/* 5CC30 8005C030 8FA90024 */   lw        $t1, 0x24($sp)
/* 5CC34 8005C034 0C016E8E */  jal        func_8005BA38
/* 5CC38 8005C038 3204FFFF */   andi      $a0, $s0, 0xffff
/* 5CC3C 8005C03C 10000008 */  b          .L8005C060
/* 5CC40 8005C040 8FA90024 */   lw        $t1, 0x24($sp)
/* 5CC44 8005C044 0C016EF0 */  jal        func_8005BBC0
/* 5CC48 8005C048 3204FFFF */   andi      $a0, $s0, 0xffff
/* 5CC4C 8005C04C 10000004 */  b          .L8005C060
/* 5CC50 8005C050 8FA90024 */   lw        $t1, 0x24($sp)
/* 5CC54 8005C054 0C016F3E */  jal        func_8005BCF8
/* 5CC58 8005C058 3204FFFF */   andi      $a0, $s0, 0xffff
.L8005C05C:
/* 5CC5C 8005C05C 8FA90024 */  lw         $t1, 0x24($sp)
.L8005C060:
/* 5CC60 8005C060 3C19800D */  lui        $t9, 0x800d
/* 5CC64 8005C064 91220181 */  lbu        $v0, 0x181($t1)
/* 5CC68 8005C068 A1200183 */  sb         $zero, 0x183($t1)
/* 5CC6C 8005C06C 10400006 */  beqz       $v0, .L8005C088
/* 5CC70 8005C070 00025080 */   sll       $t2, $v0, 2
/* 5CC74 8005C074 032AC821 */  addu       $t9, $t9, $t2
/* 5CC78 8005C078 8F393FD0 */  lw         $t9, 0x3fd0($t9)
/* 5CC7C 8005C07C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 5CC80 8005C080 0320F809 */  jalr       $t9
/* 5CC84 8005C084 00000000 */   nop
.L8005C088:
/* 5CC88 8005C088 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5CC8C 8005C08C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5CC90 8005C090 03E00008 */  jr         $ra
/* 5CC94 8005C094 27BD0028 */   addiu     $sp, $sp, 0x28
