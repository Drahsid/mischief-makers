.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007CCE0
/* 7D8E0 8007CCE0 3C0105F5 */  lui        $at, 0x5f5
/* 7D8E4 8007CCE4 3421E100 */  ori        $at, $at, 0xe100
/* 7D8E8 8007CCE8 0081082B */  sltu       $at, $a0, $at
/* 7D8EC 8007CCEC 14200003 */  bnez       $at, .L8007CCFC
/* 7D8F0 8007CCF0 3C020098 */   lui       $v0, 0x98
/* 7D8F4 8007CCF4 3C0405F5 */  lui        $a0, 0x5f5
/* 7D8F8 8007CCF8 3484E0FF */  ori        $a0, $a0, 0xe0ff
.L8007CCFC:
/* 7D8FC 8007CCFC 3C05800E */  lui        $a1, %hi(D_800E0F00)
/* 7D900 8007CD00 34429680 */  ori        $v0, $v0, 0x9680
/* 7D904 8007CD04 24A50F00 */  addiu      $a1, $a1, %lo(D_800E0F00)
/* 7D908 8007CD08 00001825 */  or         $v1, $zero, $zero
/* 7D90C 8007CD0C 2406000A */  addiu      $a2, $zero, 0xa
.L8007CD10:
/* 7D910 8007CD10 0082001B */  divu       $zero, $a0, $v0
/* 7D914 8007CD14 00A37821 */  addu       $t7, $a1, $v1
/* 7D918 8007CD18 24630001 */  addiu      $v1, $v1, 1
/* 7D91C 8007CD1C 3078FFFF */  andi       $t8, $v1, 0xffff
/* 7D920 8007CD20 03001825 */  or         $v1, $t8, $zero
/* 7D924 8007CD24 14400002 */  bnez       $v0, .L8007CD30
/* 7D928 8007CD28 00000000 */   nop
/* 7D92C 8007CD2C 0007000D */  break      7
.L8007CD30:
/* 7D930 8007CD30 28610008 */   slti      $at, $v1, 8
/* 7D934 8007CD34 00007012 */  mflo       $t6
/* 7D938 8007CD38 00002010 */  mfhi       $a0
/* 7D93C 8007CD3C A1EE0000 */  sb         $t6, ($t7)
/* 7D940 8007CD40 00000000 */  nop
/* 7D944 8007CD44 0046001B */  divu       $zero, $v0, $a2
/* 7D948 8007CD48 14C00002 */  bnez       $a2, .L8007CD54
/* 7D94C 8007CD4C 00000000 */   nop
/* 7D950 8007CD50 0007000D */  break      7
.L8007CD54:
/* 7D954 8007CD54 00001012 */   mflo      $v0
/* 7D958 8007CD58 1420FFED */  bnez       $at, .L8007CD10
/* 7D95C 8007CD5C 00000000 */   nop
/* 7D960 8007CD60 03E00008 */  jr         $ra
/* 7D964 8007CD64 00000000 */   nop

glabel func_8007CD68
/* 7D968 8007CD68 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7D96C 8007CD6C 000E7880 */  sll        $t7, $t6, 2
/* 7D970 8007CD70 01EE7823 */  subu       $t7, $t7, $t6
/* 7D974 8007CD74 000F7880 */  sll        $t7, $t7, 2
/* 7D978 8007CD78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D97C 8007CD7C 01EE7821 */  addu       $t7, $t7, $t6
/* 7D980 8007CD80 000F7880 */  sll        $t7, $t7, 2
/* 7D984 8007CD84 01EE7823 */  subu       $t7, $t7, $t6
/* 7D988 8007CD88 3C18800F */  lui        $t8, %hi(gActors)
/* 7D98C 8007CD8C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7D990 8007CD90 000F78C0 */  sll        $t7, $t7, 3
/* 7D994 8007CD94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D998 8007CD98 AFA40020 */  sw         $a0, 0x20($sp)
/* 7D99C 8007CD9C 01F81021 */  addu       $v0, $t7, $t8
/* 7D9A0 8007CDA0 24190029 */  addiu      $t9, $zero, 0x29
/* 7D9A4 8007CDA4 01C02025 */  or         $a0, $t6, $zero
/* 7D9A8 8007CDA8 AFA50024 */  sw         $a1, 0x24($sp)
/* 7D9AC 8007CDAC AFA60028 */  sw         $a2, 0x28($sp)
/* 7D9B0 8007CDB0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7D9B4 8007CDB4 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7D9B8 8007CDB8 0C0078B4 */  jal        func_8001E2D0
/* 7D9BC 8007CDBC AFA2001C */   sw        $v0, 0x1c($sp)
/* 7D9C0 8007CDC0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7D9C4 8007CDC4 97AE0036 */  lhu        $t6, 0x36($sp)
/* 7D9C8 8007CDC8 87A9002A */  lh         $t1, 0x2a($sp)
/* 7D9CC 8007CDCC 87AA002E */  lh         $t2, 0x2e($sp)
/* 7D9D0 8007CDD0 97AB0032 */  lhu        $t3, 0x32($sp)
/* 7D9D4 8007CDD4 97AC0026 */  lhu        $t4, 0x26($sp)
/* 7D9D8 8007CDD8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 7D9DC 8007CDDC 448E2000 */  mtc1       $t6, $f4
/* 7D9E0 8007CDE0 2408000A */  addiu      $t0, $zero, 0xa
/* 7D9E4 8007CDE4 AC480080 */  sw         $t0, 0x80($v0)
/* 7D9E8 8007CDE8 A4490088 */  sh         $t1, 0x88($v0)
/* 7D9EC 8007CDEC A44A008C */  sh         $t2, 0x8c($v0)
/* 7D9F0 8007CDF0 AC4B0150 */  sw         $t3, 0x150($v0)
/* 7D9F4 8007CDF4 AC4C0154 */  sw         $t4, 0x154($v0)
/* 7D9F8 8007CDF8 AC4D015C */  sw         $t5, 0x15c($v0)
/* 7D9FC 8007CDFC 05C10005 */  bgez       $t6, .L8007CE14
/* 7DA00 8007CE00 468021A0 */   cvt.s.w   $f6, $f4
/* 7DA04 8007CE04 3C014F80 */  lui        $at, 0x4f80
/* 7DA08 8007CE08 44814000 */  mtc1       $at, $f8
/* 7DA0C 8007CE0C 00000000 */  nop
/* 7DA10 8007CE10 46083180 */  add.s      $f6, $f6, $f8
.L8007CE14:
/* 7DA14 8007CE14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA18 8007CE18 E446014C */  swc1       $f6, 0x14c($v0)
/* 7DA1C 8007CE1C 03E00008 */  jr         $ra
/* 7DA20 8007CE20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007CE24
/* 7DA24 8007CE24 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DA28 8007CE28 000E7880 */  sll        $t7, $t6, 2
/* 7DA2C 8007CE2C 01EE7823 */  subu       $t7, $t7, $t6
/* 7DA30 8007CE30 000F7880 */  sll        $t7, $t7, 2
/* 7DA34 8007CE34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DA38 8007CE38 01EE7821 */  addu       $t7, $t7, $t6
/* 7DA3C 8007CE3C 000F7880 */  sll        $t7, $t7, 2
/* 7DA40 8007CE40 01EE7823 */  subu       $t7, $t7, $t6
/* 7DA44 8007CE44 3C18800F */  lui        $t8, %hi(gActors)
/* 7DA48 8007CE48 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7DA4C 8007CE4C 000F78C0 */  sll        $t7, $t7, 3
/* 7DA50 8007CE50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DA54 8007CE54 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DA58 8007CE58 01F81021 */  addu       $v0, $t7, $t8
/* 7DA5C 8007CE5C 24190028 */  addiu      $t9, $zero, 0x28
/* 7DA60 8007CE60 01C02025 */  or         $a0, $t6, $zero
/* 7DA64 8007CE64 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DA68 8007CE68 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DA6C 8007CE6C AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DA70 8007CE70 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7DA74 8007CE74 0C0078B4 */  jal        func_8001E2D0
/* 7DA78 8007CE78 AFA2001C */   sw        $v0, 0x1c($sp)
/* 7DA7C 8007CE7C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7DA80 8007CE80 87AA002A */  lh         $t2, 0x2a($sp)
/* 7DA84 8007CE84 8C480080 */  lw         $t0, 0x80($v0)
/* 7DA88 8007CE88 87AB002E */  lh         $t3, 0x2e($sp)
/* 7DA8C 8007CE8C 97AC0032 */  lhu        $t4, 0x32($sp)
/* 7DA90 8007CE90 97AD0026 */  lhu        $t5, 0x26($sp)
/* 7DA94 8007CE94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA98 8007CE98 3509000A */  ori        $t1, $t0, 0xa
/* 7DA9C 8007CE9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DAA0 8007CEA0 AC490080 */  sw         $t1, 0x80($v0)
/* 7DAA4 8007CEA4 A44A0088 */  sh         $t2, 0x88($v0)
/* 7DAA8 8007CEA8 A44B008C */  sh         $t3, 0x8c($v0)
/* 7DAAC 8007CEAC AC4C0150 */  sw         $t4, 0x150($v0)
/* 7DAB0 8007CEB0 03E00008 */  jr         $ra
/* 7DAB4 8007CEB4 AC4D0154 */   sw        $t5, 0x154($v0)

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

glabel func_8007CFE0
/* 7DBE0 8007CFE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DBE4 8007CFE4 000E7880 */  sll        $t7, $t6, 2
/* 7DBE8 8007CFE8 01EE7823 */  subu       $t7, $t7, $t6
/* 7DBEC 8007CFEC 000F7880 */  sll        $t7, $t7, 2
/* 7DBF0 8007CFF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DBF4 8007CFF4 01EE7821 */  addu       $t7, $t7, $t6
/* 7DBF8 8007CFF8 000F7880 */  sll        $t7, $t7, 2
/* 7DBFC 8007CFFC 01EE7823 */  subu       $t7, $t7, $t6
/* 7DC00 8007D000 3C18800F */  lui        $t8, %hi(gActors)
/* 7DC04 8007D004 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7DC08 8007D008 000F78C0 */  sll        $t7, $t7, 3
/* 7DC0C 8007D00C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DC10 8007D010 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DC14 8007D014 01F81021 */  addu       $v0, $t7, $t8
/* 7DC18 8007D018 24190026 */  addiu      $t9, $zero, 0x26
/* 7DC1C 8007D01C 01C02025 */  or         $a0, $t6, $zero
/* 7DC20 8007D020 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DC24 8007D024 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DC28 8007D028 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DC2C 8007D02C A45900D2 */  sh         $t9, 0xd2($v0)
/* 7DC30 8007D030 0C0078B4 */  jal        func_8001E2D0
/* 7DC34 8007D034 AFA2001C */   sw        $v0, 0x1c($sp)
/* 7DC38 8007D038 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7DC3C 8007D03C 97AC0026 */  lhu        $t4, 0x26($sp)
/* 7DC40 8007D040 8C480080 */  lw         $t0, 0x80($v0)
/* 7DC44 8007D044 87AA002A */  lh         $t2, 0x2a($sp)
/* 7DC48 8007D048 87AB002E */  lh         $t3, 0x2e($sp)
/* 7DC4C 8007D04C 448C2000 */  mtc1       $t4, $f4
/* 7DC50 8007D050 3509000A */  ori        $t1, $t0, 0xa
/* 7DC54 8007D054 AC490080 */  sw         $t1, 0x80($v0)
/* 7DC58 8007D058 A44A0088 */  sh         $t2, 0x88($v0)
/* 7DC5C 8007D05C A44B008C */  sh         $t3, 0x8c($v0)
/* 7DC60 8007D060 05810005 */  bgez       $t4, .L8007D078
/* 7DC64 8007D064 468021A0 */   cvt.s.w   $f6, $f4
/* 7DC68 8007D068 3C014F80 */  lui        $at, 0x4f80
/* 7DC6C 8007D06C 44814000 */  mtc1       $at, $f8
/* 7DC70 8007D070 00000000 */  nop
/* 7DC74 8007D074 46083180 */  add.s      $f6, $f6, $f8
.L8007D078:
/* 7DC78 8007D078 97AD0036 */  lhu        $t5, 0x36($sp)
/* 7DC7C 8007D07C E4460110 */  swc1       $f6, 0x110($v0)
/* 7DC80 8007D080 448D5000 */  mtc1       $t5, $f10
/* 7DC84 8007D084 05A10005 */  bgez       $t5, .L8007D09C
/* 7DC88 8007D088 46805420 */   cvt.s.w   $f16, $f10
/* 7DC8C 8007D08C 3C014F80 */  lui        $at, 0x4f80
/* 7DC90 8007D090 44819000 */  mtc1       $at, $f18
/* 7DC94 8007D094 00000000 */  nop
/* 7DC98 8007D098 46128400 */  add.s      $f16, $f16, $f18
.L8007D09C:
/* 7DC9C 8007D09C 97AE0032 */  lhu        $t6, 0x32($sp)
/* 7DCA0 8007D0A0 E4500114 */  swc1       $f16, 0x114($v0)
/* 7DCA4 8007D0A4 448E2000 */  mtc1       $t6, $f4
/* 7DCA8 8007D0A8 05C10005 */  bgez       $t6, .L8007D0C0
/* 7DCAC 8007D0AC 46802220 */   cvt.s.w   $f8, $f4
/* 7DCB0 8007D0B0 3C014F80 */  lui        $at, 0x4f80
/* 7DCB4 8007D0B4 44813000 */  mtc1       $at, $f6
/* 7DCB8 8007D0B8 00000000 */  nop
/* 7DCBC 8007D0BC 46064200 */  add.s      $f8, $f8, $f6
.L8007D0C0:
/* 7DCC0 8007D0C0 97AF003A */  lhu        $t7, 0x3a($sp)
/* 7DCC4 8007D0C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DCC8 8007D0C8 31F80001 */  andi       $t8, $t7, 1
/* 7DCCC 8007D0CC E4480118 */  swc1       $f8, 0x118($v0)
/* 7DCD0 8007D0D0 AC58016C */  sw         $t8, 0x16c($v0)
/* 7DCD4 8007D0D4 03E00008 */  jr         $ra
/* 7DCD8 8007D0D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007D0DC
/* 7DCDC 8007D0DC AFA40000 */  sw         $a0, ($sp)
/* 7DCE0 8007D0E0 AFA50004 */  sw         $a1, 4($sp)
/* 7DCE4 8007D0E4 AFA60008 */  sw         $a2, 8($sp)
/* 7DCE8 8007D0E8 AFA7000C */  sw         $a3, 0xc($sp)
/* 7DCEC 8007D0EC 03E00008 */  jr         $ra
/* 7DCF0 8007D0F0 00001025 */   or        $v0, $zero, $zero

glabel func_8007D0F4
/* 7DCF4 8007D0F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DCF8 8007D0F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DCFC 8007D0FC AFA40020 */  sw         $a0, 0x20($sp)
/* 7DD00 8007D100 AFA50024 */  sw         $a1, 0x24($sp)
/* 7DD04 8007D104 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DD08 8007D108 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DD0C 8007D10C 24050090 */  addiu      $a1, $zero, 0x90
/* 7DD10 8007D110 0C00A12E */  jal        func_800284B8
/* 7DD14 8007D114 2404008C */   addiu     $a0, $zero, 0x8c
/* 7DD18 8007D118 1040002F */  beqz       $v0, .L8007D1D8
/* 7DD1C 8007D11C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DD20 8007D120 00047080 */  sll        $t6, $a0, 2
/* 7DD24 8007D124 01C47023 */  subu       $t6, $t6, $a0
/* 7DD28 8007D128 000E7080 */  sll        $t6, $t6, 2
/* 7DD2C 8007D12C 01C47021 */  addu       $t6, $t6, $a0
/* 7DD30 8007D130 000E7080 */  sll        $t6, $t6, 2
/* 7DD34 8007D134 01C47023 */  subu       $t6, $t6, $a0
/* 7DD38 8007D138 3C0F800F */  lui        $t7, %hi(gActors)
/* 7DD3C 8007D13C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7DD40 8007D140 000E70C0 */  sll        $t6, $t6, 3
/* 7DD44 8007D144 01CF1021 */  addu       $v0, $t6, $t7
/* 7DD48 8007D148 24180035 */  addiu      $t8, $zero, 0x35
/* 7DD4C 8007D14C A45800D2 */  sh         $t8, 0xd2($v0)
/* 7DD50 8007D150 AFA20018 */  sw         $v0, 0x18($sp)
/* 7DD54 8007D154 0C0078B4 */  jal        func_8001E2D0
/* 7DD58 8007D158 A7A4001E */   sh        $a0, 0x1e($sp)
/* 7DD5C 8007D15C 8FA20018 */  lw         $v0, 0x18($sp)
/* 7DD60 8007D160 97A30032 */  lhu        $v1, 0x32($sp)
/* 7DD64 8007D164 87A5002A */  lh         $a1, 0x2a($sp)
/* 7DD68 8007D168 306B7FFF */  andi       $t3, $v1, 0x7fff
/* 7DD6C 8007D16C 306C8000 */  andi       $t4, $v1, 0x8000
/* 7DD70 8007D170 448B2000 */  mtc1       $t3, $f4
/* 7DD74 8007D174 448C4000 */  mtc1       $t4, $f8
/* 7DD78 8007D178 468021A0 */  cvt.s.w    $f6, $f4
/* 7DD7C 8007D17C 87A6002E */  lh         $a2, 0x2e($sp)
/* 7DD80 8007D180 44800000 */  mtc1       $zero, $f0
/* 7DD84 8007D184 468042A0 */  cvt.s.w    $f10, $f8
/* 7DD88 8007D188 8FA90024 */  lw         $t1, 0x24($sp)
/* 7DD8C 8007D18C 97AA0022 */  lhu        $t2, 0x22($sp)
/* 7DD90 8007D190 24190901 */  addiu      $t9, $zero, 0x901
/* 7DD94 8007D194 24080002 */  addiu      $t0, $zero, 2
/* 7DD98 8007D198 3C0D0080 */  lui        $t5, 0x80
/* 7DD9C 8007D19C 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7DDA0 8007D1A0 A4590094 */  sh         $t9, 0x94($v0)
/* 7DDA4 8007D1A4 AC480080 */  sw         $t0, 0x80($v0)
/* 7DDA8 8007D1A8 A040009F */  sb         $zero, 0x9f($v0)
/* 7DDAC 8007D1AC E4460114 */  swc1       $f6, 0x114($v0)
/* 7DDB0 8007D1B0 E44A0118 */  swc1       $f10, 0x118($v0)
/* 7DDB4 8007D1B4 AC4D0090 */  sw         $t5, 0x90($v0)
/* 7DDB8 8007D1B8 AC450158 */  sw         $a1, 0x158($v0)
/* 7DDBC 8007D1BC A4450088 */  sh         $a1, 0x88($v0)
/* 7DDC0 8007D1C0 AC46015C */  sw         $a2, 0x15c($v0)
/* 7DDC4 8007D1C4 A446008C */  sh         $a2, 0x8c($v0)
/* 7DDC8 8007D1C8 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 7DDCC 8007D1CC E44000B8 */  swc1       $f0, 0xb8($v0)
/* 7DDD0 8007D1D0 AC490150 */  sw         $t1, 0x150($v0)
/* 7DDD4 8007D1D4 AC4A0154 */  sw         $t2, 0x154($v0)
.L8007D1D8:
/* 7DDD8 8007D1D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DDDC 8007D1DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DDE0 8007D1E0 03E00008 */  jr         $ra
/* 7DDE4 8007D1E4 00801025 */   or        $v0, $a0, $zero

glabel func_8007D1E8
/* 7DDE8 8007D1E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DDEC 8007D1EC 97A90032 */  lhu        $t1, 0x32($sp)
/* 7DDF0 8007D1F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7DDF4 8007D1F4 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DDF8 8007D1F8 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DDFC 8007D1FC AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DE00 8007D200 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DE04 8007D204 00067C00 */  sll        $t7, $a2, 0x10
/* 7DE08 8007D208 0007CC00 */  sll        $t9, $a3, 0x10
/* 7DE0C 8007D20C 00193C03 */  sra        $a3, $t9, 0x10
/* 7DE10 8007D210 000F3403 */  sra        $a2, $t7, 0x10
/* 7DE14 8007D214 01C02025 */  or         $a0, $t6, $zero
/* 7DE18 8007D218 0C01F437 */  jal        func_8007D0DC
/* 7DE1C 8007D21C AFA90010 */   sw        $t1, 0x10($sp)
/* 7DE20 8007D220 10400017 */  beqz       $v0, .L8007D280
/* 7DE24 8007D224 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DE28 8007D228 00025080 */  sll        $t2, $v0, 2
/* 7DE2C 8007D22C 01425023 */  subu       $t2, $t2, $v0
/* 7DE30 8007D230 000A5080 */  sll        $t2, $t2, 2
/* 7DE34 8007D234 01425021 */  addu       $t2, $t2, $v0
/* 7DE38 8007D238 000A5080 */  sll        $t2, $t2, 2
/* 7DE3C 8007D23C 01425023 */  subu       $t2, $t2, $v0
/* 7DE40 8007D240 3C0B800F */  lui        $t3, %hi(gActors)
/* 7DE44 8007D244 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 7DE48 8007D248 000A50C0 */  sll        $t2, $t2, 3
/* 7DE4C 8007D24C 014B1821 */  addu       $v1, $t2, $t3
/* 7DE50 8007D250 946C0094 */  lhu        $t4, 0x94($v1)
/* 7DE54 8007D254 8FA50034 */  lw         $a1, 0x34($sp)
/* 7DE58 8007D258 358E0200 */  ori        $t6, $t4, 0x200
/* 7DE5C 8007D25C A46E0094 */  sh         $t6, 0x94($v1)
/* 7DE60 8007D260 31CFFEFF */  andi       $t7, $t6, 0xfeff
/* 7DE64 8007D264 10A00003 */  beqz       $a1, .L8007D274
/* 7DE68 8007D268 A46F0094 */   sh        $t7, 0x94($v1)
/* 7DE6C 8007D26C 10000004 */  b          .L8007D280
/* 7DE70 8007D270 AC65018C */   sw        $a1, 0x18c($v1)
.L8007D274:
/* 7DE74 8007D274 3C18800E */  lui        $t8, %hi(initialize_emu_text_0000)
/* 7DE78 8007D278 27189AE4 */  addiu      $t8, $t8, %lo(initialize_emu_text_0000)
/* 7DE7C 8007D27C AC78018C */  sw         $t8, 0x18c($v1)
.L8007D280:
/* 7DE80 8007D280 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7DE84 8007D284 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DE88 8007D288 03E00008 */  jr         $ra
/* 7DE8C 8007D28C 00801025 */   or        $v0, $a0, $zero

glabel func_8007D290
/* 7DE90 8007D290 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DE94 8007D294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7DE98 8007D298 0C00A14A */  jal        func_80028528
/* 7DE9C 8007D29C AFA40020 */   sw        $a0, 0x20($sp)
/* 7DEA0 8007D2A0 10400034 */  beqz       $v0, .L8007D374
/* 7DEA4 8007D2A4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DEA8 8007D2A8 00047080 */  sll        $t6, $a0, 2
/* 7DEAC 8007D2AC 01C47023 */  subu       $t6, $t6, $a0
/* 7DEB0 8007D2B0 000E7080 */  sll        $t6, $t6, 2
/* 7DEB4 8007D2B4 01C47021 */  addu       $t6, $t6, $a0
/* 7DEB8 8007D2B8 000E7080 */  sll        $t6, $t6, 2
/* 7DEBC 8007D2BC 01C47023 */  subu       $t6, $t6, $a0
/* 7DEC0 8007D2C0 3C0F800F */  lui        $t7, %hi(gActors)
/* 7DEC4 8007D2C4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7DEC8 8007D2C8 000E70C0 */  sll        $t6, $t6, 3
/* 7DECC 8007D2CC 01CF1021 */  addu       $v0, $t6, $t7
/* 7DED0 8007D2D0 24180034 */  addiu      $t8, $zero, 0x34
/* 7DED4 8007D2D4 A45800D2 */  sh         $t8, 0xd2($v0)
/* 7DED8 8007D2D8 AFA20018 */  sw         $v0, 0x18($sp)
/* 7DEDC 8007D2DC 0C0078B4 */  jal        func_8001E2D0
/* 7DEE0 8007D2E0 A7A4001E */   sh        $a0, 0x1e($sp)
/* 7DEE4 8007D2E4 97A50022 */  lhu        $a1, 0x22($sp)
/* 7DEE8 8007D2E8 3C08800F */  lui        $t0, 0x800f
/* 7DEEC 8007D2EC 0005C880 */  sll        $t9, $a1, 2
/* 7DEF0 8007D2F0 0325C823 */  subu       $t9, $t9, $a1
/* 7DEF4 8007D2F4 0019C880 */  sll        $t9, $t9, 2
/* 7DEF8 8007D2F8 0325C821 */  addu       $t9, $t9, $a1
/* 7DEFC 8007D2FC 0019C880 */  sll        $t9, $t9, 2
/* 7DF00 8007D300 0325C823 */  subu       $t9, $t9, $a1
/* 7DF04 8007D304 0019C8C0 */  sll        $t9, $t9, 3
/* 7DF08 8007D308 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 7DF0C 8007D30C 03281821 */  addu       $v1, $t9, $t0
/* 7DF10 8007D310 8C69018C */  lw         $t1, 0x18c($v1)
/* 7DF14 8007D314 8FA20018 */  lw         $v0, 0x18($sp)
/* 7DF18 8007D318 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7DF1C 8007D31C 11200004 */  beqz       $t1, .L8007D330
/* 7DF20 8007D320 240C0003 */   addiu     $t4, $zero, 3
/* 7DF24 8007D324 240A0A00 */  addiu      $t2, $zero, 0xa00
/* 7DF28 8007D328 10000003 */  b          .L8007D338
/* 7DF2C 8007D32C A44A0094 */   sh        $t2, 0x94($v0)
.L8007D330:
/* 7DF30 8007D330 240B0800 */  addiu      $t3, $zero, 0x800
/* 7DF34 8007D334 A44B0094 */  sh         $t3, 0x94($v0)
.L8007D338:
/* 7DF38 8007D338 AC4C0080 */  sw         $t4, 0x80($v0)
/* 7DF3C 8007D33C 8C6D0090 */  lw         $t5, 0x90($v1)
/* 7DF40 8007D340 0085082A */  slt        $at, $a0, $a1
/* 7DF44 8007D344 25AE0001 */  addiu      $t6, $t5, 1
/* 7DF48 8007D348 AC4E0090 */  sw         $t6, 0x90($v0)
/* 7DF4C 8007D34C 8C6F018C */  lw         $t7, 0x18c($v1)
/* 7DF50 8007D350 10200004 */  beqz       $at, .L8007D364
/* 7DF54 8007D354 AC4F018C */   sw        $t7, 0x18c($v0)
/* 7DF58 8007D358 44802000 */  mtc1       $zero, $f4
/* 7DF5C 8007D35C 10000005 */  b          .L8007D374
/* 7DF60 8007D360 E4440148 */   swc1      $f4, 0x148($v0)
.L8007D364:
/* 7DF64 8007D364 3C013F80 */  lui        $at, 0x3f80
/* 7DF68 8007D368 44813000 */  mtc1       $at, $f6
/* 7DF6C 8007D36C 00000000 */  nop
/* 7DF70 8007D370 E4460148 */  swc1       $f6, 0x148($v0)
.L8007D374:
/* 7DF74 8007D374 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DF78 8007D378 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DF7C 8007D37C 03E00008 */  jr         $ra
/* 7DF80 8007D380 00801025 */   or        $v0, $a0, $zero

glabel func_8007D384
/* 7DF84 8007D384 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7DF88 8007D388 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7DF8C 8007D38C AFA40028 */  sw         $a0, 0x28($sp)
/* 7DF90 8007D390 0C00A14A */  jal        func_80028528
/* 7DF94 8007D394 AFA5002C */   sw        $a1, 0x2c($sp)
/* 7DF98 8007D398 10400010 */  beqz       $v0, .L8007D3DC
/* 7DF9C 8007D39C 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DFA0 8007D3A0 97AF002E */  lhu        $t7, 0x2e($sp)
/* 7DFA4 8007D3A4 3C08800E */  lui        $t0, %hi(D_800E0F08)
/* 7DFA8 8007D3A8 31F87FFF */  andi       $t8, $t7, 0x7fff
/* 7DFAC 8007D3AC 0018C840 */  sll        $t9, $t8, 1
/* 7DFB0 8007D3B0 25080F08 */  addiu      $t0, $t0, %lo(D_800E0F08)
/* 7DFB4 8007D3B4 03281021 */  addu       $v0, $t9, $t0
/* 7DFB8 8007D3B8 84460008 */  lh         $a2, 8($v0)
/* 7DFBC 8007D3BC 8447000A */  lh         $a3, 0xa($v0)
/* 7DFC0 8007D3C0 97A5002A */  lhu        $a1, 0x2a($sp)
/* 7DFC4 8007D3C4 240900F0 */  addiu      $t1, $zero, 0xf0
/* 7DFC8 8007D3C8 240A0001 */  addiu      $t2, $zero, 1
/* 7DFCC 8007D3CC AFAA0018 */  sw         $t2, 0x18($sp)
/* 7DFD0 8007D3D0 AFA90014 */  sw         $t1, 0x14($sp)
/* 7DFD4 8007D3D4 0C01F3F8 */  jal        func_8007CFE0
/* 7DFD8 8007D3D8 AFA00010 */   sw        $zero, 0x10($sp)
.L8007D3DC:
/* 7DFDC 8007D3DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7DFE0 8007D3E0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7DFE4 8007D3E4 03E00008 */  jr         $ra
/* 7DFE8 8007D3E8 00000000 */   nop

