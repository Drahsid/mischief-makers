glabel func_8006FB48
/* 70748 8006FB48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7074C 8006FB4C AFA40020 */  sw         $a0, 0x20($sp)
/* 70750 8006FB50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70754 8006FB54 97A40022 */  lhu        $a0, 0x22($sp)
/* 70758 8006FB58 0C01B274 */  jal        func_8006C9D0
/* 7075C 8006FB5C 00000000 */   nop
/* 70760 8006FB60 14400017 */  bnez       $v0, .L8006FBC0
/* 70764 8006FB64 3C0F800F */   lui       $t7, %hi(D_800EF510)
/* 70768 8006FB68 97A40022 */  lhu        $a0, 0x22($sp)
/* 7076C 8006FB6C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 70770 8006FB70 00047080 */  sll        $t6, $a0, 2
/* 70774 8006FB74 01C47023 */  subu       $t6, $t6, $a0
/* 70778 8006FB78 000E7080 */  sll        $t6, $t6, 2
/* 7077C 8006FB7C 01C47021 */  addu       $t6, $t6, $a0
/* 70780 8006FB80 000E7080 */  sll        $t6, $t6, 2
/* 70784 8006FB84 01C47023 */  subu       $t6, $t6, $a0
/* 70788 8006FB88 000E70C0 */  sll        $t6, $t6, 3
/* 7078C 8006FB8C 01CF1021 */  addu       $v0, $t6, $t7
/* 70790 8006FB90 945800D0 */  lhu        $t8, 0xd0($v0)
/* 70794 8006FB94 240101F0 */  addiu      $at, $zero, 0x1f0
/* 70798 8006FB98 17010007 */  bne        $t8, $at, .L8006FBB8
/* 7079C 8006FB9C 00000000 */   nop
/* 707A0 8006FBA0 0C01A9C9 */  jal        func_8006A724
/* 707A4 8006FBA4 AFA2001C */   sw        $v0, 0x1c($sp)
/* 707A8 8006FBA8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 707AC 8006FBAC 241901F1 */  addiu      $t9, $zero, 0x1f1
/* 707B0 8006FBB0 97A40022 */  lhu        $a0, 0x22($sp)
/* 707B4 8006FBB4 A45900D0 */  sh         $t9, 0xd0($v0)
.L8006FBB8:
/* 707B8 8006FBB8 0C01AA49 */  jal        func_8006A924
/* 707BC 8006FBBC 00000000 */   nop
.L8006FBC0:
/* 707C0 8006FBC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 707C4 8006FBC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 707C8 8006FBC8 03E00008 */  jr         $ra
/* 707CC 8006FBCC 00000000 */   nop
