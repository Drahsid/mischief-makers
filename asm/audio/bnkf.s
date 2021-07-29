.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSeqFileNew
/* 9C8E0 8009BCE0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9C8E4 8009BCE4 AFA50004 */  sw         $a1, 4($sp)
/* 9C8E8 8009BCE8 AFA00000 */  sw         $zero, ($sp)
/* 9C8EC 8009BCEC 848E0002 */  lh         $t6, 2($a0)
/* 9C8F0 8009BCF0 19C00010 */  blez       $t6, .L8009BD34
/* 9C8F4 8009BCF4 00000000 */   nop
.L8009BCF8:
/* 9C8F8 8009BCF8 8FAF0000 */  lw         $t7, ($sp)
/* 9C8FC 8009BCFC 8FA90004 */  lw         $t1, 4($sp)
/* 9C900 8009BD00 000FC0C0 */  sll        $t8, $t7, 3
/* 9C904 8009BD04 0098C821 */  addu       $t9, $a0, $t8
/* 9C908 8009BD08 8F280004 */  lw         $t0, 4($t9)
/* 9C90C 8009BD0C 00985821 */  addu       $t3, $a0, $t8
/* 9C910 8009BD10 01095021 */  addu       $t2, $t0, $t1
/* 9C914 8009BD14 AD6A0004 */  sw         $t2, 4($t3)
/* 9C918 8009BD18 8FAC0000 */  lw         $t4, ($sp)
/* 9C91C 8009BD1C 258D0001 */  addiu      $t5, $t4, 1
/* 9C920 8009BD20 AFAD0000 */  sw         $t5, ($sp)
/* 9C924 8009BD24 848E0002 */  lh         $t6, 2($a0)
/* 9C928 8009BD28 01AE082A */  slt        $at, $t5, $t6
/* 9C92C 8009BD2C 1420FFF2 */  bnez       $at, .L8009BCF8
/* 9C930 8009BD30 00000000 */   nop
.L8009BD34:
/* 9C934 8009BD34 10000001 */  b          .L8009BD3C
/* 9C938 8009BD38 00000000 */   nop
.L8009BD3C:
/* 9C93C 8009BD3C 03E00008 */  jr         $ra
/* 9C940 8009BD40 27BD0008 */   addiu     $sp, $sp, 8

