.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB230
/* ABE30 800AB230 AC800000 */  sw         $zero, ($a0)
/* ABE34 800AB234 03E00008 */  jr         $ra
/* ABE38 800AB238 00000000 */   nop

glabel func_800AB23C
/* ABE3C 800AB23C 03E00008 */  jr         $ra
/* ABE40 800AB240 00000000 */   nop
/* ABE44 800AB244 00000000 */  nop
/* ABE48 800AB248 00000000 */  nop
/* ABE4C 800AB24C 00000000 */  nop
