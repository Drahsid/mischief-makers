glabel func_80025578
/* 26178 80025578 3C0E800C */  lui        $t6, %hi(D_800BE5D0)
/* 2617C 8002557C 95CEE5D0 */  lhu        $t6, %lo(D_800BE5D0)($t6)
/* 26180 80025580 3C04800D */  lui        $a0, %hi(D_800CCFDC)
/* 26184 80025584 008E2021 */  addu       $a0, $a0, $t6
/* 26188 80025588 9084CFDC */  lbu        $a0, %lo(D_800CCFDC)($a0)
/* 2618C 8002558C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26190 80025590 240100FF */  addiu      $at, $zero, 0xff
/* 26194 80025594 10810003 */  beq        $a0, $at, .L800255A4
/* 26198 80025598 AFBF0014 */   sw        $ra, 0x14($sp)
/* 2619C 8002559C 0C000AD4 */  jal        func_80002B50
/* 261A0 800255A0 00000000 */   nop
.L800255A4:
/* 261A4 800255A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 261A8 800255A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 261AC 800255AC 03E00008 */  jr         $ra
/* 261B0 800255B0 00000000 */   nop
