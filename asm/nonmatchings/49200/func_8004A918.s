glabel func_8004A918
/* 4B518 8004A918 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4B51C 8004A91C 000E7880 */  sll        $t7, $t6, 2
/* 4B520 8004A920 01EE7823 */  subu       $t7, $t7, $t6
/* 4B524 8004A924 000F7880 */  sll        $t7, $t7, 2
/* 4B528 8004A928 01EE7821 */  addu       $t7, $t7, $t6
/* 4B52C 8004A92C 000F7880 */  sll        $t7, $t7, 2
/* 4B530 8004A930 01EE7823 */  subu       $t7, $t7, $t6
/* 4B534 8004A934 3C18800F */  lui        $t8, %hi(gActors)
/* 4B538 8004A938 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4B53C 8004A93C 000F78C0 */  sll        $t7, $t7, 3
/* 4B540 8004A940 01F81021 */  addu       $v0, $t7, $t8
/* 4B544 8004A944 9059012E */  lbu        $t9, 0x12e($v0)
/* 4B548 8004A948 8C490150 */  lw         $t1, 0x150($v0)
/* 4B54C 8004A94C 37280041 */  ori        $t0, $t9, 0x41
/* 4B550 8004A950 AFA40000 */  sw         $a0, ($sp)
/* 4B554 8004A954 A048012E */  sb         $t0, 0x12e($v0)
/* 4B558 8004A958 03E00008 */  jr         $ra
/* 4B55C 8004A95C AC490080 */   sw        $t1, 0x80($v0)
