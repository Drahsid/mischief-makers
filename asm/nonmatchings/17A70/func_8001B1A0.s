glabel func_8001B1A0
/* 1BDA0 8001B1A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BDA4 8001B1A4 3C048018 */  lui        $a0, %hi(D_80178162)
/* 1BDA8 8001B1A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BDAC 8001B1AC 94848162 */  lhu        $a0, %lo(D_80178162)($a0)
/* 1BDB0 8001B1B0 3C058018 */  lui        $a1, 0x8018
/* 1BDB4 8001B1B4 3C068018 */  lui        $a2, %hi(D_80178156)
/* 1BDB8 8001B1B8 3C078018 */  lui        $a3, %hi(D_80178154)
/* 1BDBC 8001B1BC 24E78154 */  addiu      $a3, $a3, %lo(D_80178154)
/* 1BDC0 8001B1C0 24C68156 */  addiu      $a2, $a2, %lo(D_80178156)
/* 1BDC4 8001B1C4 0C006C1E */  jal        func_8001B078
/* 1BDC8 8001B1C8 24A5815C */   addiu     $a1, $a1, -0x7ea4
/* 1BDCC 8001B1CC 3C0E8018 */  lui        $t6, %hi(D_8017815C)
/* 1BDD0 8001B1D0 95CE815C */  lhu        $t6, %lo(D_8017815C)($t6)
/* 1BDD4 8001B1D4 24010006 */  addiu      $at, $zero, 6
/* 1BDD8 8001B1D8 15C10003 */  bne        $t6, $at, .L8001B1E8
/* 1BDDC 8001B1DC 240F0041 */   addiu     $t7, $zero, 0x41
/* 1BDE0 8001B1E0 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1BDE4 8001B1E4 A42FE4F4 */  sh         $t7, %lo(gGameSubState)($at)
.L8001B1E8:
/* 1BDE8 8001B1E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BDEC 8001B1EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BDF0 8001B1F0 03E00008 */  jr         $ra
/* 1BDF4 8001B1F4 00000000 */   nop
