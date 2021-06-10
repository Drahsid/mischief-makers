glabel func_800AA8E4
/* AB4E4 800AA8E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB4E8 800AA8E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB4EC 800AA8EC 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB4F0 800AA8F0 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB4F4 800AA8F4 00002825 */  or         $a1, $zero, $zero
/* AB4F8 800AA8F8 0C0278BC */  jal        func_8009E2F0
/* AB4FC 800AA8FC 00003025 */   or        $a2, $zero, $zero
/* AB500 800AA900 10000001 */  b          .L800AA908
/* AB504 800AA904 00000000 */   nop
.L800AA908:
/* AB508 800AA908 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB50C 800AA90C 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB510 800AA910 03E00008 */  jr         $ra
/* AB514 800AA914 00000000 */   nop
/* AB518 800AA918 00000000 */  nop
/* AB51C 800AA91C 00000000 */  nop
