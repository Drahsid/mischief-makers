glabel func_80030B0C
/* 3170C 80030B0C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31710 80030B10 000E7880 */  sll        $t7, $t6, 2
/* 31714 80030B14 01EE7823 */  subu       $t7, $t7, $t6
/* 31718 80030B18 000F7880 */  sll        $t7, $t7, 2
/* 3171C 80030B1C 01EE7821 */  addu       $t7, $t7, $t6
/* 31720 80030B20 000F7880 */  sll        $t7, $t7, 2
/* 31724 80030B24 01EE7823 */  subu       $t7, $t7, $t6
/* 31728 80030B28 3C18800F */  lui        $t8, %hi(gActors)
/* 3172C 80030B2C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 31730 80030B30 000F78C0 */  sll        $t7, $t7, 3
/* 31734 80030B34 01F81821 */  addu       $v1, $t7, $t8
/* 31738 80030B38 8C620104 */  lw         $v0, 0x104($v1)
/* 3173C 80030B3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31740 80030B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 31744 80030B44 18400004 */  blez       $v0, .L80030B58
/* 31748 80030B48 AFA40020 */   sw        $a0, 0x20($sp)
/* 3174C 80030B4C 2459FFFF */  addiu      $t9, $v0, -1
/* 31750 80030B50 10000008 */  b          .L80030B74
/* 31754 80030B54 AC790104 */   sw        $t9, 0x104($v1)
.L80030B58:
/* 31758 80030B58 9064009F */  lbu        $a0, 0x9f($v1)
/* 3175C 80030B5C 8465010A */  lh         $a1, 0x10a($v1)
/* 31760 80030B60 0C00AB91 */  jal        func_8002AE44
/* 31764 80030B64 AFA3001C */   sw        $v1, 0x1c($sp)
/* 31768 80030B68 8FA3001C */  lw         $v1, 0x1c($sp)
/* 3176C 80030B6C 00000000 */  nop
/* 31770 80030B70 A062009F */  sb         $v0, 0x9f($v1)
.L80030B74:
/* 31774 80030B74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 31778 80030B78 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3177C 80030B7C 03E00008 */  jr         $ra
/* 31780 80030B80 00000000 */   nop