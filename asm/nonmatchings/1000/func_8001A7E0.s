glabel func_8001A7E0
/* 1B3E0 8001A7E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B3E4 8001A7E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B3E8 8001A7E8 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B3EC 8001A7EC AFA5001C */  sw         $a1, 0x1c($sp)
/* 1B3F0 8001A7F0 AFA60020 */  sw         $a2, 0x20($sp)
/* 1B3F4 8001A7F4 AFA70024 */  sw         $a3, 0x24($sp)
/* 1B3F8 8001A7F8 30E5FFFF */  andi       $a1, $a3, 0xffff
/* 1B3FC 8001A7FC 0C0069D6 */  jal        func_8001A758
/* 1B400 8001A800 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 1B404 8001A804 0002C040 */  sll        $t8, $v0, 1
/* 1B408 8001A808 3C06800D */  lui        $a2, %hi(D_800C9694)
/* 1B40C 8001A80C 00D83021 */  addu       $a2, $a2, $t8
/* 1B410 8001A810 84C69694 */  lh         $a2, %lo(D_800C9694)($a2)
/* 1B414 8001A814 87A4001A */  lh         $a0, 0x1a($sp)
/* 1B418 8001A818 87A5001E */  lh         $a1, 0x1e($sp)
/* 1B41C 8001A81C 87A7002A */  lh         $a3, 0x2a($sp)
/* 1B420 8001A820 0C020DE7 */  jal        func_8008379C
/* 1B424 8001A824 00000000 */   nop
/* 1B428 8001A828 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B42C 8001A82C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B430 8001A830 03E00008 */  jr         $ra
/* 1B434 8001A834 00000000 */   nop