glabel func_8007D3EC
/* 7DFEC 8007D3EC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DFF0 8007D3F0 000E7880 */  sll        $t7, $t6, 2
/* 7DFF4 8007D3F4 01EE7823 */  subu       $t7, $t7, $t6
/* 7DFF8 8007D3F8 000F7880 */  sll        $t7, $t7, 2
/* 7DFFC 8007D3FC 01EE7821 */  addu       $t7, $t7, $t6
/* 7E000 8007D400 000F7880 */  sll        $t7, $t7, 2
/* 7E004 8007D404 01EE7823 */  subu       $t7, $t7, $t6
/* 7E008 8007D408 3C18800F */  lui        $t8, %hi(gActors)
/* 7E00C 8007D40C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7E010 8007D410 000F78C0 */  sll        $t7, $t7, 3
/* 7E014 8007D414 01F81021 */  addu       $v0, $t7, $t8
/* 7E018 8007D418 9059009F */  lbu        $t9, 0x9f($v0)
/* 7E01C 8007D41C AFA40000 */  sw         $a0, ($sp)
/* 7E020 8007D420 2B210081 */  slti       $at, $t9, 0x81
/* 7E024 8007D424 14200002 */  bnez       $at, .L8007D430
/* 7E028 8007D428 24080090 */   addiu     $t0, $zero, 0x90
/* 7E02C 8007D42C A048009F */  sb         $t0, 0x9f($v0)
.L8007D430:
/* 7E030 8007D430 03E00008 */  jr         $ra
/* 7E034 8007D434 00000000 */   nop

glabel func_8007D438
/* 7E038 8007D438 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7E03C 8007D43C 000EC080 */  sll        $t8, $t6, 2
/* 7E040 8007D440 030EC023 */  subu       $t8, $t8, $t6
/* 7E044 8007D444 0018C080 */  sll        $t8, $t8, 2
/* 7E048 8007D448 030EC021 */  addu       $t8, $t8, $t6
/* 7E04C 8007D44C 0018C080 */  sll        $t8, $t8, 2
/* 7E050 8007D450 030EC023 */  subu       $t8, $t8, $t6
/* 7E054 8007D454 3C19800F */  lui        $t9, %hi(gActors)
/* 7E058 8007D458 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 7E05C 8007D45C 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 7E060 8007D460 0018C0C0 */  sll        $t8, $t8, 3
/* 7E064 8007D464 448F3000 */  mtc1       $t7, $f6
/* 7E068 8007D468 03191021 */  addu       $v0, $t8, $t9
/* 7E06C 8007D46C C44400B8 */  lwc1       $f4, 0xb8($v0)
/* 7E070 8007D470 AFA40000 */  sw         $a0, ($sp)
/* 7E074 8007D474 AFA50004 */  sw         $a1, 4($sp)
/* 7E078 8007D478 05E10005 */  bgez       $t7, .L8007D490
/* 7E07C 8007D47C 46803220 */   cvt.s.w   $f8, $f6
/* 7E080 8007D480 3C014F80 */  lui        $at, 0x4f80
/* 7E084 8007D484 44815000 */  mtc1       $at, $f10
/* 7E088 8007D488 00000000 */  nop
/* 7E08C 8007D48C 460A4200 */  add.s      $f8, $f8, $f10
.L8007D490:
/* 7E090 8007D490 46082402 */  mul.s      $f16, $f4, $f8
/* 7E094 8007D494 24090001 */  addiu      $t1, $zero, 1
/* 7E098 8007D498 3C014F00 */  lui        $at, 0x4f00
/* 7E09C 8007D49C 4448F800 */  cfc1       $t0, $31
/* 7E0A0 8007D4A0 44C9F800 */  ctc1       $t1, $31
/* 7E0A4 8007D4A4 00000000 */  nop
/* 7E0A8 8007D4A8 460084A4 */  cvt.w.s    $f18, $f16
/* 7E0AC 8007D4AC 4449F800 */  cfc1       $t1, $31
/* 7E0B0 8007D4B0 00000000 */  nop
/* 7E0B4 8007D4B4 31290078 */  andi       $t1, $t1, 0x78
/* 7E0B8 8007D4B8 11200012 */  beqz       $t1, .L8007D504
/* 7E0BC 8007D4BC 00000000 */   nop
/* 7E0C0 8007D4C0 44819000 */  mtc1       $at, $f18
/* 7E0C4 8007D4C4 24090001 */  addiu      $t1, $zero, 1
/* 7E0C8 8007D4C8 46128481 */  sub.s      $f18, $f16, $f18
/* 7E0CC 8007D4CC 3C018000 */  lui        $at, 0x8000
/* 7E0D0 8007D4D0 44C9F800 */  ctc1       $t1, $31
/* 7E0D4 8007D4D4 00000000 */  nop
/* 7E0D8 8007D4D8 460094A4 */  cvt.w.s    $f18, $f18
/* 7E0DC 8007D4DC 4449F800 */  cfc1       $t1, $31
/* 7E0E0 8007D4E0 00000000 */  nop
/* 7E0E4 8007D4E4 31290078 */  andi       $t1, $t1, 0x78
/* 7E0E8 8007D4E8 15200004 */  bnez       $t1, .L8007D4FC
/* 7E0EC 8007D4EC 00000000 */   nop
/* 7E0F0 8007D4F0 44099000 */  mfc1       $t1, $f18
/* 7E0F4 8007D4F4 10000007 */  b          .L8007D514
/* 7E0F8 8007D4F8 01214825 */   or        $t1, $t1, $at
.L8007D4FC:
/* 7E0FC 8007D4FC 10000005 */  b          .L8007D514
/* 7E100 8007D500 2409FFFF */   addiu     $t1, $zero, -1
.L8007D504:
/* 7E104 8007D504 44099000 */  mfc1       $t1, $f18
/* 7E108 8007D508 00000000 */  nop
/* 7E10C 8007D50C 0520FFFB */  bltz       $t1, .L8007D4FC
/* 7E110 8007D510 00000000 */   nop
.L8007D514:
/* 7E114 8007D514 44C8F800 */  ctc1       $t0, $31
/* 7E118 8007D518 03E00008 */  jr         $ra
/* 7E11C 8007D51C A049009F */   sb        $t1, 0x9f($v0)

glabel func_8007D520
/* 7E120 8007D520 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7E124 8007D524 000E7880 */  sll        $t7, $t6, 2
/* 7E128 8007D528 01EE7823 */  subu       $t7, $t7, $t6
/* 7E12C 8007D52C 000F7880 */  sll        $t7, $t7, 2
/* 7E130 8007D530 01EE7821 */  addu       $t7, $t7, $t6
/* 7E134 8007D534 000F7880 */  sll        $t7, $t7, 2
/* 7E138 8007D538 01EE7823 */  subu       $t7, $t7, $t6
/* 7E13C 8007D53C 000F78C0 */  sll        $t7, $t7, 3
/* 7E140 8007D540 3C01800F */  lui        $at, %hi(D_800EF590)
/* 7E144 8007D544 002F0821 */  addu       $at, $at, $t7
/* 7E148 8007D548 AFA40000 */  sw         $a0, ($sp)
/* 7E14C 8007D54C 03E00008 */  jr         $ra
/* 7E150 8007D550 AC20F590 */   sw        $zero, %lo(D_800EF590)($at)

