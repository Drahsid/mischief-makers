.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osGetCause
/* BB250 800BA650 40026800 */  mfc0       $v0, $13
/* BB254 800BA654 03E00008 */  jr         $ra
/* BB258 800BA658 00000000 */   nop
/* BB25C 800BA65C 00000000 */  nop
