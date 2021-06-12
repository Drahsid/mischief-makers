glabel func_8002A990
/* 2B590 8002A990 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B594 8002A994 24080198 */  addiu      $t0, $zero, 0x198
/* 2B598 8002A998 01C80019 */  multu      $t6, $t0
/* 2B59C 8002A99C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 2B5A0 8002A9A0 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 2B5A4 8002A9A4 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 2B5A8 8002A9A8 AFA50004 */  sw         $a1, 4($sp)
/* 2B5AC 8002A9AC 01E02825 */  or         $a1, $t7, $zero
/* 2B5B0 8002A9B0 AFA40000 */  sw         $a0, ($sp)
/* 2B5B4 8002A9B4 01C02025 */  or         $a0, $t6, $zero
/* 2B5B8 8002A9B8 0000C012 */  mflo       $t8
/* 2B5BC 8002A9BC 00F81821 */  addu       $v1, $a3, $t8
/* 2B5C0 8002A9C0 846900AE */  lh         $t1, 0xae($v1)
/* 2B5C4 8002A9C4 01E80019 */  multu      $t7, $t0
/* 2B5C8 8002A9C8 846A00B0 */  lh         $t2, 0xb0($v1)
/* 2B5CC 8002A9CC 00000000 */  nop
/* 2B5D0 8002A9D0 012A5821 */  addu       $t3, $t1, $t2
/* 2B5D4 8002A9D4 0000C812 */  mflo       $t9
/* 2B5D8 8002A9D8 00F93021 */  addu       $a2, $a3, $t9
/* 2B5DC 8002A9DC 05610003 */  bgez       $t3, .L8002A9EC
/* 2B5E0 8002A9E0 000B6043 */   sra       $t4, $t3, 1
/* 2B5E4 8002A9E4 25610001 */  addiu      $at, $t3, 1
/* 2B5E8 8002A9E8 00016043 */  sra        $t4, $at, 1
.L8002A9EC:
/* 2B5EC 8002A9EC 84CF00B0 */  lh         $t7, 0xb0($a2)
/* 2B5F0 8002A9F0 84D800AE */  lh         $t8, 0xae($a2)
/* 2B5F4 8002A9F4 84CD008C */  lh         $t5, 0x8c($a2)
/* 2B5F8 8002A9F8 01F8C821 */  addu       $t9, $t7, $t8
/* 2B5FC 8002A9FC 846B008C */  lh         $t3, 0x8c($v1)
/* 2B600 8002AA00 018D7021 */  addu       $t6, $t4, $t5
/* 2B604 8002AA04 07210003 */  bgez       $t9, .L8002AA14
/* 2B608 8002AA08 00194843 */   sra       $t1, $t9, 1
/* 2B60C 8002AA0C 27210001 */  addiu      $at, $t9, 1
/* 2B610 8002AA10 00014843 */  sra        $t1, $at, 1
.L8002AA14:
/* 2B614 8002AA14 01C95021 */  addu       $t2, $t6, $t1
/* 2B618 8002AA18 03E00008 */  jr         $ra
/* 2B61C 8002AA1C 014B1023 */   subu      $v0, $t2, $t3
