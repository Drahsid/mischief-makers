glabel func_8000477C
/* 537C 8000477C 3C01800C */  lui        $at, %hi(D_800C4EAC)
/* 5380 80004780 A0244EAC */  sb         $a0, %lo(D_800C4EAC)($at)
/* 5384 80004784 3C01800C */  lui        $at, %hi(D_800C4EB0)
/* 5388 80004788 A0254EB0 */  sb         $a1, %lo(D_800C4EB0)($at)
/* 538C 8000478C 3C01800C */  lui        $at, %hi(D_800C4EB4)
/* 5390 80004790 A0264EB4 */  sb         $a2, %lo(D_800C4EB4)($at)
/* 5394 80004794 3C01800C */  lui        $at, 0x800c
/* 5398 80004798 AFA40000 */  sw         $a0, ($sp)
/* 539C 8000479C AFA50004 */  sw         $a1, 4($sp)
/* 53A0 800047A0 AFA60008 */  sw         $a2, 8($sp)
/* 53A4 800047A4 AFA7000C */  sw         $a3, 0xc($sp)
/* 53A8 800047A8 03E00008 */  jr         $ra
/* 53AC 800047AC A0274EB8 */   sb        $a3, 0x4eb8($at)
