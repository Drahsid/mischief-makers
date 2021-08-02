.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osResetGlobalIntMask
/* B6180 800B5580 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6184 800B5584 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6188 800B5588 AFA40028 */  sw         $a0, 0x28($sp)
/* B618C 800B558C AFB00018 */  sw         $s0, 0x18($sp)
/* B6190 800B5590 0C0297A4 */  jal        __osDisableInt
/* B6194 800B5594 00000000 */   nop
/* B6198 800B5598 00408025 */  or         $s0, $v0, $zero
/* B619C 800B559C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B61A0 800B55A0 3C0E800F */  lui        $t6, %hi(__OSGlobalIntMask)
/* B61A4 800B55A4 8DCE9780 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* B61A8 800B55A8 2401FBFE */  addiu      $at, $zero, -0x402
/* B61AC 800B55AC 01E1C024 */  and        $t8, $t7, $at
/* B61B0 800B55B0 0300C827 */  not        $t9, $t8
/* B61B4 800B55B4 3C01800F */  lui        $at, %hi(__OSGlobalIntMask)
/* B61B8 800B55B8 01D94024 */  and        $t0, $t6, $t9
/* B61BC 800B55BC AC289780 */  sw         $t0, %lo(__OSGlobalIntMask)($at)
/* B61C0 800B55C0 0C0297AC */  jal        __osRestoreInt
/* B61C4 800B55C4 02002025 */   or        $a0, $s0, $zero
/* B61C8 800B55C8 10000001 */  b          .L800B55D0
/* B61CC 800B55CC 00000000 */   nop
.L800B55D0:
/* B61D0 800B55D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B61D4 800B55D4 8FB00018 */  lw         $s0, 0x18($sp)
/* B61D8 800B55D8 27BD0028 */  addiu      $sp, $sp, 0x28
/* B61DC 800B55DC 03E00008 */  jr         $ra
/* B61E0 800B55E0 00000000 */   nop
/* B61E4 800B55E4 00000000 */  nop
/* B61E8 800B55E8 00000000 */  nop
/* B61EC 800B55EC 00000000 */  nop
