.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ADDA0
/* AE9A0 800ADDA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE9A4 800ADDA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE9A8 800ADDA8 AFA40020 */  sw         $a0, 0x20($sp)
/* AE9AC 800ADDAC AFA50024 */  sw         $a1, 0x24($sp)
/* AE9B0 800ADDB0 AFA60028 */  sw         $a2, 0x28($sp)
/* AE9B4 800ADDB4 AFA7002C */  sw         $a3, 0x2c($sp)
/* AE9B8 800ADDB8 8FAE0024 */  lw         $t6, 0x24($sp)
/* AE9BC 800ADDBC 8DCF0008 */  lw         $t7, 8($t6)
/* AE9C0 800ADDC0 11E0002C */  beqz       $t7, .L800ADE74
/* AE9C4 800ADDC4 00000000 */   nop
/* AE9C8 800ADDC8 0C027AE8 */  jal        func_8009EBA0
/* AE9CC 800ADDCC 00000000 */   nop
/* AE9D0 800ADDD0 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE9D4 800ADDD4 8FB8001C */  lw         $t8, 0x1c($sp)
/* AE9D8 800ADDD8 17000006 */  bnez       $t8, .L800ADDF4
/* AE9DC 800ADDDC 00000000 */   nop
/* AE9E0 800ADDE0 2404006A */  addiu      $a0, $zero, 0x6a
/* AE9E4 800ADDE4 0C0297B4 */  jal        func_800A5ED0
/* AE9E8 800ADDE8 00002825 */   or        $a1, $zero, $zero
/* AE9EC 800ADDEC 10000023 */  b          .L800ADE7C
/* AE9F0 800ADDF0 00000000 */   nop
.L800ADDF4:
/* AE9F4 800ADDF4 8FA90024 */  lw         $t1, 0x24($sp)
/* AE9F8 800ADDF8 8FB90020 */  lw         $t9, 0x20($sp)
/* AE9FC 800ADDFC 8FAD001C */  lw         $t5, 0x1c($sp)
/* AEA00 800ADE00 8D2A0008 */  lw         $t2, 8($t1)
/* AEA04 800ADE04 8F28001C */  lw         $t0, 0x1c($t9)
/* AEA08 800ADE08 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* AEA0C 800ADE0C 010B6021 */  addu       $t4, $t0, $t3
/* AEA10 800ADE10 ADAC0004 */  sw         $t4, 4($t5)
/* AEA14 800ADE14 8FAF001C */  lw         $t7, 0x1c($sp)
/* AEA18 800ADE18 240E000B */  addiu      $t6, $zero, 0xb
/* AEA1C 800ADE1C A5EE0008 */  sh         $t6, 8($t7)
/* AEA20 800ADE20 87B8002A */  lh         $t8, 0x2a($sp)
/* AEA24 800ADE24 8FB9001C */  lw         $t9, 0x1c($sp)
/* AEA28 800ADE28 AF38000C */  sw         $t8, 0xc($t9)
/* AEA2C 800ADE2C 8FA40020 */  lw         $a0, 0x20($sp)
/* AEA30 800ADE30 0C027B50 */  jal        func_8009ED40
/* AEA34 800ADE34 8FA5002C */   lw        $a1, 0x2c($sp)
/* AEA38 800ADE38 8FA9001C */  lw         $t1, 0x1c($sp)
/* AEA3C 800ADE3C AD220010 */  sw         $v0, 0x10($t1)
/* AEA40 800ADE40 8FAA001C */  lw         $t2, 0x1c($sp)
/* AEA44 800ADE44 AD400000 */  sw         $zero, ($t2)
/* AEA48 800ADE48 8FA80024 */  lw         $t0, 0x24($sp)
/* AEA4C 800ADE4C 8D0B0008 */  lw         $t3, 8($t0)
/* AEA50 800ADE50 8D6C000C */  lw         $t4, 0xc($t3)
/* AEA54 800ADE54 AFAC0018 */  sw         $t4, 0x18($sp)
/* AEA58 800ADE58 8FAD0018 */  lw         $t5, 0x18($sp)
/* AEA5C 800ADE5C 24050003 */  addiu      $a1, $zero, 3
/* AEA60 800ADE60 8FA6001C */  lw         $a2, 0x1c($sp)
/* AEA64 800ADE64 8DB90008 */  lw         $t9, 8($t5)
/* AEA68 800ADE68 01A02025 */  or         $a0, $t5, $zero
/* AEA6C 800ADE6C 0320F809 */  jalr       $t9
/* AEA70 800ADE70 00000000 */   nop
.L800ADE74:
/* AEA74 800ADE74 10000001 */  b          .L800ADE7C
/* AEA78 800ADE78 00000000 */   nop
.L800ADE7C:
/* AEA7C 800ADE7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEA80 800ADE80 27BD0020 */  addiu      $sp, $sp, 0x20
/* AEA84 800ADE84 03E00008 */  jr         $ra
/* AEA88 800ADE88 00000000 */   nop
/* AEA8C 800ADE8C 00000000 */  nop
