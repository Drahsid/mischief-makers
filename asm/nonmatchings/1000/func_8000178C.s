glabel func_8000178C
/* 238C 8000178C 3C03800C */  lui        $v1, %hi(D_800BE5A4)
/* 2390 80001790 2463E5A4 */  addiu      $v1, $v1, %lo(D_800BE5A4)
/* 2394 80001794 946E0000 */  lhu        $t6, ($v1)
/* 2398 80001798 00000000 */  nop
/* 239C 8000179C 000E7940 */  sll        $t7, $t6, 5
/* 23A0 800017A0 01EE7821 */  addu       $t7, $t7, $t6
/* 23A4 800017A4 000F7880 */  sll        $t7, $t7, 2
/* 23A8 800017A8 01EE7821 */  addu       $t7, $t7, $t6
/* 23AC 800017AC 25F80001 */  addiu      $t8, $t7, 1
/* 23B0 800017B0 3302FFFF */  andi       $v0, $t8, 0xffff
/* 23B4 800017B4 A4780000 */  sh         $t8, ($v1)
/* 23B8 800017B8 04410003 */  bgez       $v0, .L800017C8
/* 23BC 800017BC 0002CA03 */   sra       $t9, $v0, 8
/* 23C0 800017C0 244100FF */  addiu      $at, $v0, 0xff
/* 23C4 800017C4 0001CA03 */  sra        $t9, $at, 8
.L800017C8:
/* 23C8 800017C8 03E00008 */  jr         $ra
/* 23CC 800017CC 3322FFFF */   andi      $v0, $t9, 0xffff
