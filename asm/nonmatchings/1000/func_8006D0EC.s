glabel func_8006D0EC
/* 6DCEC 8006D0EC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6DCF0 8006D0F0 000E7880 */  sll        $t7, $t6, 2
/* 6DCF4 8006D0F4 01EE7823 */  subu       $t7, $t7, $t6
/* 6DCF8 8006D0F8 000F7880 */  sll        $t7, $t7, 2
/* 6DCFC 8006D0FC 01EE7821 */  addu       $t7, $t7, $t6
/* 6DD00 8006D100 000F7880 */  sll        $t7, $t7, 2
/* 6DD04 8006D104 01EE7823 */  subu       $t7, $t7, $t6
/* 6DD08 8006D108 000F78C0 */  sll        $t7, $t7, 3
/* 6DD0C 8006D10C 3C18800F */  lui        $t8, %hi(D_800EF5E0)
/* 6DD10 8006D110 030FC021 */  addu       $t8, $t8, $t7
/* 6DD14 8006D114 9718F5E0 */  lhu        $t8, %lo(D_800EF5E0)($t8)
/* 6DD18 8006D118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6DD1C 8006D11C AFA40018 */  sw         $a0, 0x18($sp)
/* 6DD20 8006D120 01C02025 */  or         $a0, $t6, $zero
/* 6DD24 8006D124 17000008 */  bnez       $t8, .L8006D148
/* 6DD28 8006D128 AFBF0014 */   sw        $ra, 0x14($sp)
/* 6DD2C 8006D12C 0C01B357 */  jal        func_8006CD5C
/* 6DD30 8006D130 A7AE001A */   sh        $t6, 0x1a($sp)
/* 6DD34 8006D134 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6DD38 8006D138 0C00D637 */  jal        func_800358DC
/* 6DD3C 8006D13C 00000000 */   nop
/* 6DD40 8006D140 10000004 */  b          .L8006D154
/* 6DD44 8006D144 8FBF0014 */   lw        $ra, 0x14($sp)
.L8006D148:
/* 6DD48 8006D148 0C00D688 */  jal        func_80035A20
/* 6DD4C 8006D14C 00000000 */   nop
/* 6DD50 8006D150 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006D154:
/* 6DD54 8006D154 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6DD58 8006D158 03E00008 */  jr         $ra
/* 6DD5C 8006D15C 00000000 */   nop
