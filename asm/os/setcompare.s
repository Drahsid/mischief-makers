.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetCompare
/* B6170 800B5570 40845800 */  mtc0       $a0, $11
/* B6174 800B5574 03E00008 */  jr         $ra
/* B6178 800B5578 00000000 */   nop
/* B617C 800B557C 00000000 */  nop
