.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009E2F0
/* 9EEF0 8009E2F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9EEF4 8009E2F4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9EEF8 8009E2F8 AFA40038 */  sw         $a0, 0x38($sp)
/* 9EEFC 8009E2FC AFA5003C */  sw         $a1, 0x3c($sp)
/* 9EF00 8009E300 AFA60040 */  sw         $a2, 0x40($sp)
/* 9EF04 8009E304 AFB20020 */  sw         $s2, 0x20($sp)
/* 9EF08 8009E308 AFB1001C */  sw         $s1, 0x1c($sp)
/* 9EF0C 8009E30C AFB00018 */  sw         $s0, 0x18($sp)
/* 9EF10 8009E310 8FAE0040 */  lw         $t6, 0x40($sp)
/* 9EF14 8009E314 11C0000A */  beqz       $t6, .L8009E340
/* 9EF18 8009E318 00000000 */   nop
/* 9EF1C 8009E31C 24010001 */  addiu      $at, $zero, 1
/* 9EF20 8009E320 11C10007 */  beq        $t6, $at, .L8009E340
/* 9EF24 8009E324 00000000 */   nop
/* 9EF28 8009E328 24040006 */  addiu      $a0, $zero, 6
/* 9EF2C 8009E32C 24050001 */  addiu      $a1, $zero, 1
/* 9EF30 8009E330 0C0297B4 */  jal        func_800A5ED0
/* 9EF34 8009E334 8FA60040 */   lw        $a2, 0x40($sp)
/* 9EF38 8009E338 1000004B */  b          .L8009E468
/* 9EF3C 8009E33C 2402FFFF */   addiu     $v0, $zero, -1
.L8009E340:
/* 9EF40 8009E340 0C0297A4 */  jal        func_800A5E90
/* 9EF44 8009E344 00000000 */   nop
/* 9EF48 8009E348 00408025 */  or         $s0, $v0, $zero
/* 9EF4C 8009E34C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9EF50 8009E350 8DF80008 */  lw         $t8, 8($t7)
/* 9EF54 8009E354 8DF90010 */  lw         $t9, 0x10($t7)
/* 9EF58 8009E358 0319082A */  slt        $at, $t8, $t9
/* 9EF5C 8009E35C 14200018 */  bnez       $at, .L8009E3C0
/* 9EF60 8009E360 00000000 */   nop
.L8009E364:
/* 9EF64 8009E364 8FA80040 */  lw         $t0, 0x40($sp)
/* 9EF68 8009E368 24010001 */  addiu      $at, $zero, 1
/* 9EF6C 8009E36C 1501000A */  bne        $t0, $at, .L8009E398
/* 9EF70 8009E370 00000000 */   nop
/* 9EF74 8009E374 3C0A800F */  lui        $t2, %hi(D_800EA610)
/* 9EF78 8009E378 8D4AA610 */  lw         $t2, %lo(D_800EA610)($t2)
/* 9EF7C 8009E37C 24090008 */  addiu      $t1, $zero, 8
/* 9EF80 8009E380 A5490010 */  sh         $t1, 0x10($t2)
/* 9EF84 8009E384 8FA40038 */  lw         $a0, 0x38($sp)
/* 9EF88 8009E388 0C029AA4 */  jal        func_800A6A90
/* 9EF8C 8009E38C 24840004 */   addiu     $a0, $a0, 4
/* 9EF90 8009E390 10000005 */  b          .L8009E3A8
/* 9EF94 8009E394 00000000 */   nop
.L8009E398:
/* 9EF98 8009E398 0C0297AC */  jal        func_800A5EB0
/* 9EF9C 8009E39C 02002025 */   or        $a0, $s0, $zero
/* 9EFA0 8009E3A0 10000031 */  b          .L8009E468
/* 9EFA4 8009E3A4 2402FFFF */   addiu     $v0, $zero, -1
.L8009E3A8:
/* 9EFA8 8009E3A8 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9EFAC 8009E3AC 8D6C0008 */  lw         $t4, 8($t3)
/* 9EFB0 8009E3B0 8D6D0010 */  lw         $t5, 0x10($t3)
/* 9EFB4 8009E3B4 018D082A */  slt        $at, $t4, $t5
/* 9EFB8 8009E3B8 1020FFEA */  beqz       $at, .L8009E364
/* 9EFBC 8009E3BC 00000000 */   nop
.L8009E3C0:
/* 9EFC0 8009E3C0 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9EFC4 8009E3C4 8DCF000C */  lw         $t7, 0xc($t6)
/* 9EFC8 8009E3C8 8DD80008 */  lw         $t8, 8($t6)
/* 9EFCC 8009E3CC 8DC80010 */  lw         $t0, 0x10($t6)
/* 9EFD0 8009E3D0 01F8C821 */  addu       $t9, $t7, $t8
/* 9EFD4 8009E3D4 0328001A */  div        $zero, $t9, $t0
/* 9EFD8 8009E3D8 00008810 */  mfhi       $s1
/* 9EFDC 8009E3DC 15000002 */  bnez       $t0, .L8009E3E8
/* 9EFE0 8009E3E0 00000000 */   nop
/* 9EFE4 8009E3E4 0007000D */  break      7
.L8009E3E8:
/* 9EFE8 8009E3E8 2401FFFF */   addiu     $at, $zero, -1
/* 9EFEC 8009E3EC 15010004 */  bne        $t0, $at, .L8009E400
/* 9EFF0 8009E3F0 3C018000 */   lui       $at, 0x8000
/* 9EFF4 8009E3F4 17210002 */  bne        $t9, $at, .L8009E400
/* 9EFF8 8009E3F8 00000000 */   nop
/* 9EFFC 8009E3FC 0006000D */  break      6
.L8009E400:
/* 9F000 8009E400 8FAA0038 */   lw        $t2, 0x38($sp)
/* 9F004 8009E404 8FA9003C */  lw         $t1, 0x3c($sp)
/* 9F008 8009E408 00116080 */  sll        $t4, $s1, 2
/* 9F00C 8009E40C 8D4B0014 */  lw         $t3, 0x14($t2)
/* 9F010 8009E410 016C6821 */  addu       $t5, $t3, $t4
/* 9F014 8009E414 ADA90000 */  sw         $t1, ($t5)
/* 9F018 8009E418 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9F01C 8009E41C 8DF80008 */  lw         $t8, 8($t7)
/* 9F020 8009E420 270E0001 */  addiu      $t6, $t8, 1
/* 9F024 8009E424 ADEE0008 */  sw         $t6, 8($t7)
/* 9F028 8009E428 8FB90038 */  lw         $t9, 0x38($sp)
/* 9F02C 8009E42C 8F280000 */  lw         $t0, ($t9)
/* 9F030 8009E430 8D0A0000 */  lw         $t2, ($t0)
/* 9F034 8009E434 11400006 */  beqz       $t2, .L8009E450
/* 9F038 8009E438 00000000 */   nop
/* 9F03C 8009E43C 0C029AFA */  jal        func_800A6BE8
/* 9F040 8009E440 8FA40038 */   lw        $a0, 0x38($sp)
/* 9F044 8009E444 00409025 */  or         $s2, $v0, $zero
/* 9F048 8009E448 0C026588 */  jal        func_80099620
/* 9F04C 8009E44C 02402025 */   or        $a0, $s2, $zero
.L8009E450:
/* 9F050 8009E450 0C0297AC */  jal        func_800A5EB0
/* 9F054 8009E454 02002025 */   or        $a0, $s0, $zero
/* 9F058 8009E458 10000003 */  b          .L8009E468
/* 9F05C 8009E45C 00001025 */   or        $v0, $zero, $zero
/* 9F060 8009E460 10000001 */  b          .L8009E468
/* 9F064 8009E464 00000000 */   nop
.L8009E468:
/* 9F068 8009E468 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9F06C 8009E46C 8FB00018 */  lw         $s0, 0x18($sp)
/* 9F070 8009E470 8FB1001C */  lw         $s1, 0x1c($sp)
/* 9F074 8009E474 8FB20020 */  lw         $s2, 0x20($sp)
/* 9F078 8009E478 03E00008 */  jr         $ra
/* 9F07C 8009E47C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8009E480
/* 9F080 8009E480 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F084 8009E484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F088 8009E488 AFA40028 */  sw         $a0, 0x28($sp)
/* 9F08C 8009E48C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9F090 8009E490 240E000A */  addiu      $t6, $zero, 0xa
/* 9F094 8009E494 A7AE0018 */  sh         $t6, 0x18($sp)
/* 9F098 8009E498 87AF002E */  lh         $t7, 0x2e($sp)
/* 9F09C 8009E49C A7AF001C */  sh         $t7, 0x1c($sp)
/* 9F0A0 8009E4A0 8FA40028 */  lw         $a0, 0x28($sp)
/* 9F0A4 8009E4A4 27A50018 */  addiu      $a1, $sp, 0x18
/* 9F0A8 8009E4A8 00003025 */  or         $a2, $zero, $zero
/* 9F0AC 8009E4AC 0C02B620 */  jal        func_800AD880
/* 9F0B0 8009E4B0 24840048 */   addiu     $a0, $a0, 0x48
/* 9F0B4 8009E4B4 10000001 */  b          .L8009E4BC
/* 9F0B8 8009E4B8 00000000 */   nop
.L8009E4BC:
/* 9F0BC 8009E4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F0C0 8009E4C0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9F0C4 8009E4C4 03E00008 */  jr         $ra
/* 9F0C8 8009E4C8 00000000 */   nop
/* 9F0CC 8009E4CC 00000000 */  nop
