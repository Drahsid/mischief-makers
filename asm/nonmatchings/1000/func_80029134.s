glabel func_80029134
/* 29D34 80029134 308EFFFF */  andi       $t6, $a0, 0xffff
/* 29D38 80029138 000E7880 */  sll        $t7, $t6, 2
/* 29D3C 8002913C 01EE7823 */  subu       $t7, $t7, $t6
/* 29D40 80029140 000F7880 */  sll        $t7, $t7, 2
/* 29D44 80029144 01EE7821 */  addu       $t7, $t7, $t6
/* 29D48 80029148 000F7880 */  sll        $t7, $t7, 2
/* 29D4C 8002914C 01EE7823 */  subu       $t7, $t7, $t6
/* 29D50 80029150 3C18800F */  lui        $t8, %hi(gActors)
/* 29D54 80029154 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 29D58 80029158 000F78C0 */  sll        $t7, $t7, 3
/* 29D5C 8002915C 01F81021 */  addu       $v0, $t7, $t8
/* 29D60 80029160 8C590080 */  lw         $t9, 0x80($v0)
/* 29D64 80029164 3C01FFFE */  lui        $at, 0xfffe
/* 29D68 80029168 3421EFFF */  ori        $at, $at, 0xefff
/* 29D6C 8002916C 03214024 */  and        $t0, $t9, $at
/* 29D70 80029170 8C4B0104 */  lw         $t3, 0x104($v0)
/* 29D74 80029174 8C4C0108 */  lw         $t4, 0x108($v0)
/* 29D78 80029178 8C4D010C */  lw         $t5, 0x10c($v0)
/* 29D7C 8002917C 3C010002 */  lui        $at, 2
/* 29D80 80029180 01015025 */  or         $t2, $t0, $at
/* 29D84 80029184 AC480080 */  sw         $t0, 0x80($v0)
/* 29D88 80029188 AFA40000 */  sw         $a0, ($sp)
/* 29D8C 8002918C AC4A0080 */  sw         $t2, 0x80($v0)
/* 29D90 80029190 AC4000EC */  sw         $zero, 0xec($v0)
/* 29D94 80029194 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 29D98 80029198 AC4000F4 */  sw         $zero, 0xf4($v0)
/* 29D9C 8002919C AC4B0088 */  sw         $t3, 0x88($v0)
/* 29DA0 800291A0 AC4C008C */  sw         $t4, 0x8c($v0)
/* 29DA4 800291A4 03E00008 */  jr         $ra
/* 29DA8 800291A8 AC4D0090 */   sw        $t5, 0x90($v0)
