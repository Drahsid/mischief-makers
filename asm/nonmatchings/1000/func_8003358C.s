glabel func_8003358C
/* 3418C 8003358C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 34190 80033590 000E7880 */  sll        $t7, $t6, 2
/* 34194 80033594 01EE7823 */  subu       $t7, $t7, $t6
/* 34198 80033598 000F7880 */  sll        $t7, $t7, 2
/* 3419C 8003359C 01EE7821 */  addu       $t7, $t7, $t6
/* 341A0 800335A0 000F7880 */  sll        $t7, $t7, 2
/* 341A4 800335A4 01EE7823 */  subu       $t7, $t7, $t6
/* 341A8 800335A8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 341AC 800335AC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 341B0 800335B0 000F78C0 */  sll        $t7, $t7, 3
/* 341B4 800335B4 01F81021 */  addu       $v0, $t7, $t8
/* 341B8 800335B8 9043009F */  lbu        $v1, 0x9f($v0)
/* 341BC 800335BC 8C45018C */  lw         $a1, 0x18c($v0)
/* 341C0 800335C0 AFA40000 */  sw         $a0, ($sp)
/* 341C4 800335C4 0065082A */  slt        $at, $v1, $a1
/* 341C8 800335C8 10200003 */  beqz       $at, .L800335D8
/* 341CC 800335CC 0065C823 */   subu      $t9, $v1, $a1
/* 341D0 800335D0 03E00008 */  jr         $ra
/* 341D4 800335D4 AC400080 */   sw        $zero, 0x80($v0)
.L800335D8:
/* 341D8 800335D8 A059009F */  sb         $t9, 0x9f($v0)
/* 341DC 800335DC 03E00008 */  jr         $ra
/* 341E0 800335E0 00000000 */   nop
