glabel func_8002A170
/* 2AD70 8002A170 3086FFFF */  andi       $a2, $a0, 0xffff
/* 2AD74 8002A174 00067080 */  sll        $t6, $a2, 2
/* 2AD78 8002A178 01C67023 */  subu       $t6, $t6, $a2
/* 2AD7C 8002A17C 000E7080 */  sll        $t6, $t6, 2
/* 2AD80 8002A180 01C67021 */  addu       $t6, $t6, $a2
/* 2AD84 8002A184 000E7080 */  sll        $t6, $t6, 2
/* 2AD88 8002A188 01C67023 */  subu       $t6, $t6, $a2
/* 2AD8C 8002A18C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2AD90 8002A190 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2AD94 8002A194 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2AD98 8002A198 000E70C0 */  sll        $t6, $t6, 3
/* 2AD9C 8002A19C AFA40020 */  sw         $a0, 0x20($sp)
/* 2ADA0 8002A1A0 01CF1821 */  addu       $v1, $t6, $t7
/* 2ADA4 8002A1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ADA8 8002A1A8 8C6400F0 */  lw         $a0, 0xf0($v1)
/* 2ADAC 8002A1AC 0C00A824 */  jal        func_8002A090
/* 2ADB0 8002A1B0 AFA3001C */   sw        $v1, 0x1c($sp)
/* 2ADB4 8002A1B4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2ADB8 8002A1B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2ADBC 8002A1BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2ADC0 8002A1C0 03E00008 */  jr         $ra
/* 2ADC4 8002A1C4 AC6200F0 */   sw        $v0, 0xf0($v1)
