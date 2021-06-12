.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7840
/* A8440 800A7840 3C02800F */  lui        $v0, %hi(D_800EA5D0)
/* A8444 800A7844 03E00008 */  jr         $ra
/* A8448 800A7848 8C42A5D0 */   lw        $v0, %lo(D_800EA5D0)($v0)

glabel func_800A784C
/* A844C 800A784C 03E00008 */  jr         $ra
/* A8450 800A7850 00000000 */   nop

glabel func_800A7854
/* A8454 800A7854 03E00008 */  jr         $ra
/* A8458 800A7858 00000000 */   nop
/* A845C 800A785C 00000000 */  nop
