glabel func_8002FD48
/* 30948 8002FD48 3C02800D */  lui        $v0, %hi(D_800D2950)
/* 3094C 8002FD4C 94422950 */  lhu        $v0, %lo(D_800D2950)($v0)
/* 30950 8002FD50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 30954 8002FD54 AFBF001C */  sw         $ra, 0x1c($sp)
/* 30958 8002FD58 10400011 */  beqz       $v0, .L8002FDA0
/* 3095C 8002FD5C AFA40020 */   sw        $a0, 0x20($sp)
/* 30960 8002FD60 00027080 */  sll        $t6, $v0, 2
/* 30964 8002FD64 01C27023 */  subu       $t6, $t6, $v0
/* 30968 8002FD68 000E7080 */  sll        $t6, $t6, 2
/* 3096C 8002FD6C 01C27021 */  addu       $t6, $t6, $v0
/* 30970 8002FD70 000E7080 */  sll        $t6, $t6, 2
/* 30974 8002FD74 01C27023 */  subu       $t6, $t6, $v0
/* 30978 8002FD78 3C03800F */  lui        $v1, %hi(gActors)
/* 3097C 8002FD7C 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 30980 8002FD80 000E70C0 */  sll        $t6, $t6, 3
/* 30984 8002FD84 006E7821 */  addu       $t7, $v1, $t6
/* 30988 8002FD88 85F800E0 */  lh         $t8, 0xe0($t7)
/* 3098C 8002FD8C 00000000 */  nop
/* 30990 8002FD90 17000004 */  bnez       $t8, .L8002FDA4
/* 30994 8002FD94 97B90022 */   lhu       $t9, 0x22($sp)
/* 30998 8002FD98 10000053 */  b          .L8002FEE8
/* 3099C 8002FD9C 00001025 */   or        $v0, $zero, $zero
.L8002FDA0:
/* 309A0 8002FDA0 97B90022 */  lhu        $t9, 0x22($sp)
.L8002FDA4:
/* 309A4 8002FDA4 3C03800F */  lui        $v1, %hi(gActors)
/* 309A8 8002FDA8 001950C0 */  sll        $t2, $t9, 3
/* 309AC 8002FDAC 3C0B8010 */  lui        $t3, %hi(D_801069E0)
/* 309B0 8002FDB0 01595021 */  addu       $t2, $t2, $t9
/* 309B4 8002FDB4 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 309B8 8002FDB8 000A5100 */  sll        $t2, $t2, 4
/* 309BC 8002FDBC 256B69E0 */  addiu      $t3, $t3, %lo(D_801069E0)
/* 309C0 8002FDC0 014B4821 */  addu       $t1, $t2, $t3
/* 309C4 8002FDC4 85270084 */  lh         $a3, 0x84($t1)
/* 309C8 8002FDC8 84640088 */  lh         $a0, 0x88($v1)
/* 309CC 8002FDCC 846C00AA */  lh         $t4, 0xaa($v1)
/* 309D0 8002FDD0 24E50006 */  addiu      $a1, $a3, 6
/* 309D4 8002FDD4 008C6821 */  addu       $t5, $a0, $t4
/* 309D8 8002FDD8 00AD082A */  slt        $at, $a1, $t5
/* 309DC 8002FDDC 1420001C */  bnez       $at, .L8002FE50
/* 309E0 8002FDE0 00000000 */   nop
/* 309E4 8002FDE4 846E00AC */  lh         $t6, 0xac($v1)
/* 309E8 8002FDE8 24F8FFFA */  addiu      $t8, $a3, -6
/* 309EC 8002FDEC 008E7821 */  addu       $t7, $a0, $t6
/* 309F0 8002FDF0 01F8082A */  slt        $at, $t7, $t8
/* 309F4 8002FDF4 14200016 */  bnez       $at, .L8002FE50
/* 309F8 8002FDF8 00000000 */   nop
/* 309FC 8002FDFC 8462008C */  lh         $v0, 0x8c($v1)
/* 30A00 8002FE00 85280088 */  lh         $t0, 0x88($t1)
/* 30A04 8002FE04 846A00AE */  lh         $t2, 0xae($v1)
/* 30A08 8002FE08 250CFFFA */  addiu      $t4, $t0, -6
/* 30A0C 8002FE0C 004A5821 */  addu       $t3, $v0, $t2
/* 30A10 8002FE10 016C082A */  slt        $at, $t3, $t4
/* 30A14 8002FE14 1420000E */  bnez       $at, .L8002FE50
/* 30A18 8002FE18 00000000 */   nop
/* 30A1C 8002FE1C 846D00B0 */  lh         $t5, 0xb0($v1)
/* 30A20 8002FE20 250F0006 */  addiu      $t7, $t0, 6
/* 30A24 8002FE24 004D7021 */  addu       $t6, $v0, $t5
/* 30A28 8002FE28 01EE082A */  slt        $at, $t7, $t6
/* 30A2C 8002FE2C 14200008 */  bnez       $at, .L8002FE50
/* 30A30 8002FE30 00000000 */   nop
/* 30A34 8002FE34 8D26008C */  lw         $a2, 0x8c($t1)
/* 30A38 8002FE38 03202025 */  or         $a0, $t9, $zero
/* 30A3C 8002FE3C 24050001 */  addiu      $a1, $zero, 1
/* 30A40 8002FE40 0C00BE4F */  jal        func_8002F93C
/* 30A44 8002FE44 AFA80010 */   sw        $t0, 0x10($sp)
/* 30A48 8002FE48 10000027 */  b          .L8002FEE8
/* 30A4C 8002FE4C 24020001 */   addiu     $v0, $zero, 1
.L8002FE50:
/* 30A50 8002FE50 8C780080 */  lw         $t8, 0x80($v1)
/* 30A54 8002FE54 00000000 */  nop
/* 30A58 8002FE58 330A0800 */  andi       $t2, $t8, 0x800
/* 30A5C 8002FE5C 11400022 */  beqz       $t2, .L8002FEE8
/* 30A60 8002FE60 00001025 */   or        $v0, $zero, $zero
/* 30A64 8002FE64 846B00A2 */  lh         $t3, 0xa2($v1)
/* 30A68 8002FE68 00000000 */  nop
/* 30A6C 8002FE6C 008B6021 */  addu       $t4, $a0, $t3
/* 30A70 8002FE70 00AC082A */  slt        $at, $a1, $t4
/* 30A74 8002FE74 1420001C */  bnez       $at, .L8002FEE8
/* 30A78 8002FE78 00001025 */   or        $v0, $zero, $zero
/* 30A7C 8002FE7C 846D00A4 */  lh         $t5, 0xa4($v1)
/* 30A80 8002FE80 24EFFFFA */  addiu      $t7, $a3, -6
/* 30A84 8002FE84 008D7021 */  addu       $t6, $a0, $t5
/* 30A88 8002FE88 01CF082A */  slt        $at, $t6, $t7
/* 30A8C 8002FE8C 14200016 */  bnez       $at, .L8002FEE8
/* 30A90 8002FE90 00001025 */   or        $v0, $zero, $zero
/* 30A94 8002FE94 8462008C */  lh         $v0, 0x8c($v1)
/* 30A98 8002FE98 85280088 */  lh         $t0, 0x88($t1)
/* 30A9C 8002FE9C 847900A6 */  lh         $t9, 0xa6($v1)
/* 30AA0 8002FEA0 250AFFFA */  addiu      $t2, $t0, -6
/* 30AA4 8002FEA4 0059C021 */  addu       $t8, $v0, $t9
/* 30AA8 8002FEA8 030A082A */  slt        $at, $t8, $t2
/* 30AAC 8002FEAC 1420000D */  bnez       $at, .L8002FEE4
/* 30AB0 8002FEB0 00000000 */   nop
/* 30AB4 8002FEB4 846B00A8 */  lh         $t3, 0xa8($v1)
/* 30AB8 8002FEB8 250D0006 */  addiu      $t5, $t0, 6
/* 30ABC 8002FEBC 004B6021 */  addu       $t4, $v0, $t3
/* 30AC0 8002FEC0 01AC082A */  slt        $at, $t5, $t4
/* 30AC4 8002FEC4 14200007 */  bnez       $at, .L8002FEE4
/* 30AC8 8002FEC8 24050001 */   addiu     $a1, $zero, 1
/* 30ACC 8002FECC 97A40022 */  lhu        $a0, 0x22($sp)
/* 30AD0 8002FED0 8D26008C */  lw         $a2, 0x8c($t1)
/* 30AD4 8002FED4 0C00BE4F */  jal        func_8002F93C
/* 30AD8 8002FED8 AFA80010 */   sw        $t0, 0x10($sp)
/* 30ADC 8002FEDC 10000002 */  b          .L8002FEE8
/* 30AE0 8002FEE0 24020002 */   addiu     $v0, $zero, 2
.L8002FEE4:
/* 30AE4 8002FEE4 00001025 */  or         $v0, $zero, $zero
.L8002FEE8:
/* 30AE8 8002FEE8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 30AEC 8002FEEC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 30AF0 8002FEF0 03E00008 */  jr         $ra
/* 30AF4 8002FEF4 00000000 */   nop
