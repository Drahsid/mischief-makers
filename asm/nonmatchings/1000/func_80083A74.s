glabel func_80083A74
/* 84674 80083A74 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 84678 80083A78 AFA50084 */  sw         $a1, 0x84($sp)
/* 8467C 80083A7C AFA60088 */  sw         $a2, 0x88($sp)
/* 84680 80083A80 00803025 */  or         $a2, $a0, $zero
/* 84684 80083A84 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84688 80083A88 AFA40080 */  sw         $a0, 0x80($sp)
/* 8468C 80083A8C 3C05800F */  lui        $a1, %hi(D_800ED078)
/* 84690 80083A90 24A5D078 */  addiu      $a1, $a1, %lo(D_800ED078)
/* 84694 80083A94 0C029590 */  jal        func_800A5640
/* 84698 80083A98 27A40030 */   addiu     $a0, $sp, 0x30
/* 8469C 80083A9C 3C013F80 */  lui        $at, 0x3f80
/* 846A0 80083AA0 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 846A4 80083AA4 44810000 */  mtc1       $at, $f0
/* 846A8 80083AA8 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 846AC 80083AAC 8FA50084 */  lw         $a1, 0x84($sp)
/* 846B0 80083AB0 8FA60088 */  lw         $a2, 0x88($sp)
/* 846B4 80083AB4 240E00FF */  addiu      $t6, $zero, 0xff
/* 846B8 80083AB8 AFAE0018 */  sw         $t6, 0x18($sp)
/* 846BC 80083ABC 27A40030 */  addiu      $a0, $sp, 0x30
/* 846C0 80083AC0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 846C4 80083AC4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 846C8 80083AC8 AFA70010 */  sw         $a3, 0x10($sp)
/* 846CC 80083ACC 0C020E47 */  jal        func_8008391C
/* 846D0 80083AD0 AFA70014 */   sw        $a3, 0x14($sp)
/* 846D4 80083AD4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 846D8 80083AD8 27BD0080 */  addiu      $sp, $sp, 0x80
/* 846DC 80083ADC 03E00008 */  jr         $ra
/* 846E0 80083AE0 00000000 */   nop
