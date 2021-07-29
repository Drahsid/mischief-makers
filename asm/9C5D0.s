.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __assert
/* 9C5D0 8009B9D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C5D4 8009B9D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C5D8 8009B9D8 AFA40018 */  sw         $a0, 0x18($sp)
/* 9C5DC 8009B9DC AFA5001C */  sw         $a1, 0x1c($sp)
/* 9C5E0 8009B9E0 AFA60020 */  sw         $a2, 0x20($sp)
/* 9C5E4 8009B9E4 3C04800F */  lui        $a0, %hi(assert_rodata_0000)
/* 9C5E8 8009B9E8 2484D6C0 */  addiu      $a0, $a0, %lo(assert_rodata_0000)
/* 9C5EC 8009B9EC 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9C5F0 8009B9F0 8FA60020 */  lw         $a2, 0x20($sp)
/* 9C5F4 8009B9F4 0C0296CD */  jal        osSyncPrintf
/* 9C5F8 8009B9F8 8FA70018 */   lw        $a3, 0x18($sp)
/* 9C5FC 8009B9FC 10000001 */  b          .L8009BA04
/* 9C600 8009BA00 00000000 */   nop
.L8009BA04:
/* 9C604 8009BA04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C608 8009BA08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9C60C 8009BA0C 03E00008 */  jr         $ra
/* 9C610 8009BA10 00000000 */   nop
/* 9C614 8009BA14 00000000 */  nop
/* 9C618 8009BA18 00000000 */  nop
/* 9C61C 8009BA1C 00000000 */  nop
