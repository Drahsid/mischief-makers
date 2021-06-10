glabel func_800A7E78
/* A8A78 800A7E78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A8A7C 800A7E7C AFBF0014 */  sw         $ra, 0x14($sp)
/* A8A80 800A7E80 3C0E800F */  lui        $t6, %hi(D_800EA630)
/* A8A84 800A7E84 8DCEA630 */  lw         $t6, %lo(D_800EA630)($t6)
/* A8A88 800A7E88 15C00003 */  bnez       $t6, .L800A7E98
/* A8A8C 800A7E8C 00000000 */   nop
/* A8A90 800A7E90 0C029F88 */  jal        func_800A7E20
/* A8A94 800A7E94 00000000 */   nop
.L800A7E98:
/* A8A98 800A7E98 3C048018 */  lui        $a0, %hi(D_80185838)
/* A8A9C 800A7E9C 24845838 */  addiu      $a0, $a0, %lo(D_80185838)
/* A8AA0 800A7EA0 27A5001C */  addiu      $a1, $sp, 0x1c
/* A8AA4 800A7EA4 0C026B44 */  jal        func_8009AD10
/* A8AA8 800A7EA8 24060001 */   addiu     $a2, $zero, 1
/* A8AAC 800A7EAC 10000001 */  b          .L800A7EB4
/* A8AB0 800A7EB0 00000000 */   nop
.L800A7EB4:
/* A8AB4 800A7EB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A8AB8 800A7EB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A8ABC 800A7EBC 03E00008 */  jr         $ra
/* A8AC0 800A7EC0 00000000 */   nop
