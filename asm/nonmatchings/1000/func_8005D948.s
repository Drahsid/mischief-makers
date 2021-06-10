glabel func_8005D948
/* 5E548 8005D948 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E54C 8005D94C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E550 8005D950 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E554 8005D954 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E558 8005D958 3C188019 */  lui        $t8, %hi(D_80192064)
/* 5E55C 8005D95C 8F192064 */  lw         $t9, %lo(D_80192064)($t8)
/* 5E560 8005D960 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E564 8005D964 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E568 8005D968 01E02825 */  or         $a1, $t7, $zero
/* 5E56C 8005D96C 0320F809 */  jalr       $t9
/* 5E570 8005D970 01C02025 */   or        $a0, $t6, $zero
/* 5E574 8005D974 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E578 8005D978 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E57C 8005D97C 03E00008 */  jr         $ra
/* 5E580 8005D980 00000000 */   nop
