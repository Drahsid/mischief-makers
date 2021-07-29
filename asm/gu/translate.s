.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel guTranslateF
/* A59F0 800A4DF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A59F4 800A4DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A59F8 800A4DF8 AFA40018 */  sw         $a0, 0x18($sp)
/* A59FC 800A4DFC AFA5001C */  sw         $a1, 0x1c($sp)
/* A5A00 800A4E00 AFA60020 */  sw         $a2, 0x20($sp)
/* A5A04 800A4E04 AFA70024 */  sw         $a3, 0x24($sp)
/* A5A08 800A4E08 0C02CB32 */  jal        guMtxIdentF
/* A5A0C 800A4E0C 8FA40018 */   lw        $a0, 0x18($sp)
/* A5A10 800A4E10 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5A14 800A4E14 8FAE0018 */  lw         $t6, 0x18($sp)
/* A5A18 800A4E18 E5C40030 */  swc1       $f4, 0x30($t6)
/* A5A1C 800A4E1C C7A60020 */  lwc1       $f6, 0x20($sp)
/* A5A20 800A4E20 8FAF0018 */  lw         $t7, 0x18($sp)
/* A5A24 800A4E24 E5E60034 */  swc1       $f6, 0x34($t7)
/* A5A28 800A4E28 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A5A2C 800A4E2C 8FB80018 */  lw         $t8, 0x18($sp)
/* A5A30 800A4E30 E7080038 */  swc1       $f8, 0x38($t8)
/* A5A34 800A4E34 10000001 */  b          .L800A4E3C
/* A5A38 800A4E38 00000000 */   nop
.L800A4E3C:
/* A5A3C 800A4E3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5A40 800A4E40 27BD0018 */  addiu      $sp, $sp, 0x18
/* A5A44 800A4E44 03E00008 */  jr         $ra
/* A5A48 800A4E48 00000000 */   nop

glabel guRotateRPY
/* A5A4C 800A4E4C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A5A50 800A4E50 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5A54 800A4E54 AFA40058 */  sw         $a0, 0x58($sp)
/* A5A58 800A4E58 AFA5005C */  sw         $a1, 0x5c($sp)
/* A5A5C 800A4E5C AFA60060 */  sw         $a2, 0x60($sp)
/* A5A60 800A4E60 AFA70064 */  sw         $a3, 0x64($sp)
/* A5A64 800A4E64 27A40018 */  addiu      $a0, $sp, 0x18
/* A5A68 800A4E68 8FA5005C */  lw         $a1, 0x5c($sp)
/* A5A6C 800A4E6C 8FA60060 */  lw         $a2, 0x60($sp)
/* A5A70 800A4E70 0C02937C */  jal        guTranslateF
/* A5A74 800A4E74 8FA70064 */   lw        $a3, 0x64($sp)
/* A5A78 800A4E78 27A40018 */  addiu      $a0, $sp, 0x18
/* A5A7C 800A4E7C 0C02CA98 */  jal        guMtxF2L
/* A5A80 800A4E80 8FA50058 */   lw        $a1, 0x58($sp)
/* A5A84 800A4E84 10000001 */  b          .L800A4E8C
/* A5A88 800A4E88 00000000 */   nop
.L800A4E8C:
/* A5A8C 800A4E8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5A90 800A4E90 27BD0058 */  addiu      $sp, $sp, 0x58
/* A5A94 800A4E94 03E00008 */  jr         $ra
/* A5A98 800A4E98 00000000 */   nop
/* A5A9C 800A4E9C 00000000 */  nop
