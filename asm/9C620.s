.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009BA20
/* 9C620 8009BA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C624 8009BA24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C628 8009BA28 AFA40018 */  sw         $a0, 0x18($sp)
/* 9C62C 8009BA2C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9C630 8009BA30 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9C634 8009BA34 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9C638 8009BA38 15C00008 */  bnez       $t6, .L8009BA5C
/* 9C63C 8009BA3C 00000000 */   nop
/* 9C640 8009BA40 8FAF0018 */  lw         $t7, 0x18($sp)
/* 9C644 8009BA44 3C01800F */  lui        $at, %hi(D_800EA520)
/* 9C648 8009BA48 AC2FA520 */  sw         $t7, %lo(D_800EA520)($at)
/* 9C64C 8009BA4C 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 9C650 8009BA50 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* 9C654 8009BA54 0C027950 */  jal        func_8009E540
/* 9C658 8009BA58 8FA5001C */   lw        $a1, 0x1c($sp)
.L8009BA5C:
/* 9C65C 8009BA5C 10000001 */  b          .L8009BA64
/* 9C660 8009BA60 00000000 */   nop
.L8009BA64:
/* 9C664 8009BA64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C668 8009BA68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9C66C 8009BA6C 03E00008 */  jr         $ra
/* 9C670 8009BA70 00000000 */   nop

glabel func_8009BA74
/* 9C674 8009BA74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C678 8009BA78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C67C 8009BA7C AFA40018 */  sw         $a0, 0x18($sp)
/* 9C680 8009BA80 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9C684 8009BA84 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9C688 8009BA88 11C00005 */  beqz       $t6, .L8009BAA0
/* 9C68C 8009BA8C 00000000 */   nop
/* 9C690 8009BA90 0C02AC8C */  jal        func_800AB230
/* 9C694 8009BA94 8FA40018 */   lw        $a0, 0x18($sp)
/* 9C698 8009BA98 3C01800F */  lui        $at, %hi(D_800EA520)
/* 9C69C 8009BA9C AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
.L8009BAA0:
/* 9C6A0 8009BAA0 10000001 */  b          .L8009BAA8
/* 9C6A4 8009BAA4 00000000 */   nop
.L8009BAA8:
/* 9C6A8 8009BAA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C6AC 8009BAAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9C6B0 8009BAB0 03E00008 */  jr         $ra
/* 9C6B4 8009BAB4 00000000 */   nop

glabel func_8009BAB8
/* 9C6B8 8009BAB8 8CAE0000 */  lw         $t6, ($a1)
/* 9C6BC 8009BABC AC8E0000 */  sw         $t6, ($a0)
/* 9C6C0 8009BAC0 AC850004 */  sw         $a1, 4($a0)
/* 9C6C4 8009BAC4 8CAF0000 */  lw         $t7, ($a1)
/* 9C6C8 8009BAC8 11E00003 */  beqz       $t7, .L8009BAD8
/* 9C6CC 8009BACC 00000000 */   nop
/* 9C6D0 8009BAD0 8CB80000 */  lw         $t8, ($a1)
/* 9C6D4 8009BAD4 AF040004 */  sw         $a0, 4($t8)
.L8009BAD8:
/* 9C6D8 8009BAD8 ACA40000 */  sw         $a0, ($a1)
/* 9C6DC 8009BADC 03E00008 */  jr         $ra
/* 9C6E0 8009BAE0 00000000 */   nop

glabel func_8009BAE4
/* 9C6E4 8009BAE4 03E00008 */  jr         $ra
/* 9C6E8 8009BAE8 00000000 */   nop

glabel func_8009BAEC
/* 9C6EC 8009BAEC 8C8E0000 */  lw         $t6, ($a0)
/* 9C6F0 8009BAF0 11C00004 */  beqz       $t6, .L8009BB04
/* 9C6F4 8009BAF4 00000000 */   nop
/* 9C6F8 8009BAF8 8C8F0004 */  lw         $t7, 4($a0)
/* 9C6FC 8009BAFC 8C980000 */  lw         $t8, ($a0)
/* 9C700 8009BB00 AF0F0004 */  sw         $t7, 4($t8)
.L8009BB04:
/* 9C704 8009BB04 8C990004 */  lw         $t9, 4($a0)
/* 9C708 8009BB08 13200004 */  beqz       $t9, .L8009BB1C
/* 9C70C 8009BB0C 00000000 */   nop
/* 9C710 8009BB10 8C880000 */  lw         $t0, ($a0)
/* 9C714 8009BB14 8C890004 */  lw         $t1, 4($a0)
/* 9C718 8009BB18 AD280000 */  sw         $t0, ($t1)
.L8009BB1C:
/* 9C71C 8009BB1C 03E00008 */  jr         $ra
/* 9C720 8009BB20 00000000 */   nop

glabel func_8009BB24
/* 9C724 8009BB24 03E00008 */  jr         $ra
/* 9C728 8009BB28 00000000 */   nop
/* 9C72C 8009BB2C 00000000 */  nop
