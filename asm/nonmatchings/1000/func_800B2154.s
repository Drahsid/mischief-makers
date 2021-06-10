glabel func_800B2154
/* B2D54 800B2154 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B2D58 800B2158 AFA4000C */  sw         $a0, 0xc($sp)
/* B2D5C 800B215C AFA40008 */  sw         $a0, 8($sp)
/* B2D60 800B2160 AFA60004 */  sw         $a2, 4($sp)
/* B2D64 800B2164 00A03825 */  or         $a3, $a1, $zero
/* B2D68 800B2168 24010001 */  addiu      $at, $zero, 1
/* B2D6C 800B216C 10E10006 */  beq        $a3, $at, .L800B2188
/* B2D70 800B2170 00000000 */   nop
/* B2D74 800B2174 24010006 */  addiu      $at, $zero, 6
/* B2D78 800B2178 10E10007 */  beq        $a3, $at, .L800B2198
/* B2D7C 800B217C 00000000 */   nop
/* B2D80 800B2180 1000000A */  b          .L800B21AC
/* B2D84 800B2184 00000000 */   nop
.L800B2188:
/* B2D88 800B2188 8FAE0008 */  lw         $t6, 8($sp)
/* B2D8C 800B218C ADC60000 */  sw         $a2, ($t6)
/* B2D90 800B2190 10000008 */  b          .L800B21B4
/* B2D94 800B2194 00000000 */   nop
.L800B2198:
/* B2D98 800B2198 8FAF0004 */  lw         $t7, 4($sp)
/* B2D9C 800B219C 8FB8000C */  lw         $t8, 0xc($sp)
/* B2DA0 800B21A0 AF0F0014 */  sw         $t7, 0x14($t8)
/* B2DA4 800B21A4 10000003 */  b          .L800B21B4
/* B2DA8 800B21A8 00000000 */   nop
.L800B21AC:
/* B2DAC 800B21AC 10000001 */  b          .L800B21B4
/* B2DB0 800B21B0 00000000 */   nop
.L800B21B4:
/* B2DB4 800B21B4 10000003 */  b          .L800B21C4
/* B2DB8 800B21B8 00001025 */   or        $v0, $zero, $zero
/* B2DBC 800B21BC 10000001 */  b          .L800B21C4
/* B2DC0 800B21C0 00000000 */   nop
.L800B21C4:
/* B2DC4 800B21C4 03E00008 */  jr         $ra
/* B2DC8 800B21C8 27BD0010 */   addiu     $sp, $sp, 0x10
/* B2DCC 800B21CC 00000000 */  nop
