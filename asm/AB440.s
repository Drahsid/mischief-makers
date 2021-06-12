.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AA840
/* AB440 800AA840 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB444 800AA844 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB448 800AA848 240E0001 */  addiu      $t6, $zero, 1
/* AB44C 800AA84C 3C01800F */  lui        $at, %hi(D_800EA650)
/* AB450 800AA850 AC2EA650 */  sw         $t6, %lo(D_800EA650)($at)
/* AB454 800AA854 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB458 800AA858 3C058019 */  lui        $a1, %hi(D_8018A4A0)
/* AB45C 800AA85C 24A5A4A0 */  addiu      $a1, $a1, %lo(D_8018A4A0)
/* AB460 800AA860 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB464 800AA864 0C026994 */  jal        func_8009A650
/* AB468 800AA868 24060001 */   addiu     $a2, $zero, 1
/* AB46C 800AA86C 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB470 800AA870 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB474 800AA874 00002825 */  or         $a1, $zero, $zero
/* AB478 800AA878 0C0278BC */  jal        func_8009E2F0
/* AB47C 800AA87C 00003025 */   or        $a2, $zero, $zero
/* AB480 800AA880 10000001 */  b          .L800AA888
/* AB484 800AA884 00000000 */   nop
.L800AA888:
/* AB488 800AA888 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB48C 800AA88C 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB490 800AA890 03E00008 */  jr         $ra
/* AB494 800AA894 00000000 */   nop

glabel func_800AA898
/* AB498 800AA898 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AB49C 800AA89C AFBF0014 */  sw         $ra, 0x14($sp)
/* AB4A0 800AA8A0 3C0E800F */  lui        $t6, %hi(D_800EA650)
/* AB4A4 800AA8A4 8DCEA650 */  lw         $t6, %lo(D_800EA650)($t6)
/* AB4A8 800AA8A8 15C00003 */  bnez       $t6, .L800AA8B8
/* AB4AC 800AA8AC 00000000 */   nop
/* AB4B0 800AA8B0 0C02AA10 */  jal        func_800AA840
/* AB4B4 800AA8B4 00000000 */   nop
.L800AA8B8:
/* AB4B8 800AA8B8 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB4BC 800AA8BC 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB4C0 800AA8C0 27A5001C */  addiu      $a1, $sp, 0x1c
/* AB4C4 800AA8C4 0C026B44 */  jal        func_8009AD10
/* AB4C8 800AA8C8 24060001 */   addiu     $a2, $zero, 1
/* AB4CC 800AA8CC 10000001 */  b          .L800AA8D4
/* AB4D0 800AA8D0 00000000 */   nop
.L800AA8D4:
/* AB4D4 800AA8D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB4D8 800AA8D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB4DC 800AA8DC 03E00008 */  jr         $ra
/* AB4E0 800AA8E0 00000000 */   nop

glabel func_800AA8E4
/* AB4E4 800AA8E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB4E8 800AA8E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB4EC 800AA8EC 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB4F0 800AA8F0 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB4F4 800AA8F4 00002825 */  or         $a1, $zero, $zero
/* AB4F8 800AA8F8 0C0278BC */  jal        func_8009E2F0
/* AB4FC 800AA8FC 00003025 */   or        $a2, $zero, $zero
/* AB500 800AA900 10000001 */  b          .L800AA908
/* AB504 800AA904 00000000 */   nop
.L800AA908:
/* AB508 800AA908 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB50C 800AA90C 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB510 800AA910 03E00008 */  jr         $ra
/* AB514 800AA914 00000000 */   nop
/* AB518 800AA918 00000000 */  nop
/* AB51C 800AA91C 00000000 */  nop
