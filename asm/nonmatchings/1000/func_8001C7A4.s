glabel func_8001C7A4
/* 1D3A4 8001C7A4 3C0E8018 */  lui        $t6, %hi(D_80178162)
/* 1D3A8 8001C7A8 95C78162 */  lhu        $a3, %lo(D_80178162)($t6)
/* 1D3AC 8001C7AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D3B0 8001C7B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D3B4 8001C7B4 24040000 */  addiu      $a0, $zero, 0
/* 1D3B8 8001C7B8 24050001 */  addiu      $a1, $zero, 1
/* 1D3BC 8001C7BC 0C0290D5 */  jal        func_800A4354
/* 1D3C0 8001C7C0 000737C3 */   sra       $a2, $a3, 0x1f
/* 1D3C4 8001C7C4 3C048017 */  lui        $a0, %hi(D_80171B10)
/* 1D3C8 8001C7C8 24841B10 */  addiu      $a0, $a0, %lo(D_80171B10)
/* 1D3CC 8001C7CC 8C980000 */  lw         $t8, ($a0)
/* 1D3D0 8001C7D0 8C990004 */  lw         $t9, 4($a0)
/* 1D3D4 8001C7D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D3D8 8001C7D8 03024025 */  or         $t0, $t8, $v0
/* 1D3DC 8001C7DC 03234825 */  or         $t1, $t9, $v1
/* 1D3E0 8001C7E0 AC890004 */  sw         $t1, 4($a0)
/* 1D3E4 8001C7E4 AC880000 */  sw         $t0, ($a0)
/* 1D3E8 8001C7E8 03E00008 */  jr         $ra
/* 1D3EC 8001C7EC 27BD0018 */   addiu     $sp, $sp, 0x18
