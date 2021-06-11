glabel func_8006AF30
/* 6BB30 8006AF30 3087FFFF */  andi       $a3, $a0, 0xffff
/* 6BB34 8006AF34 00077080 */  sll        $t6, $a3, 2
/* 6BB38 8006AF38 01C77023 */  subu       $t6, $t6, $a3
/* 6BB3C 8006AF3C 000E7080 */  sll        $t6, $t6, 2
/* 6BB40 8006AF40 01C77021 */  addu       $t6, $t6, $a3
/* 6BB44 8006AF44 000E7080 */  sll        $t6, $t6, 2
/* 6BB48 8006AF48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6BB4C 8006AF4C 01C77023 */  subu       $t6, $t6, $a3
/* 6BB50 8006AF50 3C0F800F */  lui        $t7, %hi(gActors)
/* 6BB54 8006AF54 AFB00018 */  sw         $s0, 0x18($sp)
/* 6BB58 8006AF58 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6BB5C 8006AF5C 000E70C0 */  sll        $t6, $t6, 3
/* 6BB60 8006AF60 01CF8021 */  addu       $s0, $t6, $t7
/* 6BB64 8006AF64 4458F800 */  cfc1       $t8, $31
/* 6BB68 8006AF68 24020001 */  addiu      $v0, $zero, 1
/* 6BB6C 8006AF6C 44C2F800 */  ctc1       $v0, $31
/* 6BB70 8006AF70 C6000118 */  lwc1       $f0, 0x118($s0)
/* 6BB74 8006AF74 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6BB78 8006AF78 46000124 */  cvt.w.s    $f4, $f0
/* 6BB7C 8006AF7C AFA40020 */  sw         $a0, 0x20($sp)
/* 6BB80 8006AF80 4442F800 */  cfc1       $v0, $31
/* 6BB84 8006AF84 3C014F00 */  lui        $at, 0x4f00
/* 6BB88 8006AF88 30420078 */  andi       $v0, $v0, 0x78
/* 6BB8C 8006AF8C 10400012 */  beqz       $v0, .L8006AFD8
/* 6BB90 8006AF90 00002825 */   or        $a1, $zero, $zero
/* 6BB94 8006AF94 44812000 */  mtc1       $at, $f4
/* 6BB98 8006AF98 24020001 */  addiu      $v0, $zero, 1
/* 6BB9C 8006AF9C 46040101 */  sub.s      $f4, $f0, $f4
/* 6BBA0 8006AFA0 3C018000 */  lui        $at, 0x8000
/* 6BBA4 8006AFA4 44C2F800 */  ctc1       $v0, $31
/* 6BBA8 8006AFA8 00000000 */  nop
/* 6BBAC 8006AFAC 46002124 */  cvt.w.s    $f4, $f4
/* 6BBB0 8006AFB0 4442F800 */  cfc1       $v0, $31
/* 6BBB4 8006AFB4 00000000 */  nop
/* 6BBB8 8006AFB8 30420078 */  andi       $v0, $v0, 0x78
/* 6BBBC 8006AFBC 14400004 */  bnez       $v0, .L8006AFD0
/* 6BBC0 8006AFC0 00000000 */   nop
/* 6BBC4 8006AFC4 44022000 */  mfc1       $v0, $f4
/* 6BBC8 8006AFC8 10000007 */  b          .L8006AFE8
/* 6BBCC 8006AFCC 00411025 */   or        $v0, $v0, $at
.L8006AFD0:
/* 6BBD0 8006AFD0 10000005 */  b          .L8006AFE8
/* 6BBD4 8006AFD4 2402FFFF */   addiu     $v0, $zero, -1
.L8006AFD8:
/* 6BBD8 8006AFD8 44022000 */  mfc1       $v0, $f4
/* 6BBDC 8006AFDC 00000000 */  nop
/* 6BBE0 8006AFE0 0440FFFB */  bltz       $v0, .L8006AFD0
/* 6BBE4 8006AFE4 00000000 */   nop
.L8006AFE8:
/* 6BBE8 8006AFE8 44D8F800 */  ctc1       $t8, $31
/* 6BBEC 8006AFEC 3059FFFF */  andi       $t9, $v0, 0xffff
/* 6BBF0 8006AFF0 1320000B */  beqz       $t9, .L8006B020
/* 6BBF4 8006AFF4 3C014890 */   lui       $at, 0x4890
/* 6BBF8 8006AFF8 24010001 */  addiu      $at, $zero, 1
/* 6BBFC 8006AFFC 1321001B */  beq        $t9, $at, .L8006B06C
/* 6BC00 8006B000 24090004 */   addiu     $t1, $zero, 4
/* 6BC04 8006B004 24010002 */  addiu      $at, $zero, 2
/* 6BC08 8006B008 1321006F */  beq        $t9, $at, .L8006B1C8
/* 6BC0C 8006B00C 24010003 */   addiu     $at, $zero, 3
/* 6BC10 8006B010 132100A7 */  beq        $t9, $at, .L8006B2B0
/* 6BC14 8006B014 00000000 */   nop
/* 6BC18 8006B018 100000A8 */  b          .L8006B2BC
/* 6BC1C 8006B01C 3C013F80 */   lui       $at, 0x3f80
.L8006B020:
/* 6BC20 8006B020 C6060148 */  lwc1       $f6, 0x148($s0)
/* 6BC24 8006B024 44814000 */  mtc1       $at, $f8
/* 6BC28 8006B028 8E0400EC */  lw         $a0, 0xec($s0)
/* 6BC2C 8006B02C 46083282 */  mul.s      $f10, $f6, $f8
/* 6BC30 8006B030 3C060001 */  lui        $a2, 1
/* 6BC34 8006B034 34C6C000 */  ori        $a2, $a2, 0xc000
/* 6BC38 8006B038 4448F800 */  cfc1       $t0, $31
/* 6BC3C 8006B03C 00000000 */  nop
/* 6BC40 8006B040 35010003 */  ori        $at, $t0, 3
/* 6BC44 8006B044 38210002 */  xori       $at, $at, 2
/* 6BC48 8006B048 44C1F800 */  ctc1       $at, $31
/* 6BC4C 8006B04C 00000000 */  nop
/* 6BC50 8006B050 46005424 */  cvt.w.s    $f16, $f10
/* 6BC54 8006B054 44058000 */  mfc1       $a1, $f16
/* 6BC58 8006B058 44C8F800 */  ctc1       $t0, $31
/* 6BC5C 8006B05C 0C00A607 */  jal        func_8002981C
/* 6BC60 8006B060 00000000 */   nop
/* 6BC64 8006B064 10000094 */  b          .L8006B2B8
/* 6BC68 8006B068 AE0200EC */   sw        $v0, 0xec($s0)
.L8006B06C:
/* 6BC6C 8006B06C 3C013F80 */  lui        $at, 0x3f80
/* 6BC70 8006B070 44819000 */  mtc1       $at, $f18
/* 6BC74 8006B074 3C014160 */  lui        $at, 0x4160
/* 6BC78 8006B078 44813000 */  mtc1       $at, $f6
/* 6BC7C 8006B07C 3C01C000 */  lui        $at, 0xc000
/* 6BC80 8006B080 44815000 */  mtc1       $at, $f10
/* 6BC84 8006B084 C60800B4 */  lwc1       $f8, 0xb4($s0)
/* 6BC88 8006B088 46120100 */  add.s      $f4, $f0, $f18
/* 6BC8C 8006B08C E606011C */  swc1       $f6, 0x11c($s0)
/* 6BC90 8006B090 460A4402 */  mul.s      $f16, $f8, $f10
/* 6BC94 8006B094 E6040118 */  swc1       $f4, 0x118($s0)
/* 6BC98 8006B098 C60400B8 */  lwc1       $f4, 0xb8($s0)
/* 6BC9C 8006B09C A20900DA */  sb         $t1, 0xda($s0)
/* 6BCA0 8006B0A0 4459F800 */  cfc1       $t9, $31
/* 6BCA4 8006B0A4 3C0C0004 */  lui        $t4, 4
/* 6BCA8 8006B0A8 37210003 */  ori        $at, $t9, 3
/* 6BCAC 8006B0AC 38210002 */  xori       $at, $at, 2
/* 6BCB0 8006B0B0 44C1F800 */  ctc1       $at, $31
/* 6BCB4 8006B0B4 3C01C180 */  lui        $at, 0xc180
/* 6BCB8 8006B0B8 460084A4 */  cvt.w.s    $f18, $f16
/* 6BCBC 8006B0BC 44813000 */  mtc1       $at, $f6
/* 6BCC0 8006B0C0 44D9F800 */  ctc1       $t9, $31
/* 6BCC4 8006B0C4 240A0008 */  addiu      $t2, $zero, 8
/* 6BCC8 8006B0C8 46062202 */  mul.s      $f8, $f4, $f6
/* 6BCCC 8006B0CC 358C8000 */  ori        $t4, $t4, 0x8000
/* 6BCD0 8006B0D0 340BC000 */  ori        $t3, $zero, 0xc000
/* 6BCD4 8006B0D4 A20A00DB */  sb         $t2, 0xdb($s0)
/* 6BCD8 8006B0D8 4449F800 */  cfc1       $t1, $31
/* 6BCDC 8006B0DC AE0B00F8 */  sw         $t3, 0xf8($s0)
/* 6BCE0 8006B0E0 35210003 */  ori        $at, $t1, 3
/* 6BCE4 8006B0E4 38210002 */  xori       $at, $at, 2
/* 6BCE8 8006B0E8 44C1F800 */  ctc1       $at, $31
/* 6BCEC 8006B0EC AE0C00FC */  sw         $t4, 0xfc($s0)
/* 6BCF0 8006B0F0 3C0E800E */  lui        $t6, %hi(D_800E3570)
/* 6BCF4 8006B0F4 95CE3570 */  lhu        $t6, %lo(D_800E3570)($t6)
/* 6BCF8 8006B0F8 8E0D0080 */  lw         $t5, 0x80($s0)
/* 6BCFC 8006B0FC 460042A4 */  cvt.w.s    $f10, $f8
/* 6BD00 8006B100 44089000 */  mfc1       $t0, $f18
/* 6BD04 8006B104 440A5000 */  mfc1       $t2, $f10
/* 6BD08 8006B108 01AE7825 */  or         $t7, $t5, $t6
/* 6BD0C 8006B10C 24180032 */  addiu      $t8, $zero, 0x32
/* 6BD10 8006B110 31EC0020 */  andi       $t4, $t7, 0x20
/* 6BD14 8006B114 44C9F800 */  ctc1       $t1, $31
/* 6BD18 8006B118 AE0F0080 */  sw         $t7, 0x80($s0)
/* 6BD1C 8006B11C A61800E4 */  sh         $t8, 0xe4($s0)
/* 6BD20 8006B120 A60800A6 */  sh         $t0, 0xa6($s0)
/* 6BD24 8006B124 15800006 */  bnez       $t4, .L8006B140
/* 6BD28 8006B128 A60A00A8 */   sh        $t2, 0xa8($s0)
/* 6BD2C 8006B12C 240DFFFC */  addiu      $t5, $zero, -4
/* 6BD30 8006B130 240E0017 */  addiu      $t6, $zero, 0x17
/* 6BD34 8006B134 A60D00A2 */  sh         $t5, 0xa2($s0)
/* 6BD38 8006B138 10000005 */  b          .L8006B150
/* 6BD3C 8006B13C A60E00A4 */   sh        $t6, 0xa4($s0)
.L8006B140:
/* 6BD40 8006B140 240F0004 */  addiu      $t7, $zero, 4
/* 6BD44 8006B144 2418FFE9 */  addiu      $t8, $zero, -0x17
/* 6BD48 8006B148 A60F00A4 */  sh         $t7, 0xa4($s0)
/* 6BD4C 8006B14C A61800A2 */  sh         $t8, 0xa2($s0)
.L8006B150:
/* 6BD50 8006B150 861900A2 */  lh         $t9, 0xa2($s0)
/* 6BD54 8006B154 C60000B4 */  lwc1       $f0, 0xb4($s0)
/* 6BD58 8006B158 44998000 */  mtc1       $t9, $f16
/* 6BD5C 8006B15C 860A00A4 */  lh         $t2, 0xa4($s0)
/* 6BD60 8006B160 468084A0 */  cvt.s.w    $f18, $f16
/* 6BD64 8006B164 448A4000 */  mtc1       $t2, $f8
/* 6BD68 8006B168 46009102 */  mul.s      $f4, $f18, $f0
/* 6BD6C 8006B16C 4448F800 */  cfc1       $t0, $31
/* 6BD70 8006B170 00000000 */  nop
/* 6BD74 8006B174 35010003 */  ori        $at, $t0, 3
/* 6BD78 8006B178 38210002 */  xori       $at, $at, 2
/* 6BD7C 8006B17C 44C1F800 */  ctc1       $at, $31
/* 6BD80 8006B180 00000000 */  nop
/* 6BD84 8006B184 460021A4 */  cvt.w.s    $f6, $f4
/* 6BD88 8006B188 44C8F800 */  ctc1       $t0, $31
/* 6BD8C 8006B18C 44093000 */  mfc1       $t1, $f6
/* 6BD90 8006B190 468042A0 */  cvt.s.w    $f10, $f8
/* 6BD94 8006B194 A60900A2 */  sh         $t1, 0xa2($s0)
/* 6BD98 8006B198 46005402 */  mul.s      $f16, $f10, $f0
/* 6BD9C 8006B19C 444BF800 */  cfc1       $t3, $31
/* 6BDA0 8006B1A0 00000000 */  nop
/* 6BDA4 8006B1A4 35610003 */  ori        $at, $t3, 3
/* 6BDA8 8006B1A8 38210002 */  xori       $at, $at, 2
/* 6BDAC 8006B1AC 44C1F800 */  ctc1       $at, $31
/* 6BDB0 8006B1B0 00000000 */  nop
/* 6BDB4 8006B1B4 460084A4 */  cvt.w.s    $f18, $f16
/* 6BDB8 8006B1B8 440C9000 */  mfc1       $t4, $f18
/* 6BDBC 8006B1BC 44CBF800 */  ctc1       $t3, $31
/* 6BDC0 8006B1C0 A60C00A4 */  sh         $t4, 0xa4($s0)
/* 6BDC4 8006B1C4 00000000 */  nop
.L8006B1C8:
/* 6BDC8 8006B1C8 8E0D015C */  lw         $t5, 0x15c($s0)
/* 6BDCC 8006B1CC 8E0400EC */  lw         $a0, 0xec($s0)
/* 6BDD0 8006B1D0 25A60780 */  addiu      $a2, $t5, 0x780
/* 6BDD4 8006B1D4 AE06015C */  sw         $a2, 0x15c($s0)
/* 6BDD8 8006B1D8 0C00A607 */  jal        func_8002981C
/* 6BDDC 8006B1DC A7A70022 */   sh        $a3, 0x22($sp)
/* 6BDE0 8006B1E0 AE0200EC */  sw         $v0, 0xec($s0)
/* 6BDE4 8006B1E4 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 6BDE8 8006B1E8 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 6BDEC 8006B1EC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6BDF0 8006B1F0 31F80001 */  andi       $t8, $t7, 1
/* 6BDF4 8006B1F4 13000003 */  beqz       $t8, .L8006B204
/* 6BDF8 8006B1F8 00000000 */   nop
/* 6BDFC 8006B1FC 0C019758 */  jal        func_80065D60
/* 6BE00 8006B200 00000000 */   nop
.L8006B204:
/* 6BE04 8006B204 8E030098 */  lw         $v1, 0x98($s0)
/* 6BE08 8006B208 3C010001 */  lui        $at, 1
/* 6BE0C 8006B20C 30790001 */  andi       $t9, $v1, 1
/* 6BE10 8006B210 1720000B */  bnez       $t9, .L8006B240
/* 6BE14 8006B214 00000000 */   nop
/* 6BE18 8006B218 8E0200EC */  lw         $v0, 0xec($s0)
/* 6BE1C 8006B21C 30680008 */  andi       $t0, $v1, 8
/* 6BE20 8006B220 18400003 */  blez       $v0, .L8006B230
/* 6BE24 8006B224 00000000 */   nop
/* 6BE28 8006B228 15000005 */  bnez       $t0, .L8006B240
/* 6BE2C 8006B22C 00000000 */   nop
.L8006B230:
/* 6BE30 8006B230 04410021 */  bgez       $v0, .L8006B2B8
/* 6BE34 8006B234 30690004 */   andi      $t1, $v1, 4
/* 6BE38 8006B238 1120001F */  beqz       $t1, .L8006B2B8
/* 6BE3C 8006B23C 00000000 */   nop
.L8006B240:
/* 6BE40 8006B240 8E0A0150 */  lw         $t2, 0x150($s0)
/* 6BE44 8006B244 C6040148 */  lwc1       $f4, 0x148($s0)
/* 6BE48 8006B248 01415825 */  or         $t3, $t2, $at
/* 6BE4C 8006B24C 3C01C810 */  lui        $at, 0xc810
/* 6BE50 8006B250 44813000 */  mtc1       $at, $f6
/* 6BE54 8006B254 97A40022 */  lhu        $a0, 0x22($sp)
/* 6BE58 8006B258 46062202 */  mul.s      $f8, $f4, $f6
/* 6BE5C 8006B25C AE0B0150 */  sw         $t3, 0x150($s0)
/* 6BE60 8006B260 444CF800 */  cfc1       $t4, $31
/* 6BE64 8006B264 00000000 */  nop
/* 6BE68 8006B268 35810003 */  ori        $at, $t4, 3
/* 6BE6C 8006B26C 38210002 */  xori       $at, $at, 2
/* 6BE70 8006B270 44C1F800 */  ctc1       $at, $31
/* 6BE74 8006B274 00000000 */  nop
/* 6BE78 8006B278 460042A4 */  cvt.w.s    $f10, $f8
/* 6BE7C 8006B27C 440D5000 */  mfc1       $t5, $f10
/* 6BE80 8006B280 44CCF800 */  ctc1       $t4, $31
/* 6BE84 8006B284 0C01ABA1 */  jal        func_8006AE84
/* 6BE88 8006B288 AE0D00EC */   sw        $t5, 0xec($s0)
/* 6BE8C 8006B28C 8E0E0098 */  lw         $t6, 0x98($s0)
/* 6BE90 8006B290 97A40022 */  lhu        $a0, 0x22($sp)
/* 6BE94 8006B294 31CF0001 */  andi       $t7, $t6, 1
/* 6BE98 8006B298 11E00007 */  beqz       $t7, .L8006B2B8
/* 6BE9C 8006B29C 2405000C */   addiu     $a1, $zero, 0xc
/* 6BEA0 8006B2A0 0C00D033 */  jal        func_800340CC
/* 6BEA4 8006B2A4 00003025 */   or        $a2, $zero, $zero
/* 6BEA8 8006B2A8 10000004 */  b          .L8006B2BC
/* 6BEAC 8006B2AC 3C013F80 */   lui       $at, 0x3f80
.L8006B2B0:
/* 6BEB0 8006B2B0 0C01ABA1 */  jal        func_8006AE84
/* 6BEB4 8006B2B4 30E4FFFF */   andi      $a0, $a3, 0xffff
.L8006B2B8:
/* 6BEB8 8006B2B8 3C013F80 */  lui        $at, 0x3f80
.L8006B2BC:
/* 6BEBC 8006B2BC 44819000 */  mtc1       $at, $f18
/* 6BEC0 8006B2C0 C610011C */  lwc1       $f16, 0x11c($s0)
/* 6BEC4 8006B2C4 44803000 */  mtc1       $zero, $f6
/* 6BEC8 8006B2C8 46128101 */  sub.s      $f4, $f16, $f18
/* 6BECC 8006B2CC 3C013F80 */  lui        $at, 0x3f80
/* 6BED0 8006B2D0 E604011C */  swc1       $f4, 0x11c($s0)
/* 6BED4 8006B2D4 C608011C */  lwc1       $f8, 0x11c($s0)
/* 6BED8 8006B2D8 00000000 */  nop
/* 6BEDC 8006B2DC 46083032 */  c.eq.s     $f6, $f8
/* 6BEE0 8006B2E0 00000000 */  nop
/* 6BEE4 8006B2E4 45000007 */  bc1f       .L8006B304
/* 6BEE8 8006B2E8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 6BEEC 8006B2EC C60A0118 */  lwc1       $f10, 0x118($s0)
/* 6BEF0 8006B2F0 44818000 */  mtc1       $at, $f16
/* 6BEF4 8006B2F4 00000000 */  nop
/* 6BEF8 8006B2F8 46105480 */  add.s      $f18, $f10, $f16
/* 6BEFC 8006B2FC E6120118 */  swc1       $f18, 0x118($s0)
/* 6BF00 8006B300 8FBF001C */  lw         $ra, 0x1c($sp)
.L8006B304:
/* 6BF04 8006B304 8FB00018 */  lw         $s0, 0x18($sp)
/* 6BF08 8006B308 03E00008 */  jr         $ra
/* 6BF0C 8006B30C 27BD0020 */   addiu     $sp, $sp, 0x20
