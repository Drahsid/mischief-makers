glabel func_80003D64
/* 4964 80003D64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4968 80003D68 308E00FF */  andi       $t6, $a0, 0xff
/* 496C 80003D6C 3C18800F */  lui        $t8, %hi(D_800EF508)
/* 4970 80003D70 AFB5002C */  sw         $s5, 0x2c($sp)
/* 4974 80003D74 2718F508 */  addiu      $t8, $t8, %lo(D_800EF508)
/* 4978 80003D78 000E7840 */  sll        $t7, $t6, 1
/* 497C 80003D7C 01F8A821 */  addu       $s5, $t7, $t8
/* 4980 80003D80 96B90000 */  lhu        $t9, ($s5)
/* 4984 80003D84 AFBE0038 */  sw         $fp, 0x38($sp)
/* 4988 80003D88 3C1E800C */  lui        $fp, %hi(D_800C2BB4)
/* 498C 80003D8C 27DE2BB4 */  addiu      $fp, $fp, %lo(D_800C2BB4)
/* 4990 80003D90 00194040 */  sll        $t0, $t9, 1
/* 4994 80003D94 03C81021 */  addu       $v0, $fp, $t0
/* 4998 80003D98 AFB1001C */  sw         $s1, 0x1c($sp)
/* 499C 80003D9C 9451FFBE */  lhu        $s1, -0x42($v0)
/* 49A0 80003DA0 9449FFC0 */  lhu        $t1, -0x40($v0)
/* 49A4 80003DA4 AFB30024 */  sw         $s3, 0x24($sp)
/* 49A8 80003DA8 0229082A */  slt        $at, $s1, $t1
/* 49AC 80003DAC AFBF003C */  sw         $ra, 0x3c($sp)
/* 49B0 80003DB0 AFB70034 */  sw         $s7, 0x34($sp)
/* 49B4 80003DB4 AFB60030 */  sw         $s6, 0x30($sp)
/* 49B8 80003DB8 AFB40028 */  sw         $s4, 0x28($sp)
/* 49BC 80003DBC AFB20020 */  sw         $s2, 0x20($sp)
/* 49C0 80003DC0 AFB00018 */  sw         $s0, 0x18($sp)
/* 49C4 80003DC4 AFA40040 */  sw         $a0, 0x40($sp)
/* 49C8 80003DC8 1020004A */  beqz       $at, .L80003EF4
/* 49CC 80003DCC 00009825 */   or        $s3, $zero, $zero
/* 49D0 80003DD0 3C0B8017 */  lui        $t3, %hi(ptr_alSeqPlayers)
/* 49D4 80003DD4 3C0C8012 */  lui        $t4, %hi(D_8011CDF0)
/* 49D8 80003DD8 3C0D8012 */  lui        $t5, %hi(D_8011CF18)
/* 49DC 80003DDC 25ADCF18 */  addiu      $t5, $t5, %lo(D_8011CF18)
/* 49E0 80003DE0 258CCDF0 */  addiu      $t4, $t4, %lo(D_8011CDF0)
/* 49E4 80003DE4 256BE1D8 */  addiu      $t3, $t3, %lo(ptr_alSeqPlayers)
/* 49E8 80003DE8 000E5080 */  sll        $t2, $t6, 2
/* 49EC 80003DEC 3C128017 */  lui        $s2, %hi(D_8016E6F8)
/* 49F0 80003DF0 2652E6F8 */  addiu      $s2, $s2, %lo(D_8016E6F8)
/* 49F4 80003DF4 014BA021 */  addu       $s4, $t2, $t3
/* 49F8 80003DF8 01CCB021 */  addu       $s6, $t6, $t4
/* 49FC 80003DFC 01CDB821 */  addu       $s7, $t6, $t5
.L80003E00:
/* 4A00 80003E00 00117040 */  sll        $t6, $s1, 1
/* 4A04 80003E04 3C03800C */  lui        $v1, %hi(D_800C26DC)
/* 4A08 80003E08 006E1821 */  addu       $v1, $v1, $t6
/* 4A0C 80003E0C 946326DC */  lhu        $v1, %lo(D_800C26DC)($v1)
/* 4A10 80003E10 3C02800C */  lui        $v0, %hi(D_800C2280)
/* 4A14 80003E14 00431021 */  addu       $v0, $v0, $v1
/* 4A18 80003E18 90422280 */  lbu        $v0, %lo(D_800C2280)($v0)
/* 4A1C 80003E1C 24010001 */  addiu      $at, $zero, 1
/* 4A20 80003E20 10410009 */  beq        $v0, $at, .L80003E48
/* 4A24 80003E24 3C0F8017 */   lui       $t7, 0x8017
/* 4A28 80003E28 24010002 */  addiu      $at, $zero, 2
/* 4A2C 80003E2C 1041000C */  beq        $v0, $at, .L80003E60
/* 4A30 80003E30 3C098017 */   lui       $t1, 0x8017
/* 4A34 80003E34 24010003 */  addiu      $at, $zero, 3
/* 4A38 80003E38 1041000F */  beq        $v0, $at, .L80003E78
/* 4A3C 80003E3C 3C0D8017 */   lui       $t5, 0x8017
/* 4A40 80003E40 10000014 */  b          .L80003E94
/* 4A44 80003E44 8E590000 */   lw        $t9, ($s2)
.L80003E48:
/* 4A48 80003E48 8DEFDF3C */  lw         $t7, -0x20c4($t7)
/* 4A4C 80003E4C 0003C080 */  sll        $t8, $v1, 2
/* 4A50 80003E50 01F8C821 */  addu       $t9, $t7, $t8
/* 4A54 80003E54 8F28000C */  lw         $t0, 0xc($t9)
/* 4A58 80003E58 1000000D */  b          .L80003E90
/* 4A5C 80003E5C AE480000 */   sw        $t0, ($s2)
.L80003E60:
/* 4A60 80003E60 8D29DF40 */  lw         $t1, -0x20c0($t1)
/* 4A64 80003E64 00035080 */  sll        $t2, $v1, 2
/* 4A68 80003E68 012A5821 */  addu       $t3, $t1, $t2
/* 4A6C 80003E6C 8D6CFE0C */  lw         $t4, -0x1f4($t3)
/* 4A70 80003E70 10000007 */  b          .L80003E90
/* 4A74 80003E74 AE4C0000 */   sw        $t4, ($s2)
.L80003E78:
/* 4A78 80003E78 8DADDF44 */  lw         $t5, -0x20bc($t5)
/* 4A7C 80003E7C 00037080 */  sll        $t6, $v1, 2
/* 4A80 80003E80 01AE7821 */  addu       $t7, $t5, $t6
/* 4A84 80003E84 8DF8FC0C */  lw         $t8, -0x3f4($t7)
/* 4A88 80003E88 00000000 */  nop
/* 4A8C 80003E8C AE580000 */  sw         $t8, ($s2)
.L80003E90:
/* 4A90 80003E90 8E590000 */  lw         $t9, ($s2)
.L80003E94:
/* 4A94 80003E94 3C018017 */  lui        $at, %hi(D_8016E6FC)
/* 4A98 80003E98 8F280010 */  lw         $t0, 0x10($t9)
/* 4A9C 80003E9C 327000FF */  andi       $s0, $s3, 0xff
/* 4AA0 80003EA0 AC28E6FC */  sw         $t0, %lo(D_8016E6FC)($at)
/* 4AA4 80003EA4 92C60000 */  lbu        $a2, ($s6)
/* 4AA8 80003EA8 8E840000 */  lw         $a0, ($s4)
/* 4AAC 80003EAC 0C027FE0 */  jal        alSeqpSetChlVol
/* 4AB0 80003EB0 320500FF */   andi      $a1, $s0, 0xff
/* 4AB4 80003EB4 8E840000 */  lw         $a0, ($s4)
/* 4AB8 80003EB8 92E60000 */  lbu        $a2, ($s7)
/* 4ABC 80003EBC 0C027FFC */  jal        alSeqpSetChlPan
/* 4AC0 80003EC0 320500FF */   andi      $a1, $s0, 0xff
/* 4AC4 80003EC4 96AB0000 */  lhu        $t3, ($s5)
/* 4AC8 80003EC8 26310001 */  addiu      $s1, $s1, 1
/* 4ACC 80003ECC 000B6040 */  sll        $t4, $t3, 1
/* 4AD0 80003ED0 03CC6821 */  addu       $t5, $fp, $t4
/* 4AD4 80003ED4 95AEFFC0 */  lhu        $t6, -0x40($t5)
/* 4AD8 80003ED8 3229FFFF */  andi       $t1, $s1, 0xffff
/* 4ADC 80003EDC 26730001 */  addiu      $s3, $s3, 1
/* 4AE0 80003EE0 326AFFFF */  andi       $t2, $s3, 0xffff
/* 4AE4 80003EE4 012E082A */  slt        $at, $t1, $t6
/* 4AE8 80003EE8 01409825 */  or         $s3, $t2, $zero
/* 4AEC 80003EEC 1420FFC4 */  bnez       $at, .L80003E00
/* 4AF0 80003EF0 01208825 */   or        $s1, $t1, $zero
.L80003EF4:
/* 4AF4 80003EF4 8FBF003C */  lw         $ra, 0x3c($sp)
/* 4AF8 80003EF8 8FB00018 */  lw         $s0, 0x18($sp)
/* 4AFC 80003EFC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4B00 80003F00 8FB20020 */  lw         $s2, 0x20($sp)
/* 4B04 80003F04 8FB30024 */  lw         $s3, 0x24($sp)
/* 4B08 80003F08 8FB40028 */  lw         $s4, 0x28($sp)
/* 4B0C 80003F0C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 4B10 80003F10 8FB60030 */  lw         $s6, 0x30($sp)
/* 4B14 80003F14 8FB70034 */  lw         $s7, 0x34($sp)
/* 4B18 80003F18 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4B1C 80003F1C 03E00008 */  jr         $ra
/* 4B20 80003F20 27BD0040 */   addiu     $sp, $sp, 0x40
