glabel func_8002995C
/* 2A55C 8002995C 0085082A */  slt        $at, $a0, $a1
/* 2A560 80029960 1420000A */  bnez       $at, .L8002998C
/* 2A564 80029964 00857823 */   subu      $t7, $a0, $a1
/* 2A568 80029968 00857023 */  subu       $t6, $a0, $a1
/* 2A56C 8002996C 3C010200 */  lui        $at, 0x200
/* 2A570 80029970 01C1082A */  slt        $at, $t6, $at
/* 2A574 80029974 10200003 */  beqz       $at, .L80029984
/* 2A578 80029978 00000000 */   nop
/* 2A57C 8002997C 03E00008 */  jr         $ra
/* 2A580 80029980 24020001 */   addiu     $v0, $zero, 1
.L80029984:
/* 2A584 80029984 03E00008 */  jr         $ra
/* 2A588 80029988 2402FFFF */   addiu     $v0, $zero, -1
.L8002998C:
/* 2A58C 8002998C 3C01FE00 */  lui        $at, 0xfe00
/* 2A590 80029990 34210001 */  ori        $at, $at, 1
/* 2A594 80029994 01E1082A */  slt        $at, $t7, $at
/* 2A598 80029998 14200003 */  bnez       $at, .L800299A8
/* 2A59C 8002999C 24020001 */   addiu     $v0, $zero, 1
/* 2A5A0 800299A0 03E00008 */  jr         $ra
/* 2A5A4 800299A4 2402FFFF */   addiu     $v0, $zero, -1
.L800299A8:
/* 2A5A8 800299A8 03E00008 */  jr         $ra
/* 2A5AC 800299AC 00000000 */   nop
