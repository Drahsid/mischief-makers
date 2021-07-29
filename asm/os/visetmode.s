.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetMode
/* 9A820 80099C20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9A824 80099C24 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A828 80099C28 AFA40028 */  sw         $a0, 0x28($sp)
/* 9A82C 80099C2C AFB00018 */  sw         $s0, 0x18($sp)
/* 9A830 80099C30 3C0E800F */  lui        $t6, %hi(__osViDevMgr)
/* 9A834 80099C34 8DCE9790 */  lw         $t6, %lo(__osViDevMgr)($t6)
/* 9A838 80099C38 15C00006 */  bnez       $t6, .L80099C54
/* 9A83C 80099C3C 00000000 */   nop
/* 9A840 80099C40 2404002D */  addiu      $a0, $zero, 0x2d
/* 9A844 80099C44 0C0297B4 */  jal        __osError
/* 9A848 80099C48 00002825 */   or        $a1, $zero, $zero
/* 9A84C 80099C4C 10000020 */  b          .L80099CD0
/* 9A850 80099C50 00000000 */   nop
.L80099C54:
/* 9A854 80099C54 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9A858 80099C58 11E00003 */  beqz       $t7, .L80099C68
/* 9A85C 80099C5C 00000000 */   nop
/* 9A860 80099C60 10000007 */  b          .L80099C80
/* 9A864 80099C64 00000000 */   nop
.L80099C68:
/* 9A868 80099C68 3C04800F */  lui        $a0, %hi(visetmode_rodata_0000)
/* 9A86C 80099C6C 3C05800F */  lui        $a1, %hi(visetmode_rodata_0010)
/* 9A870 80099C70 24A5D640 */  addiu      $a1, $a1, %lo(visetmode_rodata_0010)
/* 9A874 80099C74 2484D630 */  addiu      $a0, $a0, %lo(visetmode_rodata_0000)
/* 9A878 80099C78 0C026E74 */  jal        __assert
/* 9A87C 80099C7C 2406003A */   addiu     $a2, $zero, 0x3a
.L80099C80:
/* 9A880 80099C80 0C0297A4 */  jal        __osDisableInt
/* 9A884 80099C84 00000000 */   nop
/* 9A888 80099C88 00408025 */  or         $s0, $v0, $zero
/* 9A88C 80099C8C 3C19800F */  lui        $t9, %hi(__osViNext)
/* 9A890 80099C90 8F39A5D4 */  lw         $t9, %lo(__osViNext)($t9)
/* 9A894 80099C94 8FB80028 */  lw         $t8, 0x28($sp)
/* 9A898 80099C98 AF380008 */  sw         $t8, 8($t9)
/* 9A89C 80099C9C 3C09800F */  lui        $t1, %hi(__osViNext)
/* 9A8A0 80099CA0 8D29A5D4 */  lw         $t1, %lo(__osViNext)($t1)
/* 9A8A4 80099CA4 24080001 */  addiu      $t0, $zero, 1
/* 9A8A8 80099CA8 A5280000 */  sh         $t0, ($t1)
/* 9A8AC 80099CAC 3C0A800F */  lui        $t2, %hi(__osViNext)
/* 9A8B0 80099CB0 8D4AA5D4 */  lw         $t2, %lo(__osViNext)($t2)
/* 9A8B4 80099CB4 8D4B0008 */  lw         $t3, 8($t2)
/* 9A8B8 80099CB8 8D6C0004 */  lw         $t4, 4($t3)
/* 9A8BC 80099CBC AD4C000C */  sw         $t4, 0xc($t2)
/* 9A8C0 80099CC0 0C0297AC */  jal        __osRestoreInt
/* 9A8C4 80099CC4 02002025 */   or        $a0, $s0, $zero
/* 9A8C8 80099CC8 10000001 */  b          .L80099CD0
/* 9A8CC 80099CCC 00000000 */   nop
.L80099CD0:
/* 9A8D0 80099CD0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A8D4 80099CD4 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A8D8 80099CD8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9A8DC 80099CDC 03E00008 */  jr         $ra
/* 9A8E0 80099CE0 00000000 */   nop
/* 9A8E4 80099CE4 00000000 */  nop
/* 9A8E8 80099CE8 00000000 */  nop
/* 9A8EC 80099CEC 00000000 */  nop
