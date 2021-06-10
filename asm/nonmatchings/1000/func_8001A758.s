glabel func_8001A758
/* 1B358 8001A758 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1B35C 8001A75C 000FC040 */  sll        $t8, $t7, 1
/* 1B360 8001A760 3C03800D */  lui        $v1, %hi(D_800C8478)
/* 1B364 8001A764 00781821 */  addu       $v1, $v1, $t8
/* 1B368 8001A768 94638478 */  lhu        $v1, %lo(D_800C8478)($v1)
/* 1B36C 8001A76C 3082FFFF */  andi       $v0, $a0, 0xffff
/* 1B370 8001A770 0043082A */  slt        $at, $v0, $v1
/* 1B374 8001A774 AFA40000 */  sw         $a0, ($sp)
/* 1B378 8001A778 10200003 */  beqz       $at, .L8001A788
/* 1B37C 8001A77C AFA50004 */   sw        $a1, 4($sp)
/* 1B380 8001A780 03E00008 */  jr         $ra
/* 1B384 8001A784 00001025 */   or        $v0, $zero, $zero
.L8001A788:
/* 1B388 8001A788 24790708 */  addiu      $t9, $v1, 0x708
/* 1B38C 8001A78C 0059082A */  slt        $at, $v0, $t9
/* 1B390 8001A790 10200003 */  beqz       $at, .L8001A7A0
/* 1B394 8001A794 24681C20 */   addiu     $t0, $v1, 0x1c20
/* 1B398 8001A798 03E00008 */  jr         $ra
/* 1B39C 8001A79C 24020001 */   addiu     $v0, $zero, 1
.L8001A7A0:
/* 1B3A0 8001A7A0 0048082A */  slt        $at, $v0, $t0
/* 1B3A4 8001A7A4 10200003 */  beqz       $at, .L8001A7B4
/* 1B3A8 8001A7A8 24694650 */   addiu     $t1, $v1, 0x4650
/* 1B3AC 8001A7AC 03E00008 */  jr         $ra
/* 1B3B0 8001A7B0 24020002 */   addiu     $v0, $zero, 2
.L8001A7B4:
/* 1B3B4 8001A7B4 0049082A */  slt        $at, $v0, $t1
/* 1B3B8 8001A7B8 10200006 */  beqz       $at, .L8001A7D4
/* 1B3BC 8001A7BC 34018CA0 */   ori       $at, $zero, 0x8ca0
/* 1B3C0 8001A7C0 0041082A */  slt        $at, $v0, $at
/* 1B3C4 8001A7C4 10200004 */  beqz       $at, .L8001A7D8
/* 1B3C8 8001A7C8 24020004 */   addiu     $v0, $zero, 4
/* 1B3CC 8001A7CC 03E00008 */  jr         $ra
/* 1B3D0 8001A7D0 24020003 */   addiu     $v0, $zero, 3
.L8001A7D4:
/* 1B3D4 8001A7D4 24020004 */  addiu      $v0, $zero, 4
.L8001A7D8:
/* 1B3D8 8001A7D8 03E00008 */  jr         $ra
/* 1B3DC 8001A7DC 00000000 */   nop