glabel alBnkfNew
/* 9C944 8009BD44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C948 8009BD48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C94C 8009BD4C AFA40028 */  sw         $a0, 0x28($sp)
/* 9C950 8009BD50 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C954 8009BD54 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C958 8009BD58 AFAE0024 */  sw         $t6, 0x24($sp)
/* 9C95C 8009BD5C 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9C960 8009BD60 AFAF0020 */  sw         $t7, 0x20($sp)
/* 9C964 8009BD64 8FB80028 */  lw         $t8, 0x28($sp)
/* 9C968 8009BD68 24014231 */  addiu      $at, $zero, 0x4231
/* 9C96C 8009BD6C 87190000 */  lh         $t9, ($t8)
/* 9C970 8009BD70 13210006 */  beq        $t9, $at, .L8009BD8C
/* 9C974 8009BD74 00000000 */   nop
/* 9C978 8009BD78 24040071 */  addiu      $a0, $zero, 0x71
/* 9C97C 8009BD7C 0C0297B4 */  jal        __osError
/* 9C980 8009BD80 00002825 */   or        $a1, $zero, $zero
/* 9C984 8009BD84 10000027 */  b          .L8009BE24
/* 9C988 8009BD88 00000000 */   nop
.L8009BD8C:
/* 9C98C 8009BD8C 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C990 8009BD90 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9C994 8009BD94 85090002 */  lh         $t1, 2($t0)
/* 9C998 8009BD98 19200020 */  blez       $t1, .L8009BE1C
/* 9C99C 8009BD9C 00000000 */   nop
.L8009BDA0:
/* 9C9A0 8009BDA0 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9C9A4 8009BDA4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C9A8 8009BDA8 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9C9AC 8009BDAC 000B6080 */  sll        $t4, $t3, 2
/* 9C9B0 8009BDB0 014C6821 */  addu       $t5, $t2, $t4
/* 9C9B4 8009BDB4 8DAE0004 */  lw         $t6, 4($t5)
/* 9C9B8 8009BDB8 01CFC021 */  addu       $t8, $t6, $t7
/* 9C9BC 8009BDBC ADB80004 */  sw         $t8, 4($t5)
/* 9C9C0 8009BDC0 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9C9C4 8009BDC4 8FB90028 */  lw         $t9, 0x28($sp)
/* 9C9C8 8009BDC8 00084880 */  sll        $t1, $t0, 2
/* 9C9CC 8009BDCC 03295821 */  addu       $t3, $t9, $t1
/* 9C9D0 8009BDD0 8D6A0004 */  lw         $t2, 4($t3)
/* 9C9D4 8009BDD4 11400009 */  beqz       $t2, .L8009BDFC
/* 9C9D8 8009BDD8 00000000 */   nop
/* 9C9DC 8009BDDC 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9C9E0 8009BDE0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C9E4 8009BDE4 8FA50024 */  lw         $a1, 0x24($sp)
/* 9C9E8 8009BDE8 000E7880 */  sll        $t7, $t6, 2
/* 9C9EC 8009BDEC 018FC021 */  addu       $t8, $t4, $t7
/* 9C9F0 8009BDF0 8F040004 */  lw         $a0, 4($t8)
/* 9C9F4 8009BDF4 0C026F8D */  jal        func_8009BE34
/* 9C9F8 8009BDF8 8FA60020 */   lw        $a2, 0x20($sp)
.L8009BDFC:
/* 9C9FC 8009BDFC 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9CA00 8009BE00 8FB90028 */  lw         $t9, 0x28($sp)
/* 9CA04 8009BE04 25A80001 */  addiu      $t0, $t5, 1
/* 9CA08 8009BE08 AFA8001C */  sw         $t0, 0x1c($sp)
/* 9CA0C 8009BE0C 87290002 */  lh         $t1, 2($t9)
/* 9CA10 8009BE10 0109082A */  slt        $at, $t0, $t1
/* 9CA14 8009BE14 1420FFE2 */  bnez       $at, .L8009BDA0
/* 9CA18 8009BE18 00000000 */   nop
.L8009BE1C:
/* 9CA1C 8009BE1C 10000001 */  b          .L8009BE24
/* 9CA20 8009BE20 00000000 */   nop
.L8009BE24:
/* 9CA24 8009BE24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CA28 8009BE28 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9CA2C 8009BE2C 03E00008 */  jr         $ra
/* 9CA30 8009BE30 00000000 */   nop

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

glabel func_8009C010
/* 9CC10 8009C010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9CC14 8009C014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CC18 8009C018 AFA40018 */  sw         $a0, 0x18($sp)
/* 9CC1C 8009C01C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9CC20 8009C020 AFA60020 */  sw         $a2, 0x20($sp)
/* 9CC24 8009C024 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9CC28 8009C028 91CF000E */  lbu        $t7, 0xe($t6)
/* 9CC2C 8009C02C 11E00003 */  beqz       $t7, .L8009C03C
/* 9CC30 8009C030 00000000 */   nop
/* 9CC34 8009C034 1000001A */  b          .L8009C0A0
/* 9CC38 8009C038 00000000 */   nop
.L8009C03C:
/* 9CC3C 8009C03C 8FB90018 */  lw         $t9, 0x18($sp)
/* 9CC40 8009C040 24180001 */  addiu      $t8, $zero, 1
/* 9CC44 8009C044 A338000E */  sb         $t8, 0xe($t9)
/* 9CC48 8009C048 8FA80018 */  lw         $t0, 0x18($sp)
/* 9CC4C 8009C04C 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9CC50 8009C050 8D090000 */  lw         $t1, ($t0)
/* 9CC54 8009C054 012A5821 */  addu       $t3, $t1, $t2
/* 9CC58 8009C058 AD0B0000 */  sw         $t3, ($t0)
/* 9CC5C 8009C05C 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9CC60 8009C060 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9CC64 8009C064 8D8D0004 */  lw         $t5, 4($t4)
/* 9CC68 8009C068 01AE7821 */  addu       $t7, $t5, $t6
/* 9CC6C 8009C06C AD8F0004 */  sw         $t7, 4($t4)
/* 9CC70 8009C070 8FB80018 */  lw         $t8, 0x18($sp)
/* 9CC74 8009C074 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9CC78 8009C078 8F190008 */  lw         $t9, 8($t8)
/* 9CC7C 8009C07C 03295021 */  addu       $t2, $t9, $t1
/* 9CC80 8009C080 AF0A0008 */  sw         $t2, 8($t8)
/* 9CC84 8009C084 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9CC88 8009C088 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9CC8C 8009C08C 8FA60020 */  lw         $a2, 0x20($sp)
/* 9CC90 8009C090 0C02702C */  jal        func_8009C0B0
/* 9CC94 8009C094 8D640008 */   lw        $a0, 8($t3)
/* 9CC98 8009C098 10000001 */  b          .L8009C0A0
/* 9CC9C 8009C09C 00000000 */   nop
.L8009C0A0:
/* 9CCA0 8009C0A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CCA4 8009C0A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9CCA8 8009C0A8 03E00008 */  jr         $ra
/* 9CCAC 8009C0AC 00000000 */   nop

