.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5710
/* A6310 800A5710 46006004 */  sqrt.s     $f0, $f12
/* A6314 800A5714 03E00008 */  jr         $ra
/* A6318 800A5718 00000000 */   nop
/* A631C 800A571C 00000000 */  nop
