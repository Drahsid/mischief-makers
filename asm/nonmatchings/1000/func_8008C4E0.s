glabel func_8008C4E0
/* 8D0E0 8008C4E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D0E4 8008C4E4 000E7880 */  sll        $t7, $t6, 2
/* 8D0E8 8008C4E8 01EE7823 */  subu       $t7, $t7, $t6
/* 8D0EC 8008C4EC 000F7880 */  sll        $t7, $t7, 2
/* 8D0F0 8008C4F0 01EE7821 */  addu       $t7, $t7, $t6
/* 8D0F4 8008C4F4 000F7880 */  sll        $t7, $t7, 2
/* 8D0F8 8008C4F8 01EE7823 */  subu       $t7, $t7, $t6
/* 8D0FC 8008C4FC 3C18800F */  lui        $t8, %hi(gActors)
/* 8D100 8008C500 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8D104 8008C504 000F78C0 */  sll        $t7, $t7, 3
/* 8D108 8008C508 01F81021 */  addu       $v0, $t7, $t8
/* 8D10C 8008C50C A040009E */  sb         $zero, 0x9e($v0)
/* 8D110 8008C510 A040009D */  sb         $zero, 0x9d($v0)
/* 8D114 8008C514 A040009C */  sb         $zero, 0x9c($v0)
/* 8D118 8008C518 3C018013 */  lui        $at, %hi(D_80137420)
/* 8D11C 8008C51C AFA40000 */  sw         $a0, ($sp)
/* 8D120 8008C520 03E00008 */  jr         $ra
/* 8D124 8008C524 AC207420 */   sw        $zero, %lo(D_80137420)($at)
