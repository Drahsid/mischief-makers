glabel func_8005D630
/* 5E230 8005D630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E234 8005D634 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E238 8005D638 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E23C 8005D63C 3C0F801A */  lui        $t7, %hi(D_8019B00C)
/* 5E240 8005D640 8DF9B00C */  lw         $t9, %lo(D_8019B00C)($t7)
/* 5E244 8005D644 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E248 8005D648 01C02025 */  or         $a0, $t6, $zero
/* 5E24C 8005D64C 0320F809 */  jalr       $t9
/* 5E250 8005D650 00002825 */   or        $a1, $zero, $zero
/* 5E254 8005D654 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E258 8005D658 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E25C 8005D65C 03E00008 */  jr         $ra
/* 5E260 8005D660 00000000 */   nop
