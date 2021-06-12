.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB220
/* ABE20 800AB220 0000000D */  break
/* ABE24 800AB224 03E00008 */   jr        $ra
/* ABE28 800AB228 00000000 */   nop
/* ABE2C 800AB22C 00000000 */  nop
