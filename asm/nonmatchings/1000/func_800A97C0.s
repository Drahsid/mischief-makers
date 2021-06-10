glabel func_800A97C0
/* AA3C0 800A97C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA3C4 800A97C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA3C8 800A97C8 AFA40020 */  sw         $a0, 0x20($sp)
/* AA3CC 800A97CC 8FAE0020 */  lw         $t6, 0x20($sp)
/* AA3D0 800A97D0 AFAE001C */  sw         $t6, 0x1c($sp)
/* AA3D4 800A97D4 3C0F8019 */  lui        $t7, %hi(D_8018A290)
/* AA3D8 800A97D8 25EFA290 */  addiu      $t7, $t7, %lo(D_8018A290)
/* AA3DC 800A97DC AFAF0018 */  sw         $t7, 0x18($sp)
/* AA3E0 800A97E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* AA3E4 800A97E4 8FA80018 */  lw         $t0, 0x18($sp)
/* AA3E8 800A97E8 93190004 */  lbu        $t9, 4($t8)
/* AA3EC 800A97EC A1190004 */  sb         $t9, 4($t0)
/* AA3F0 800A97F0 8FA90018 */  lw         $t1, 0x18($sp)
/* AA3F4 800A97F4 A5200006 */  sh         $zero, 6($t1)
/* AA3F8 800A97F8 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA3FC 800A97FC 8FAC0018 */  lw         $t4, 0x18($sp)
/* AA400 800A9800 8D4B000C */  lw         $t3, 0xc($t2)
/* AA404 800A9804 AD8B000C */  sw         $t3, 0xc($t4)
/* AA408 800A9808 8FAD0020 */  lw         $t5, 0x20($sp)
/* AA40C 800A980C 24010001 */  addiu      $at, $zero, 1
/* AA410 800A9810 91AE0009 */  lbu        $t6, 9($t5)
/* AA414 800A9814 15C10008 */  bne        $t6, $at, .L800A9838
/* AA418 800A9818 00000000 */   nop
/* AA41C 800A981C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA420 800A9820 3C05800F */  lui        $a1, %hi(D_800EDCD8)
/* AA424 800A9824 24A5DCD8 */  addiu      $a1, $a1, %lo(D_800EDCD8)
/* AA428 800A9828 0C02A493 */  jal        func_800A924C
/* AA42C 800A982C 24840010 */   addiu     $a0, $a0, 0x10
/* AA430 800A9830 10000006 */  b          .L800A984C
/* AA434 800A9834 00000000 */   nop
.L800A9838:
/* AA438 800A9838 8FA40018 */  lw         $a0, 0x18($sp)
/* AA43C 800A983C 3C05800F */  lui        $a1, %hi(D_800EDCE0)
/* AA440 800A9840 24A5DCE0 */  addiu      $a1, $a1, %lo(D_800EDCE0)
/* AA444 800A9844 0C02A493 */  jal        func_800A924C
/* AA448 800A9848 24840010 */   addiu     $a0, $a0, 0x10
.L800A984C:
/* AA44C 800A984C 8FA40018 */  lw         $a0, 0x18($sp)
/* AA450 800A9850 24050018 */  addiu      $a1, $zero, 0x18
/* AA454 800A9854 0C026833 */  jal        func_8009A0CC
/* AA458 800A9858 24060001 */   addiu     $a2, $zero, 1
/* AA45C 800A985C 10000003 */  b          .L800A986C
/* AA460 800A9860 00001025 */   or        $v0, $zero, $zero
/* AA464 800A9864 10000001 */  b          .L800A986C
/* AA468 800A9868 00000000 */   nop
.L800A986C:
/* AA46C 800A986C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA470 800A9870 27BD0020 */  addiu      $sp, $sp, 0x20
/* AA474 800A9874 03E00008 */  jr         $ra
/* AA478 800A9878 00000000 */   nop
