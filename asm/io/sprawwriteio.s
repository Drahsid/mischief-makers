.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpRawWriteIo
/* B6500 800B5900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6504 800B5904 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6508 800B5908 AFA40018 */  sw         $a0, 0x18($sp)
/* B650C 800B590C AFA5001C */  sw         $a1, 0x1c($sp)
/* B6510 800B5910 8FAE0018 */  lw         $t6, 0x18($sp)
/* B6514 800B5914 31CF0003 */  andi       $t7, $t6, 3
/* B6518 800B5918 15E00003 */  bnez       $t7, .L800B5928
/* B651C 800B591C 00000000 */   nop
/* B6520 800B5920 10000007 */  b          .L800B5940
/* B6524 800B5924 00000000 */   nop
.L800B5928:
/* B6528 800B5928 3C04800F */  lui        $a0, %hi(D_800EE7F0)
/* B652C 800B592C 3C05800F */  lui        $a1, %hi(D_800EE808)
/* B6530 800B5930 24A5E808 */  addiu      $a1, $a1, %lo(D_800EE808)
/* B6534 800B5934 2484E7F0 */  addiu      $a0, $a0, %lo(D_800EE7F0)
/* B6538 800B5938 0C026E74 */  jal        __assert
/* B653C 800B593C 24060033 */   addiu     $a2, $zero, 0x33
.L800B5940:
/* B6540 800B5940 0C02ABC0 */  jal        __osSpDeviceBusy
/* B6544 800B5944 00000000 */   nop
/* B6548 800B5948 10400003 */  beqz       $v0, .L800B5958
/* B654C 800B594C 00000000 */   nop
/* B6550 800B5950 1000000A */  b          .L800B597C
/* B6554 800B5954 2402FFFF */   addiu     $v0, $zero, -1
.L800B5958:
/* B6558 800B5958 8FB90018 */  lw         $t9, 0x18($sp)
/* B655C 800B595C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B6560 800B5960 3C01A000 */  lui        $at, 0xa000
/* B6564 800B5964 03214025 */  or         $t0, $t9, $at
/* B6568 800B5968 AD180000 */  sw         $t8, ($t0)
/* B656C 800B596C 10000003 */  b          .L800B597C
/* B6570 800B5970 00001025 */   or        $v0, $zero, $zero
/* B6574 800B5974 10000001 */  b          .L800B597C
/* B6578 800B5978 00000000 */   nop
.L800B597C:
/* B657C 800B597C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6580 800B5980 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6584 800B5984 03E00008 */  jr         $ra
/* B6588 800B5988 00000000 */   nop
/* B658C 800B598C 00000000 */  nop
