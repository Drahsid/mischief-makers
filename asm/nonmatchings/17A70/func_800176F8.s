glabel func_800176F8
/* 182F8 800176F8 3C0F800C */  lui        $t7, %hi(buttonHold)
/* 182FC 800176FC 95EFE4F8 */  lhu        $t7, %lo(buttonHold)($t7)
/* 18300 80017700 3082FFFF */  andi       $v0, $a0, 0xffff
/* 18304 80017704 01E2C024 */  and        $t8, $t7, $v0
/* 18308 80017708 17000003 */  bnez       $t8, .L80017718
/* 1830C 8001770C AFA40000 */   sw        $a0, ($sp)
/* 18310 80017710 10000009 */  b          .L80017738
/* 18314 80017714 A0A00000 */   sb        $zero, ($a1)
.L80017718:
/* 18318 80017718 90A30000 */  lbu        $v1, ($a1)
/* 1831C 8001771C 24010014 */  addiu      $at, $zero, 0x14
/* 18320 80017720 14610004 */  bne        $v1, $at, .L80017734
/* 18324 80017724 24680001 */   addiu     $t0, $v1, 1
/* 18328 80017728 24190010 */  addiu      $t9, $zero, 0x10
/* 1832C 8001772C 10000002 */  b          .L80017738
/* 18330 80017730 A0B90000 */   sb        $t9, ($a1)
.L80017734:
/* 18334 80017734 A0A80000 */  sb         $t0, ($a1)
.L80017738:
/* 18338 80017738 3C09800C */  lui        $t1, %hi(buttonPress)
/* 1833C 8001773C 9529E4FC */  lhu        $t1, %lo(buttonPress)($t1)
/* 18340 80017740 00000000 */  nop
/* 18344 80017744 01225024 */  and        $t2, $t1, $v0
/* 18348 80017748 15400005 */  bnez       $t2, .L80017760
/* 1834C 8001774C 00000000 */   nop
/* 18350 80017750 90AB0000 */  lbu        $t3, ($a1)
/* 18354 80017754 24010014 */  addiu      $at, $zero, 0x14
/* 18358 80017758 15610003 */  bne        $t3, $at, .L80017768
/* 1835C 8001775C 00001025 */   or        $v0, $zero, $zero
.L80017760:
/* 18360 80017760 03E00008 */  jr         $ra
/* 18364 80017764 24020001 */   addiu     $v0, $zero, 1
.L80017768:
/* 18368 80017768 03E00008 */  jr         $ra
/* 1836C 8001776C 00000000 */   nop
