.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpSetPc
/* AB990 800AAD90 27BDFFF8 */  addiu      $sp, $sp, -8
/* AB994 800AAD94 3C0EA404 */  lui        $t6, %hi(SP_STATUS)
/* AB998 800AAD98 8DC50010 */  lw         $a1, %lo(SP_STATUS)($t6)
/* AB99C 800AAD9C 30AF0001 */  andi       $t7, $a1, 1
/* AB9A0 800AADA0 15E00003 */  bnez       $t7, .L800AADB0
/* AB9A4 800AADA4 00000000 */   nop
/* AB9A8 800AADA8 10000007 */  b          .L800AADC8
/* AB9AC 800AADAC 2402FFFF */   addiu     $v0, $zero, -1
.L800AADB0:
/* AB9B0 800AADB0 3C18A408 */  lui        $t8, 0xa408
/* AB9B4 800AADB4 AF040000 */  sw         $a0, ($t8)
/* AB9B8 800AADB8 10000003 */  b          .L800AADC8
/* AB9BC 800AADBC 00001025 */   or        $v0, $zero, $zero
/* AB9C0 800AADC0 10000001 */  b          .L800AADC8
/* AB9C4 800AADC4 00000000 */   nop
.L800AADC8:
/* AB9C8 800AADC8 03E00008 */  jr         $ra
/* AB9CC 800AADCC 27BD0008 */   addiu     $sp, $sp, 8
