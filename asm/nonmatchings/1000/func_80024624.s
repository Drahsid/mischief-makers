glabel func_80024624
/* 25224 80024624 240E0002 */  addiu      $t6, $zero, 2
/* 25228 80024628 3C01800C */  lui        $at, %hi(D_800BE588)
/* 2522C 8002462C A42EE588 */  sh         $t6, %lo(D_800BE588)($at)
/* 25230 80024630 24020001 */  addiu      $v0, $zero, 1
/* 25234 80024634 3C01800C */  lui        $at, %hi(D_800BE704)
/* 25238 80024638 A422E704 */  sh         $v0, %lo(D_800BE704)($at)
/* 2523C 8002463C 3C01800C */  lui        $at, %hi(D_800BE708)
/* 25240 80024640 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25244 80024644 A422E708 */  sh         $v0, %lo(D_800BE708)($at)
/* 25248 80024648 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2524C 8002464C 3C01800D */  lui        $at, %hi(D_800CBF58)
/* 25250 80024650 0C008D78 */  jal        func_800235E0
/* 25254 80024654 A422BF58 */   sh        $v0, %lo(D_800CBF58)($at)
/* 25258 80024658 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2525C 8002465C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 25260 80024660 03E00008 */  jr         $ra
/* 25264 80024664 00000000 */   nop
