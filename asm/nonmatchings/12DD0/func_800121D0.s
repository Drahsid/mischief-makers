glabel func_800121D0
/* 12DD0 800121D0 3C03800F */  lui        $v1, %hi(D_800EF5F0)
/* 12DD4 800121D4 9463F5F0 */  lhu        $v1, %lo(D_800EF5F0)($v1)
/* 12DD8 800121D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12DDC 800121DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 12DE0 800121E0 00002025 */  or         $a0, $zero, $zero
/* 12DE4 800121E4 0C0078B4 */  jal        func_8001E2D0
/* 12DE8 800121E8 A7A3001E */   sh        $v1, 0x1e($sp)
/* 12DEC 800121EC 97A3001E */  lhu        $v1, 0x1e($sp)
/* 12DF0 800121F0 3C01800F */  lui        $at, %hi(D_800EF5F0)
/* 12DF4 800121F4 3C02800F */  lui        $v0, %hi(gActors)
/* 12DF8 800121F8 A423F5F0 */  sh         $v1, %lo(D_800EF5F0)($at)
/* 12DFC 800121FC 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 12E00 80012200 240E0001 */  addiu      $t6, $zero, 1
/* 12E04 80012204 A44E0090 */  sh         $t6, 0x90($v0)
/* 12E08 80012208 3C01800C */  lui        $at, %hi(D_800BE5E8)
/* 12E0C 8001220C AC20E5E8 */  sw         $zero, %lo(D_800BE5E8)($at)
/* 12E10 80012210 3C01800C */  lui        $at, %hi(D_800BE5EC)
/* 12E14 80012214 AC20E5EC */  sw         $zero, %lo(D_800BE5EC)($at)
/* 12E18 80012218 A44000CC */  sh         $zero, 0xcc($v0)
/* 12E1C 8001221C 3C01800C */  lui        $at, %hi(D_800BE5D4)
/* 12E20 80012220 A420E5D4 */  sh         $zero, %lo(D_800BE5D4)($at)
/* 12E24 80012224 3C01800C */  lui        $at, %hi(D_800BE5F0)
/* 12E28 80012228 A420E5F0 */  sh         $zero, %lo(D_800BE5F0)($at)
/* 12E2C 8001222C 3C01800C */  lui        $at, %hi(D_800BE5F8)
/* 12E30 80012230 3C058012 */  lui        $a1, %hi(D_801225F0)
/* 12E34 80012234 3C048012 */  lui        $a0, %hi(D_8011DD70)
/* 12E38 80012238 A420E5F8 */  sh         $zero, %lo(D_800BE5F8)($at)
/* 12E3C 8001223C 2484DD70 */  addiu      $a0, $a0, %lo(D_8011DD70)
/* 12E40 80012240 24A525F0 */  addiu      $a1, $a1, %lo(D_801225F0)
/* 12E44 80012244 00001825 */  or         $v1, $zero, $zero
.L80012248:
/* 12E48 80012248 00031040 */  sll        $v0, $v1, 1
/* 12E4C 8001224C 24630001 */  addiu      $v1, $v1, 1
/* 12E50 80012250 3079FFFF */  andi       $t9, $v1, 0xffff
/* 12E54 80012254 00827821 */  addu       $t7, $a0, $v0
/* 12E58 80012258 2B210040 */  slti       $at, $t9, 0x40
/* 12E5C 8001225C A5E00000 */  sh         $zero, ($t7)
/* 12E60 80012260 00A2C021 */  addu       $t8, $a1, $v0
/* 12E64 80012264 03201825 */  or         $v1, $t9, $zero
/* 12E68 80012268 1420FFF7 */  bnez       $at, .L80012248
/* 12E6C 8001226C A7000000 */   sh        $zero, ($t8)
/* 12E70 80012270 0C012A58 */  jal        func_8004A960
/* 12E74 80012274 00002025 */   or        $a0, $zero, $zero
/* 12E78 80012278 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12E7C 8001227C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 12E80 80012280 03E00008 */  jr         $ra
/* 12E84 80012284 00000000 */   nop
