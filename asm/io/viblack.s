.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViBlack
/* 999F0 80098DF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 999F4 80098DF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 999F8 80098DF8 AFA40028 */  sw         $a0, 0x28($sp)
/* 999FC 80098DFC AFB00018 */  sw         $s0, 0x18($sp)
/* 99A00 80098E00 0C0297A4 */  jal        __osDisableInt
/* 99A04 80098E04 00000000 */   nop
/* 99A08 80098E08 00408025 */  or         $s0, $v0, $zero
/* 99A0C 80098E0C 93AE002B */  lbu        $t6, 0x2b($sp)
/* 99A10 80098E10 11C00007 */  beqz       $t6, .L80098E30
/* 99A14 80098E14 00000000 */   nop
/* 99A18 80098E18 3C0F800F */  lui        $t7, %hi(__osViNext)
/* 99A1C 80098E1C 8DEFA5D4 */  lw         $t7, %lo(__osViNext)($t7)
/* 99A20 80098E20 95F80000 */  lhu        $t8, ($t7)
/* 99A24 80098E24 37190020 */  ori        $t9, $t8, 0x20
/* 99A28 80098E28 10000007 */  b          .L80098E48
/* 99A2C 80098E2C A5F90000 */   sh        $t9, ($t7)
.L80098E30:
/* 99A30 80098E30 3C08800F */  lui        $t0, %hi(__osViNext)
/* 99A34 80098E34 8D08A5D4 */  lw         $t0, %lo(__osViNext)($t0)
/* 99A38 80098E38 2401FFDF */  addiu      $at, $zero, -0x21
/* 99A3C 80098E3C 95090000 */  lhu        $t1, ($t0)
/* 99A40 80098E40 01215024 */  and        $t2, $t1, $at
/* 99A44 80098E44 A50A0000 */  sh         $t2, ($t0)
.L80098E48:
/* 99A48 80098E48 0C0297AC */  jal        __osRestoreInt
/* 99A4C 80098E4C 02002025 */   or        $a0, $s0, $zero
/* 99A50 80098E50 10000001 */  b          .L80098E58
/* 99A54 80098E54 00000000 */   nop
.L80098E58:
/* 99A58 80098E58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 99A5C 80098E5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 99A60 80098E60 27BD0028 */  addiu      $sp, $sp, 0x28
/* 99A64 80098E64 03E00008 */  jr         $ra
/* 99A68 80098E68 00000000 */   nop
/* 99A6C 80098E6C 00000000 */  nop
