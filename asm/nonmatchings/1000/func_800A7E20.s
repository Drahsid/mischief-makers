glabel func_800A7E20
/* A8A20 800A7E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8A24 800A7E24 AFBF0014 */  sw         $ra, 0x14($sp)
/* A8A28 800A7E28 240E0001 */  addiu      $t6, $zero, 1
/* A8A2C 800A7E2C 3C01800F */  lui        $at, %hi(D_800EA630)
/* A8A30 800A7E30 AC2EA630 */  sw         $t6, %lo(D_800EA630)($at)
/* A8A34 800A7E34 3C048018 */  lui        $a0, %hi(D_80185838)
/* A8A38 800A7E38 3C058018 */  lui        $a1, %hi(D_80185830)
/* A8A3C 800A7E3C 24A55830 */  addiu      $a1, $a1, %lo(D_80185830)
/* A8A40 800A7E40 24845838 */  addiu      $a0, $a0, %lo(D_80185838)
/* A8A44 800A7E44 0C026994 */  jal        func_8009A650
/* A8A48 800A7E48 24060001 */   addiu     $a2, $zero, 1
/* A8A4C 800A7E4C 3C048018 */  lui        $a0, %hi(D_80185838)
/* A8A50 800A7E50 24845838 */  addiu      $a0, $a0, %lo(D_80185838)
/* A8A54 800A7E54 00002825 */  or         $a1, $zero, $zero
/* A8A58 800A7E58 0C0278BC */  jal        func_8009E2F0
/* A8A5C 800A7E5C 00003025 */   or        $a2, $zero, $zero
/* A8A60 800A7E60 10000001 */  b          .L800A7E68
/* A8A64 800A7E64 00000000 */   nop
.L800A7E68:
/* A8A68 800A7E68 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8A6C 800A7E6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A8A70 800A7E70 03E00008 */  jr         $ra
/* A8A74 800A7E74 00000000 */   nop
