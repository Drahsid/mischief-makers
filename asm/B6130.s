.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSiDeviceBusy
/* B6130 800B5530 27BDFFF8 */  addiu      $sp, $sp, -8
/* B6134 800B5534 3C0EA480 */  lui        $t6, %hi(SI_STATUS)
/* B6138 800B5538 8DC40018 */  lw         $a0, %lo(SI_STATUS)($t6)
/* B613C 800B553C 308F0003 */  andi       $t7, $a0, 3
/* B6140 800B5540 11E00005 */  beqz       $t7, .L800B5558
/* B6144 800B5544 00000000 */   nop
/* B6148 800B5548 10000007 */  b          .L800B5568
/* B614C 800B554C 24020001 */   addiu     $v0, $zero, 1
/* B6150 800B5550 10000003 */  b          .L800B5560
/* B6154 800B5554 00000000 */   nop
.L800B5558:
/* B6158 800B5558 10000003 */  b          .L800B5568
/* B615C 800B555C 00001025 */   or        $v0, $zero, $zero
.L800B5560:
/* B6160 800B5560 10000001 */  b          .L800B5568
/* B6164 800B5564 00000000 */   nop
.L800B5568:
/* B6168 800B5568 03E00008 */  jr         $ra
/* B616C 800B556C 27BD0008 */   addiu     $sp, $sp, 8

glabel __osSetCompare
/* B6170 800B5570 40845800 */  mtc0       $a0, $11
/* B6174 800B5574 03E00008 */  jr         $ra
/* B6178 800B5578 00000000 */   nop
/* B617C 800B557C 00000000 */  nop
