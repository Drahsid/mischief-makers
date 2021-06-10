glabel func_8005DD9C
/* 5E99C 8005DD9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E9A0 8005DDA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E9A4 8005DDA4 3C0E801A */  lui        $t6, %hi(D_801A6880)
/* 5E9A8 8005DDA8 8DD96880 */  lw         $t9, %lo(D_801A6880)($t6)
/* 5E9AC 8005DDAC 00002025 */  or         $a0, $zero, $zero
/* 5E9B0 8005DDB0 0320F809 */  jalr       $t9
/* 5E9B4 8005DDB4 00002825 */   or        $a1, $zero, $zero
/* 5E9B8 8005DDB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E9BC 8005DDBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E9C0 8005DDC0 03E00008 */  jr         $ra
/* 5E9C4 8005DDC4 00000000 */   nop
