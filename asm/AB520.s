.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AA920
/* AB520 800AA920 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB524 800AA924 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB528 800AA928 AFA40018 */  sw         $a0, 0x18($sp)
/* AB52C 800AA92C AFA5001C */  sw         $a1, 0x1c($sp)
/* AB530 800AA930 8FAE001C */  lw         $t6, 0x1c($sp)
/* AB534 800AA934 31CF0003 */  andi       $t7, $t6, 3
/* AB538 800AA938 15E00003 */  bnez       $t7, .L800AA948
/* AB53C 800AA93C 00000000 */   nop
/* AB540 800AA940 10000007 */  b          .L800AA960
/* AB544 800AA944 00000000 */   nop
.L800AA948:
/* AB548 800AA948 3C04800F */  lui        $a0, %hi(D_800EDEE0)
/* AB54C 800AA94C 3C05800F */  lui        $a1, %hi(D_800EDEFC)
/* AB550 800AA950 24A5DEFC */  addiu      $a1, $a1, %lo(D_800EDEFC)
/* AB554 800AA954 2484DEE0 */  addiu      $a0, $a0, %lo(D_800EDEE0)
/* AB558 800AA958 0C026E74 */  jal        func_8009B9D0
/* AB55C 800AA95C 24060037 */   addiu     $a2, $zero, 0x37
.L800AA960:
/* AB560 800AA960 0C02D54C */  jal        func_800B5530
/* AB564 800AA964 00000000 */   nop
/* AB568 800AA968 10400003 */  beqz       $v0, .L800AA978
/* AB56C 800AA96C 00000000 */   nop
/* AB570 800AA970 10000022 */  b          .L800AA9FC
/* AB574 800AA974 2402FFFF */   addiu     $v0, $zero, -1
.L800AA978:
/* AB578 800AA978 8FB80018 */  lw         $t8, 0x18($sp)
/* AB57C 800AA97C 24010001 */  addiu      $at, $zero, 1
/* AB580 800AA980 17010004 */  bne        $t8, $at, .L800AA994
/* AB584 800AA984 00000000 */   nop
/* AB588 800AA988 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB58C 800AA98C 0C029BC4 */  jal        func_800A6F10
/* AB590 800AA990 24050040 */   addiu     $a1, $zero, 0x40
.L800AA994:
/* AB594 800AA994 0C026964 */  jal        func_8009A590
/* AB598 800AA998 8FA4001C */   lw        $a0, 0x1c($sp)
/* AB59C 800AA99C 3C19A480 */  lui        $t9, 0xa480
/* AB5A0 800AA9A0 AF220000 */  sw         $v0, ($t9)
/* AB5A4 800AA9A4 8FA80018 */  lw         $t0, 0x18($sp)
/* AB5A8 800AA9A8 15000006 */  bnez       $t0, .L800AA9C4
/* AB5AC 800AA9AC 00000000 */   nop
/* AB5B0 800AA9B0 3C091FC0 */  lui        $t1, 0x1fc0
/* AB5B4 800AA9B4 352907C0 */  ori        $t1, $t1, 0x7c0
/* AB5B8 800AA9B8 3C0AA480 */  lui        $t2, %hi(D_A4800004)
/* AB5BC 800AA9BC 10000005 */  b          .L800AA9D4
/* AB5C0 800AA9C0 AD490004 */   sw        $t1, %lo(D_A4800004)($t2)
.L800AA9C4:
/* AB5C4 800AA9C4 3C0B1FC0 */  lui        $t3, 0x1fc0
/* AB5C8 800AA9C8 356B07C0 */  ori        $t3, $t3, 0x7c0
/* AB5CC 800AA9CC 3C0CA480 */  lui        $t4, %hi(D_A4800010)
/* AB5D0 800AA9D0 AD8B0010 */  sw         $t3, %lo(D_A4800010)($t4)
.L800AA9D4:
/* AB5D4 800AA9D4 8FAD0018 */  lw         $t5, 0x18($sp)
/* AB5D8 800AA9D8 15A00004 */  bnez       $t5, .L800AA9EC
/* AB5DC 800AA9DC 00000000 */   nop
/* AB5E0 800AA9E0 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB5E4 800AA9E4 0C026DB8 */  jal        func_8009B6E0
/* AB5E8 800AA9E8 24050040 */   addiu     $a1, $zero, 0x40
.L800AA9EC:
/* AB5EC 800AA9EC 10000003 */  b          .L800AA9FC
/* AB5F0 800AA9F0 00001025 */   or        $v0, $zero, $zero
/* AB5F4 800AA9F4 10000001 */  b          .L800AA9FC
/* AB5F8 800AA9F8 00000000 */   nop
.L800AA9FC:
/* AB5FC 800AA9FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB600 800AAA00 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB604 800AAA04 03E00008 */  jr         $ra
/* AB608 800AAA08 00000000 */   nop
/* AB60C 800AAA0C 00000000 */  nop
