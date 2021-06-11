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
