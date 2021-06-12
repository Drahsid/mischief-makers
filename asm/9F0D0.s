.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009E4D0
/* 9F0D0 8009E4D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F0D4 8009E4D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F0D8 8009E4D8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9F0DC 8009E4DC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9F0E0 8009E4E0 AFA60030 */  sw         $a2, 0x30($sp)
/* 9F0E4 8009E4E4 240E0002 */  addiu      $t6, $zero, 2
/* 9F0E8 8009E4E8 A7AE0018 */  sh         $t6, 0x18($sp)
/* 9F0EC 8009E4EC AFA0001C */  sw         $zero, 0x1c($sp)
/* 9F0F0 8009E4F0 93AF002F */  lbu        $t7, 0x2f($sp)
/* 9F0F4 8009E4F4 35F800B0 */  ori        $t8, $t7, 0xb0
/* 9F0F8 8009E4F8 A3B80020 */  sb         $t8, 0x20($sp)
/* 9F0FC 8009E4FC 2419005B */  addiu      $t9, $zero, 0x5b
/* 9F100 8009E500 A3B90021 */  sb         $t9, 0x21($sp)
/* 9F104 8009E504 93A80033 */  lbu        $t0, 0x33($sp)
/* 9F108 8009E508 A3A80022 */  sb         $t0, 0x22($sp)
/* 9F10C 8009E50C 8FA40028 */  lw         $a0, 0x28($sp)
/* 9F110 8009E510 27A50018 */  addiu      $a1, $sp, 0x18
/* 9F114 8009E514 00003025 */  or         $a2, $zero, $zero
/* 9F118 8009E518 0C02B620 */  jal        func_800AD880
/* 9F11C 8009E51C 24840048 */   addiu     $a0, $a0, 0x48
/* 9F120 8009E520 10000001 */  b          .L8009E528
/* 9F124 8009E524 00000000 */   nop
.L8009E528:
/* 9F128 8009E528 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F12C 8009E52C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9F130 8009E530 03E00008 */  jr         $ra
/* 9F134 8009E534 00000000 */   nop
/* 9F138 8009E538 00000000 */  nop
/* 9F13C 8009E53C 00000000 */  nop
