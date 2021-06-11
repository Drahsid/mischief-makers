glabel func_80068D88
/* 69988 80068D88 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6998C 80068D8C 000EC080 */  sll        $t8, $t6, 2
/* 69990 80068D90 030EC023 */  subu       $t8, $t8, $t6
/* 69994 80068D94 0018C080 */  sll        $t8, $t8, 2
/* 69998 80068D98 030EC021 */  addu       $t8, $t8, $t6
/* 6999C 80068D9C 0018C080 */  sll        $t8, $t8, 2
/* 699A0 80068DA0 030EC023 */  subu       $t8, $t8, $t6
/* 699A4 80068DA4 3C19800F */  lui        $t9, %hi(gActors)
/* 699A8 80068DA8 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 699AC 80068DAC 0018C0C0 */  sll        $t8, $t8, 3
/* 699B0 80068DB0 03191821 */  addu       $v1, $t8, $t9
/* 699B4 80068DB4 8C680150 */  lw         $t0, 0x150($v1)
/* 699B8 80068DB8 AFA40000 */  sw         $a0, ($sp)
/* 699BC 80068DBC 00084B80 */  sll        $t1, $t0, 0xe
/* 699C0 80068DC0 AFA50004 */  sw         $a1, 4($sp)
/* 699C4 80068DC4 05210009 */  bgez       $t1, .L80068DEC
/* 699C8 80068DC8 30AFFFFF */   andi      $t7, $a1, 0xffff
/* 699CC 80068DCC 3C0A800E */  lui        $t2, %hi(D_800E3584)
/* 699D0 80068DD0 8D4A3584 */  lw         $t2, %lo(D_800E3584)($t2)
/* 699D4 80068DD4 3C01000C */  lui        $at, 0xc
/* 699D8 80068DD8 01415824 */  and        $t3, $t2, $at
/* 699DC 80068DDC 11600003 */  beqz       $t3, .L80068DEC
/* 699E0 80068DE0 24020001 */   addiu     $v0, $zero, 1
/* 699E4 80068DE4 03E00008 */  jr         $ra
/* 699E8 80068DE8 A46F00D0 */   sh        $t7, 0xd0($v1)
.L80068DEC:
/* 699EC 80068DEC 00001025 */  or         $v0, $zero, $zero
/* 699F0 80068DF0 03E00008 */  jr         $ra
/* 699F4 80068DF4 00000000 */   nop
