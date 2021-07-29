.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osAiDeviceBusy
/* B2DD0 800B21D0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2DD4 800B21D4 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* B2DD8 800B21D8 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* B2DDC 800B21DC 3C018000 */  lui        $at, 0x8000
/* B2DE0 800B21E0 00817824 */  and        $t7, $a0, $at
/* B2DE4 800B21E4 11E00005 */  beqz       $t7, .L800B21FC
/* B2DE8 800B21E8 00000000 */   nop
/* B2DEC 800B21EC 10000007 */  b          .L800B220C
/* B2DF0 800B21F0 24020001 */   addiu     $v0, $zero, 1
/* B2DF4 800B21F4 10000003 */  b          .L800B2204
/* B2DF8 800B21F8 00000000 */   nop
.L800B21FC:
/* B2DFC 800B21FC 10000003 */  b          .L800B220C
/* B2E00 800B2200 00001025 */   or        $v0, $zero, $zero
.L800B2204:
/* B2E04 800B2204 10000001 */  b          .L800B220C
/* B2E08 800B2208 00000000 */   nop
.L800B220C:
/* B2E0C 800B220C 03E00008 */  jr         $ra
/* B2E10 800B2210 27BD0008 */   addiu     $sp, $sp, 8
/* B2E14 800B2214 00000000 */  nop
/* B2E18 800B2218 00000000 */  nop
/* B2E1C 800B221C 00000000 */  nop
