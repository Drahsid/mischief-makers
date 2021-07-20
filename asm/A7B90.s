.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A6F90
/* A7B90 800A6F90 18A00011 */  blez       $a1, .L800A6FD8
/* A7B94 800A6F94 00000000 */   nop
/* A7B98 800A6F98 240B4000 */  addiu      $t3, $zero, 0x4000
/* A7B9C 800A6F9C 00AB082B */  sltu       $at, $a1, $t3
/* A7BA0 800A6FA0 1020000F */  beqz       $at, .L800A6FE0
/* A7BA4 800A6FA4 00000000 */   nop
/* A7BA8 800A6FA8 00804025 */  or         $t0, $a0, $zero
/* A7BAC 800A6FAC 00854821 */  addu       $t1, $a0, $a1
/* A7BB0 800A6FB0 0109082B */  sltu       $at, $t0, $t1
/* A7BB4 800A6FB4 10200008 */  beqz       $at, .L800A6FD8
/* A7BB8 800A6FB8 00000000 */   nop
/* A7BBC 800A6FBC 2529FFE0 */  addiu      $t1, $t1, -0x20
/* A7BC0 800A6FC0 310A001F */  andi       $t2, $t0, 0x1f
/* A7BC4 800A6FC4 010A4023 */  subu       $t0, $t0, $t2
.L800A6FC8:
/* A7BC8 800A6FC8 BD100000 */  cache      0x10, ($t0)
/* A7BCC 800A6FCC 0109082B */  sltu       $at, $t0, $t1
/* A7BD0 800A6FD0 1420FFFD */  bnez       $at, .L800A6FC8
/* A7BD4 800A6FD4 25080020 */   addiu     $t0, $t0, 0x20
.L800A6FD8:
/* A7BD8 800A6FD8 03E00008 */  jr         $ra
/* A7BDC 800A6FDC 00000000 */   nop
.L800A6FE0:
/* A7BE0 800A6FE0 3C088000 */  lui        $t0, 0x8000
/* A7BE4 800A6FE4 010B4821 */  addu       $t1, $t0, $t3
/* A7BE8 800A6FE8 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800A6FEC:
/* A7BEC 800A6FEC BD000000 */  cache      0, ($t0)
/* A7BF0 800A6FF0 0109082B */  sltu       $at, $t0, $t1
/* A7BF4 800A6FF4 1420FFFD */  bnez       $at, .L800A6FEC
/* A7BF8 800A6FF8 25080020 */   addiu     $t0, $t0, 0x20
/* A7BFC 800A6FFC 03E00008 */  jr         $ra
/* A7C00 800A7000 00000000 */   nop
/* A7C04 800A7004 00000000 */  nop
/* A7C08 800A7008 00000000 */  nop
/* A7C0C 800A700C 00000000 */  nop
