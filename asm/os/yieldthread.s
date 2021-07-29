.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osYieldThread
/* B63E0 800B57E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B63E4 800B57E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B63E8 800B57E8 AFB00018 */  sw         $s0, 0x18($sp)
/* B63EC 800B57EC 0C0297A4 */  jal        __osDisableInt
/* B63F0 800B57F0 00000000 */   nop
/* B63F4 800B57F4 00408025 */  or         $s0, $v0, $zero
/* B63F8 800B57F8 3C0F800F */  lui        $t7, %hi(__osRunningThread)
/* B63FC 800B57FC 8DEFA610 */  lw         $t7, %lo(__osRunningThread)($t7)
/* B6400 800B5800 240E0002 */  addiu      $t6, $zero, 2
/* B6404 800B5804 A5EE0010 */  sh         $t6, 0x10($t7)
/* B6408 800B5808 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* B640C 800B580C 0C029AA4 */  jal        __osEnqueueAndYield
/* B6410 800B5810 2484A608 */   addiu     $a0, $a0, %lo(__osRunQueue)
/* B6414 800B5814 0C0297AC */  jal        __osRestoreInt
/* B6418 800B5818 02002025 */   or        $a0, $s0, $zero
/* B641C 800B581C 10000001 */  b          .L800B5824
/* B6420 800B5820 00000000 */   nop
.L800B5824:
/* B6424 800B5824 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6428 800B5828 8FB00018 */  lw         $s0, 0x18($sp)
/* B642C 800B582C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B6430 800B5830 03E00008 */  jr         $ra
/* B6434 800B5834 00000000 */   nop
/* B6438 800B5838 00000000 */  nop
/* B643C 800B583C 00000000 */  nop
