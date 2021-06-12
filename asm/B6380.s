.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B5780
/* B6380 800B5780 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6384 800B5784 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6388 800B5788 AFA40028 */  sw         $a0, 0x28($sp)
/* B638C 800B578C AFB00018 */  sw         $s0, 0x18($sp)
/* B6390 800B5790 0C0297A4 */  jal        func_800A5E90
/* B6394 800B5794 00000000 */   nop
/* B6398 800B5798 00408025 */  or         $s0, $v0, $zero
/* B639C 800B579C 3C0E800F */  lui        $t6, %hi(D_800E9780)
/* B63A0 800B57A0 8DCE9780 */  lw         $t6, %lo(D_800E9780)($t6)
/* B63A4 800B57A4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B63A8 800B57A8 3C01800F */  lui        $at, %hi(D_800E9780)
/* B63AC 800B57AC 01CFC025 */  or         $t8, $t6, $t7
/* B63B0 800B57B0 AC389780 */  sw         $t8, %lo(D_800E9780)($at)
/* B63B4 800B57B4 0C0297AC */  jal        func_800A5EB0
/* B63B8 800B57B8 02002025 */   or        $a0, $s0, $zero
/* B63BC 800B57BC 10000001 */  b          .L800B57C4
/* B63C0 800B57C0 00000000 */   nop
.L800B57C4:
/* B63C4 800B57C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B63C8 800B57C8 8FB00018 */  lw         $s0, 0x18($sp)
/* B63CC 800B57CC 27BD0028 */  addiu      $sp, $sp, 0x28
/* B63D0 800B57D0 03E00008 */  jr         $ra
/* B63D4 800B57D4 00000000 */   nop
/* B63D8 800B57D8 00000000 */  nop
/* B63DC 800B57DC 00000000 */  nop
