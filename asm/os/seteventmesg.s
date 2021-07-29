.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetEventMesg
/* 9B2F0 8009A6F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B2F4 8009A6F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B2F8 8009A6F8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B2FC 8009A6FC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B300 8009A700 AFA60030 */  sw         $a2, 0x30($sp)
/* 9B304 8009A704 AFB00018 */  sw         $s0, 0x18($sp)
/* 9B308 8009A708 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B30C 8009A70C 2DC10017 */  sltiu      $at, $t6, 0x17
/* 9B310 8009A710 14200007 */  bnez       $at, .L8009A730
/* 9B314 8009A714 00000000 */   nop
/* 9B318 8009A718 24040009 */  addiu      $a0, $zero, 9
/* 9B31C 8009A71C 24050001 */  addiu      $a1, $zero, 1
/* 9B320 8009A720 0C0297B4 */  jal        __osError
/* 9B324 8009A724 8FA60028 */   lw        $a2, 0x28($sp)
/* 9B328 8009A728 10000014 */  b          .L8009A77C
/* 9B32C 8009A72C 00000000 */   nop
.L8009A730:
/* 9B330 8009A730 0C0297A4 */  jal        __osDisableInt
/* 9B334 8009A734 00000000 */   nop
/* 9B338 8009A738 00408025 */  or         $s0, $v0, $zero
/* 9B33C 8009A73C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B340 8009A740 3C198018 */  lui        $t9, %hi(__osEventStateTab)
/* 9B344 8009A744 27395530 */  addiu      $t9, $t9, %lo(__osEventStateTab)
/* 9B348 8009A748 000FC0C0 */  sll        $t8, $t7, 3
/* 9B34C 8009A74C 03194021 */  addu       $t0, $t8, $t9
/* 9B350 8009A750 AFA80020 */  sw         $t0, 0x20($sp)
/* 9B354 8009A754 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9B358 8009A758 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9B35C 8009A75C AD490000 */  sw         $t1, ($t2)
/* 9B360 8009A760 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9B364 8009A764 8FAC0020 */  lw         $t4, 0x20($sp)
/* 9B368 8009A768 AD8B0004 */  sw         $t3, 4($t4)
/* 9B36C 8009A76C 0C0297AC */  jal        __osRestoreInt
/* 9B370 8009A770 02002025 */   or        $a0, $s0, $zero
/* 9B374 8009A774 10000001 */  b          .L8009A77C
/* 9B378 8009A778 00000000 */   nop
.L8009A77C:
/* 9B37C 8009A77C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B380 8009A780 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B384 8009A784 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B388 8009A788 03E00008 */  jr         $ra
/* 9B38C 8009A78C 00000000 */   nop
