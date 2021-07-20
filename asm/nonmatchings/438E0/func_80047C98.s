glabel func_80047C98
/* 48898 80047C98 3C0E800D */  lui        $t6, %hi(D_800D28FC)
/* 4889C 80047C9C 8DCE28FC */  lw         $t6, %lo(D_800D28FC)($t6)
/* 488A0 80047CA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 488A4 80047CA4 31CF0080 */  andi       $t7, $t6, 0x80
/* 488A8 80047CA8 15E00004 */  bnez       $t7, .L80047CBC
/* 488AC 80047CAC AFBF0014 */   sw        $ra, 0x14($sp)
/* 488B0 80047CB0 3C04800D */  lui        $a0, %hi(D_800D2978)
/* 488B4 80047CB4 0C011479 */  jal        func_800451E4
/* 488B8 80047CB8 24842978 */   addiu     $a0, $a0, %lo(D_800D2978)
.L80047CBC:
/* 488BC 80047CBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 488C0 80047CC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 488C4 80047CC4 03E00008 */  jr         $ra
/* 488C8 80047CC8 00000000 */   nop
