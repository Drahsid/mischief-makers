glabel func_800B8E98
/* B9A98 800B8E98 27BDFFF8 */  addiu      $sp, $sp, -8
/* B9A9C 800B8E9C 44853000 */  mtc1       $a1, $f6
/* B9AA0 800B8EA0 C4840010 */  lwc1       $f4, 0x10($a0)
/* B9AA4 800B8EA4 C4900014 */  lwc1       $f16, 0x14($a0)
/* B9AA8 800B8EA8 46803220 */  cvt.s.w    $f8, $f6
/* B9AAC 800B8EAC 46082282 */  mul.s      $f10, $f4, $f8
/* B9AB0 800B8EB0 460A8480 */  add.s      $f18, $f16, $f10
/* B9AB4 800B8EB4 E4920014 */  swc1       $f18, 0x14($a0)
/* B9AB8 800B8EB8 C4860014 */  lwc1       $f6, 0x14($a0)
/* B9ABC 800B8EBC 3C014000 */  lui        $at, 0x4000
/* B9AC0 800B8EC0 44814800 */  mtc1       $at, $f9
/* B9AC4 800B8EC4 44804000 */  mtc1       $zero, $f8
/* B9AC8 800B8EC8 46003121 */  cvt.d.s    $f4, $f6
/* B9ACC 800B8ECC 4624403C */  c.lt.d     $f8, $f4
/* B9AD0 800B8ED0 00000000 */  nop
/* B9AD4 800B8ED4 4500000A */  bc1f       .L800B8F00
/* B9AD8 800B8ED8 00000000 */   nop
/* B9ADC 800B8EDC C4900014 */  lwc1       $f16, 0x14($a0)
/* B9AE0 800B8EE0 3C014010 */  lui        $at, 0x4010
/* B9AE4 800B8EE4 44819800 */  mtc1       $at, $f19
/* B9AE8 800B8EE8 44809000 */  mtc1       $zero, $f18
/* B9AEC 800B8EEC 460082A1 */  cvt.d.s    $f10, $f16
/* B9AF0 800B8EF0 46325181 */  sub.d      $f6, $f10, $f18
/* B9AF4 800B8EF4 46203120 */  cvt.s.d    $f4, $f6
/* B9AF8 800B8EF8 10000005 */  b          .L800B8F10
/* B9AFC 800B8EFC E4840014 */   swc1      $f4, 0x14($a0)
.L800B8F00:
/* B9B00 800B8F00 C4880014 */  lwc1       $f8, 0x14($a0)
/* B9B04 800B8F04 46004421 */  cvt.d.s    $f16, $f8
/* B9B08 800B8F08 462082A0 */  cvt.s.d    $f10, $f16
/* B9B0C 800B8F0C E48A0014 */  swc1       $f10, 0x14($a0)
.L800B8F10:
/* B9B10 800B8F10 C4920014 */  lwc1       $f18, 0x14($a0)
/* B9B14 800B8F14 E7B20004 */  swc1       $f18, 4($sp)
/* B9B18 800B8F18 C7A60004 */  lwc1       $f6, 4($sp)
/* B9B1C 800B8F1C 44802000 */  mtc1       $zero, $f4
/* B9B20 800B8F20 00000000 */  nop
/* B9B24 800B8F24 4604303C */  c.lt.s     $f6, $f4
/* B9B28 800B8F28 00000000 */  nop
/* B9B2C 800B8F2C 45000004 */  bc1f       .L800B8F40
/* B9B30 800B8F30 00000000 */   nop
/* B9B34 800B8F34 46003207 */  neg.s      $f8, $f6
/* B9B38 800B8F38 10000001 */  b          .L800B8F40
/* B9B3C 800B8F3C E7A80004 */   swc1      $f8, 4($sp)
.L800B8F40:
/* B9B40 800B8F40 C7B00004 */  lwc1       $f16, 4($sp)
/* B9B44 800B8F44 3C013FF0 */  lui        $at, 0x3ff0
/* B9B48 800B8F48 44819800 */  mtc1       $at, $f19
/* B9B4C 800B8F4C 44809000 */  mtc1       $zero, $f18
/* B9B50 800B8F50 460082A1 */  cvt.d.s    $f10, $f16
/* B9B54 800B8F54 46325101 */  sub.d      $f4, $f10, $f18
/* B9B58 800B8F58 462021A0 */  cvt.s.d    $f6, $f4
/* B9B5C 800B8F5C E7A60004 */  swc1       $f6, 4($sp)
/* B9B60 800B8F60 C488001C */  lwc1       $f8, 0x1c($a0)
/* B9B64 800B8F64 C7B00004 */  lwc1       $f16, 4($sp)
/* B9B68 800B8F68 46104002 */  mul.s      $f0, $f8, $f16
/* B9B6C 800B8F6C 10000003 */  b          .L800B8F7C
/* B9B70 800B8F70 00000000 */   nop
/* B9B74 800B8F74 10000001 */  b          .L800B8F7C
/* B9B78 800B8F78 00000000 */   nop
.L800B8F7C:
/* B9B7C 800B8F7C 03E00008 */  jr         $ra
/* B9B80 800B8F80 27BD0008 */   addiu     $sp, $sp, 8
/* B9B84 800B8F84 00000000 */  nop
/* B9B88 800B8F88 00000000 */  nop
/* B9B8C 800B8F8C 00000000 */  nop
