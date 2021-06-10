glabel func_8005DD34
/* 5E934 8005DD34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E938 8005DD38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E93C 8005DD3C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E940 8005DD40 3C0F801A */  lui        $t7, %hi(D_801A6878)
/* 5E944 8005DD44 8DF96878 */  lw         $t9, %lo(D_801A6878)($t7)
/* 5E948 8005DD48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E94C 8005DD4C 01C02025 */  or         $a0, $t6, $zero
/* 5E950 8005DD50 0320F809 */  jalr       $t9
/* 5E954 8005DD54 00002825 */   or        $a1, $zero, $zero
/* 5E958 8005DD58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E95C 8005DD5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E960 8005DD60 03E00008 */  jr         $ra
/* 5E964 8005DD64 00000000 */   nop
