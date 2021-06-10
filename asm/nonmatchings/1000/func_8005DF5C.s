glabel func_8005DF5C
/* 5EB5C 8005DF5C 3C01800D */  lui        $at, %hi(D_800D5820)
/* 5EB60 8005DF60 A4205820 */  sh         $zero, %lo(D_800D5820)($at)
/* 5EB64 8005DF64 3C01800D */  lui        $at, %hi(D_800D5830)
/* 5EB68 8005DF68 A4205830 */  sh         $zero, %lo(D_800D5830)($at)
/* 5EB6C 8005DF6C 3C01800D */  lui        $at, %hi(D_800D5834)
/* 5EB70 8005DF70 240E0046 */  addiu      $t6, $zero, 0x46
/* 5EB74 8005DF74 3C058018 */  lui        $a1, %hi(D_80178418)
/* 5EB78 8005DF78 A42E5834 */  sh         $t6, %lo(D_800D5834)($at)
/* 5EB7C 8005DF7C 24A58418 */  addiu      $a1, $a1, %lo(D_80178418)
/* 5EB80 8005DF80 00001825 */  or         $v1, $zero, $zero
/* 5EB84 8005DF84 00001025 */  or         $v0, $zero, $zero
/* 5EB88 8005DF88 24060010 */  addiu      $a2, $zero, 0x10
.L8005DF8C:
/* 5EB8C 8005DF8C 84AF0000 */  lh         $t7, ($a1)
/* 5EB90 8005DF90 00000000 */  nop
/* 5EB94 8005DF94 15E00006 */  bnez       $t7, .L8005DFB0
/* 5EB98 8005DF98 3C018018 */   lui       $at, %hi(D_801783F8)
/* 5EB9C 8005DF9C 00220821 */  addu       $at, $at, $v0
/* 5EBA0 8005DFA0 A42083F8 */  sh         $zero, %lo(D_801783F8)($at)
/* 5EBA4 8005DFA4 A4A40000 */  sh         $a0, ($a1)
/* 5EBA8 8005DFA8 03E00008 */  jr         $ra
/* 5EBAC 8005DFAC 00601025 */   or        $v0, $v1, $zero
.L8005DFB0:
/* 5EBB0 8005DFB0 24630001 */  addiu      $v1, $v1, 1
/* 5EBB4 8005DFB4 24420002 */  addiu      $v0, $v0, 2
/* 5EBB8 8005DFB8 1466FFF4 */  bne        $v1, $a2, .L8005DF8C
/* 5EBBC 8005DFBC 24A50002 */   addiu     $a1, $a1, 2
/* 5EBC0 8005DFC0 03E00008 */  jr         $ra
/* 5EBC4 8005DFC4 00601025 */   or        $v0, $v1, $zero
