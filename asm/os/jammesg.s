.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osJamMesg
/* ABC50 800AB050 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* ABC54 800AB054 AFBF001C */  sw         $ra, 0x1c($sp)
/* ABC58 800AB058 AFA40028 */  sw         $a0, 0x28($sp)
/* ABC5C 800AB05C AFA5002C */  sw         $a1, 0x2c($sp)
/* ABC60 800AB060 AFA60030 */  sw         $a2, 0x30($sp)
/* ABC64 800AB064 AFB10018 */  sw         $s1, 0x18($sp)
/* ABC68 800AB068 AFB00014 */  sw         $s0, 0x14($sp)
/* ABC6C 800AB06C 8FAE0030 */  lw         $t6, 0x30($sp)
/* ABC70 800AB070 11C0000A */  beqz       $t6, .L800AB09C
/* ABC74 800AB074 00000000 */   nop
/* ABC78 800AB078 24010001 */  addiu      $at, $zero, 1
/* ABC7C 800AB07C 11C10007 */  beq        $t6, $at, .L800AB09C
/* ABC80 800AB080 00000000 */   nop
/* ABC84 800AB084 24040007 */  addiu      $a0, $zero, 7
/* ABC88 800AB088 24050001 */  addiu      $a1, $zero, 1
/* ABC8C 800AB08C 0C0297B4 */  jal        __osError
/* ABC90 800AB090 8FA60030 */   lw        $a2, 0x30($sp)
/* ABC94 800AB094 1000004D */  b          .L800AB1CC
/* ABC98 800AB098 2402FFFF */   addiu     $v0, $zero, -1
.L800AB09C:
/* ABC9C 800AB09C 0C0297A4 */  jal        __osDisableInt
/* ABCA0 800AB0A0 00000000 */   nop
/* ABCA4 800AB0A4 00408025 */  or         $s0, $v0, $zero
/* ABCA8 800AB0A8 8FAF0028 */  lw         $t7, 0x28($sp)
/* ABCAC 800AB0AC 8DF80008 */  lw         $t8, 8($t7)
/* ABCB0 800AB0B0 8DF90010 */  lw         $t9, 0x10($t7)
/* ABCB4 800AB0B4 0319082A */  slt        $at, $t8, $t9
/* ABCB8 800AB0B8 14200018 */  bnez       $at, .L800AB11C
/* ABCBC 800AB0BC 00000000 */   nop
.L800AB0C0:
/* ABCC0 800AB0C0 8FA80030 */  lw         $t0, 0x30($sp)
/* ABCC4 800AB0C4 24010001 */  addiu      $at, $zero, 1
/* ABCC8 800AB0C8 1501000A */  bne        $t0, $at, .L800AB0F4
/* ABCCC 800AB0CC 00000000 */   nop
/* ABCD0 800AB0D0 3C0A800F */  lui        $t2, %hi(__osRunningThread)
/* ABCD4 800AB0D4 8D4AA610 */  lw         $t2, %lo(__osRunningThread)($t2)
/* ABCD8 800AB0D8 24090008 */  addiu      $t1, $zero, 8
/* ABCDC 800AB0DC A5490010 */  sh         $t1, 0x10($t2)
/* ABCE0 800AB0E0 8FA40028 */  lw         $a0, 0x28($sp)
/* ABCE4 800AB0E4 0C029AA4 */  jal        __osEnqueueAndYield
/* ABCE8 800AB0E8 24840004 */   addiu     $a0, $a0, 4
/* ABCEC 800AB0EC 10000005 */  b          .L800AB104
/* ABCF0 800AB0F0 00000000 */   nop
.L800AB0F4:
/* ABCF4 800AB0F4 0C0297AC */  jal        __osRestoreInt
/* ABCF8 800AB0F8 02002025 */   or        $a0, $s0, $zero
/* ABCFC 800AB0FC 10000033 */  b          .L800AB1CC
/* ABD00 800AB100 2402FFFF */   addiu     $v0, $zero, -1
.L800AB104:
/* ABD04 800AB104 8FAB0028 */  lw         $t3, 0x28($sp)
/* ABD08 800AB108 8D6C0008 */  lw         $t4, 8($t3)
/* ABD0C 800AB10C 8D6D0010 */  lw         $t5, 0x10($t3)
/* ABD10 800AB110 018D082A */  slt        $at, $t4, $t5
/* ABD14 800AB114 1020FFEA */  beqz       $at, .L800AB0C0
/* ABD18 800AB118 00000000 */   nop
.L800AB11C:
/* ABD1C 800AB11C 8FAE0028 */  lw         $t6, 0x28($sp)
/* ABD20 800AB120 8DCF000C */  lw         $t7, 0xc($t6)
/* ABD24 800AB124 8DD80010 */  lw         $t8, 0x10($t6)
/* ABD28 800AB128 01F8C821 */  addu       $t9, $t7, $t8
/* ABD2C 800AB12C 2728FFFF */  addiu      $t0, $t9, -1
/* ABD30 800AB130 0118001A */  div        $zero, $t0, $t8
/* ABD34 800AB134 00004810 */  mfhi       $t1
/* ABD38 800AB138 ADC9000C */  sw         $t1, 0xc($t6)
/* ABD3C 800AB13C 17000002 */  bnez       $t8, .L800AB148
/* ABD40 800AB140 00000000 */   nop
/* ABD44 800AB144 0007000D */  break      7
.L800AB148:
/* ABD48 800AB148 2401FFFF */   addiu     $at, $zero, -1
/* ABD4C 800AB14C 17010004 */  bne        $t8, $at, .L800AB160
/* ABD50 800AB150 3C018000 */   lui       $at, 0x8000
/* ABD54 800AB154 15010002 */  bne        $t0, $at, .L800AB160
/* ABD58 800AB158 00000000 */   nop
/* ABD5C 800AB15C 0006000D */  break      6
.L800AB160:
/* ABD60 800AB160 8FAB0028 */   lw        $t3, 0x28($sp)
/* ABD64 800AB164 8FAA002C */  lw         $t2, 0x2c($sp)
/* ABD68 800AB168 8D6D000C */  lw         $t5, 0xc($t3)
/* ABD6C 800AB16C 8D6C0014 */  lw         $t4, 0x14($t3)
/* ABD70 800AB170 000D7880 */  sll        $t7, $t5, 2
/* ABD74 800AB174 018FC821 */  addu       $t9, $t4, $t7
/* ABD78 800AB178 AF2A0000 */  sw         $t2, ($t9)
/* ABD7C 800AB17C 8FA80028 */  lw         $t0, 0x28($sp)
/* ABD80 800AB180 8D180008 */  lw         $t8, 8($t0)
/* ABD84 800AB184 27090001 */  addiu      $t1, $t8, 1
/* ABD88 800AB188 AD090008 */  sw         $t1, 8($t0)
/* ABD8C 800AB18C 8FAE0028 */  lw         $t6, 0x28($sp)
/* ABD90 800AB190 8DCB0000 */  lw         $t3, ($t6)
/* ABD94 800AB194 8D6D0000 */  lw         $t5, ($t3)
/* ABD98 800AB198 11A00006 */  beqz       $t5, .L800AB1B4
/* ABD9C 800AB19C 00000000 */   nop
/* ABDA0 800AB1A0 0C029AFA */  jal        __osPopThread
/* ABDA4 800AB1A4 8FA40028 */   lw        $a0, 0x28($sp)
/* ABDA8 800AB1A8 00408825 */  or         $s1, $v0, $zero
/* ABDAC 800AB1AC 0C026588 */  jal        osStartThread
/* ABDB0 800AB1B0 02202025 */   or        $a0, $s1, $zero
.L800AB1B4:
/* ABDB4 800AB1B4 0C0297AC */  jal        __osRestoreInt
/* ABDB8 800AB1B8 02002025 */   or        $a0, $s0, $zero
/* ABDBC 800AB1BC 10000003 */  b          .L800AB1CC
/* ABDC0 800AB1C0 00001025 */   or        $v0, $zero, $zero
/* ABDC4 800AB1C4 10000001 */  b          .L800AB1CC
/* ABDC8 800AB1C8 00000000 */   nop
.L800AB1CC:
/* ABDCC 800AB1CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* ABDD0 800AB1D0 8FB00014 */  lw         $s0, 0x14($sp)
/* ABDD4 800AB1D4 8FB10018 */  lw         $s1, 0x18($sp)
/* ABDD8 800AB1D8 03E00008 */  jr         $ra
/* ABDDC 800AB1DC 27BD0028 */   addiu     $sp, $sp, 0x28
