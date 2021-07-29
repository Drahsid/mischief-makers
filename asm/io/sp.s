.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpDeviceBusy
/* ABB00 800AAF00 27BDFFF8 */  addiu      $sp, $sp, -8
/* ABB04 800AAF04 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* ABB08 800AAF08 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* ABB0C 800AAF0C 308F001C */  andi       $t7, $a0, 0x1c
/* ABB10 800AAF10 11E00005 */  beqz       $t7, .L800AAF28
/* ABB14 800AAF14 00000000 */   nop
/* ABB18 800AAF18 10000007 */  b          .L800AAF38
/* ABB1C 800AAF1C 24020001 */   addiu     $v0, $zero, 1
/* ABB20 800AAF20 10000003 */  b          .L800AAF30
/* ABB24 800AAF24 00000000 */   nop
.L800AAF28:
/* ABB28 800AAF28 10000003 */  b          .L800AAF38
/* ABB2C 800AAF2C 00001025 */   or        $v0, $zero, $zero
.L800AAF30:
/* ABB30 800AAF30 10000001 */  b          .L800AAF38
/* ABB34 800AAF34 00000000 */   nop
.L800AAF38:
/* ABB38 800AAF38 03E00008 */  jr         $ra
/* ABB3C 800AAF3C 27BD0008 */   addiu     $sp, $sp, 8
