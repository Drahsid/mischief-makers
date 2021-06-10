glabel func_800485AC
/* 491AC 800485AC 3C0F800C */  lui        $t7, %hi(D_800BE5F4)
/* 491B0 800485B0 8DEFE5F4 */  lw         $t7, %lo(D_800BE5F4)($t7)
/* 491B4 800485B4 3C01800D */  lui        $at, %hi(D_800D3D20)
/* 491B8 800485B8 31F800FF */  andi       $t8, $t7, 0xff
/* 491BC 800485BC 0018C880 */  sll        $t9, $t8, 2
/* 491C0 800485C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 491C4 800485C4 00390821 */  addu       $at, $at, $t9
/* 491C8 800485C8 8C393D20 */  lw         $t9, %lo(D_800D3D20)($at)
/* 491CC 800485CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 491D0 800485D0 AFA40018 */  sw         $a0, 0x18($sp)
/* 491D4 800485D4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 491D8 800485D8 0320F809 */  jalr       $t9
/* 491DC 800485DC 01C02025 */   or        $a0, $t6, $zero
/* 491E0 800485E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 491E4 800485E4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 491E8 800485E8 A020E5F4 */  sb         $zero, %lo(D_800BE5F4)($at)
/* 491EC 800485EC 03E00008 */  jr         $ra
/* 491F0 800485F0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 491F4 800485F4 00000000 */  nop
/* 491F8 800485F8 00000000 */  nop
/* 491FC 800485FC 00000000 */  nop
