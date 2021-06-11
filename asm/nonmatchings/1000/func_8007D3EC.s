glabel func_8007D3EC
/* 7DFEC 8007D3EC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DFF0 8007D3F0 000E7880 */  sll        $t7, $t6, 2
/* 7DFF4 8007D3F4 01EE7823 */  subu       $t7, $t7, $t6
/* 7DFF8 8007D3F8 000F7880 */  sll        $t7, $t7, 2
/* 7DFFC 8007D3FC 01EE7821 */  addu       $t7, $t7, $t6
/* 7E000 8007D400 000F7880 */  sll        $t7, $t7, 2
/* 7E004 8007D404 01EE7823 */  subu       $t7, $t7, $t6
/* 7E008 8007D408 3C18800F */  lui        $t8, %hi(gActors)
/* 7E00C 8007D40C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7E010 8007D410 000F78C0 */  sll        $t7, $t7, 3
/* 7E014 8007D414 01F81021 */  addu       $v0, $t7, $t8
/* 7E018 8007D418 9059009F */  lbu        $t9, 0x9f($v0)
/* 7E01C 8007D41C AFA40000 */  sw         $a0, ($sp)
/* 7E020 8007D420 2B210081 */  slti       $at, $t9, 0x81
/* 7E024 8007D424 14200002 */  bnez       $at, .L8007D430
/* 7E028 8007D428 24080090 */   addiu     $t0, $zero, 0x90
/* 7E02C 8007D42C A048009F */  sb         $t0, 0x9f($v0)
.L8007D430:
/* 7E030 8007D430 03E00008 */  jr         $ra
/* 7E034 8007D434 00000000 */   nop
