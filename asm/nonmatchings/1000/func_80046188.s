glabel func_80046188
/* 46D88 80046188 3C02800D */  lui        $v0, %hi(D_800D28E8)
/* 46D8C 8004618C 244228E8 */  addiu      $v0, $v0, %lo(D_800D28E8)
/* 46D90 80046190 944E0000 */  lhu        $t6, ($v0)
/* 46D94 80046194 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46D98 80046198 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46D9C 8004619C 25CF0001 */  addiu      $t7, $t6, 1
/* 46DA0 800461A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 46DA4 800461A4 AFA5001C */  sw         $a1, 0x1c($sp)
/* 46DA8 800461A8 0C00A1D1 */  jal        func_80028744
/* 46DAC 800461AC A44F0000 */   sh        $t7, ($v0)
/* 46DB0 800461B0 8FA40018 */  lw         $a0, 0x18($sp)
/* 46DB4 800461B4 0C0117E9 */  jal        func_80045FA4
/* 46DB8 800461B8 00002825 */   or        $a1, $zero, $zero
/* 46DBC 800461BC 0C00A0E0 */  jal        func_80028380
/* 46DC0 800461C0 00000000 */   nop
/* 46DC4 800461C4 34188000 */  ori        $t8, $zero, 0x8000
/* 46DC8 800461C8 3C01800C */  lui        $at, %hi(D_800BE544)
/* 46DCC 800461CC A438E544 */  sh         $t8, %lo(D_800BE544)($at)
/* 46DD0 800461D0 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 46DD4 800461D4 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 46DD8 800461D8 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 46DDC 800461DC A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 46DE0 800461E0 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 46DE4 800461E4 8FA4001C */  lw         $a0, 0x1c($sp)
/* 46DE8 800461E8 0C010E9A */  jal        func_80043A68
/* 46DEC 800461EC A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 46DF0 800461F0 0C011AA7 */  jal        func_80046A9C
/* 46DF4 800461F4 00000000 */   nop
/* 46DF8 800461F8 0C000E99 */  jal        func_80003A64
/* 46DFC 800461FC 00000000 */   nop
/* 46E00 80046200 0C000E8E */  jal        func_80003A38
/* 46E04 80046204 00000000 */   nop
/* 46E08 80046208 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46E0C 8004620C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 46E10 80046210 03E00008 */  jr         $ra
/* 46E14 80046214 00000000 */   nop
