glabel func_80083C54
/* 84854 80083C54 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 84858 80083C58 AFA60090 */  sw         $a2, 0x90($sp)
/* 8485C 80083C5C 00803825 */  or         $a3, $a0, $zero
/* 84860 80083C60 AFA5008C */  sw         $a1, 0x8c($sp)
/* 84864 80083C64 00E03025 */  or         $a2, $a3, $zero
/* 84868 80083C68 AFBF002C */  sw         $ra, 0x2c($sp)
/* 8486C 80083C6C 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 84870 80083C70 3C05800F */  lui        $a1, %hi(D_800ED098)
/* 84874 80083C74 24A5D098 */  addiu      $a1, $a1, %lo(D_800ED098)
/* 84878 80083C78 01C03025 */  or         $a2, $t6, $zero
/* 8487C 80083C7C 0C029590 */  jal        func_800A5640
/* 84880 80083C80 27A40034 */   addiu     $a0, $sp, 0x34
/* 84884 80083C84 3C013F80 */  lui        $at, 0x3f80
/* 84888 80083C88 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 8488C 80083C8C 44810000 */  mtc1       $at, $f0
/* 84890 80083C90 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 84894 80083C94 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84898 80083C98 8FA60090 */  lw         $a2, 0x90($sp)
/* 8489C 80083C9C 240F00FF */  addiu      $t7, $zero, 0xff
/* 848A0 80083CA0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 848A4 80083CA4 27A40034 */  addiu      $a0, $sp, 0x34
/* 848A8 80083CA8 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 848AC 80083CAC E7A00020 */  swc1       $f0, 0x20($sp)
/* 848B0 80083CB0 AFA70010 */  sw         $a3, 0x10($sp)
/* 848B4 80083CB4 0C020E47 */  jal        func_8008391C
/* 848B8 80083CB8 AFA70014 */   sw        $a3, 0x14($sp)
/* 848BC 80083CBC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 848C0 80083CC0 27BD0088 */  addiu      $sp, $sp, 0x88
/* 848C4 80083CC4 03E00008 */  jr         $ra
/* 848C8 80083CC8 00000000 */   nop
