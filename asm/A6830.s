.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5C30
/* A6830 800A5C30 27BDFFF8 */  addiu      $sp, $sp, -8
/* A6834 800A5C34 A3A50007 */  sb         $a1, 7($sp)
/* A6838 800A5C38 908E0000 */  lbu        $t6, ($a0)
/* A683C 800A5C3C 93AF0007 */  lbu        $t7, 7($sp)
/* A6840 800A5C40 11CF000B */  beq        $t6, $t7, .L800A5C70
/* A6844 800A5C44 00000000 */   nop
.L800A5C48:
/* A6848 800A5C48 90980000 */  lbu        $t8, ($a0)
/* A684C 800A5C4C 17000003 */  bnez       $t8, .L800A5C5C
/* A6850 800A5C50 00000000 */   nop
/* A6854 800A5C54 1000000A */  b          .L800A5C80
/* A6858 800A5C58 00001025 */   or        $v0, $zero, $zero
.L800A5C5C:
/* A685C 800A5C5C 90990001 */  lbu        $t9, 1($a0)
/* A6860 800A5C60 93A80007 */  lbu        $t0, 7($sp)
/* A6864 800A5C64 24840001 */  addiu      $a0, $a0, 1
/* A6868 800A5C68 1728FFF7 */  bne        $t9, $t0, .L800A5C48
/* A686C 800A5C6C 00000000 */   nop
.L800A5C70:
/* A6870 800A5C70 10000003 */  b          .L800A5C80
/* A6874 800A5C74 00801025 */   or        $v0, $a0, $zero
/* A6878 800A5C78 10000001 */  b          .L800A5C80
/* A687C 800A5C7C 00000000 */   nop
.L800A5C80:
/* A6880 800A5C80 03E00008 */  jr         $ra
/* A6884 800A5C84 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A5C88
/* A6888 800A5C88 27BDFFF8 */  addiu      $sp, $sp, -8
/* A688C 800A5C8C AFA40004 */  sw         $a0, 4($sp)
/* A6890 800A5C90 8FAE0004 */  lw         $t6, 4($sp)
/* A6894 800A5C94 91CF0000 */  lbu        $t7, ($t6)
/* A6898 800A5C98 11E00007 */  beqz       $t7, .L800A5CB8
/* A689C 800A5C9C 00000000 */   nop
.L800A5CA0:
/* A68A0 800A5CA0 8FB80004 */  lw         $t8, 4($sp)
/* A68A4 800A5CA4 27190001 */  addiu      $t9, $t8, 1
/* A68A8 800A5CA8 AFB90004 */  sw         $t9, 4($sp)
/* A68AC 800A5CAC 93280000 */  lbu        $t0, ($t9)
/* A68B0 800A5CB0 1500FFFB */  bnez       $t0, .L800A5CA0
/* A68B4 800A5CB4 00000000 */   nop
.L800A5CB8:
/* A68B8 800A5CB8 8FA90004 */  lw         $t1, 4($sp)
/* A68BC 800A5CBC 10000003 */  b          .L800A5CCC
/* A68C0 800A5CC0 01241023 */   subu      $v0, $t1, $a0
/* A68C4 800A5CC4 10000001 */  b          .L800A5CCC
/* A68C8 800A5CC8 00000000 */   nop
.L800A5CCC:
/* A68CC 800A5CCC 03E00008 */  jr         $ra
/* A68D0 800A5CD0 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A5CD4
/* A68D4 800A5CD4 27BDFFF8 */  addiu      $sp, $sp, -8
/* A68D8 800A5CD8 AFA40004 */  sw         $a0, 4($sp)
/* A68DC 800A5CDC 10C0000D */  beqz       $a2, .L800A5D14
/* A68E0 800A5CE0 AFA50000 */   sw        $a1, ($sp)
.L800A5CE4:
/* A68E4 800A5CE4 8FAE0000 */  lw         $t6, ($sp)
/* A68E8 800A5CE8 8FB80004 */  lw         $t8, 4($sp)
/* A68EC 800A5CEC 91CF0000 */  lbu        $t7, ($t6)
/* A68F0 800A5CF0 A30F0000 */  sb         $t7, ($t8)
/* A68F4 800A5CF4 8FB90004 */  lw         $t9, 4($sp)
/* A68F8 800A5CF8 8FA90000 */  lw         $t1, ($sp)
/* A68FC 800A5CFC 24C6FFFF */  addiu      $a2, $a2, -1
/* A6900 800A5D00 27280001 */  addiu      $t0, $t9, 1
/* A6904 800A5D04 252A0001 */  addiu      $t2, $t1, 1
/* A6908 800A5D08 AFAA0000 */  sw         $t2, ($sp)
/* A690C 800A5D0C 14C0FFF5 */  bnez       $a2, .L800A5CE4
/* A6910 800A5D10 AFA80004 */   sw        $t0, 4($sp)
.L800A5D14:
/* A6914 800A5D14 10000003 */  b          .L800A5D24
/* A6918 800A5D18 00801025 */   or        $v0, $a0, $zero
/* A691C 800A5D1C 10000001 */  b          .L800A5D24
/* A6920 800A5D20 00000000 */   nop
.L800A5D24:
/* A6924 800A5D24 03E00008 */  jr         $ra
/* A6928 800A5D28 27BD0008 */   addiu     $sp, $sp, 8
/* A692C 800A5D2C 00000000 */  nop
