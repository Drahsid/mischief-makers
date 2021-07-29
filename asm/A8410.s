.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osGetThreadPri
/* A8410 800A7810 14800003 */  bnez       $a0, .L800A7820
/* A8414 800A7814 00000000 */   nop
/* A8418 800A7818 3C04800F */  lui        $a0, %hi(__osRunningThread)
/* A841C 800A781C 8C84A610 */  lw         $a0, %lo(__osRunningThread)($a0)
.L800A7820:
/* A8420 800A7820 03E00008 */  jr         $ra
/* A8424 800A7824 8C820004 */   lw        $v0, 4($a0)

glabel func_800A7828
/* A8428 800A7828 03E00008 */  jr         $ra
/* A842C 800A782C 00000000 */   nop

glabel func_800A7830
/* A8430 800A7830 03E00008 */  jr         $ra
/* A8434 800A7834 00000000 */   nop
/* A8438 800A7838 00000000 */  nop
/* A843C 800A783C 00000000 */  nop
