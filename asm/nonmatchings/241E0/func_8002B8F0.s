glabel func_8002B8F0
/* 2C4F0 8002B8F0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2C4F4 8002B8F4 000EC080 */  sll        $t8, $t6, 2
/* 2C4F8 8002B8F8 030EC023 */  subu       $t8, $t8, $t6
/* 2C4FC 8002B8FC 0018C080 */  sll        $t8, $t8, 2
/* 2C500 8002B900 030EC021 */  addu       $t8, $t8, $t6
/* 2C504 8002B904 0018C080 */  sll        $t8, $t8, 2
/* 2C508 8002B908 030EC023 */  subu       $t8, $t8, $t6
/* 2C50C 8002B90C 3C19800F */  lui        $t9, %hi(gActors)
/* 2C510 8002B910 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 2C514 8002B914 0018C0C0 */  sll        $t8, $t8, 3
/* 2C518 8002B918 03193021 */  addu       $a2, $t8, $t9
/* 2C51C 8002B91C 84C700E0 */  lh         $a3, 0xe0($a2)
/* 2C520 8002B920 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 2C524 8002B924 0067082A */  slt        $at, $v1, $a3
/* 2C528 8002B928 AFA40000 */  sw         $a0, ($sp)
/* 2C52C 8002B92C 14200004 */  bnez       $at, .L8002B940
/* 2C530 8002B930 AFA50004 */   sw        $a1, 4($sp)
/* 2C534 8002B934 A4C000E0 */  sh         $zero, 0xe0($a2)
/* 2C538 8002B938 03E00008 */  jr         $ra
/* 2C53C 8002B93C 00001025 */   or        $v0, $zero, $zero
.L8002B940:
/* 2C540 8002B940 00E34023 */  subu       $t0, $a3, $v1
/* 2C544 8002B944 A4C800E0 */  sh         $t0, 0xe0($a2)
/* 2C548 8002B948 24020001 */  addiu      $v0, $zero, 1
/* 2C54C 8002B94C 03E00008 */  jr         $ra
/* 2C550 8002B950 00000000 */   nop
