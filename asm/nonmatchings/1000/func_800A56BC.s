glabel func_800A56BC
/* A62BC 800A56BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A62C0 800A56C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A62C4 800A56C4 AFA40018 */  sw         $a0, 0x18($sp)
/* A62C8 800A56C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* A62CC 800A56CC AFA60020 */  sw         $a2, 0x20($sp)
/* A62D0 800A56D0 8FA40018 */  lw         $a0, 0x18($sp)
/* A62D4 800A56D4 8FA5001C */  lw         $a1, 0x1c($sp)
/* A62D8 800A56D8 0C029735 */  jal        func_800A5CD4
/* A62DC 800A56DC 8FA60020 */   lw        $a2, 0x20($sp)
/* A62E0 800A56E0 8FAE0020 */  lw         $t6, 0x20($sp)
/* A62E4 800A56E4 10000003 */  b          .L800A56F4
/* A62E8 800A56E8 004E1021 */   addu      $v0, $v0, $t6
/* A62EC 800A56EC 10000001 */  b          .L800A56F4
/* A62F0 800A56F0 00000000 */   nop
.L800A56F4:
/* A62F4 800A56F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A62F8 800A56F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* A62FC 800A56FC 03E00008 */  jr         $ra
/* A6300 800A5700 00000000 */   nop
/* A6304 800A5704 00000000 */  nop
/* A6308 800A5708 00000000 */  nop
/* A630C 800A570C 00000000 */  nop
