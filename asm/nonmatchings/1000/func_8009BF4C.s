glabel func_8009BF4C
/* 9CB4C 8009BF4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9CB50 8009BF50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CB54 8009BF54 AFA40020 */  sw         $a0, 0x20($sp)
/* 9CB58 8009BF58 AFA50024 */  sw         $a1, 0x24($sp)
/* 9CB5C 8009BF5C AFA60028 */  sw         $a2, 0x28($sp)
/* 9CB60 8009BF60 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CB64 8009BF64 91CF0003 */  lbu        $t7, 3($t6)
/* 9CB68 8009BF68 11E00003 */  beqz       $t7, .L8009BF78
/* 9CB6C 8009BF6C 00000000 */   nop
/* 9CB70 8009BF70 10000023 */  b          .L8009C000
/* 9CB74 8009BF74 00000000 */   nop
.L8009BF78:
/* 9CB78 8009BF78 8FB90020 */  lw         $t9, 0x20($sp)
/* 9CB7C 8009BF7C 24180001 */  addiu      $t8, $zero, 1
/* 9CB80 8009BF80 A3380003 */  sb         $t8, 3($t9)
/* 9CB84 8009BF84 8FA80020 */  lw         $t0, 0x20($sp)
/* 9CB88 8009BF88 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9CB8C 8009BF8C 8509000E */  lh         $t1, 0xe($t0)
/* 9CB90 8009BF90 19200019 */  blez       $t1, .L8009BFF8
/* 9CB94 8009BF94 00000000 */   nop
.L8009BF98:
/* 9CB98 8009BF98 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9CB9C 8009BF9C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9CBA0 8009BFA0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9CBA4 8009BFA4 000B6080 */  sll        $t4, $t3, 2
/* 9CBA8 8009BFA8 014C6821 */  addu       $t5, $t2, $t4
/* 9CBAC 8009BFAC 8DAE0010 */  lw         $t6, 0x10($t5)
/* 9CBB0 8009BFB0 01CFC021 */  addu       $t8, $t6, $t7
/* 9CBB4 8009BFB4 ADB80010 */  sw         $t8, 0x10($t5)
/* 9CBB8 8009BFB8 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9CBBC 8009BFBC 8FB90020 */  lw         $t9, 0x20($sp)
/* 9CBC0 8009BFC0 8FA50024 */  lw         $a1, 0x24($sp)
/* 9CBC4 8009BFC4 00084880 */  sll        $t1, $t0, 2
/* 9CBC8 8009BFC8 03295821 */  addu       $t3, $t9, $t1
/* 9CBCC 8009BFCC 8D640010 */  lw         $a0, 0x10($t3)
/* 9CBD0 8009BFD0 0C027004 */  jal        func_8009C010
/* 9CBD4 8009BFD4 8FA60028 */   lw        $a2, 0x28($sp)
/* 9CBD8 8009BFD8 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9CBDC 8009BFDC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CBE0 8009BFE0 254C0001 */  addiu      $t4, $t2, 1
/* 9CBE4 8009BFE4 AFAC001C */  sw         $t4, 0x1c($sp)
/* 9CBE8 8009BFE8 85CF000E */  lh         $t7, 0xe($t6)
/* 9CBEC 8009BFEC 018F082A */  slt        $at, $t4, $t7
/* 9CBF0 8009BFF0 1420FFE9 */  bnez       $at, .L8009BF98
/* 9CBF4 8009BFF4 00000000 */   nop
.L8009BFF8:
/* 9CBF8 8009BFF8 10000001 */  b          .L8009C000
/* 9CBFC 8009BFFC 00000000 */   nop
.L8009C000:
/* 9CC00 8009C000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CC04 8009C004 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9CC08 8009C008 03E00008 */  jr         $ra
/* 9CC0C 8009C00C 00000000 */   nop
