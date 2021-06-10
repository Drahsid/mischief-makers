glabel func_800A9170
/* A9D70 800A9170 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A9D74 800A9174 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9D78 800A9178 AFA40020 */  sw         $a0, 0x20($sp)
/* A9D7C 800A917C 8FAE0020 */  lw         $t6, 0x20($sp)
/* A9D80 800A9180 3C010400 */  lui        $at, 0x400
/* A9D84 800A9184 01C1082B */  sltu       $at, $t6, $at
/* A9D88 800A9188 1420000A */  bnez       $at, .L800A91B4
/* A9D8C 800A918C 00000000 */   nop
/* A9D90 800A9190 3C010500 */  lui        $at, 0x500
/* A9D94 800A9194 01C1082B */  sltu       $at, $t6, $at
/* A9D98 800A9198 10200006 */  beqz       $at, .L800A91B4
/* A9D9C 800A919C 00000000 */   nop
/* A9DA0 800A91A0 8FA40020 */  lw         $a0, 0x20($sp)
/* A9DA4 800A91A4 0C02A418 */  jal        func_800A9060
/* A9DA8 800A91A8 27A5001C */   addiu     $a1, $sp, 0x1c
/* A9DAC 800A91AC 10000005 */  b          .L800A91C4
/* A9DB0 800A91B0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A91B4:
/* A9DB4 800A91B4 10000003 */  b          .L800A91C4
/* A9DB8 800A91B8 00001025 */   or        $v0, $zero, $zero
/* A9DBC 800A91BC 10000001 */  b          .L800A91C4
/* A9DC0 800A91C0 00000000 */   nop
.L800A91C4:
/* A9DC4 800A91C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9DC8 800A91C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A9DCC 800A91CC 03E00008 */  jr         $ra
/* A9DD0 800A91D0 00000000 */   nop
