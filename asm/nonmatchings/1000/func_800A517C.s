glabel func_800A517C
/* A5D7C 800A517C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A5D80 800A5180 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5D84 800A5184 AFA40058 */  sw         $a0, 0x58($sp)
/* A5D88 800A5188 AFA5005C */  sw         $a1, 0x5c($sp)
/* A5D8C 800A518C AFA60060 */  sw         $a2, 0x60($sp)
/* A5D90 800A5190 AFA70064 */  sw         $a3, 0x64($sp)
/* A5D94 800A5194 27A40018 */  addiu      $a0, $sp, 0x18
/* A5D98 800A5198 8FA5005C */  lw         $a1, 0x5c($sp)
/* A5D9C 800A519C 8FA60060 */  lw         $a2, 0x60($sp)
/* A5DA0 800A51A0 0C029444 */  jal        func_800A5110
/* A5DA4 800A51A4 8FA70064 */   lw        $a3, 0x64($sp)
/* A5DA8 800A51A8 27A40018 */  addiu      $a0, $sp, 0x18
/* A5DAC 800A51AC 0C02CA98 */  jal        func_800B2A60
/* A5DB0 800A51B0 8FA50058 */   lw        $a1, 0x58($sp)
/* A5DB4 800A51B4 10000001 */  b          .L800A51BC
/* A5DB8 800A51B8 00000000 */   nop
.L800A51BC:
/* A5DBC 800A51BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5DC0 800A51C0 27BD0058 */  addiu      $sp, $sp, 0x58
/* A5DC4 800A51C4 03E00008 */  jr         $ra
/* A5DC8 800A51C8 00000000 */   nop
/* A5DCC 800A51CC 00000000 */  nop
