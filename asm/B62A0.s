.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B56A0
/* B62A0 800B56A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B62A4 800B56A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B62A8 800B56A8 AFA40028 */  sw         $a0, 0x28($sp)
/* B62AC 800B56AC AFA5002C */  sw         $a1, 0x2c($sp)
/* B62B0 800B56B0 AFA60030 */  sw         $a2, 0x30($sp)
/* B62B4 800B56B4 AFB00018 */  sw         $s0, 0x18($sp)
/* B62B8 800B56B8 8FAE002C */  lw         $t6, 0x2c($sp)
/* B62BC 800B56BC 31CF0003 */  andi       $t7, $t6, 3
/* B62C0 800B56C0 11E00007 */  beqz       $t7, .L800B56E0
/* B62C4 800B56C4 00000000 */   nop
/* B62C8 800B56C8 24040013 */  addiu      $a0, $zero, 0x13
/* B62CC 800B56CC 24050001 */  addiu      $a1, $zero, 1
/* B62D0 800B56D0 0C0297B4 */  jal        func_800A5ED0
/* B62D4 800B56D4 8FA6002C */   lw        $a2, 0x2c($sp)
/* B62D8 800B56D8 10000023 */  b          .L800B5768
/* B62DC 800B56DC 2402FFFF */   addiu     $v0, $zero, -1
.L800B56E0:
/* B62E0 800B56E0 8FB80030 */  lw         $t8, 0x30($sp)
/* B62E4 800B56E4 13000003 */  beqz       $t8, .L800B56F4
/* B62E8 800B56E8 00000000 */   nop
/* B62EC 800B56EC 10000007 */  b          .L800B570C
/* B62F0 800B56F0 00000000 */   nop
.L800B56F4:
/* B62F4 800B56F4 3C04800F */  lui        $a0, %hi(D_800EE7C0)
/* B62F8 800B56F8 3C05800F */  lui        $a1, %hi(D_800EE7D0)
/* B62FC 800B56FC 24A5E7D0 */  addiu      $a1, $a1, %lo(D_800EE7D0)
/* B6300 800B5700 2484E7C0 */  addiu      $a0, $a0, %lo(D_800EE7C0)
/* B6304 800B5704 0C026E74 */  jal        func_8009B9D0
/* B6308 800B5708 24060029 */   addiu     $a2, $zero, 0x29
.L800B570C:
/* B630C 800B570C 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* B6310 800B5710 8F300010 */  lw         $s0, %lo(D_A4600010)($t9)
/* B6314 800B5714 32080003 */  andi       $t0, $s0, 3
/* B6318 800B5718 11000006 */  beqz       $t0, .L800B5734
/* B631C 800B571C 00000000 */   nop
.L800B5720:
/* B6320 800B5720 3C09A460 */  lui        $t1, %hi(D_A4600010)
/* B6324 800B5724 8D300010 */  lw         $s0, %lo(D_A4600010)($t1)
/* B6328 800B5728 320A0003 */  andi       $t2, $s0, 3
/* B632C 800B572C 1540FFFC */  bnez       $t2, .L800B5720
/* B6330 800B5730 00000000 */   nop
.L800B5734:
/* B6334 800B5734 8FAB0028 */  lw         $t3, 0x28($sp)
/* B6338 800B5738 8FAD002C */  lw         $t5, 0x2c($sp)
/* B633C 800B573C 3C01A000 */  lui        $at, 0xa000
/* B6340 800B5740 8D6C000C */  lw         $t4, 0xc($t3)
/* B6344 800B5744 8FB90030 */  lw         $t9, 0x30($sp)
/* B6348 800B5748 018D7025 */  or         $t6, $t4, $t5
/* B634C 800B574C 01C17825 */  or         $t7, $t6, $at
/* B6350 800B5750 8DF80000 */  lw         $t8, ($t7)
/* B6354 800B5754 AF380000 */  sw         $t8, ($t9)
/* B6358 800B5758 10000003 */  b          .L800B5768
/* B635C 800B575C 00001025 */   or        $v0, $zero, $zero
/* B6360 800B5760 10000001 */  b          .L800B5768
/* B6364 800B5764 00000000 */   nop
.L800B5768:
/* B6368 800B5768 8FBF001C */  lw         $ra, 0x1c($sp)
/* B636C 800B576C 8FB00018 */  lw         $s0, 0x18($sp)
/* B6370 800B5770 27BD0028 */  addiu      $sp, $sp, 0x28
/* B6374 800B5774 03E00008 */  jr         $ra
/* B6378 800B5778 00000000 */   nop
/* B637C 800B577C 00000000 */  nop