glabel func_8007D554
/* 7E154 8007D554 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 7E158 8007D558 AFA40050 */  sw         $a0, 0x50($sp)
/* 7E15C 8007D55C 97AE0052 */  lhu        $t6, 0x52($sp)
/* 7E160 8007D560 3C18800F */  lui        $t8, 0x800f
/* 7E164 8007D564 000E7880 */  sll        $t7, $t6, 2
/* 7E168 8007D568 01EE7823 */  subu       $t7, $t7, $t6
/* 7E16C 8007D56C 000F7880 */  sll        $t7, $t7, 2
/* 7E170 8007D570 01EE7821 */  addu       $t7, $t7, $t6
/* 7E174 8007D574 000F7880 */  sll        $t7, $t7, 2
/* 7E178 8007D578 01EE7823 */  subu       $t7, $t7, $t6
/* 7E17C 8007D57C AFB30024 */  sw         $s3, 0x24($sp)
/* 7E180 8007D580 000F78C0 */  sll        $t7, $t7, 3
/* 7E184 8007D584 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7E188 8007D588 01F89821 */  addu       $s3, $t7, $t8
/* 7E18C 8007D58C 966200D0 */  lhu        $v0, 0xd0($s3)
/* 7E190 8007D590 AFBF003C */  sw         $ra, 0x3c($sp)
/* 7E194 8007D594 AFBE0038 */  sw         $fp, 0x38($sp)
/* 7E198 8007D598 AFB70034 */  sw         $s7, 0x34($sp)
/* 7E19C 8007D59C AFB60030 */  sw         $s6, 0x30($sp)
/* 7E1A0 8007D5A0 AFB5002C */  sw         $s5, 0x2c($sp)
/* 7E1A4 8007D5A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 7E1A8 8007D5A8 AFB20020 */  sw         $s2, 0x20($sp)
/* 7E1AC 8007D5AC AFB1001C */  sw         $s1, 0x1c($sp)
/* 7E1B0 8007D5B0 14400006 */  bnez       $v0, .L8007D5CC
/* 7E1B4 8007D5B4 AFB00018 */   sw        $s0, 0x18($sp)
/* 7E1B8 8007D5B8 44802000 */  mtc1       $zero, $f4
/* 7E1BC 8007D5BC 24590001 */  addiu      $t9, $v0, 1
/* 7E1C0 8007D5C0 A67900D0 */  sh         $t9, 0xd0($s3)
/* 7E1C4 8007D5C4 A260009F */  sb         $zero, 0x9f($s3)
/* 7E1C8 8007D5C8 E66400B8 */  swc1       $f4, 0xb8($s3)
.L8007D5CC:
/* 7E1CC 8007D5CC 4448F800 */  cfc1       $t0, $31
/* 7E1D0 8007D5D0 24090001 */  addiu      $t1, $zero, 1
/* 7E1D4 8007D5D4 44C9F800 */  ctc1       $t1, $31
/* 7E1D8 8007D5D8 C6660110 */  lwc1       $f6, 0x110($s3)
/* 7E1DC 8007D5DC 00003825 */  or         $a3, $zero, $zero
/* 7E1E0 8007D5E0 46003224 */  cvt.w.s    $f8, $f6
/* 7E1E4 8007D5E4 3C10800E */  lui        $s0, 0x800e
/* 7E1E8 8007D5E8 4449F800 */  cfc1       $t1, $31
/* 7E1EC 8007D5EC 00009025 */  or         $s2, $zero, $zero
/* 7E1F0 8007D5F0 31290078 */  andi       $t1, $t1, 0x78
/* 7E1F4 8007D5F4 11200013 */  beqz       $t1, .L8007D644
/* 7E1F8 8007D5F8 00008825 */   or        $s1, $zero, $zero
/* 7E1FC 8007D5FC 3C014F00 */  lui        $at, 0x4f00
/* 7E200 8007D600 44814000 */  mtc1       $at, $f8
/* 7E204 8007D604 24090001 */  addiu      $t1, $zero, 1
/* 7E208 8007D608 46083201 */  sub.s      $f8, $f6, $f8
/* 7E20C 8007D60C 3C018000 */  lui        $at, 0x8000
/* 7E210 8007D610 44C9F800 */  ctc1       $t1, $31
/* 7E214 8007D614 00000000 */  nop
/* 7E218 8007D618 46004224 */  cvt.w.s    $f8, $f8
/* 7E21C 8007D61C 4449F800 */  cfc1       $t1, $31
/* 7E220 8007D620 00000000 */  nop
/* 7E224 8007D624 31290078 */  andi       $t1, $t1, 0x78
/* 7E228 8007D628 15200004 */  bnez       $t1, .L8007D63C
/* 7E22C 8007D62C 00000000 */   nop
/* 7E230 8007D630 44094000 */  mfc1       $t1, $f8
/* 7E234 8007D634 10000007 */  b          .L8007D654
/* 7E238 8007D638 01214825 */   or        $t1, $t1, $at
.L8007D63C:
/* 7E23C 8007D63C 10000005 */  b          .L8007D654
/* 7E240 8007D640 2409FFFF */   addiu     $t1, $zero, -1
.L8007D644:
/* 7E244 8007D644 44094000 */  mfc1       $t1, $f8
/* 7E248 8007D648 00000000 */  nop
/* 7E24C 8007D64C 0520FFFB */  bltz       $t1, .L8007D63C
/* 7E250 8007D650 00000000 */   nop
.L8007D654:
/* 7E254 8007D654 312AFFFF */  andi       $t2, $t1, 0xffff
/* 7E258 8007D658 000A5880 */  sll        $t3, $t2, 2
/* 7E25C 8007D65C 020B8021 */  addu       $s0, $s0, $t3
/* 7E260 8007D660 8E100F88 */  lw         $s0, 0xf88($s0)
/* 7E264 8007D664 44C8F800 */  ctc1       $t0, $31
/* 7E268 8007D668 96050000 */  lhu        $a1, ($s0)
/* 7E26C 8007D66C 34018FFF */  ori        $at, $zero, 0x8fff
/* 7E270 8007D670 10A10077 */  beq        $a1, $at, .L8007D850
/* 7E274 8007D674 00A01025 */   or        $v0, $a1, $zero
/* 7E278 8007D678 97B50042 */  lhu        $s5, 0x42($sp)
/* 7E27C 8007D67C 241E0400 */  addiu      $fp, $zero, 0x400
/* 7E280 8007D680 24170200 */  addiu      $s7, $zero, 0x200
/* 7E284 8007D684 24160100 */  addiu      $s6, $zero, 0x100
/* 7E288 8007D688 34148001 */  ori        $s4, $zero, 0x8001
/* 7E28C 8007D68C 24064000 */  addiu      $a2, $zero, 0x4000
.L8007D690:
/* 7E290 8007D690 0054082A */  slt        $at, $v0, $s4
/* 7E294 8007D694 14200020 */  bnez       $at, .L8007D718
/* 7E298 8007D698 30A4FFFF */   andi      $a0, $a1, 0xffff
.L8007D69C:
/* 7E29C 8007D69C 30827F00 */  andi       $v0, $a0, 0x7f00
/* 7E2A0 8007D6A0 12C20009 */  beq        $s6, $v0, .L8007D6C8
/* 7E2A4 8007D6A4 00000000 */   nop
/* 7E2A8 8007D6A8 1057000C */  beq        $v0, $s7, .L8007D6DC
/* 7E2AC 8007D6AC 308D00FF */   andi      $t5, $a0, 0xff
/* 7E2B0 8007D6B0 105E0010 */  beq        $v0, $fp, .L8007D6F4
/* 7E2B4 8007D6B4 00000000 */   nop
/* 7E2B8 8007D6B8 1046000A */  beq        $v0, $a2, .L8007D6E4
/* 7E2BC 8007D6BC 308E00FF */   andi      $t6, $a0, 0xff
/* 7E2C0 8007D6C0 10000011 */  b          .L8007D708
/* 7E2C4 8007D6C4 96050002 */   lhu       $a1, 2($s0)
.L8007D6C8:
/* 7E2C8 8007D6C8 0080A825 */  or         $s5, $a0, $zero
/* 7E2CC 8007D6CC 32AC00FF */  andi       $t4, $s5, 0xff
/* 7E2D0 8007D6D0 0180A825 */  or         $s5, $t4, $zero
/* 7E2D4 8007D6D4 1000000B */  b          .L8007D704
/* 7E2D8 8007D6D8 24070200 */   addiu     $a3, $zero, 0x200
.L8007D6DC:
/* 7E2DC 8007D6DC 10000009 */  b          .L8007D704
/* 7E2E0 8007D6E0 AE6D0158 */   sw        $t5, 0x158($s3)
.L8007D6E4:
/* 7E2E4 8007D6E4 022E8821 */  addu       $s1, $s1, $t6
/* 7E2E8 8007D6E8 322FFFFF */  andi       $t7, $s1, 0xffff
/* 7E2EC 8007D6EC 10000005 */  b          .L8007D704
/* 7E2F0 8007D6F0 01E08825 */   or        $s1, $t7, $zero
.L8007D6F4:
/* 7E2F4 8007D6F4 2652FFED */  addiu      $s2, $s2, -0x13
/* 7E2F8 8007D6F8 0012C400 */  sll        $t8, $s2, 0x10
/* 7E2FC 8007D6FC 00008825 */  or         $s1, $zero, $zero
/* 7E300 8007D700 00189403 */  sra        $s2, $t8, 0x10
.L8007D704:
/* 7E304 8007D704 96050002 */  lhu        $a1, 2($s0)
.L8007D708:
/* 7E308 8007D708 26100002 */  addiu      $s0, $s0, 2
/* 7E30C 8007D70C 00B4082A */  slt        $at, $a1, $s4
/* 7E310 8007D710 1020FFE2 */  beqz       $at, .L8007D69C
/* 7E314 8007D714 30A4FFFF */   andi      $a0, $a1, 0xffff
.L8007D718:
/* 7E318 8007D718 97A40052 */  lhu        $a0, 0x52($sp)
/* 7E31C 8007D71C 0C01F4A4 */  jal        func_8007D290
/* 7E320 8007D720 A7A70044 */   sh        $a3, 0x44($sp)
/* 7E324 8007D724 97A70044 */  lhu        $a3, 0x44($sp)
/* 7E328 8007D728 10400049 */  beqz       $v0, .L8007D850
/* 7E32C 8007D72C 24064000 */   addiu     $a2, $zero, 0x4000
/* 7E330 8007D730 00024080 */  sll        $t0, $v0, 2
/* 7E334 8007D734 01024023 */  subu       $t0, $t0, $v0
/* 7E338 8007D738 00084080 */  sll        $t0, $t0, 2
/* 7E33C 8007D73C 01024021 */  addu       $t0, $t0, $v0
/* 7E340 8007D740 00084080 */  sll        $t0, $t0, 2
/* 7E344 8007D744 01024023 */  subu       $t0, $t0, $v0
/* 7E348 8007D748 3C09800F */  lui        $t1, %hi(gActors)
/* 7E34C 8007D74C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 7E350 8007D750 000840C0 */  sll        $t0, $t0, 3
/* 7E354 8007D754 01091821 */  addu       $v1, $t0, $t1
/* 7E358 8007D758 946A0094 */  lhu        $t2, 0x94($v1)
/* 7E35C 8007D75C 3C0D800E */  lui        $t5, %hi(D_800D9A54)
/* 7E360 8007D760 25AD9A54 */  addiu      $t5, $t5, %lo(D_800D9A54)
/* 7E364 8007D764 00156040 */  sll        $t4, $s5, 1
/* 7E368 8007D768 018D7021 */  addu       $t6, $t4, $t5
/* 7E36C 8007D76C 01475825 */  or         $t3, $t2, $a3
/* 7E370 8007D770 A46B0094 */  sh         $t3, 0x94($v1)
/* 7E374 8007D774 AC6E018C */  sw         $t6, 0x18c($v1)
/* 7E378 8007D778 960F0000 */  lhu        $t7, ($s0)
/* 7E37C 8007D77C 44918000 */  mtc1       $s1, $f16
/* 7E380 8007D780 000FC040 */  sll        $t8, $t7, 1
/* 7E384 8007D784 271902D2 */  addiu      $t9, $t8, 0x2d2
/* 7E388 8007D788 A4790084 */  sh         $t9, 0x84($v1)
/* 7E38C 8007D78C C66A00B4 */  lwc1       $f10, 0xb4($s3)
/* 7E390 8007D790 06210005 */  bgez       $s1, .L8007D7A8
/* 7E394 8007D794 468084A0 */   cvt.s.w   $f18, $f16
/* 7E398 8007D798 3C014F80 */  lui        $at, 0x4f80
/* 7E39C 8007D79C 44812000 */  mtc1       $at, $f4
/* 7E3A0 8007D7A0 00000000 */  nop
/* 7E3A4 8007D7A4 46049480 */  add.s      $f18, $f18, $f4
.L8007D7A8:
/* 7E3A8 8007D7A8 86680088 */  lh         $t0, 0x88($s3)
/* 7E3AC 8007D7AC 46125182 */  mul.s      $f6, $f10, $f18
/* 7E3B0 8007D7B0 44884000 */  mtc1       $t0, $f8
/* 7E3B4 8007D7B4 26100002 */  addiu      $s0, $s0, 2
/* 7E3B8 8007D7B8 46804420 */  cvt.s.w    $f16, $f8
/* 7E3BC 8007D7BC 44924000 */  mtc1       $s2, $f8
/* 7E3C0 8007D7C0 46103100 */  add.s      $f4, $f6, $f16
/* 7E3C4 8007D7C4 4449F800 */  cfc1       $t1, $31
/* 7E3C8 8007D7C8 00000000 */  nop
/* 7E3CC 8007D7CC 35210003 */  ori        $at, $t1, 3
/* 7E3D0 8007D7D0 38210002 */  xori       $at, $at, 2
/* 7E3D4 8007D7D4 44C1F800 */  ctc1       $at, $31
/* 7E3D8 8007D7D8 00000000 */  nop
/* 7E3DC 8007D7DC 460022A4 */  cvt.w.s    $f10, $f4
/* 7E3E0 8007D7E0 440A5000 */  mfc1       $t2, $f10
/* 7E3E4 8007D7E4 44C9F800 */  ctc1       $t1, $31
/* 7E3E8 8007D7E8 A46A0088 */  sh         $t2, 0x88($v1)
/* 7E3EC 8007D7EC 468041A0 */  cvt.s.w    $f6, $f8
/* 7E3F0 8007D7F0 866B008C */  lh         $t3, 0x8c($s3)
/* 7E3F4 8007D7F4 C67200B8 */  lwc1       $f18, 0xb8($s3)
/* 7E3F8 8007D7F8 448B2000 */  mtc1       $t3, $f4
/* 7E3FC 8007D7FC 46069402 */  mul.s      $f16, $f18, $f6
/* 7E400 8007D800 468022A0 */  cvt.s.w    $f10, $f4
/* 7E404 8007D804 460A8200 */  add.s      $f8, $f16, $f10
/* 7E408 8007D808 444CF800 */  cfc1       $t4, $31
/* 7E40C 8007D80C 00000000 */  nop
/* 7E410 8007D810 35810003 */  ori        $at, $t4, 3
/* 7E414 8007D814 38210002 */  xori       $at, $at, 2
/* 7E418 8007D818 44C1F800 */  ctc1       $at, $31
/* 7E41C 8007D81C 34018FFF */  ori        $at, $zero, 0x8fff
/* 7E420 8007D820 460044A4 */  cvt.w.s    $f18, $f8
/* 7E424 8007D824 440D9000 */  mfc1       $t5, $f18
/* 7E428 8007D828 44CCF800 */  ctc1       $t4, $31
/* 7E42C 8007D82C A46D008C */  sh         $t5, 0x8c($v1)
/* 7E430 8007D830 8E6E0158 */  lw         $t6, 0x158($s3)
/* 7E434 8007D834 96050000 */  lhu        $a1, ($s0)
/* 7E438 8007D838 022E8821 */  addu       $s1, $s1, $t6
/* 7E43C 8007D83C 322FFFFF */  andi       $t7, $s1, 0xffff
/* 7E440 8007D840 01E08825 */  or         $s1, $t7, $zero
/* 7E444 8007D844 14A1FF92 */  bne        $a1, $at, .L8007D690
/* 7E448 8007D848 00A01025 */   or        $v0, $a1, $zero
/* 7E44C 8007D84C A7B50042 */  sh         $s5, 0x42($sp)
.L8007D850:
/* 7E450 8007D850 8FBF003C */  lw         $ra, 0x3c($sp)
/* 7E454 8007D854 8FB00018 */  lw         $s0, 0x18($sp)
/* 7E458 8007D858 8FB1001C */  lw         $s1, 0x1c($sp)
/* 7E45C 8007D85C 8FB20020 */  lw         $s2, 0x20($sp)
/* 7E460 8007D860 8FB30024 */  lw         $s3, 0x24($sp)
/* 7E464 8007D864 8FB40028 */  lw         $s4, 0x28($sp)
/* 7E468 8007D868 8FB5002C */  lw         $s5, 0x2c($sp)
/* 7E46C 8007D86C 8FB60030 */  lw         $s6, 0x30($sp)
/* 7E470 8007D870 8FB70034 */  lw         $s7, 0x34($sp)
/* 7E474 8007D874 8FBE0038 */  lw         $fp, 0x38($sp)
/* 7E478 8007D878 03E00008 */  jr         $ra
/* 7E47C 8007D87C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8007D880
/* 7E480 8007D880 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7E484 8007D884 AFB60050 */  sw         $s6, 0x50($sp)
/* 7E488 8007D888 AFB40048 */  sw         $s4, 0x48($sp)
/* 7E48C 8007D88C 3094FFFF */  andi       $s4, $a0, 0xffff
/* 7E490 8007D890 24160198 */  addiu      $s6, $zero, 0x198
/* 7E494 8007D894 02960019 */  multu      $s4, $s6
/* 7E498 8007D898 AFB5004C */  sw         $s5, 0x4c($sp)
/* 7E49C 8007D89C 3C15800F */  lui        $s5, %hi(gActors)
/* 7E4A0 8007D8A0 26B5F510 */  addiu      $s5, $s5, %lo(gActors)
/* 7E4A4 8007D8A4 AFB20040 */  sw         $s2, 0x40($sp)
/* 7E4A8 8007D8A8 3C03800E */  lui        $v1, 0x800e
/* 7E4AC 8007D8AC AFBF0054 */  sw         $ra, 0x54($sp)
/* 7E4B0 8007D8B0 AFB30044 */  sw         $s3, 0x44($sp)
/* 7E4B4 8007D8B4 AFB1003C */  sw         $s1, 0x3c($sp)
/* 7E4B8 8007D8B8 AFB00038 */  sw         $s0, 0x38($sp)
/* 7E4BC 8007D8BC E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7E4C0 8007D8C0 E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7E4C4 8007D8C4 00007012 */  mflo       $t6
/* 7E4C8 8007D8C8 02AE9021 */  addu       $s2, $s5, $t6
/* 7E4CC 8007D8CC 8E4F0150 */  lw         $t7, 0x150($s2)
/* 7E4D0 8007D8D0 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7E4D4 8007D8D4 000FC080 */  sll        $t8, $t7, 2
/* 7E4D8 8007D8D8 00781821 */  addu       $v1, $v1, $t8
/* 7E4DC 8007D8DC 8C630F88 */  lw         $v1, 0xf88($v1)
/* 7E4E0 8007D8E0 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7E4E4 8007D8E4 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7E4E8 8007D8E8 E7B60024 */  swc1       $f22, 0x24($sp)
/* 7E4EC 8007D8EC E7B50018 */  swc1       $f21, 0x18($sp)
/* 7E4F0 8007D8F0 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7E4F4 8007D8F4 AFA40058 */  sw         $a0, 0x58($sp)
/* 7E4F8 8007D8F8 94700000 */  lhu        $s0, ($v1)
/* 7E4FC 8007D8FC 34138FFF */  ori        $s3, $zero, 0x8fff
/* 7E500 8007D900 44856000 */  mtc1       $a1, $f12
/* 7E504 8007D904 4480A000 */  mtc1       $zero, $f20
/* 7E508 8007D908 12700015 */  beq        $s3, $s0, .L8007D960
/* 7E50C 8007D90C 00608825 */   or        $s1, $v1, $zero
/* 7E510 8007D910 3C014004 */  lui        $at, 0x4004
/* 7E514 8007D914 4481B800 */  mtc1       $at, $f23
/* 7E518 8007D918 4480B000 */  mtc1       $zero, $f22
/* 7E51C 8007D91C 00000000 */  nop
/* 7E520 8007D920 32198000 */  andi       $t9, $s0, 0x8000
.L8007D924:
/* 7E524 8007D924 13200008 */  beqz       $t9, .L8007D948
/* 7E528 8007D928 00000000 */   nop
/* 7E52C 8007D92C 460061A1 */  cvt.d.s    $f6, $f12
/* 7E530 8007D930 00000000 */  nop
/* 7E534 8007D934 46363203 */  div.d      $f8, $f6, $f22
/* 7E538 8007D938 4600A121 */  cvt.d.s    $f4, $f20
/* 7E53C 8007D93C 46282280 */  add.d      $f10, $f4, $f8
/* 7E540 8007D940 10000002 */  b          .L8007D94C
/* 7E544 8007D944 46205520 */   cvt.s.d   $f20, $f10
.L8007D948:
/* 7E548 8007D948 460CA500 */  add.s      $f20, $f20, $f12
.L8007D94C:
/* 7E54C 8007D94C 96300002 */  lhu        $s0, 2($s1)
/* 7E550 8007D950 26310002 */  addiu      $s1, $s1, 2
/* 7E554 8007D954 1670FFF3 */  bne        $s3, $s0, .L8007D924
/* 7E558 8007D958 32198000 */   andi      $t9, $s0, 0x8000
/* 7E55C 8007D95C 00608825 */  or         $s1, $v1, $zero
.L8007D960:
/* 7E560 8007D960 3C014004 */  lui        $at, 0x4004
/* 7E564 8007D964 4481B800 */  mtc1       $at, $f23
/* 7E568 8007D968 3C01800F */  lui        $at, %hi(D_800ECFC0)
/* 7E56C 8007D96C C433CFC0 */  lwc1       $f19, %lo(D_800ECFC0)($at)
/* 7E570 8007D970 C432CFC4 */  lwc1       $f18, -0x303c($at)
/* 7E574 8007D974 46006621 */  cvt.d.s    $f24, $f12
/* 7E578 8007D978 4632C182 */  mul.d      $f6, $f24, $f18
/* 7E57C 8007D97C 4600A421 */  cvt.d.s    $f16, $f20
/* 7E580 8007D980 C64000B8 */  lwc1       $f0, 0xb8($s2)
/* 7E584 8007D984 3C014000 */  lui        $at, 0x4000
/* 7E588 8007D988 4480B000 */  mtc1       $zero, $f22
/* 7E58C 8007D98C 46268103 */  div.d      $f4, $f16, $f6
/* 7E590 8007D990 46000221 */  cvt.d.s    $f8, $f0
/* 7E594 8007D994 460CA401 */  sub.s      $f16, $f20, $f12
/* 7E598 8007D998 46008187 */  neg.s      $f6, $f16
/* 7E59C 8007D99C 46244282 */  mul.d      $f10, $f8, $f4
/* 7E5A0 8007D9A0 44814000 */  mtc1       $at, $f8
/* 7E5A4 8007D9A4 00000000 */  nop
/* 7E5A8 8007D9A8 46083103 */  div.s      $f4, $f6, $f8
/* 7E5AC 8007D9AC 462054A0 */  cvt.s.d    $f18, $f10
/* 7E5B0 8007D9B0 E65200B4 */  swc1       $f18, 0xb4($s2)
/* 7E5B4 8007D9B4 96300000 */  lhu        $s0, ($s1)
/* 7E5B8 8007D9B8 46040502 */  mul.s      $f20, $f0, $f4
/* 7E5BC 8007D9BC 00000000 */  nop
/* 7E5C0 8007D9C0 460C0682 */  mul.s      $f26, $f0, $f12
/* 7E5C4 8007D9C4 1270005D */  beq        $s3, $s0, .L8007DB3C
/* 7E5C8 8007D9C8 00000000 */   nop
/* 7E5CC 8007D9CC 32088000 */  andi       $t0, $s0, 0x8000
.L8007D9D0:
/* 7E5D0 8007D9D0 11000009 */  beqz       $t0, .L8007D9F8
/* 7E5D4 8007D9D4 00000000 */   nop
/* 7E5D8 8007D9D8 4636C283 */  div.d      $f10, $f24, $f22
/* 7E5DC 8007D9DC C65200B8 */  lwc1       $f18, 0xb8($s2)
/* 7E5E0 8007D9E0 4600A221 */  cvt.d.s    $f8, $f20
/* 7E5E4 8007D9E4 46009421 */  cvt.d.s    $f16, $f18
/* 7E5E8 8007D9E8 46305182 */  mul.d      $f6, $f10, $f16
/* 7E5EC 8007D9EC 46264100 */  add.d      $f4, $f8, $f6
/* 7E5F0 8007D9F0 1000004E */  b          .L8007DB2C
/* 7E5F4 8007D9F4 46202520 */   cvt.s.d   $f20, $f4
.L8007D9F8:
/* 7E5F8 8007D9F8 0C01F4A4 */  jal        func_8007D290
/* 7E5FC 8007D9FC 3284FFFF */   andi      $a0, $s4, 0xffff
/* 7E600 8007DA00 1040004F */  beqz       $v0, .L8007DB40
/* 7E604 8007DA04 8FBF0054 */   lw        $ra, 0x54($sp)
/* 7E608 8007DA08 00560019 */  multu      $v0, $s6
/* 7E60C 8007DA0C 00106040 */  sll        $t4, $s0, 1
/* 7E610 8007DA10 258D02D2 */  addiu      $t5, $t4, 0x2d2
/* 7E614 8007DA14 00004812 */  mflo       $t1
/* 7E618 8007DA18 02A91821 */  addu       $v1, $s5, $t1
/* 7E61C 8007DA1C 946A0094 */  lhu        $t2, 0x94($v1)
/* 7E620 8007DA20 A46D0084 */  sh         $t5, 0x84($v1)
/* 7E624 8007DA24 354B0001 */  ori        $t3, $t2, 1
/* 7E628 8007DA28 A46B0094 */  sh         $t3, 0x94($v1)
/* 7E62C 8007DA2C 864E0088 */  lh         $t6, 0x88($s2)
/* 7E630 8007DA30 00000000 */  nop
/* 7E634 8007DA34 448E9000 */  mtc1       $t6, $f18
/* 7E638 8007DA38 00000000 */  nop
/* 7E63C 8007DA3C 468092A0 */  cvt.s.w    $f10, $f18
/* 7E640 8007DA40 46145400 */  add.s      $f16, $f10, $f20
/* 7E644 8007DA44 444FF800 */  cfc1       $t7, $31
/* 7E648 8007DA48 00000000 */  nop
/* 7E64C 8007DA4C 35E10003 */  ori        $at, $t7, 3
/* 7E650 8007DA50 38210002 */  xori       $at, $at, 2
/* 7E654 8007DA54 44C1F800 */  ctc1       $at, $31
/* 7E658 8007DA58 3C014F80 */  lui        $at, 0x4f80
/* 7E65C 8007DA5C 46008224 */  cvt.w.s    $f8, $f16
/* 7E660 8007DA60 44184000 */  mfc1       $t8, $f8
/* 7E664 8007DA64 44CFF800 */  ctc1       $t7, $31
/* 7E668 8007DA68 A4780088 */  sh         $t8, 0x88($v1)
/* 7E66C 8007DA6C 8659008C */  lh         $t9, 0x8c($s2)
/* 7E670 8007DA70 00000000 */  nop
/* 7E674 8007DA74 A479008C */  sh         $t9, 0x8c($v1)
/* 7E678 8007DA78 9248009F */  lbu        $t0, 0x9f($s2)
/* 7E67C 8007DA7C 00000000 */  nop
/* 7E680 8007DA80 44883000 */  mtc1       $t0, $f6
/* 7E684 8007DA84 05010004 */  bgez       $t0, .L8007DA98
/* 7E688 8007DA88 46803120 */   cvt.s.w   $f4, $f6
/* 7E68C 8007DA8C 44819000 */  mtc1       $at, $f18
/* 7E690 8007DA90 00000000 */  nop
/* 7E694 8007DA94 46122100 */  add.s      $f4, $f4, $f18
.L8007DA98:
/* 7E698 8007DA98 46002021 */  cvt.d.s    $f0, $f4
/* 7E69C 8007DA9C 46200280 */  add.d      $f10, $f0, $f0
/* 7E6A0 8007DAA0 240A0001 */  addiu      $t2, $zero, 1
/* 7E6A4 8007DAA4 4449F800 */  cfc1       $t1, $31
/* 7E6A8 8007DAA8 44CAF800 */  ctc1       $t2, $31
/* 7E6AC 8007DAAC 3C0141E0 */  lui        $at, 0x41e0
/* 7E6B0 8007DAB0 46205424 */  cvt.w.d    $f16, $f10
/* 7E6B4 8007DAB4 444AF800 */  cfc1       $t2, $31
/* 7E6B8 8007DAB8 00000000 */  nop
/* 7E6BC 8007DABC 314A0078 */  andi       $t2, $t2, 0x78
/* 7E6C0 8007DAC0 11400013 */  beqz       $t2, .L8007DB10
/* 7E6C4 8007DAC4 00000000 */   nop
/* 7E6C8 8007DAC8 44818800 */  mtc1       $at, $f17
/* 7E6CC 8007DACC 44808000 */  mtc1       $zero, $f16
/* 7E6D0 8007DAD0 240A0001 */  addiu      $t2, $zero, 1
/* 7E6D4 8007DAD4 46305401 */  sub.d      $f16, $f10, $f16
/* 7E6D8 8007DAD8 3C018000 */  lui        $at, 0x8000
/* 7E6DC 8007DADC 44CAF800 */  ctc1       $t2, $31
/* 7E6E0 8007DAE0 00000000 */  nop
/* 7E6E4 8007DAE4 46208424 */  cvt.w.d    $f16, $f16
/* 7E6E8 8007DAE8 444AF800 */  cfc1       $t2, $31
/* 7E6EC 8007DAEC 00000000 */  nop
/* 7E6F0 8007DAF0 314A0078 */  andi       $t2, $t2, 0x78
/* 7E6F4 8007DAF4 15400004 */  bnez       $t2, .L8007DB08
/* 7E6F8 8007DAF8 00000000 */   nop
/* 7E6FC 8007DAFC 440A8000 */  mfc1       $t2, $f16
/* 7E700 8007DB00 10000007 */  b          .L8007DB20
/* 7E704 8007DB04 01415025 */   or        $t2, $t2, $at
.L8007DB08:
/* 7E708 8007DB08 10000005 */  b          .L8007DB20
/* 7E70C 8007DB0C 240AFFFF */   addiu     $t2, $zero, -1
.L8007DB10:
/* 7E710 8007DB10 440A8000 */  mfc1       $t2, $f16
/* 7E714 8007DB14 00000000 */  nop
/* 7E718 8007DB18 0540FFFB */  bltz       $t2, .L8007DB08
/* 7E71C 8007DB1C 00000000 */   nop
.L8007DB20:
/* 7E720 8007DB20 44C9F800 */  ctc1       $t1, $31
/* 7E724 8007DB24 A06A009F */  sb         $t2, 0x9f($v1)
/* 7E728 8007DB28 461AA500 */  add.s      $f20, $f20, $f26
.L8007DB2C:
/* 7E72C 8007DB2C 96300002 */  lhu        $s0, 2($s1)
/* 7E730 8007DB30 26310002 */  addiu      $s1, $s1, 2
/* 7E734 8007DB34 1670FFA6 */  bne        $s3, $s0, .L8007D9D0
/* 7E738 8007DB38 32088000 */   andi      $t0, $s0, 0x8000
.L8007DB3C:
/* 7E73C 8007DB3C 8FBF0054 */  lw         $ra, 0x54($sp)
.L8007DB40:
/* 7E740 8007DB40 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7E744 8007DB44 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7E748 8007DB48 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7E74C 8007DB4C C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7E750 8007DB50 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7E754 8007DB54 C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7E758 8007DB58 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7E75C 8007DB5C C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7E760 8007DB60 8FB00038 */  lw         $s0, 0x38($sp)
/* 7E764 8007DB64 8FB1003C */  lw         $s1, 0x3c($sp)
/* 7E768 8007DB68 8FB20040 */  lw         $s2, 0x40($sp)
/* 7E76C 8007DB6C 8FB30044 */  lw         $s3, 0x44($sp)
/* 7E770 8007DB70 8FB40048 */  lw         $s4, 0x48($sp)
/* 7E774 8007DB74 8FB5004C */  lw         $s5, 0x4c($sp)
/* 7E778 8007DB78 8FB60050 */  lw         $s6, 0x50($sp)
/* 7E77C 8007DB7C 03E00008 */  jr         $ra
/* 7E780 8007DB80 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007DB84
/* 7E784 8007DB84 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7E788 8007DB88 AFB70054 */  sw         $s7, 0x54($sp)
/* 7E78C 8007DB8C 3097FFFF */  andi       $s7, $a0, 0xffff
/* 7E790 8007DB90 00177080 */  sll        $t6, $s7, 2
/* 7E794 8007DB94 01D77023 */  subu       $t6, $t6, $s7
/* 7E798 8007DB98 000E7080 */  sll        $t6, $t6, 2
/* 7E79C 8007DB9C 01D77021 */  addu       $t6, $t6, $s7
/* 7E7A0 8007DBA0 AFBE0058 */  sw         $fp, 0x58($sp)
/* 7E7A4 8007DBA4 000E7080 */  sll        $t6, $t6, 2
/* 7E7A8 8007DBA8 3C1E800F */  lui        $fp, %hi(gActors)
/* 7E7AC 8007DBAC 01D77023 */  subu       $t6, $t6, $s7
/* 7E7B0 8007DBB0 27DEF510 */  addiu      $fp, $fp, %lo(gActors)
/* 7E7B4 8007DBB4 AFB00038 */  sw         $s0, 0x38($sp)
/* 7E7B8 8007DBB8 000E70C0 */  sll        $t6, $t6, 3
/* 7E7BC 8007DBBC 03CE8021 */  addu       $s0, $fp, $t6
/* 7E7C0 8007DBC0 8E0F0158 */  lw         $t7, 0x158($s0)
/* 7E7C4 8007DBC4 8E180160 */  lw         $t8, 0x160($s0)
/* 7E7C8 8007DBC8 AFBF005C */  sw         $ra, 0x5c($sp)
/* 7E7CC 8007DBCC 01F81021 */  addu       $v0, $t7, $t8
/* 7E7D0 8007DBD0 AFB60050 */  sw         $s6, 0x50($sp)
/* 7E7D4 8007DBD4 AFB5004C */  sw         $s5, 0x4c($sp)
/* 7E7D8 8007DBD8 AFB40048 */  sw         $s4, 0x48($sp)
/* 7E7DC 8007DBDC AFB30044 */  sw         $s3, 0x44($sp)
/* 7E7E0 8007DBE0 AFB20040 */  sw         $s2, 0x40($sp)
/* 7E7E4 8007DBE4 AFB1003C */  sw         $s1, 0x3c($sp)
/* 7E7E8 8007DBE8 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7E7EC 8007DBEC E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7E7F0 8007DBF0 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7E7F4 8007DBF4 E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7E7F8 8007DBF8 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7E7FC 8007DBFC E7B60024 */  swc1       $f22, 0x24($sp)
/* 7E800 8007DC00 E7B50018 */  swc1       $f21, 0x18($sp)
/* 7E804 8007DC04 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7E808 8007DC08 AFA40060 */  sw         $a0, 0x60($sp)
/* 7E80C 8007DC0C AE020158 */  sw         $v0, 0x158($s0)
/* 7E810 8007DC10 04410003 */  bgez       $v0, .L8007DC20
/* 7E814 8007DC14 AE000160 */   sw        $zero, 0x160($s0)
/* 7E818 8007DC18 AE000158 */  sw         $zero, 0x158($s0)
/* 7E81C 8007DC1C 00001025 */  or         $v0, $zero, $zero
.L8007DC20:
/* 7E820 8007DC20 8E03015C */  lw         $v1, 0x15c($s0)
/* 7E824 8007DC24 00000000 */  nop
/* 7E828 8007DC28 0062082A */  slt        $at, $v1, $v0
/* 7E82C 8007DC2C 10200003 */  beqz       $at, .L8007DC3C
/* 7E830 8007DC30 00000000 */   nop
/* 7E834 8007DC34 AE030158 */  sw         $v1, 0x158($s0)
/* 7E838 8007DC38 00601025 */  or         $v0, $v1, $zero
.L8007DC3C:
/* 7E83C 8007DC3C 0C01F338 */  jal        func_8007CCE0
/* 7E840 8007DC40 00402025 */   or        $a0, $v0, $zero
/* 7E844 8007DC44 3C014100 */  lui        $at, 0x4100
/* 7E848 8007DC48 44812000 */  mtc1       $at, $f4
/* 7E84C 8007DC4C C60C014C */  lwc1       $f12, 0x14c($s0)
/* 7E850 8007DC50 24110001 */  addiu      $s1, $zero, 1
/* 7E854 8007DC54 460C2181 */  sub.s      $f6, $f4, $f12
/* 7E858 8007DC58 3C16800E */  lui        $s6, 0x800e
/* 7E85C 8007DC5C 4448F800 */  cfc1       $t0, $31
/* 7E860 8007DC60 44D1F800 */  ctc1       $s1, $31
/* 7E864 8007DC64 00009825 */  or         $s3, $zero, $zero
/* 7E868 8007DC68 46003224 */  cvt.w.s    $f8, $f6
/* 7E86C 8007DC6C 3C014F00 */  lui        $at, 0x4f00
/* 7E870 8007DC70 4451F800 */  cfc1       $s1, $31
/* 7E874 8007DC74 26D60F00 */  addiu      $s6, $s6, 0xf00
/* 7E878 8007DC78 32310078 */  andi       $s1, $s1, 0x78
/* 7E87C 8007DC7C 12200012 */  beqz       $s1, .L8007DCC8
/* 7E880 8007DC80 00009025 */   or        $s2, $zero, $zero
/* 7E884 8007DC84 44814000 */  mtc1       $at, $f8
/* 7E888 8007DC88 24110001 */  addiu      $s1, $zero, 1
/* 7E88C 8007DC8C 46083201 */  sub.s      $f8, $f6, $f8
/* 7E890 8007DC90 3C018000 */  lui        $at, 0x8000
/* 7E894 8007DC94 44D1F800 */  ctc1       $s1, $31
/* 7E898 8007DC98 00000000 */  nop
/* 7E89C 8007DC9C 46004224 */  cvt.w.s    $f8, $f8
/* 7E8A0 8007DCA0 4451F800 */  cfc1       $s1, $31
/* 7E8A4 8007DCA4 00000000 */  nop
/* 7E8A8 8007DCA8 32310078 */  andi       $s1, $s1, 0x78
/* 7E8AC 8007DCAC 16200004 */  bnez       $s1, .L8007DCC0
/* 7E8B0 8007DCB0 00000000 */   nop
/* 7E8B4 8007DCB4 44114000 */  mfc1       $s1, $f8
/* 7E8B8 8007DCB8 10000007 */  b          .L8007DCD8
/* 7E8BC 8007DCBC 02218825 */   or        $s1, $s1, $at
.L8007DCC0:
/* 7E8C0 8007DCC0 10000005 */  b          .L8007DCD8
/* 7E8C4 8007DCC4 2411FFFF */   addiu     $s1, $zero, -1
.L8007DCC8:
/* 7E8C8 8007DCC8 44114000 */  mfc1       $s1, $f8
/* 7E8CC 8007DCCC 00000000 */  nop
/* 7E8D0 8007DCD0 0620FFFB */  bltz       $s1, .L8007DCC0
/* 7E8D4 8007DCD4 00000000 */   nop
.L8007DCD8:
/* 7E8D8 8007DCD8 8E140188 */  lw         $s4, 0x188($s0)
/* 7E8DC 8007DCDC 44C8F800 */  ctc1       $t0, $31
/* 7E8E0 8007DCE0 44805000 */  mtc1       $zero, $f10
/* 7E8E4 8007DCE4 3229FFFF */  andi       $t1, $s1, 0xffff
/* 7E8E8 8007DCE8 01208825 */  or         $s1, $t1, $zero
/* 7E8EC 8007DCEC 06810004 */  bgez       $s4, .L8007DD00
/* 7E8F0 8007DCF0 00145403 */   sra       $t2, $s4, 0x10
/* 7E8F4 8007DCF4 3401FFFF */  ori        $at, $zero, 0xffff
/* 7E8F8 8007DCF8 00340821 */  addu       $at, $at, $s4
/* 7E8FC 8007DCFC 00015403 */  sra        $t2, $at, 0x10
.L8007DD00:
/* 7E900 8007DD00 000A5C00 */  sll        $t3, $t2, 0x10
/* 7E904 8007DD04 000BA403 */  sra        $s4, $t3, 0x10
/* 7E908 8007DD08 04010005 */  bgez       $zero, .L8007DD20
/* 7E90C 8007DD0C 46805420 */   cvt.s.w   $f16, $f10
/* 7E910 8007DD10 3C014F80 */  lui        $at, 0x4f80
/* 7E914 8007DD14 44819000 */  mtc1       $at, $f18
/* 7E918 8007DD18 00000000 */  nop
/* 7E91C 8007DD1C 46128400 */  add.s      $f16, $f16, $f18
.L8007DD20:
/* 7E920 8007DD20 460C803C */  c.lt.s     $f16, $f12
/* 7E924 8007DD24 3C014110 */  lui        $at, 0x4110
/* 7E928 8007DD28 45000072 */  bc1f       .L8007DEF4
/* 7E92C 8007DD2C 3C15800C */   lui       $s5, 0x800c
/* 7E930 8007DD30 4481D000 */  mtc1       $at, $f26
/* 7E934 8007DD34 3C014000 */  lui        $at, 0x4000
/* 7E938 8007DD38 4481C000 */  mtc1       $at, $f24
/* 7E93C 8007DD3C 3C014780 */  lui        $at, 0x4780
/* 7E940 8007DD40 4481B000 */  mtc1       $at, $f22
/* 7E944 8007DD44 3C014012 */  lui        $at, 0x4012
/* 7E948 8007DD48 4481A800 */  mtc1       $at, $f21
/* 7E94C 8007DD4C 4480A000 */  mtc1       $zero, $f20
/* 7E950 8007DD50 26B5CCD0 */  addiu      $s5, $s5, -0x3330
.L8007DD54:
/* 7E954 8007DD54 0C01F4A4 */  jal        func_8007D290
/* 7E958 8007DD58 32E4FFFF */   andi      $a0, $s7, 0xffff
/* 7E95C 8007DD5C 10400065 */  beqz       $v0, .L8007DEF4
/* 7E960 8007DD60 3C014F80 */   lui       $at, 0x4f80
/* 7E964 8007DD64 C60C014C */  lwc1       $f12, 0x14c($s0)
/* 7E968 8007DD68 44923000 */  mtc1       $s2, $f6
/* 7E96C 8007DD6C C60200B4 */  lwc1       $f2, 0xb4($s0)
/* 7E970 8007DD70 46186103 */  div.s      $f4, $f12, $f24
/* 7E974 8007DD74 06410004 */  bgez       $s2, .L8007DD88
/* 7E978 8007DD78 46803220 */   cvt.s.w   $f8, $f6
/* 7E97C 8007DD7C 44815000 */  mtc1       $at, $f10
/* 7E980 8007DD80 00000000 */  nop
/* 7E984 8007DD84 460A4200 */  add.s      $f8, $f8, $f10
.L8007DD88:
/* 7E988 8007DD88 46086481 */  sub.s      $f18, $f12, $f8
/* 7E98C 8007DD8C 328F03FF */  andi       $t7, $s4, 0x3ff
/* 7E990 8007DD90 46122401 */  sub.s      $f16, $f4, $f18
/* 7E994 8007DD94 000FC080 */  sll        $t8, $t7, 2
/* 7E998 8007DD98 461A8182 */  mul.s      $f6, $f16, $f26
/* 7E99C 8007DD9C 46001121 */  cvt.d.s    $f4, $f2
/* 7E9A0 8007DDA0 02B8C821 */  addu       $t9, $s5, $t8
/* 7E9A4 8007DDA4 8E0E0088 */  lw         $t6, 0x88($s0)
/* 7E9A8 8007DDA8 46023282 */  mul.s      $f10, $f6, $f2
/* 7E9AC 8007DDAC 448E3000 */  mtc1       $t6, $f6
/* 7E9B0 8007DDB0 00026880 */  sll        $t5, $v0, 2
/* 7E9B4 8007DDB4 01A26823 */  subu       $t5, $t5, $v0
/* 7E9B8 8007DDB8 46342482 */  mul.d      $f18, $f4, $f20
/* 7E9BC 8007DDBC C7240000 */  lwc1       $f4, ($t9)
/* 7E9C0 8007DDC0 46005221 */  cvt.d.s    $f8, $f10
/* 7E9C4 8007DDC4 000D6880 */  sll        $t5, $t5, 2
/* 7E9C8 8007DDC8 01A26821 */  addu       $t5, $t5, $v0
/* 7E9CC 8007DDCC 46289400 */  add.d      $f16, $f18, $f8
/* 7E9D0 8007DDD0 000D6880 */  sll        $t5, $t5, 2
/* 7E9D4 8007DDD4 4604B482 */  mul.s      $f18, $f22, $f4
/* 7E9D8 8007DDD8 46208020 */  cvt.s.d    $f0, $f16
/* 7E9DC 8007DDDC 01A26823 */  subu       $t5, $t5, $v0
/* 7E9E0 8007DDE0 000D68C0 */  sll        $t5, $t5, 3
/* 7E9E4 8007DDE4 46120202 */  mul.s      $f8, $f0, $f18
/* 7E9E8 8007DDE8 268BFF00 */  addiu      $t3, $s4, -0x100
/* 7E9EC 8007DDEC 03CD1821 */  addu       $v1, $fp, $t5
/* 7E9F0 8007DDF0 316C03FF */  andi       $t4, $t3, 0x3ff
/* 7E9F4 8007DDF4 468032A0 */  cvt.s.w    $f10, $f6
/* 7E9F8 8007DDF8 000C6880 */  sll        $t5, $t4, 2
/* 7E9FC 8007DDFC 02AD7021 */  addu       $t6, $s5, $t5
/* 7EA00 8007DE00 46085400 */  add.s      $f16, $f10, $f8
/* 7EA04 8007DE04 C5CA0000 */  lwc1       $f10, ($t6)
/* 7EA08 8007DE08 4448F800 */  cfc1       $t0, $31
/* 7EA0C 8007DE0C 02D1C821 */  addu       $t9, $s6, $s1
/* 7EA10 8007DE10 35010003 */  ori        $at, $t0, 3
/* 7EA14 8007DE14 38210002 */  xori       $at, $at, 2
/* 7EA18 8007DE18 44C1F800 */  ctc1       $at, $31
/* 7EA1C 8007DE1C 93240000 */  lbu        $a0, ($t9)
/* 7EA20 8007DE20 460081A4 */  cvt.w.s    $f6, $f16
/* 7EA24 8007DE24 26520001 */  addiu      $s2, $s2, 1
/* 7EA28 8007DE28 44C8F800 */  ctc1       $t0, $31
/* 7EA2C 8007DE2C 44093000 */  mfc1       $t1, $f6
/* 7EA30 8007DE30 460AB202 */  mul.s      $f8, $f22, $f10
/* 7EA34 8007DE34 AC690088 */  sw         $t1, 0x88($v1)
/* 7EA38 8007DE38 8E0A008C */  lw         $t2, 0x8c($s0)
/* 7EA3C 8007DE3C 324CFFFF */  andi       $t4, $s2, 0xffff
/* 7EA40 8007DE40 448A2000 */  mtc1       $t2, $f4
/* 7EA44 8007DE44 46080402 */  mul.s      $f16, $f0, $f8
/* 7EA48 8007DE48 01809025 */  or         $s2, $t4, $zero
/* 7EA4C 8007DE4C 00044040 */  sll        $t0, $a0, 1
/* 7EA50 8007DE50 44925000 */  mtc1       $s2, $f10
/* 7EA54 8007DE54 468024A0 */  cvt.s.w    $f18, $f4
/* 7EA58 8007DE58 250902D2 */  addiu      $t1, $t0, 0x2d2
/* 7EA5C 8007DE5C A4690084 */  sh         $t1, 0x84($v1)
/* 7EA60 8007DE60 46109180 */  add.s      $f6, $f18, $f16
/* 7EA64 8007DE64 444FF800 */  cfc1       $t7, $31
/* 7EA68 8007DE68 00000000 */  nop
/* 7EA6C 8007DE6C 35E10003 */  ori        $at, $t7, 3
/* 7EA70 8007DE70 38210002 */  xori       $at, $at, 2
/* 7EA74 8007DE74 44C1F800 */  ctc1       $at, $31
/* 7EA78 8007DE78 2A210007 */  slti       $at, $s1, 7
/* 7EA7C 8007DE7C 46003124 */  cvt.w.s    $f4, $f6
/* 7EA80 8007DE80 26310001 */  addiu      $s1, $s1, 1
/* 7EA84 8007DE84 44182000 */  mfc1       $t8, $f4
/* 7EA88 8007DE88 44CFF800 */  ctc1       $t7, $31
/* 7EA8C 8007DE8C 10200005 */  beqz       $at, .L8007DEA4
/* 7EA90 8007DE90 AC78008C */   sw        $t8, 0x8c($v1)
/* 7EA94 8007DE94 14800003 */  bnez       $a0, .L8007DEA4
/* 7EA98 8007DE98 00000000 */   nop
/* 7EA9C 8007DE9C 12600003 */  beqz       $s3, .L8007DEAC
/* 7EAA0 8007DEA0 00000000 */   nop
.L8007DEA4:
/* 7EAA4 8007DEA4 10000005 */  b          .L8007DEBC
/* 7EAA8 8007DEA8 24130001 */   addiu     $s3, $zero, 1
.L8007DEAC:
/* 7EAAC 8007DEAC 8C6A018C */  lw         $t2, 0x18c($v1)
/* 7EAB0 8007DEB0 00000000 */  nop
/* 7EAB4 8007DEB4 254B0008 */  addiu      $t3, $t2, 8
/* 7EAB8 8007DEB8 AC6B018C */  sw         $t3, 0x18c($v1)
.L8007DEBC:
/* 7EABC 8007DEBC 322DFFFF */  andi       $t5, $s1, 0xffff
/* 7EAC0 8007DEC0 01A08825 */  or         $s1, $t5, $zero
/* 7EAC4 8007DEC4 05810005 */  bgez       $t4, .L8007DEDC
/* 7EAC8 8007DEC8 46805220 */   cvt.s.w   $f8, $f10
/* 7EACC 8007DECC 3C014F80 */  lui        $at, 0x4f80
/* 7EAD0 8007DED0 44819000 */  mtc1       $at, $f18
/* 7EAD4 8007DED4 00000000 */  nop
/* 7EAD8 8007DED8 46124200 */  add.s      $f8, $f8, $f18
.L8007DEDC:
/* 7EADC 8007DEDC C610014C */  lwc1       $f16, 0x14c($s0)
/* 7EAE0 8007DEE0 00000000 */  nop
/* 7EAE4 8007DEE4 4610403C */  c.lt.s     $f8, $f16
/* 7EAE8 8007DEE8 00000000 */  nop
/* 7EAEC 8007DEEC 4501FF99 */  bc1t       .L8007DD54
/* 7EAF0 8007DEF0 00000000 */   nop
.L8007DEF4:
/* 7EAF4 8007DEF4 8FBF005C */  lw         $ra, 0x5c($sp)
/* 7EAF8 8007DEF8 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7EAFC 8007DEFC C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7EB00 8007DF00 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7EB04 8007DF04 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7EB08 8007DF08 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7EB0C 8007DF0C C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7EB10 8007DF10 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7EB14 8007DF14 C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7EB18 8007DF18 8FB00038 */  lw         $s0, 0x38($sp)
/* 7EB1C 8007DF1C 8FB1003C */  lw         $s1, 0x3c($sp)
/* 7EB20 8007DF20 8FB20040 */  lw         $s2, 0x40($sp)
/* 7EB24 8007DF24 8FB30044 */  lw         $s3, 0x44($sp)
/* 7EB28 8007DF28 8FB40048 */  lw         $s4, 0x48($sp)
/* 7EB2C 8007DF2C 8FB5004C */  lw         $s5, 0x4c($sp)
/* 7EB30 8007DF30 8FB60050 */  lw         $s6, 0x50($sp)
/* 7EB34 8007DF34 8FB70054 */  lw         $s7, 0x54($sp)
/* 7EB38 8007DF38 8FBE0058 */  lw         $fp, 0x58($sp)
/* 7EB3C 8007DF3C 03E00008 */  jr         $ra
/* 7EB40 8007DF40 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8007DF44
/* 7EB44 8007DF44 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7EB48 8007DF48 000E7880 */  sll        $t7, $t6, 2
/* 7EB4C 8007DF4C 01EE7823 */  subu       $t7, $t7, $t6
/* 7EB50 8007DF50 000F7880 */  sll        $t7, $t7, 2
/* 7EB54 8007DF54 01EE7821 */  addu       $t7, $t7, $t6
/* 7EB58 8007DF58 000F7880 */  sll        $t7, $t7, 2
/* 7EB5C 8007DF5C 01EE7823 */  subu       $t7, $t7, $t6
/* 7EB60 8007DF60 3C18800F */  lui        $t8, %hi(gActors)
/* 7EB64 8007DF64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7EB68 8007DF68 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7EB6C 8007DF6C 000F78C0 */  sll        $t7, $t7, 3
/* 7EB70 8007DF70 01F82821 */  addu       $a1, $t7, $t8
/* 7EB74 8007DF74 C4A4014C */  lwc1       $f4, 0x14c($a1)
/* 7EB78 8007DF78 C4A60134 */  lwc1       $f6, 0x134($a1)
/* 7EB7C 8007DF7C 8CB90150 */  lw         $t9, 0x150($a1)
/* 7EB80 8007DF80 46062200 */  add.s      $f8, $f4, $f6
/* 7EB84 8007DF84 AFA40040 */  sw         $a0, 0x40($sp)
/* 7EB88 8007DF88 33288000 */  andi       $t0, $t9, 0x8000
/* 7EB8C 8007DF8C 01C02025 */  or         $a0, $t6, $zero
/* 7EB90 8007DF90 AFBF002C */  sw         $ra, 0x2c($sp)
/* 7EB94 8007DF94 AFB10028 */  sw         $s1, 0x28($sp)
/* 7EB98 8007DF98 AFB00024 */  sw         $s0, 0x24($sp)
/* 7EB9C 8007DF9C E7B70018 */  swc1       $f23, 0x18($sp)
/* 7EBA0 8007DFA0 E7B6001C */  swc1       $f22, 0x1c($sp)
/* 7EBA4 8007DFA4 E7B50010 */  swc1       $f21, 0x10($sp)
/* 7EBA8 8007DFA8 E7B40014 */  swc1       $f20, 0x14($sp)
/* 7EBAC 8007DFAC 11000003 */  beqz       $t0, .L8007DFBC
/* 7EBB0 8007DFB0 E4A8014C */   swc1      $f8, 0x14c($a1)
/* 7EBB4 8007DFB4 1000028E */  b          .L8007E9F0
/* 7EBB8 8007DFB8 A4A00094 */   sh        $zero, 0x94($a1)
.L8007DFBC:
/* 7EBBC 8007DFBC 44806000 */  mtc1       $zero, $f12
/* 7EBC0 8007DFC0 C4A0014C */  lwc1       $f0, 0x14c($a1)
/* 7EBC4 8007DFC4 4480A000 */  mtc1       $zero, $f20
/* 7EBC8 8007DFC8 460C003C */  c.lt.s     $f0, $f12
/* 7EBCC 8007DFCC 00003025 */  or         $a2, $zero, $zero
/* 7EBD0 8007DFD0 45000097 */  bc1f       .L8007E230
/* 7EBD4 8007DFD4 2411035C */   addiu     $s1, $zero, 0x35c
/* 7EBD8 8007DFD8 C4AA0138 */  lwc1       $f10, 0x138($a1)
/* 7EBDC 8007DFDC 3C014110 */  lui        $at, 0x4110
/* 7EBE0 8007DFE0 460A6032 */  c.eq.s     $f12, $f10
/* 7EBE4 8007DFE4 00000000 */  nop
/* 7EBE8 8007DFE8 45000019 */  bc1f       .L8007E050
/* 7EBEC 8007DFEC 00000000 */   nop
/* 7EBF0 8007DFF0 C4B0013C */  lwc1       $f16, 0x13c($a1)
/* 7EBF4 8007DFF4 00000000 */  nop
/* 7EBF8 8007DFF8 46106032 */  c.eq.s     $f12, $f16
/* 7EBFC 8007DFFC 00000000 */  nop
/* 7EC00 8007E000 45000013 */  bc1f       .L8007E050
/* 7EC04 8007E004 00000000 */   nop
/* 7EC08 8007E008 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7EC0C 8007E00C 00000000 */  nop
/* 7EC10 8007E010 46126032 */  c.eq.s     $f12, $f18
/* 7EC14 8007E014 00000000 */  nop
/* 7EC18 8007E018 4500000D */  bc1f       .L8007E050
/* 7EC1C 8007E01C 00000000 */   nop
/* 7EC20 8007E020 C4A40144 */  lwc1       $f4, 0x144($a1)
/* 7EC24 8007E024 00000000 */  nop
/* 7EC28 8007E028 46046032 */  c.eq.s     $f12, $f4
/* 7EC2C 8007E02C 00000000 */  nop
/* 7EC30 8007E030 45000007 */  bc1f       .L8007E050
/* 7EC34 8007E034 00000000 */   nop
/* 7EC38 8007E038 C4A60148 */  lwc1       $f6, 0x148($a1)
/* 7EC3C 8007E03C 00000000 */  nop
/* 7EC40 8007E040 46066032 */  c.eq.s     $f12, $f6
/* 7EC44 8007E044 00000000 */  nop
/* 7EC48 8007E048 45010076 */  bc1t       .L8007E224
/* 7EC4C 8007E04C 00000000 */   nop
.L8007E050:
/* 7EC50 8007E050 44811000 */  mtc1       $at, $f2
/* 7EC54 8007E054 3C013F80 */  lui        $at, 0x3f80
/* 7EC58 8007E058 44817000 */  mtc1       $at, $f14
/* 7EC5C 8007E05C C4A80148 */  lwc1       $f8, 0x148($a1)
/* 7EC60 8007E060 E4A2014C */  swc1       $f2, 0x14c($a1)
/* 7EC64 8007E064 460E4281 */  sub.s      $f10, $f8, $f14
/* 7EC68 8007E068 E4AA0148 */  swc1       $f10, 0x148($a1)
/* 7EC6C 8007E06C C4B00148 */  lwc1       $f16, 0x148($a1)
/* 7EC70 8007E070 00000000 */  nop
/* 7EC74 8007E074 460C803C */  c.lt.s     $f16, $f12
/* 7EC78 8007E078 00000000 */  nop
/* 7EC7C 8007E07C 450000C3 */  bc1f       .L8007E38C
/* 7EC80 8007E080 00000000 */   nop
/* 7EC84 8007E084 C4B20138 */  lwc1       $f18, 0x138($a1)
/* 7EC88 8007E088 00000000 */  nop
/* 7EC8C 8007E08C 46126032 */  c.eq.s     $f12, $f18
/* 7EC90 8007E090 00000000 */  nop
/* 7EC94 8007E094 45000013 */  bc1f       .L8007E0E4
/* 7EC98 8007E098 00000000 */   nop
/* 7EC9C 8007E09C C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7ECA0 8007E0A0 00000000 */  nop
/* 7ECA4 8007E0A4 46046032 */  c.eq.s     $f12, $f4
/* 7ECA8 8007E0A8 00000000 */  nop
/* 7ECAC 8007E0AC 4500000D */  bc1f       .L8007E0E4
/* 7ECB0 8007E0B0 00000000 */   nop
/* 7ECB4 8007E0B4 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7ECB8 8007E0B8 00000000 */  nop
/* 7ECBC 8007E0BC 46066032 */  c.eq.s     $f12, $f6
/* 7ECC0 8007E0C0 00000000 */  nop
/* 7ECC4 8007E0C4 45000007 */  bc1f       .L8007E0E4
/* 7ECC8 8007E0C8 00000000 */   nop
/* 7ECCC 8007E0CC C4A80144 */  lwc1       $f8, 0x144($a1)
/* 7ECD0 8007E0D0 00000000 */  nop
/* 7ECD4 8007E0D4 46086032 */  c.eq.s     $f12, $f8
/* 7ECD8 8007E0D8 00000000 */  nop
/* 7ECDC 8007E0DC 4501004E */  bc1t       .L8007E218
/* 7ECE0 8007E0E0 00000000 */   nop
.L8007E0E4:
/* 7ECE4 8007E0E4 C4AA0144 */  lwc1       $f10, 0x144($a1)
/* 7ECE8 8007E0E8 E4A20148 */  swc1       $f2, 0x148($a1)
/* 7ECEC 8007E0EC 460E5401 */  sub.s      $f16, $f10, $f14
/* 7ECF0 8007E0F0 E4B00144 */  swc1       $f16, 0x144($a1)
/* 7ECF4 8007E0F4 C4B20144 */  lwc1       $f18, 0x144($a1)
/* 7ECF8 8007E0F8 00000000 */  nop
/* 7ECFC 8007E0FC 460C903C */  c.lt.s     $f18, $f12
/* 7ED00 8007E100 00000000 */  nop
/* 7ED04 8007E104 450000A1 */  bc1f       .L8007E38C
/* 7ED08 8007E108 00000000 */   nop
/* 7ED0C 8007E10C C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7ED10 8007E110 00000000 */  nop
/* 7ED14 8007E114 46046032 */  c.eq.s     $f12, $f4
/* 7ED18 8007E118 00000000 */  nop
/* 7ED1C 8007E11C 4500000D */  bc1f       .L8007E154
/* 7ED20 8007E120 00000000 */   nop
/* 7ED24 8007E124 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7ED28 8007E128 00000000 */  nop
/* 7ED2C 8007E12C 46066032 */  c.eq.s     $f12, $f6
/* 7ED30 8007E130 00000000 */  nop
/* 7ED34 8007E134 45000007 */  bc1f       .L8007E154
/* 7ED38 8007E138 00000000 */   nop
/* 7ED3C 8007E13C C4A80140 */  lwc1       $f8, 0x140($a1)
/* 7ED40 8007E140 00000000 */  nop
/* 7ED44 8007E144 46086032 */  c.eq.s     $f12, $f8
/* 7ED48 8007E148 00000000 */  nop
/* 7ED4C 8007E14C 45010030 */  bc1t       .L8007E210
/* 7ED50 8007E150 00000000 */   nop
.L8007E154:
/* 7ED54 8007E154 C4AA0140 */  lwc1       $f10, 0x140($a1)
/* 7ED58 8007E158 E4A20144 */  swc1       $f2, 0x144($a1)
/* 7ED5C 8007E15C 460E5401 */  sub.s      $f16, $f10, $f14
/* 7ED60 8007E160 E4B00140 */  swc1       $f16, 0x140($a1)
/* 7ED64 8007E164 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7ED68 8007E168 00000000 */  nop
/* 7ED6C 8007E16C 460C903C */  c.lt.s     $f18, $f12
/* 7ED70 8007E170 00000000 */  nop
/* 7ED74 8007E174 45000085 */  bc1f       .L8007E38C
/* 7ED78 8007E178 00000000 */   nop
/* 7ED7C 8007E17C C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7ED80 8007E180 00000000 */  nop
/* 7ED84 8007E184 46046032 */  c.eq.s     $f12, $f4
/* 7ED88 8007E188 00000000 */  nop
/* 7ED8C 8007E18C 45000007 */  bc1f       .L8007E1AC
/* 7ED90 8007E190 00000000 */   nop
/* 7ED94 8007E194 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7ED98 8007E198 00000000 */  nop
/* 7ED9C 8007E19C 46066032 */  c.eq.s     $f12, $f6
/* 7EDA0 8007E1A0 00000000 */  nop
/* 7EDA4 8007E1A4 45010018 */  bc1t       .L8007E208
/* 7EDA8 8007E1A8 00000000 */   nop
.L8007E1AC:
/* 7EDAC 8007E1AC C4AA013C */  lwc1       $f10, 0x13c($a1)
/* 7EDB0 8007E1B0 3C0140A0 */  lui        $at, 0x40a0
/* 7EDB4 8007E1B4 460E5401 */  sub.s      $f16, $f10, $f14
/* 7EDB8 8007E1B8 44814000 */  mtc1       $at, $f8
/* 7EDBC 8007E1BC E4B0013C */  swc1       $f16, 0x13c($a1)
/* 7EDC0 8007E1C0 C4B2013C */  lwc1       $f18, 0x13c($a1)
/* 7EDC4 8007E1C4 E4A80140 */  swc1       $f8, 0x140($a1)
/* 7EDC8 8007E1C8 460C903C */  c.lt.s     $f18, $f12
/* 7EDCC 8007E1CC 00000000 */  nop
/* 7EDD0 8007E1D0 4500006E */  bc1f       .L8007E38C
/* 7EDD4 8007E1D4 00000000 */   nop
/* 7EDD8 8007E1D8 C4A00138 */  lwc1       $f0, 0x138($a1)
/* 7EDDC 8007E1DC 00000000 */  nop
/* 7EDE0 8007E1E0 46006032 */  c.eq.s     $f12, $f0
/* 7EDE4 8007E1E4 00000000 */  nop
/* 7EDE8 8007E1E8 45010005 */  bc1t       .L8007E200
/* 7EDEC 8007E1EC 00000000 */   nop
/* 7EDF0 8007E1F0 460E0101 */  sub.s      $f4, $f0, $f14
/* 7EDF4 8007E1F4 E4A2013C */  swc1       $f2, 0x13c($a1)
/* 7EDF8 8007E1F8 10000064 */  b          .L8007E38C
/* 7EDFC 8007E1FC E4A40138 */   swc1      $f4, 0x138($a1)
.L8007E200:
/* 7EE00 8007E200 10000062 */  b          .L8007E38C
/* 7EE04 8007E204 E4AC013C */   swc1      $f12, 0x13c($a1)
.L8007E208:
/* 7EE08 8007E208 10000060 */  b          .L8007E38C
/* 7EE0C 8007E20C E4AC0140 */   swc1      $f12, 0x140($a1)
.L8007E210:
/* 7EE10 8007E210 1000005E */  b          .L8007E38C
/* 7EE14 8007E214 E4AC0144 */   swc1      $f12, 0x144($a1)
.L8007E218:
/* 7EE18 8007E218 E4AC0148 */  swc1       $f12, 0x148($a1)
/* 7EE1C 8007E21C 1000005C */  b          .L8007E390
/* 7EE20 8007E220 8CA70188 */   lw        $a3, 0x188($a1)
.L8007E224:
/* 7EE24 8007E224 E4AC014C */  swc1       $f12, 0x14c($a1)
/* 7EE28 8007E228 10000059 */  b          .L8007E390
/* 7EE2C 8007E22C 8CA70188 */   lw        $a3, 0x188($a1)
.L8007E230:
/* 7EE30 8007E230 3C014110 */  lui        $at, 0x4110
/* 7EE34 8007E234 44811000 */  mtc1       $at, $f2
/* 7EE38 8007E238 00000000 */  nop
/* 7EE3C 8007E23C 4600103C */  c.lt.s     $f2, $f0
/* 7EE40 8007E240 00000000 */  nop
/* 7EE44 8007E244 45000051 */  bc1f       .L8007E38C
/* 7EE48 8007E248 00000000 */   nop
/* 7EE4C 8007E24C C4A60138 */  lwc1       $f6, 0x138($a1)
/* 7EE50 8007E250 00000000 */  nop
/* 7EE54 8007E254 46061032 */  c.eq.s     $f2, $f6
/* 7EE58 8007E258 00000000 */  nop
/* 7EE5C 8007E25C 4500001D */  bc1f       .L8007E2D4
/* 7EE60 8007E260 3C013F80 */   lui       $at, 0x3f80
/* 7EE64 8007E264 C4A8013C */  lwc1       $f8, 0x13c($a1)
/* 7EE68 8007E268 3C0140A0 */  lui        $at, 0x40a0
/* 7EE6C 8007E26C 46081032 */  c.eq.s     $f2, $f8
/* 7EE70 8007E270 00000000 */  nop
/* 7EE74 8007E274 45000016 */  bc1f       .L8007E2D0
/* 7EE78 8007E278 00000000 */   nop
/* 7EE7C 8007E27C 44815000 */  mtc1       $at, $f10
/* 7EE80 8007E280 C4B00140 */  lwc1       $f16, 0x140($a1)
/* 7EE84 8007E284 00000000 */  nop
/* 7EE88 8007E288 46105032 */  c.eq.s     $f10, $f16
/* 7EE8C 8007E28C 00000000 */  nop
/* 7EE90 8007E290 45000010 */  bc1f       .L8007E2D4
/* 7EE94 8007E294 3C013F80 */   lui       $at, 0x3f80
/* 7EE98 8007E298 C4B20144 */  lwc1       $f18, 0x144($a1)
/* 7EE9C 8007E29C 00000000 */  nop
/* 7EEA0 8007E2A0 46121032 */  c.eq.s     $f2, $f18
/* 7EEA4 8007E2A4 00000000 */  nop
/* 7EEA8 8007E2A8 4500000A */  bc1f       .L8007E2D4
/* 7EEAC 8007E2AC 3C013F80 */   lui       $at, 0x3f80
/* 7EEB0 8007E2B0 C4A40148 */  lwc1       $f4, 0x148($a1)
/* 7EEB4 8007E2B4 00000000 */  nop
/* 7EEB8 8007E2B8 46041032 */  c.eq.s     $f2, $f4
/* 7EEBC 8007E2BC 00000000 */  nop
/* 7EEC0 8007E2C0 45000004 */  bc1f       .L8007E2D4
/* 7EEC4 8007E2C4 3C013F80 */   lui       $at, 0x3f80
/* 7EEC8 8007E2C8 10000030 */  b          .L8007E38C
/* 7EECC 8007E2CC E4A2014C */   swc1      $f2, 0x14c($a1)
.L8007E2D0:
/* 7EED0 8007E2D0 3C013F80 */  lui        $at, 0x3f80
.L8007E2D4:
/* 7EED4 8007E2D4 44817000 */  mtc1       $at, $f14
/* 7EED8 8007E2D8 C4A60148 */  lwc1       $f6, 0x148($a1)
/* 7EEDC 8007E2DC E4AC014C */  swc1       $f12, 0x14c($a1)
/* 7EEE0 8007E2E0 460E3200 */  add.s      $f8, $f6, $f14
/* 7EEE4 8007E2E4 E4A80148 */  swc1       $f8, 0x148($a1)
/* 7EEE8 8007E2E8 C4AA0148 */  lwc1       $f10, 0x148($a1)
/* 7EEEC 8007E2EC 00000000 */  nop
/* 7EEF0 8007E2F0 460A103C */  c.lt.s     $f2, $f10
/* 7EEF4 8007E2F4 00000000 */  nop
/* 7EEF8 8007E2F8 45000024 */  bc1f       .L8007E38C
/* 7EEFC 8007E2FC 00000000 */   nop
/* 7EF00 8007E300 C4B00144 */  lwc1       $f16, 0x144($a1)
/* 7EF04 8007E304 E4AC0148 */  swc1       $f12, 0x148($a1)
/* 7EF08 8007E308 460E8480 */  add.s      $f18, $f16, $f14
/* 7EF0C 8007E30C E4B20144 */  swc1       $f18, 0x144($a1)
/* 7EF10 8007E310 C4A40144 */  lwc1       $f4, 0x144($a1)
/* 7EF14 8007E314 00000000 */  nop
/* 7EF18 8007E318 4604103C */  c.lt.s     $f2, $f4
/* 7EF1C 8007E31C 00000000 */  nop
/* 7EF20 8007E320 4500001A */  bc1f       .L8007E38C
/* 7EF24 8007E324 00000000 */   nop
/* 7EF28 8007E328 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7EF2C 8007E32C 3C0140A0 */  lui        $at, 0x40a0
/* 7EF30 8007E330 460E3200 */  add.s      $f8, $f6, $f14
/* 7EF34 8007E334 44815000 */  mtc1       $at, $f10
/* 7EF38 8007E338 E4A80140 */  swc1       $f8, 0x140($a1)
/* 7EF3C 8007E33C C4B00140 */  lwc1       $f16, 0x140($a1)
/* 7EF40 8007E340 E4AC0144 */  swc1       $f12, 0x144($a1)
/* 7EF44 8007E344 4610503C */  c.lt.s     $f10, $f16
/* 7EF48 8007E348 00000000 */  nop
/* 7EF4C 8007E34C 4500000F */  bc1f       .L8007E38C
/* 7EF50 8007E350 00000000 */   nop
/* 7EF54 8007E354 C4B2013C */  lwc1       $f18, 0x13c($a1)
/* 7EF58 8007E358 E4AC0140 */  swc1       $f12, 0x140($a1)
/* 7EF5C 8007E35C 460E9100 */  add.s      $f4, $f18, $f14
/* 7EF60 8007E360 E4A4013C */  swc1       $f4, 0x13c($a1)
/* 7EF64 8007E364 C4A6013C */  lwc1       $f6, 0x13c($a1)
/* 7EF68 8007E368 00000000 */  nop
/* 7EF6C 8007E36C 4606103C */  c.lt.s     $f2, $f6
/* 7EF70 8007E370 00000000 */  nop
/* 7EF74 8007E374 45000005 */  bc1f       .L8007E38C
/* 7EF78 8007E378 00000000 */   nop
/* 7EF7C 8007E37C C4A80138 */  lwc1       $f8, 0x138($a1)
/* 7EF80 8007E380 E4AC013C */  swc1       $f12, 0x13c($a1)
/* 7EF84 8007E384 460E4280 */  add.s      $f10, $f8, $f14
/* 7EF88 8007E388 E4AA0138 */  swc1       $f10, 0x138($a1)
.L8007E38C:
/* 7EF8C 8007E38C 8CA70188 */  lw         $a3, 0x188($a1)
.L8007E390:
/* 7EF90 8007E390 3C10800C */  lui        $s0, 0x800c
/* 7EF94 8007E394 04E10004 */  bgez       $a3, .L8007E3A8
/* 7EF98 8007E398 00074C03 */   sra       $t1, $a3, 0x10
/* 7EF9C 8007E39C 3401FFFF */  ori        $at, $zero, 0xffff
/* 7EFA0 8007E3A0 00270821 */  addu       $at, $at, $a3
/* 7EFA4 8007E3A4 00014C03 */  sra        $t1, $at, 0x10
.L8007E3A8:
/* 7EFA8 8007E3A8 3C014780 */  lui        $at, 0x4780
/* 7EFAC 8007E3AC 4481B000 */  mtc1       $at, $f22
/* 7EFB0 8007E3B0 3C014012 */  lui        $at, 0x4012
/* 7EFB4 8007E3B4 00095400 */  sll        $t2, $t1, 0x10
/* 7EFB8 8007E3B8 4481A800 */  mtc1       $at, $f21
/* 7EFBC 8007E3BC 000A3C03 */  sra        $a3, $t2, 0x10
/* 7EFC0 8007E3C0 2610CCD0 */  addiu      $s0, $s0, -0x3330
/* 7EFC4 8007E3C4 A7A40042 */  sh         $a0, 0x42($sp)
.L8007E3C8:
/* 7EFC8 8007E3C8 97A40042 */  lhu        $a0, 0x42($sp)
/* 7EFCC 8007E3CC AFA50030 */  sw         $a1, 0x30($sp)
/* 7EFD0 8007E3D0 A7A6003C */  sh         $a2, 0x3c($sp)
/* 7EFD4 8007E3D4 0C01F4A4 */  jal        func_8007D290
/* 7EFD8 8007E3D8 A7A7003A */   sh        $a3, 0x3a($sp)
/* 7EFDC 8007E3DC 97A6003C */  lhu        $a2, 0x3c($sp)
/* 7EFE0 8007E3E0 8FA50030 */  lw         $a1, 0x30($sp)
/* 7EFE4 8007E3E4 87A7003A */  lh         $a3, 0x3a($sp)
/* 7EFE8 8007E3E8 44806000 */  mtc1       $zero, $f12
/* 7EFEC 8007E3EC 1040017B */  beqz       $v0, .L8007E9DC
/* 7EFF0 8007E3F0 000660C0 */   sll       $t4, $a2, 3
/* 7EFF4 8007E3F4 01866021 */  addu       $t4, $t4, $a2
/* 7EFF8 8007E3F8 C4A200B4 */  lwc1       $f2, 0xb4($a1)
/* 7EFFC 8007E3FC 258DFFDC */  addiu      $t5, $t4, -0x24
/* 7F000 8007E400 448D2000 */  mtc1       $t5, $f4
/* 7F004 8007E404 46001421 */  cvt.d.s    $f16, $f2
/* 7F008 8007E408 46348482 */  mul.d      $f18, $f16, $f20
/* 7F00C 8007E40C 468021A0 */  cvt.s.w    $f6, $f4
/* 7F010 8007E410 30F903FF */  andi       $t9, $a3, 0x3ff
/* 7F014 8007E414 00194080 */  sll        $t0, $t9, 2
/* 7F018 8007E418 02084821 */  addu       $t1, $s0, $t0
/* 7F01C 8007E41C 46023202 */  mul.s      $f8, $f6, $f2
/* 7F020 8007E420 8CB80088 */  lw         $t8, 0x88($a1)
/* 7F024 8007E424 00027080 */  sll        $t6, $v0, 2
/* 7F028 8007E428 44982000 */  mtc1       $t8, $f4
/* 7F02C 8007E42C 460042A1 */  cvt.d.s    $f10, $f8
/* 7F030 8007E430 C5280000 */  lwc1       $f8, ($t1)
/* 7F034 8007E434 462A9400 */  add.d      $f16, $f18, $f10
/* 7F038 8007E438 01C27023 */  subu       $t6, $t6, $v0
/* 7F03C 8007E43C 4608B482 */  mul.s      $f18, $f22, $f8
/* 7F040 8007E440 46208020 */  cvt.s.d    $f0, $f16
/* 7F044 8007E444 000E7080 */  sll        $t6, $t6, 2
/* 7F048 8007E448 01C27021 */  addu       $t6, $t6, $v0
/* 7F04C 8007E44C 46120282 */  mul.s      $f10, $f0, $f18
/* 7F050 8007E450 000E7080 */  sll        $t6, $t6, 2
/* 7F054 8007E454 01C27023 */  subu       $t6, $t6, $v0
/* 7F058 8007E458 3C0F800F */  lui        $t7, %hi(gActors)
/* 7F05C 8007E45C 468021A0 */  cvt.s.w    $f6, $f4
/* 7F060 8007E460 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7F064 8007E464 000E70C0 */  sll        $t6, $t6, 3
/* 7F068 8007E468 460A3400 */  add.s      $f16, $f6, $f10
/* 7F06C 8007E46C 01CF1821 */  addu       $v1, $t6, $t7
/* 7F070 8007E470 444AF800 */  cfc1       $t2, $31
/* 7F074 8007E474 24EDFF00 */  addiu      $t5, $a3, -0x100
/* 7F078 8007E478 35410003 */  ori        $at, $t2, 3
/* 7F07C 8007E47C 38210002 */  xori       $at, $at, 2
/* 7F080 8007E480 44C1F800 */  ctc1       $at, $31
/* 7F084 8007E484 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 7F088 8007E488 46008124 */  cvt.w.s    $f4, $f16
/* 7F08C 8007E48C 000E7880 */  sll        $t7, $t6, 2
/* 7F090 8007E490 020FC021 */  addu       $t8, $s0, $t7
/* 7F094 8007E494 44CAF800 */  ctc1       $t2, $31
/* 7F098 8007E498 440B2000 */  mfc1       $t3, $f4
/* 7F09C 8007E49C C7060000 */  lwc1       $f6, ($t8)
/* 7F0A0 8007E4A0 AC6B0088 */  sw         $t3, 0x88($v1)
/* 7F0A4 8007E4A4 4606B282 */  mul.s      $f10, $f22, $f6
/* 7F0A8 8007E4A8 8CAC008C */  lw         $t4, 0x8c($a1)
/* 7F0AC 8007E4AC 00C02025 */  or         $a0, $a2, $zero
/* 7F0B0 8007E4B0 448C4000 */  mtc1       $t4, $f8
/* 7F0B4 8007E4B4 460A0402 */  mul.s      $f16, $f0, $f10
/* 7F0B8 8007E4B8 00044880 */  sll        $t1, $a0, 2
/* 7F0BC 8007E4BC 468044A0 */  cvt.s.w    $f18, $f8
/* 7F0C0 8007E4C0 46109100 */  add.s      $f4, $f18, $f16
/* 7F0C4 8007E4C4 4459F800 */  cfc1       $t9, $31
/* 7F0C8 8007E4C8 00000000 */  nop
/* 7F0CC 8007E4CC 37210003 */  ori        $at, $t9, 3
/* 7F0D0 8007E4D0 38210002 */  xori       $at, $at, 2
/* 7F0D4 8007E4D4 44C1F800 */  ctc1       $at, $31
/* 7F0D8 8007E4D8 2CC10008 */  sltiu      $at, $a2, 8
/* 7F0DC 8007E4DC 46002224 */  cvt.w.s    $f8, $f4
/* 7F0E0 8007E4E0 44084000 */  mfc1       $t0, $f8
/* 7F0E4 8007E4E4 44D9F800 */  ctc1       $t9, $31
/* 7F0E8 8007E4E8 AC68008C */  sw         $t0, 0x8c($v1)
/* 7F0EC 8007E4EC C4A600B8 */  lwc1       $f6, 0xb8($a1)
/* 7F0F0 8007E4F0 1020013A */  beqz       $at, .L8007E9DC
/* 7F0F4 8007E4F4 E46600B8 */   swc1      $f6, 0xb8($v1)
/* 7F0F8 8007E4F8 3C01800F */  lui        $at, %hi(D_800ECFC8)
/* 7F0FC 8007E4FC 00290821 */  addu       $at, $at, $t1
/* 7F100 8007E500 8C29CFC8 */  lw         $t1, %lo(D_800ECFC8)($at)
/* 7F104 8007E504 00000000 */  nop
/* 7F108 8007E508 01200008 */  jr         $t1
/* 7F10C 8007E50C 00000000 */   nop
/* 7F110 8007E510 444AF800 */  cfc1       $t2, $31
/* 7F114 8007E514 240B0001 */  addiu      $t3, $zero, 1
/* 7F118 8007E518 44CBF800 */  ctc1       $t3, $31
/* 7F11C 8007E51C C4AA0138 */  lwc1       $f10, 0x138($a1)
/* 7F120 8007E520 3C014F00 */  lui        $at, 0x4f00
/* 7F124 8007E524 460054A4 */  cvt.w.s    $f18, $f10
/* 7F128 8007E528 444BF800 */  cfc1       $t3, $31
/* 7F12C 8007E52C 00000000 */  nop
/* 7F130 8007E530 316B0078 */  andi       $t3, $t3, 0x78
/* 7F134 8007E534 11600012 */  beqz       $t3, .L8007E580
/* 7F138 8007E538 00000000 */   nop
/* 7F13C 8007E53C 44819000 */  mtc1       $at, $f18
/* 7F140 8007E540 240B0001 */  addiu      $t3, $zero, 1
/* 7F144 8007E544 46125481 */  sub.s      $f18, $f10, $f18
/* 7F148 8007E548 3C018000 */  lui        $at, 0x8000
/* 7F14C 8007E54C 44CBF800 */  ctc1       $t3, $31
/* 7F150 8007E550 00000000 */  nop
/* 7F154 8007E554 460094A4 */  cvt.w.s    $f18, $f18
/* 7F158 8007E558 444BF800 */  cfc1       $t3, $31
/* 7F15C 8007E55C 00000000 */  nop
/* 7F160 8007E560 316B0078 */  andi       $t3, $t3, 0x78
/* 7F164 8007E564 15600004 */  bnez       $t3, .L8007E578
/* 7F168 8007E568 00000000 */   nop
/* 7F16C 8007E56C 440B9000 */  mfc1       $t3, $f18
/* 7F170 8007E570 10000007 */  b          .L8007E590
/* 7F174 8007E574 01615825 */   or        $t3, $t3, $at
.L8007E578:
/* 7F178 8007E578 10000005 */  b          .L8007E590
/* 7F17C 8007E57C 240BFFFF */   addiu     $t3, $zero, -1
.L8007E580:
/* 7F180 8007E580 440B9000 */  mfc1       $t3, $f18
/* 7F184 8007E584 00000000 */  nop
/* 7F188 8007E588 0560FFFB */  bltz       $t3, .L8007E578
/* 7F18C 8007E58C 00000000 */   nop
.L8007E590:
/* 7F190 8007E590 000B6840 */  sll        $t5, $t3, 1
/* 7F194 8007E594 25AE02D2 */  addiu      $t6, $t5, 0x2d2
/* 7F198 8007E598 A46E0084 */  sh         $t6, 0x84($v1)
/* 7F19C 8007E59C 44CAF800 */  ctc1       $t2, $31
/* 7F1A0 8007E5A0 C4B00138 */  lwc1       $f16, 0x138($a1)
/* 7F1A4 8007E5A4 00000000 */  nop
/* 7F1A8 8007E5A8 46106032 */  c.eq.s     $f12, $f16
/* 7F1AC 8007E5AC 00000000 */  nop
/* 7F1B0 8007E5B0 4500010A */  bc1f       .L8007E9DC
/* 7F1B4 8007E5B4 00000000 */   nop
/* 7F1B8 8007E5B8 8C6F018C */  lw         $t7, 0x18c($v1)
/* 7F1BC 8007E5BC 00000000 */  nop
/* 7F1C0 8007E5C0 25F80008 */  addiu      $t8, $t7, 8
/* 7F1C4 8007E5C4 10000105 */  b          .L8007E9DC
/* 7F1C8 8007E5C8 AC78018C */   sw        $t8, 0x18c($v1)
/* 7F1CC 8007E5CC 4459F800 */  cfc1       $t9, $31
/* 7F1D0 8007E5D0 24080001 */  addiu      $t0, $zero, 1
/* 7F1D4 8007E5D4 44C8F800 */  ctc1       $t0, $31
/* 7F1D8 8007E5D8 C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7F1DC 8007E5DC 3C014F00 */  lui        $at, 0x4f00
/* 7F1E0 8007E5E0 46002224 */  cvt.w.s    $f8, $f4
/* 7F1E4 8007E5E4 4448F800 */  cfc1       $t0, $31
/* 7F1E8 8007E5E8 00000000 */  nop
/* 7F1EC 8007E5EC 31080078 */  andi       $t0, $t0, 0x78
/* 7F1F0 8007E5F0 11000012 */  beqz       $t0, .L8007E63C
/* 7F1F4 8007E5F4 00000000 */   nop
/* 7F1F8 8007E5F8 44814000 */  mtc1       $at, $f8
/* 7F1FC 8007E5FC 24080001 */  addiu      $t0, $zero, 1
/* 7F200 8007E600 46082201 */  sub.s      $f8, $f4, $f8
/* 7F204 8007E604 3C018000 */  lui        $at, 0x8000
/* 7F208 8007E608 44C8F800 */  ctc1       $t0, $31
/* 7F20C 8007E60C 00000000 */  nop
/* 7F210 8007E610 46004224 */  cvt.w.s    $f8, $f8
/* 7F214 8007E614 4448F800 */  cfc1       $t0, $31
/* 7F218 8007E618 00000000 */  nop
/* 7F21C 8007E61C 31080078 */  andi       $t0, $t0, 0x78
/* 7F220 8007E620 15000004 */  bnez       $t0, .L8007E634
/* 7F224 8007E624 00000000 */   nop
/* 7F228 8007E628 44084000 */  mfc1       $t0, $f8
/* 7F22C 8007E62C 10000007 */  b          .L8007E64C
/* 7F230 8007E630 01014025 */   or        $t0, $t0, $at
.L8007E634:
/* 7F234 8007E634 10000005 */  b          .L8007E64C
/* 7F238 8007E638 2408FFFF */   addiu     $t0, $zero, -1
.L8007E63C:
/* 7F23C 8007E63C 44084000 */  mfc1       $t0, $f8
/* 7F240 8007E640 00000000 */  nop
/* 7F244 8007E644 0500FFFB */  bltz       $t0, .L8007E634
/* 7F248 8007E648 00000000 */   nop
.L8007E64C:
/* 7F24C 8007E64C 00085040 */  sll        $t2, $t0, 1
/* 7F250 8007E650 254B02D2 */  addiu      $t3, $t2, 0x2d2
/* 7F254 8007E654 A46B0084 */  sh         $t3, 0x84($v1)
/* 7F258 8007E658 44D9F800 */  ctc1       $t9, $31
/* 7F25C 8007E65C C4A60138 */  lwc1       $f6, 0x138($a1)
/* 7F260 8007E660 00000000 */  nop
/* 7F264 8007E664 46066032 */  c.eq.s     $f12, $f6
/* 7F268 8007E668 00000000 */  nop
/* 7F26C 8007E66C 450000DB */  bc1f       .L8007E9DC
/* 7F270 8007E670 00000000 */   nop
/* 7F274 8007E674 C4AA013C */  lwc1       $f10, 0x13c($a1)
/* 7F278 8007E678 00000000 */  nop
/* 7F27C 8007E67C 460A6032 */  c.eq.s     $f12, $f10
/* 7F280 8007E680 00000000 */  nop
/* 7F284 8007E684 450000D5 */  bc1f       .L8007E9DC
/* 7F288 8007E688 00000000 */   nop
/* 7F28C 8007E68C 8C6C018C */  lw         $t4, 0x18c($v1)
/* 7F290 8007E690 00000000 */  nop
/* 7F294 8007E694 258D0008 */  addiu      $t5, $t4, 8
/* 7F298 8007E698 100000D0 */  b          .L8007E9DC
/* 7F29C 8007E69C AC6D018C */   sw        $t5, 0x18c($v1)
/* 7F2A0 8007E6A0 846E008C */  lh         $t6, 0x8c($v1)
/* 7F2A4 8007E6A4 A4710084 */  sh         $s1, 0x84($v1)
/* 7F2A8 8007E6A8 25CFFFFE */  addiu      $t7, $t6, -2
/* 7F2AC 8007E6AC 100000CB */  b          .L8007E9DC
/* 7F2B0 8007E6B0 A46F008C */   sh        $t7, 0x8c($v1)
/* 7F2B4 8007E6B4 4458F800 */  cfc1       $t8, $31
/* 7F2B8 8007E6B8 24190001 */  addiu      $t9, $zero, 1
/* 7F2BC 8007E6BC 44D9F800 */  ctc1       $t9, $31
/* 7F2C0 8007E6C0 C4B20140 */  lwc1       $f18, 0x140($a1)
/* 7F2C4 8007E6C4 3C014F00 */  lui        $at, 0x4f00
/* 7F2C8 8007E6C8 46009424 */  cvt.w.s    $f16, $f18
/* 7F2CC 8007E6CC 4459F800 */  cfc1       $t9, $31
/* 7F2D0 8007E6D0 00000000 */  nop
/* 7F2D4 8007E6D4 33390078 */  andi       $t9, $t9, 0x78
/* 7F2D8 8007E6D8 13200012 */  beqz       $t9, .L8007E724
/* 7F2DC 8007E6DC 00000000 */   nop
/* 7F2E0 8007E6E0 44818000 */  mtc1       $at, $f16
/* 7F2E4 8007E6E4 24190001 */  addiu      $t9, $zero, 1
/* 7F2E8 8007E6E8 46109401 */  sub.s      $f16, $f18, $f16
/* 7F2EC 8007E6EC 3C018000 */  lui        $at, 0x8000
/* 7F2F0 8007E6F0 44D9F800 */  ctc1       $t9, $31
/* 7F2F4 8007E6F4 00000000 */  nop
/* 7F2F8 8007E6F8 46008424 */  cvt.w.s    $f16, $f16
/* 7F2FC 8007E6FC 4459F800 */  cfc1       $t9, $31
/* 7F300 8007E700 00000000 */  nop
/* 7F304 8007E704 33390078 */  andi       $t9, $t9, 0x78
/* 7F308 8007E708 17200004 */  bnez       $t9, .L8007E71C
/* 7F30C 8007E70C 00000000 */   nop
/* 7F310 8007E710 44198000 */  mfc1       $t9, $f16
/* 7F314 8007E714 10000007 */  b          .L8007E734
/* 7F318 8007E718 0321C825 */   or        $t9, $t9, $at
.L8007E71C:
/* 7F31C 8007E71C 10000005 */  b          .L8007E734
/* 7F320 8007E720 2419FFFF */   addiu     $t9, $zero, -1
.L8007E724:
/* 7F324 8007E724 44198000 */  mfc1       $t9, $f16
/* 7F328 8007E728 00000000 */  nop
/* 7F32C 8007E72C 0720FFFB */  bltz       $t9, .L8007E71C
/* 7F330 8007E730 00000000 */   nop
.L8007E734:
/* 7F334 8007E734 00194840 */  sll        $t1, $t9, 1
/* 7F338 8007E738 252A02D2 */  addiu      $t2, $t1, 0x2d2
/* 7F33C 8007E73C A46A0084 */  sh         $t2, 0x84($v1)
/* 7F340 8007E740 44D8F800 */  ctc1       $t8, $31
/* 7F344 8007E744 C4A40138 */  lwc1       $f4, 0x138($a1)
/* 7F348 8007E748 00000000 */  nop
/* 7F34C 8007E74C 46046032 */  c.eq.s     $f12, $f4
/* 7F350 8007E750 00000000 */  nop
/* 7F354 8007E754 450000A1 */  bc1f       .L8007E9DC
/* 7F358 8007E758 00000000 */   nop
/* 7F35C 8007E75C C4A8013C */  lwc1       $f8, 0x13c($a1)
/* 7F360 8007E760 00000000 */  nop
/* 7F364 8007E764 46086032 */  c.eq.s     $f12, $f8
/* 7F368 8007E768 00000000 */  nop
/* 7F36C 8007E76C 4500009B */  bc1f       .L8007E9DC
/* 7F370 8007E770 00000000 */   nop
/* 7F374 8007E774 C4A60140 */  lwc1       $f6, 0x140($a1)
/* 7F378 8007E778 00000000 */  nop
/* 7F37C 8007E77C 46066032 */  c.eq.s     $f12, $f6
/* 7F380 8007E780 00000000 */  nop
/* 7F384 8007E784 45000095 */  bc1f       .L8007E9DC
/* 7F388 8007E788 00000000 */   nop
/* 7F38C 8007E78C 8C6B018C */  lw         $t3, 0x18c($v1)
/* 7F390 8007E790 00000000 */  nop
/* 7F394 8007E794 256C0008 */  addiu      $t4, $t3, 8
/* 7F398 8007E798 10000090 */  b          .L8007E9DC
/* 7F39C 8007E79C AC6C018C */   sw        $t4, 0x18c($v1)
/* 7F3A0 8007E7A0 444DF800 */  cfc1       $t5, $31
/* 7F3A4 8007E7A4 240E0001 */  addiu      $t6, $zero, 1
/* 7F3A8 8007E7A8 44CEF800 */  ctc1       $t6, $31
/* 7F3AC 8007E7AC C4AA0144 */  lwc1       $f10, 0x144($a1)
/* 7F3B0 8007E7B0 3C014F00 */  lui        $at, 0x4f00
/* 7F3B4 8007E7B4 460054A4 */  cvt.w.s    $f18, $f10
/* 7F3B8 8007E7B8 444EF800 */  cfc1       $t6, $31
/* 7F3BC 8007E7BC 00000000 */  nop
/* 7F3C0 8007E7C0 31CE0078 */  andi       $t6, $t6, 0x78
/* 7F3C4 8007E7C4 11C00012 */  beqz       $t6, .L8007E810
/* 7F3C8 8007E7C8 00000000 */   nop
/* 7F3CC 8007E7CC 44819000 */  mtc1       $at, $f18
/* 7F3D0 8007E7D0 240E0001 */  addiu      $t6, $zero, 1
/* 7F3D4 8007E7D4 46125481 */  sub.s      $f18, $f10, $f18
/* 7F3D8 8007E7D8 3C018000 */  lui        $at, 0x8000
/* 7F3DC 8007E7DC 44CEF800 */  ctc1       $t6, $31
/* 7F3E0 8007E7E0 00000000 */  nop
/* 7F3E4 8007E7E4 460094A4 */  cvt.w.s    $f18, $f18
/* 7F3E8 8007E7E8 444EF800 */  cfc1       $t6, $31
/* 7F3EC 8007E7EC 00000000 */  nop
/* 7F3F0 8007E7F0 31CE0078 */  andi       $t6, $t6, 0x78
/* 7F3F4 8007E7F4 15C00004 */  bnez       $t6, .L8007E808
/* 7F3F8 8007E7F8 00000000 */   nop
/* 7F3FC 8007E7FC 440E9000 */  mfc1       $t6, $f18
/* 7F400 8007E800 10000007 */  b          .L8007E820
/* 7F404 8007E804 01C17025 */   or        $t6, $t6, $at
.L8007E808:
/* 7F408 8007E808 10000005 */  b          .L8007E820
/* 7F40C 8007E80C 240EFFFF */   addiu     $t6, $zero, -1
.L8007E810:
/* 7F410 8007E810 440E9000 */  mfc1       $t6, $f18
/* 7F414 8007E814 00000000 */  nop
/* 7F418 8007E818 05C0FFFB */  bltz       $t6, .L8007E808
/* 7F41C 8007E81C 00000000 */   nop
.L8007E820:
/* 7F420 8007E820 000EC040 */  sll        $t8, $t6, 1
/* 7F424 8007E824 271902D2 */  addiu      $t9, $t8, 0x2d2
/* 7F428 8007E828 A4790084 */  sh         $t9, 0x84($v1)
/* 7F42C 8007E82C 44CDF800 */  ctc1       $t5, $31
/* 7F430 8007E830 C4B00138 */  lwc1       $f16, 0x138($a1)
/* 7F434 8007E834 00000000 */  nop
/* 7F438 8007E838 46106032 */  c.eq.s     $f12, $f16
/* 7F43C 8007E83C 00000000 */  nop
/* 7F440 8007E840 45000066 */  bc1f       .L8007E9DC
/* 7F444 8007E844 00000000 */   nop
/* 7F448 8007E848 C4A4013C */  lwc1       $f4, 0x13c($a1)
/* 7F44C 8007E84C 00000000 */  nop
/* 7F450 8007E850 46046032 */  c.eq.s     $f12, $f4
/* 7F454 8007E854 00000000 */  nop
/* 7F458 8007E858 45000060 */  bc1f       .L8007E9DC
/* 7F45C 8007E85C 00000000 */   nop
/* 7F460 8007E860 C4A80140 */  lwc1       $f8, 0x140($a1)
/* 7F464 8007E864 00000000 */  nop
/* 7F468 8007E868 46086032 */  c.eq.s     $f12, $f8
/* 7F46C 8007E86C 00000000 */  nop
/* 7F470 8007E870 4500005A */  bc1f       .L8007E9DC
/* 7F474 8007E874 00000000 */   nop
/* 7F478 8007E878 C4A60144 */  lwc1       $f6, 0x144($a1)
/* 7F47C 8007E87C 00000000 */  nop
/* 7F480 8007E880 46066032 */  c.eq.s     $f12, $f6
/* 7F484 8007E884 00000000 */  nop
/* 7F488 8007E888 45000054 */  bc1f       .L8007E9DC
/* 7F48C 8007E88C 00000000 */   nop
/* 7F490 8007E890 8C68018C */  lw         $t0, 0x18c($v1)
/* 7F494 8007E894 00000000 */  nop
/* 7F498 8007E898 25090008 */  addiu      $t1, $t0, 8
/* 7F49C 8007E89C 1000004F */  b          .L8007E9DC
/* 7F4A0 8007E8A0 AC69018C */   sw        $t1, 0x18c($v1)
/* 7F4A4 8007E8A4 846A008C */  lh         $t2, 0x8c($v1)
/* 7F4A8 8007E8A8 A4710084 */  sh         $s1, 0x84($v1)
/* 7F4AC 8007E8AC 254BFFFE */  addiu      $t3, $t2, -2
/* 7F4B0 8007E8B0 1000004A */  b          .L8007E9DC
/* 7F4B4 8007E8B4 A46B008C */   sh        $t3, 0x8c($v1)
/* 7F4B8 8007E8B8 444CF800 */  cfc1       $t4, $31
/* 7F4BC 8007E8BC 240D0001 */  addiu      $t5, $zero, 1
/* 7F4C0 8007E8C0 44CDF800 */  ctc1       $t5, $31
/* 7F4C4 8007E8C4 C4AA0148 */  lwc1       $f10, 0x148($a1)
/* 7F4C8 8007E8C8 3C014F00 */  lui        $at, 0x4f00
/* 7F4CC 8007E8CC 460054A4 */  cvt.w.s    $f18, $f10
/* 7F4D0 8007E8D0 444DF800 */  cfc1       $t5, $31
/* 7F4D4 8007E8D4 00000000 */  nop
/* 7F4D8 8007E8D8 31AD0078 */  andi       $t5, $t5, 0x78
/* 7F4DC 8007E8DC 11A00012 */  beqz       $t5, .L8007E928
/* 7F4E0 8007E8E0 00000000 */   nop
/* 7F4E4 8007E8E4 44819000 */  mtc1       $at, $f18
/* 7F4E8 8007E8E8 240D0001 */  addiu      $t5, $zero, 1
/* 7F4EC 8007E8EC 46125481 */  sub.s      $f18, $f10, $f18
/* 7F4F0 8007E8F0 3C018000 */  lui        $at, 0x8000
/* 7F4F4 8007E8F4 44CDF800 */  ctc1       $t5, $31
/* 7F4F8 8007E8F8 00000000 */  nop
/* 7F4FC 8007E8FC 460094A4 */  cvt.w.s    $f18, $f18
/* 7F500 8007E900 444DF800 */  cfc1       $t5, $31
/* 7F504 8007E904 00000000 */  nop
/* 7F508 8007E908 31AD0078 */  andi       $t5, $t5, 0x78
/* 7F50C 8007E90C 15A00004 */  bnez       $t5, .L8007E920
/* 7F510 8007E910 00000000 */   nop
/* 7F514 8007E914 440D9000 */  mfc1       $t5, $f18
/* 7F518 8007E918 10000007 */  b          .L8007E938
/* 7F51C 8007E91C 01A16825 */   or        $t5, $t5, $at
.L8007E920:
/* 7F520 8007E920 10000005 */  b          .L8007E938
/* 7F524 8007E924 240DFFFF */   addiu     $t5, $zero, -1
.L8007E928:
/* 7F528 8007E928 440D9000 */  mfc1       $t5, $f18
/* 7F52C 8007E92C 00000000 */  nop
/* 7F530 8007E930 05A0FFFB */  bltz       $t5, .L8007E920
/* 7F534 8007E934 00000000 */   nop
.L8007E938:
/* 7F538 8007E938 000D7840 */  sll        $t7, $t5, 1
/* 7F53C 8007E93C 25F802D2 */  addiu      $t8, $t7, 0x2d2
/* 7F540 8007E940 44CCF800 */  ctc1       $t4, $31
/* 7F544 8007E944 10000025 */  b          .L8007E9DC
/* 7F548 8007E948 A4780084 */   sh        $t8, 0x84($v1)
/* 7F54C 8007E94C 4459F800 */  cfc1       $t9, $31
/* 7F550 8007E950 24080001 */  addiu      $t0, $zero, 1
/* 7F554 8007E954 44C8F800 */  ctc1       $t0, $31
/* 7F558 8007E958 C4B0014C */  lwc1       $f16, 0x14c($a1)
/* 7F55C 8007E95C 3C014F00 */  lui        $at, 0x4f00
/* 7F560 8007E960 46008124 */  cvt.w.s    $f4, $f16
/* 7F564 8007E964 4448F800 */  cfc1       $t0, $31
/* 7F568 8007E968 00000000 */  nop
/* 7F56C 8007E96C 31080078 */  andi       $t0, $t0, 0x78
/* 7F570 8007E970 11000012 */  beqz       $t0, .L8007E9BC
/* 7F574 8007E974 00000000 */   nop
/* 7F578 8007E978 44812000 */  mtc1       $at, $f4
/* 7F57C 8007E97C 24080001 */  addiu      $t0, $zero, 1
/* 7F580 8007E980 46048101 */  sub.s      $f4, $f16, $f4
/* 7F584 8007E984 3C018000 */  lui        $at, 0x8000
/* 7F588 8007E988 44C8F800 */  ctc1       $t0, $31
/* 7F58C 8007E98C 00000000 */  nop
/* 7F590 8007E990 46002124 */  cvt.w.s    $f4, $f4
/* 7F594 8007E994 4448F800 */  cfc1       $t0, $31
/* 7F598 8007E998 00000000 */  nop
/* 7F59C 8007E99C 31080078 */  andi       $t0, $t0, 0x78
/* 7F5A0 8007E9A0 15000004 */  bnez       $t0, .L8007E9B4
/* 7F5A4 8007E9A4 00000000 */   nop
/* 7F5A8 8007E9A8 44082000 */  mfc1       $t0, $f4
/* 7F5AC 8007E9AC 10000007 */  b          .L8007E9CC
/* 7F5B0 8007E9B0 01014025 */   or        $t0, $t0, $at
.L8007E9B4:
/* 7F5B4 8007E9B4 10000005 */  b          .L8007E9CC
/* 7F5B8 8007E9B8 2408FFFF */   addiu     $t0, $zero, -1
.L8007E9BC:
/* 7F5BC 8007E9BC 44082000 */  mfc1       $t0, $f4
/* 7F5C0 8007E9C0 00000000 */  nop
/* 7F5C4 8007E9C4 0500FFFB */  bltz       $t0, .L8007E9B4
/* 7F5C8 8007E9C8 00000000 */   nop
.L8007E9CC:
/* 7F5CC 8007E9CC 00085040 */  sll        $t2, $t0, 1
/* 7F5D0 8007E9D0 44D9F800 */  ctc1       $t9, $31
/* 7F5D4 8007E9D4 254B02D2 */  addiu      $t3, $t2, 0x2d2
/* 7F5D8 8007E9D8 A46B0084 */  sh         $t3, 0x84($v1)
.L8007E9DC:
/* 7F5DC 8007E9DC 24C60001 */  addiu      $a2, $a2, 1
/* 7F5E0 8007E9E0 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 7F5E4 8007E9E4 29810008 */  slti       $at, $t4, 8
/* 7F5E8 8007E9E8 1420FE77 */  bnez       $at, .L8007E3C8
/* 7F5EC 8007E9EC 01803025 */   or        $a2, $t4, $zero
.L8007E9F0:
/* 7F5F0 8007E9F0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 7F5F4 8007E9F4 C7B50010 */  lwc1       $f21, 0x10($sp)
/* 7F5F8 8007E9F8 C7B40014 */  lwc1       $f20, 0x14($sp)
/* 7F5FC 8007E9FC C7B70018 */  lwc1       $f23, 0x18($sp)
/* 7F600 8007EA00 C7B6001C */  lwc1       $f22, 0x1c($sp)
/* 7F604 8007EA04 8FB00024 */  lw         $s0, 0x24($sp)
/* 7F608 8007EA08 8FB10028 */  lw         $s1, 0x28($sp)
/* 7F60C 8007EA0C 03E00008 */  jr         $ra
/* 7F610 8007EA10 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8007EA14
/* 7F614 8007EA14 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 7F618 8007EA18 AFBF006C */  sw         $ra, 0x6c($sp)
/* 7F61C 8007EA1C AFBE0068 */  sw         $fp, 0x68($sp)
/* 7F620 8007EA20 AFB70064 */  sw         $s7, 0x64($sp)
/* 7F624 8007EA24 AFB60060 */  sw         $s6, 0x60($sp)
/* 7F628 8007EA28 AFB5005C */  sw         $s5, 0x5c($sp)
/* 7F62C 8007EA2C AFB40058 */  sw         $s4, 0x58($sp)
/* 7F630 8007EA30 AFB30054 */  sw         $s3, 0x54($sp)
/* 7F634 8007EA34 AFB20050 */  sw         $s2, 0x50($sp)
/* 7F638 8007EA38 AFB1004C */  sw         $s1, 0x4c($sp)
/* 7F63C 8007EA3C AFB00048 */  sw         $s0, 0x48($sp)
/* 7F640 8007EA40 E7BF0040 */  swc1       $f31, 0x40($sp)
/* 7F644 8007EA44 E7BE0044 */  swc1       $f30, 0x44($sp)
/* 7F648 8007EA48 E7BD0038 */  swc1       $f29, 0x38($sp)
/* 7F64C 8007EA4C E7BC003C */  swc1       $f28, 0x3c($sp)
/* 7F650 8007EA50 E7BB0030 */  swc1       $f27, 0x30($sp)
/* 7F654 8007EA54 E7BA0034 */  swc1       $f26, 0x34($sp)
/* 7F658 8007EA58 E7B90028 */  swc1       $f25, 0x28($sp)
/* 7F65C 8007EA5C E7B8002C */  swc1       $f24, 0x2c($sp)
/* 7F660 8007EA60 E7B70020 */  swc1       $f23, 0x20($sp)
/* 7F664 8007EA64 E7B60024 */  swc1       $f22, 0x24($sp)
/* 7F668 8007EA68 E7B50018 */  swc1       $f21, 0x18($sp)
/* 7F66C 8007EA6C E7B4001C */  swc1       $f20, 0x1c($sp)
/* 7F670 8007EA70 AFA50094 */  sw         $a1, 0x94($sp)
/* 7F674 8007EA74 AFA60098 */  sw         $a2, 0x98($sp)
/* 7F678 8007EA78 AFA7009C */  sw         $a3, 0x9c($sp)
/* 7F67C 8007EA7C 94820000 */  lhu        $v0, ($a0)
/* 7F680 8007EA80 3C01BF80 */  lui        $at, 0xbf80
/* 7F684 8007EA84 34038FFF */  ori        $v1, $zero, 0x8fff
/* 7F688 8007EA88 4481B000 */  mtc1       $at, $f22
/* 7F68C 8007EA8C 10620009 */  beq        $v1, $v0, .L8007EAB4
/* 7F690 8007EA90 00808825 */   or        $s1, $a0, $zero
/* 7F694 8007EA94 3C013F80 */  lui        $at, 0x3f80
/* 7F698 8007EA98 4481F000 */  mtc1       $at, $f30
/* 7F69C 8007EA9C 00000000 */  nop
.L8007EAA0:
/* 7F6A0 8007EAA0 962E0002 */  lhu        $t6, 2($s1)
/* 7F6A4 8007EAA4 26310002 */  addiu      $s1, $s1, 2
/* 7F6A8 8007EAA8 146EFFFD */  bne        $v1, $t6, .L8007EAA0
/* 7F6AC 8007EAAC 461EB580 */   add.s     $f22, $f22, $f30
/* 7F6B0 8007EAB0 00808825 */  or         $s1, $a0, $zero
.L8007EAB4:
/* 7F6B4 8007EAB4 8FAF0094 */  lw         $t7, 0x94($sp)
/* 7F6B8 8007EAB8 3C013F80 */  lui        $at, 0x3f80
/* 7F6BC 8007EABC 4481F000 */  mtc1       $at, $f30
/* 7F6C0 8007EAC0 31F80100 */  andi       $t8, $t7, 0x100
/* 7F6C4 8007EAC4 13000004 */  beqz       $t8, .L8007EAD8
/* 7F6C8 8007EAC8 AFB80070 */   sw        $t8, 0x70($sp)
/* 7F6CC 8007EACC 24190010 */  addiu      $t9, $zero, 0x10
/* 7F6D0 8007EAD0 10000003 */  b          .L8007EAE0
/* 7F6D4 8007EAD4 A7B90086 */   sh        $t9, 0x86($sp)
.L8007EAD8:
/* 7F6D8 8007EAD8 24080008 */  addiu      $t0, $zero, 8
/* 7F6DC 8007EADC A7A80086 */  sh         $t0, 0x86($sp)
.L8007EAE0:
/* 7F6E0 8007EAE0 97B70086 */  lhu        $s7, 0x86($sp)
/* 7F6E4 8007EAE4 241E0010 */  addiu      $fp, $zero, 0x10
/* 7F6E8 8007EAE8 17D70008 */  bne        $fp, $s7, .L8007EB0C
/* 7F6EC 8007EAEC 3C0148A0 */   lui       $at, 0x48a0
/* 7F6F0 8007EAF0 8FA90098 */  lw         $t1, 0x98($sp)
/* 7F6F4 8007EAF4 44814000 */  mtc1       $at, $f8
/* 7F6F8 8007EAF8 44892000 */  mtc1       $t1, $f4
/* 7F6FC 8007EAFC 4608B282 */  mul.s      $f10, $f22, $f8
/* 7F700 8007EB00 468021A0 */  cvt.s.w    $f6, $f4
/* 7F704 8007EB04 460A3501 */  sub.s      $f20, $f6, $f10
/* 7F708 8007EB08 E7B4007C */  swc1       $f20, 0x7c($sp)
.L8007EB0C:
/* 7F70C 8007EB0C C7B4007C */  lwc1       $f20, 0x7c($sp)
/* 7F710 8007EB10 106200A8 */  beq        $v1, $v0, .L8007EDB4
/* 7F714 8007EB14 0000A025 */   or        $s4, $zero, $zero
/* 7F718 8007EB18 3C014780 */  lui        $at, 0x4780
/* 7F71C 8007EB1C 4481E000 */  mtc1       $at, $f28
/* 7F720 8007EB20 3C01800F */  lui        $at, %hi(D_800ECFE8)
/* 7F724 8007EB24 3C16800C */  lui        $s6, 0x800c
/* 7F728 8007EB28 C43BCFE8 */  lwc1       $f27, %lo(D_800ECFE8)($at)
/* 7F72C 8007EB2C C43ACFEC */  lwc1       $f26, -0x3014($at)
/* 7F730 8007EB30 96220000 */  lhu        $v0, ($s1)
/* 7F734 8007EB34 C7B800BC */  lwc1       $f24, 0xbc($sp)
/* 7F738 8007EB38 87B500BA */  lh         $s5, 0xba($sp)
/* 7F73C 8007EB3C 26D6CCD0 */  addiu      $s6, $s6, -0x3330
.L8007EB40:
/* 7F740 8007EB40 304A4000 */  andi       $t2, $v0, 0x4000
/* 7F744 8007EB44 1540008F */  bnez       $t2, .L8007ED84
/* 7F748 8007EB48 00000000 */   nop
/* 7F74C 8007EB4C 0C00A14A */  jal        func_80028528
/* 7F750 8007EB50 00000000 */   nop
/* 7F754 8007EB54 10400097 */  beqz       $v0, .L8007EDB4
/* 7F758 8007EB58 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7F75C 8007EB5C 00045880 */  sll        $t3, $a0, 2
/* 7F760 8007EB60 01645823 */  subu       $t3, $t3, $a0
/* 7F764 8007EB64 000B5880 */  sll        $t3, $t3, 2
/* 7F768 8007EB68 01645821 */  addu       $t3, $t3, $a0
/* 7F76C 8007EB6C 000B5880 */  sll        $t3, $t3, 2
/* 7F770 8007EB70 8FA20094 */  lw         $v0, 0x94($sp)
/* 7F774 8007EB74 01645823 */  subu       $t3, $t3, $a0
/* 7F778 8007EB78 3C0C800F */  lui        $t4, %hi(gActors)
/* 7F77C 8007EB7C 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 7F780 8007EB80 000B58C0 */  sll        $t3, $t3, 3
/* 7F784 8007EB84 016C8021 */  addu       $s0, $t3, $t4
/* 7F788 8007EB88 240D0034 */  addiu      $t5, $zero, 0x34
/* 7F78C 8007EB8C 2401DEFF */  addiu      $at, $zero, -0x2101
/* 7F790 8007EB90 A60D00D2 */  sh         $t5, 0xd2($s0)
/* 7F794 8007EB94 00419024 */  and        $s2, $v0, $at
/* 7F798 8007EB98 0C0078B4 */  jal        func_8001E2D0
/* 7F79C 8007EB9C 30532000 */   andi      $s3, $v0, 0x2000
/* 7F7A0 8007EBA0 240E000B */  addiu      $t6, $zero, 0xb
/* 7F7A4 8007EBA4 A6120094 */  sh         $s2, 0x94($s0)
/* 7F7A8 8007EBA8 AE0E0080 */  sw         $t6, 0x80($s0)
/* 7F7AC 8007EBAC 962F0000 */  lhu        $t7, ($s1)
/* 7F7B0 8007EBB0 3C014000 */  lui        $at, 0x4000
/* 7F7B4 8007EBB4 000FC040 */  sll        $t8, $t7, 1
/* 7F7B8 8007EBB8 271902D2 */  addiu      $t9, $t8, 0x2d2
/* 7F7BC 8007EBBC 17D70013 */  bne        $fp, $s7, .L8007EC0C
/* 7F7C0 8007EBC0 A6190084 */   sh        $t9, 0x84($s0)
/* 7F7C4 8007EBC4 4448F800 */  cfc1       $t0, $31
/* 7F7C8 8007EBC8 02202025 */  or         $a0, $s1, $zero
/* 7F7CC 8007EBCC 35010003 */  ori        $at, $t0, 3
/* 7F7D0 8007EBD0 38210002 */  xori       $at, $at, 2
/* 7F7D4 8007EBD4 44C1F800 */  ctc1       $at, $31
/* 7F7D8 8007EBD8 00000000 */  nop
/* 7F7DC 8007EBDC 4600A424 */  cvt.w.s    $f16, $f20
/* 7F7E0 8007EBE0 44098000 */  mfc1       $t1, $f16
/* 7F7E4 8007EBE4 44C8F800 */  ctc1       $t0, $31
/* 7F7E8 8007EBE8 0C009EA2 */  jal        func_80027A88
/* 7F7EC 8007EBEC AE090088 */   sw        $t1, 0x88($s0)
/* 7F7F0 8007EBF0 00025400 */  sll        $t2, $v0, 0x10
/* 7F7F4 8007EBF4 448A9000 */  mtc1       $t2, $f18
/* 7F7F8 8007EBF8 8FAB009C */  lw         $t3, 0x9c($sp)
/* 7F7FC 8007EBFC 46809120 */  cvt.s.w    $f4, $f18
/* 7F800 8007EC00 AE0B008C */  sw         $t3, 0x8c($s0)
/* 7F804 8007EC04 10000040 */  b          .L8007ED08
/* 7F808 8007EC08 4604A500 */   add.s     $f20, $f20, $f4
.L8007EC0C:
/* 7F80C 8007EC0C 44814000 */  mtc1       $at, $f8
/* 7F810 8007EC10 44945000 */  mtc1       $s4, $f10
/* 7F814 8007EC14 4608B183 */  div.s      $f6, $f22, $f8
/* 7F818 8007EC18 06810005 */  bgez       $s4, .L8007EC30
/* 7F81C 8007EC1C 46805420 */   cvt.s.w   $f16, $f10
/* 7F820 8007EC20 3C014F80 */  lui        $at, 0x4f80
/* 7F824 8007EC24 44819000 */  mtc1       $at, $f18
/* 7F828 8007EC28 00000000 */  nop
/* 7F82C 8007EC2C 46128400 */  add.s      $f16, $f16, $f18
.L8007EC30:
/* 7F830 8007EC30 97AC0086 */  lhu        $t4, 0x86($sp)
/* 7F834 8007EC34 4610B101 */  sub.s      $f4, $f22, $f16
/* 7F838 8007EC38 448C5000 */  mtc1       $t4, $f10
/* 7F83C 8007EC3C 46043201 */  sub.s      $f8, $f6, $f4
/* 7F840 8007EC40 05810005 */  bgez       $t4, .L8007EC58
/* 7F844 8007EC44 468054A0 */   cvt.s.w   $f18, $f10
/* 7F848 8007EC48 3C014F80 */  lui        $at, 0x4f80
/* 7F84C 8007EC4C 44818000 */  mtc1       $at, $f16
/* 7F850 8007EC50 00000000 */  nop
/* 7F854 8007EC54 46109480 */  add.s      $f18, $f18, $f16
.L8007EC58:
/* 7F858 8007EC58 46124182 */  mul.s      $f6, $f8, $f18
/* 7F85C 8007EC5C 32AD03FF */  andi       $t5, $s5, 0x3ff
/* 7F860 8007EC60 000D7080 */  sll        $t6, $t5, 2
/* 7F864 8007EC64 02CE7821 */  addu       $t7, $s6, $t6
/* 7F868 8007EC68 46183502 */  mul.s      $f20, $f6, $f24
/* 7F86C 8007EC6C C5E40000 */  lwc1       $f4, ($t7)
/* 7F870 8007EC70 8FB80098 */  lw         $t8, 0x98($sp)
/* 7F874 8007EC74 26A9FF00 */  addiu      $t1, $s5, -0x100
/* 7F878 8007EC78 461C2282 */  mul.s      $f10, $f4, $f28
/* 7F87C 8007EC7C 44984000 */  mtc1       $t8, $f8
/* 7F880 8007EC80 312A03FF */  andi       $t2, $t1, 0x3ff
/* 7F884 8007EC84 000A5880 */  sll        $t3, $t2, 2
/* 7F888 8007EC88 46145402 */  mul.s      $f16, $f10, $f20
/* 7F88C 8007EC8C 02CB6021 */  addu       $t4, $s6, $t3
/* 7F890 8007EC90 C58A0000 */  lwc1       $f10, ($t4)
/* 7F894 8007EC94 8FAD009C */  lw         $t5, 0x9c($sp)
/* 7F898 8007EC98 468044A0 */  cvt.s.w    $f18, $f8
/* 7F89C 8007EC9C 46128180 */  add.s      $f6, $f16, $f18
/* 7F8A0 8007ECA0 448D9000 */  mtc1       $t5, $f18
/* 7F8A4 8007ECA4 4459F800 */  cfc1       $t9, $31
/* 7F8A8 8007ECA8 00000000 */  nop
/* 7F8AC 8007ECAC 37210003 */  ori        $at, $t9, 3
/* 7F8B0 8007ECB0 38210002 */  xori       $at, $at, 2
/* 7F8B4 8007ECB4 44C1F800 */  ctc1       $at, $31
/* 7F8B8 8007ECB8 00000000 */  nop
/* 7F8BC 8007ECBC 46003124 */  cvt.w.s    $f4, $f6
/* 7F8C0 8007ECC0 44D9F800 */  ctc1       $t9, $31
/* 7F8C4 8007ECC4 44082000 */  mfc1       $t0, $f4
/* 7F8C8 8007ECC8 461C5202 */  mul.s      $f8, $f10, $f28
/* 7F8CC 8007ECCC AE080088 */  sw         $t0, 0x88($s0)
/* 7F8D0 8007ECD0 46144402 */  mul.s      $f16, $f8, $f20
/* 7F8D4 8007ECD4 468091A0 */  cvt.s.w    $f6, $f18
/* 7F8D8 8007ECD8 46068100 */  add.s      $f4, $f16, $f6
/* 7F8DC 8007ECDC 444EF800 */  cfc1       $t6, $31
/* 7F8E0 8007ECE0 00000000 */  nop
/* 7F8E4 8007ECE4 35C10003 */  ori        $at, $t6, 3
/* 7F8E8 8007ECE8 38210002 */  xori       $at, $at, 2
/* 7F8EC 8007ECEC 44C1F800 */  ctc1       $at, $31
/* 7F8F0 8007ECF0 00000000 */  nop
/* 7F8F4 8007ECF4 460022A4 */  cvt.w.s    $f10, $f4
/* 7F8F8 8007ECF8 440F5000 */  mfc1       $t7, $f10
/* 7F8FC 8007ECFC 44CEF800 */  ctc1       $t6, $31
/* 7F900 8007ED00 AE0F008C */  sw         $t7, 0x8c($s0)
/* 7F904 8007ED04 00000000 */  nop
.L8007ED08:
/* 7F908 8007ED08 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 7F90C 8007ED0C 8FB90070 */  lw         $t9, 0x70($sp)
/* 7F910 8007ED10 AE180090 */  sw         $t8, 0x90($s0)
/* 7F914 8007ED14 13200012 */  beqz       $t9, .L8007ED60
/* 7F918 8007ED18 8FAC00A4 */   lw        $t4, 0xa4($sp)
/* 7F91C 8007ED1C 44954000 */  mtc1       $s5, $f8
/* 7F920 8007ED20 97A800B6 */  lhu        $t0, 0xb6($sp)
/* 7F924 8007ED24 468044A1 */  cvt.d.w    $f18, $f8
/* 7F928 8007ED28 93A900AB */  lbu        $t1, 0xab($sp)
/* 7F92C 8007ED2C 93AA00AF */  lbu        $t2, 0xaf($sp)
/* 7F930 8007ED30 463A9402 */  mul.d      $f16, $f18, $f26
/* 7F934 8007ED34 93AB00B3 */  lbu        $t3, 0xb3($sp)
/* 7F938 8007ED38 E61800B4 */  swc1       $f24, 0xb4($s0)
/* 7F93C 8007ED3C E61800B8 */  swc1       $f24, 0xb8($s0)
/* 7F940 8007ED40 A208009F */  sb         $t0, 0x9f($s0)
/* 7F944 8007ED44 462081A0 */  cvt.s.d    $f6, $f16
/* 7F948 8007ED48 A209009C */  sb         $t1, 0x9c($s0)
/* 7F94C 8007ED4C E60600C4 */  swc1       $f6, 0xc4($s0)
/* 7F950 8007ED50 A20A009D */  sb         $t2, 0x9d($s0)
/* 7F954 8007ED54 10000004 */  b          .L8007ED68
/* 7F958 8007ED58 A20B009E */   sb        $t3, 0x9e($s0)
/* 7F95C 8007ED5C 8FAC00A4 */  lw         $t4, 0xa4($sp)
.L8007ED60:
/* 7F960 8007ED60 00000000 */  nop
/* 7F964 8007ED64 AE0C018C */  sw         $t4, 0x18c($s0)
.L8007ED68:
/* 7F968 8007ED68 12600003 */  beqz       $s3, .L8007ED78
/* 7F96C 8007ED6C 00000000 */   nop
/* 7F970 8007ED70 10000009 */  b          .L8007ED98
/* 7F974 8007ED74 E61E0148 */   swc1      $f30, 0x148($s0)
.L8007ED78:
/* 7F978 8007ED78 44802000 */  mtc1       $zero, $f4
/* 7F97C 8007ED7C 10000006 */  b          .L8007ED98
/* 7F980 8007ED80 E6040148 */   swc1      $f4, 0x148($s0)
.L8007ED84:
/* 7F984 8007ED84 17D70004 */  bne        $fp, $s7, .L8007ED98
/* 7F988 8007ED88 3C014960 */   lui       $at, 0x4960
/* 7F98C 8007ED8C 44815000 */  mtc1       $at, $f10
/* 7F990 8007ED90 00000000 */  nop
/* 7F994 8007ED94 460AA500 */  add.s      $f20, $f20, $f10
.L8007ED98:
/* 7F998 8007ED98 96220002 */  lhu        $v0, 2($s1)
/* 7F99C 8007ED9C 26940001 */  addiu      $s4, $s4, 1
/* 7F9A0 8007EDA0 328DFFFF */  andi       $t5, $s4, 0xffff
/* 7F9A4 8007EDA4 34018FFF */  ori        $at, $zero, 0x8fff
/* 7F9A8 8007EDA8 01A0A025 */  or         $s4, $t5, $zero
/* 7F9AC 8007EDAC 1441FF64 */  bne        $v0, $at, .L8007EB40
/* 7F9B0 8007EDB0 26310002 */   addiu     $s1, $s1, 2
.L8007EDB4:
/* 7F9B4 8007EDB4 8FBF006C */  lw         $ra, 0x6c($sp)
/* 7F9B8 8007EDB8 C7B50018 */  lwc1       $f21, 0x18($sp)
/* 7F9BC 8007EDBC C7B4001C */  lwc1       $f20, 0x1c($sp)
/* 7F9C0 8007EDC0 C7B70020 */  lwc1       $f23, 0x20($sp)
/* 7F9C4 8007EDC4 C7B60024 */  lwc1       $f22, 0x24($sp)
/* 7F9C8 8007EDC8 C7B90028 */  lwc1       $f25, 0x28($sp)
/* 7F9CC 8007EDCC C7B8002C */  lwc1       $f24, 0x2c($sp)
/* 7F9D0 8007EDD0 C7BB0030 */  lwc1       $f27, 0x30($sp)
/* 7F9D4 8007EDD4 C7BA0034 */  lwc1       $f26, 0x34($sp)
/* 7F9D8 8007EDD8 C7BD0038 */  lwc1       $f29, 0x38($sp)
/* 7F9DC 8007EDDC C7BC003C */  lwc1       $f28, 0x3c($sp)
/* 7F9E0 8007EDE0 C7BF0040 */  lwc1       $f31, 0x40($sp)
/* 7F9E4 8007EDE4 C7BE0044 */  lwc1       $f30, 0x44($sp)
/* 7F9E8 8007EDE8 8FB00048 */  lw         $s0, 0x48($sp)
/* 7F9EC 8007EDEC 8FB1004C */  lw         $s1, 0x4c($sp)
/* 7F9F0 8007EDF0 8FB20050 */  lw         $s2, 0x50($sp)
/* 7F9F4 8007EDF4 8FB30054 */  lw         $s3, 0x54($sp)
/* 7F9F8 8007EDF8 8FB40058 */  lw         $s4, 0x58($sp)
/* 7F9FC 8007EDFC 8FB5005C */  lw         $s5, 0x5c($sp)
/* 7FA00 8007EE00 8FB60060 */  lw         $s6, 0x60($sp)
/* 7FA04 8007EE04 8FB70064 */  lw         $s7, 0x64($sp)
/* 7FA08 8007EE08 8FBE0068 */  lw         $fp, 0x68($sp)
/* 7FA0C 8007EE0C 03E00008 */  jr         $ra
/* 7FA10 8007EE10 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8007EE14
/* 7FA14 8007EE14 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7FA18 8007EE18 3C013F80 */  lui        $at, 0x3f80
/* 7FA1C 8007EE1C 44812000 */  mtc1       $at, $f4
/* 7FA20 8007EE20 8FAE0048 */  lw         $t6, 0x48($sp)
/* 7FA24 8007EE24 8FAF004C */  lw         $t7, 0x4c($sp)
/* 7FA28 8007EE28 AFBF0034 */  sw         $ra, 0x34($sp)
/* 7FA2C 8007EE2C 2418007F */  addiu      $t8, $zero, 0x7f
/* 7FA30 8007EE30 2419007F */  addiu      $t9, $zero, 0x7f
/* 7FA34 8007EE34 2408007F */  addiu      $t0, $zero, 0x7f
/* 7FA38 8007EE38 240900FF */  addiu      $t1, $zero, 0xff
/* 7FA3C 8007EE3C AFA90024 */  sw         $t1, 0x24($sp)
/* 7FA40 8007EE40 AFA80020 */  sw         $t0, 0x20($sp)
/* 7FA44 8007EE44 AFB9001C */  sw         $t9, 0x1c($sp)
/* 7FA48 8007EE48 AFB80018 */  sw         $t8, 0x18($sp)
/* 7FA4C 8007EE4C AFA00028 */  sw         $zero, 0x28($sp)
/* 7FA50 8007EE50 E7A4002C */  swc1       $f4, 0x2c($sp)
/* 7FA54 8007EE54 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7FA58 8007EE58 0C01FA85 */  jal        func_8007EA14
/* 7FA5C 8007EE5C AFAF0014 */   sw        $t7, 0x14($sp)
/* 7FA60 8007EE60 8FBF0034 */  lw         $ra, 0x34($sp)
/* 7FA64 8007EE64 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7FA68 8007EE68 03E00008 */  jr         $ra
/* 7FA6C 8007EE6C 00000000 */   nop

