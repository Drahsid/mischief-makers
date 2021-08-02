.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetFpcCsr
/* A79B0 800A6DB0 4442F800 */  cfc1       $v0, $31
/* A79B4 800A6DB4 44C4F800 */  ctc1       $a0, $31
/* A79B8 800A6DB8 03E00008 */  jr         $ra
/* A79BC 800A6DBC 00000000 */   nop
