.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7F00
/* A8B00 800A7F00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A8B04 800A7F04 AFBF001C */  sw         $ra, 0x1c($sp)
/* A8B08 800A7F08 AFA40028 */  sw         $a0, 0x28($sp)
/* A8B0C 800A7F0C AFA5002C */  sw         $a1, 0x2c($sp)
/* A8B10 800A7F10 AFA60030 */  sw         $a2, 0x30($sp)
/* A8B14 800A7F14 AFA70034 */  sw         $a3, 0x34($sp)
/* A8B18 800A7F18 AFB10018 */  sw         $s1, 0x18($sp)
/* A8B1C 800A7F1C AFB00014 */  sw         $s0, 0x14($sp)
/* A8B20 800A7F20 8FAE0028 */  lw         $t6, 0x28($sp)
/* A8B24 800A7F24 11C0000A */  beqz       $t6, .L800A7F50
/* A8B28 800A7F28 00000000 */   nop
/* A8B2C 800A7F2C 24010001 */  addiu      $at, $zero, 1
/* A8B30 800A7F30 11C10007 */  beq        $t6, $at, .L800A7F50
/* A8B34 800A7F34 00000000 */   nop
/* A8B38 800A7F38 24040015 */  addiu      $a0, $zero, 0x15
/* A8B3C 800A7F3C 24050001 */  addiu      $a1, $zero, 1
/* A8B40 800A7F40 0C0297B4 */  jal        func_800A5ED0
/* A8B44 800A7F44 8FA60028 */   lw        $a2, 0x28($sp)
/* A8B48 800A7F48 1000005E */  b          .L800A80C4
/* A8B4C 800A7F4C 2402FFFF */   addiu     $v0, $zero, -1
.L800A7F50:
/* A8B50 800A7F50 8FAF002C */  lw         $t7, 0x2c($sp)
/* A8B54 800A7F54 31F80001 */  andi       $t8, $t7, 1
/* A8B58 800A7F58 13000007 */  beqz       $t8, .L800A7F78
/* A8B5C 800A7F5C 00000000 */   nop
/* A8B60 800A7F60 24040016 */  addiu      $a0, $zero, 0x16
/* A8B64 800A7F64 24050001 */  addiu      $a1, $zero, 1
/* A8B68 800A7F68 0C0297B4 */  jal        func_800A5ED0
/* A8B6C 800A7F6C 8FA6002C */   lw        $a2, 0x2c($sp)
/* A8B70 800A7F70 10000054 */  b          .L800A80C4
/* A8B74 800A7F74 2402FFFF */   addiu     $v0, $zero, -1
.L800A7F78:
/* A8B78 800A7F78 8FB90030 */  lw         $t9, 0x30($sp)
/* A8B7C 800A7F7C 33280007 */  andi       $t0, $t9, 7
/* A8B80 800A7F80 11000007 */  beqz       $t0, .L800A7FA0
/* A8B84 800A7F84 00000000 */   nop
/* A8B88 800A7F88 24040017 */  addiu      $a0, $zero, 0x17
/* A8B8C 800A7F8C 24050001 */  addiu      $a1, $zero, 1
/* A8B90 800A7F90 0C0297B4 */  jal        func_800A5ED0
/* A8B94 800A7F94 8FA60030 */   lw        $a2, 0x30($sp)
/* A8B98 800A7F98 1000004A */  b          .L800A80C4
/* A8B9C 800A7F9C 2402FFFF */   addiu     $v0, $zero, -1
.L800A7FA0:
/* A8BA0 800A7FA0 8FA90034 */  lw         $t1, 0x34($sp)
/* A8BA4 800A7FA4 312A0001 */  andi       $t2, $t1, 1
/* A8BA8 800A7FA8 11400007 */  beqz       $t2, .L800A7FC8
/* A8BAC 800A7FAC 00000000 */   nop
/* A8BB0 800A7FB0 24040018 */  addiu      $a0, $zero, 0x18
/* A8BB4 800A7FB4 24050001 */  addiu      $a1, $zero, 1
/* A8BB8 800A7FB8 0C0297B4 */  jal        func_800A5ED0
/* A8BBC 800A7FBC 8FA60034 */   lw        $a2, 0x34($sp)
/* A8BC0 800A7FC0 10000040 */  b          .L800A80C4
/* A8BC4 800A7FC4 2402FFFF */   addiu     $v0, $zero, -1
.L800A7FC8:
/* A8BC8 800A7FC8 8FAB0034 */  lw         $t3, 0x34($sp)
/* A8BCC 800A7FCC 11600006 */  beqz       $t3, .L800A7FE8
/* A8BD0 800A7FD0 00000000 */   nop
/* A8BD4 800A7FD4 3C010100 */  lui        $at, 0x100
/* A8BD8 800A7FD8 34210001 */  ori        $at, $at, 1
/* A8BDC 800A7FDC 0161082B */  sltu       $at, $t3, $at
/* A8BE0 800A7FE0 14200007 */  bnez       $at, .L800A8000
/* A8BE4 800A7FE4 00000000 */   nop
.L800A7FE8:
/* A8BE8 800A7FE8 24040019 */  addiu      $a0, $zero, 0x19
/* A8BEC 800A7FEC 24050001 */  addiu      $a1, $zero, 1
/* A8BF0 800A7FF0 0C0297B4 */  jal        func_800A5ED0
/* A8BF4 800A7FF4 8FA60034 */   lw        $a2, 0x34($sp)
/* A8BF8 800A7FF8 10000032 */  b          .L800A80C4
/* A8BFC 800A7FFC 2402FFFF */   addiu     $v0, $zero, -1
.L800A8000:
/* A8C00 800A8000 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* A8C04 800A8004 8D900010 */  lw         $s0, %lo(D_A4600010)($t4)
/* A8C08 800A8008 320D0003 */  andi       $t5, $s0, 3
/* A8C0C 800A800C 11A00006 */  beqz       $t5, .L800A8028
/* A8C10 800A8010 00000000 */   nop
.L800A8014:
/* A8C14 800A8014 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* A8C18 800A8018 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* A8C1C 800A801C 320F0003 */  andi       $t7, $s0, 3
/* A8C20 800A8020 15E0FFFC */  bnez       $t7, .L800A8014
/* A8C24 800A8024 00000000 */   nop
.L800A8028:
/* A8C28 800A8028 0C026964 */  jal        func_8009A590
/* A8C2C 800A802C 8FA40030 */   lw        $a0, 0x30($sp)
/* A8C30 800A8030 3C18A460 */  lui        $t8, 0xa460
/* A8C34 800A8034 AF020000 */  sw         $v0, ($t8)
/* A8C38 800A8038 3C198000 */  lui        $t9, %hi(D_80000308)
/* A8C3C 800A803C 8F390308 */  lw         $t9, %lo(D_80000308)($t9)
/* A8C40 800A8040 8FA8002C */  lw         $t0, 0x2c($sp)
/* A8C44 800A8044 3C011FFF */  lui        $at, 0x1fff
/* A8C48 800A8048 3421FFFF */  ori        $at, $at, 0xffff
/* A8C4C 800A804C 03284825 */  or         $t1, $t9, $t0
/* A8C50 800A8050 01215024 */  and        $t2, $t1, $at
/* A8C54 800A8054 3C0BA460 */  lui        $t3, %hi(D_A4600004)
/* A8C58 800A8058 AD6A0004 */  sw         $t2, %lo(D_A4600004)($t3)
/* A8C5C 800A805C 8FB10028 */  lw         $s1, 0x28($sp)
/* A8C60 800A8060 12200006 */  beqz       $s1, .L800A807C
/* A8C64 800A8064 00000000 */   nop
/* A8C68 800A8068 24010001 */  addiu      $at, $zero, 1
/* A8C6C 800A806C 12210009 */  beq        $s1, $at, .L800A8094
/* A8C70 800A8070 00000000 */   nop
/* A8C74 800A8074 1000000D */  b          .L800A80AC
/* A8C78 800A8078 00000000 */   nop
.L800A807C:
/* A8C7C 800A807C 8FAC0034 */  lw         $t4, 0x34($sp)
/* A8C80 800A8080 3C0EA460 */  lui        $t6, %hi(D_A460000C)
/* A8C84 800A8084 258DFFFF */  addiu      $t5, $t4, -1
/* A8C88 800A8088 ADCD000C */  sw         $t5, %lo(D_A460000C)($t6)
/* A8C8C 800A808C 10000009 */  b          .L800A80B4
/* A8C90 800A8090 00000000 */   nop
.L800A8094:
/* A8C94 800A8094 8FAF0034 */  lw         $t7, 0x34($sp)
/* A8C98 800A8098 3C19A460 */  lui        $t9, %hi(D_A4600008)
/* A8C9C 800A809C 25F8FFFF */  addiu      $t8, $t7, -1
/* A8CA0 800A80A0 AF380008 */  sw         $t8, %lo(D_A4600008)($t9)
/* A8CA4 800A80A4 10000003 */  b          .L800A80B4
/* A8CA8 800A80A8 00000000 */   nop
.L800A80AC:
/* A8CAC 800A80AC 10000005 */  b          .L800A80C4
/* A8CB0 800A80B0 2402FFFF */   addiu     $v0, $zero, -1
.L800A80B4:
/* A8CB4 800A80B4 10000003 */  b          .L800A80C4
/* A8CB8 800A80B8 00001025 */   or        $v0, $zero, $zero
/* A8CBC 800A80BC 10000001 */  b          .L800A80C4
/* A8CC0 800A80C0 00000000 */   nop
.L800A80C4:
/* A8CC4 800A80C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* A8CC8 800A80C8 8FB00014 */  lw         $s0, 0x14($sp)
/* A8CCC 800A80CC 8FB10018 */  lw         $s1, 0x18($sp)
/* A8CD0 800A80D0 03E00008 */  jr         $ra
/* A8CD4 800A80D4 27BD0028 */   addiu     $sp, $sp, 0x28
/* A8CD8 800A80D8 00000000 */  nop
/* A8CDC 800A80DC 00000000 */  nop
