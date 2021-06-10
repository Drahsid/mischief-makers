glabel func_80007A90
/* 8690 80007A90 3C028010 */  lui        $v0, %hi(D_800FF510)
/* 8694 80007A94 2442F510 */  addiu      $v0, $v0, %lo(D_800FF510)
/* 8698 80007A98 904E25E0 */  lbu        $t6, 0x25e0($v0)
/* 869C 80007A9C 2401000A */  addiu      $at, $zero, 0xa
/* 86A0 80007AA0 15C10004 */  bne        $t6, $at, .L80007AB4
/* 86A4 80007AA4 240F0002 */   addiu     $t7, $zero, 2
/* 86A8 80007AA8 24180005 */  addiu      $t8, $zero, 5
/* 86AC 80007AAC A04F1AB8 */  sb         $t7, 0x1ab8($v0)
/* 86B0 80007AB0 A0581C50 */  sb         $t8, 0x1c50($v0)
.L80007AB4:
/* 86B4 80007AB4 03E00008 */  jr         $ra
/* 86B8 80007AB8 00000000 */   nop
