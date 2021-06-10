glabel func_800AF18C
/* AFD8C 800AF18C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFD90 800AF190 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFD94 800AF194 AFA40018 */  sw         $a0, 0x18($sp)
/* AFD98 800AF198 3C05800B */  lui        $a1, %hi(func_800B1FF0)
/* AFD9C 800AF19C 3C06800B */  lui        $a2, %hi(func_800B2154)
/* AFDA0 800AF1A0 24C62154 */  addiu      $a2, $a2, %lo(func_800B2154)
/* AFDA4 800AF1A4 24A51FF0 */  addiu      $a1, $a1, %lo(func_800B1FF0)
/* AFDA8 800AF1A8 8FA40018 */  lw         $a0, 0x18($sp)
/* AFDAC 800AF1AC 0C02DF34 */  jal        func_800B7CD0
/* AFDB0 800AF1B0 24070003 */   addiu     $a3, $zero, 3
/* AFDB4 800AF1B4 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFDB8 800AF1B8 ADC00014 */  sw         $zero, 0x14($t6)
/* AFDBC 800AF1BC 8FB80018 */  lw         $t8, 0x18($sp)
/* AFDC0 800AF1C0 240F0001 */  addiu      $t7, $zero, 1
/* AFDC4 800AF1C4 AF0F0018 */  sw         $t7, 0x18($t8)
/* AFDC8 800AF1C8 10000001 */  b          .L800AF1D0
/* AFDCC 800AF1CC 00000000 */   nop
.L800AF1D0:
/* AFDD0 800AF1D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFDD4 800AF1D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFDD8 800AF1D8 03E00008 */  jr         $ra
/* AFDDC 800AF1DC 00000000 */   nop
