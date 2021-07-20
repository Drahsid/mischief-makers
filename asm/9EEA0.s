.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009E2A0
/* 9EEA0 8009E2A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9EEA4 8009E2A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EEA8 8009E2A8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9EEAC 8009E2AC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9EEB0 8009E2B0 240E000E */  addiu      $t6, $zero, 0xe
/* 9EEB4 8009E2B4 A7AE0018 */  sh         $t6, 0x18($sp)
/* 9EEB8 8009E2B8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9EEBC 8009E2BC AFAF001C */  sw         $t7, 0x1c($sp)
/* 9EEC0 8009E2C0 8FA40028 */  lw         $a0, 0x28($sp)
/* 9EEC4 8009E2C4 27A50018 */  addiu      $a1, $sp, 0x18
/* 9EEC8 8009E2C8 00003025 */  or         $a2, $zero, $zero
/* 9EECC 8009E2CC 0C02B620 */  jal        func_800AD880
/* 9EED0 8009E2D0 24840048 */   addiu     $a0, $a0, 0x48
/* 9EED4 8009E2D4 10000001 */  b          .L8009E2DC
/* 9EED8 8009E2D8 00000000 */   nop
.L8009E2DC:
/* 9EEDC 8009E2DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EEE0 8009E2E0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9EEE4 8009E2E4 03E00008 */  jr         $ra
/* 9EEE8 8009E2E8 00000000 */   nop
/* 9EEEC 8009E2EC 00000000 */  nop
