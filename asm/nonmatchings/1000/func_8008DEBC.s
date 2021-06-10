glabel func_8008DEBC
/* 8EABC 8008DEBC 3C0F800D */  lui        $t7, %hi(D_800D28E4)
/* 8EAC0 8008DEC0 95EF28E4 */  lhu        $t7, %lo(D_800D28E4)($t7)
/* 8EAC4 8008DEC4 AFA40000 */  sw         $a0, ($sp)
/* 8EAC8 8008DEC8 29E10061 */  slti       $at, $t7, 0x61
/* 8EACC 8008DECC 1420000C */  bnez       $at, .L8008DF00
/* 8EAD0 8008DED0 308EFFFF */   andi      $t6, $a0, 0xffff
/* 8EAD4 8008DED4 000EC080 */  sll        $t8, $t6, 2
/* 8EAD8 8008DED8 030EC023 */  subu       $t8, $t8, $t6
/* 8EADC 8008DEDC 0018C080 */  sll        $t8, $t8, 2
/* 8EAE0 8008DEE0 030EC021 */  addu       $t8, $t8, $t6
/* 8EAE4 8008DEE4 0018C080 */  sll        $t8, $t8, 2
/* 8EAE8 8008DEE8 030EC023 */  subu       $t8, $t8, $t6
/* 8EAEC 8008DEEC 0018C0C0 */  sll        $t8, $t8, 3
/* 8EAF0 8008DEF0 3C01800F */  lui        $at, %hi(D_800EF590)
/* 8EAF4 8008DEF4 00380821 */  addu       $at, $at, $t8
/* 8EAF8 8008DEF8 03E00008 */  jr         $ra
/* 8EAFC 8008DEFC AC20F590 */   sw        $zero, %lo(D_800EF590)($at)
.L8008DF00:
/* 8EB00 8008DF00 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 8EB04 8008DF04 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 8EB08 8008DF08 8C590000 */  lw         $t9, ($v0)
/* 8EB0C 8008DF0C 00000000 */  nop
/* 8EB10 8008DF10 37280200 */  ori        $t0, $t9, 0x200
/* 8EB14 8008DF14 AC480000 */  sw         $t0, ($v0)
/* 8EB18 8008DF18 03E00008 */  jr         $ra
/* 8EB1C 8008DF1C 00000000 */   nop
