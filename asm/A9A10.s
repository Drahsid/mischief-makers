.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __rmonSendFault
/* A9A10 800A8E10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9A14 800A8E14 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9A18 800A8E18 AFA40030 */  sw         $a0, 0x30($sp)
/* A9A1C 800A8E1C AFB00018 */  sw         $s0, 0x18($sp)
/* A9A20 800A8E20 AFA00024 */  sw         $zero, 0x24($sp)
/* A9A24 800A8E24 44802000 */  mtc1       $zero, $f4
/* A9A28 800A8E28 00000000 */  nop
/* A9A2C 800A8E2C E7A4002C */  swc1       $f4, 0x2c($sp)
/* A9A30 800A8E30 8FAE0030 */  lw         $t6, 0x30($sp)
/* A9A34 800A8E34 AFAE0028 */  sw         $t6, 0x28($sp)
/* A9A38 800A8E38 8FAF0024 */  lw         $t7, 0x24($sp)
/* A9A3C 800A8E3C 2DE101B0 */  sltiu      $at, $t7, 0x1b0
/* A9A40 800A8E40 10200010 */  beqz       $at, .L800A8E84
/* A9A44 800A8E44 00000000 */   nop
.L800A8E48:
/* A9A48 800A8E48 8FB90024 */  lw         $t9, 0x24($sp)
/* A9A4C 800A8E4C 8FB80028 */  lw         $t8, 0x28($sp)
/* A9A50 800A8E50 240801B0 */  addiu      $t0, $zero, 0x1b0
/* A9A54 800A8E54 24060002 */  addiu      $a2, $zero, 2
/* A9A58 800A8E58 01192823 */  subu       $a1, $t0, $t9
/* A9A5C 800A8E5C 0C02A254 */  jal        __osRdbSend
/* A9A60 800A8E60 03192021 */   addu      $a0, $t8, $t9
/* A9A64 800A8E64 8FA90024 */  lw         $t1, 0x24($sp)
/* A9A68 800A8E68 00408025 */  or         $s0, $v0, $zero
/* A9A6C 800A8E6C 01305021 */  addu       $t2, $t1, $s0
/* A9A70 800A8E70 AFAA0024 */  sw         $t2, 0x24($sp)
/* A9A74 800A8E74 8FAB0024 */  lw         $t3, 0x24($sp)
/* A9A78 800A8E78 2D6101B0 */  sltiu      $at, $t3, 0x1b0
/* A9A7C 800A8E7C 1420FFF2 */  bnez       $at, .L800A8E48
/* A9A80 800A8E80 00000000 */   nop
.L800A8E84:
/* A9A84 800A8E84 10000001 */  b          .L800A8E8C
/* A9A88 800A8E88 00000000 */   nop
.L800A8E8C:
/* A9A8C 800A8E8C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9A90 800A8E90 8FB00018 */  lw         $s0, 0x18($sp)
/* A9A94 800A8E94 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9A98 800A8E98 03E00008 */  jr         $ra
/* A9A9C 800A8E9C 00000000 */   nop

glabel __rmonIOflush
/* A9AA0 800A8EA0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9AA4 800A8EA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9AA8 800A8EA8 AFB00018 */  sw         $s0, 0x18($sp)
/* A9AAC 800A8EAC AFA0002C */  sw         $zero, 0x2c($sp)
/* A9AB0 800A8EB0 8FAE002C */  lw         $t6, 0x2c($sp)
/* A9AB4 800A8EB4 1DC0000C */  bgtz       $t6, .L800A8EE8
/* A9AB8 800A8EB8 00000000 */   nop
.L800A8EBC:
/* A9ABC 800A8EBC 27A40028 */  addiu      $a0, $sp, 0x28
/* A9AC0 800A8EC0 24050001 */  addiu      $a1, $zero, 1
/* A9AC4 800A8EC4 0C02A254 */  jal        __osRdbSend
/* A9AC8 800A8EC8 2406000A */   addiu     $a2, $zero, 0xa
/* A9ACC 800A8ECC 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9AD0 800A8ED0 00408025 */  or         $s0, $v0, $zero
/* A9AD4 800A8ED4 01F0C021 */  addu       $t8, $t7, $s0
/* A9AD8 800A8ED8 AFB8002C */  sw         $t8, 0x2c($sp)
/* A9ADC 800A8EDC 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9AE0 800A8EE0 1B20FFF6 */  blez       $t9, .L800A8EBC
/* A9AE4 800A8EE4 00000000 */   nop
.L800A8EE8:
/* A9AE8 800A8EE8 10000001 */  b          .L800A8EF0
/* A9AEC 800A8EEC 00000000 */   nop
.L800A8EF0:
/* A9AF0 800A8EF0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9AF4 800A8EF4 8FB00018 */  lw         $s0, 0x18($sp)
/* A9AF8 800A8EF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9AFC 800A8EFC 03E00008 */  jr         $ra
/* A9B00 800A8F00 00000000 */   nop