glabel func_8007EE70
/* 7FA70 8007EE70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7FA74 8007EE74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FA78 8007EE78 AFA40020 */  sw         $a0, 0x20($sp)
/* 7FA7C 8007EE7C AFA50024 */  sw         $a1, 0x24($sp)
/* 7FA80 8007EE80 AFA60028 */  sw         $a2, 0x28($sp)
/* 7FA84 8007EE84 0C00A14A */  jal        func_80028528
/* 7FA88 8007EE88 AFA7002C */   sw        $a3, 0x2c($sp)
/* 7FA8C 8007EE8C 1040002E */  beqz       $v0, .L8007EF48
/* 7FA90 8007EE90 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7FA94 8007EE94 00047080 */  sll        $t6, $a0, 2
/* 7FA98 8007EE98 01C47023 */  subu       $t6, $t6, $a0
/* 7FA9C 8007EE9C 000E7080 */  sll        $t6, $t6, 2
/* 7FAA0 8007EEA0 01C47021 */  addu       $t6, $t6, $a0
/* 7FAA4 8007EEA4 000E7080 */  sll        $t6, $t6, 2
/* 7FAA8 8007EEA8 01C47023 */  subu       $t6, $t6, $a0
/* 7FAAC 8007EEAC 3C0F800F */  lui        $t7, %hi(gActors)
/* 7FAB0 8007EEB0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7FAB4 8007EEB4 000E70C0 */  sll        $t6, $t6, 3
/* 7FAB8 8007EEB8 01CF1021 */  addu       $v0, $t6, $t7
/* 7FABC 8007EEBC 24180034 */  addiu      $t8, $zero, 0x34
/* 7FAC0 8007EEC0 A45800D2 */  sh         $t8, 0xd2($v0)
/* 7FAC4 8007EEC4 AFA20018 */  sw         $v0, 0x18($sp)
/* 7FAC8 8007EEC8 0C0078B4 */  jal        func_8001E2D0
/* 7FACC 8007EECC A7A4001E */   sh        $a0, 0x1e($sp)
/* 7FAD0 8007EED0 8FA20018 */  lw         $v0, 0x18($sp)
/* 7FAD4 8007EED4 8FA30020 */  lw         $v1, 0x20($sp)
/* 7FAD8 8007EED8 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7FADC 8007EEDC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 7FAE0 8007EEE0 8FAC002C */  lw         $t4, 0x2c($sp)
/* 7FAE4 8007EEE4 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 7FAE8 8007EEE8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 7FAEC 8007EEEC 97A4001E */  lhu        $a0, 0x1e($sp)
/* 7FAF0 8007EEF0 24080003 */  addiu      $t0, $zero, 3
/* 7FAF4 8007EEF4 240902D0 */  addiu      $t1, $zero, 0x2d0
/* 7FAF8 8007EEF8 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 7FAFC 8007EEFC 3079DFFF */  andi       $t9, $v1, 0xdfff
/* 7FB00 8007EF00 306E2000 */  andi       $t6, $v1, 0x2000
/* 7FB04 8007EF04 A4590094 */  sh         $t9, 0x94($v0)
/* 7FB08 8007EF08 AC480080 */  sw         $t0, 0x80($v0)
/* 7FB0C 8007EF0C A4490084 */  sh         $t1, 0x84($v0)
/* 7FB10 8007EF10 A04D009F */  sb         $t5, 0x9f($v0)
/* 7FB14 8007EF14 AC4A0088 */  sw         $t2, 0x88($v0)
/* 7FB18 8007EF18 AC4B008C */  sw         $t3, 0x8c($v0)
/* 7FB1C 8007EF1C AC4C0090 */  sw         $t4, 0x90($v0)
/* 7FB20 8007EF20 E44400B4 */  swc1       $f4, 0xb4($v0)
/* 7FB24 8007EF24 11C00005 */  beqz       $t6, .L8007EF3C
/* 7FB28 8007EF28 E44600B8 */   swc1      $f6, 0xb8($v0)
/* 7FB2C 8007EF2C 3C013F80 */  lui        $at, 0x3f80
/* 7FB30 8007EF30 44814000 */  mtc1       $at, $f8
/* 7FB34 8007EF34 10000004 */  b          .L8007EF48
/* 7FB38 8007EF38 E4480148 */   swc1      $f8, 0x148($v0)
.L8007EF3C:
/* 7FB3C 8007EF3C 44805000 */  mtc1       $zero, $f10
/* 7FB40 8007EF40 00000000 */  nop
/* 7FB44 8007EF44 E44A0148 */  swc1       $f10, 0x148($v0)
.L8007EF48:
/* 7FB48 8007EF48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FB4C 8007EF4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FB50 8007EF50 03E00008 */  jr         $ra
/* 7FB54 8007EF54 00801025 */   or        $v0, $a0, $zero

