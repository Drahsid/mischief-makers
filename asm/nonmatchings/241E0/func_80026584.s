glabel func_80026584
/* 27184 80026584 308EFFFF */  andi       $t6, $a0, 0xffff
/* 27188 80026588 3C08800D */  lui        $t0, %hi(D_800CFB40)
/* 2718C 8002658C 2508FB40 */  addiu      $t0, $t0, %lo(D_800CFB40)
/* 27190 80026590 000E78C0 */  sll        $t7, $t6, 3
/* 27194 80026594 010F1021 */  addu       $v0, $t0, $t7
/* 27198 80026598 8C430004 */  lw         $v1, 4($v0)
/* 2719C 8002659C 8C4B0008 */  lw         $t3, 8($v0)
/* 271A0 800265A0 3C0C801C */  lui        $t4, 0x801c
/* 271A4 800265A4 3C098013 */  lui        $t1, %hi(D_8013776C)
/* 271A8 800265A8 358C3000 */  ori        $t4, $t4, 0x3000
/* 271AC 800265AC 8D180000 */  lw         $t8, ($t0)
/* 271B0 800265B0 2529776C */  addiu      $t1, $t1, %lo(D_8013776C)
/* 271B4 800265B4 01633023 */  subu       $a2, $t3, $v1
/* 271B8 800265B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 271BC 800265BC AD2C0000 */  sw         $t4, ($t1)
/* 271C0 800265C0 00CC6821 */  addu       $t5, $a2, $t4
/* 271C4 800265C4 3C018013 */  lui        $at, %hi(D_80137770)
/* 271C8 800265C8 3C0A004A */  lui        $t2, 0x4a
/* 271CC 800265CC AC2D7770 */  sw         $t5, %lo(D_80137770)($at)
/* 271D0 800265D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 271D4 800265D4 AFA40018 */  sw         $a0, 0x18($sp)
/* 271D8 800265D8 254A15A0 */  addiu      $t2, $t2, 0x15a0
/* 271DC 800265DC 8D250000 */  lw         $a1, ($t1)
/* 271E0 800265E0 0078C823 */  subu       $t9, $v1, $t8
/* 271E4 800265E4 0C00047C */  jal        func_800011F0
/* 271E8 800265E8 032A2021 */   addu      $a0, $t9, $t2
/* 271EC 800265EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 271F0 800265F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 271F4 800265F4 03E00008 */  jr         $ra
/* 271F8 800265F8 00000000 */   nop