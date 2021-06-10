glabel func_800A4DF0
/* A59F0 800A4DF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A59F4 800A4DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A59F8 800A4DF8 AFA40018 */  sw         $a0, 0x18($sp)
/* A59FC 800A4DFC AFA5001C */  sw         $a1, 0x1c($sp)
/* A5A00 800A4E00 AFA60020 */  sw         $a2, 0x20($sp)
/* A5A04 800A4E04 AFA70024 */  sw         $a3, 0x24($sp)
/* A5A08 800A4E08 0C02CB32 */  jal        func_800B2CC8
/* A5A0C 800A4E0C 8FA40018 */   lw        $a0, 0x18($sp)
/* A5A10 800A4E10 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5A14 800A4E14 8FAE0018 */  lw         $t6, 0x18($sp)
/* A5A18 800A4E18 E5C40030 */  swc1       $f4, 0x30($t6)
/* A5A1C 800A4E1C C7A60020 */  lwc1       $f6, 0x20($sp)
/* A5A20 800A4E20 8FAF0018 */  lw         $t7, 0x18($sp)
/* A5A24 800A4E24 E5E60034 */  swc1       $f6, 0x34($t7)
/* A5A28 800A4E28 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A5A2C 800A4E2C 8FB80018 */  lw         $t8, 0x18($sp)
/* A5A30 800A4E30 E7080038 */  swc1       $f8, 0x38($t8)
/* A5A34 800A4E34 10000001 */  b          .L800A4E3C
/* A5A38 800A4E38 00000000 */   nop
.L800A4E3C:
/* A5A3C 800A4E3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5A40 800A4E40 27BD0018 */  addiu      $sp, $sp, 0x18
/* A5A44 800A4E44 03E00008 */  jr         $ra
/* A5A48 800A4E48 00000000 */   nop
