glabel func_8002AC30
/* 2B830 8002AC30 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B834 8002AC34 000EC880 */  sll        $t9, $t6, 2
/* 2B838 8002AC38 032EC823 */  subu       $t9, $t9, $t6
/* 2B83C 8002AC3C 0019C880 */  sll        $t9, $t9, 2
/* 2B840 8002AC40 032EC821 */  addu       $t9, $t9, $t6
/* 2B844 8002AC44 0019C880 */  sll        $t9, $t9, 2
/* 2B848 8002AC48 032EC823 */  subu       $t9, $t9, $t6
/* 2B84C 8002AC4C 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 2B850 8002AC50 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 2B854 8002AC54 0019C8C0 */  sll        $t9, $t9, 3
/* 2B858 8002AC58 03281021 */  addu       $v0, $t9, $t0
/* 2B85C 8002AC5C 00051823 */  negu       $v1, $a1
/* 2B860 8002AC60 AFA40000 */  sw         $a0, ($sp)
/* 2B864 8002AC64 AFA50004 */  sw         $a1, 4($sp)
/* 2B868 8002AC68 A44500AE */  sh         $a1, 0xae($v0)
/* 2B86C 8002AC6C A44300B0 */  sh         $v1, 0xb0($v0)
/* 2B870 8002AC70 A44300AA */  sh         $v1, 0xaa($v0)
/* 2B874 8002AC74 03E00008 */  jr         $ra
/* 2B878 8002AC78 A44500AC */   sh        $a1, 0xac($v0)
