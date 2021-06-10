glabel func_8006FD74
/* 70974 8006FD74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70978 8006FD78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7097C 8006FD7C AFA40018 */  sw         $a0, 0x18($sp)
/* 70980 8006FD80 308EFFFF */  andi       $t6, $a0, 0xffff
/* 70984 8006FD84 01C02025 */  or         $a0, $t6, $zero
/* 70988 8006FD88 0C01B22E */  jal        func_8006C8B8
/* 7098C 8006FD8C A7AE001A */   sh        $t6, 0x1a($sp)
/* 70990 8006FD90 97A4001A */  lhu        $a0, 0x1a($sp)
/* 70994 8006FD94 14400020 */  bnez       $v0, .L8006FE18
/* 70998 8006FD98 00047880 */   sll       $t7, $a0, 2
/* 7099C 8006FD9C 01E47823 */  subu       $t7, $t7, $a0
/* 709A0 8006FDA0 000F7880 */  sll        $t7, $t7, 2
/* 709A4 8006FDA4 01E47821 */  addu       $t7, $t7, $a0
/* 709A8 8006FDA8 000F7880 */  sll        $t7, $t7, 2
/* 709AC 8006FDAC 01E47823 */  subu       $t7, $t7, $a0
/* 709B0 8006FDB0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 709B4 8006FDB4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 709B8 8006FDB8 000F78C0 */  sll        $t7, $t7, 3
/* 709BC 8006FDBC 01F81021 */  addu       $v0, $t7, $t8
/* 709C0 8006FDC0 944300D0 */  lhu        $v1, 0xd0($v0)
/* 709C4 8006FDC4 24010210 */  addiu      $at, $zero, 0x210
/* 709C8 8006FDC8 14610007 */  bne        $v1, $at, .L8006FDE8
/* 709CC 8006FDCC 24790001 */   addiu     $t9, $v1, 1
/* 709D0 8006FDD0 3C08800E */  lui        $t0, %hi(D_800E17DC)
/* 709D4 8006FDD4 250817DC */  addiu      $t0, $t0, %lo(D_800E17DC)
/* 709D8 8006FDD8 24090001 */  addiu      $t1, $zero, 1
/* 709DC 8006FDDC A45900D0 */  sh         $t9, 0xd0($v0)
/* 709E0 8006FDE0 A44900E6 */  sh         $t1, 0xe6($v0)
/* 709E4 8006FDE4 AC4800E8 */  sw         $t0, 0xe8($v0)
.L8006FDE8:
/* 709E8 8006FDE8 844A00E6 */  lh         $t2, 0xe6($v0)
/* 709EC 8006FDEC 240B0060 */  addiu      $t3, $zero, 0x60
/* 709F0 8006FDF0 15400007 */  bnez       $t2, .L8006FE10
/* 709F4 8006FDF4 3C0140C0 */   lui       $at, 0x40c0
/* 709F8 8006FDF8 44812000 */  mtc1       $at, $f4
/* 709FC 8006FDFC 44803000 */  mtc1       $zero, $f6
/* 70A00 8006FE00 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 70A04 8006FE04 E444013C */  swc1       $f4, 0x13c($v0)
/* 70A08 8006FE08 10000003 */  b          .L8006FE18
/* 70A0C 8006FE0C E4460144 */   swc1      $f6, 0x144($v0)
.L8006FE10:
/* 70A10 8006FE10 0C01A6E5 */  jal        func_80069B94
/* 70A14 8006FE14 00000000 */   nop
.L8006FE18:
/* 70A18 8006FE18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70A1C 8006FE1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70A20 8006FE20 03E00008 */  jr         $ra
/* 70A24 8006FE24 00000000 */   nop
