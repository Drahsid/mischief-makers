glabel func_80043E64
/* 44A64 80043E64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 44A68 80043E68 AFBF003C */  sw         $ra, 0x3c($sp)
/* 44A6C 80043E6C AFBE0038 */  sw         $fp, 0x38($sp)
/* 44A70 80043E70 AFB70034 */  sw         $s7, 0x34($sp)
/* 44A74 80043E74 AFB60030 */  sw         $s6, 0x30($sp)
/* 44A78 80043E78 AFB5002C */  sw         $s5, 0x2c($sp)
/* 44A7C 80043E7C AFB40028 */  sw         $s4, 0x28($sp)
/* 44A80 80043E80 AFB30024 */  sw         $s3, 0x24($sp)
/* 44A84 80043E84 AFB20020 */  sw         $s2, 0x20($sp)
/* 44A88 80043E88 AFB1001C */  sw         $s1, 0x1c($sp)
/* 44A8C 80043E8C AFB00018 */  sw         $s0, 0x18($sp)
/* 44A90 80043E90 AFA50044 */  sw         $a1, 0x44($sp)
/* 44A94 80043E94 AFA60048 */  sw         $a2, 0x48($sp)
/* 44A98 80043E98 94920002 */  lhu        $s2, 2($a0)
/* 44A9C 80043E9C 24160198 */  addiu      $s6, $zero, 0x198
/* 44AA0 80043EA0 02560019 */  multu      $s2, $s6
/* 44AA4 80043EA4 3C15800F */  lui        $s5, %hi(gActors)
/* 44AA8 80043EA8 948F0008 */  lhu        $t7, 8($a0)
/* 44AAC 80043EAC 26B5F510 */  addiu      $s5, $s5, %lo(gActors)
/* 44AB0 80043EB0 00808825 */  or         $s1, $a0, $zero
/* 44AB4 80043EB4 3244FFFF */  andi       $a0, $s2, 0xffff
/* 44AB8 80043EB8 00007012 */  mflo       $t6
/* 44ABC 80043EBC 02AE8021 */  addu       $s0, $s5, $t6
/* 44AC0 80043EC0 0C0078B4 */  jal        func_8001E2D0
/* 44AC4 80043EC4 A60F00D2 */   sh        $t7, 0xd2($s0)
/* 44AC8 80043EC8 87B80046 */  lh         $t8, 0x46($sp)
/* 44ACC 80043ECC 87B9004A */  lh         $t9, 0x4a($sp)
/* 44AD0 80043ED0 A6180088 */  sh         $t8, 0x88($s0)
/* 44AD4 80043ED4 A619008C */  sh         $t9, 0x8c($s0)
/* 44AD8 80043ED8 96280004 */  lhu        $t0, 4($s1)
/* 44ADC 80043EDC 26430001 */  addiu      $v1, $s2, 1
/* 44AE0 80043EE0 44882000 */  mtc1       $t0, $f4
/* 44AE4 80043EE4 05010005 */  bgez       $t0, .L80043EFC
/* 44AE8 80043EE8 468021A0 */   cvt.s.w   $f6, $f4
/* 44AEC 80043EEC 3C014F80 */  lui        $at, 0x4f80
/* 44AF0 80043EF0 44814000 */  mtc1       $at, $f8
/* 44AF4 80043EF4 00000000 */  nop
/* 44AF8 80043EF8 46083180 */  add.s      $f6, $f6, $f8
.L80043EFC:
/* 44AFC 80043EFC E6060110 */  swc1       $f6, 0x110($s0)
/* 44B00 80043F00 96290006 */  lhu        $t1, 6($s1)
/* 44B04 80043F04 265E0004 */  addiu      $fp, $s2, 4
/* 44B08 80043F08 306AFFFF */  andi       $t2, $v1, 0xffff
/* 44B0C 80043F0C 3073FFFF */  andi       $s3, $v1, 0xffff
/* 44B10 80043F10 2631000A */  addiu      $s1, $s1, 0xa
/* 44B14 80043F14 13CA0031 */  beq        $fp, $t2, .L80043FDC
/* 44B18 80043F18 A60900D8 */   sh        $t1, 0xd8($s0)
/* 44B1C 80043F1C 3C14800D */  lui        $s4, %hi(D_800D28EC)
/* 44B20 80043F20 269428EC */  addiu      $s4, $s4, %lo(D_800D28EC)
/* 44B24 80043F24 3417FE00 */  ori        $s7, $zero, 0xfe00
.L80043F28:
/* 44B28 80043F28 962B0000 */  lhu        $t3, ($s1)
/* 44B2C 80043F2C 00000000 */  nop
/* 44B30 80043F30 12EB0025 */  beq        $s7, $t3, .L80043FC8
/* 44B34 80043F34 00000000 */   nop
/* 44B38 80043F38 96320002 */  lhu        $s2, 2($s1)
/* 44B3C 80043F3C 962D0008 */  lhu        $t5, 8($s1)
/* 44B40 80043F40 02560019 */  multu      $s2, $s6
/* 44B44 80043F44 3244FFFF */  andi       $a0, $s2, 0xffff
/* 44B48 80043F48 00006012 */  mflo       $t4
/* 44B4C 80043F4C 02AC8021 */  addu       $s0, $s5, $t4
/* 44B50 80043F50 0C0078B4 */  jal        func_8001E2D0
/* 44B54 80043F54 A60D00D2 */   sh        $t5, 0xd2($s0)
/* 44B58 80043F58 87AE0046 */  lh         $t6, 0x46($sp)
/* 44B5C 80043F5C 87AF004A */  lh         $t7, 0x4a($sp)
/* 44B60 80043F60 A60E0088 */  sh         $t6, 0x88($s0)
/* 44B64 80043F64 A60F008C */  sh         $t7, 0x8c($s0)
/* 44B68 80043F68 96380004 */  lhu        $t8, 4($s1)
/* 44B6C 80043F6C 3C014F80 */  lui        $at, 0x4f80
/* 44B70 80043F70 44985000 */  mtc1       $t8, $f10
/* 44B74 80043F74 07010004 */  bgez       $t8, .L80043F88
/* 44B78 80043F78 46805420 */   cvt.s.w   $f16, $f10
/* 44B7C 80043F7C 44819000 */  mtc1       $at, $f18
/* 44B80 80043F80 00000000 */  nop
/* 44B84 80043F84 46128400 */  add.s      $f16, $f16, $f18
.L80043F88:
/* 44B88 80043F88 02760019 */  multu      $s3, $s6
/* 44B8C 80043F8C E6100110 */  swc1       $f16, 0x110($s0)
/* 44B90 80043F90 96390006 */  lhu        $t9, 6($s1)
/* 44B94 80043F94 A61300D6 */  sh         $s3, 0xd6($s0)
/* 44B98 80043F98 A61900D8 */  sh         $t9, 0xd8($s0)
/* 44B9C 80043F9C 8E8B0000 */  lw         $t3, ($s4)
/* 44BA0 80043FA0 2631000A */  addiu      $s1, $s1, 0xa
/* 44BA4 80043FA4 356C0020 */  ori        $t4, $t3, 0x20
/* 44BA8 80043FA8 AE8C0000 */  sw         $t4, ($s4)
/* 44BAC 80043FAC 00004012 */  mflo       $t0
/* 44BB0 80043FB0 02A81021 */  addu       $v0, $s5, $t0
/* 44BB4 80043FB4 8C490098 */  lw         $t1, 0x98($v0)
/* 44BB8 80043FB8 A45200D6 */  sh         $s2, 0xd6($v0)
/* 44BBC 80043FBC 352A0200 */  ori        $t2, $t1, 0x200
/* 44BC0 80043FC0 10000002 */  b          .L80043FCC
/* 44BC4 80043FC4 AC4A0098 */   sw        $t2, 0x98($v0)
.L80043FC8:
/* 44BC8 80043FC8 26310002 */  addiu      $s1, $s1, 2
.L80043FCC:
/* 44BCC 80043FCC 26730001 */  addiu      $s3, $s3, 1
/* 44BD0 80043FD0 326DFFFF */  andi       $t5, $s3, 0xffff
/* 44BD4 80043FD4 17CDFFD4 */  bne        $fp, $t5, .L80043F28
/* 44BD8 80043FD8 01A09825 */   or        $s3, $t5, $zero
.L80043FDC:
/* 44BDC 80043FDC 8FBF003C */  lw         $ra, 0x3c($sp)
/* 44BE0 80043FE0 8FB00018 */  lw         $s0, 0x18($sp)
/* 44BE4 80043FE4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 44BE8 80043FE8 8FB20020 */  lw         $s2, 0x20($sp)
/* 44BEC 80043FEC 8FB30024 */  lw         $s3, 0x24($sp)
/* 44BF0 80043FF0 8FB40028 */  lw         $s4, 0x28($sp)
/* 44BF4 80043FF4 8FB5002C */  lw         $s5, 0x2c($sp)
/* 44BF8 80043FF8 8FB60030 */  lw         $s6, 0x30($sp)
/* 44BFC 80043FFC 8FB70034 */  lw         $s7, 0x34($sp)
/* 44C00 80044000 8FBE0038 */  lw         $fp, 0x38($sp)
/* 44C04 80044004 03E00008 */  jr         $ra
/* 44C08 80044008 27BD0040 */   addiu     $sp, $sp, 0x40