glabel __rmonIOputw
/* A9B04 800A8F04 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9B08 800A8F08 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9B0C 800A8F0C AFA40030 */  sw         $a0, 0x30($sp)
/* A9B10 800A8F10 AFB00018 */  sw         $s0, 0x18($sp)
/* A9B14 800A8F14 AFA0002C */  sw         $zero, 0x2c($sp)
/* A9B18 800A8F18 27AE0030 */  addiu      $t6, $sp, 0x30
/* A9B1C 800A8F1C AFAE0028 */  sw         $t6, 0x28($sp)
/* A9B20 800A8F20 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9B24 800A8F24 29E10004 */  slti       $at, $t7, 4
/* A9B28 800A8F28 10200010 */  beqz       $at, .L800A8F6C
/* A9B2C 800A8F2C 00000000 */   nop
.L800A8F30:
/* A9B30 800A8F30 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9B34 800A8F34 8FB80028 */  lw         $t8, 0x28($sp)
/* A9B38 800A8F38 24080004 */  addiu      $t0, $zero, 4
/* A9B3C 800A8F3C 24060008 */  addiu      $a2, $zero, 8
/* A9B40 800A8F40 01192823 */  subu       $a1, $t0, $t9
/* A9B44 800A8F44 0C02A254 */  jal        __osRdbSend
/* A9B48 800A8F48 03192021 */   addu      $a0, $t8, $t9
/* A9B4C 800A8F4C 8FA9002C */  lw         $t1, 0x2c($sp)
/* A9B50 800A8F50 00408025 */  or         $s0, $v0, $zero
/* A9B54 800A8F54 01305021 */  addu       $t2, $t1, $s0
/* A9B58 800A8F58 AFAA002C */  sw         $t2, 0x2c($sp)
/* A9B5C 800A8F5C 8FAB002C */  lw         $t3, 0x2c($sp)
/* A9B60 800A8F60 29610004 */  slti       $at, $t3, 4
/* A9B64 800A8F64 1420FFF2 */  bnez       $at, .L800A8F30
/* A9B68 800A8F68 00000000 */   nop
.L800A8F6C:
/* A9B6C 800A8F6C 10000001 */  b          .L800A8F74
/* A9B70 800A8F70 00000000 */   nop
.L800A8F74:
/* A9B74 800A8F74 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9B78 800A8F78 8FB00018 */  lw         $s0, 0x18($sp)
/* A9B7C 800A8F7C 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9B80 800A8F80 03E00008 */  jr         $ra
/* A9B84 800A8F84 00000000 */   nop

