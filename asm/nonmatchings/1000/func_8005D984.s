glabel func_8005D984
/* 5E584 8005D984 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E588 8005D988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E58C 8005D98C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E590 8005D990 3C0F8019 */  lui        $t7, %hi(D_80192068)
/* 5E594 8005D994 8DF92068 */  lw         $t9, %lo(D_80192068)($t7)
/* 5E598 8005D998 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E59C 8005D99C 01C02025 */  or         $a0, $t6, $zero
/* 5E5A0 8005D9A0 0320F809 */  jalr       $t9
/* 5E5A4 8005D9A4 00002825 */   or        $a1, $zero, $zero
/* 5E5A8 8005D9A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E5AC 8005D9AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E5B0 8005D9B0 03E00008 */  jr         $ra
/* 5E5B4 8005D9B4 00000000 */   nop
