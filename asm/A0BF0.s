.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FFF0
/* A0BF0 8009FFF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0BF4 8009FFF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0BF8 8009FFF8 AFA40028 */  sw         $a0, 0x28($sp)
/* A0BFC 8009FFFC AFA5002C */  sw         $a1, 0x2c($sp)
/* A0C00 800A0000 AFA60030 */  sw         $a2, 0x30($sp)
/* A0C04 800A0004 240E0002 */  addiu      $t6, $zero, 2
/* A0C08 800A0008 A7AE0018 */  sh         $t6, 0x18($sp)
/* A0C0C 800A000C AFA0001C */  sw         $zero, 0x1c($sp)
/* A0C10 800A0010 93AF002F */  lbu        $t7, 0x2f($sp)
/* A0C14 800A0014 35F800B0 */  ori        $t8, $t7, 0xb0
/* A0C18 800A0018 A3B80020 */  sb         $t8, 0x20($sp)
/* A0C1C 800A001C 2419000A */  addiu      $t9, $zero, 0xa
/* A0C20 800A0020 A3B90021 */  sb         $t9, 0x21($sp)
/* A0C24 800A0024 93A80033 */  lbu        $t0, 0x33($sp)
/* A0C28 800A0028 A3A80022 */  sb         $t0, 0x22($sp)
/* A0C2C 800A002C 8FA40028 */  lw         $a0, 0x28($sp)
/* A0C30 800A0030 27A50018 */  addiu      $a1, $sp, 0x18
/* A0C34 800A0034 00003025 */  or         $a2, $zero, $zero
/* A0C38 800A0038 0C02B620 */  jal        func_800AD880
/* A0C3C 800A003C 24840048 */   addiu     $a0, $a0, 0x48
/* A0C40 800A0040 10000001 */  b          .L800A0048
/* A0C44 800A0044 00000000 */   nop
.L800A0048:
/* A0C48 800A0048 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0C4C 800A004C 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0C50 800A0050 03E00008 */  jr         $ra
/* A0C54 800A0054 00000000 */   nop
/* A0C58 800A0058 00000000 */  nop
/* A0C5C 800A005C 00000000 */  nop
