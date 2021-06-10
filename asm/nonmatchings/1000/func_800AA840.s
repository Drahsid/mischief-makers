glabel func_800AA840
/* AB440 800AA840 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB444 800AA844 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB448 800AA848 240E0001 */  addiu      $t6, $zero, 1
/* AB44C 800AA84C 3C01800F */  lui        $at, %hi(D_800EA650)
/* AB450 800AA850 AC2EA650 */  sw         $t6, %lo(D_800EA650)($at)
/* AB454 800AA854 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB458 800AA858 3C058019 */  lui        $a1, %hi(D_8018A4A0)
/* AB45C 800AA85C 24A5A4A0 */  addiu      $a1, $a1, %lo(D_8018A4A0)
/* AB460 800AA860 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB464 800AA864 0C026994 */  jal        func_8009A650
/* AB468 800AA868 24060001 */   addiu     $a2, $zero, 1
/* AB46C 800AA86C 3C048019 */  lui        $a0, %hi(D_8018A4A8)
/* AB470 800AA870 2484A4A8 */  addiu      $a0, $a0, %lo(D_8018A4A8)
/* AB474 800AA874 00002825 */  or         $a1, $zero, $zero
/* AB478 800AA878 0C0278BC */  jal        func_8009E2F0
/* AB47C 800AA87C 00003025 */   or        $a2, $zero, $zero
/* AB480 800AA880 10000001 */  b          .L800AA888
/* AB484 800AA884 00000000 */   nop
.L800AA888:
/* AB488 800AA888 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB48C 800AA88C 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB490 800AA890 03E00008 */  jr         $ra
/* AB494 800AA894 00000000 */   nop
