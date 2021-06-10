glabel func_80099F1C
/* 9AB1C 80099F1C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9AB20 80099F20 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9AB24 80099F24 AFA40030 */  sw         $a0, 0x30($sp)
/* 9AB28 80099F28 AFB00018 */  sw         $s0, 0x18($sp)
/* 9AB2C 80099F2C 3C048018 */  lui        $a0, %hi(D_80185050)
/* 9AB30 80099F30 3C058018 */  lui        $a1, %hi(D_80185068)
/* 9AB34 80099F34 24A55068 */  addiu      $a1, $a1, %lo(D_80185068)
/* 9AB38 80099F38 24845050 */  addiu      $a0, $a0, %lo(D_80185050)
/* 9AB3C 80099F3C 0C026994 */  jal        func_8009A650
/* 9AB40 80099F40 24060001 */   addiu     $a2, $zero, 1
/* 9AB44 80099F44 3C048018 */  lui        $a0, %hi(D_80185070)
/* 9AB48 80099F48 3C058018 */  lui        $a1, %hi(D_80185088)
/* 9AB4C 80099F4C 24A55088 */  addiu      $a1, $a1, %lo(D_80185088)
/* 9AB50 80099F50 24845070 */  addiu      $a0, $a0, %lo(D_80185070)
/* 9AB54 80099F54 0C026994 */  jal        func_8009A650
/* 9AB58 80099F58 24060001 */   addiu     $a2, $zero, 1
/* 9AB5C 80099F5C 3C058018 */  lui        $a1, %hi(D_80185050)
/* 9AB60 80099F60 24A55050 */  addiu      $a1, $a1, %lo(D_80185050)
/* 9AB64 80099F64 24040012 */  addiu      $a0, $zero, 0x12
/* 9AB68 80099F68 0C0269BC */  jal        func_8009A6F0
/* 9AB6C 80099F6C 00003025 */   or        $a2, $zero, $zero
/* 9AB70 80099F70 3C058018 */  lui        $a1, %hi(D_80185070)
/* 9AB74 80099F74 24A55070 */  addiu      $a1, $a1, %lo(D_80185070)
/* 9AB78 80099F78 24040013 */  addiu      $a0, $zero, 0x13
/* 9AB7C 80099F7C 0C0269BC */  jal        func_8009A6F0
/* 9AB80 80099F80 00003025 */   or        $a2, $zero, $zero
.L80099F84:
/* 9AB84 80099F84 3C048018 */  lui        $a0, %hi(D_80185050)
/* 9AB88 80099F88 24845050 */  addiu      $a0, $a0, %lo(D_80185050)
/* 9AB8C 80099F8C 00002825 */  or         $a1, $zero, $zero
/* 9AB90 80099F90 0C026B44 */  jal        func_8009AD10
/* 9AB94 80099F94 24060001 */   addiu     $a2, $zero, 1
/* 9AB98 80099F98 0C029F9E */  jal        func_800A7E78
/* 9AB9C 80099F9C 00000000 */   nop
/* 9ABA0 80099FA0 AFA0002C */  sw         $zero, 0x2c($sp)
/* 9ABA4 80099FA4 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9ABA8 80099FA8 15C0000C */  bnez       $t6, .L80099FDC
/* 9ABAC 80099FAC 00000000 */   nop
.L80099FB0:
/* 9ABB0 80099FB0 27A40028 */  addiu      $a0, $sp, 0x28
/* 9ABB4 80099FB4 24050001 */  addiu      $a1, $zero, 1
/* 9ABB8 80099FB8 0C02A254 */  jal        func_800A8950
/* 9ABBC 80099FBC 24060009 */   addiu     $a2, $zero, 9
/* 9ABC0 80099FC0 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9ABC4 80099FC4 00408025 */  or         $s0, $v0, $zero
/* 9ABC8 80099FC8 01F0C021 */  addu       $t8, $t7, $s0
/* 9ABCC 80099FCC AFB8002C */  sw         $t8, 0x2c($sp)
/* 9ABD0 80099FD0 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9ABD4 80099FD4 1320FFF6 */  beqz       $t9, .L80099FB0
/* 9ABD8 80099FD8 00000000 */   nop
.L80099FDC:
/* 9ABDC 80099FDC 3C048018 */  lui        $a0, %hi(D_80185070)
/* 9ABE0 80099FE0 24845070 */  addiu      $a0, $a0, %lo(D_80185070)
/* 9ABE4 80099FE4 00002825 */  or         $a1, $zero, $zero
/* 9ABE8 80099FE8 0C026B44 */  jal        func_8009AD10
/* 9ABEC 80099FEC 24060001 */   addiu     $a2, $zero, 1
/* 9ABF0 80099FF0 0C029FB1 */  jal        func_800A7EC4
/* 9ABF4 80099FF4 00000000 */   nop
/* 9ABF8 80099FF8 1000FFE2 */  b          .L80099F84
/* 9ABFC 80099FFC 00000000 */   nop
/* 9AC00 8009A000 10000001 */  b          .L8009A008
/* 9AC04 8009A004 00000000 */   nop
.L8009A008:
/* 9AC08 8009A008 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AC0C 8009A00C 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AC10 8009A010 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9AC14 8009A014 03E00008 */  jr         $ra
/* 9AC18 8009A018 00000000 */   nop
/* 9AC1C 8009A01C 00000000 */  nop
