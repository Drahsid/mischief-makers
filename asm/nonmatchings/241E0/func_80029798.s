glabel func_80029798
/* 2A398 80029798 3C0F800D */  lui        $t7, %hi(D_800D28FC)
/* 2A39C 8002979C 8DEF28FC */  lw         $t7, %lo(D_800D28FC)($t7)
/* 2A3A0 800297A0 AFA40000 */  sw         $a0, ($sp)
/* 2A3A4 800297A4 31F80400 */  andi       $t8, $t7, 0x400
/* 2A3A8 800297A8 13000019 */  beqz       $t8, .L80029810
/* 2A3AC 800297AC 308EFFFF */   andi      $t6, $a0, 0xffff
/* 2A3B0 800297B0 000EC880 */  sll        $t9, $t6, 2
/* 2A3B4 800297B4 032EC823 */  subu       $t9, $t9, $t6
/* 2A3B8 800297B8 0019C880 */  sll        $t9, $t9, 2
/* 2A3BC 800297BC 032EC821 */  addu       $t9, $t9, $t6
/* 2A3C0 800297C0 0019C880 */  sll        $t9, $t9, 2
/* 2A3C4 800297C4 032EC823 */  subu       $t9, $t9, $t6
/* 2A3C8 800297C8 3C08800F */  lui        $t0, %hi(gActors)
/* 2A3CC 800297CC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 2A3D0 800297D0 0019C8C0 */  sll        $t9, $t9, 3
/* 2A3D4 800297D4 03281821 */  addu       $v1, $t9, $t0
/* 2A3D8 800297D8 3C09800C */  lui        $t1, %hi(D_800BE55C)
/* 2A3DC 800297DC 3C0C800D */  lui        $t4, %hi(D_800D291C)
/* 2A3E0 800297E0 858C291C */  lh         $t4, %lo(D_800D291C)($t4)
/* 2A3E4 800297E4 8529E55C */  lh         $t1, %lo(D_800BE55C)($t1)
/* 2A3E8 800297E8 846A008C */  lh         $t2, 0x8c($v1)
/* 2A3EC 800297EC 258DFFF0 */  addiu      $t5, $t4, -0x10
/* 2A3F0 800297F0 012A5821 */  addu       $t3, $t1, $t2
/* 2A3F4 800297F4 016D082A */  slt        $at, $t3, $t5
/* 2A3F8 800297F8 10200006 */  beqz       $at, .L80029814
/* 2A3FC 800297FC 00001025 */   or        $v0, $zero, $zero
/* 2A400 80029800 8C640080 */  lw         $a0, 0x80($v1)
/* 2A404 80029804 AC600080 */  sw         $zero, 0x80($v1)
/* 2A408 80029808 03E00008 */  jr         $ra
/* 2A40C 8002980C 3082FFFF */   andi      $v0, $a0, 0xffff
.L80029810:
/* 2A410 80029810 00001025 */  or         $v0, $zero, $zero
.L80029814:
/* 2A414 80029814 03E00008 */  jr         $ra
/* 2A418 80029818 00000000 */   nop