.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetPriority
/* B8850 800B7C50 00063400 */  sll        $a2, $a2, 0x10
/* B8854 800B7C54 00063403 */  sra        $a2, $a2, 0x10
/* B8858 800B7C58 AFA40000 */  sw         $a0, ($sp)
/* B885C 800B7C5C A4A60016 */  sh         $a2, 0x16($a1)
/* B8860 800B7C60 10000001 */  b          .L800B7C68
/* B8864 800B7C64 00000000 */   nop
.L800B7C68:
/* B8868 800B7C68 03E00008 */  jr         $ra
/* B886C 800B7C6C 00000000 */   nop

glabel alCopy
/* B8870 800B7C70 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B8874 800B7C74 AFA40008 */  sw         $a0, 8($sp)
/* B8878 800B7C78 AFA50004 */  sw         $a1, 4($sp)
/* B887C 800B7C7C 18C00010 */  blez       $a2, .L800B7CC0
/* B8880 800B7C80 AFA0000C */   sw        $zero, 0xc($sp)
.L800B7C84:
/* B8884 800B7C84 8FAE0008 */  lw         $t6, 8($sp)
/* B8888 800B7C88 8FB80004 */  lw         $t8, 4($sp)
/* B888C 800B7C8C 91CF0000 */  lbu        $t7, ($t6)
/* B8890 800B7C90 A30F0000 */  sb         $t7, ($t8)
/* B8894 800B7C94 8FA90008 */  lw         $t1, 8($sp)
/* B8898 800B7C98 8FB90004 */  lw         $t9, 4($sp)
/* B889C 800B7C9C 252A0001 */  addiu      $t2, $t1, 1
/* B88A0 800B7CA0 27280001 */  addiu      $t0, $t9, 1
/* B88A4 800B7CA4 AFA80004 */  sw         $t0, 4($sp)
/* B88A8 800B7CA8 AFAA0008 */  sw         $t2, 8($sp)
/* B88AC 800B7CAC 8FAB000C */  lw         $t3, 0xc($sp)
/* B88B0 800B7CB0 256C0001 */  addiu      $t4, $t3, 1
/* B88B4 800B7CB4 0186082A */  slt        $at, $t4, $a2
/* B88B8 800B7CB8 1420FFF2 */  bnez       $at, .L800B7C84
/* B88BC 800B7CBC AFAC000C */   sw        $t4, 0xc($sp)
.L800B7CC0:
/* B88C0 800B7CC0 10000001 */  b          .L800B7CC8
/* B88C4 800B7CC4 00000000 */   nop
.L800B7CC8:
/* B88C8 800B7CC8 03E00008 */  jr         $ra
/* B88CC 800B7CCC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel alFilterNew
/* B88D0 800B7CD0 AC800000 */  sw         $zero, ($a0)
/* B88D4 800B7CD4 AC850004 */  sw         $a1, 4($a0)
/* B88D8 800B7CD8 AC860008 */  sw         $a2, 8($a0)
/* B88DC 800B7CDC A480000C */  sh         $zero, 0xc($a0)
/* B88E0 800B7CE0 A480000E */  sh         $zero, 0xe($a0)
/* B88E4 800B7CE4 AC870010 */  sw         $a3, 0x10($a0)
/* B88E8 800B7CE8 03E00008 */  jr         $ra
/* B88EC 800B7CEC 00000000 */   nop

glabel func_800B7CF0
/* B88F0 800B7CF0 03E00008 */  jr         $ra
/* B88F4 800B7CF4 00000000 */   nop
/* B88F8 800B7CF8 00000000 */  nop
/* B88FC 800B7CFC 00000000 */  nop
