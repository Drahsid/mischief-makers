glabel func_8002670C
/* 2730C 8002670C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 27310 80026710 3C08800D */  lui        $t0, %hi(D_800CF2F4)
/* 27314 80026714 2508F2F4 */  addiu      $t0, $t0, %lo(D_800CF2F4)
/* 27318 80026718 000E78C0 */  sll        $t7, $t6, 3
/* 2731C 8002671C 010F1021 */  addu       $v0, $t0, $t7
/* 27320 80026720 8C430004 */  lw         $v1, 4($v0)
/* 27324 80026724 8C4B0008 */  lw         $t3, 8($v0)
/* 27328 80026728 3C0C801C */  lui        $t4, 0x801c
/* 2732C 8002672C 3C098013 */  lui        $t1, %hi(D_8013777C)
/* 27330 80026730 358C2000 */  ori        $t4, $t4, 0x2000
/* 27334 80026734 8D180000 */  lw         $t8, ($t0)
/* 27338 80026738 2529777C */  addiu      $t1, $t1, %lo(D_8013777C)
/* 2733C 8002673C 01633023 */  subu       $a2, $t3, $v1
/* 27340 80026740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 27344 80026744 AD2C0000 */  sw         $t4, ($t1)
/* 27348 80026748 00CC6821 */  addu       $t5, $a2, $t4
/* 2734C 8002674C 3C018013 */  lui        $at, %hi(D_80137780)
/* 27350 80026750 3C0A004A */  lui        $t2, 0x4a
/* 27354 80026754 AC2D7780 */  sw         $t5, %lo(D_80137780)($at)
/* 27358 80026758 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2735C 8002675C AFA40018 */  sw         $a0, 0x18($sp)
/* 27360 80026760 254A1FC0 */  addiu      $t2, $t2, 0x1fc0
/* 27364 80026764 8D250000 */  lw         $a1, ($t1)
/* 27368 80026768 0078C823 */  subu       $t9, $v1, $t8
/* 2736C 8002676C 0C00047C */  jal        func_800011F0
/* 27370 80026770 032A2021 */   addu      $a0, $t9, $t2
/* 27374 80026774 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27378 80026778 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2737C 8002677C 03E00008 */  jr         $ra
/* 27380 80026780 00000000 */   nop
