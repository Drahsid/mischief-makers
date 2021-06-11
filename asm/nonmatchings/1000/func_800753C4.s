glabel func_800753C4
/* 75FC4 800753C4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 75FC8 800753C8 000E7880 */  sll        $t7, $t6, 2
/* 75FCC 800753CC 01EE7823 */  subu       $t7, $t7, $t6
/* 75FD0 800753D0 000F7880 */  sll        $t7, $t7, 2
/* 75FD4 800753D4 01EE7821 */  addu       $t7, $t7, $t6
/* 75FD8 800753D8 000F7880 */  sll        $t7, $t7, 2
/* 75FDC 800753DC 01EE7823 */  subu       $t7, $t7, $t6
/* 75FE0 800753E0 3C18800F */  lui        $t8, %hi(gActors)
/* 75FE4 800753E4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 75FE8 800753E8 000F78C0 */  sll        $t7, $t7, 3
/* 75FEC 800753EC 01F81021 */  addu       $v0, $t7, $t8
/* 75FF0 800753F0 24190010 */  addiu      $t9, $zero, 0x10
/* 75FF4 800753F4 2408FFFC */  addiu      $t0, $zero, -4
/* 75FF8 800753F8 2409FFF8 */  addiu      $t1, $zero, -8
/* 75FFC 800753FC 240A0008 */  addiu      $t2, $zero, 8
/* 76000 80075400 AFA40000 */  sw         $a0, ($sp)
/* 76004 80075404 A44A00AC */  sh         $t2, 0xac($v0)
/* 76008 80075408 A44900AA */  sh         $t1, 0xaa($v0)
/* 7600C 8007540C A44800B0 */  sh         $t0, 0xb0($v0)
/* 76010 80075410 03E00008 */  jr         $ra
/* 76014 80075414 A45900AE */   sh        $t9, 0xae($v0)
