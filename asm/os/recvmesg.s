.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osRecvMesg
/* 9B910 8009AD10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B914 8009AD14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B918 8009AD18 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B91C 8009AD1C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B920 8009AD20 AFA60030 */  sw         $a2, 0x30($sp)
/* 9B924 8009AD24 AFB10018 */  sw         $s1, 0x18($sp)
/* 9B928 8009AD28 AFB00014 */  sw         $s0, 0x14($sp)
/* 9B92C 8009AD2C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9B930 8009AD30 11C0000A */  beqz       $t6, .L8009AD5C
/* 9B934 8009AD34 00000000 */   nop
/* 9B938 8009AD38 24010001 */  addiu      $at, $zero, 1
/* 9B93C 8009AD3C 11C10007 */  beq        $t6, $at, .L8009AD5C
/* 9B940 8009AD40 00000000 */   nop
/* 9B944 8009AD44 24040008 */  addiu      $a0, $zero, 8
/* 9B948 8009AD48 24050001 */  addiu      $a1, $zero, 1
/* 9B94C 8009AD4C 0C0297B4 */  jal        __osError
/* 9B950 8009AD50 8FA60030 */   lw        $a2, 0x30($sp)
/* 9B954 8009AD54 1000004B */  b          .L8009AE84
/* 9B958 8009AD58 2402FFFF */   addiu     $v0, $zero, -1
.L8009AD5C:
/* 9B95C 8009AD5C 0C0297A4 */  jal        __osDisableInt
/* 9B960 8009AD60 00000000 */   nop
/* 9B964 8009AD64 00408025 */  or         $s0, $v0, $zero
/* 9B968 8009AD68 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B96C 8009AD6C 8DF80008 */  lw         $t8, 8($t7)
/* 9B970 8009AD70 17000014 */  bnez       $t8, .L8009ADC4
/* 9B974 8009AD74 00000000 */   nop
.L8009AD78:
/* 9B978 8009AD78 8FB90030 */  lw         $t9, 0x30($sp)
/* 9B97C 8009AD7C 17200007 */  bnez       $t9, .L8009AD9C
/* 9B980 8009AD80 00000000 */   nop
/* 9B984 8009AD84 0C0297AC */  jal        __osRestoreInt
/* 9B988 8009AD88 02002025 */   or        $a0, $s0, $zero
/* 9B98C 8009AD8C 1000003D */  b          .L8009AE84
/* 9B990 8009AD90 2402FFFF */   addiu     $v0, $zero, -1
/* 9B994 8009AD94 10000007 */  b          .L8009ADB4
/* 9B998 8009AD98 00000000 */   nop
.L8009AD9C:
/* 9B99C 8009AD9C 3C09800F */  lui        $t1, %hi(__osRunningThread)
/* 9B9A0 8009ADA0 8D29A610 */  lw         $t1, %lo(__osRunningThread)($t1)
/* 9B9A4 8009ADA4 24080008 */  addiu      $t0, $zero, 8
/* 9B9A8 8009ADA8 A5280010 */  sh         $t0, 0x10($t1)
/* 9B9AC 8009ADAC 0C029AA4 */  jal        __osEnqueueAndYield
/* 9B9B0 8009ADB0 8FA40028 */   lw        $a0, 0x28($sp)
.L8009ADB4:
/* 9B9B4 8009ADB4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9B9B8 8009ADB8 8D4B0008 */  lw         $t3, 8($t2)
/* 9B9BC 8009ADBC 1160FFEE */  beqz       $t3, .L8009AD78
/* 9B9C0 8009ADC0 00000000 */   nop
.L8009ADC4:
/* 9B9C4 8009ADC4 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9B9C8 8009ADC8 11800009 */  beqz       $t4, .L8009ADF0
/* 9B9CC 8009ADCC 00000000 */   nop
/* 9B9D0 8009ADD0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9B9D4 8009ADD4 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9B9D8 8009ADD8 8DAF000C */  lw         $t7, 0xc($t5)
/* 9B9DC 8009ADDC 8DAE0014 */  lw         $t6, 0x14($t5)
/* 9B9E0 8009ADE0 000FC080 */  sll        $t8, $t7, 2
/* 9B9E4 8009ADE4 01D8C821 */  addu       $t9, $t6, $t8
/* 9B9E8 8009ADE8 8F280000 */  lw         $t0, ($t9)
/* 9B9EC 8009ADEC AD280000 */  sw         $t0, ($t1)
.L8009ADF0:
/* 9B9F0 8009ADF0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9B9F4 8009ADF4 8D4B000C */  lw         $t3, 0xc($t2)
/* 9B9F8 8009ADF8 8D4D0010 */  lw         $t5, 0x10($t2)
/* 9B9FC 8009ADFC 256C0001 */  addiu      $t4, $t3, 1
/* 9BA00 8009AE00 018D001A */  div        $zero, $t4, $t5
/* 9BA04 8009AE04 00007810 */  mfhi       $t7
/* 9BA08 8009AE08 AD4F000C */  sw         $t7, 0xc($t2)
/* 9BA0C 8009AE0C 15A00002 */  bnez       $t5, .L8009AE18
/* 9BA10 8009AE10 00000000 */   nop
/* 9BA14 8009AE14 0007000D */  break      7
.L8009AE18:
/* 9BA18 8009AE18 2401FFFF */   addiu     $at, $zero, -1
/* 9BA1C 8009AE1C 15A10004 */  bne        $t5, $at, .L8009AE30
/* 9BA20 8009AE20 3C018000 */   lui       $at, 0x8000
/* 9BA24 8009AE24 15810002 */  bne        $t4, $at, .L8009AE30
/* 9BA28 8009AE28 00000000 */   nop
/* 9BA2C 8009AE2C 0006000D */  break      6
.L8009AE30:
/* 9BA30 8009AE30 8FAE0028 */   lw        $t6, 0x28($sp)
/* 9BA34 8009AE34 8DD80008 */  lw         $t8, 8($t6)
/* 9BA38 8009AE38 2719FFFF */  addiu      $t9, $t8, -1
/* 9BA3C 8009AE3C ADD90008 */  sw         $t9, 8($t6)
/* 9BA40 8009AE40 8FA80028 */  lw         $t0, 0x28($sp)
/* 9BA44 8009AE44 8D090004 */  lw         $t1, 4($t0)
/* 9BA48 8009AE48 8D2B0000 */  lw         $t3, ($t1)
/* 9BA4C 8009AE4C 11600007 */  beqz       $t3, .L8009AE6C
/* 9BA50 8009AE50 00000000 */   nop
/* 9BA54 8009AE54 8FA40028 */  lw         $a0, 0x28($sp)
/* 9BA58 8009AE58 0C029AFA */  jal        __osPopThread
/* 9BA5C 8009AE5C 24840004 */   addiu     $a0, $a0, 4
/* 9BA60 8009AE60 00408825 */  or         $s1, $v0, $zero
/* 9BA64 8009AE64 0C026588 */  jal        osStartThread
/* 9BA68 8009AE68 02202025 */   or        $a0, $s1, $zero
.L8009AE6C:
/* 9BA6C 8009AE6C 0C0297AC */  jal        __osRestoreInt
/* 9BA70 8009AE70 02002025 */   or        $a0, $s0, $zero
/* 9BA74 8009AE74 10000003 */  b          .L8009AE84
/* 9BA78 8009AE78 00001025 */   or        $v0, $zero, $zero
/* 9BA7C 8009AE7C 10000001 */  b          .L8009AE84
/* 9BA80 8009AE80 00000000 */   nop
.L8009AE84:
/* 9BA84 8009AE84 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9BA88 8009AE88 8FB00014 */  lw         $s0, 0x14($sp)
/* 9BA8C 8009AE8C 8FB10018 */  lw         $s1, 0x18($sp)
/* 9BA90 8009AE90 03E00008 */  jr         $ra
/* 9BA94 8009AE94 27BD0028 */   addiu     $sp, $sp, 0x28
/* 9BA98 8009AE98 00000000 */  nop
/* 9BA9C 8009AE9C 00000000 */  nop
