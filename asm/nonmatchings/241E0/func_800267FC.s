glabel func_800267FC
/* 273FC 800267FC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 27400 80026800 3C08800D */  lui        $t0, %hi(D_800CF87C)
/* 27404 80026804 2508F87C */  addiu      $t0, $t0, %lo(D_800CF87C)
/* 27408 80026808 000E78C0 */  sll        $t7, $t6, 3
/* 2740C 8002680C 010F1021 */  addu       $v0, $t0, $t7
/* 27410 80026810 8C430004 */  lw         $v1, 4($v0)
/* 27414 80026814 8C4B0008 */  lw         $t3, 8($v0)
/* 27418 80026818 3C0C801C */  lui        $t4, 0x801c
/* 2741C 8002681C 3C098013 */  lui        $t1, %hi(D_8013778C)
/* 27420 80026820 358C1000 */  ori        $t4, $t4, 0x1000
/* 27424 80026824 8D180000 */  lw         $t8, ($t0)
/* 27428 80026828 2529778C */  addiu      $t1, $t1, %lo(D_8013778C)
/* 2742C 8002682C 01633023 */  subu       $a2, $t3, $v1
/* 27430 80026830 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 27434 80026834 AD2C0000 */  sw         $t4, ($t1)
/* 27438 80026838 00CC6821 */  addu       $t5, $a2, $t4
/* 2743C 8002683C 3C018013 */  lui        $at, %hi(D_80137790)
/* 27440 80026840 3C0A004A */  lui        $t2, 0x4a
/* 27444 80026844 AC2D7790 */  sw         $t5, %lo(D_80137790)($at)
/* 27448 80026848 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2744C 8002684C AFA40018 */  sw         $a0, 0x18($sp)
/* 27450 80026850 254A1FC0 */  addiu      $t2, $t2, 0x1fc0
/* 27454 80026854 8D250000 */  lw         $a1, ($t1)
/* 27458 80026858 0078C823 */  subu       $t9, $v1, $t8
/* 2745C 8002685C 0C00047C */  jal        func_800011F0
/* 27460 80026860 032A2021 */   addu      $a0, $t9, $t2
/* 27464 80026864 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27468 80026868 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2746C 8002686C 03E00008 */  jr         $ra
/* 27470 80026870 00000000 */   nop