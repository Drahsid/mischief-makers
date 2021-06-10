glabel func_800A5110
/* A5D10 800A5110 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5D14 800A5114 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5D18 800A5118 AFA40018 */  sw         $a0, 0x18($sp)
/* A5D1C 800A511C AFA5001C */  sw         $a1, 0x1c($sp)
/* A5D20 800A5120 AFA60020 */  sw         $a2, 0x20($sp)
/* A5D24 800A5124 AFA70024 */  sw         $a3, 0x24($sp)
/* A5D28 800A5128 0C02CB32 */  jal        func_800B2CC8
/* A5D2C 800A512C 8FA40018 */   lw        $a0, 0x18($sp)
/* A5D30 800A5130 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5D34 800A5134 8FAE0018 */  lw         $t6, 0x18($sp)
/* A5D38 800A5138 E5C40000 */  swc1       $f4, ($t6)
/* A5D3C 800A513C C7A60020 */  lwc1       $f6, 0x20($sp)
/* A5D40 800A5140 8FAF0018 */  lw         $t7, 0x18($sp)
/* A5D44 800A5144 E5E60014 */  swc1       $f6, 0x14($t7)
/* A5D48 800A5148 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A5D4C 800A514C 8FB80018 */  lw         $t8, 0x18($sp)
/* A5D50 800A5150 E7080028 */  swc1       $f8, 0x28($t8)
/* A5D54 800A5154 3C013F80 */  lui        $at, 0x3f80
/* A5D58 800A5158 44815000 */  mtc1       $at, $f10
/* A5D5C 800A515C 8FB90018 */  lw         $t9, 0x18($sp)
/* A5D60 800A5160 E72A003C */  swc1       $f10, 0x3c($t9)
/* A5D64 800A5164 10000001 */  b          .L800A516C
/* A5D68 800A5168 00000000 */   nop
.L800A516C:
/* A5D6C 800A516C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5D70 800A5170 27BD0018 */  addiu      $sp, $sp, 0x18
/* A5D74 800A5174 03E00008 */  jr         $ra
/* A5D78 800A5178 00000000 */   nop
