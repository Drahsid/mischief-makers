glabel func_8002BACC
/* 2C6CC 8002BACC 3C0F800C */  lui        $t7, %hi(D_800BE4D8)
/* 2C6D0 8002BAD0 95EFE4D8 */  lhu        $t7, %lo(D_800BE4D8)($t7)
/* 2C6D4 8002BAD4 AFA40000 */  sw         $a0, ($sp)
/* 2C6D8 8002BAD8 AFA50004 */  sw         $a1, 4($sp)
/* 2C6DC 8002BADC 15E00006 */  bnez       $t7, .L8002BAF8
/* 2C6E0 8002BAE0 30AEFFFF */   andi      $t6, $a1, 0xffff
/* 2C6E4 8002BAE4 31D80080 */  andi       $t8, $t6, 0x80
/* 2C6E8 8002BAE8 13000004 */  beqz       $t8, .L8002BAFC
/* 2C6EC 8002BAEC 00001025 */   or        $v0, $zero, $zero
/* 2C6F0 8002BAF0 03E00008 */  jr         $ra
/* 2C6F4 8002BAF4 24020001 */   addiu     $v0, $zero, 1
.L8002BAF8:
/* 2C6F8 8002BAF8 00001025 */  or         $v0, $zero, $zero
.L8002BAFC:
/* 2C6FC 8002BAFC 03E00008 */  jr         $ra
/* 2C700 8002BB00 00000000 */   nop
