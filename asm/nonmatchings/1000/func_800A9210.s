glabel func_800A9210
/* A9E10 800A9210 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9E14 800A9214 00C03825 */  or         $a3, $a2, $zero
/* A9E18 800A9218 10E00008 */  beqz       $a3, .L800A923C
/* A9E1C 800A921C 24C6FFFF */   addiu     $a2, $a2, -1
.L800A9220:
/* A9E20 800A9220 8CAE0000 */  lw         $t6, ($a1)
/* A9E24 800A9224 24840004 */  addiu      $a0, $a0, 4
/* A9E28 800A9228 24A50004 */  addiu      $a1, $a1, 4
/* A9E2C 800A922C AC8EFFFC */  sw         $t6, -4($a0)
/* A9E30 800A9230 00C03825 */  or         $a3, $a2, $zero
/* A9E34 800A9234 14E0FFFA */  bnez       $a3, .L800A9220
/* A9E38 800A9238 24C6FFFF */   addiu     $a2, $a2, -1
.L800A923C:
/* A9E3C 800A923C 10000001 */  b          .L800A9244
/* A9E40 800A9240 00000000 */   nop
.L800A9244:
/* A9E44 800A9244 03E00008 */  jr         $ra
/* A9E48 800A9248 27BD0008 */   addiu     $sp, $sp, 8
