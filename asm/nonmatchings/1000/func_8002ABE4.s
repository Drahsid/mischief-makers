glabel func_8002ABE4
/* 2B7E4 8002ABE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2B7E8 8002ABE8 000EC880 */  sll        $t9, $t6, 2
/* 2B7EC 8002ABEC 032EC823 */  subu       $t9, $t9, $t6
/* 2B7F0 8002ABF0 0019C880 */  sll        $t9, $t9, 2
/* 2B7F4 8002ABF4 032EC821 */  addu       $t9, $t9, $t6
/* 2B7F8 8002ABF8 0019C880 */  sll        $t9, $t9, 2
/* 2B7FC 8002ABFC 032EC823 */  subu       $t9, $t9, $t6
/* 2B800 8002AC00 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 2B804 8002AC04 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 2B808 8002AC08 0019C8C0 */  sll        $t9, $t9, 3
/* 2B80C 8002AC0C 03281021 */  addu       $v0, $t9, $t0
/* 2B810 8002AC10 00051823 */  negu       $v1, $a1
/* 2B814 8002AC14 AFA40000 */  sw         $a0, ($sp)
/* 2B818 8002AC18 AFA50004 */  sw         $a1, 4($sp)
/* 2B81C 8002AC1C A44500A6 */  sh         $a1, 0xa6($v0)
/* 2B820 8002AC20 A44300A8 */  sh         $v1, 0xa8($v0)
/* 2B824 8002AC24 A44300A2 */  sh         $v1, 0xa2($v0)
/* 2B828 8002AC28 03E00008 */  jr         $ra
/* 2B82C 8002AC2C A44500A4 */   sh        $a1, 0xa4($v0)
