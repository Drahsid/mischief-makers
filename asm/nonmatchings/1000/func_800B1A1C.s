glabel func_800B1A1C
/* B261C 800B1A1C 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2620 800B1A20 10C0000A */  beqz       $a2, .L800B1A4C
/* B2624 800B1A24 00000000 */   nop
/* B2628 800B1A28 240E0001 */  addiu      $t6, $zero, 1
/* B262C 800B1A2C 00CE7804 */  sllv       $t7, $t6, $a2
/* B2630 800B1A30 AFAF0004 */  sw         $t7, 4($sp)
/* B2634 800B1A34 8FB80004 */  lw         $t8, 4($sp)
/* B2638 800B1A38 44982000 */  mtc1       $t8, $f4
/* B263C 800B1A3C 00000000 */  nop
/* B2640 800B1A40 468021A1 */  cvt.d.w    $f6, $f4
/* B2644 800B1A44 46266302 */  mul.d      $f12, $f12, $f6
/* B2648 800B1A48 00000000 */  nop
.L800B1A4C:
/* B264C 800B1A4C 10000003 */  b          .L800B1A5C
/* B2650 800B1A50 46206006 */   mov.d     $f0, $f12
/* B2654 800B1A54 10000001 */  b          .L800B1A5C
/* B2658 800B1A58 00000000 */   nop
.L800B1A5C:
/* B265C 800B1A5C 03E00008 */  jr         $ra
/* B2660 800B1A60 27BD0008 */   addiu     $sp, $sp, 8
