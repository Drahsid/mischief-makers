.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A5720
/* A6320 800A5720 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A6324 800A5724 AFBF001C */  sw         $ra, 0x1c($sp)
/* A6328 800A5728 AFB00018 */  sw         $s0, 0x18($sp)
/* A632C 800A572C 3C0E800F */  lui        $t6, %hi(D_800E9790)
/* A6330 800A5730 8DCE9790 */  lw         $t6, %lo(D_800E9790)($t6)
/* A6334 800A5734 15C00007 */  bnez       $t6, .L800A5754
/* A6338 800A5738 00000000 */   nop
/* A633C 800A573C 2404004A */  addiu      $a0, $zero, 0x4a
/* A6340 800A5740 0C0297B4 */  jal        func_800A5ED0
/* A6344 800A5744 00002825 */   or        $a1, $zero, $zero
/* A6348 800A5748 24020000 */  addiu      $v0, $zero, 0
/* A634C 800A574C 10000020 */  b          .L800A57D0
/* A6350 800A5750 24030000 */   addiu     $v1, $zero, 0
.L800A5754:
/* A6354 800A5754 0C0297A4 */  jal        func_800A5E90
/* A6358 800A5758 00000000 */   nop
/* A635C 800A575C 00408025 */  or         $s0, $v0, $zero
/* A6360 800A5760 0C029EF8 */  jal        func_800A7BE0
/* A6364 800A5764 00000000 */   nop
/* A6368 800A5768 AFA20034 */  sw         $v0, 0x34($sp)
/* A636C 800A576C 3C188018 */  lui        $t8, %hi(D_801856F8)
/* A6370 800A5770 8F1856F8 */  lw         $t8, %lo(D_801856F8)($t8)
/* A6374 800A5774 8FAF0034 */  lw         $t7, 0x34($sp)
/* A6378 800A5778 01F8C823 */  subu       $t9, $t7, $t8
/* A637C 800A577C AFB90030 */  sw         $t9, 0x30($sp)
/* A6380 800A5780 3C088018 */  lui        $t0, %hi(D_801856F0)
/* A6384 800A5784 3C098018 */  lui        $t1, %hi(D_801856F4)
/* A6388 800A5788 8D2956F4 */  lw         $t1, %lo(D_801856F4)($t1)
/* A638C 800A578C 8D0856F0 */  lw         $t0, %lo(D_801856F0)($t0)
/* A6390 800A5790 AFA9002C */  sw         $t1, 0x2c($sp)
/* A6394 800A5794 AFA80028 */  sw         $t0, 0x28($sp)
/* A6398 800A5798 0C0297AC */  jal        func_800A5EB0
/* A639C 800A579C 02002025 */   or        $a0, $s0, $zero
/* A63A0 800A57A0 8FAA0030 */  lw         $t2, 0x30($sp)
/* A63A4 800A57A4 8FAF002C */  lw         $t7, 0x2c($sp)
/* A63A8 800A57A8 8FAE0028 */  lw         $t6, 0x28($sp)
/* A63AC 800A57AC 01406825 */  or         $t5, $t2, $zero
/* A63B0 800A57B0 01AF1821 */  addu       $v1, $t5, $t7
/* A63B4 800A57B4 240C0000 */  addiu      $t4, $zero, 0
/* A63B8 800A57B8 006F082B */  sltu       $at, $v1, $t7
/* A63BC 800A57BC 002C1021 */  addu       $v0, $at, $t4
/* A63C0 800A57C0 10000003 */  b          .L800A57D0
/* A63C4 800A57C4 004E1021 */   addu      $v0, $v0, $t6
/* A63C8 800A57C8 10000001 */  b          .L800A57D0
/* A63CC 800A57CC 00000000 */   nop
.L800A57D0:
/* A63D0 800A57D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A63D4 800A57D4 8FB00018 */  lw         $s0, 0x18($sp)
/* A63D8 800A57D8 27BD0038 */  addiu      $sp, $sp, 0x38
/* A63DC 800A57DC 03E00008 */  jr         $ra
/* A63E0 800A57E0 00000000 */   nop
/* A63E4 800A57E4 00000000 */  nop
/* A63E8 800A57E8 00000000 */  nop
/* A63EC 800A57EC 00000000 */  nop
