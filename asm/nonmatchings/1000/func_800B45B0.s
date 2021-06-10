glabel func_800B45B0
/* B51B0 800B45B0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B51B4 800B45B4 908E0000 */  lbu        $t6, ($a0)
/* B51B8 800B45B8 31CF00FF */  andi       $t7, $t6, 0xff
/* B51BC 800B45BC 000FC600 */  sll        $t8, $t7, 0x18
/* B51C0 800B45C0 AFB80004 */  sw         $t8, 4($sp)
/* B51C4 800B45C4 90880001 */  lbu        $t0, 1($a0)
/* B51C8 800B45C8 8FB90004 */  lw         $t9, 4($sp)
/* B51CC 800B45CC 310900FF */  andi       $t1, $t0, 0xff
/* B51D0 800B45D0 00095400 */  sll        $t2, $t1, 0x10
/* B51D4 800B45D4 032A5825 */  or         $t3, $t9, $t2
/* B51D8 800B45D8 AFAB0004 */  sw         $t3, 4($sp)
/* B51DC 800B45DC 908D0002 */  lbu        $t5, 2($a0)
/* B51E0 800B45E0 8FAC0004 */  lw         $t4, 4($sp)
/* B51E4 800B45E4 31AE00FF */  andi       $t6, $t5, 0xff
/* B51E8 800B45E8 000E7A00 */  sll        $t7, $t6, 8
/* B51EC 800B45EC 018FC025 */  or         $t8, $t4, $t7
/* B51F0 800B45F0 AFB80004 */  sw         $t8, 4($sp)
/* B51F4 800B45F4 90890003 */  lbu        $t1, 3($a0)
/* B51F8 800B45F8 8FA80004 */  lw         $t0, 4($sp)
/* B51FC 800B45FC 313900FF */  andi       $t9, $t1, 0xff
/* B5200 800B4600 01195025 */  or         $t2, $t0, $t9
/* B5204 800B4604 AFAA0004 */  sw         $t2, 4($sp)
/* B5208 800B4608 10000003 */  b          .L800B4618
/* B520C 800B460C 8FA20004 */   lw        $v0, 4($sp)
/* B5210 800B4610 10000001 */  b          .L800B4618
/* B5214 800B4614 00000000 */   nop
.L800B4618:
/* B5218 800B4618 03E00008 */  jr         $ra
/* B521C 800B461C 27BD0008 */   addiu     $sp, $sp, 8
