.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel spClearAttribute
/* A4D70 800A4170 948E0014 */  lhu        $t6, 0x14($a0)
/* A4D74 800A4174 00A07827 */  not        $t7, $a1
/* A4D78 800A4178 01CFC024 */  and        $t8, $t6, $t7
/* A4D7C 800A417C A4980014 */  sh         $t8, 0x14($a0)
/* A4D80 800A4180 03E00008 */  jr         $ra
/* A4D84 800A4184 00000000 */   nop

glabel func_800A4188
/* A4D88 800A4188 03E00008 */  jr         $ra
/* A4D8C 800A418C 00000000 */   nop
