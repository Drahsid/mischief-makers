glabel func_80067F98
/* 68B98 80067F98 308EFFFF */  andi       $t6, $a0, 0xffff
/* 68B9C 80067F9C 000E7880 */  sll        $t7, $t6, 2
/* 68BA0 80067FA0 01EE7823 */  subu       $t7, $t7, $t6
/* 68BA4 80067FA4 000F7880 */  sll        $t7, $t7, 2
/* 68BA8 80067FA8 01EE7821 */  addu       $t7, $t7, $t6
/* 68BAC 80067FAC 000F7880 */  sll        $t7, $t7, 2
/* 68BB0 80067FB0 01EE7823 */  subu       $t7, $t7, $t6
/* 68BB4 80067FB4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 68BB8 80067FB8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 68BBC 80067FBC 000F78C0 */  sll        $t7, $t7, 3
/* 68BC0 80067FC0 01F81021 */  addu       $v0, $t7, $t8
/* 68BC4 80067FC4 845900E6 */  lh         $t9, 0xe6($v0)
/* 68BC8 80067FC8 AFA40000 */  sw         $a0, ($sp)
/* 68BCC 80067FCC 17200005 */  bnez       $t9, .L80067FE4
/* 68BD0 80067FD0 3C08800E */   lui       $t0, %hi(D_800E2274)
/* 68BD4 80067FD4 25082274 */  addiu      $t0, $t0, %lo(D_800E2274)
/* 68BD8 80067FD8 24090001 */  addiu      $t1, $zero, 1
/* 68BDC 80067FDC A44900E6 */  sh         $t1, 0xe6($v0)
/* 68BE0 80067FE0 AC4800E8 */  sw         $t0, 0xe8($v0)
.L80067FE4:
/* 68BE4 80067FE4 03E00008 */  jr         $ra
/* 68BE8 80067FE8 00000000 */   nop
