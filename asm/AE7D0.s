.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ADBD0
/* AE7D0 800ADBD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE7D4 800ADBD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE7D8 800ADBD8 AFA40020 */  sw         $a0, 0x20($sp)
/* AE7DC 800ADBDC AFA50024 */  sw         $a1, 0x24($sp)
/* AE7E0 800ADBE0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE7E4 800ADBE4 8DCF0008 */  lw         $t7, 8($t6)
/* AE7E8 800ADBE8 11E00024 */  beqz       $t7, .L800ADC7C
/* AE7EC 800ADBEC 00000000 */   nop
/* AE7F0 800ADBF0 0C027AE8 */  jal        func_8009EBA0
/* AE7F4 800ADBF4 00000000 */   nop
/* AE7F8 800ADBF8 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE7FC 800ADBFC 8FB8001C */  lw         $t8, 0x1c($sp)
/* AE800 800ADC00 17000006 */  bnez       $t8, .L800ADC1C
/* AE804 800ADC04 00000000 */   nop
/* AE808 800ADC08 2404006A */  addiu      $a0, $zero, 0x6a
/* AE80C 800ADC0C 0C0297B4 */  jal        func_800A5ED0
/* AE810 800ADC10 00002825 */   or        $a1, $zero, $zero
/* AE814 800ADC14 1000001B */  b          .L800ADC84
/* AE818 800ADC18 00000000 */   nop
.L800ADC1C:
/* AE81C 800ADC1C 8FA90024 */  lw         $t1, 0x24($sp)
/* AE820 800ADC20 8FB90020 */  lw         $t9, 0x20($sp)
/* AE824 800ADC24 8FAD001C */  lw         $t5, 0x1c($sp)
/* AE828 800ADC28 8D2A0008 */  lw         $t2, 8($t1)
/* AE82C 800ADC2C 8F28001C */  lw         $t0, 0x1c($t9)
/* AE830 800ADC30 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AE834 800ADC34 010B6021 */  addu       $t4, $t0, $t3
/* AE838 800ADC38 ADAC0004 */  sw         $t4, 4($t5)
/* AE83C 800ADC3C 8FAF001C */  lw         $t7, 0x1c($sp)
/* AE840 800ADC40 240E000F */  addiu      $t6, $zero, 0xf
/* AE844 800ADC44 A5EE0008 */  sh         $t6, 8($t7)
/* AE848 800ADC48 8FB8001C */  lw         $t8, 0x1c($sp)
/* AE84C 800ADC4C AF000000 */  sw         $zero, ($t8)
/* AE850 800ADC50 8FB90024 */  lw         $t9, 0x24($sp)
/* AE854 800ADC54 8F290008 */  lw         $t1, 8($t9)
/* AE858 800ADC58 8D2A000C */  lw         $t2, 0xc($t1)
/* AE85C 800ADC5C AFAA0018 */  sw         $t2, 0x18($sp)
/* AE860 800ADC60 8FA80018 */  lw         $t0, 0x18($sp)
/* AE864 800ADC64 24050003 */  addiu      $a1, $zero, 3
/* AE868 800ADC68 8FA6001C */  lw         $a2, 0x1c($sp)
/* AE86C 800ADC6C 8D190008 */  lw         $t9, 8($t0)
/* AE870 800ADC70 01002025 */  or         $a0, $t0, $zero
/* AE874 800ADC74 0320F809 */  jalr       $t9
/* AE878 800ADC78 00000000 */   nop
.L800ADC7C:
/* AE87C 800ADC7C 10000001 */  b          .L800ADC84
/* AE880 800ADC80 00000000 */   nop
.L800ADC84:
/* AE884 800ADC84 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE888 800ADC88 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE88C 800ADC8C 03E00008 */  jr         $ra
/* AE890 800ADC90 00000000 */   nop
/* AE894 800ADC94 00000000 */  nop
/* AE898 800ADC98 00000000 */  nop
/* AE89C 800ADC9C 00000000 */  nop
