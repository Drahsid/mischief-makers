glabel func_80012A24
/* 13624 80012A24 3089000F */  andi       $t1, $a0, 0xf
/* 13628 80012A28 240A000F */  addiu      $t2, $zero, 0xf
/* 1362C 80012A2C 01495823 */  subu       $t3, $t2, $t1
/* 13630 80012A30 30A8000F */  andi       $t0, $a1, 0xf
/* 13634 80012A34 010B082A */  slt        $at, $t0, $t3
/* 13638 80012A38 AFA40000 */  sw         $a0, ($sp)
/* 1363C 80012A3C 10200003 */  beqz       $at, .L80012A4C
/* 13640 80012A40 AFA50004 */   sw        $a1, 4($sp)
/* 13644 80012A44 03E00008 */  jr         $ra
/* 13648 80012A48 240200FF */   addiu     $v0, $zero, 0xff
.L80012A4C:
/* 1364C 80012A4C 00001025 */  or         $v0, $zero, $zero
/* 13650 80012A50 03E00008 */  jr         $ra
/* 13654 80012A54 00000000 */   nop
