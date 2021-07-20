glabel func_8004A8E0
/* 4B4E0 8004A8E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4B4E4 8004A8E4 000EC080 */  sll        $t8, $t6, 2
/* 4B4E8 8004A8E8 030EC023 */  subu       $t8, $t8, $t6
/* 4B4EC 8004A8EC 0018C080 */  sll        $t8, $t8, 2
/* 4B4F0 8004A8F0 030EC021 */  addu       $t8, $t8, $t6
/* 4B4F4 8004A8F4 0018C080 */  sll        $t8, $t8, 2
/* 4B4F8 8004A8F8 030EC023 */  subu       $t8, $t8, $t6
/* 4B4FC 8004A8FC 0018C0C0 */  sll        $t8, $t8, 3
/* 4B500 8004A900 3C01800F */  lui        $at, %hi(D_800EF63E)
/* 4B504 8004A904 00380821 */  addu       $at, $at, $t8
/* 4B508 8004A908 240F00FF */  addiu      $t7, $zero, 0xff
/* 4B50C 8004A90C AFA40000 */  sw         $a0, ($sp)
/* 4B510 8004A910 03E00008 */  jr         $ra
/* 4B514 8004A914 A02FF63E */   sb        $t7, %lo(D_800EF63E)($at)
