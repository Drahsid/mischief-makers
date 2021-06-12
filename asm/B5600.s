.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B4A00
/* B5600 800B4A00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5604 800B4A04 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5608 800B4A08 AFA40020 */  sw         $a0, 0x20($sp)
/* B560C 800B4A0C AFA50024 */  sw         $a1, 0x24($sp)
/* B5610 800B4A10 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5614 800B4A14 000E7882 */  srl        $t7, $t6, 2
/* B5618 800B4A18 AFAF0024 */  sw         $t7, 0x24($sp)
/* B561C 800B4A1C 8FB80020 */  lw         $t8, 0x20($sp)
/* B5620 800B4A20 33190003 */  andi       $t9, $t8, 3
/* B5624 800B4A24 13200008 */  beqz       $t9, .L800B4A48
/* B5628 800B4A28 00000000 */   nop
/* B562C 800B4A2C 8FA80020 */  lw         $t0, 0x20($sp)
/* B5630 800B4A30 31090003 */  andi       $t1, $t0, 3
/* B5634 800B4A34 252A0004 */  addiu      $t2, $t1, 4
/* B5638 800B4A38 AFAA0020 */  sw         $t2, 0x20($sp)
/* B563C 800B4A3C 8FAB0024 */  lw         $t3, 0x24($sp)
/* B5640 800B4A40 256CFFFF */  addiu      $t4, $t3, -1
/* B5644 800B4A44 AFAC0024 */  sw         $t4, 0x24($sp)
.L800B4A48:
/* B5648 800B4A48 0C0297A4 */  jal        func_800A5E90
/* B564C 800B4A4C 00000000 */   nop
/* B5650 800B4A50 AFA2001C */  sw         $v0, 0x1c($sp)
/* B5654 800B4A54 8FAD0020 */  lw         $t5, 0x20($sp)
/* B5658 800B4A58 3C018019 */  lui        $at, %hi(D_8018A740)
/* B565C 800B4A5C AC2DA740 */  sw         $t5, %lo(D_8018A740)($at)
/* B5660 800B4A60 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5664 800B4A64 3C018019 */  lui        $at, %hi(D_8018A744)
/* B5668 800B4A68 AC2EA744 */  sw         $t6, %lo(D_8018A744)($at)
/* B566C 800B4A6C 3C018019 */  lui        $at, %hi(D_8018A748)
/* B5670 800B4A70 AC20A748 */  sw         $zero, %lo(D_8018A748)($at)
/* B5674 800B4A74 3C018019 */  lui        $at, %hi(D_8018A74C)
/* B5678 800B4A78 AC20A74C */  sw         $zero, %lo(D_8018A74C)($at)
/* B567C 800B4A7C 3C018019 */  lui        $at, %hi(D_8018A750)
/* B5680 800B4A80 AC20A750 */  sw         $zero, %lo(D_8018A750)($at)
/* B5684 800B4A84 0C0297AC */  jal        func_800A5EB0
/* B5688 800B4A88 8FA4001C */   lw        $a0, 0x1c($sp)
/* B568C 800B4A8C 10000001 */  b          .L800B4A94
/* B5690 800B4A90 00000000 */   nop
.L800B4A94:
/* B5694 800B4A94 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5698 800B4A98 27BD0020 */  addiu      $sp, $sp, 0x20
/* B569C 800B4A9C 03E00008 */  jr         $ra
/* B56A0 800B4AA0 00000000 */   nop
/* B56A4 800B4AA4 00000000 */  nop
/* B56A8 800B4AA8 00000000 */  nop
/* B56AC 800B4AAC 00000000 */  nop
