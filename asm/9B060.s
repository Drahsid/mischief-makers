.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetThreadPri
/* 9B060 8009A460 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B064 8009A464 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B068 8009A468 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B06C 8009A46C AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B070 8009A470 AFB00018 */  sw         $s0, 0x18($sp)
/* 9B074 8009A474 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9B078 8009A478 05C00004 */  bltz       $t6, .L8009A48C
/* 9B07C 8009A47C 00000000 */   nop
/* 9B080 8009A480 29C10100 */  slti       $at, $t6, 0x100
/* 9B084 8009A484 14200007 */  bnez       $at, .L8009A4A4
/* 9B088 8009A488 00000000 */   nop
.L8009A48C:
/* 9B08C 8009A48C 24040004 */  addiu      $a0, $zero, 4
/* 9B090 8009A490 24050001 */  addiu      $a1, $zero, 1
/* 9B094 8009A494 0C0297B4 */  jal        __osError
/* 9B098 8009A498 8FA6002C */   lw        $a2, 0x2c($sp)
/* 9B09C 8009A49C 10000037 */  b          .L8009A57C
/* 9B0A0 8009A4A0 00000000 */   nop
.L8009A4A4:
/* 9B0A4 8009A4A4 0C0297A4 */  jal        __osDisableInt
/* 9B0A8 8009A4A8 00000000 */   nop
/* 9B0AC 8009A4AC 00408025 */  or         $s0, $v0, $zero
/* 9B0B0 8009A4B0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B0B4 8009A4B4 15E00004 */  bnez       $t7, .L8009A4C8
/* 9B0B8 8009A4B8 00000000 */   nop
/* 9B0BC 8009A4BC 3C18800F */  lui        $t8, %hi(__osRunningThread)
/* 9B0C0 8009A4C0 8F18A610 */  lw         $t8, %lo(__osRunningThread)($t8)
/* 9B0C4 8009A4C4 AFB80028 */  sw         $t8, 0x28($sp)
.L8009A4C8:
/* 9B0C8 8009A4C8 8FB90028 */  lw         $t9, 0x28($sp)
/* 9B0CC 8009A4CC 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9B0D0 8009A4D0 8F280004 */  lw         $t0, 4($t9)
/* 9B0D4 8009A4D4 11090025 */  beq        $t0, $t1, .L8009A56C
/* 9B0D8 8009A4D8 00000000 */   nop
/* 9B0DC 8009A4DC 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9B0E0 8009A4E0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9B0E4 8009A4E4 AD6A0004 */  sw         $t2, 4($t3)
/* 9B0E8 8009A4E8 3C0D800F */  lui        $t5, %hi(__osRunningThread)
/* 9B0EC 8009A4EC 8DADA610 */  lw         $t5, %lo(__osRunningThread)($t5)
/* 9B0F0 8009A4F0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9B0F4 8009A4F4 118D000D */  beq        $t4, $t5, .L8009A52C
/* 9B0F8 8009A4F8 00000000 */   nop
/* 9B0FC 8009A4FC 958E0010 */  lhu        $t6, 0x10($t4)
/* 9B100 8009A500 24010001 */  addiu      $at, $zero, 1
/* 9B104 8009A504 11C10009 */  beq        $t6, $at, .L8009A52C
/* 9B108 8009A508 00000000 */   nop
/* 9B10C 8009A50C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B110 8009A510 8DE40008 */  lw         $a0, 8($t7)
/* 9B114 8009A514 0C029C84 */  jal        __osDequeueThread
/* 9B118 8009A518 01E02825 */   or        $a1, $t7, $zero
/* 9B11C 8009A51C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B120 8009A520 8F040008 */  lw         $a0, 8($t8)
/* 9B124 8009A524 0C029AE7 */  jal        __osEnqueueThread
/* 9B128 8009A528 03002825 */   or        $a1, $t8, $zero
.L8009A52C:
/* 9B12C 8009A52C 3C19800F */  lui        $t9, %hi(__osRunningThread)
/* 9B130 8009A530 3C09800F */  lui        $t1, %hi(__osRunQueue)
/* 9B134 8009A534 8D29A608 */  lw         $t1, %lo(__osRunQueue)($t1)
/* 9B138 8009A538 8F39A610 */  lw         $t9, %lo(__osRunningThread)($t9)
/* 9B13C 8009A53C 8D2A0004 */  lw         $t2, 4($t1)
/* 9B140 8009A540 8F280004 */  lw         $t0, 4($t9)
/* 9B144 8009A544 010A082A */  slt        $at, $t0, $t2
/* 9B148 8009A548 10200008 */  beqz       $at, .L8009A56C
/* 9B14C 8009A54C 00000000 */   nop
/* 9B150 8009A550 3C0D800F */  lui        $t5, %hi(__osRunningThread)
/* 9B154 8009A554 8DADA610 */  lw         $t5, %lo(__osRunningThread)($t5)
/* 9B158 8009A558 240B0002 */  addiu      $t3, $zero, 2
/* 9B15C 8009A55C A5AB0010 */  sh         $t3, 0x10($t5)
/* 9B160 8009A560 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 9B164 8009A564 0C029AA4 */  jal        __osEnqueueAndYield
/* 9B168 8009A568 2484A608 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L8009A56C:
/* 9B16C 8009A56C 0C0297AC */  jal        __osRestoreInt
/* 9B170 8009A570 02002025 */   or        $a0, $s0, $zero
/* 9B174 8009A574 10000001 */  b          .L8009A57C
/* 9B178 8009A578 00000000 */   nop
.L8009A57C:
/* 9B17C 8009A57C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B180 8009A580 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B184 8009A584 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B188 8009A588 03E00008 */  jr         $ra
/* 9B18C 8009A58C 00000000 */   nop

