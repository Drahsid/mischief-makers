glabel func_800696A8
/* 6A2A8 800696A8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6A2AC 800696AC 000E7880 */  sll        $t7, $t6, 2
/* 6A2B0 800696B0 01EE7823 */  subu       $t7, $t7, $t6
/* 6A2B4 800696B4 000F7880 */  sll        $t7, $t7, 2
/* 6A2B8 800696B8 01EE7821 */  addu       $t7, $t7, $t6
/* 6A2BC 800696BC 000F7880 */  sll        $t7, $t7, 2
/* 6A2C0 800696C0 01EE7823 */  subu       $t7, $t7, $t6
/* 6A2C4 800696C4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6A2C8 800696C8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6A2CC 800696CC 000F78C0 */  sll        $t7, $t7, 3
/* 6A2D0 800696D0 01F81021 */  addu       $v0, $t7, $t8
/* 6A2D4 800696D4 8C590080 */  lw         $t9, 0x80($v0)
/* 6A2D8 800696D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6A2DC 800696DC 3C01FFFF */  lui        $at, 0xffff
/* 6A2E0 800696E0 3421607F */  ori        $at, $at, 0x607f
/* 6A2E4 800696E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A2E8 800696E8 AFA40018 */  sw         $a0, 0x18($sp)
/* 6A2EC 800696EC 240901C0 */  addiu      $t1, $zero, 0x1c0
/* 6A2F0 800696F0 03214024 */  and        $t0, $t9, $at
/* 6A2F4 800696F4 01C02025 */  or         $a0, $t6, $zero
/* 6A2F8 800696F8 AC480080 */  sw         $t0, 0x80($v0)
/* 6A2FC 800696FC 0C01B1BC */  jal        func_8006C6F0
/* 6A300 80069700 A44900D0 */   sh        $t1, 0xd0($v0)
/* 6A304 80069704 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6A308 80069708 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6A30C 8006970C 03E00008 */  jr         $ra
/* 6A310 80069710 00000000 */   nop
