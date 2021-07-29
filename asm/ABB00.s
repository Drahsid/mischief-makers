.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpDeviceBusy
/* ABB00 800AAF00 27BDFFF8 */  addiu      $sp, $sp, -8
/* ABB04 800AAF04 3C0EA404 */  lui        $t6, %hi(SP_STATUS)
/* ABB08 800AAF08 8DC40010 */  lw         $a0, %lo(SP_STATUS)($t6)
/* ABB0C 800AAF0C 308F001C */  andi       $t7, $a0, 0x1c
/* ABB10 800AAF10 11E00005 */  beqz       $t7, .L800AAF28
/* ABB14 800AAF14 00000000 */   nop
/* ABB18 800AAF18 10000007 */  b          .L800AAF38
/* ABB1C 800AAF1C 24020001 */   addiu     $v0, $zero, 1
/* ABB20 800AAF20 10000003 */  b          .L800AAF30
/* ABB24 800AAF24 00000000 */   nop
.L800AAF28:
/* ABB28 800AAF28 10000003 */  b          .L800AAF38
/* ABB2C 800AAF2C 00001025 */   or        $v0, $zero, $zero
.L800AAF30:
/* ABB30 800AAF30 10000001 */  b          .L800AAF38
/* ABB34 800AAF34 00000000 */   nop
.L800AAF38:
/* ABB38 800AAF38 03E00008 */  jr         $ra
/* ABB3C 800AAF3C 27BD0008 */   addiu     $sp, $sp, 8

glabel osSetTimer
/* ABB40 800AAF40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ABB44 800AAF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* ABB48 800AAF48 AFA40020 */  sw         $a0, 0x20($sp)
/* ABB4C 800AAF4C AFA60028 */  sw         $a2, 0x28($sp)
/* ABB50 800AAF50 AFA7002C */  sw         $a3, 0x2c($sp)
/* ABB54 800AAF54 3C0E800F */  lui        $t6, %hi(__osViDevMgr)
/* ABB58 800AAF58 8DCE9790 */  lw         $t6, %lo(__osViDevMgr)($t6)
/* ABB5C 800AAF5C 15C00006 */  bnez       $t6, .L800AAF78
/* ABB60 800AAF60 00000000 */   nop
/* ABB64 800AAF64 2404004C */  addiu      $a0, $zero, 0x4c
/* ABB68 800AAF68 0C0297B4 */  jal        __osError
/* ABB6C 800AAF6C 00002825 */   or        $a1, $zero, $zero
/* ABB70 800AAF70 10000030 */  b          .L800AB034
/* ABB74 800AAF74 00001025 */   or        $v0, $zero, $zero
.L800AAF78:
/* ABB78 800AAF78 8FAF0020 */  lw         $t7, 0x20($sp)
/* ABB7C 800AAF7C ADE00000 */  sw         $zero, ($t7)
/* ABB80 800AAF80 8FB80020 */  lw         $t8, 0x20($sp)
/* ABB84 800AAF84 AF000004 */  sw         $zero, 4($t8)
/* ABB88 800AAF88 8FB90020 */  lw         $t9, 0x20($sp)
/* ABB8C 800AAF8C 8FA80030 */  lw         $t0, 0x30($sp)
/* ABB90 800AAF90 8FA90034 */  lw         $t1, 0x34($sp)
/* ABB94 800AAF94 AF280008 */  sw         $t0, 8($t9)
/* ABB98 800AAF98 AF29000C */  sw         $t1, 0xc($t9)
/* ABB9C 800AAF9C 8FAA0028 */  lw         $t2, 0x28($sp)
/* ABBA0 800AAFA0 8FAB002C */  lw         $t3, 0x2c($sp)
/* ABBA4 800AAFA4 15400003 */  bnez       $t2, .L800AAFB4
/* ABBA8 800AAFA8 00000000 */   nop
/* ABBAC 800AAFAC 11600005 */  beqz       $t3, .L800AAFC4
/* ABBB0 800AAFB0 00000000 */   nop
.L800AAFB4:
/* ABBB4 800AAFB4 8FAC0020 */  lw         $t4, 0x20($sp)
/* ABBB8 800AAFB8 AD8A0010 */  sw         $t2, 0x10($t4)
/* ABBBC 800AAFBC 10000006 */  b          .L800AAFD8
/* ABBC0 800AAFC0 AD8B0014 */   sw        $t3, 0x14($t4)
.L800AAFC4:
/* ABBC4 800AAFC4 8FAD0020 */  lw         $t5, 0x20($sp)
/* ABBC8 800AAFC8 8FAE0030 */  lw         $t6, 0x30($sp)
/* ABBCC 800AAFCC 8FAF0034 */  lw         $t7, 0x34($sp)
/* ABBD0 800AAFD0 ADAE0010 */  sw         $t6, 0x10($t5)
/* ABBD4 800AAFD4 ADAF0014 */  sw         $t7, 0x14($t5)
.L800AAFD8:
/* ABBD8 800AAFD8 8FB80038 */  lw         $t8, 0x38($sp)
/* ABBDC 800AAFDC 8FA80020 */  lw         $t0, 0x20($sp)
/* ABBE0 800AAFE0 AD180018 */  sw         $t8, 0x18($t0)
/* ABBE4 800AAFE4 8FA9003C */  lw         $t1, 0x3c($sp)
/* ABBE8 800AAFE8 8FB90020 */  lw         $t9, 0x20($sp)
/* ABBEC 800AAFEC AF29001C */  sw         $t1, 0x1c($t9)
/* ABBF0 800AAFF0 0C029D8F */  jal        __osInsertTimer
/* ABBF4 800AAFF4 8FA40020 */   lw        $a0, 0x20($sp)
/* ABBF8 800AAFF8 AFA20018 */  sw         $v0, 0x18($sp)
/* ABBFC 800AAFFC AFA3001C */  sw         $v1, 0x1c($sp)
/* ABC00 800AB000 3C0A800F */  lui        $t2, %hi(__osTimerList)
/* ABC04 800AB004 8D4AA620 */  lw         $t2, %lo(__osTimerList)($t2)
/* ABC08 800AB008 8FAC0020 */  lw         $t4, 0x20($sp)
/* ABC0C 800AB00C 8D4B0000 */  lw         $t3, ($t2)
/* ABC10 800AB010 156C0004 */  bne        $t3, $t4, .L800AB024
/* ABC14 800AB014 00000000 */   nop
/* ABC18 800AB018 8FA40018 */  lw         $a0, 0x18($sp)
/* ABC1C 800AB01C 0C029D6C */  jal        __osSetTimerIntr
/* ABC20 800AB020 8FA5001C */   lw        $a1, 0x1c($sp)
.L800AB024:
/* ABC24 800AB024 10000003 */  b          .L800AB034
/* ABC28 800AB028 00001025 */   or        $v0, $zero, $zero
/* ABC2C 800AB02C 10000001 */  b          .L800AB034
/* ABC30 800AB030 00000000 */   nop
.L800AB034:
/* ABC34 800AB034 8FBF0014 */  lw         $ra, 0x14($sp)
/* ABC38 800AB038 27BD0020 */  addiu      $sp, $sp, 0x20
/* ABC3C 800AB03C 03E00008 */  jr         $ra
/* ABC40 800AB040 00000000 */   nop
/* ABC44 800AB044 00000000 */  nop
/* ABC48 800AB048 00000000 */  nop
/* ABC4C 800AB04C 00000000 */  nop
