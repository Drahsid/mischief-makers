.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetEvent
/* 9B5B0 8009A9B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B5B4 8009A9B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B5B8 8009A9B8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9B5BC 8009A9BC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B5C0 8009A9C0 AFA60030 */  sw         $a2, 0x30($sp)
/* 9B5C4 8009A9C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 9B5C8 8009A9C8 3C0E800F */  lui        $t6, %hi(__osViDevMgr)
/* 9B5CC 8009A9CC 8DCE9790 */  lw         $t6, %lo(__osViDevMgr)($t6)
/* 9B5D0 8009A9D0 15C00006 */  bnez       $t6, .L8009A9EC
/* 9B5D4 8009A9D4 00000000 */   nop
/* 9B5D8 8009A9D8 2404002E */  addiu      $a0, $zero, 0x2e
/* 9B5DC 8009A9DC 0C0297B4 */  jal        __osError
/* 9B5E0 8009A9E0 00002825 */   or        $a1, $zero, $zero
/* 9B5E4 8009A9E4 1000001F */  b          .L8009AA64
/* 9B5E8 8009A9E8 00000000 */   nop
.L8009A9EC:
/* 9B5EC 8009A9EC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9B5F0 8009A9F0 11E00003 */  beqz       $t7, .L8009AA00
/* 9B5F4 8009A9F4 00000000 */   nop
/* 9B5F8 8009A9F8 10000007 */  b          .L8009AA18
/* 9B5FC 8009A9FC 00000000 */   nop
.L8009AA00:
/* 9B600 8009AA00 3C04800F */  lui        $a0, %hi(visetevent_rodata_0000)
/* 9B604 8009AA04 3C05800F */  lui        $a1, %hi(visetevent_rodata_000C)
/* 9B608 8009AA08 24A5D6AC */  addiu      $a1, $a1, %lo(visetevent_rodata_000C)
/* 9B60C 8009AA0C 2484D6A0 */  addiu      $a0, $a0, %lo(visetevent_rodata_0000)
/* 9B610 8009AA10 0C026E74 */  jal        __assert
/* 9B614 8009AA14 2406003D */   addiu     $a2, $zero, 0x3d
.L8009AA18:
/* 9B618 8009AA18 0C0297A4 */  jal        __osDisableInt
/* 9B61C 8009AA1C 00000000 */   nop
/* 9B620 8009AA20 00408025 */  or         $s0, $v0, $zero
/* 9B624 8009AA24 3C19800F */  lui        $t9, %hi(__osViNext)
/* 9B628 8009AA28 8F39A5D4 */  lw         $t9, %lo(__osViNext)($t9)
/* 9B62C 8009AA2C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B630 8009AA30 AF380010 */  sw         $t8, 0x10($t9)
/* 9B634 8009AA34 3C09800F */  lui        $t1, %hi(__osViNext)
/* 9B638 8009AA38 8D29A5D4 */  lw         $t1, %lo(__osViNext)($t1)
/* 9B63C 8009AA3C 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9B640 8009AA40 AD280014 */  sw         $t0, 0x14($t1)
/* 9B644 8009AA44 3C0B800F */  lui        $t3, %hi(__osViNext)
/* 9B648 8009AA48 8D6BA5D4 */  lw         $t3, %lo(__osViNext)($t3)
/* 9B64C 8009AA4C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9B650 8009AA50 A56A0002 */  sh         $t2, 2($t3)
/* 9B654 8009AA54 0C0297AC */  jal        __osRestoreInt
/* 9B658 8009AA58 02002025 */   or        $a0, $s0, $zero
/* 9B65C 8009AA5C 10000001 */  b          .L8009AA64
/* 9B660 8009AA60 00000000 */   nop
.L8009AA64:
/* 9B664 8009AA64 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9B668 8009AA68 8FB00018 */  lw         $s0, 0x18($sp)
/* 9B66C 8009AA6C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B670 8009AA70 03E00008 */  jr         $ra
/* 9B674 8009AA74 00000000 */   nop
/* 9B678 8009AA78 00000000 */  nop
/* 9B67C 8009AA7C 00000000 */  nop
