glabel func_8001FCA0
/* 208A0 8001FCA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 208A4 8001FCA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 208A8 8001FCA8 00A03825 */  or         $a3, $a1, $zero
/* 208AC 8001FCAC 3090FFFF */  andi       $s0, $a0, 0xffff
/* 208B0 8001FCB0 AFA40020 */  sw         $a0, 0x20($sp)
/* 208B4 8001FCB4 AFA50024 */  sw         $a1, 0x24($sp)
/* 208B8 8001FCB8 00062C00 */  sll        $a1, $a2, 0x10
/* 208BC 8001FCBC 00072400 */  sll        $a0, $a3, 0x10
/* 208C0 8001FCC0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 208C4 8001FCC4 AFA60028 */  sw         $a2, 0x28($sp)
/* 208C8 8001FCC8 0004CC03 */  sra        $t9, $a0, 0x10
/* 208CC 8001FCCC 00057403 */  sra        $t6, $a1, 0x10
/* 208D0 8001FCD0 01C02825 */  or         $a1, $t6, $zero
/* 208D4 8001FCD4 03202025 */  or         $a0, $t9, $zero
/* 208D8 8001FCD8 A7A6002A */  sh         $a2, 0x2a($sp)
/* 208DC 8001FCDC 0C004AAD */  jal        func_80012AB4
/* 208E0 8001FCE0 A7A70026 */   sh        $a3, 0x26($sp)
/* 208E4 8001FCE4 0C01721C */  jal        func_8005C870
/* 208E8 8001FCE8 304400FF */   andi      $a0, $v0, 0xff
/* 208EC 8001FCEC 3C0D800C */  lui        $t5, %hi(D_800BE4DC)
/* 208F0 8001FCF0 3C1F800C */  lui        $ra, %hi(D_800BE4D8)
/* 208F4 8001FCF4 27FFE4D8 */  addiu      $ra, $ra, %lo(D_800BE4D8)
/* 208F8 8001FCF8 25ADE4DC */  addiu      $t5, $t5, %lo(D_800BE4DC)
/* 208FC 8001FCFC 87A6002A */  lh         $a2, 0x2a($sp)
/* 20900 8001FD00 87A70026 */  lh         $a3, 0x26($sp)
/* 20904 8001FD04 304300FF */  andi       $v1, $v0, 0xff
/* 20908 8001FD08 A5A00000 */  sh         $zero, ($t5)
/* 2090C 8001FD0C 10400003 */  beqz       $v0, .L8001FD1C
/* 20910 8001FD10 A7E00000 */   sh        $zero, ($ra)
/* 20914 8001FD14 10000062 */  b          .L8001FEA0
/* 20918 8001FD18 00601025 */   or        $v0, $v1, $zero
.L8001FD1C:
/* 2091C 8001FD1C 3C05800C */  lui        $a1, %hi(D_800BE4D0)
/* 20920 8001FD20 94A5E4D0 */  lhu        $a1, %lo(D_800BE4D0)($a1)
/* 20924 8001FD24 00001825 */  or         $v1, $zero, $zero
/* 20928 8001FD28 18A0002D */  blez       $a1, .L8001FDE0
/* 2092C 8001FD2C 3C0C8012 */   lui       $t4, 0x8012
/* 20930 8001FD30 3C0B8012 */  lui        $t3, 0x8012
/* 20934 8001FD34 3C0A8012 */  lui        $t2, %hi(D_8011D610)
/* 20938 8001FD38 3C098012 */  lui        $t1, %hi(D_8011D3D0)
/* 2093C 8001FD3C 3C088012 */  lui        $t0, %hi(D_8011D170)
/* 20940 8001FD40 2508D170 */  addiu      $t0, $t0, %lo(D_8011D170)
/* 20944 8001FD44 2529D3D0 */  addiu      $t1, $t1, %lo(D_8011D3D0)
/* 20948 8001FD48 254AD610 */  addiu      $t2, $t2, %lo(D_8011D610)
/* 2094C 8001FD4C 256BD850 */  addiu      $t3, $t3, -0x27b0
/* 20950 8001FD50 258CCF20 */  addiu      $t4, $t4, -0x30e0
.L8001FD54:
/* 20954 8001FD54 00031040 */  sll        $v0, $v1, 1
/* 20958 8001FD58 01027821 */  addu       $t7, $t0, $v0
/* 2095C 8001FD5C 85F80000 */  lh         $t8, ($t7)
/* 20960 8001FD60 24630001 */  addiu      $v1, $v1, 1
/* 20964 8001FD64 0307082A */  slt        $at, $t8, $a3
/* 20968 8001FD68 14200018 */  bnez       $at, .L8001FDCC
/* 2096C 8001FD6C 0122C821 */   addu      $t9, $t1, $v0
/* 20970 8001FD70 872E0000 */  lh         $t6, ($t9)
/* 20974 8001FD74 01427821 */  addu       $t7, $t2, $v0
/* 20978 8001FD78 00EE082A */  slt        $at, $a3, $t6
/* 2097C 8001FD7C 14200014 */  bnez       $at, .L8001FDD0
/* 20980 8001FD80 3079FFFF */   andi      $t9, $v1, 0xffff
/* 20984 8001FD84 85F80000 */  lh         $t8, ($t7)
/* 20988 8001FD88 0162C821 */  addu       $t9, $t3, $v0
/* 2098C 8001FD8C 0306082A */  slt        $at, $t8, $a2
/* 20990 8001FD90 1420000E */  bnez       $at, .L8001FDCC
/* 20994 8001FD94 00000000 */   nop
/* 20998 8001FD98 872E0000 */  lh         $t6, ($t9)
/* 2099C 8001FD9C 01827821 */  addu       $t7, $t4, $v0
/* 209A0 8001FDA0 00CE082A */  slt        $at, $a2, $t6
/* 209A4 8001FDA4 1420000A */  bnez       $at, .L8001FDD0
/* 209A8 8001FDA8 3079FFFF */   andi      $t9, $v1, 0xffff
/* 209AC 8001FDAC 95E40000 */  lhu        $a0, ($t7)
/* 209B0 8001FDB0 00000000 */  nop
/* 209B4 8001FDB4 12040005 */  beq        $s0, $a0, .L8001FDCC
/* 209B8 8001FDB8 24180001 */   addiu     $t8, $zero, 1
/* 209BC 8001FDBC A5A40000 */  sh         $a0, ($t5)
/* 209C0 8001FDC0 A7F80000 */  sh         $t8, ($ra)
/* 209C4 8001FDC4 10000036 */  b          .L8001FEA0
/* 209C8 8001FDC8 240200C0 */   addiu     $v0, $zero, 0xc0
.L8001FDCC:
/* 209CC 8001FDCC 3079FFFF */  andi       $t9, $v1, 0xffff
.L8001FDD0:
/* 209D0 8001FDD0 0325082A */  slt        $at, $t9, $a1
/* 209D4 8001FDD4 1420FFDF */  bnez       $at, .L8001FD54
/* 209D8 8001FDD8 03201825 */   or        $v1, $t9, $zero
/* 209DC 8001FDDC 00001825 */  or         $v1, $zero, $zero
.L8001FDE0:
/* 209E0 8001FDE0 3C05800C */  lui        $a1, %hi(D_800BE4D4)
/* 209E4 8001FDE4 94A5E4D4 */  lhu        $a1, %lo(D_800BE4D4)($a1)
/* 209E8 8001FDE8 3C0C8012 */  lui        $t4, %hi(D_8011CDF8)
/* 209EC 8001FDEC 18A0002B */  blez       $a1, .L8001FE9C
/* 209F0 8001FDF0 258CCDF8 */   addiu     $t4, $t4, %lo(D_8011CDF8)
/* 209F4 8001FDF4 3C0B8012 */  lui        $t3, 0x8012
/* 209F8 8001FDF8 3C0A8012 */  lui        $t2, %hi(D_8011D4F0)
/* 209FC 8001FDFC 3C098012 */  lui        $t1, %hi(D_8011D290)
/* 20A00 8001FE00 3C088012 */  lui        $t0, %hi(D_8011D048)
/* 20A04 8001FE04 2508D048 */  addiu      $t0, $t0, %lo(D_8011D048)
/* 20A08 8001FE08 2529D290 */  addiu      $t1, $t1, %lo(D_8011D290)
/* 20A0C 8001FE0C 254AD4F0 */  addiu      $t2, $t2, %lo(D_8011D4F0)
/* 20A10 8001FE10 256BD730 */  addiu      $t3, $t3, -0x28d0
.L8001FE14:
/* 20A14 8001FE14 00031040 */  sll        $v0, $v1, 1
/* 20A18 8001FE18 01027021 */  addu       $t6, $t0, $v0
/* 20A1C 8001FE1C 85CF0000 */  lh         $t7, ($t6)
/* 20A20 8001FE20 24630001 */  addiu      $v1, $v1, 1
/* 20A24 8001FE24 01E7082A */  slt        $at, $t7, $a3
/* 20A28 8001FE28 14200018 */  bnez       $at, .L8001FE8C
/* 20A2C 8001FE2C 0122C021 */   addu      $t8, $t1, $v0
/* 20A30 8001FE30 87190000 */  lh         $t9, ($t8)
/* 20A34 8001FE34 01427021 */  addu       $t6, $t2, $v0
/* 20A38 8001FE38 00F9082A */  slt        $at, $a3, $t9
/* 20A3C 8001FE3C 14200014 */  bnez       $at, .L8001FE90
/* 20A40 8001FE40 3078FFFF */   andi      $t8, $v1, 0xffff
/* 20A44 8001FE44 85CF0000 */  lh         $t7, ($t6)
/* 20A48 8001FE48 0162C021 */  addu       $t8, $t3, $v0
/* 20A4C 8001FE4C 01E6082A */  slt        $at, $t7, $a2
/* 20A50 8001FE50 1420000E */  bnez       $at, .L8001FE8C
/* 20A54 8001FE54 00000000 */   nop
/* 20A58 8001FE58 87190000 */  lh         $t9, ($t8)
/* 20A5C 8001FE5C 01827021 */  addu       $t6, $t4, $v0
/* 20A60 8001FE60 00D9082A */  slt        $at, $a2, $t9
/* 20A64 8001FE64 1420000A */  bnez       $at, .L8001FE90
/* 20A68 8001FE68 3078FFFF */   andi      $t8, $v1, 0xffff
/* 20A6C 8001FE6C 95C40000 */  lhu        $a0, ($t6)
/* 20A70 8001FE70 00000000 */  nop
/* 20A74 8001FE74 12040005 */  beq        $s0, $a0, .L8001FE8C
/* 20A78 8001FE78 240F0001 */   addiu     $t7, $zero, 1
/* 20A7C 8001FE7C A5A40000 */  sh         $a0, ($t5)
/* 20A80 8001FE80 A7EF0000 */  sh         $t7, ($ra)
/* 20A84 8001FE84 10000006 */  b          .L8001FEA0
/* 20A88 8001FE88 24020040 */   addiu     $v0, $zero, 0x40
.L8001FE8C:
/* 20A8C 8001FE8C 3078FFFF */  andi       $t8, $v1, 0xffff
.L8001FE90:
/* 20A90 8001FE90 0305082A */  slt        $at, $t8, $a1
/* 20A94 8001FE94 1420FFDF */  bnez       $at, .L8001FE14
/* 20A98 8001FE98 03001825 */   or        $v1, $t8, $zero
.L8001FE9C:
/* 20A9C 8001FE9C 00001025 */  or         $v0, $zero, $zero
.L8001FEA0:
/* 20AA0 8001FEA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 20AA4 8001FEA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 20AA8 8001FEA8 03E00008 */  jr         $ra
/* 20AAC 8001FEAC 27BD0020 */   addiu     $sp, $sp, 0x20
