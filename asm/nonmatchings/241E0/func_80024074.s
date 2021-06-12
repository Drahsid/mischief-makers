glabel func_80024074
/* 24C74 80024074 240E0003 */  addiu      $t6, $zero, 3
/* 24C78 80024078 3C01800C */  lui        $at, %hi(D_800BE70C)
/* 24C7C 8002407C A02EE70C */  sb         $t6, %lo(D_800BE70C)($at)
/* 24C80 80024080 3C01800C */  lui        $at, %hi(D_800BE6A8)
/* 24C84 80024084 240F0002 */  addiu      $t7, $zero, 2
/* 24C88 80024088 A42FE6A8 */  sh         $t7, %lo(D_800BE6A8)($at)
/* 24C8C 8002408C 24020001 */  addiu      $v0, $zero, 1
/* 24C90 80024090 3C01800C */  lui        $at, %hi(D_800BE708)
/* 24C94 80024094 A422E708 */  sh         $v0, %lo(D_800BE708)($at)
/* 24C98 80024098 3C01800C */  lui        $at, %hi(D_800BE710)
/* 24C9C 8002409C A022E710 */  sb         $v0, %lo(D_800BE710)($at)
/* 24CA0 800240A0 3C01800C */  lui        $at, %hi(D_800BE71C)
/* 24CA4 800240A4 3C180100 */  lui        $t8, 0x100
/* 24CA8 800240A8 AC38E71C */  sw         $t8, %lo(D_800BE71C)($at)
/* 24CAC 800240AC 3C01800C */  lui        $at, %hi(D_800BE720)
/* 24CB0 800240B0 AC20E720 */  sw         $zero, %lo(D_800BE720)($at)
/* 24CB4 800240B4 3C01800C */  lui        $at, %hi(D_800BE724)
/* 24CB8 800240B8 3C1901C0 */  lui        $t9, 0x1c0
/* 24CBC 800240BC AC39E724 */  sw         $t9, %lo(D_800BE724)($at)
/* 24CC0 800240C0 3C01800C */  lui        $at, %hi(D_800BE728)
/* 24CC4 800240C4 3C08FFFF */  lui        $t0, 0xffff
/* 24CC8 800240C8 AC28E728 */  sw         $t0, %lo(D_800BE728)($at)
/* 24CCC 800240CC 3C01800C */  lui        $at, %hi(D_800BE72C)
/* 24CD0 800240D0 AC20E72C */  sw         $zero, %lo(D_800BE72C)($at)
/* 24CD4 800240D4 3C01800C */  lui        $at, %hi(D_800BE730)
/* 24CD8 800240D8 AC20E730 */  sw         $zero, %lo(D_800BE730)($at)
/* 24CDC 800240DC 3C01800C */  lui        $at, %hi(D_800BE638)
/* 24CE0 800240E0 03E00008 */  jr         $ra
/* 24CE4 800240E4 A420E638 */   sh        $zero, %lo(D_800BE638)($at)
