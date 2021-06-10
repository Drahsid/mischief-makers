glabel func_8001D5B8
/* 1E1B8 8001D5B8 AFA40000 */  sw         $a0, ($sp)
/* 1E1BC 8001D5BC 00047400 */  sll        $t6, $a0, 0x10
/* 1E1C0 8001D5C0 3C05800F */  lui        $a1, %hi(D_800EF510)
/* 1E1C4 8001D5C4 000E2403 */  sra        $a0, $t6, 0x10
/* 1E1C8 8001D5C8 24A5F510 */  addiu      $a1, $a1, %lo(D_800EF510)
/* 1E1CC 8001D5CC 24020048 */  addiu      $v0, $zero, 0x48
/* 1E1D0 8001D5D0 24060198 */  addiu      $a2, $zero, 0x198
.L8001D5D4:
/* 1E1D4 8001D5D4 00460019 */  multu      $v0, $a2
/* 1E1D8 8001D5D8 24420001 */  addiu      $v0, $v0, 1
/* 1E1DC 8001D5DC 3049FFFF */  andi       $t1, $v0, 0xffff
/* 1E1E0 8001D5E0 2921004F */  slti       $at, $t1, 0x4f
/* 1E1E4 8001D5E4 01201025 */  or         $v0, $t1, $zero
/* 1E1E8 8001D5E8 0000C012 */  mflo       $t8
/* 1E1EC 8001D5EC 00B81821 */  addu       $v1, $a1, $t8
/* 1E1F0 8001D5F0 8479008C */  lh         $t9, 0x8c($v1)
/* 1E1F4 8001D5F4 00000000 */  nop
/* 1E1F8 8001D5F8 03244021 */  addu       $t0, $t9, $a0
/* 1E1FC 8001D5FC 1420FFF5 */  bnez       $at, .L8001D5D4
/* 1E200 8001D600 A468008C */   sh        $t0, 0x8c($v1)
/* 1E204 8001D604 03E00008 */  jr         $ra
/* 1E208 8001D608 00000000 */   nop
