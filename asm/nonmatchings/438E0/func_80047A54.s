glabel func_80047A54
/* 48654 80047A54 3C02800D */  lui        $v0, %hi(D_800D28E4)
/* 48658 80047A58 240E0001 */  addiu      $t6, $zero, 1
/* 4865C 80047A5C 3C01800C */  lui        $at, %hi(D_800BE4EC)
/* 48660 80047A60 244228E4 */  addiu      $v0, $v0, %lo(D_800D28E4)
/* 48664 80047A64 A42EE4EC */  sh         $t6, %lo(D_800BE4EC)($at)
/* 48668 80047A68 944F0000 */  lhu        $t7, ($v0)
/* 4866C 80047A6C 3C03800D */  lui        $v1, %hi(D_800D28FC)
/* 48670 80047A70 25F80001 */  addiu      $t8, $t7, 1
/* 48674 80047A74 A4580000 */  sh         $t8, ($v0)
/* 48678 80047A78 3C01800D */  lui        $at, %hi(D_800D2928)
/* 4867C 80047A7C 246328FC */  addiu      $v1, $v1, %lo(D_800D28FC)
/* 48680 80047A80 AC202928 */  sw         $zero, %lo(D_800D2928)($at)
/* 48684 80047A84 8C790000 */  lw         $t9, ($v1)
/* 48688 80047A88 2401FFF7 */  addiu      $at, $zero, -9
/* 4868C 80047A8C 37280004 */  ori        $t0, $t9, 4
/* 48690 80047A90 01015024 */  and        $t2, $t0, $at
/* 48694 80047A94 AC680000 */  sw         $t0, ($v1)
/* 48698 80047A98 AC6A0000 */  sw         $t2, ($v1)
/* 4869C 80047A9C 3C01800C */  lui        $at, %hi(D_800BE544)
/* 486A0 80047AA0 340B8000 */  ori        $t3, $zero, 0x8000
/* 486A4 80047AA4 A42BE544 */  sh         $t3, %lo(D_800BE544)($at)
/* 486A8 80047AA8 3C01800D */  lui        $at, %hi(D_800D2938)
/* 486AC 80047AAC AC202938 */  sw         $zero, %lo(D_800D2938)($at)
/* 486B0 80047AB0 3C01800D */  lui        $at, %hi(D_800D2908)
/* 486B4 80047AB4 A4202908 */  sh         $zero, %lo(D_800D2908)($at)
/* 486B8 80047AB8 3C01800D */  lui        $at, %hi(D_800D2900)
/* 486BC 80047ABC 03E00008 */  jr         $ra
/* 486C0 80047AC0 A4202900 */   sh        $zero, %lo(D_800D2900)($at)
