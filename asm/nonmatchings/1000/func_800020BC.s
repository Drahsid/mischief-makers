glabel func_800020BC
/* 2CBC 800020BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CC0 800020C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CC4 800020C4 3C048013 */  lui        $a0, %hi(D_801377D0)
/* 2CC8 800020C8 3C058013 */  lui        $a1, %hi(D_801378C0)
/* 2CCC 800020CC 24A578C0 */  addiu      $a1, $a1, %lo(D_801378C0)
/* 2CD0 800020D0 248477D0 */  addiu      $a0, $a0, %lo(D_801377D0)
/* 2CD4 800020D4 0C026994 */  jal        func_8009A650
/* 2CD8 800020D8 24060001 */   addiu     $a2, $zero, 1
/* 2CDC 800020DC 3C058013 */  lui        $a1, %hi(D_801377D0)
/* 2CE0 800020E0 24A577D0 */  addiu      $a1, $a1, %lo(D_801377D0)
/* 2CE4 800020E4 24040004 */  addiu      $a0, $zero, 4
/* 2CE8 800020E8 0C0269BC */  jal        func_8009A6F0
/* 2CEC 800020EC 00003025 */   or        $a2, $zero, $zero
/* 2CF0 800020F0 3C048013 */  lui        $a0, %hi(D_801377D0)
/* 2CF4 800020F4 248477D0 */  addiu      $a0, $a0, %lo(D_801377D0)
/* 2CF8 800020F8 00002825 */  or         $a1, $zero, $zero
/* 2CFC 800020FC 0C0278BC */  jal        func_8009E2F0
/* 2D00 80002100 24060001 */   addiu     $a2, $zero, 1
/* 2D04 80002104 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D08 80002108 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D0C 8000210C 03E00008 */  jr         $ra
/* 2D10 80002110 00000000 */   nop
