glabel func_800AA5A0
/* AB1A0 800AA5A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB1A4 800AA5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB1A8 800AA5A8 0C02A6F2 */  jal        func_800A9BC8
/* AB1AC 800AA5AC 00000000 */   nop
/* AB1B0 800AA5B0 0C02D9E7 */  jal        func_800B679C
/* AB1B4 800AA5B4 00002025 */   or        $a0, $zero, $zero
/* AB1B8 800AA5B8 0C02A9A1 */  jal        func_800AA684
/* AB1BC 800AA5BC 00000000 */   nop
/* AB1C0 800AA5C0 10000001 */  b          .L800AA5C8
/* AB1C4 800AA5C4 00000000 */   nop
.L800AA5C8:
/* AB1C8 800AA5C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB1CC 800AA5CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB1D0 800AA5D0 03E00008 */  jr         $ra
/* AB1D4 800AA5D4 00000000 */   nop
