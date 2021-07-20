.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B5410
/* B6010 800B5410 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B6014 800B5414 AFBF0024 */  sw         $ra, 0x24($sp)
/* B6018 800B5418 AFA40038 */  sw         $a0, 0x38($sp)
/* B601C 800B541C AFB20020 */  sw         $s2, 0x20($sp)
/* B6020 800B5420 AFB1001C */  sw         $s1, 0x1c($sp)
/* B6024 800B5424 AFB00018 */  sw         $s0, 0x18($sp)
/* B6028 800B5428 0C0297A4 */  jal        func_800A5E90
/* B602C 800B542C 00000000 */   nop
/* B6030 800B5430 00408025 */  or         $s0, $v0, $zero
/* B6034 800B5434 8FAE0038 */  lw         $t6, 0x38($sp)
/* B6038 800B5438 15C00005 */  bnez       $t6, .L800B5450
/* B603C 800B543C 00000000 */   nop
/* B6040 800B5440 3C0F800F */  lui        $t7, %hi(D_800EA610)
/* B6044 800B5444 8DEFA610 */  lw         $t7, %lo(D_800EA610)($t7)
/* B6048 800B5448 1000000A */  b          .L800B5474
/* B604C 800B544C AFAF0038 */   sw        $t7, 0x38($sp)
.L800B5450:
/* B6050 800B5450 8FB80038 */  lw         $t8, 0x38($sp)
/* B6054 800B5454 24010001 */  addiu      $at, $zero, 1
/* B6058 800B5458 97190010 */  lhu        $t9, 0x10($t8)
/* B605C 800B545C 13210005 */  beq        $t9, $at, .L800B5474
/* B6060 800B5460 00000000 */   nop
/* B6064 800B5464 8FA80038 */  lw         $t0, 0x38($sp)
/* B6068 800B5468 8D040008 */  lw         $a0, 8($t0)
/* B606C 800B546C 0C029C84 */  jal        func_800A7210
/* B6070 800B5470 01002825 */   or        $a1, $t0, $zero
.L800B5474:
/* B6074 800B5474 3C09800F */  lui        $t1, %hi(D_800EA60C)
/* B6078 800B5478 8D29A60C */  lw         $t1, %lo(D_800EA60C)($t1)
/* B607C 800B547C 8FAA0038 */  lw         $t2, 0x38($sp)
/* B6080 800B5480 152A0007 */  bne        $t1, $t2, .L800B54A0
/* B6084 800B5484 00000000 */   nop
/* B6088 800B5488 3C0B800F */  lui        $t3, %hi(D_800EA60C)
/* B608C 800B548C 8D6BA60C */  lw         $t3, %lo(D_800EA60C)($t3)
/* B6090 800B5490 3C01800F */  lui        $at, %hi(D_800EA60C)
/* B6094 800B5494 8D6C000C */  lw         $t4, 0xc($t3)
/* B6098 800B5498 10000012 */  b          .L800B54E4
/* B609C 800B549C AC2CA60C */   sw        $t4, %lo(D_800EA60C)($at)
.L800B54A0:
/* B60A0 800B54A0 3C11800F */  lui        $s1, %hi(D_800EA60C)
/* B60A4 800B54A4 8E31A60C */  lw         $s1, %lo(D_800EA60C)($s1)
/* B60A8 800B54A8 8E32000C */  lw         $s2, 0xc($s1)
/* B60AC 800B54AC 1240000D */  beqz       $s2, .L800B54E4
/* B60B0 800B54B0 00000000 */   nop
.L800B54B4:
/* B60B4 800B54B4 8FAD0038 */  lw         $t5, 0x38($sp)
/* B60B8 800B54B8 164D0006 */  bne        $s2, $t5, .L800B54D4
/* B60BC 800B54BC 00000000 */   nop
/* B60C0 800B54C0 8FAE0038 */  lw         $t6, 0x38($sp)
/* B60C4 800B54C4 8DCF000C */  lw         $t7, 0xc($t6)
/* B60C8 800B54C8 AE2F000C */  sw         $t7, 0xc($s1)
/* B60CC 800B54CC 10000005 */  b          .L800B54E4
/* B60D0 800B54D0 00000000 */   nop
.L800B54D4:
/* B60D4 800B54D4 02408825 */  or         $s1, $s2, $zero
/* B60D8 800B54D8 8E32000C */  lw         $s2, 0xc($s1)
/* B60DC 800B54DC 1640FFF5 */  bnez       $s2, .L800B54B4
/* B60E0 800B54E0 00000000 */   nop
.L800B54E4:
/* B60E4 800B54E4 3C19800F */  lui        $t9, %hi(D_800EA610)
/* B60E8 800B54E8 8F39A610 */  lw         $t9, %lo(D_800EA610)($t9)
/* B60EC 800B54EC 8FB80038 */  lw         $t8, 0x38($sp)
/* B60F0 800B54F0 17190003 */  bne        $t8, $t9, .L800B5500
/* B60F4 800B54F4 00000000 */   nop
/* B60F8 800B54F8 0C029B00 */  jal        func_800A6C00
/* B60FC 800B54FC 00000000 */   nop
.L800B5500:
/* B6100 800B5500 0C0297AC */  jal        func_800A5EB0
/* B6104 800B5504 02002025 */   or        $a0, $s0, $zero
/* B6108 800B5508 10000001 */  b          .L800B5510
/* B610C 800B550C 00000000 */   nop
.L800B5510:
/* B6110 800B5510 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6114 800B5514 8FB00018 */  lw         $s0, 0x18($sp)
/* B6118 800B5518 8FB1001C */  lw         $s1, 0x1c($sp)
/* B611C 800B551C 8FB20020 */  lw         $s2, 0x20($sp)
/* B6120 800B5520 03E00008 */  jr         $ra
/* B6124 800B5524 27BD0038 */   addiu     $sp, $sp, 0x38
/* B6128 800B5528 00000000 */  nop
/* B612C 800B552C 00000000 */  nop
