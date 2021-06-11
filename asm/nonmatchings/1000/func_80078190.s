glabel func_80078190
/* 78D90 80078190 308EFFFF */  andi       $t6, $a0, 0xffff
/* 78D94 80078194 000E7880 */  sll        $t7, $t6, 2
/* 78D98 80078198 01EE7823 */  subu       $t7, $t7, $t6
/* 78D9C 8007819C 000F7880 */  sll        $t7, $t7, 2
/* 78DA0 800781A0 01EE7821 */  addu       $t7, $t7, $t6
/* 78DA4 800781A4 000F7880 */  sll        $t7, $t7, 2
/* 78DA8 800781A8 01EE7823 */  subu       $t7, $t7, $t6
/* 78DAC 800781AC 3C18800F */  lui        $t8, %hi(gActors)
/* 78DB0 800781B0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 78DB4 800781B4 000F78C0 */  sll        $t7, $t7, 3
/* 78DB8 800781B8 01F81021 */  addu       $v0, $t7, $t8
/* 78DBC 800781BC 8C590080 */  lw         $t9, 0x80($v0)
/* 78DC0 800781C0 3C010002 */  lui        $at, 2
/* 78DC4 800781C4 34213400 */  ori        $at, $at, 0x3400
/* 78DC8 800781C8 24090064 */  addiu      $t1, $zero, 0x64
/* 78DCC 800781CC 240A0006 */  addiu      $t2, $zero, 6
/* 78DD0 800781D0 240B0002 */  addiu      $t3, $zero, 2
/* 78DD4 800781D4 240F0010 */  addiu      $t7, $zero, 0x10
/* 78DD8 800781D8 240EFFE8 */  addiu      $t6, $zero, -0x18
/* 78DDC 800781DC 240C0017 */  addiu      $t4, $zero, 0x17
/* 78DE0 800781E0 240DFFF4 */  addiu      $t5, $zero, -0xc
/* 78DE4 800781E4 03214025 */  or         $t0, $t9, $at
/* 78DE8 800781E8 AFA40000 */  sw         $a0, ($sp)
/* 78DEC 800781EC AFA50004 */  sw         $a1, 4($sp)
/* 78DF0 800781F0 AC480080 */  sw         $t0, 0x80($v0)
/* 78DF4 800781F4 A44900E0 */  sh         $t1, 0xe0($v0)
/* 78DF8 800781F8 A04B00DF */  sb         $t3, 0xdf($v0)
/* 78DFC 800781FC A04A00DE */  sb         $t2, 0xde($v0)
/* 78E00 80078200 A44D00B0 */  sh         $t5, 0xb0($v0)
/* 78E04 80078204 A44C00AE */  sh         $t4, 0xae($v0)
/* 78E08 80078208 A44E00AA */  sh         $t6, 0xaa($v0)
/* 78E0C 8007820C 03E00008 */  jr         $ra
/* 78E10 80078210 A44F00AC */   sh        $t7, 0xac($v0)
