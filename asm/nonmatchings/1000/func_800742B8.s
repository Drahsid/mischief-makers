glabel func_800742B8
/* 74EB8 800742B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74EBC 800742BC 308F0001 */  andi       $t7, $a0, 1
/* 74EC0 800742C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74EC4 800742C4 11E00006 */  beqz       $t7, .L800742E0
/* 74EC8 800742C8 AFA40018 */   sw        $a0, 0x18($sp)
/* 74ECC 800742CC 24040001 */  addiu      $a0, $zero, 1
/* 74ED0 800742D0 0C00A12E */  jal        func_800284B8
/* 74ED4 800742D4 24050010 */   addiu     $a1, $zero, 0x10
/* 74ED8 800742D8 10000005 */  b          .L800742F0
/* 74EDC 800742DC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800742E0:
/* 74EE0 800742E0 24040070 */  addiu      $a0, $zero, 0x70
/* 74EE4 800742E4 0C00A12E */  jal        func_800284B8
/* 74EE8 800742E8 2405007A */   addiu     $a1, $zero, 0x7a
/* 74EEC 800742EC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800742F0:
/* 74EF0 800742F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74EF4 800742F4 03E00008 */  jr         $ra
/* 74EF8 800742F8 00000000 */   nop
