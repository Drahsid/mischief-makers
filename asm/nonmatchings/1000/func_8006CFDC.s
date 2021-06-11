glabel func_8006CFDC
/* 6DBDC 8006CFDC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6DBE0 8006CFE0 000E7880 */  sll        $t7, $t6, 2
/* 6DBE4 8006CFE4 01EE7823 */  subu       $t7, $t7, $t6
/* 6DBE8 8006CFE8 000F7880 */  sll        $t7, $t7, 2
/* 6DBEC 8006CFEC 01EE7821 */  addu       $t7, $t7, $t6
/* 6DBF0 8006CFF0 000F7880 */  sll        $t7, $t7, 2
/* 6DBF4 8006CFF4 01EE7823 */  subu       $t7, $t7, $t6
/* 6DBF8 8006CFF8 3C18800F */  lui        $t8, %hi(gActors)
/* 6DBFC 8006CFFC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6DC00 8006D000 000F78C0 */  sll        $t7, $t7, 3
/* 6DC04 8006D004 01F81021 */  addu       $v0, $t7, $t8
/* 6DC08 8006D008 4459F800 */  cfc1       $t9, $31
/* 6DC0C 8006D00C 24080001 */  addiu      $t0, $zero, 1
/* 6DC10 8006D010 44C8F800 */  ctc1       $t0, $31
/* 6DC14 8006D014 C4440110 */  lwc1       $f4, 0x110($v0)
/* 6DC18 8006D018 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6DC1C 8006D01C 460021A4 */  cvt.w.s    $f6, $f4
/* 6DC20 8006D020 AFA40020 */  sw         $a0, 0x20($sp)
/* 6DC24 8006D024 4448F800 */  cfc1       $t0, $31
/* 6DC28 8006D028 01C02025 */  or         $a0, $t6, $zero
/* 6DC2C 8006D02C 31080078 */  andi       $t0, $t0, 0x78
/* 6DC30 8006D030 11000013 */  beqz       $t0, .L8006D080
/* 6DC34 8006D034 AFBF0014 */   sw        $ra, 0x14($sp)
/* 6DC38 8006D038 3C014F00 */  lui        $at, 0x4f00
/* 6DC3C 8006D03C 44813000 */  mtc1       $at, $f6
/* 6DC40 8006D040 24080001 */  addiu      $t0, $zero, 1
/* 6DC44 8006D044 46062181 */  sub.s      $f6, $f4, $f6
/* 6DC48 8006D048 3C018000 */  lui        $at, 0x8000
/* 6DC4C 8006D04C 44C8F800 */  ctc1       $t0, $31
/* 6DC50 8006D050 00000000 */  nop
/* 6DC54 8006D054 460031A4 */  cvt.w.s    $f6, $f6
/* 6DC58 8006D058 4448F800 */  cfc1       $t0, $31
/* 6DC5C 8006D05C 00000000 */  nop
/* 6DC60 8006D060 31080078 */  andi       $t0, $t0, 0x78
/* 6DC64 8006D064 15000004 */  bnez       $t0, .L8006D078
/* 6DC68 8006D068 00000000 */   nop
/* 6DC6C 8006D06C 44083000 */  mfc1       $t0, $f6
/* 6DC70 8006D070 10000007 */  b          .L8006D090
/* 6DC74 8006D074 01014025 */   or        $t0, $t0, $at
.L8006D078:
/* 6DC78 8006D078 10000005 */  b          .L8006D090
/* 6DC7C 8006D07C 2408FFFF */   addiu     $t0, $zero, -1
.L8006D080:
/* 6DC80 8006D080 44083000 */  mfc1       $t0, $f6
/* 6DC84 8006D084 00000000 */  nop
/* 6DC88 8006D088 0500FFFB */  bltz       $t0, .L8006D078
/* 6DC8C 8006D08C 00000000 */   nop
.L8006D090:
/* 6DC90 8006D090 944900D8 */  lhu        $t1, 0xd8($v0)
/* 6DC94 8006D094 44D9F800 */  ctc1       $t9, $31
/* 6DC98 8006D098 240A0063 */  addiu      $t2, $zero, 0x63
/* 6DC9C 8006D09C A7A8001E */  sh         $t0, 0x1e($sp)
/* 6DCA0 8006D0A0 A44A00D2 */  sh         $t2, 0xd2($v0)
/* 6DCA4 8006D0A4 AFA20018 */  sw         $v0, 0x18($sp)
/* 6DCA8 8006D0A8 0C0078B4 */  jal        func_8001E2D0
/* 6DCAC 8006D0AC A7A9001C */   sh        $t1, 0x1c($sp)
/* 6DCB0 8006D0B0 97AC001E */  lhu        $t4, 0x1e($sp)
/* 6DCB4 8006D0B4 34018000 */  ori        $at, $zero, 0x8000
/* 6DCB8 8006D0B8 8FA20018 */  lw         $v0, 0x18($sp)
/* 6DCBC 8006D0BC 01816821 */  addu       $t5, $t4, $at
/* 6DCC0 8006D0C0 448D4000 */  mtc1       $t5, $f8
/* 6DCC4 8006D0C4 97AE001C */  lhu        $t6, 0x1c($sp)
/* 6DCC8 8006D0C8 468042A0 */  cvt.s.w    $f10, $f8
/* 6DCCC 8006D0CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DCD0 8006D0D0 340BFFFF */  ori        $t3, $zero, 0xffff
/* 6DCD4 8006D0D4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6DCD8 8006D0D8 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 6DCDC 8006D0DC E44A0110 */  swc1       $f10, 0x110($v0)
/* 6DCE0 8006D0E0 A040009F */  sb         $zero, 0x9f($v0)
/* 6DCE4 8006D0E4 03E00008 */  jr         $ra
/* 6DCE8 8006D0E8 A44E00D8 */   sh        $t6, 0xd8($v0)
