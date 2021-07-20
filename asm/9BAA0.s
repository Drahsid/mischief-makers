.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009AEA0
/* 9BAA0 8009AEA0 3C088000 */  lui        $t0, 0x8000
/* 9BAA4 8009AEA4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 9BAA8 8009AEA8 010A4821 */  addu       $t1, $t0, $t2
/* 9BAAC 8009AEAC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8009AEB0:
/* 9BAB0 8009AEB0 BD010000 */  cache      1, ($t0)
/* 9BAB4 8009AEB4 0109082B */  sltu       $at, $t0, $t1
/* 9BAB8 8009AEB8 1420FFFD */  bnez       $at, .L8009AEB0
/* 9BABC 8009AEBC 25080010 */   addiu     $t0, $t0, 0x10
/* 9BAC0 8009AEC0 03E00008 */  jr         $ra
/* 9BAC4 8009AEC4 00000000 */   nop
/* 9BAC8 8009AEC8 00000000 */  nop
/* 9BACC 8009AECC 00000000 */  nop
