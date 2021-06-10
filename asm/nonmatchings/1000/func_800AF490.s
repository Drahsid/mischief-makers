glabel func_800AF490
/* B0090 800AF490 27BDFFF8 */  addiu      $sp, $sp, -8
/* B0094 800AF494 AFA40004 */  sw         $a0, 4($sp)
/* B0098 800AF498 8FAE0004 */  lw         $t6, 4($sp)
/* B009C 800AF49C 8DCF001C */  lw         $t7, 0x1c($t6)
/* B00A0 800AF4A0 AFAF0000 */  sw         $t7, ($sp)
/* B00A4 800AF4A4 24010002 */  addiu      $at, $zero, 2
/* B00A8 800AF4A8 14A1000F */  bne        $a1, $at, .L800AF4E8
/* B00AC 800AF4AC 00000000 */   nop
/* B00B0 800AF4B0 10000001 */  b          .L800AF4B8
/* B00B4 800AF4B4 00000000 */   nop
.L800AF4B8:
/* B00B8 800AF4B8 8FB90004 */  lw         $t9, 4($sp)
/* B00BC 800AF4BC 8FB80000 */  lw         $t8, ($sp)
/* B00C0 800AF4C0 8F280014 */  lw         $t0, 0x14($t9)
/* B00C4 800AF4C4 00084880 */  sll        $t1, $t0, 2
/* B00C8 800AF4C8 03095021 */  addu       $t2, $t8, $t1
/* B00CC 800AF4CC AD460000 */  sw         $a2, ($t2)
/* B00D0 800AF4D0 8FAB0004 */  lw         $t3, 4($sp)
/* B00D4 800AF4D4 8D6C0014 */  lw         $t4, 0x14($t3)
/* B00D8 800AF4D8 258D0001 */  addiu      $t5, $t4, 1
/* B00DC 800AF4DC AD6D0014 */  sw         $t5, 0x14($t3)
/* B00E0 800AF4E0 10000003 */  b          .L800AF4F0
/* B00E4 800AF4E4 00000000 */   nop
.L800AF4E8:
/* B00E8 800AF4E8 10000001 */  b          .L800AF4F0
/* B00EC 800AF4EC 00000000 */   nop
.L800AF4F0:
/* B00F0 800AF4F0 10000003 */  b          .L800AF500
/* B00F4 800AF4F4 00001025 */   or        $v0, $zero, $zero
/* B00F8 800AF4F8 10000001 */  b          .L800AF500
/* B00FC 800AF4FC 00000000 */   nop
.L800AF500:
/* B0100 800AF500 03E00008 */  jr         $ra
/* B0104 800AF504 27BD0008 */   addiu     $sp, $sp, 8
/* B0108 800AF508 00000000 */  nop
/* B010C 800AF50C 00000000 */  nop