glabel func_8007EF58
/* 7FB58 8007EF58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7FB5C 8007EF5C 30AF0100 */  andi       $t7, $a1, 0x100
/* 7FB60 8007EF60 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7FB64 8007EF64 AFA50024 */  sw         $a1, 0x24($sp)
/* 7FB68 8007EF68 AFA60028 */  sw         $a2, 0x28($sp)
/* 7FB6C 8007EF6C 11E00005 */  beqz       $t7, .L8007EF84
/* 7FB70 8007EF70 AFA7002C */   sw        $a3, 0x2c($sp)
/* 7FB74 8007EF74 3C014180 */  lui        $at, 0x4180
/* 7FB78 8007EF78 44816000 */  mtc1       $at, $f12
/* 7FB7C 8007EF7C 10000005 */  b          .L8007EF94
/* 7FB80 8007EF80 94820000 */   lhu       $v0, ($a0)
.L8007EF84:
/* 7FB84 8007EF84 3C014100 */  lui        $at, 0x4100
/* 7FB88 8007EF88 44816000 */  mtc1       $at, $f12
/* 7FB8C 8007EF8C 00000000 */  nop
/* 7FB90 8007EF90 94820000 */  lhu        $v0, ($a0)
.L8007EF94:
/* 7FB94 8007EF94 34038FFF */  ori        $v1, $zero, 0x8fff
/* 7FB98 8007EF98 44800000 */  mtc1       $zero, $f0
/* 7FB9C 8007EF9C 10620013 */  beq        $v1, $v0, .L8007EFEC
/* 7FBA0 8007EFA0 3C014004 */   lui       $at, 0x4004
/* 7FBA4 8007EFA4 44811800 */  mtc1       $at, $f3
/* 7FBA8 8007EFA8 44801000 */  mtc1       $zero, $f2
/* 7FBAC 8007EFAC 00000000 */  nop
/* 7FBB0 8007EFB0 30588000 */  andi       $t8, $v0, 0x8000
.L8007EFB4:
/* 7FBB4 8007EFB4 13000008 */  beqz       $t8, .L8007EFD8
/* 7FBB8 8007EFB8 00000000 */   nop
/* 7FBBC 8007EFBC 460061A1 */  cvt.d.s    $f6, $f12
/* 7FBC0 8007EFC0 00000000 */  nop
/* 7FBC4 8007EFC4 46223203 */  div.d      $f8, $f6, $f2
/* 7FBC8 8007EFC8 46000121 */  cvt.d.s    $f4, $f0
/* 7FBCC 8007EFCC 46282280 */  add.d      $f10, $f4, $f8
/* 7FBD0 8007EFD0 10000002 */  b          .L8007EFDC
/* 7FBD4 8007EFD4 46205020 */   cvt.s.d   $f0, $f10
.L8007EFD8:
/* 7FBD8 8007EFD8 460C0000 */  add.s      $f0, $f0, $f12
.L8007EFDC:
/* 7FBDC 8007EFDC 94820002 */  lhu        $v0, 2($a0)
/* 7FBE0 8007EFE0 24840002 */  addiu      $a0, $a0, 2
/* 7FBE4 8007EFE4 1462FFF3 */  bne        $v1, $v0, .L8007EFB4
/* 7FBE8 8007EFE8 30588000 */   andi      $t8, $v0, 0x8000
.L8007EFEC:
/* 7FBEC 8007EFEC 3C01800F */  lui        $at, %hi(D_800ECFF0)
/* 7FBF0 8007EFF0 C433CFF0 */  lwc1       $f19, %lo(D_800ECFF0)($at)
/* 7FBF4 8007EFF4 C432CFF4 */  lwc1       $f18, -0x300c($at)
/* 7FBF8 8007EFF8 46006421 */  cvt.d.s    $f16, $f12
/* 7FBFC 8007EFFC 46328182 */  mul.d      $f6, $f16, $f18
/* 7FC00 8007F000 46000121 */  cvt.d.s    $f4, $f0
/* 7FC04 8007F004 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 7FC08 8007F008 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* 7FC0C 8007F00C 8FA40024 */  lw         $a0, 0x24($sp)
/* 7FC10 8007F010 46262203 */  div.d      $f8, $f4, $f6
/* 7FC14 8007F014 460012A1 */  cvt.d.s    $f10, $f2
/* 7FC18 8007F018 8FA50028 */  lw         $a1, 0x28($sp)
/* 7FC1C 8007F01C 8FA6002C */  lw         $a2, 0x2c($sp)
/* 7FC20 8007F020 8FA70030 */  lw         $a3, 0x30($sp)
/* 7FC24 8007F024 E7B20014 */  swc1       $f18, 0x14($sp)
/* 7FC28 8007F028 462A4402 */  mul.d      $f16, $f8, $f10
/* 7FC2C 8007F02C 462080A0 */  cvt.s.d    $f2, $f16
/* 7FC30 8007F030 0C01FB9C */  jal        func_8007EE70
/* 7FC34 8007F034 E7A20010 */   swc1      $f2, 0x10($sp)
/* 7FC38 8007F038 1040000B */  beqz       $v0, .L8007F068
/* 7FC3C 8007F03C 00024080 */   sll       $t0, $v0, 2
/* 7FC40 8007F040 01024023 */  subu       $t0, $t0, $v0
/* 7FC44 8007F044 00084080 */  sll        $t0, $t0, 2
/* 7FC48 8007F048 01024021 */  addu       $t0, $t0, $v0
/* 7FC4C 8007F04C 00084080 */  sll        $t0, $t0, 2
/* 7FC50 8007F050 01024023 */  subu       $t0, $t0, $v0
/* 7FC54 8007F054 97B90036 */  lhu        $t9, 0x36($sp)
/* 7FC58 8007F058 000840C0 */  sll        $t0, $t0, 3
/* 7FC5C 8007F05C 3C01800F */  lui        $at, %hi(D_800EF5AF)
/* 7FC60 8007F060 00280821 */  addu       $at, $at, $t0
/* 7FC64 8007F064 A039F5AF */  sb         $t9, %lo(D_800EF5AF)($at)
.L8007F068:
/* 7FC68 8007F068 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7FC6C 8007F06C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FC70 8007F070 03E00008 */  jr         $ra
/* 7FC74 8007F074 00000000 */   nop

