glabel func_80096AC4
/* 976C4 80096AC4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 976C8 80096AC8 000EC080 */  sll        $t8, $t6, 2
/* 976CC 80096ACC 030EC023 */  subu       $t8, $t8, $t6
/* 976D0 80096AD0 0018C080 */  sll        $t8, $t8, 2
/* 976D4 80096AD4 030EC021 */  addu       $t8, $t8, $t6
/* 976D8 80096AD8 0018C080 */  sll        $t8, $t8, 2
/* 976DC 80096ADC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 976E0 80096AE0 030EC023 */  subu       $t8, $t8, $t6
/* 976E4 80096AE4 0018C0C0 */  sll        $t8, $t8, 3
/* 976E8 80096AE8 3C01800F */  lui        $at, 0x800f
/* 976EC 80096AEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 976F0 80096AF0 AFA40018 */  sw         $a0, 0x18($sp)
/* 976F4 80096AF4 00380821 */  addu       $at, $at, $t8
/* 976F8 80096AF8 240F0003 */  addiu      $t7, $zero, 3
/* 976FC 80096AFC 01C02025 */  or         $a0, $t6, $zero
/* 97700 80096B00 0C024019 */  jal        func_80090064
/* 97704 80096B04 A42FF780 */   sh        $t7, -0x880($at)
/* 97708 80096B08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9770C 80096B0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 97710 80096B10 03E00008 */  jr         $ra
/* 97714 80096B14 00000000 */   nop
