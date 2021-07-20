.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A6E80
/* A7A80 800A6E80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7A84 800A6E84 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7A88 800A6E88 AFA40018 */  sw         $a0, 0x18($sp)
/* A7A8C 800A6E8C AFA5001C */  sw         $a1, 0x1c($sp)
/* A7A90 800A6E90 8FAE0018 */  lw         $t6, 0x18($sp)
/* A7A94 800A6E94 31CF0003 */  andi       $t7, $t6, 3
/* A7A98 800A6E98 15E00003 */  bnez       $t7, .L800A6EA8
/* A7A9C 800A6E9C 00000000 */   nop
/* A7AA0 800A6EA0 10000007 */  b          .L800A6EC0
/* A7AA4 800A6EA4 00000000 */   nop
.L800A6EA8:
/* A7AA8 800A6EA8 3C04800F */  lui        $a0, %hi(D_800EDB40)
/* A7AAC 800A6EAC 3C05800F */  lui        $a1, %hi(D_800EDB58)
/* A7AB0 800A6EB0 24A5DB58 */  addiu      $a1, $a1, %lo(D_800EDB58)
/* A7AB4 800A6EB4 2484DB40 */  addiu      $a0, $a0, %lo(D_800EDB40)
/* A7AB8 800A6EB8 0C026E74 */  jal        func_8009B9D0
/* A7ABC 800A6EBC 24060034 */   addiu     $a2, $zero, 0x34
.L800A6EC0:
/* A7AC0 800A6EC0 0C02D54C */  jal        func_800B5530
/* A7AC4 800A6EC4 00000000 */   nop
/* A7AC8 800A6EC8 10400003 */  beqz       $v0, .L800A6ED8
/* A7ACC 800A6ECC 00000000 */   nop
/* A7AD0 800A6ED0 1000000A */  b          .L800A6EFC
/* A7AD4 800A6ED4 2402FFFF */   addiu     $v0, $zero, -1
.L800A6ED8:
/* A7AD8 800A6ED8 8FB90018 */  lw         $t9, 0x18($sp)
/* A7ADC 800A6EDC 8FB8001C */  lw         $t8, 0x1c($sp)
/* A7AE0 800A6EE0 3C01A000 */  lui        $at, 0xa000
/* A7AE4 800A6EE4 03214025 */  or         $t0, $t9, $at
/* A7AE8 800A6EE8 AD180000 */  sw         $t8, ($t0)
/* A7AEC 800A6EEC 10000003 */  b          .L800A6EFC
/* A7AF0 800A6EF0 00001025 */   or        $v0, $zero, $zero
/* A7AF4 800A6EF4 10000001 */  b          .L800A6EFC
/* A7AF8 800A6EF8 00000000 */   nop
.L800A6EFC:
/* A7AFC 800A6EFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7B00 800A6F00 27BD0018 */  addiu      $sp, $sp, 0x18
/* A7B04 800A6F04 03E00008 */  jr         $ra
/* A7B08 800A6F08 00000000 */   nop
/* A7B0C 800A6F0C 00000000 */  nop