glabel __rmonIOhandler
/* A9B88 800A8F88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A9B8C 800A8F8C AFBF001C */  sw         $ra, 0x1c($sp)
/* A9B90 800A8F90 AFB00018 */  sw         $s0, 0x18($sp)
/* A9B94 800A8F94 3C048019 */  lui        $a0, %hi(rmonsio_bss_0000)
/* A9B98 800A8F98 3C058019 */  lui        $a1, %hi(rmonsio_bss_0018)
/* A9B9C 800A8F9C 24A59A88 */  addiu      $a1, $a1, %lo(rmonsio_bss_0018)
/* A9BA0 800A8FA0 24849A70 */  addiu      $a0, $a0, %lo(rmonsio_bss_0000)
/* A9BA4 800A8FA4 0C026994 */  jal        osCreateMesgQueue
/* A9BA8 800A8FA8 24060001 */   addiu     $a2, $zero, 1
/* A9BAC 800A8FAC 3C058019 */  lui        $a1, %hi(rmonsio_bss_0000)
/* A9BB0 800A8FB0 24A59A70 */  addiu      $a1, $a1, %lo(rmonsio_bss_0000)
/* A9BB4 800A8FB4 24040014 */  addiu      $a0, $zero, 0x14
/* A9BB8 800A8FB8 0C0269BC */  jal        osSetEventMesg
/* A9BBC 800A8FBC 00003025 */   or        $a2, $zero, $zero
/* A9BC0 800A8FC0 3C0E8019 */  lui        $t6, %hi(rmonRdbReadBuf)
/* A9BC4 800A8FC4 25CE9A90 */  addiu      $t6, $t6, %lo(rmonRdbReadBuf)
/* A9BC8 800A8FC8 3C018019 */  lui        $at, %hi(__osRdb_DbgRead_Buf)
/* A9BCC 800A8FCC AC2E9A8C */  sw         $t6, %lo(__osRdb_DbgRead_Buf)($at)
.L800A8FD0:
/* A9BD0 800A8FD0 3C048019 */  lui        $a0, %hi(rmonsio_bss_0000)
/* A9BD4 800A8FD4 24849A70 */  addiu      $a0, $a0, %lo(rmonsio_bss_0000)
/* A9BD8 800A8FD8 00002825 */  or         $a1, $zero, $zero
/* A9BDC 800A8FDC 0C026B44 */  jal        osRecvMesg
/* A9BE0 800A8FE0 24060001 */   addiu     $a2, $zero, 1
/* A9BE4 800A8FE4 3C048019 */  lui        $a0, %hi(rmonRdbReadBuf)
/* A9BE8 800A8FE8 0C02D617 */  jal        __rmonExecute
/* A9BEC 800A8FEC 24849A90 */   addiu     $a0, $a0, %lo(rmonRdbReadBuf)
/* A9BF0 800A8FF0 3C0F8019 */  lui        $t7, %hi(rmonRdbReadBuf)
/* A9BF4 800A8FF4 25EF9A90 */  addiu      $t7, $t7, %lo(rmonRdbReadBuf)
/* A9BF8 800A8FF8 3C018019 */  lui        $at, %hi(__osRdb_DbgRead_Buf)
/* A9BFC 800A8FFC AC2F9A8C */  sw         $t7, %lo(__osRdb_DbgRead_Buf)($at)
/* A9C00 800A9000 AFA0002C */  sw         $zero, 0x2c($sp)
/* A9C04 800A9004 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9C08 800A9008 1F00000C */  bgtz       $t8, .L800A903C
/* A9C0C 800A900C 00000000 */   nop
.L800A9010:
/* A9C10 800A9010 27A40028 */  addiu      $a0, $sp, 0x28
/* A9C14 800A9014 24050001 */  addiu      $a1, $zero, 1
/* A9C18 800A9018 0C02A254 */  jal        __osRdbSend
/* A9C1C 800A901C 2406000B */   addiu     $a2, $zero, 0xb
/* A9C20 800A9020 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9C24 800A9024 00408025 */  or         $s0, $v0, $zero
/* A9C28 800A9028 03304021 */  addu       $t0, $t9, $s0
/* A9C2C 800A902C AFA8002C */  sw         $t0, 0x2c($sp)
/* A9C30 800A9030 8FA9002C */  lw         $t1, 0x2c($sp)
/* A9C34 800A9034 1920FFF6 */  blez       $t1, .L800A9010
/* A9C38 800A9038 00000000 */   nop
.L800A903C:
/* A9C3C 800A903C 1000FFE4 */  b          .L800A8FD0
/* A9C40 800A9040 00000000 */   nop
/* A9C44 800A9044 10000001 */  b          .L800A904C
/* A9C48 800A9048 00000000 */   nop
.L800A904C:
/* A9C4C 800A904C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9C50 800A9050 8FB00018 */  lw         $s0, 0x18($sp)
/* A9C54 800A9054 27BD0030 */  addiu      $sp, $sp, 0x30
/* A9C58 800A9058 03E00008 */  jr         $ra
/* A9C5C 800A905C 00000000 */   nop

