glabel func_800A55B4
/* A61B4 800A55B4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A61B8 800A55B8 AFBF002C */  sw         $ra, 0x2c($sp)
/* A61BC 800A55BC AFA40070 */  sw         $a0, 0x70($sp)
/* A61C0 800A55C0 AFA50074 */  sw         $a1, 0x74($sp)
/* A61C4 800A55C4 AFA60078 */  sw         $a2, 0x78($sp)
/* A61C8 800A55C8 AFA7007C */  sw         $a3, 0x7c($sp)
/* A61CC 800A55CC C7A40080 */  lwc1       $f4, 0x80($sp)
/* A61D0 800A55D0 C7A60084 */  lwc1       $f6, 0x84($sp)
/* A61D4 800A55D4 C7A80088 */  lwc1       $f8, 0x88($sp)
/* A61D8 800A55D8 C7AA008C */  lwc1       $f10, 0x8c($sp)
/* A61DC 800A55DC C7B00090 */  lwc1       $f16, 0x90($sp)
/* A61E0 800A55E0 C7B20094 */  lwc1       $f18, 0x94($sp)
/* A61E4 800A55E4 27A40030 */  addiu      $a0, $sp, 0x30
/* A61E8 800A55E8 8FA50074 */  lw         $a1, 0x74($sp)
/* A61EC 800A55EC 8FA60078 */  lw         $a2, 0x78($sp)
/* A61F0 800A55F0 8FA7007C */  lw         $a3, 0x7c($sp)
/* A61F4 800A55F4 E7A40010 */  swc1       $f4, 0x10($sp)
/* A61F8 800A55F8 E7A60014 */  swc1       $f6, 0x14($sp)
/* A61FC 800A55FC E7A80018 */  swc1       $f8, 0x18($sp)
/* A6200 800A5600 E7AA001C */  swc1       $f10, 0x1c($sp)
/* A6204 800A5604 E7B00020 */  swc1       $f16, 0x20($sp)
/* A6208 800A5608 0C029474 */  jal        func_800A51D0
/* A620C 800A560C E7B20024 */   swc1      $f18, 0x24($sp)
/* A6210 800A5610 27A40030 */  addiu      $a0, $sp, 0x30
/* A6214 800A5614 0C02CA98 */  jal        func_800B2A60
/* A6218 800A5618 8FA50070 */   lw        $a1, 0x70($sp)
/* A621C 800A561C 10000001 */  b          .L800A5624
/* A6220 800A5620 00000000 */   nop
.L800A5624:
/* A6224 800A5624 8FBF002C */  lw         $ra, 0x2c($sp)
/* A6228 800A5628 27BD0070 */  addiu      $sp, $sp, 0x70
/* A622C 800A562C 03E00008 */  jr         $ra
/* A6230 800A5630 00000000 */   nop
/* A6234 800A5634 00000000 */  nop
/* A6238 800A5638 00000000 */  nop
/* A623C 800A563C 00000000 */  nop
