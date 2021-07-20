.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A6F10
/* A7B10 800A6F10 18A00011 */  blez       $a1, .L800A6F58
/* A7B14 800A6F14 00000000 */   nop
/* A7B18 800A6F18 240B2000 */  addiu      $t3, $zero, 0x2000
/* A7B1C 800A6F1C 00AB082B */  sltu       $at, $a1, $t3
/* A7B20 800A6F20 1020000F */  beqz       $at, .L800A6F60
/* A7B24 800A6F24 00000000 */   nop
/* A7B28 800A6F28 00804025 */  or         $t0, $a0, $zero
/* A7B2C 800A6F2C 00854821 */  addu       $t1, $a0, $a1
/* A7B30 800A6F30 0109082B */  sltu       $at, $t0, $t1
/* A7B34 800A6F34 10200008 */  beqz       $at, .L800A6F58
/* A7B38 800A6F38 00000000 */   nop
/* A7B3C 800A6F3C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* A7B40 800A6F40 310A000F */  andi       $t2, $t0, 0xf
/* A7B44 800A6F44 010A4023 */  subu       $t0, $t0, $t2
.L800A6F48:
/* A7B48 800A6F48 BD190000 */  cache      0x19, ($t0)
/* A7B4C 800A6F4C 0109082B */  sltu       $at, $t0, $t1
/* A7B50 800A6F50 1420FFFD */  bnez       $at, .L800A6F48
/* A7B54 800A6F54 25080010 */   addiu     $t0, $t0, 0x10
.L800A6F58:
/* A7B58 800A6F58 03E00008 */  jr         $ra
/* A7B5C 800A6F5C 00000000 */   nop
.L800A6F60:
/* A7B60 800A6F60 3C088000 */  lui        $t0, 0x8000
/* A7B64 800A6F64 010B4821 */  addu       $t1, $t0, $t3
/* A7B68 800A6F68 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800A6F6C:
/* A7B6C 800A6F6C BD010000 */  cache      1, ($t0)
/* A7B70 800A6F70 0109082B */  sltu       $at, $t0, $t1
/* A7B74 800A6F74 1420FFFD */  bnez       $at, .L800A6F6C
/* A7B78 800A6F78 25080010 */   addiu     $t0, $t0, 0x10
/* A7B7C 800A6F7C 03E00008 */  jr         $ra
/* A7B80 800A6F80 00000000 */   nop
/* A7B84 800A6F84 00000000 */  nop
/* A7B88 800A6F88 00000000 */  nop
/* A7B8C 800A6F8C 00000000 */  nop
