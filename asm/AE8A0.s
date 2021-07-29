.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynFreeVoice
/* AE8A0 800ADCA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE8A4 800ADCA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE8A8 800ADCA8 AFA40020 */  sw         $a0, 0x20($sp)
/* AE8AC 800ADCAC AFA50024 */  sw         $a1, 0x24($sp)
/* AE8B0 800ADCB0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE8B4 800ADCB4 8DCF0008 */  lw         $t7, 8($t6)
/* AE8B8 800ADCB8 11E00032 */  beqz       $t7, .L800ADD84
/* AE8BC 800ADCBC 00000000 */   nop
/* AE8C0 800ADCC0 8FB80024 */  lw         $t8, 0x24($sp)
/* AE8C4 800ADCC4 8F190008 */  lw         $t9, 8($t8)
/* AE8C8 800ADCC8 8F2800D8 */  lw         $t0, 0xd8($t9)
/* AE8CC 800ADCCC 11000027 */  beqz       $t0, .L800ADD6C
/* AE8D0 800ADCD0 00000000 */   nop
/* AE8D4 800ADCD4 0C027AE8 */  jal        __allocParam
/* AE8D8 800ADCD8 00000000 */   nop
/* AE8DC 800ADCDC AFA20018 */  sw         $v0, 0x18($sp)
/* AE8E0 800ADCE0 8FA90018 */  lw         $t1, 0x18($sp)
/* AE8E4 800ADCE4 15200006 */  bnez       $t1, .L800ADD00
/* AE8E8 800ADCE8 00000000 */   nop
/* AE8EC 800ADCEC 2404006A */  addiu      $a0, $zero, 0x6a
/* AE8F0 800ADCF0 0C0297B4 */  jal        __osError
/* AE8F4 800ADCF4 00002825 */   or        $a1, $zero, $zero
/* AE8F8 800ADCF8 10000024 */  b          .L800ADD8C
/* AE8FC 800ADCFC 00000000 */   nop
.L800ADD00:
/* AE900 800ADD00 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE904 800ADD04 8FAA0020 */  lw         $t2, 0x20($sp)
/* AE908 800ADD08 8FB80018 */  lw         $t8, 0x18($sp)
/* AE90C 800ADD0C 8D8D0008 */  lw         $t5, 8($t4)
/* AE910 800ADD10 8D4B001C */  lw         $t3, 0x1c($t2)
/* AE914 800ADD14 8DAE00D8 */  lw         $t6, 0xd8($t5)
/* AE918 800ADD18 016E7821 */  addu       $t7, $t3, $t6
/* AE91C 800ADD1C AF0F0004 */  sw         $t7, 4($t8)
/* AE920 800ADD20 8FB90018 */  lw         $t9, 0x18($sp)
/* AE924 800ADD24 A7200008 */  sh         $zero, 8($t9)
/* AE928 800ADD28 8FA80024 */  lw         $t0, 0x24($sp)
/* AE92C 800ADD2C 8FAA0018 */  lw         $t2, 0x18($sp)
/* AE930 800ADD30 8D090008 */  lw         $t1, 8($t0)
/* AE934 800ADD34 AD49000C */  sw         $t1, 0xc($t2)
/* AE938 800ADD38 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE93C 800ADD3C 8D8D0008 */  lw         $t5, 8($t4)
/* AE940 800ADD40 8DAB000C */  lw         $t3, 0xc($t5)
/* AE944 800ADD44 AFAB001C */  sw         $t3, 0x1c($sp)
/* AE948 800ADD48 8FAE001C */  lw         $t6, 0x1c($sp)
/* AE94C 800ADD4C 24050003 */  addiu      $a1, $zero, 3
/* AE950 800ADD50 8FA60018 */  lw         $a2, 0x18($sp)
/* AE954 800ADD54 8DD90008 */  lw         $t9, 8($t6)
/* AE958 800ADD58 01C02025 */  or         $a0, $t6, $zero
/* AE95C 800ADD5C 0320F809 */  jalr       $t9
/* AE960 800ADD60 00000000 */   nop
/* AE964 800ADD64 10000005 */  b          .L800ADD7C
/* AE968 800ADD68 00000000 */   nop
.L800ADD6C:
/* AE96C 800ADD6C 8FAF0024 */  lw         $t7, 0x24($sp)
/* AE970 800ADD70 8FA40020 */  lw         $a0, 0x20($sp)
/* AE974 800ADD74 0C027B26 */  jal        _freePVoice
/* AE978 800ADD78 8DE50008 */   lw        $a1, 8($t7)
.L800ADD7C:
/* AE97C 800ADD7C 8FB80024 */  lw         $t8, 0x24($sp)
/* AE980 800ADD80 AF000008 */  sw         $zero, 8($t8)
.L800ADD84:
/* AE984 800ADD84 10000001 */  b          .L800ADD8C
/* AE988 800ADD88 00000000 */   nop
.L800ADD8C:
/* AE98C 800ADD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE990 800ADD90 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE994 800ADD94 03E00008 */  jr         $ra
/* AE998 800ADD98 00000000 */   nop
/* AE99C 800ADD9C 00000000 */  nop