glabel func_800A9060
/* A9C60 800A9060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9C64 800A9064 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9C68 800A9068 AFA40018 */  sw         $a0, 0x18($sp)
/* A9C6C 800A906C AFA5001C */  sw         $a1, 0x1c($sp)
/* A9C70 800A9070 8FAE0018 */  lw         $t6, 0x18($sp)
/* A9C74 800A9074 31CF0003 */  andi       $t7, $t6, 3
/* A9C78 800A9078 15E00003 */  bnez       $t7, .L800A9088
/* A9C7C 800A907C 00000000 */   nop
/* A9C80 800A9080 10000007 */  b          .L800A90A0
/* A9C84 800A9084 00000000 */   nop
.L800A9088:
/* A9C88 800A9088 3C04800F */  lui        $a0, %hi(D_800EDBF0)
/* A9C8C 800A908C 3C05800F */  lui        $a1, %hi(D_800EDC08)
/* A9C90 800A9090 24A5DC08 */  addiu      $a1, $a1, %lo(D_800EDC08)
/* A9C94 800A9094 2484DBF0 */  addiu      $a0, $a0, %lo(D_800EDBF0)
/* A9C98 800A9098 0C026E74 */  jal        __assert
/* A9C9C 800A909C 24060033 */   addiu     $a2, $zero, 0x33
.L800A90A0:
/* A9CA0 800A90A0 8FB8001C */  lw         $t8, 0x1c($sp)
/* A9CA4 800A90A4 13000003 */  beqz       $t8, .L800A90B4
/* A9CA8 800A90A8 00000000 */   nop
/* A9CAC 800A90AC 10000007 */  b          .L800A90CC
/* A9CB0 800A90B0 00000000 */   nop
.L800A90B4:
/* A9CB4 800A90B4 3C04800F */  lui        $a0, %hi(D_800EDC1C)
/* A9CB8 800A90B8 3C05800F */  lui        $a1, %hi(D_800EDC2C)
/* A9CBC 800A90BC 24A5DC2C */  addiu      $a1, $a1, %lo(D_800EDC2C)
/* A9CC0 800A90C0 2484DC1C */  addiu      $a0, $a0, %lo(D_800EDC1C)
/* A9CC4 800A90C4 0C026E74 */  jal        __assert
/* A9CC8 800A90C8 24060034 */   addiu     $a2, $zero, 0x34
.L800A90CC:
/* A9CCC 800A90CC 0C02ABC0 */  jal        __osSpDeviceBusy
/* A9CD0 800A90D0 00000000 */   nop
/* A9CD4 800A90D4 10400003 */  beqz       $v0, .L800A90E4
/* A9CD8 800A90D8 00000000 */   nop
/* A9CDC 800A90DC 1000000B */  b          .L800A910C
/* A9CE0 800A90E0 2402FFFF */   addiu     $v0, $zero, -1
.L800A90E4:
/* A9CE4 800A90E4 8FB90018 */  lw         $t9, 0x18($sp)
/* A9CE8 800A90E8 3C01A000 */  lui        $at, 0xa000
/* A9CEC 800A90EC 8FAA001C */  lw         $t2, 0x1c($sp)
/* A9CF0 800A90F0 03214025 */  or         $t0, $t9, $at
/* A9CF4 800A90F4 8D090000 */  lw         $t1, ($t0)
/* A9CF8 800A90F8 AD490000 */  sw         $t1, ($t2)
/* A9CFC 800A90FC 10000003 */  b          .L800A910C
/* A9D00 800A9100 00001025 */   or        $v0, $zero, $zero
/* A9D04 800A9104 10000001 */  b          .L800A910C
/* A9D08 800A9108 00000000 */   nop
.L800A910C:
/* A9D0C 800A910C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9D10 800A9110 27BD0018 */  addiu      $sp, $sp, 0x18
/* A9D14 800A9114 03E00008 */  jr         $ra
/* A9D18 800A9118 00000000 */   nop
/* A9D1C 800A911C 00000000 */  nop
