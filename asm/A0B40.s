.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSeqpStop
/* A0B40 8009FF40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0B44 8009FF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0B48 8009FF48 AFA40028 */  sw         $a0, 0x28($sp)
/* A0B4C 8009FF4C 240E0011 */  addiu      $t6, $zero, 0x11
/* A0B50 8009FF50 A7AE0018 */  sh         $t6, 0x18($sp)
/* A0B54 8009FF54 8FA40028 */  lw         $a0, 0x28($sp)
/* A0B58 8009FF58 27A50018 */  addiu      $a1, $sp, 0x18
/* A0B5C 8009FF5C 00003025 */  or         $a2, $zero, $zero
/* A0B60 8009FF60 0C02B620 */  jal        alEvtqPostEvent
/* A0B64 8009FF64 24840048 */   addiu     $a0, $a0, 0x48
/* A0B68 8009FF68 10000001 */  b          .L8009FF70
/* A0B6C 8009FF6C 00000000 */   nop
.L8009FF70:
/* A0B70 8009FF70 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0B74 8009FF74 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0B78 8009FF78 03E00008 */  jr         $ra
/* A0B7C 8009FF7C 00000000 */   nop

glabel alSeqpSetChlVol
/* A0B80 8009FF80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0B84 8009FF84 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0B88 8009FF88 AFA40028 */  sw         $a0, 0x28($sp)
/* A0B8C 8009FF8C AFA5002C */  sw         $a1, 0x2c($sp)
/* A0B90 8009FF90 AFA60030 */  sw         $a2, 0x30($sp)
/* A0B94 8009FF94 240E0002 */  addiu      $t6, $zero, 2
/* A0B98 8009FF98 A7AE0018 */  sh         $t6, 0x18($sp)
/* A0B9C 8009FF9C AFA0001C */  sw         $zero, 0x1c($sp)
/* A0BA0 8009FFA0 93AF002F */  lbu        $t7, 0x2f($sp)
/* A0BA4 8009FFA4 35F800B0 */  ori        $t8, $t7, 0xb0
/* A0BA8 8009FFA8 A3B80020 */  sb         $t8, 0x20($sp)
/* A0BAC 8009FFAC 24190007 */  addiu      $t9, $zero, 7
/* A0BB0 8009FFB0 A3B90021 */  sb         $t9, 0x21($sp)
/* A0BB4 8009FFB4 93A80033 */  lbu        $t0, 0x33($sp)
/* A0BB8 8009FFB8 A3A80022 */  sb         $t0, 0x22($sp)
/* A0BBC 8009FFBC 8FA40028 */  lw         $a0, 0x28($sp)
/* A0BC0 8009FFC0 27A50018 */  addiu      $a1, $sp, 0x18
/* A0BC4 8009FFC4 00003025 */  or         $a2, $zero, $zero
/* A0BC8 8009FFC8 0C02B620 */  jal        alEvtqPostEvent
/* A0BCC 8009FFCC 24840048 */   addiu     $a0, $a0, 0x48
/* A0BD0 8009FFD0 10000001 */  b          .L8009FFD8
/* A0BD4 8009FFD4 00000000 */   nop
.L8009FFD8:
/* A0BD8 8009FFD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0BDC 8009FFDC 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0BE0 8009FFE0 03E00008 */  jr         $ra
/* A0BE4 8009FFE4 00000000 */   nop
/* A0BE8 8009FFE8 00000000 */  nop
/* A0BEC 8009FFEC 00000000 */  nop
