glabel func_80047F80
/* 48B80 80047F80 3C03800C */  lui        $v1, %hi(D_800BE5F4)
/* 48B84 80047F84 2463E5F4 */  addiu      $v1, $v1, %lo(D_800BE5F4)
/* 48B88 80047F88 906F0002 */  lbu        $t7, 2($v1)
/* 48B8C 80047F8C AFA40000 */  sw         $a0, ($sp)
/* 48B90 80047F90 15E00017 */  bnez       $t7, .L80047FF0
/* 48B94 80047F94 308EFFFF */   andi      $t6, $a0, 0xffff
/* 48B98 80047F98 000EC080 */  sll        $t8, $t6, 2
/* 48B9C 80047F9C 030EC023 */  subu       $t8, $t8, $t6
/* 48BA0 80047FA0 0018C080 */  sll        $t8, $t8, 2
/* 48BA4 80047FA4 030EC021 */  addu       $t8, $t8, $t6
/* 48BA8 80047FA8 0018C080 */  sll        $t8, $t8, 2
/* 48BAC 80047FAC 030EC023 */  subu       $t8, $t8, $t6
/* 48BB0 80047FB0 3C19800F */  lui        $t9, %hi(gActors)
/* 48BB4 80047FB4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 48BB8 80047FB8 0018C0C0 */  sll        $t8, $t8, 3
/* 48BBC 80047FBC 03191021 */  addu       $v0, $t8, $t9
/* 48BC0 80047FC0 9048012E */  lbu        $t0, 0x12e($v0)
/* 48BC4 80047FC4 8C6B0000 */  lw         $t3, ($v1)
/* 48BC8 80047FC8 240A0002 */  addiu      $t2, $zero, 2
/* 48BCC 80047FCC 24010006 */  addiu      $at, $zero, 6
/* 48BD0 80047FD0 35090041 */  ori        $t1, $t0, 0x41
/* 48BD4 80047FD4 316C00FF */  andi       $t4, $t3, 0xff
/* 48BD8 80047FD8 A049012E */  sb         $t1, 0x12e($v0)
/* 48BDC 80047FDC 15810003 */  bne        $t4, $at, .L80047FEC
/* 48BE0 80047FE0 A44A00D0 */   sh        $t2, 0xd0($v0)
/* 48BE4 80047FE4 240D0001 */  addiu      $t5, $zero, 1
/* 48BE8 80047FE8 A04D00D0 */  sb         $t5, 0xd0($v0)
.L80047FEC:
/* 48BEC 80047FEC AC600000 */  sw         $zero, ($v1)
.L80047FF0:
/* 48BF0 80047FF0 03E00008 */  jr         $ra
/* 48BF4 80047FF4 00000000 */   nop
