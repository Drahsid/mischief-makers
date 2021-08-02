.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osPiCreateAccessQueue
/* A8A20 800A7E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8A24 800A7E24 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8A28 800A7E28 240E0001 */  addiu      $t6, $zero, 1
/* A8A2C 800A7E2C 3C01800F */  lui        $at, %hi(__osPiAccessQueueEnabled)
/* A8A30 800A7E30 AC2EA630 */  sw         $t6, %lo(__osPiAccessQueueEnabled)($at)
/* A8A34 800A7E34 3C048018 */  lui        $a0, %hi(__osPiAccessQueue)
/* A8A38 800A7E38 3C058018 */  lui        $a1, %hi(siacs_bss_0000)
/* A8A3C 800A7E3C 24A55830 */  addiu      $a1, $a1, %lo(siacs_bss_0000)
/* A8A40 800A7E40 24845838 */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* A8A44 800A7E44 0C026994 */  jal        osCreateMesgQueue
/* A8A48 800A7E48 24060001 */   addiu     $a2, $zero, 1
/* A8A4C 800A7E4C 3C048018 */  lui        $a0, %hi(__osPiAccessQueue)
/* A8A50 800A7E50 24845838 */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* A8A54 800A7E54 00002825 */  or         $a1, $zero, $zero
/* A8A58 800A7E58 0C0278BC */  jal        osSendMesg
/* A8A5C 800A7E5C 00003025 */   or        $a2, $zero, $zero
/* A8A60 800A7E60 10000001 */  b          .L800A7E68
/* A8A64 800A7E64 00000000 */   nop
.L800A7E68:
/* A8A68 800A7E68 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8A6C 800A7E6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A8A70 800A7E70 03E00008 */  jr         $ra
/* A8A74 800A7E74 00000000 */   nop

glabel __osPiGetAccess
/* A8A78 800A7E78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A8A7C 800A7E7C AFBF0014 */  sw         $ra, 0x14($sp)
/* A8A80 800A7E80 3C0E800F */  lui        $t6, %hi(__osPiAccessQueueEnabled)
/* A8A84 800A7E84 8DCEA630 */  lw         $t6, %lo(__osPiAccessQueueEnabled)($t6)
/* A8A88 800A7E88 15C00003 */  bnez       $t6, .L800A7E98
/* A8A8C 800A7E8C 00000000 */   nop
/* A8A90 800A7E90 0C029F88 */  jal        __osPiCreateAccessQueue
/* A8A94 800A7E94 00000000 */   nop
.L800A7E98:
/* A8A98 800A7E98 3C048018 */  lui        $a0, %hi(__osPiAccessQueue)
/* A8A9C 800A7E9C 24845838 */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* A8AA0 800A7EA0 27A5001C */  addiu      $a1, $sp, 0x1c
/* A8AA4 800A7EA4 0C026B44 */  jal        osRecvMesg
/* A8AA8 800A7EA8 24060001 */   addiu     $a2, $zero, 1
/* A8AAC 800A7EAC 10000001 */  b          .L800A7EB4
/* A8AB0 800A7EB0 00000000 */   nop
.L800A7EB4:
/* A8AB4 800A7EB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8AB8 800A7EB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A8ABC 800A7EBC 03E00008 */  jr         $ra
/* A8AC0 800A7EC0 00000000 */   nop

glabel __osPiRelAccess
/* A8AC4 800A7EC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8AC8 800A7EC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8ACC 800A7ECC 3C048018 */  lui        $a0, %hi(__osPiAccessQueue)
/* A8AD0 800A7ED0 24845838 */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* A8AD4 800A7ED4 00002825 */  or         $a1, $zero, $zero
/* A8AD8 800A7ED8 0C0278BC */  jal        osSendMesg
/* A8ADC 800A7EDC 00003025 */   or        $a2, $zero, $zero
/* A8AE0 800A7EE0 10000001 */  b          .L800A7EE8
/* A8AE4 800A7EE4 00000000 */   nop
.L800A7EE8:
/* A8AE8 800A7EE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8AEC 800A7EEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A8AF0 800A7EF0 03E00008 */  jr         $ra
/* A8AF4 800A7EF4 00000000 */   nop
/* A8AF8 800A7EF8 00000000 */  nop
/* A8AFC 800A7EFC 00000000 */  nop
