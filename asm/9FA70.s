.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSeqpGetState
/* 9FA70 8009EE70 03E00008 */  jr         $ra
/* 9FA74 8009EE74 8C82002C */   lw        $v0, 0x2c($a0)

glabel func_8009EE78
/* 9FA78 8009EE78 03E00008 */  jr         $ra
/* 9FA7C 8009EE7C 00000000 */   nop

glabel func_8009EE80
/* 9FA80 8009EE80 03E00008 */  jr         $ra
/* 9FA84 8009EE84 00000000 */   nop
/* 9FA88 8009EE88 00000000 */  nop
/* 9FA8C 8009EE8C 00000000 */  nop
