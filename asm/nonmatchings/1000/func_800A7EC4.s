glabel func_800A7EC4
/* A8AC4 800A7EC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8AC8 800A7EC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8ACC 800A7ECC 3C048018 */  lui        $a0, %hi(D_80185838)
/* A8AD0 800A7ED0 24845838 */  addiu      $a0, $a0, %lo(D_80185838)
/* A8AD4 800A7ED4 00002825 */  or         $a1, $zero, $zero
/* A8AD8 800A7ED8 0C0278BC */  jal        func_8009E2F0
/* A8ADC 800A7EDC 00003025 */   or        $a2, $zero, $zero
/* A8AE0 800A7EE0 10000001 */  b          .L800A7EE8
/* A8AE4 800A7EE4 00000000 */   nop
.L800A7EE8:
/* A8AE8 800A7EE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8AEC 800A7EEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A8AF0 800A7EF0 03E00008 */  jr         $ra
/* A8AF4 800A7EF4 00000000 */   nop
/* A8AF8 800A7EF8 00000000 */  nop
/* A8AFC 800A7EFC 00000000 */  nop
