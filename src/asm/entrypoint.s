#include "entrypoint.h"
.include "macro.inc"

/* assembler directives */
.set noreorder /* don't insert nops after branches */
.section .text
.balign 16

glabel entrypoint
/* 1000 80000400 3C08800F */  lui        $t0, %hi(_bssSegmentStart)
/* 1004 80000404 3C090009 */  lui        $t1, (_bssSegmentSize >> 16)
/* 1008 80000408 2508F4D0 */  addiu      $t0, $t0, %lo(_bssSegmentStart)
/* 100C 8000040C 3529C2D0 */  ori        $t1, $t1, (_bssSegmentSize & 0xFFFF)
.clear_bss:
/* 1010 80000410 2129FFF8 */  addi       $t1, $t1, -0x8
/* 1014 80000414 AD000000 */  sw         $zero, 0x0($t0)
/* 1018 80000418 AD000004 */  sw         $zero, 0x4($t0)
/* 101C 8000041C 1520FFFC */  bnez       $t1, .clear_bss
/* 1020 80000420 21080008 */  addi       $t0, $t0, 0x8
/* 1024 80000424 3C0A8000 */  lui        $t2, %hi(boot)
/* 1028 80000428 3C1D8012 */  lui        $sp, %hi(gBootStack + 0x1000)
/* 102C 8000042C 254A06BC */  addiu      $t2, $t2, %lo(boot)
/* 1030 80000430 01400008 */  jr         $t2
/* 1034 80000434 27BD4670 */  addiu      $sp, $sp, %lo(gBootStack + 0x1000)
/* 1038 80000438 00000000 */  nop
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop
.size entrypoint, . - entrypoint
