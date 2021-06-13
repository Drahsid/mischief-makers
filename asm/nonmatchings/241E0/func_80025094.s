glabel func_80025094
/* 25C94 80025094 3C01800C */  lui        $at, %hi(D_800BE588)
/* 25C98 80025098 A420E588 */  sh         $zero, %lo(D_800BE588)($at)
/* 25C9C 8002509C 3C01800C */  lui        $at, %hi(D_800BE58C)
/* 25CA0 800250A0 240E0001 */  addiu      $t6, $zero, 1
/* 25CA4 800250A4 A42EE58C */  sh         $t6, %lo(D_800BE58C)($at)
/* 25CA8 800250A8 3C01800C */  lui        $at, %hi(D_800BE584)
/* 25CAC 800250AC 240FFFB4 */  addiu      $t7, $zero, -0x4c
/* 25CB0 800250B0 A42FE584 */  sh         $t7, %lo(D_800BE584)($at)
/* 25CB4 800250B4 3C18800C */  lui        $t8, %hi(D_800C71A0)
/* 25CB8 800250B8 271871A0 */  addiu      $t8, $t8, %lo(D_800C71A0)
/* 25CBC 800250BC 3C018013 */  lui        $at, %hi(D_8013746C)
/* 25CC0 800250C0 3C19800C */  lui        $t9, %hi(D_800BE5D0)
/* 25CC4 800250C4 9739E5D0 */  lhu        $t9, %lo(D_800BE5D0)($t9)
/* 25CC8 800250C8 AC38746C */  sw         $t8, %lo(D_8013746C)($at)
/* 25CCC 800250CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25CD0 800250D0 24010016 */  addiu      $at, $zero, 0x16
/* 25CD4 800250D4 13210009 */  beq        $t9, $at, .L800250FC
/* 25CD8 800250D8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 25CDC 800250DC 3C01C300 */  lui        $at, 0xc300
/* 25CE0 800250E0 44812000 */  mtc1       $at, $f4
/* 25CE4 800250E4 3C01800C */  lui        $at, %hi(gEyeX)
/* 25CE8 800250E8 E424E5A8 */  swc1       $f4, %lo(gEyeX)($at)
/* 25CEC 800250EC 3C014300 */  lui        $at, 0x4300
/* 25CF0 800250F0 44813000 */  mtc1       $at, $f6
/* 25CF4 800250F4 3C01800C */  lui        $at, %hi(gEyeY)
/* 25CF8 800250F8 E426E5AC */  swc1       $f6, %lo(gEyeY)($at)
.L800250FC:
/* 25CFC 800250FC 0C008D78 */  jal        func_800235E0
/* 25D00 80025100 00000000 */   nop
/* 25D04 80025104 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25D08 80025108 27BD0018 */  addiu      $sp, $sp, 0x18
/* 25D0C 8002510C 03E00008 */  jr         $ra
/* 25D10 80025110 00000000 */   nop
