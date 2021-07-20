.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B71F0
/* B7DF0 800B71F0 3C02800F */  lui        $v0, %hi(D_800EA60C)
/* B7DF4 800B71F4 03E00008 */  jr         $ra
/* B7DF8 800B71F8 8C42A60C */   lw        $v0, %lo(D_800EA60C)($v0)

glabel func_800B71FC
/* B7DFC 800B71FC 03E00008 */  jr         $ra
/* B7E00 800B7200 00000000 */   nop

glabel func_800B7204
/* B7E04 800B7204 03E00008 */  jr         $ra
/* B7E08 800B7208 00000000 */   nop
/* B7E0C 800B720C 00000000 */  nop
