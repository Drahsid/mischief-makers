glabel func_80068CA8
/* 698A8 80068CA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 698AC 80068CAC 000EC080 */  sll        $t8, $t6, 2
/* 698B0 80068CB0 030EC023 */  subu       $t8, $t8, $t6
/* 698B4 80068CB4 0018C080 */  sll        $t8, $t8, 2
/* 698B8 80068CB8 030EC021 */  addu       $t8, $t8, $t6
/* 698BC 80068CBC 0018C080 */  sll        $t8, $t8, 2
/* 698C0 80068CC0 030EC023 */  subu       $t8, $t8, $t6
/* 698C4 80068CC4 3C19800F */  lui        $t9, %hi(gActors)
/* 698C8 80068CC8 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 698CC 80068CCC 0018C0C0 */  sll        $t8, $t8, 3
/* 698D0 80068CD0 03191821 */  addu       $v1, $t8, $t9
/* 698D4 80068CD4 8C680150 */  lw         $t0, 0x150($v1)
/* 698D8 80068CD8 AFA40000 */  sw         $a0, ($sp)
/* 698DC 80068CDC 00084B80 */  sll        $t1, $t0, 0xe
/* 698E0 80068CE0 AFA50004 */  sw         $a1, 4($sp)
/* 698E4 80068CE4 05210009 */  bgez       $t1, .L80068D0C
/* 698E8 80068CE8 30AFFFFF */   andi      $t7, $a1, 0xffff
/* 698EC 80068CEC 3C0A800E */  lui        $t2, %hi(D_800E3584)
/* 698F0 80068CF0 8D4A3584 */  lw         $t2, %lo(D_800E3584)($t2)
/* 698F4 80068CF4 24020001 */  addiu      $v0, $zero, 1
/* 698F8 80068CF8 000A5BC0 */  sll        $t3, $t2, 0xf
/* 698FC 80068CFC 05610003 */  bgez       $t3, .L80068D0C
/* 69900 80068D00 00000000 */   nop
/* 69904 80068D04 03E00008 */  jr         $ra
/* 69908 80068D08 A46F00D0 */   sh        $t7, 0xd0($v1)
.L80068D0C:
/* 6990C 80068D0C 00001025 */  or         $v0, $zero, $zero
/* 69910 80068D10 03E00008 */  jr         $ra
/* 69914 80068D14 00000000 */   nop