glabel func_8007F078
/* 7FC78 8007F078 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7FC7C 8007F07C 000E7880 */  sll        $t7, $t6, 2
/* 7FC80 8007F080 01EE7823 */  subu       $t7, $t7, $t6
/* 7FC84 8007F084 000F7880 */  sll        $t7, $t7, 2
/* 7FC88 8007F088 01EE7821 */  addu       $t7, $t7, $t6
/* 7FC8C 8007F08C 000F7880 */  sll        $t7, $t7, 2
/* 7FC90 8007F090 01EE7823 */  subu       $t7, $t7, $t6
/* 7FC94 8007F094 3C18800F */  lui        $t8, %hi(gActors)
/* 7FC98 8007F098 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7FC9C 8007F09C 000F78C0 */  sll        $t7, $t7, 3
/* 7FCA0 8007F0A0 01F81821 */  addu       $v1, $t7, $t8
/* 7FCA4 8007F0A4 946200D0 */  lhu        $v0, 0xd0($v1)
/* 7FCA8 8007F0A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7FCAC 8007F0AC 94650156 */  lhu        $a1, 0x156($v1)
/* 7FCB0 8007F0B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FCB4 8007F0B4 10400009 */  beqz       $v0, .L8007F0DC
/* 7FCB8 8007F0B8 AFA40028 */   sw        $a0, 0x28($sp)
/* 7FCBC 8007F0BC 24010001 */  addiu      $at, $zero, 1
/* 7FCC0 8007F0C0 10410027 */  beq        $v0, $at, .L8007F160
/* 7FCC4 8007F0C4 00057880 */   sll       $t7, $a1, 2
/* 7FCC8 8007F0C8 24010002 */  addiu      $at, $zero, 2
/* 7FCCC 8007F0CC 1041005D */  beq        $v0, $at, .L8007F244
/* 7FCD0 8007F0D0 0005C080 */   sll       $t8, $a1, 2
/* 7FCD4 8007F0D4 10000072 */  b          .L8007F2A0
/* 7FCD8 8007F0D8 3C014180 */   lui       $at, 0x4180
.L8007F0DC:
/* 7FCDC 8007F0DC 3C013F80 */  lui        $at, 0x3f80
/* 7FCE0 8007F0E0 44813000 */  mtc1       $at, $f6
/* 7FCE4 8007F0E4 C4640120 */  lwc1       $f4, 0x120($v1)
/* 7FCE8 8007F0E8 44800000 */  mtc1       $zero, $f0
/* 7FCEC 8007F0EC 46062201 */  sub.s      $f8, $f4, $f6
/* 7FCF0 8007F0F0 00054880 */  sll        $t1, $a1, 2
/* 7FCF4 8007F0F4 E4680120 */  swc1       $f8, 0x120($v1)
/* 7FCF8 8007F0F8 C46A0120 */  lwc1       $f10, 0x120($v1)
/* 7FCFC 8007F0FC 01254821 */  addu       $t1, $t1, $a1
/* 7FD00 8007F100 4600503C */  c.lt.s     $f10, $f0
/* 7FD04 8007F104 00094940 */  sll        $t1, $t1, 5
/* 7FD08 8007F108 45000064 */  bc1f       .L8007F29C
/* 7FD0C 8007F10C 3C0A8010 */   lui       $t2, %hi(D_80104098)
/* 7FD10 8007F110 3C014180 */  lui        $at, 0x4180
/* 7FD14 8007F114 44819000 */  mtc1       $at, $f18
/* 7FD18 8007F118 C4700124 */  lwc1       $f16, 0x124($v1)
/* 7FD1C 8007F11C 254A4098 */  addiu      $t2, $t2, %lo(D_80104098)
/* 7FD20 8007F120 46128103 */  div.s      $f4, $f16, $f18
/* 7FD24 8007F124 012A1021 */  addu       $v0, $t1, $t2
/* 7FD28 8007F128 947900D0 */  lhu        $t9, 0xd0($v1)
/* 7FD2C 8007F12C 846D0088 */  lh         $t5, 0x88($v1)
/* 7FD30 8007F130 846E008C */  lh         $t6, 0x8c($v1)
/* 7FD34 8007F134 240B0003 */  addiu      $t3, $zero, 3
/* 7FD38 8007F138 240C02D0 */  addiu      $t4, $zero, 0x2d0
/* 7FD3C 8007F13C 27280001 */  addiu      $t0, $t9, 1
/* 7FD40 8007F140 A46800D0 */  sh         $t0, 0xd0($v1)
/* 7FD44 8007F144 A44B0080 */  sh         $t3, 0x80($v0)
/* 7FD48 8007F148 A44C0082 */  sh         $t4, 0x82($v0)
/* 7FD4C 8007F14C E4400090 */  swc1       $f0, 0x90($v0)
/* 7FD50 8007F150 E444008C */  swc1       $f4, 0x8c($v0)
/* 7FD54 8007F154 A44D0084 */  sh         $t5, 0x84($v0)
/* 7FD58 8007F158 10000050 */  b          .L8007F29C
/* 7FD5C 8007F15C A44E0088 */   sh        $t6, 0x88($v0)
.L8007F160:
/* 7FD60 8007F160 01E57821 */  addu       $t7, $t7, $a1
/* 7FD64 8007F164 3C188010 */  lui        $t8, %hi(D_80104098)
/* 7FD68 8007F168 27184098 */  addiu      $t8, $t8, %lo(D_80104098)
/* 7FD6C 8007F16C 000F7940 */  sll        $t7, $t7, 5
/* 7FD70 8007F170 3C014180 */  lui        $at, 0x4180
/* 7FD74 8007F174 44814000 */  mtc1       $at, $f8
/* 7FD78 8007F178 C4660128 */  lwc1       $f6, 0x128($v1)
/* 7FD7C 8007F17C 01F81021 */  addu       $v0, $t7, $t8
/* 7FD80 8007F180 C44C0090 */  lwc1       $f12, 0x90($v0)
/* 7FD84 8007F184 3C063E4C */  lui        $a2, 0x3e4c
/* 7FD88 8007F188 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 7FD8C 8007F18C AFA20018 */  sw         $v0, 0x18($sp)
/* 7FD90 8007F190 AFA3001C */  sw         $v1, 0x1c($sp)
/* 7FD94 8007F194 A7A50026 */  sh         $a1, 0x26($sp)
/* 7FD98 8007F198 0C00A618 */  jal        func_80029860
/* 7FD9C 8007F19C 46083383 */   div.s     $f14, $f6, $f8
/* 7FDA0 8007F1A0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 7FDA4 8007F1A4 8FA20018 */  lw         $v0, 0x18($sp)
/* 7FDA8 8007F1A8 8C79016C */  lw         $t9, 0x16c($v1)
/* 7FDAC 8007F1AC 97A50026 */  lhu        $a1, 0x26($sp)
/* 7FDB0 8007F1B0 13200013 */  beqz       $t9, .L8007F200
/* 7FDB4 8007F1B4 E4400090 */   swc1      $f0, 0x90($v0)
/* 7FDB8 8007F1B8 3C02800C */  lui        $v0, %hi(buttonPress)
/* 7FDBC 8007F1BC 3C08800C */  lui        $t0, %hi(D_800BE514)
/* 7FDC0 8007F1C0 9508E514 */  lhu        $t0, %lo(D_800BE514)($t0)
/* 7FDC4 8007F1C4 9442E4FC */  lhu        $v0, %lo(buttonPress)($v0)
/* 7FDC8 8007F1C8 3C0A800C */  lui        $t2, %hi(D_800BE518)
/* 7FDCC 8007F1CC 00484824 */  and        $t1, $v0, $t0
/* 7FDD0 8007F1D0 15200006 */  bnez       $t1, .L8007F1EC
/* 7FDD4 8007F1D4 00000000 */   nop
/* 7FDD8 8007F1D8 954AE518 */  lhu        $t2, %lo(D_800BE518)($t2)
/* 7FDDC 8007F1DC 00000000 */  nop
/* 7FDE0 8007F1E0 004A5824 */  and        $t3, $v0, $t2
/* 7FDE4 8007F1E4 11600007 */  beqz       $t3, .L8007F204
/* 7FDE8 8007F1E8 3C013F80 */   lui       $at, 0x3f80
.L8007F1EC:
/* 7FDEC 8007F1EC 946C00D0 */  lhu        $t4, 0xd0($v1)
/* 7FDF0 8007F1F0 00000000 */  nop
/* 7FDF4 8007F1F4 258D0001 */  addiu      $t5, $t4, 1
/* 7FDF8 8007F1F8 10000028 */  b          .L8007F29C
/* 7FDFC 8007F1FC A46D00D0 */   sh        $t5, 0xd0($v1)
.L8007F200:
/* 7FE00 8007F200 3C013F80 */  lui        $at, 0x3f80
.L8007F204:
/* 7FE04 8007F204 44818000 */  mtc1       $at, $f16
/* 7FE08 8007F208 C46A011C */  lwc1       $f10, 0x11c($v1)
/* 7FE0C 8007F20C 44800000 */  mtc1       $zero, $f0
/* 7FE10 8007F210 46105481 */  sub.s      $f18, $f10, $f16
/* 7FE14 8007F214 E472011C */  swc1       $f18, 0x11c($v1)
/* 7FE18 8007F218 C464011C */  lwc1       $f4, 0x11c($v1)
/* 7FE1C 8007F21C 00000000 */  nop
/* 7FE20 8007F220 4600203C */  c.lt.s     $f4, $f0
/* 7FE24 8007F224 00000000 */  nop
/* 7FE28 8007F228 4500001D */  bc1f       .L8007F2A0
/* 7FE2C 8007F22C 3C014180 */   lui       $at, 0x4180
/* 7FE30 8007F230 946E00D0 */  lhu        $t6, 0xd0($v1)
/* 7FE34 8007F234 00000000 */  nop
/* 7FE38 8007F238 25CF0001 */  addiu      $t7, $t6, 1
/* 7FE3C 8007F23C 10000017 */  b          .L8007F29C
/* 7FE40 8007F240 A46F00D0 */   sh        $t7, 0xd0($v1)
.L8007F244:
/* 7FE44 8007F244 0305C021 */  addu       $t8, $t8, $a1
/* 7FE48 8007F248 3C198010 */  lui        $t9, %hi(D_80104098)
/* 7FE4C 8007F24C 27394098 */  addiu      $t9, $t9, %lo(D_80104098)
/* 7FE50 8007F250 0018C140 */  sll        $t8, $t8, 5
/* 7FE54 8007F254 03191021 */  addu       $v0, $t8, $t9
/* 7FE58 8007F258 3C01800F */  lui        $at, %hi(D_800ECFF8)
/* 7FE5C 8007F25C C4460090 */  lwc1       $f6, 0x90($v0)
/* 7FE60 8007F260 C42BCFF8 */  lwc1       $f11, %lo(D_800ECFF8)($at)
/* 7FE64 8007F264 C42ACFFC */  lwc1       $f10, -0x3004($at)
/* 7FE68 8007F268 46003221 */  cvt.d.s    $f8, $f6
/* 7FE6C 8007F26C 462A4401 */  sub.d      $f16, $f8, $f10
/* 7FE70 8007F270 44800000 */  mtc1       $zero, $f0
/* 7FE74 8007F274 462084A0 */  cvt.s.d    $f18, $f16
/* 7FE78 8007F278 E4520090 */  swc1       $f18, 0x90($v0)
/* 7FE7C 8007F27C C4440090 */  lwc1       $f4, 0x90($v0)
/* 7FE80 8007F280 00000000 */  nop
/* 7FE84 8007F284 4600203C */  c.lt.s     $f4, $f0
/* 7FE88 8007F288 00000000 */  nop
/* 7FE8C 8007F28C 45000004 */  bc1f       .L8007F2A0
/* 7FE90 8007F290 3C014180 */   lui       $at, 0x4180
/* 7FE94 8007F294 AC600080 */  sw         $zero, 0x80($v1)
/* 7FE98 8007F298 A4400080 */  sh         $zero, 0x80($v0)
.L8007F29C:
/* 7FE9C 8007F29C 3C014180 */  lui        $at, 0x4180
.L8007F2A0:
/* 7FEA0 8007F2A0 44814000 */  mtc1       $at, $f8
/* 7FEA4 8007F2A4 C4660128 */  lwc1       $f6, 0x128($v1)
/* 7FEA8 8007F2A8 3C014300 */  lui        $at, 0x4300
/* 7FEAC 8007F2AC 46083283 */  div.s      $f10, $f6, $f8
/* 7FEB0 8007F2B0 44818000 */  mtc1       $at, $f16
/* 7FEB4 8007F2B4 00054080 */  sll        $t0, $a1, 2
/* 7FEB8 8007F2B8 01054023 */  subu       $t0, $t0, $a1
/* 7FEBC 8007F2BC 00084080 */  sll        $t0, $t0, 2
/* 7FEC0 8007F2C0 01054021 */  addu       $t0, $t0, $a1
/* 7FEC4 8007F2C4 00084080 */  sll        $t0, $t0, 2
/* 7FEC8 8007F2C8 01054023 */  subu       $t0, $t0, $a1
/* 7FECC 8007F2CC 3C09800F */  lui        $t1, %hi(gActors)
/* 7FED0 8007F2D0 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 7FED4 8007F2D4 000840C0 */  sll        $t0, $t0, 3
/* 7FED8 8007F2D8 01091021 */  addu       $v0, $t0, $t1
/* 7FEDC 8007F2DC 460A8483 */  div.s      $f18, $f16, $f10
/* 7FEE0 8007F2E0 C44400B8 */  lwc1       $f4, 0xb8($v0)
/* 7FEE4 8007F2E4 240B0001 */  addiu      $t3, $zero, 1
/* 7FEE8 8007F2E8 3C014F00 */  lui        $at, 0x4f00
/* 7FEEC 8007F2EC 46122182 */  mul.s      $f6, $f4, $f18
/* 7FEF0 8007F2F0 444AF800 */  cfc1       $t2, $31
/* 7FEF4 8007F2F4 44CBF800 */  ctc1       $t3, $31
/* 7FEF8 8007F2F8 00000000 */  nop
/* 7FEFC 8007F2FC 46003224 */  cvt.w.s    $f8, $f6
/* 7FF00 8007F300 444BF800 */  cfc1       $t3, $31
/* 7FF04 8007F304 00000000 */  nop
/* 7FF08 8007F308 316B0078 */  andi       $t3, $t3, 0x78
/* 7FF0C 8007F30C 11600012 */  beqz       $t3, .L8007F358
/* 7FF10 8007F310 00000000 */   nop
/* 7FF14 8007F314 44814000 */  mtc1       $at, $f8
/* 7FF18 8007F318 240B0001 */  addiu      $t3, $zero, 1
/* 7FF1C 8007F31C 46083201 */  sub.s      $f8, $f6, $f8
/* 7FF20 8007F320 3C018000 */  lui        $at, 0x8000
/* 7FF24 8007F324 44CBF800 */  ctc1       $t3, $31
/* 7FF28 8007F328 00000000 */  nop
/* 7FF2C 8007F32C 46004224 */  cvt.w.s    $f8, $f8
/* 7FF30 8007F330 444BF800 */  cfc1       $t3, $31
/* 7FF34 8007F334 00000000 */  nop
/* 7FF38 8007F338 316B0078 */  andi       $t3, $t3, 0x78
/* 7FF3C 8007F33C 15600004 */  bnez       $t3, .L8007F350
/* 7FF40 8007F340 00000000 */   nop
/* 7FF44 8007F344 440B4000 */  mfc1       $t3, $f8
/* 7FF48 8007F348 10000007 */  b          .L8007F368
/* 7FF4C 8007F34C 01615825 */   or        $t3, $t3, $at
.L8007F350:
/* 7FF50 8007F350 10000005 */  b          .L8007F368
/* 7FF54 8007F354 240BFFFF */   addiu     $t3, $zero, -1
.L8007F358:
/* 7FF58 8007F358 440B4000 */  mfc1       $t3, $f8
/* 7FF5C 8007F35C 00000000 */  nop
/* 7FF60 8007F360 0560FFFB */  bltz       $t3, .L8007F350
/* 7FF64 8007F364 00000000 */   nop
.L8007F368:
/* 7FF68 8007F368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7FF6C 8007F36C 44CAF800 */  ctc1       $t2, $31
/* 7FF70 8007F370 A04B009F */  sb         $t3, 0x9f($v0)
/* 7FF74 8007F374 03E00008 */  jr         $ra
/* 7FF78 8007F378 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007F37C
/* 7FF7C 8007F37C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 7FF80 8007F380 00077080 */  sll        $t6, $a3, 2
/* 7FF84 8007F384 01C77023 */  subu       $t6, $t6, $a3
/* 7FF88 8007F388 000E7080 */  sll        $t6, $t6, 2
/* 7FF8C 8007F38C 01C77021 */  addu       $t6, $t6, $a3
/* 7FF90 8007F390 000E7080 */  sll        $t6, $t6, 2
/* 7FF94 8007F394 01C77023 */  subu       $t6, $t6, $a3
/* 7FF98 8007F398 3C0F800F */  lui        $t7, %hi(gActors)
/* 7FF9C 8007F39C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7FFA0 8007F3A0 000E70C0 */  sll        $t6, $t6, 3
/* 7FFA4 8007F3A4 01CF1821 */  addu       $v1, $t6, $t7
/* 7FFA8 8007F3A8 946200D0 */  lhu        $v0, 0xd0($v1)
/* 7FFAC 8007F3AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7FFB0 8007F3B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FFB4 8007F3B4 10400009 */  beqz       $v0, .L8007F3DC
/* 7FFB8 8007F3B8 AFA40028 */   sw        $a0, 0x28($sp)
/* 7FFBC 8007F3BC 24010001 */  addiu      $at, $zero, 1
/* 7FFC0 8007F3C0 10410016 */  beq        $v0, $at, .L8007F41C
/* 7FFC4 8007F3C4 240500FF */   addiu     $a1, $zero, 0xff
/* 7FFC8 8007F3C8 24010002 */  addiu      $at, $zero, 2
/* 7FFCC 8007F3CC 1041004A */  beq        $v0, $at, .L8007F4F8
/* 7FFD0 8007F3D0 00000000 */   nop
/* 7FFD4 8007F3D4 1000005F */  b          .L8007F554
/* 7FFD8 8007F3D8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007F3DC:
/* 7FFDC 8007F3DC 3C013F80 */  lui        $at, 0x3f80
/* 7FFE0 8007F3E0 44813000 */  mtc1       $at, $f6
/* 7FFE4 8007F3E4 C4640118 */  lwc1       $f4, 0x118($v1)
/* 7FFE8 8007F3E8 44808000 */  mtc1       $zero, $f16
/* 7FFEC 8007F3EC 46062201 */  sub.s      $f8, $f4, $f6
/* 7FFF0 8007F3F0 E4680118 */  swc1       $f8, 0x118($v1)
/* 7FFF4 8007F3F4 C46A0118 */  lwc1       $f10, 0x118($v1)
/* 7FFF8 8007F3F8 00000000 */  nop
/* 7FFFC 8007F3FC 4610503C */  c.lt.s     $f10, $f16
/* 80000 8007F400 00000000 */  nop
/* 80004 8007F404 45000053 */  bc1f       .L8007F554
/* 80008 8007F408 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8000C 8007F40C 0C01F555 */  jal        func_8007D554
/* 80010 8007F410 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 80014 8007F414 1000004F */  b          .L8007F554
/* 80018 8007F418 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007F41C:
/* 8001C 8007F41C 9064009F */  lbu        $a0, 0x9f($v1)
/* 80020 8007F420 24060020 */  addiu      $a2, $zero, 0x20
/* 80024 8007F424 AFA3001C */  sw         $v1, 0x1c($sp)
/* 80028 8007F428 0C00A607 */  jal        func_8002981C
/* 8002C 8007F42C A7A7002A */   sh        $a3, 0x2a($sp)
/* 80030 8007F430 8FA3001C */  lw         $v1, 0x1c($sp)
/* 80034 8007F434 3C013F80 */  lui        $at, 0x3f80
/* 80038 8007F438 44817000 */  mtc1       $at, $f14
/* 8003C 8007F43C 3C063DCC */  lui        $a2, 0x3dcc
/* 80040 8007F440 C46C00B8 */  lwc1       $f12, 0xb8($v1)
/* 80044 8007F444 34C6CCCD */  ori        $a2, $a2, 0xcccd
/* 80048 8007F448 0C00A618 */  jal        func_80029860
/* 8004C 8007F44C A062009F */   sb        $v0, 0x9f($v1)
/* 80050 8007F450 8FA3001C */  lw         $v1, 0x1c($sp)
/* 80054 8007F454 97A4002A */  lhu        $a0, 0x2a($sp)
/* 80058 8007F458 0C01F555 */  jal        func_8007D554
/* 8005C 8007F45C E46000B8 */   swc1      $f0, 0xb8($v1)
/* 80060 8007F460 8FA3001C */  lw         $v1, 0x1c($sp)
/* 80064 8007F464 3C02800C */  lui        $v0, %hi(buttonPress)
/* 80068 8007F468 8C78016C */  lw         $t8, 0x16c($v1)
/* 8006C 8007F46C 3C19800C */  lui        $t9, %hi(D_800BE514)
/* 80070 8007F470 13000011 */  beqz       $t8, .L8007F4B8
/* 80074 8007F474 3C013F80 */   lui       $at, 0x3f80
/* 80078 8007F478 9442E4FC */  lhu        $v0, %lo(buttonPress)($v0)
/* 8007C 8007F47C 9739E514 */  lhu        $t9, %lo(D_800BE514)($t9)
/* 80080 8007F480 3C09800C */  lui        $t1, %hi(D_800BE518)
/* 80084 8007F484 00594024 */  and        $t0, $v0, $t9
/* 80088 8007F488 15000006 */  bnez       $t0, .L8007F4A4
/* 8008C 8007F48C 00000000 */   nop
/* 80090 8007F490 9529E518 */  lhu        $t1, %lo(D_800BE518)($t1)
/* 80094 8007F494 00000000 */  nop
/* 80098 8007F498 00495024 */  and        $t2, $v0, $t1
/* 8009C 8007F49C 11400006 */  beqz       $t2, .L8007F4B8
/* 800A0 8007F4A0 00000000 */   nop
.L8007F4A4:
/* 800A4 8007F4A4 946B00D0 */  lhu        $t3, 0xd0($v1)
/* 800A8 8007F4A8 00000000 */  nop
/* 800AC 8007F4AC 256C0001 */  addiu      $t4, $t3, 1
/* 800B0 8007F4B0 10000027 */  b          .L8007F550
/* 800B4 8007F4B4 A46C00D0 */   sh        $t4, 0xd0($v1)
.L8007F4B8:
/* 800B8 8007F4B8 C4720114 */  lwc1       $f18, 0x114($v1)
/* 800BC 8007F4BC 44812000 */  mtc1       $at, $f4
/* 800C0 8007F4C0 44805000 */  mtc1       $zero, $f10
/* 800C4 8007F4C4 46049181 */  sub.s      $f6, $f18, $f4
/* 800C8 8007F4C8 E4660114 */  swc1       $f6, 0x114($v1)
/* 800CC 8007F4CC C4680114 */  lwc1       $f8, 0x114($v1)
/* 800D0 8007F4D0 00000000 */  nop
/* 800D4 8007F4D4 460A403C */  c.lt.s     $f8, $f10
/* 800D8 8007F4D8 00000000 */  nop
/* 800DC 8007F4DC 4500001D */  bc1f       .L8007F554
/* 800E0 8007F4E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 800E4 8007F4E4 946D00D0 */  lhu        $t5, 0xd0($v1)
/* 800E8 8007F4E8 00000000 */  nop
/* 800EC 8007F4EC 25AE0001 */  addiu      $t6, $t5, 1
/* 800F0 8007F4F0 10000017 */  b          .L8007F550
/* 800F4 8007F4F4 A46E00D0 */   sh        $t6, 0xd0($v1)
.L8007F4F8:
/* 800F8 8007F4F8 3C01800F */  lui        $at, %hi(D_800ED000)
/* 800FC 8007F4FC C47000B8 */  lwc1       $f16, 0xb8($v1)
/* 80100 8007F500 C425D000 */  lwc1       $f5, %lo(D_800ED000)($at)
/* 80104 8007F504 C424D004 */  lwc1       $f4, -0x2ffc($at)
/* 80108 8007F508 460084A1 */  cvt.d.s    $f18, $f16
/* 8010C 8007F50C 46249181 */  sub.d      $f6, $f18, $f4
/* 80110 8007F510 44808000 */  mtc1       $zero, $f16
/* 80114 8007F514 46203220 */  cvt.s.d    $f8, $f6
/* 80118 8007F518 906F009F */  lbu        $t7, 0x9f($v1)
/* 8011C 8007F51C E46800B8 */  swc1       $f8, 0xb8($v1)
/* 80120 8007F520 C46A00B8 */  lwc1       $f10, 0xb8($v1)
/* 80124 8007F524 25F8FFE0 */  addiu      $t8, $t7, -0x20
/* 80128 8007F528 4610503C */  c.lt.s     $f10, $f16
/* 8012C 8007F52C A078009F */  sb         $t8, 0x9f($v1)
/* 80130 8007F530 45000005 */  bc1f       .L8007F548
/* 80134 8007F534 00000000 */   nop
/* 80138 8007F538 0C01F548 */  jal        func_8007D520
/* 8013C 8007F53C 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 80140 8007F540 10000004 */  b          .L8007F554
/* 80144 8007F544 8FBF0014 */   lw        $ra, 0x14($sp)
.L8007F548:
/* 80148 8007F548 0C01F555 */  jal        func_8007D554
/* 8014C 8007F54C 30E4FFFF */   andi      $a0, $a3, 0xffff
.L8007F550:
/* 80150 8007F550 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007F554:
/* 80154 8007F554 27BD0028 */  addiu      $sp, $sp, 0x28
/* 80158 8007F558 03E00008 */  jr         $ra
/* 8015C 8007F55C 00000000 */   nop

