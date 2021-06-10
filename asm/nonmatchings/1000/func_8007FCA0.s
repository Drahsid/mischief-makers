glabel func_8007FCA0
/* 808A0 8007FCA0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 808A4 8007FCA4 AFB20020 */  sw         $s2, 0x20($sp)
/* 808A8 8007FCA8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 808AC 8007FCAC 00A08825 */  or         $s1, $a1, $zero
/* 808B0 8007FCB0 00C09025 */  or         $s2, $a2, $zero
/* 808B4 8007FCB4 00803025 */  or         $a2, $a0, $zero
/* 808B8 8007FCB8 AFBF003C */  sw         $ra, 0x3c($sp)
/* 808BC 8007FCBC AFA40060 */  sw         $a0, 0x60($sp)
/* 808C0 8007FCC0 3C05800F */  lui        $a1, 0x800f
/* 808C4 8007FCC4 AFBE0038 */  sw         $fp, 0x38($sp)
/* 808C8 8007FCC8 AFB70034 */  sw         $s7, 0x34($sp)
/* 808CC 8007FCCC AFB60030 */  sw         $s6, 0x30($sp)
/* 808D0 8007FCD0 AFB5002C */  sw         $s5, 0x2c($sp)
/* 808D4 8007FCD4 AFB40028 */  sw         $s4, 0x28($sp)
/* 808D8 8007FCD8 AFB30024 */  sw         $s3, 0x24($sp)
/* 808DC 8007FCDC AFB00018 */  sw         $s0, 0x18($sp)
/* 808E0 8007FCE0 24A5D010 */  addiu      $a1, $a1, -0x2ff0
/* 808E4 8007FCE4 0C029590 */  jal        func_800A5640
/* 808E8 8007FCE8 27A4004C */   addiu     $a0, $sp, 0x4c
/* 808EC 8007FCEC 240E0007 */  addiu      $t6, $zero, 7
/* 808F0 8007FCF0 A7AE005C */  sh         $t6, 0x5c($sp)
/* 808F4 8007FCF4 00008025 */  or         $s0, $zero, $zero
/* 808F8 8007FCF8 27A3004C */  addiu      $v1, $sp, 0x4c
/* 808FC 8007FCFC 24020030 */  addiu      $v0, $zero, 0x30
/* 80900 8007FD00 00707821 */  addu       $t7, $v1, $s0
.L8007FD04:
/* 80904 8007FD04 91F80000 */  lbu        $t8, ($t7)
/* 80908 8007FD08 00000000 */  nop
/* 8090C 8007FD0C 10580003 */  beq        $v0, $t8, .L8007FD1C
/* 80910 8007FD10 00000000 */   nop
/* 80914 8007FD14 10000007 */  b          .L8007FD34
/* 80918 8007FD18 A7B0005C */   sh        $s0, 0x5c($sp)
.L8007FD1C:
/* 8091C 8007FD1C 26100001 */  addiu      $s0, $s0, 1
/* 80920 8007FD20 0010CC00 */  sll        $t9, $s0, 0x10
/* 80924 8007FD24 00198403 */  sra        $s0, $t9, 0x10
/* 80928 8007FD28 2A010008 */  slti       $at, $s0, 8
/* 8092C 8007FD2C 1420FFF5 */  bnez       $at, .L8007FD04
/* 80930 8007FD30 00707821 */   addu      $t7, $v1, $s0
.L8007FD34:
/* 80934 8007FD34 87A9005C */  lh         $t1, 0x5c($sp)
/* 80938 8007FD38 24020005 */  addiu      $v0, $zero, 5
/* 8093C 8007FD3C 29210005 */  slti       $at, $t1, 5
/* 80940 8007FD40 10200003 */  beqz       $at, .L8007FD50
/* 80944 8007FD44 241EFF92 */   addiu     $fp, $zero, -0x6e
/* 80948 8007FD48 10000001 */  b          .L8007FD50
/* 8094C 8007FD4C 01201025 */   or        $v0, $t1, $zero
.L8007FD50:
/* 80950 8007FD50 00028400 */  sll        $s0, $v0, 0x10
/* 80954 8007FD54 00105403 */  sra        $t2, $s0, 0x10
/* 80958 8007FD58 28410008 */  slti       $at, $v0, 8
/* 8095C 8007FD5C 10200066 */  beqz       $at, .L8007FEF8
/* 80960 8007FD60 01408025 */   or        $s0, $t2, $zero
/* 80964 8007FD64 00025880 */  sll        $t3, $v0, 2
/* 80968 8007FD68 022B6023 */  subu       $t4, $s1, $t3
/* 8096C 8007FD6C 258DFFE0 */  addiu      $t5, $t4, -0x20
/* 80970 8007FD70 000D7400 */  sll        $t6, $t5, 0x10
/* 80974 8007FD74 000E7C03 */  sra        $t7, $t6, 0x10
/* 80978 8007FD78 3C13800F */  lui        $s3, %hi(D_800EF510)
/* 8097C 8007FD7C 2673F510 */  addiu      $s3, $s3, %lo(D_800EF510)
/* 80980 8007FD80 AFAF0044 */  sw         $t7, 0x44($sp)
/* 80984 8007FD84 24110080 */  addiu      $s1, $zero, 0x80
/* 80988 8007FD88 24170E00 */  addiu      $s7, $zero, 0xe00
/* 8098C 8007FD8C 24160008 */  addiu      $s6, $zero, 8
/* 80990 8007FD90 3C150080 */  lui        $s5, 0x80
/* 80994 8007FD94 24140198 */  addiu      $s4, $zero, 0x198
/* 80998 8007FD98 87B8005C */  lh         $t8, 0x5c($sp)
.L8007FD9C:
/* 8099C 8007FD9C 27A3004C */  addiu      $v1, $sp, 0x4c
/* 809A0 8007FDA0 0218082A */  slt        $at, $s0, $t8
/* 809A4 8007FDA4 10200029 */  beqz       $at, .L8007FE4C
/* 809A8 8007FDA8 00705021 */   addu      $t2, $v1, $s0
/* 809AC 8007FDAC 8FA80044 */  lw         $t0, 0x44($sp)
/* 809B0 8007FDB0 3C04800E */  lui        $a0, %hi(D_800E11C0)
/* 809B4 8007FDB4 0010C8C0 */  sll        $t9, $s0, 3
/* 809B8 8007FDB8 248411C0 */  addiu      $a0, $a0, %lo(D_800E11C0)
/* 809BC 8007FDBC 02403025 */  or         $a2, $s2, $zero
/* 809C0 8007FDC0 00003825 */  or         $a3, $zero, $zero
/* 809C4 8007FDC4 0C00C48F */  jal        func_8003123C
/* 809C8 8007FDC8 03282821 */   addu      $a1, $t9, $t0
/* 809CC 8007FDCC 00021C00 */  sll        $v1, $v0, 0x10
/* 809D0 8007FDD0 00034C03 */  sra        $t1, $v1, 0x10
/* 809D4 8007FDD4 11200042 */  beqz       $t1, .L8007FEE0
/* 809D8 8007FDD8 00000000 */   nop
/* 809DC 8007FDDC 01340019 */  multu      $t1, $s4
/* 809E0 8007FDE0 3C198003 */  lui        $t9, %hi(func_80030B0C)
/* 809E4 8007FDE4 00127C00 */  sll        $t7, $s2, 0x10
/* 809E8 8007FDE8 241800B9 */  addiu      $t8, $zero, 0xb9
/* 809EC 8007FDEC 27390B0C */  addiu      $t9, $t9, %lo(func_80030B0C)
/* 809F0 8007FDF0 24080020 */  addiu      $t0, $zero, 0x20
/* 809F4 8007FDF4 2409FFF8 */  addiu      $t1, $zero, -8
/* 809F8 8007FDF8 00005012 */  mflo       $t2
/* 809FC 8007FDFC 026A1021 */  addu       $v0, $s3, $t2
/* 80A00 8007FE00 944B0094 */  lhu        $t3, 0x94($v0)
/* 80A04 8007FE04 8C4D0080 */  lw         $t5, 0x80($v0)
/* 80A08 8007FE08 356C0818 */  ori        $t4, $t3, 0x818
/* 80A0C 8007FE0C 35AE0008 */  ori        $t6, $t5, 8
/* 80A10 8007FE10 A44C0094 */  sh         $t4, 0x94($v0)
/* 80A14 8007FE14 AC4E0080 */  sw         $t6, 0x80($v0)
/* 80A18 8007FE18 AC4F008C */  sw         $t7, 0x8c($v0)
/* 80A1C 8007FE1C AC550090 */  sw         $s5, 0x90($v0)
/* 80A20 8007FE20 AC560188 */  sw         $s6, 0x188($v0)
/* 80A24 8007FE24 A051009C */  sb         $s1, 0x9c($v0)
/* 80A28 8007FE28 A051009D */  sb         $s1, 0x9d($v0)
/* 80A2C 8007FE2C A051009E */  sb         $s1, 0x9e($v0)
/* 80A30 8007FE30 A058009F */  sb         $t8, 0x9f($v0)
/* 80A34 8007FE34 AC57015C */  sw         $s7, 0x15c($v0)
/* 80A38 8007FE38 AC5E016C */  sw         $fp, 0x16c($v0)
/* 80A3C 8007FE3C AC59017C */  sw         $t9, 0x17c($v0)
/* 80A40 8007FE40 AC480104 */  sw         $t0, 0x104($v0)
/* 80A44 8007FE44 10000026 */  b          .L8007FEE0
/* 80A48 8007FE48 AC490108 */   sw        $t1, 0x108($v0)
.L8007FE4C:
/* 80A4C 8007FE4C 914B0000 */  lbu        $t3, ($t2)
/* 80A50 8007FE50 3C04800E */  lui        $a0, %hi(D_800E1298)
/* 80A54 8007FE54 000B6080 */  sll        $t4, $t3, 2
/* 80A58 8007FE58 8FAE0044 */  lw         $t6, 0x44($sp)
/* 80A5C 8007FE5C 008C2021 */  addu       $a0, $a0, $t4
/* 80A60 8007FE60 8C841298 */  lw         $a0, %lo(D_800E1298)($a0)
/* 80A64 8007FE64 001068C0 */  sll        $t5, $s0, 3
/* 80A68 8007FE68 02403025 */  or         $a2, $s2, $zero
/* 80A6C 8007FE6C 00003825 */  or         $a3, $zero, $zero
/* 80A70 8007FE70 0C00C48F */  jal        func_8003123C
/* 80A74 8007FE74 01AE2821 */   addu      $a1, $t5, $t6
/* 80A78 8007FE78 00021C00 */  sll        $v1, $v0, 0x10
/* 80A7C 8007FE7C 00037C03 */  sra        $t7, $v1, 0x10
/* 80A80 8007FE80 11E00017 */  beqz       $t7, .L8007FEE0
/* 80A84 8007FE84 00000000 */   nop
/* 80A88 8007FE88 01F40019 */  multu      $t7, $s4
/* 80A8C 8007FE8C 3C0C8003 */  lui        $t4, %hi(func_80030B84)
/* 80A90 8007FE90 00125C00 */  sll        $t3, $s2, 0x10
/* 80A94 8007FE94 258C0B84 */  addiu      $t4, $t4, %lo(func_80030B84)
/* 80A98 8007FE98 240D0020 */  addiu      $t5, $zero, 0x20
/* 80A9C 8007FE9C 240EFFF8 */  addiu      $t6, $zero, -8
/* 80AA0 8007FEA0 0000C012 */  mflo       $t8
/* 80AA4 8007FEA4 02781021 */  addu       $v0, $s3, $t8
/* 80AA8 8007FEA8 94590094 */  lhu        $t9, 0x94($v0)
/* 80AAC 8007FEAC 8C490080 */  lw         $t1, 0x80($v0)
/* 80AB0 8007FEB0 37280808 */  ori        $t0, $t9, 0x808
/* 80AB4 8007FEB4 352A0008 */  ori        $t2, $t1, 8
/* 80AB8 8007FEB8 A4480094 */  sh         $t0, 0x94($v0)
/* 80ABC 8007FEBC AC4A0080 */  sw         $t2, 0x80($v0)
/* 80AC0 8007FEC0 AC4B008C */  sw         $t3, 0x8c($v0)
/* 80AC4 8007FEC4 AC550090 */  sw         $s5, 0x90($v0)
/* 80AC8 8007FEC8 AC560188 */  sw         $s6, 0x188($v0)
/* 80ACC 8007FECC AC57015C */  sw         $s7, 0x15c($v0)
/* 80AD0 8007FED0 AC5E016C */  sw         $fp, 0x16c($v0)
/* 80AD4 8007FED4 AC4C017C */  sw         $t4, 0x17c($v0)
/* 80AD8 8007FED8 AC4D0104 */  sw         $t5, 0x104($v0)
/* 80ADC 8007FEDC AC4E0108 */  sw         $t6, 0x108($v0)
.L8007FEE0:
/* 80AE0 8007FEE0 26100001 */  addiu      $s0, $s0, 1
/* 80AE4 8007FEE4 00107C00 */  sll        $t7, $s0, 0x10
/* 80AE8 8007FEE8 000F8403 */  sra        $s0, $t7, 0x10
/* 80AEC 8007FEEC 2A010008 */  slti       $at, $s0, 8
/* 80AF0 8007FEF0 1420FFAA */  bnez       $at, .L8007FD9C
/* 80AF4 8007FEF4 87B8005C */   lh        $t8, 0x5c($sp)
.L8007FEF8:
/* 80AF8 8007FEF8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 80AFC 8007FEFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 80B00 8007FF00 8FB1001C */  lw         $s1, 0x1c($sp)
/* 80B04 8007FF04 8FB20020 */  lw         $s2, 0x20($sp)
/* 80B08 8007FF08 8FB30024 */  lw         $s3, 0x24($sp)
/* 80B0C 8007FF0C 8FB40028 */  lw         $s4, 0x28($sp)
/* 80B10 8007FF10 8FB5002C */  lw         $s5, 0x2c($sp)
/* 80B14 8007FF14 8FB60030 */  lw         $s6, 0x30($sp)
/* 80B18 8007FF18 8FB70034 */  lw         $s7, 0x34($sp)
/* 80B1C 8007FF1C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 80B20 8007FF20 03E00008 */  jr         $ra
/* 80B24 8007FF24 27BD0060 */   addiu     $sp, $sp, 0x60
