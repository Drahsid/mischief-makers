glabel func_800A9120
/* A9D20 800A9120 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A9D24 800A9124 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9D28 800A9128 AFA40018 */  sw         $a0, 0x18($sp)
/* A9D2C 800A912C AFA5001C */  sw         $a1, 0x1c($sp)
/* A9D30 800A9130 8FA40018 */  lw         $a0, 0x18($sp)
/* A9D34 800A9134 0C02D640 */  jal        func_800B5900
/* A9D38 800A9138 8FA5001C */   lw        $a1, 0x1c($sp)
/* A9D3C 800A913C 10400006 */  beqz       $v0, .L800A9158
/* A9D40 800A9140 00000000 */   nop
.L800A9144:
/* A9D44 800A9144 8FA40018 */  lw         $a0, 0x18($sp)
/* A9D48 800A9148 0C02D640 */  jal        func_800B5900
/* A9D4C 800A914C 8FA5001C */   lw        $a1, 0x1c($sp)
/* A9D50 800A9150 1440FFFC */  bnez       $v0, .L800A9144
/* A9D54 800A9154 00000000 */   nop
.L800A9158:
/* A9D58 800A9158 10000001 */  b          .L800A9160
/* A9D5C 800A915C 00000000 */   nop
.L800A9160:
/* A9D60 800A9160 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9D64 800A9164 27BD0018 */  addiu      $sp, $sp, 0x18
/* A9D68 800A9168 03E00008 */  jr         $ra
/* A9D6C 800A916C 00000000 */   nop