glabel osVirtualToPhysical
/* 9B190 8009A590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B194 8009A594 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B198 8009A598 AFA40018 */  sw         $a0, 0x18($sp)
/* 9B19C 8009A59C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9B1A0 8009A5A0 3C018000 */  lui        $at, 0x8000
/* 9B1A4 8009A5A4 01C1082B */  sltu       $at, $t6, $at
/* 9B1A8 8009A5A8 1420000D */  bnez       $at, .L8009A5E0
/* 9B1AC 8009A5AC 00000000 */   nop
/* 9B1B0 8009A5B0 3C01A000 */  lui        $at, 0xa000
/* 9B1B4 8009A5B4 01C1082B */  sltu       $at, $t6, $at
/* 9B1B8 8009A5B8 10200009 */  beqz       $at, .L8009A5E0
/* 9B1BC 8009A5BC 00000000 */   nop
/* 9B1C0 8009A5C0 8FA20018 */  lw         $v0, 0x18($sp)
/* 9B1C4 8009A5C4 3C011FFF */  lui        $at, 0x1fff
/* 9B1C8 8009A5C8 3421FFFF */  ori        $at, $at, 0xffff
/* 9B1CC 8009A5CC 00417824 */  and        $t7, $v0, $at
/* 9B1D0 8009A5D0 1000001A */  b          .L8009A63C
/* 9B1D4 8009A5D4 01E01025 */   or        $v0, $t7, $zero
/* 9B1D8 8009A5D8 10000016 */  b          .L8009A634
/* 9B1DC 8009A5DC 00000000 */   nop
.L8009A5E0:
/* 9B1E0 8009A5E0 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B1E4 8009A5E4 3C01A000 */  lui        $at, 0xa000
/* 9B1E8 8009A5E8 0301082B */  sltu       $at, $t8, $at
/* 9B1EC 8009A5EC 1420000D */  bnez       $at, .L8009A624
/* 9B1F0 8009A5F0 00000000 */   nop
/* 9B1F4 8009A5F4 3C01C000 */  lui        $at, 0xc000
/* 9B1F8 8009A5F8 0301082B */  sltu       $at, $t8, $at
/* 9B1FC 8009A5FC 10200009 */  beqz       $at, .L8009A624
/* 9B200 8009A600 00000000 */   nop
/* 9B204 8009A604 8FA20018 */  lw         $v0, 0x18($sp)
/* 9B208 8009A608 3C011FFF */  lui        $at, 0x1fff
/* 9B20C 8009A60C 3421FFFF */  ori        $at, $at, 0xffff
/* 9B210 8009A610 0041C824 */  and        $t9, $v0, $at
/* 9B214 8009A614 10000009 */  b          .L8009A63C
/* 9B218 8009A618 03201025 */   or        $v0, $t9, $zero
/* 9B21C 8009A61C 10000005 */  b          .L8009A634
/* 9B220 8009A620 00000000 */   nop
.L8009A624:
/* 9B224 8009A624 0C02A9E0 */  jal        __osProbeTLB
/* 9B228 8009A628 8FA40018 */   lw        $a0, 0x18($sp)
/* 9B22C 8009A62C 10000003 */  b          .L8009A63C
/* 9B230 8009A630 00000000 */   nop
.L8009A634:
/* 9B234 8009A634 10000001 */  b          .L8009A63C
/* 9B238 8009A638 00000000 */   nop
.L8009A63C:
/* 9B23C 8009A63C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B240 8009A640 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B244 8009A644 03E00008 */  jr         $ra
/* 9B248 8009A648 00000000 */   nop
/* 9B24C 8009A64C 00000000 */  nop