glabel func_8009C0B0
/* 9CCB0 8009C0B0 908E0009 */  lbu        $t6, 9($a0)
/* 9CCB4 8009C0B4 11C00003 */  beqz       $t6, .L8009C0C4
/* 9CCB8 8009C0B8 00000000 */   nop
/* 9CCBC 8009C0BC 03E00008 */  jr         $ra
/* 9CCC0 8009C0C0 00000000 */   nop
.L8009C0C4:
/* 9CCC4 8009C0C4 240F0001 */  addiu      $t7, $zero, 1
/* 9CCC8 8009C0C8 A08F0009 */  sb         $t7, 9($a0)
/* 9CCCC 8009C0CC 8C980000 */  lw         $t8, ($a0)
/* 9CCD0 8009C0D0 0306C821 */  addu       $t9, $t8, $a2
/* 9CCD4 8009C0D4 AC990000 */  sw         $t9, ($a0)
/* 9CCD8 8009C0D8 90880008 */  lbu        $t0, 8($a0)
/* 9CCDC 8009C0DC 1500000C */  bnez       $t0, .L8009C110
/* 9CCE0 8009C0E0 00000000 */   nop
/* 9CCE4 8009C0E4 8C890010 */  lw         $t1, 0x10($a0)
/* 9CCE8 8009C0E8 01255021 */  addu       $t2, $t1, $a1
/* 9CCEC 8009C0EC AC8A0010 */  sw         $t2, 0x10($a0)
/* 9CCF0 8009C0F0 8C8B000C */  lw         $t3, 0xc($a0)
/* 9CCF4 8009C0F4 11600004 */  beqz       $t3, .L8009C108
/* 9CCF8 8009C0F8 00000000 */   nop
/* 9CCFC 8009C0FC 8C8C000C */  lw         $t4, 0xc($a0)
/* 9CD00 8009C100 01856821 */  addu       $t5, $t4, $a1
/* 9CD04 8009C104 AC8D000C */  sw         $t5, 0xc($a0)
.L8009C108:
/* 9CD08 8009C108 1000000B */  b          .L8009C138
/* 9CD0C 8009C10C 00000000 */   nop
.L8009C110:
/* 9CD10 8009C110 908E0008 */  lbu        $t6, 8($a0)
/* 9CD14 8009C114 24010001 */  addiu      $at, $zero, 1
/* 9CD18 8009C118 15C10007 */  bne        $t6, $at, .L8009C138
/* 9CD1C 8009C11C 00000000 */   nop
/* 9CD20 8009C120 8C8F000C */  lw         $t7, 0xc($a0)
/* 9CD24 8009C124 11E00004 */  beqz       $t7, .L8009C138
/* 9CD28 8009C128 00000000 */   nop
/* 9CD2C 8009C12C 8C98000C */  lw         $t8, 0xc($a0)
/* 9CD30 8009C130 0305C821 */  addu       $t9, $t8, $a1
/* 9CD34 8009C134 AC99000C */  sw         $t9, 0xc($a0)
.L8009C138:
/* 9CD38 8009C138 03E00008 */  jr         $ra
/* 9CD3C 8009C13C 00000000 */   nop

glabel func_8009C140
/* 9CD40 8009C140 03E00008 */  jr         $ra
/* 9CD44 8009C144 00000000 */   nop
/* 9CD48 8009C148 00000000 */  nop
/* 9CD4C 8009C14C 00000000 */  nop
