.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osViInit
/* A6930 800A5D30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6934 800A5D34 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6938 800A5D38 3C04800F */  lui        $a0, %hi(vi)
/* A693C 800A5D3C 2484A570 */  addiu      $a0, $a0, %lo(vi)
/* A6940 800A5D40 0C029C54 */  jal        _bzero
/* A6944 800A5D44 24050060 */   addiu     $a1, $zero, 0x60
/* A6948 800A5D48 3C0E800F */  lui        $t6, %hi(vi)
/* A694C 800A5D4C 25CEA570 */  addiu      $t6, $t6, %lo(vi)
/* A6950 800A5D50 3C01800F */  lui        $at, %hi(__osViCurr)
/* A6954 800A5D54 AC2EA5D0 */  sw         $t6, %lo(__osViCurr)($at)
/* A6958 800A5D58 3C0F800F */  lui        $t7, %hi(vi)
/* A695C 800A5D5C 25EFA570 */  addiu      $t7, $t7, %lo(vi)
/* A6960 800A5D60 25F80030 */  addiu      $t8, $t7, 0x30
/* A6964 800A5D64 3C01800F */  lui        $at, %hi(__osViNext)
/* A6968 800A5D68 AC38A5D4 */  sw         $t8, %lo(__osViNext)($at)
/* A696C 800A5D6C 3C08800F */  lui        $t0, %hi(__osViNext)
/* A6970 800A5D70 8D08A5D4 */  lw         $t0, %lo(__osViNext)($t0)
/* A6974 800A5D74 24190001 */  addiu      $t9, $zero, 1
/* A6978 800A5D78 A5190002 */  sh         $t9, 2($t0)
/* A697C 800A5D7C 3C0A800F */  lui        $t2, %hi(__osViCurr)
/* A6980 800A5D80 8D4AA5D0 */  lw         $t2, %lo(__osViCurr)($t2)
/* A6984 800A5D84 24090001 */  addiu      $t1, $zero, 1
/* A6988 800A5D88 A5490002 */  sh         $t1, 2($t2)
/* A698C 800A5D8C 3C0C800F */  lui        $t4, %hi(__osViNext)
/* A6990 800A5D90 8D8CA5D4 */  lw         $t4, %lo(__osViNext)($t4)
/* A6994 800A5D94 3C0B8000 */  lui        $t3, 0x8000
/* A6998 800A5D98 AD8B0004 */  sw         $t3, 4($t4)
/* A699C 800A5D9C 3C0E800F */  lui        $t6, %hi(__osViCurr)
/* A69A0 800A5DA0 8DCEA5D0 */  lw         $t6, %lo(__osViCurr)($t6)
/* A69A4 800A5DA4 3C0D8000 */  lui        $t5, 0x8000
/* A69A8 800A5DA8 ADCD0004 */  sw         $t5, 4($t6)
/* A69AC 800A5DAC 3C0F8000 */  lui        $t7, %hi(osTvType)
/* A69B0 800A5DB0 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* A69B4 800A5DB4 15E00007 */  bnez       $t7, .L800A5DD4
/* A69B8 800A5DB8 00000000 */   nop
/* A69BC 800A5DBC 3C19800F */  lui        $t9, %hi(__osViNext)
/* A69C0 800A5DC0 8F39A5D4 */  lw         $t9, %lo(__osViNext)($t9)
/* A69C4 800A5DC4 3C18800F */  lui        $t8, %hi(osViModePalLan1)
/* A69C8 800A5DC8 2718A9D0 */  addiu      $t8, $t8, %lo(osViModePalLan1)
/* A69CC 800A5DCC 10000011 */  b          .L800A5E14
/* A69D0 800A5DD0 AF380008 */   sw        $t8, 8($t9)
.L800A5DD4:
/* A69D4 800A5DD4 3C088000 */  lui        $t0, %hi(osTvType)
/* A69D8 800A5DD8 8D080300 */  lw         $t0, %lo(osTvType)($t0)
/* A69DC 800A5DDC 24010002 */  addiu      $at, $zero, 2
/* A69E0 800A5DE0 15010007 */  bne        $t0, $at, .L800A5E00
/* A69E4 800A5DE4 00000000 */   nop
/* A69E8 800A5DE8 3C0A800F */  lui        $t2, %hi(__osViNext)
/* A69EC 800A5DEC 8D4AA5D4 */  lw         $t2, %lo(__osViNext)($t2)
/* A69F0 800A5DF0 3C09800F */  lui        $t1, %hi(osViModeMpalLan1)
/* A69F4 800A5DF4 2529AA20 */  addiu      $t1, $t1, %lo(osViModeMpalLan1)
/* A69F8 800A5DF8 10000006 */  b          .L800A5E14
/* A69FC 800A5DFC AD490008 */   sw        $t1, 8($t2)
.L800A5E00:
/* A6A00 800A5E00 3C0C800F */  lui        $t4, %hi(__osViNext)
/* A6A04 800A5E04 8D8CA5D4 */  lw         $t4, %lo(__osViNext)($t4)
/* A6A08 800A5E08 3C0B800F */  lui        $t3, %hi(osViModeNtscLan1)
/* A6A0C 800A5E0C 256BA980 */  addiu      $t3, $t3, %lo(osViModeNtscLan1)
/* A6A10 800A5E10 AD8B0008 */  sw         $t3, 8($t4)
.L800A5E14:
/* A6A14 800A5E14 3C0E800F */  lui        $t6, %hi(__osViNext)
/* A6A18 800A5E18 8DCEA5D4 */  lw         $t6, %lo(__osViNext)($t6)
/* A6A1C 800A5E1C 240D0020 */  addiu      $t5, $zero, 0x20
/* A6A20 800A5E20 A5CD0000 */  sh         $t5, ($t6)
/* A6A24 800A5E24 3C0F800F */  lui        $t7, %hi(__osViNext)
/* A6A28 800A5E28 8DEFA5D4 */  lw         $t7, %lo(__osViNext)($t7)
/* A6A2C 800A5E2C 8DF80008 */  lw         $t8, 8($t7)
/* A6A30 800A5E30 8F190004 */  lw         $t9, 4($t8)
/* A6A34 800A5E34 ADF9000C */  sw         $t9, 0xc($t7)
/* A6A38 800A5E38 3C08A440 */  lui        $t0, %hi(VI_CURRENT)
/* A6A3C 800A5E3C 8D090010 */  lw         $t1, %lo(VI_CURRENT)($t0)
/* A6A40 800A5E40 2D21000B */  sltiu      $at, $t1, 0xb
/* A6A44 800A5E44 14200006 */  bnez       $at, .L800A5E60
/* A6A48 800A5E48 00000000 */   nop
.L800A5E4C:
/* A6A4C 800A5E4C 3C0AA440 */  lui        $t2, %hi(VI_CURRENT)
/* A6A50 800A5E50 8D4B0010 */  lw         $t3, %lo(VI_CURRENT)($t2)
/* A6A54 800A5E54 2D61000B */  sltiu      $at, $t3, 0xb
/* A6A58 800A5E58 1020FFFC */  beqz       $at, .L800A5E4C
/* A6A5C 800A5E5C 00000000 */   nop
.L800A5E60:
/* A6A60 800A5E60 3C0CA440 */  lui        $t4, 0xa440
/* A6A64 800A5E64 AD800000 */  sw         $zero, ($t4)
/* A6A68 800A5E68 0C029E18 */  jal        __osViSwapContext
/* A6A6C 800A5E6C 00000000 */   nop
/* A6A70 800A5E70 10000001 */  b          .L800A5E78
/* A6A74 800A5E74 00000000 */   nop
.L800A5E78:
/* A6A78 800A5E78 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6A7C 800A5E7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A6A80 800A5E80 03E00008 */  jr         $ra
/* A6A84 800A5E84 00000000 */   nop
/* A6A88 800A5E88 00000000 */  nop
/* A6A8C 800A5E8C 00000000 */  nop
