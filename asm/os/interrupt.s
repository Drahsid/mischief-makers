.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osDisableInt
/* A6A90 800A5E90 40086000 */  mfc0       $t0, $12
/* A6A94 800A5E94 2401FFFE */  addiu      $at, $zero, -2
/* A6A98 800A5E98 01014824 */  and        $t1, $t0, $at
/* A6A9C 800A5E9C 40896000 */  mtc0       $t1, $12
/* A6AA0 800A5EA0 31020001 */  andi       $v0, $t0, 1
/* A6AA4 800A5EA4 00000000 */  nop
/* A6AA8 800A5EA8 03E00008 */  jr         $ra
/* A6AAC 800A5EAC 00000000 */   nop

glabel __osRestoreInt
/* A6AB0 800A5EB0 40086000 */  mfc0       $t0, $12
/* A6AB4 800A5EB4 01044025 */  or         $t0, $t0, $a0
/* A6AB8 800A5EB8 40886000 */  mtc0       $t0, $12
/* A6ABC 800A5EBC 00000000 */  nop
/* A6AC0 800A5EC0 00000000 */  nop
/* A6AC4 800A5EC4 03E00008 */  jr         $ra
/* A6AC8 800A5EC8 00000000 */   nop
/* A6ACC 800A5ECC 00000000 */  nop
