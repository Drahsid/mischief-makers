glabel func_8002AEB4
/* 2BAB4 8002AEB4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BAB8 8002AEB8 000EC080 */  sll        $t8, $t6, 2
/* 2BABC 8002AEBC 030EC023 */  subu       $t8, $t8, $t6
/* 2BAC0 8002AEC0 0018C080 */  sll        $t8, $t8, 2
/* 2BAC4 8002AEC4 030EC021 */  addu       $t8, $t8, $t6
/* 2BAC8 8002AEC8 0018C080 */  sll        $t8, $t8, 2
/* 2BACC 8002AECC 030EC023 */  subu       $t8, $t8, $t6
/* 2BAD0 8002AED0 3C19800F */  lui        $t9, %hi(gActors)
/* 2BAD4 8002AED4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 2BAD8 8002AED8 0018C0C0 */  sll        $t8, $t8, 3
/* 2BADC 8002AEDC 03191021 */  addu       $v0, $t8, $t9
/* 2BAE0 8002AEE0 AFA40000 */  sw         $a0, ($sp)
/* 2BAE4 8002AEE4 AFA50004 */  sw         $a1, 4($sp)
/* 2BAE8 8002AEE8 A045009C */  sb         $a1, 0x9c($v0)
/* 2BAEC 8002AEEC A045009D */  sb         $a1, 0x9d($v0)
/* 2BAF0 8002AEF0 03E00008 */  jr         $ra
/* 2BAF4 8002AEF4 A045009E */   sb        $a1, 0x9e($v0)
