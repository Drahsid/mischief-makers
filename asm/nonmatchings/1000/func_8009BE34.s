glabel func_8009BE34
/* 9CA34 8009BE34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9CA38 8009BE38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CA3C 8009BE3C AFA40020 */  sw         $a0, 0x20($sp)
/* 9CA40 8009BE40 AFA50024 */  sw         $a1, 0x24($sp)
/* 9CA44 8009BE44 AFA60028 */  sw         $a2, 0x28($sp)
/* 9CA48 8009BE48 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CA4C 8009BE4C 91CF0002 */  lbu        $t7, 2($t6)
/* 9CA50 8009BE50 11E00003 */  beqz       $t7, .L8009BE60
/* 9CA54 8009BE54 00000000 */   nop
/* 9CA58 8009BE58 10000038 */  b          .L8009BF3C
/* 9CA5C 8009BE5C 00000000 */   nop
.L8009BE60:
/* 9CA60 8009BE60 8FB90020 */  lw         $t9, 0x20($sp)
/* 9CA64 8009BE64 24180001 */  addiu      $t8, $zero, 1
/* 9CA68 8009BE68 A3380002 */  sb         $t8, 2($t9)
/* 9CA6C 8009BE6C 8FA80020 */  lw         $t0, 0x20($sp)
/* 9CA70 8009BE70 8D090008 */  lw         $t1, 8($t0)
/* 9CA74 8009BE74 1120000B */  beqz       $t1, .L8009BEA4
/* 9CA78 8009BE78 00000000 */   nop
/* 9CA7C 8009BE7C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9CA80 8009BE80 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9CA84 8009BE84 8D4B0008 */  lw         $t3, 8($t2)
/* 9CA88 8009BE88 016C6821 */  addu       $t5, $t3, $t4
/* 9CA8C 8009BE8C AD4D0008 */  sw         $t5, 8($t2)
/* 9CA90 8009BE90 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CA94 8009BE94 8FA50024 */  lw         $a1, 0x24($sp)
/* 9CA98 8009BE98 8FA60028 */  lw         $a2, 0x28($sp)
/* 9CA9C 8009BE9C 0C026FD3 */  jal        func_8009BF4C
/* 9CAA0 8009BEA0 8DC40008 */   lw        $a0, 8($t6)
.L8009BEA4:
/* 9CAA4 8009BEA4 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9CAA8 8009BEA8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9CAAC 8009BEAC 85F80000 */  lh         $t8, ($t7)
/* 9CAB0 8009BEB0 1B000020 */  blez       $t8, .L8009BF34
/* 9CAB4 8009BEB4 00000000 */   nop
.L8009BEB8:
/* 9CAB8 8009BEB8 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9CABC 8009BEBC 8FB90020 */  lw         $t9, 0x20($sp)
/* 9CAC0 8009BEC0 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9CAC4 8009BEC4 00084880 */  sll        $t1, $t0, 2
/* 9CAC8 8009BEC8 03295821 */  addu       $t3, $t9, $t1
/* 9CACC 8009BECC 8D6C000C */  lw         $t4, 0xc($t3)
/* 9CAD0 8009BED0 018D5021 */  addu       $t2, $t4, $t5
/* 9CAD4 8009BED4 AD6A000C */  sw         $t2, 0xc($t3)
/* 9CAD8 8009BED8 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9CADC 8009BEDC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CAE0 8009BEE0 000FC080 */  sll        $t8, $t7, 2
/* 9CAE4 8009BEE4 01D84021 */  addu       $t0, $t6, $t8
/* 9CAE8 8009BEE8 8D19000C */  lw         $t9, 0xc($t0)
/* 9CAEC 8009BEEC 13200009 */  beqz       $t9, .L8009BF14
/* 9CAF0 8009BEF0 00000000 */   nop
/* 9CAF4 8009BEF4 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9CAF8 8009BEF8 8FA90020 */  lw         $t1, 0x20($sp)
/* 9CAFC 8009BEFC 8FA50024 */  lw         $a1, 0x24($sp)
/* 9CB00 8009BF00 000C6880 */  sll        $t5, $t4, 2
/* 9CB04 8009BF04 012D5021 */  addu       $t2, $t1, $t5
/* 9CB08 8009BF08 8D44000C */  lw         $a0, 0xc($t2)
/* 9CB0C 8009BF0C 0C026FD3 */  jal        func_8009BF4C
/* 9CB10 8009BF10 8FA60028 */   lw        $a2, 0x28($sp)
.L8009BF14:
/* 9CB14 8009BF14 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9CB18 8009BF18 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9CB1C 8009BF1C 256F0001 */  addiu      $t7, $t3, 1
/* 9CB20 8009BF20 AFAF001C */  sw         $t7, 0x1c($sp)
/* 9CB24 8009BF24 85D80000 */  lh         $t8, ($t6)
/* 9CB28 8009BF28 01F8082A */  slt        $at, $t7, $t8
/* 9CB2C 8009BF2C 1420FFE2 */  bnez       $at, .L8009BEB8
/* 9CB30 8009BF30 00000000 */   nop
.L8009BF34:
/* 9CB34 8009BF34 10000001 */  b          .L8009BF3C
/* 9CB38 8009BF38 00000000 */   nop
.L8009BF3C:
/* 9CB3C 8009BF3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CB40 8009BF40 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9CB44 8009BF44 03E00008 */  jr         $ra
/* 9CB48 8009BF48 00000000 */   nop