glabel func_8007F560
/* 80160 8007F560 308EFFFF */  andi       $t6, $a0, 0xffff
/* 80164 8007F564 000E7880 */  sll        $t7, $t6, 2
/* 80168 8007F568 01EE7823 */  subu       $t7, $t7, $t6
/* 8016C 8007F56C 000F7880 */  sll        $t7, $t7, 2
/* 80170 8007F570 01EE7821 */  addu       $t7, $t7, $t6
/* 80174 8007F574 000F7880 */  sll        $t7, $t7, 2
/* 80178 8007F578 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 8017C 8007F57C 3C02800F */  lui        $v0, %hi(gActors)
/* 80180 8007F580 01EE7823 */  subu       $t7, $t7, $t6
/* 80184 8007F584 2442F510 */  addiu      $v0, $v0, %lo(gActors)
/* 80188 8007F588 AFB00038 */  sw         $s0, 0x38($sp)
/* 8018C 8007F58C 000F78C0 */  sll        $t7, $t7, 3
/* 80190 8007F590 004F8021 */  addu       $s0, $v0, $t7
/* 80194 8007F594 3C013F80 */  lui        $at, 0x3f80
/* 80198 8007F598 44813000 */  mtc1       $at, $f6
/* 8019C 8007F59C C6040114 */  lwc1       $f4, 0x114($s0)
/* 801A0 8007F5A0 44808000 */  mtc1       $zero, $f16
/* 801A4 8007F5A4 46062201 */  sub.s      $f8, $f4, $f6
/* 801A8 8007F5A8 AFBF003C */  sw         $ra, 0x3c($sp)
/* 801AC 8007F5AC E6080114 */  swc1       $f8, 0x114($s0)
/* 801B0 8007F5B0 C60A0114 */  lwc1       $f10, 0x114($s0)
/* 801B4 8007F5B4 AFA40058 */  sw         $a0, 0x58($sp)
/* 801B8 8007F5B8 4610503C */  c.lt.s     $f10, $f16
/* 801BC 8007F5BC 00002825 */  or         $a1, $zero, $zero
/* 801C0 8007F5C0 45010010 */  bc1t       .L8007F604
/* 801C4 8007F5C4 00000000 */   nop
/* 801C8 8007F5C8 8E180154 */  lw         $t8, 0x154($s0)
/* 801CC 8007F5CC 24060010 */  addiu      $a2, $zero, 0x10
/* 801D0 8007F5D0 0018C880 */  sll        $t9, $t8, 2
/* 801D4 8007F5D4 0338C823 */  subu       $t9, $t9, $t8
/* 801D8 8007F5D8 0019C880 */  sll        $t9, $t9, 2
/* 801DC 8007F5DC 0338C821 */  addu       $t9, $t9, $t8
/* 801E0 8007F5E0 0019C880 */  sll        $t9, $t9, 2
/* 801E4 8007F5E4 0338C823 */  subu       $t9, $t9, $t8
/* 801E8 8007F5E8 0019C8C0 */  sll        $t9, $t9, 3
/* 801EC 8007F5EC 00594821 */  addu       $t1, $v0, $t9
/* 801F0 8007F5F0 8D2A0080 */  lw         $t2, 0x80($t1)
/* 801F4 8007F5F4 00000000 */  nop
/* 801F8 8007F5F8 314B0002 */  andi       $t3, $t2, 2
/* 801FC 8007F5FC 15600009 */  bnez       $t3, .L8007F624
/* 80200 8007F600 00000000 */   nop
.L8007F604:
/* 80204 8007F604 9204009F */  lbu        $a0, 0x9f($s0)
/* 80208 8007F608 0C00A607 */  jal        func_8002981C
/* 8020C 8007F60C 24060020 */   addiu     $a2, $zero, 0x20
/* 80210 8007F610 304C00FF */  andi       $t4, $v0, 0xff
/* 80214 8007F614 1580000E */  bnez       $t4, .L8007F650
/* 80218 8007F618 A202009F */   sb        $v0, 0x9f($s0)
/* 8021C 8007F61C 100000EB */  b          .L8007F9CC
/* 80220 8007F620 AE000080 */   sw        $zero, 0x80($s0)
.L8007F624:
/* 80224 8007F624 9204009F */  lbu        $a0, 0x9f($s0)
/* 80228 8007F628 0C00A607 */  jal        func_8002981C
/* 8022C 8007F62C 2405007F */   addiu     $a1, $zero, 0x7f
/* 80230 8007F630 3C013F80 */  lui        $at, 0x3f80
/* 80234 8007F634 44817000 */  mtc1       $at, $f14
/* 80238 8007F638 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 8023C 8007F63C 3C063D4C */  lui        $a2, 0x3d4c
/* 80240 8007F640 A202009F */  sb         $v0, 0x9f($s0)
/* 80244 8007F644 0C00A618 */  jal        func_80029860
/* 80248 8007F648 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 8024C 8007F64C E60000B8 */  swc1       $f0, 0xb8($s0)
.L8007F650:
/* 80250 8007F650 8E030154 */  lw         $v1, 0x154($s0)
/* 80254 8007F654 3401FFFF */  ori        $at, $zero, 0xffff
/* 80258 8007F658 10610037 */  beq        $v1, $at, .L8007F738
/* 8025C 8007F65C 306DFFFF */   andi      $t5, $v1, 0xffff
/* 80260 8007F660 8E180158 */  lw         $t8, 0x158($s0)
/* 80264 8007F664 000D7080 */  sll        $t6, $t5, 2
/* 80268 8007F668 01CD7023 */  subu       $t6, $t6, $t5
/* 8026C 8007F66C 44989000 */  mtc1       $t8, $f18
/* 80270 8007F670 000E7080 */  sll        $t6, $t6, 2
/* 80274 8007F674 01CD7021 */  addu       $t6, $t6, $t5
/* 80278 8007F678 46809120 */  cvt.s.w    $f4, $f18
/* 8027C 8007F67C 000E7080 */  sll        $t6, $t6, 2
/* 80280 8007F680 C60200B8 */  lwc1       $f2, 0xb8($s0)
/* 80284 8007F684 01CD7023 */  subu       $t6, $t6, $t5
/* 80288 8007F688 3C0F800F */  lui        $t7, %hi(gActors)
/* 8028C 8007F68C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 80290 8007F690 000E70C0 */  sll        $t6, $t6, 3
/* 80294 8007F694 46041182 */  mul.s      $f6, $f2, $f4
/* 80298 8007F698 01CF1021 */  addu       $v0, $t6, $t7
/* 8029C 8007F69C 8C590088 */  lw         $t9, 0x88($v0)
/* 802A0 8007F6A0 3C014780 */  lui        $at, 0x4780
/* 802A4 8007F6A4 44810000 */  mtc1       $at, $f0
/* 802A8 8007F6A8 44995000 */  mtc1       $t9, $f10
/* 802AC 8007F6AC 46003202 */  mul.s      $f8, $f6, $f0
/* 802B0 8007F6B0 8E0B015C */  lw         $t3, 0x15c($s0)
/* 802B4 8007F6B4 8C4C008C */  lw         $t4, 0x8c($v0)
/* 802B8 8007F6B8 448B3000 */  mtc1       $t3, $f6
/* 802BC 8007F6BC 46805420 */  cvt.s.w    $f16, $f10
/* 802C0 8007F6C0 3C080040 */  lui        $t0, 0x40
/* 802C4 8007F6C4 46104480 */  add.s      $f18, $f8, $f16
/* 802C8 8007F6C8 4449F800 */  cfc1       $t1, $31
/* 802CC 8007F6CC 00000000 */  nop
/* 802D0 8007F6D0 35210003 */  ori        $at, $t1, 3
/* 802D4 8007F6D4 38210002 */  xori       $at, $at, 2
/* 802D8 8007F6D8 44C1F800 */  ctc1       $at, $31
/* 802DC 8007F6DC 00000000 */  nop
/* 802E0 8007F6E0 46009124 */  cvt.w.s    $f4, $f18
/* 802E4 8007F6E4 448C9000 */  mtc1       $t4, $f18
/* 802E8 8007F6E8 44C9F800 */  ctc1       $t1, $31
/* 802EC 8007F6EC 440A2000 */  mfc1       $t2, $f4
/* 802F0 8007F6F0 468032A0 */  cvt.s.w    $f10, $f6
/* 802F4 8007F6F4 AFAA004C */  sw         $t2, 0x4c($sp)
/* 802F8 8007F6F8 460A1202 */  mul.s      $f8, $f2, $f10
/* 802FC 8007F6FC 00000000 */  nop
/* 80300 8007F700 46004402 */  mul.s      $f16, $f8, $f0
/* 80304 8007F704 46809120 */  cvt.s.w    $f4, $f18
/* 80308 8007F708 46048180 */  add.s      $f6, $f16, $f4
/* 8030C 8007F70C 444DF800 */  cfc1       $t5, $31
/* 80310 8007F710 00000000 */  nop
/* 80314 8007F714 35A10003 */  ori        $at, $t5, 3
/* 80318 8007F718 38210002 */  xori       $at, $at, 2
/* 8031C 8007F71C 44C1F800 */  ctc1       $at, $31
/* 80320 8007F720 00000000 */  nop
/* 80324 8007F724 460032A4 */  cvt.w.s    $f10, $f6
/* 80328 8007F728 440E5000 */  mfc1       $t6, $f10
/* 8032C 8007F72C 44CDF800 */  ctc1       $t5, $31
/* 80330 8007F730 10000007 */  b          .L8007F750
/* 80334 8007F734 AFAE0048 */   sw        $t6, 0x48($sp)
.L8007F738:
/* 80338 8007F738 8E0F0088 */  lw         $t7, 0x88($s0)
/* 8033C 8007F73C 8E18008C */  lw         $t8, 0x8c($s0)
/* 80340 8007F740 8E080090 */  lw         $t0, 0x90($s0)
/* 80344 8007F744 C60200B8 */  lwc1       $f2, 0xb8($s0)
/* 80348 8007F748 AFAF004C */  sw         $t7, 0x4c($sp)
/* 8034C 8007F74C AFB80048 */  sw         $t8, 0x48($sp)
.L8007F750:
/* 80350 8007F750 8E190080 */  lw         $t9, 0x80($s0)
/* 80354 8007F754 8E040150 */  lw         $a0, 0x150($s0)
/* 80358 8007F758 33290100 */  andi       $t1, $t9, 0x100
/* 8035C 8007F75C 11200003 */  beqz       $t1, .L8007F76C
/* 80360 8007F760 24050008 */   addiu     $a1, $zero, 8
/* 80364 8007F764 10000001 */  b          .L8007F76C
/* 80368 8007F768 24050010 */   addiu     $a1, $zero, 0x10
.L8007F76C:
/* 8036C 8007F76C 94820000 */  lhu        $v0, ($a0)
/* 80370 8007F770 34068FFF */  ori        $a2, $zero, 0x8fff
/* 80374 8007F774 10C2004C */  beq        $a2, $v0, .L8007F8A8
/* 80378 8007F778 00001825 */   or        $v1, $zero, $zero
/* 8037C 8007F77C 3C014004 */  lui        $at, 0x4004
/* 80380 8007F780 44810800 */  mtc1       $at, $f1
/* 80384 8007F784 44800000 */  mtc1       $zero, $f0
/* 80388 8007F788 00000000 */  nop
/* 8038C 8007F78C 304A8000 */  andi       $t2, $v0, 0x8000
.L8007F790:
/* 80390 8007F790 1140003E */  beqz       $t2, .L8007F88C
/* 80394 8007F794 00000000 */   nop
/* 80398 8007F798 44834000 */  mtc1       $v1, $f8
/* 8039C 8007F79C 04610006 */  bgez       $v1, .L8007F7B8
/* 803A0 8007F7A0 468044A1 */   cvt.d.w   $f18, $f8
/* 803A4 8007F7A4 3C0141F0 */  lui        $at, 0x41f0
/* 803A8 8007F7A8 44818800 */  mtc1       $at, $f17
/* 803AC 8007F7AC 44808000 */  mtc1       $zero, $f16
/* 803B0 8007F7B0 00000000 */  nop
/* 803B4 8007F7B4 46309480 */  add.d      $f18, $f18, $f16
.L8007F7B8:
/* 803B8 8007F7B8 44852000 */  mtc1       $a1, $f4
/* 803BC 8007F7BC 04A10006 */  bgez       $a1, .L8007F7D8
/* 803C0 8007F7C0 468021A1 */   cvt.d.w   $f6, $f4
/* 803C4 8007F7C4 3C0141F0 */  lui        $at, 0x41f0
/* 803C8 8007F7C8 44815800 */  mtc1       $at, $f11
/* 803CC 8007F7CC 44805000 */  mtc1       $zero, $f10
/* 803D0 8007F7D0 00000000 */  nop
/* 803D4 8007F7D4 462A3180 */  add.d      $f6, $f6, $f10
.L8007F7D8:
/* 803D8 8007F7D8 00000000 */  nop
/* 803DC 8007F7DC 46203203 */  div.d      $f8, $f6, $f0
/* 803E0 8007F7E0 24030001 */  addiu      $v1, $zero, 1
/* 803E4 8007F7E4 3C0141E0 */  lui        $at, 0x41e0
/* 803E8 8007F7E8 46289400 */  add.d      $f16, $f18, $f8
/* 803EC 8007F7EC 444BF800 */  cfc1       $t3, $31
/* 803F0 8007F7F0 44C3F800 */  ctc1       $v1, $31
/* 803F4 8007F7F4 00000000 */  nop
/* 803F8 8007F7F8 46208124 */  cvt.w.d    $f4, $f16
/* 803FC 8007F7FC 4443F800 */  cfc1       $v1, $31
/* 80400 8007F800 00000000 */  nop
/* 80404 8007F804 30630078 */  andi       $v1, $v1, 0x78
/* 80408 8007F808 10600019 */  beqz       $v1, .L8007F870
/* 8040C 8007F80C 00000000 */   nop
/* 80410 8007F810 44812800 */  mtc1       $at, $f5
/* 80414 8007F814 44802000 */  mtc1       $zero, $f4
/* 80418 8007F818 24030001 */  addiu      $v1, $zero, 1
/* 8041C 8007F81C 46248101 */  sub.d      $f4, $f16, $f4
/* 80420 8007F820 3C018000 */  lui        $at, 0x8000
/* 80424 8007F824 44C3F800 */  ctc1       $v1, $31
/* 80428 8007F828 00000000 */  nop
/* 8042C 8007F82C 46202124 */  cvt.w.d    $f4, $f4
/* 80430 8007F830 4443F800 */  cfc1       $v1, $31
/* 80434 8007F834 00000000 */  nop
/* 80438 8007F838 30630078 */  andi       $v1, $v1, 0x78
/* 8043C 8007F83C 14600008 */  bnez       $v1, .L8007F860
/* 80440 8007F840 2403FFFF */   addiu     $v1, $zero, -1
/* 80444 8007F844 44032000 */  mfc1       $v1, $f4
/* 80448 8007F848 44CBF800 */  ctc1       $t3, $31
/* 8044C 8007F84C 00611825 */  or         $v1, $v1, $at
/* 80450 8007F850 306CFFFF */  andi       $t4, $v1, 0xffff
/* 80454 8007F854 10000010 */  b          .L8007F898
/* 80458 8007F858 01801825 */   or        $v1, $t4, $zero
.L8007F85C:
/* 8045C 8007F85C 2403FFFF */  addiu      $v1, $zero, -1
.L8007F860:
/* 80460 8007F860 306CFFFF */  andi       $t4, $v1, 0xffff
/* 80464 8007F864 44CBF800 */  ctc1       $t3, $31
/* 80468 8007F868 1000000B */  b          .L8007F898
/* 8046C 8007F86C 01801825 */   or        $v1, $t4, $zero
.L8007F870:
/* 80470 8007F870 44032000 */  mfc1       $v1, $f4
/* 80474 8007F874 00000000 */  nop
/* 80478 8007F878 0460FFF8 */  bltz       $v1, .L8007F85C
/* 8047C 8007F87C 306CFFFF */   andi      $t4, $v1, 0xffff
/* 80480 8007F880 44CBF800 */  ctc1       $t3, $31
/* 80484 8007F884 10000004 */  b          .L8007F898
/* 80488 8007F888 01801825 */   or        $v1, $t4, $zero
.L8007F88C:
/* 8048C 8007F88C 00651821 */  addu       $v1, $v1, $a1
/* 80490 8007F890 306DFFFF */  andi       $t5, $v1, 0xffff
/* 80494 8007F894 01A01825 */  or         $v1, $t5, $zero
.L8007F898:
/* 80498 8007F898 94820002 */  lhu        $v0, 2($a0)
/* 8049C 8007F89C 24840002 */  addiu      $a0, $a0, 2
/* 804A0 8007F8A0 14C2FFBB */  bne        $a2, $v0, .L8007F790
/* 804A4 8007F8A4 304A8000 */   andi      $t2, $v0, 0x8000
.L8007F8A8:
/* 804A8 8007F8A8 44855000 */  mtc1       $a1, $f10
/* 804AC 8007F8AC 04A10006 */  bgez       $a1, .L8007F8C8
/* 804B0 8007F8B0 468051A1 */   cvt.d.w   $f6, $f10
/* 804B4 8007F8B4 3C0141F0 */  lui        $at, 0x41f0
/* 804B8 8007F8B8 44819800 */  mtc1       $at, $f19
/* 804BC 8007F8BC 44809000 */  mtc1       $zero, $f18
/* 804C0 8007F8C0 00000000 */  nop
/* 804C4 8007F8C4 46323180 */  add.d      $f6, $f6, $f18
.L8007F8C8:
/* 804C8 8007F8C8 3C01800F */  lui        $at, %hi(D_800ED008)
/* 804CC 8007F8CC C429D008 */  lwc1       $f9, %lo(D_800ED008)($at)
/* 804D0 8007F8D0 C428D00C */  lwc1       $f8, -0x2ff4($at)
/* 804D4 8007F8D4 44832000 */  mtc1       $v1, $f4
/* 804D8 8007F8D8 46283402 */  mul.d      $f16, $f6, $f8
/* 804DC 8007F8DC 3C0141F0 */  lui        $at, 0x41f0
/* 804E0 8007F8E0 240B00FF */  addiu      $t3, $zero, 0xff
/* 804E4 8007F8E4 04610005 */  bgez       $v1, .L8007F8FC
/* 804E8 8007F8E8 468022A1 */   cvt.d.w   $f10, $f4
/* 804EC 8007F8EC 44819800 */  mtc1       $at, $f19
/* 804F0 8007F8F0 44809000 */  mtc1       $zero, $f18
/* 804F4 8007F8F4 00000000 */  nop
/* 804F8 8007F8F8 46325280 */  add.d      $f10, $f10, $f18
.L8007F8FC:
/* 804FC 8007F8FC 00000000 */  nop
/* 80500 8007F900 46305183 */  div.d      $f6, $f10, $f16
/* 80504 8007F904 46001221 */  cvt.d.s    $f8, $f2
/* 80508 8007F908 96020094 */  lhu        $v0, 0x94($s0)
/* 8050C 8007F90C 00000000 */  nop
/* 80510 8007F910 00402825 */  or         $a1, $v0, $zero
/* 80514 8007F914 34AC2800 */  ori        $t4, $a1, 0x2800
/* 80518 8007F918 304E0100 */  andi       $t6, $v0, 0x100
/* 8051C 8007F91C 01802825 */  or         $a1, $t4, $zero
/* 80520 8007F920 46264102 */  mul.d      $f4, $f8, $f6
/* 80524 8007F924 462024A0 */  cvt.s.d    $f18, $f4
/* 80528 8007F928 11C00015 */  beqz       $t6, .L8007F980
/* 8052C 8007F92C E61200B4 */   swc1      $f18, 0xb4($s0)
/* 80530 8007F930 9219009C */  lbu        $t9, 0x9c($s0)
/* 80534 8007F934 9209009D */  lbu        $t1, 0x9d($s0)
/* 80538 8007F938 920A009E */  lbu        $t2, 0x9e($s0)
/* 8053C 8007F93C 8E040150 */  lw         $a0, 0x150($s0)
/* 80540 8007F940 8FA6004C */  lw         $a2, 0x4c($sp)
/* 80544 8007F944 8FA70048 */  lw         $a3, 0x48($sp)
/* 80548 8007F948 34452801 */  ori        $a1, $v0, 0x2801
/* 8054C 8007F94C AFA80010 */  sw         $t0, 0x10($sp)
/* 80550 8007F950 AFA00014 */  sw         $zero, 0x14($sp)
/* 80554 8007F954 AFAB0024 */  sw         $t3, 0x24($sp)
/* 80558 8007F958 AFA00028 */  sw         $zero, 0x28($sp)
/* 8055C 8007F95C E7A2002C */  swc1       $f2, 0x2c($sp)
/* 80560 8007F960 AFA80044 */  sw         $t0, 0x44($sp)
/* 80564 8007F964 AFB90018 */  sw         $t9, 0x18($sp)
/* 80568 8007F968 AFA9001C */  sw         $t1, 0x1c($sp)
/* 8056C 8007F96C 0C01FA85 */  jal        func_8007EA14
/* 80570 8007F970 AFAA0020 */   sw        $t2, 0x20($sp)
/* 80574 8007F974 8FA80044 */  lw         $t0, 0x44($sp)
/* 80578 8007F978 1000000C */  b          .L8007F9AC
/* 8057C 8007F97C C60A00B4 */   lwc1      $f10, 0xb4($s0)
.L8007F980:
/* 80580 8007F980 8E0D018C */  lw         $t5, 0x18c($s0)
/* 80584 8007F984 8E040150 */  lw         $a0, 0x150($s0)
/* 80588 8007F988 8FA6004C */  lw         $a2, 0x4c($sp)
/* 8058C 8007F98C 8FA70048 */  lw         $a3, 0x48($sp)
/* 80590 8007F990 AFA80010 */  sw         $t0, 0x10($sp)
/* 80594 8007F994 AFA80044 */  sw         $t0, 0x44($sp)
/* 80598 8007F998 0C01FB85 */  jal        func_8007EE14
/* 8059C 8007F99C AFAD0014 */   sw        $t5, 0x14($sp)
/* 805A0 8007F9A0 8FA80044 */  lw         $t0, 0x44($sp)
/* 805A4 8007F9A4 00000000 */  nop
/* 805A8 8007F9A8 C60A00B4 */  lwc1       $f10, 0xb4($s0)
.L8007F9AC:
/* 805AC 8007F9AC C61000B8 */  lwc1       $f16, 0xb8($s0)
/* 805B0 8007F9B0 8FA5004C */  lw         $a1, 0x4c($sp)
/* 805B4 8007F9B4 8FA60048 */  lw         $a2, 0x48($sp)
/* 805B8 8007F9B8 24042801 */  addiu      $a0, $zero, 0x2801
/* 805BC 8007F9BC 2507FFFF */  addiu      $a3, $t0, -1
/* 805C0 8007F9C0 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 805C4 8007F9C4 0C01FB9C */  jal        func_8007EE70
/* 805C8 8007F9C8 E7B00014 */   swc1      $f16, 0x14($sp)
.L8007F9CC:
/* 805CC 8007F9CC 8FBF003C */  lw         $ra, 0x3c($sp)
/* 805D0 8007F9D0 8FB00038 */  lw         $s0, 0x38($sp)
/* 805D4 8007F9D4 03E00008 */  jr         $ra
/* 805D8 8007F9D8 27BD0058 */   addiu     $sp, $sp, 0x58
/* 805DC 8007F9DC 00000000 */  nop
