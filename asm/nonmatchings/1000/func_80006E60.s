glabel func_80006E60
/* 7A60 80006E60 3C0E8017 */  lui        $t6, %hi(D_80171B18)
/* 7A64 80006E64 91CE1B18 */  lbu        $t6, %lo(D_80171B18)($t6)
/* 7A68 80006E68 3C038018 */  lui        $v1, %hi(D_80178162)
/* 7A6C 80006E6C 31C2FFFF */  andi       $v0, $t6, 0xffff
/* 7A70 80006E70 24638162 */  addiu      $v1, $v1, %lo(D_80178162)
/* 7A74 80006E74 00027840 */  sll        $t7, $v0, 1
/* 7A78 80006E78 3C18800D */  lui        $t8, %hi(D_800C8378)
/* 7A7C 80006E7C 030FC021 */  addu       $t8, $t8, $t7
/* 7A80 80006E80 A46E0000 */  sh         $t6, ($v1)
/* 7A84 80006E84 97188378 */  lhu        $t8, %lo(D_800C8378)($t8)
/* 7A88 80006E88 3C19800D */  lui        $t9, %hi(D_800C83F8)
/* 7A8C 80006E8C 3C01800C */  lui        $at, %hi(D_800BE5D0)
/* 7A90 80006E90 032FC821 */  addu       $t9, $t9, $t7
/* 7A94 80006E94 973983F8 */  lhu        $t9, %lo(D_800C83F8)($t9)
/* 7A98 80006E98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A9C 80006E9C A438E5D0 */  sh         $t8, %lo(D_800BE5D0)($at)
/* 7AA0 80006EA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7AA4 80006EA4 3C01800D */  lui        $at, %hi(D_800D28E4)
/* 7AA8 80006EA8 0C010E46 */  jal        func_80043918
/* 7AAC 80006EAC A43928E4 */   sh        $t9, %lo(D_800D28E4)($at)
/* 7AB0 80006EB0 24080001 */  addiu      $t0, $zero, 1
/* 7AB4 80006EB4 3C01800D */  lui        $at, %hi(D_800CBF40)
/* 7AB8 80006EB8 A428BF40 */  sh         $t0, %lo(D_800CBF40)($at)
/* 7ABC 80006EBC 3C01800C */  lui        $at, %hi(D_800BE4F0)
/* 7AC0 80006EC0 2409000C */  addiu      $t1, $zero, 0xc
/* 7AC4 80006EC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7AC8 80006EC8 A429E4F0 */  sh         $t1, %lo(D_800BE4F0)($at)
/* 7ACC 80006ECC 3C01800C */  lui        $at, %hi(D_800BE4F4)
/* 7AD0 80006ED0 A420E4F4 */  sh         $zero, %lo(D_800BE4F4)($at)
/* 7AD4 80006ED4 03E00008 */  jr         $ra
/* 7AD8 80006ED8 27BD0018 */   addiu     $sp, $sp, 0x18
