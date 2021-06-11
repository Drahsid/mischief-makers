glabel func_8007CEB8
/* 7DAB8 8007CEB8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DABC 8007CEBC 000E7880 */  sll        $t7, $t6, 2
/* 7DAC0 8007CEC0 01EE7823 */  subu       $t7, $t7, $t6
/* 7DAC4 8007CEC4 000F7880 */  sll        $t7, $t7, 2
/* 7DAC8 8007CEC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DACC 8007CECC 01EE7821 */  addu       $t7, $t7, $t6
/* 7DAD0 8007CED0 000F7880 */  sll        $t7, $t7, 2
/* 7DAD4 8007CED4 01EE7823 */  subu       $t7, $t7, $t6
/* 7DAD8 8007CED8 3C18800F */  lui        $t8, %hi(gActors)
/* 7DADC 8007CEDC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7DAE0 8007CEE0 000F78C0 */  sll        $t7, $t7, 3
/* 7DAE4 8007CEE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DAE8 8007CEE8 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DAEC 8007CEEC 01F81021 */  addu       $v0, $t7, $t8
/* 7DAF0 8007CEF0 24190027 */  addiu      $t9, $zero, 0x27
/* 7DAF4 8007CEF4 01C02025 */  or         $a0, $t6, $zero
/* 7DAF8 8007CEF8 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DAFC 8007CEFC AFA60028 */  sw         $a2, 0x28($sp)
/* 7DB00 8007CF00 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DB04 8007CF04 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7DB08 8007CF08 0C0078B4 */  jal        func_8001E2D0
/* 7DB0C 8007CF0C AFA2001C */   sw        $v0, 0x1c($sp)
/* 7DB10 8007CF10 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7DB14 8007CF14 97AD003E */  lhu        $t5, 0x3e($sp)
/* 7DB18 8007CF18 8C480080 */  lw         $t0, 0x80($v0)
/* 7DB1C 8007CF1C 87AA002A */  lh         $t2, 0x2a($sp)
/* 7DB20 8007CF20 87AB002E */  lh         $t3, 0x2e($sp)
/* 7DB24 8007CF24 97AC0026 */  lhu        $t4, 0x26($sp)
/* 7DB28 8007CF28 448D2000 */  mtc1       $t5, $f4
/* 7DB2C 8007CF2C 3509000A */  ori        $t1, $t0, 0xa
/* 7DB30 8007CF30 AC490080 */  sw         $t1, 0x80($v0)
/* 7DB34 8007CF34 A44A0088 */  sh         $t2, 0x88($v0)
/* 7DB38 8007CF38 A44B008C */  sh         $t3, 0x8c($v0)
/* 7DB3C 8007CF3C AC4C0154 */  sw         $t4, 0x154($v0)
/* 7DB40 8007CF40 05A10005 */  bgez       $t5, .L8007CF58
/* 7DB44 8007CF44 468021A0 */   cvt.s.w   $f6, $f4
/* 7DB48 8007CF48 3C014F80 */  lui        $at, 0x4f80
/* 7DB4C 8007CF4C 44814000 */  mtc1       $at, $f8
/* 7DB50 8007CF50 00000000 */  nop
/* 7DB54 8007CF54 46083180 */  add.s      $f6, $f6, $f8
.L8007CF58:
/* 7DB58 8007CF58 97AE003A */  lhu        $t6, 0x3a($sp)
/* 7DB5C 8007CF5C E446011C */  swc1       $f6, 0x11c($v0)
/* 7DB60 8007CF60 448E5000 */  mtc1       $t6, $f10
/* 7DB64 8007CF64 05C10005 */  bgez       $t6, .L8007CF7C
/* 7DB68 8007CF68 46805420 */   cvt.s.w   $f16, $f10
/* 7DB6C 8007CF6C 3C014F80 */  lui        $at, 0x4f80
/* 7DB70 8007CF70 44819000 */  mtc1       $at, $f18
/* 7DB74 8007CF74 00000000 */  nop
/* 7DB78 8007CF78 46128400 */  add.s      $f16, $f16, $f18
.L8007CF7C:
/* 7DB7C 8007CF7C 97AF0032 */  lhu        $t7, 0x32($sp)
/* 7DB80 8007CF80 E4500120 */  swc1       $f16, 0x120($v0)
/* 7DB84 8007CF84 448F2000 */  mtc1       $t7, $f4
/* 7DB88 8007CF88 05E10005 */  bgez       $t7, .L8007CFA0
/* 7DB8C 8007CF8C 46802220 */   cvt.s.w   $f8, $f4
/* 7DB90 8007CF90 3C014F80 */  lui        $at, 0x4f80
/* 7DB94 8007CF94 44813000 */  mtc1       $at, $f6
/* 7DB98 8007CF98 00000000 */  nop
/* 7DB9C 8007CF9C 46064200 */  add.s      $f8, $f8, $f6
.L8007CFA0:
/* 7DBA0 8007CFA0 97B80036 */  lhu        $t8, 0x36($sp)
/* 7DBA4 8007CFA4 E4480124 */  swc1       $f8, 0x124($v0)
/* 7DBA8 8007CFA8 44985000 */  mtc1       $t8, $f10
/* 7DBAC 8007CFAC 07010005 */  bgez       $t8, .L8007CFC4
/* 7DBB0 8007CFB0 468054A0 */   cvt.s.w   $f18, $f10
/* 7DBB4 8007CFB4 3C014F80 */  lui        $at, 0x4f80
/* 7DBB8 8007CFB8 44818000 */  mtc1       $at, $f16
/* 7DBBC 8007CFBC 00000000 */  nop
/* 7DBC0 8007CFC0 46109480 */  add.s      $f18, $f18, $f16
.L8007CFC4:
/* 7DBC4 8007CFC4 97B90042 */  lhu        $t9, 0x42($sp)
/* 7DBC8 8007CFC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DBCC 8007CFCC 33280001 */  andi       $t0, $t9, 1
/* 7DBD0 8007CFD0 E4520128 */  swc1       $f18, 0x128($v0)
/* 7DBD4 8007CFD4 AC48016C */  sw         $t0, 0x16c($v0)
/* 7DBD8 8007CFD8 03E00008 */  jr         $ra
/* 7DBDC 8007CFDC 27BD0020 */   addiu     $sp, $sp, 0x20
