glabel func_80046148
/* 46D48 80046148 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46D4C 8004614C AFBF0014 */  sw         $ra, 0x14($sp)
/* 46D50 80046150 0C0117E9 */  jal        func_80045FA4
/* 46D54 80046154 00000000 */   nop
/* 46D58 80046158 3C02800F */  lui        $v0, %hi(gActors)
/* 46D5C 8004615C 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 46D60 80046160 8C4E0080 */  lw         $t6, 0x80($v0)
/* 46D64 80046164 2401FFFE */  addiu      $at, $zero, -2
/* 46D68 80046168 01C17824 */  and        $t7, $t6, $at
/* 46D6C 8004616C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46D70 80046170 AC4F0080 */  sw         $t7, 0x80($v0)
/* 46D74 80046174 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 46D78 80046178 24180004 */  addiu      $t8, $zero, 4
/* 46D7C 8004617C AC38E5F4 */  sw         $t8, %lo(D_800BE5F4)($at)
/* 46D80 80046180 03E00008 */  jr         $ra
/* 46D84 80046184 27BD0018 */   addiu     $sp, $sp, 0x18
