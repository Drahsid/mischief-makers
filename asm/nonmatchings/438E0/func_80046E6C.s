glabel func_80046E6C
/* 47A6C 80046E6C 3C0E800C */  lui        $t6, %hi(gButtonPress)
/* 47A70 80046E70 3C0F800C */  lui        $t7, %hi(gButton_ZTrig)
/* 47A74 80046E74 95EFE52C */  lhu        $t7, %lo(gButton_ZTrig)($t7)
/* 47A78 80046E78 95CEE4FC */  lhu        $t6, %lo(gButtonPress)($t6)
/* 47A7C 80046E7C 3C03800D */  lui        $v1, %hi(D_800D28E4)
/* 47A80 80046E80 01CFC024 */  and        $t8, $t6, $t7
/* 47A84 80046E84 1300000A */  beqz       $t8, .L80046EB0
/* 47A88 80046E88 246328E4 */   addiu     $v1, $v1, %lo(D_800D28E4)
/* 47A8C 80046E8C 94790000 */  lhu        $t9, ($v1)
/* 47A90 80046E90 3C01800D */  lui        $at, %hi(D_800D28F0)
/* 47A94 80046E94 A43928F0 */  sh         $t9, %lo(D_800D28F0)($at)
/* 47A98 80046E98 24080063 */  addiu      $t0, $zero, 0x63
/* 47A9C 80046E9C A4680000 */  sh         $t0, ($v1)
/* 47AA0 80046EA0 3C01800D */  lui        $at, %hi(D_800D2938)
/* 47AA4 80046EA4 AC202938 */  sw         $zero, %lo(D_800D2938)($at)
/* 47AA8 80046EA8 03E00008 */  jr         $ra
/* 47AAC 80046EAC 24020001 */   addiu     $v0, $zero, 1
.L80046EB0:
/* 47AB0 80046EB0 00001025 */  or         $v0, $zero, $zero
/* 47AB4 80046EB4 03E00008 */  jr         $ra
/* 47AB8 80046EB8 00000000 */   nop
