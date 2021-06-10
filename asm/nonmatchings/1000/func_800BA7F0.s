glabel func_800BA7F0
/* BB3F0 800BA7F0 27BDFFF8 */  addiu      $sp, $sp, -8
/* BB3F4 800BA7F4 00A6001A */  div        $zero, $a1, $a2
/* BB3F8 800BA7F8 00007012 */  mflo       $t6
/* BB3FC 800BA7FC AFAE0000 */  sw         $t6, ($sp)
/* BB400 800BA800 14C00002 */  bnez       $a2, .L800BA80C
/* BB404 800BA804 00000000 */   nop
/* BB408 800BA808 0007000D */  break      7
.L800BA80C:
/* BB40C 800BA80C 2401FFFF */   addiu     $at, $zero, -1
/* BB410 800BA810 14C10004 */  bne        $a2, $at, .L800BA824
/* BB414 800BA814 3C018000 */   lui       $at, 0x8000
/* BB418 800BA818 14A10002 */  bne        $a1, $at, .L800BA824
/* BB41C 800BA81C 00000000 */   nop
/* BB420 800BA820 0006000D */  break      6
.L800BA824:
/* BB424 800BA824 8FAF0000 */   lw        $t7, ($sp)
/* BB428 800BA828 00CF0019 */  multu      $a2, $t7
/* BB42C 800BA82C 0000C012 */  mflo       $t8
/* BB430 800BA830 00B8C823 */  subu       $t9, $a1, $t8
/* BB434 800BA834 AFB90004 */  sw         $t9, 4($sp)
/* BB438 800BA838 8FA80000 */  lw         $t0, ($sp)
/* BB43C 800BA83C 0501000A */  bgez       $t0, .L800BA868
/* BB440 800BA840 00000000 */   nop
/* BB444 800BA844 8FA90004 */  lw         $t1, 4($sp)
/* BB448 800BA848 19200007 */  blez       $t1, .L800BA868
/* BB44C 800BA84C 00000000 */   nop
/* BB450 800BA850 8FAA0000 */  lw         $t2, ($sp)
/* BB454 800BA854 254B0001 */  addiu      $t3, $t2, 1
/* BB458 800BA858 AFAB0000 */  sw         $t3, ($sp)
/* BB45C 800BA85C 8FAC0004 */  lw         $t4, 4($sp)
/* BB460 800BA860 01866823 */  subu       $t5, $t4, $a2
/* BB464 800BA864 AFAD0004 */  sw         $t5, 4($sp)
.L800BA868:
/* BB468 800BA868 27AE0000 */  addiu      $t6, $sp, 0
/* BB46C 800BA86C 8DC10000 */  lw         $at, ($t6)
/* BB470 800BA870 00801025 */  or         $v0, $a0, $zero
/* BB474 800BA874 AC810000 */  sw         $at, ($a0)
/* BB478 800BA878 8DD90004 */  lw         $t9, 4($t6)
/* BB47C 800BA87C 10000003 */  b          .L800BA88C
/* BB480 800BA880 AC990004 */   sw        $t9, 4($a0)
/* BB484 800BA884 10000001 */  b          .L800BA88C
/* BB488 800BA888 00000000 */   nop
.L800BA88C:
/* BB48C 800BA88C 03E00008 */  jr         $ra
/* BB490 800BA890 27BD0008 */   addiu     $sp, $sp, 8
