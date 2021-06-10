glabel func_800B8260
/* B8E60 800B8260 27BDFFF8 */  addiu      $sp, $sp, -8
/* B8E64 800B8264 24010001 */  addiu      $at, $zero, 1
/* B8E68 800B8268 14A10004 */  bne        $a1, $at, .L800B827C
/* B8E6C 800B826C 00000000 */   nop
/* B8E70 800B8270 AFA40004 */  sw         $a0, 4($sp)
/* B8E74 800B8274 8FAE0004 */  lw         $t6, 4($sp)
/* B8E78 800B8278 ADC60000 */  sw         $a2, ($t6)
.L800B827C:
/* B8E7C 800B827C 10000003 */  b          .L800B828C
/* B8E80 800B8280 00001025 */   or        $v0, $zero, $zero
/* B8E84 800B8284 10000001 */  b          .L800B828C
/* B8E88 800B8288 00000000 */   nop
.L800B828C:
/* B8E8C 800B828C 03E00008 */  jr         $ra
/* B8E90 800B8290 27BD0008 */   addiu     $sp, $sp, 8
