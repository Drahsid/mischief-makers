glabel func_8008AFE8
/* 8BBE8 8008AFE8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8BBEC 8008AFEC 000E7880 */  sll        $t7, $t6, 2
/* 8BBF0 8008AFF0 01EE7823 */  subu       $t7, $t7, $t6
/* 8BBF4 8008AFF4 000F7880 */  sll        $t7, $t7, 2
/* 8BBF8 8008AFF8 01EE7821 */  addu       $t7, $t7, $t6
/* 8BBFC 8008AFFC 000F7880 */  sll        $t7, $t7, 2
/* 8BC00 8008B000 01EE7823 */  subu       $t7, $t7, $t6
/* 8BC04 8008B004 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8BC08 8008B008 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8BC0C 8008B00C 000F78C0 */  sll        $t7, $t7, 3
/* 8BC10 8008B010 01F84021 */  addu       $t0, $t7, $t8
/* 8BC14 8008B014 8D190150 */  lw         $t9, 0x150($t0)
/* 8BC18 8008B018 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8BC1C 8008B01C 33290100 */  andi       $t1, $t9, 0x100
/* 8BC20 8008B020 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BC24 8008B024 11200003 */  beqz       $t1, .L8008B034
/* 8BC28 8008B028 AFA40030 */   sw        $a0, 0x30($sp)
/* 8BC2C 8008B02C 10000002 */  b          .L8008B038
/* 8BC30 8008B030 2405FFF8 */   addiu     $a1, $zero, -8
.L8008B034:
/* 8BC34 8008B034 24050008 */  addiu      $a1, $zero, 8
.L8008B038:
/* 8BC38 8008B038 850A0088 */  lh         $t2, 0x88($t0)
/* 8BC3C 8008B03C 3C04800E */  lui        $a0, %hi(D_800E4534)
/* 8BC40 8008B040 00AA2821 */  addu       $a1, $a1, $t2
/* 8BC44 8008B044 00055C00 */  sll        $t3, $a1, 0x10
/* 8BC48 8008B048 8506008C */  lh         $a2, 0x8c($t0)
/* 8BC4C 8008B04C 000B2C03 */  sra        $a1, $t3, 0x10
/* 8BC50 8008B050 24844534 */  addiu      $a0, $a0, %lo(D_800E4534)
/* 8BC54 8008B054 24070001 */  addiu      $a3, $zero, 1
/* 8BC58 8008B058 0C00C48F */  jal        func_8003123C
/* 8BC5C 8008B05C AFA8001C */   sw        $t0, 0x1c($sp)
/* 8BC60 8008B060 8FA8001C */  lw         $t0, 0x1c($sp)
/* 8BC64 8008B064 10400083 */  beqz       $v0, .L8008B274
/* 8BC68 8008B068 3C013F00 */   lui       $at, 0x3f00
/* 8BC6C 8008B06C 00026880 */  sll        $t5, $v0, 2
/* 8BC70 8008B070 01A26823 */  subu       $t5, $t5, $v0
/* 8BC74 8008B074 000D6880 */  sll        $t5, $t5, 2
/* 8BC78 8008B078 01A26821 */  addu       $t5, $t5, $v0
/* 8BC7C 8008B07C 000D6880 */  sll        $t5, $t5, 2
/* 8BC80 8008B080 01A26823 */  subu       $t5, $t5, $v0
/* 8BC84 8008B084 3C0E800F */  lui        $t6, %hi(D_800EF510)
/* 8BC88 8008B088 25CEF510 */  addiu      $t6, $t6, %lo(D_800EF510)
/* 8BC8C 8008B08C 000D68C0 */  sll        $t5, $t5, 3
/* 8BC90 8008B090 01AE1821 */  addu       $v1, $t5, $t6
/* 8BC94 8008B094 44816000 */  mtc1       $at, $f12
/* 8BC98 8008B098 3C190001 */  lui        $t9, 1
/* 8BC9C 8008B09C 3C014100 */  lui        $at, 0x4100
/* 8BCA0 8008B0A0 240F0011 */  addiu      $t7, $zero, 0x11
/* 8BCA4 8008B0A4 24180170 */  addiu      $t8, $zero, 0x170
/* 8BCA8 8008B0A8 37398000 */  ori        $t9, $t9, 0x8000
/* 8BCAC 8008B0AC 44817000 */  mtc1       $at, $f14
/* 8BCB0 8008B0B0 A46F0094 */  sh         $t7, 0x94($v1)
/* 8BCB4 8008B0B4 A4780084 */  sh         $t8, 0x84($v1)
/* 8BCB8 8008B0B8 AC7900F0 */  sw         $t9, 0xf0($v1)
/* 8BCBC 8008B0BC E46C00B4 */  swc1       $f12, 0xb4($v1)
/* 8BCC0 8008B0C0 E46C00B8 */  swc1       $f12, 0xb8($v1)
/* 8BCC4 8008B0C4 3C01800F */  lui        $at, %hi(D_800ED260)
/* 8BCC8 8008B0C8 C50400C4 */  lwc1       $f4, 0xc4($t0)
/* 8BCCC 8008B0CC C429D260 */  lwc1       $f9, %lo(D_800ED260)($at)
/* 8BCD0 8008B0D0 C428D264 */  lwc1       $f8, -0x2d9c($at)
/* 8BCD4 8008B0D4 460021A1 */  cvt.d.s    $f6, $f4
/* 8BCD8 8008B0D8 46283282 */  mul.d      $f10, $f6, $f8
/* 8BCDC 8008B0DC 24040001 */  addiu      $a0, $zero, 1
/* 8BCE0 8008B0E0 3C07800C */  lui        $a3, %hi(D_800BCCD0)
/* 8BCE4 8008B0E4 24E7CCD0 */  addiu      $a3, $a3, %lo(D_800BCCD0)
/* 8BCE8 8008B0E8 3C0141E0 */  lui        $at, 0x41e0
/* 8BCEC 8008B0EC 4449F800 */  cfc1       $t1, $31
/* 8BCF0 8008B0F0 44C4F800 */  ctc1       $a0, $31
/* 8BCF4 8008B0F4 00000000 */  nop
/* 8BCF8 8008B0F8 46205424 */  cvt.w.d    $f16, $f10
/* 8BCFC 8008B0FC 4444F800 */  cfc1       $a0, $31
/* 8BD00 8008B100 00000000 */  nop
/* 8BD04 8008B104 30840078 */  andi       $a0, $a0, 0x78
/* 8BD08 8008B108 10800013 */  beqz       $a0, .L8008B158
/* 8BD0C 8008B10C 00000000 */   nop
/* 8BD10 8008B110 44818800 */  mtc1       $at, $f17
/* 8BD14 8008B114 44808000 */  mtc1       $zero, $f16
/* 8BD18 8008B118 24040001 */  addiu      $a0, $zero, 1
/* 8BD1C 8008B11C 46305401 */  sub.d      $f16, $f10, $f16
/* 8BD20 8008B120 3C018000 */  lui        $at, 0x8000
/* 8BD24 8008B124 44C4F800 */  ctc1       $a0, $31
/* 8BD28 8008B128 00000000 */  nop
/* 8BD2C 8008B12C 46208424 */  cvt.w.d    $f16, $f16
/* 8BD30 8008B130 4444F800 */  cfc1       $a0, $31
/* 8BD34 8008B134 00000000 */  nop
/* 8BD38 8008B138 30840078 */  andi       $a0, $a0, 0x78
/* 8BD3C 8008B13C 14800004 */  bnez       $a0, .L8008B150
/* 8BD40 8008B140 00000000 */   nop
/* 8BD44 8008B144 44048000 */  mfc1       $a0, $f16
/* 8BD48 8008B148 10000007 */  b          .L8008B168
/* 8BD4C 8008B14C 00812025 */   or        $a0, $a0, $at
.L8008B150:
/* 8BD50 8008B150 10000005 */  b          .L8008B168
/* 8BD54 8008B154 2404FFFF */   addiu     $a0, $zero, -1
.L8008B158:
/* 8BD58 8008B158 44048000 */  mfc1       $a0, $f16
/* 8BD5C 8008B15C 00000000 */  nop
/* 8BD60 8008B160 0480FFFB */  bltz       $a0, .L8008B150
/* 8BD64 8008B164 00000000 */   nop
.L8008B168:
/* 8BD68 8008B168 248B0100 */  addiu      $t3, $a0, 0x100
/* 8BD6C 8008B16C 316C03FF */  andi       $t4, $t3, 0x3ff
/* 8BD70 8008B170 000C6880 */  sll        $t5, $t4, 2
/* 8BD74 8008B174 850A0088 */  lh         $t2, 0x88($t0)
/* 8BD78 8008B178 00ED7021 */  addu       $t6, $a3, $t5
/* 8BD7C 8008B17C 44C9F800 */  ctc1       $t1, $31
/* 8BD80 8008B180 C5C00000 */  lwc1       $f0, ($t6)
/* 8BD84 8008B184 448A9000 */  mtc1       $t2, $f18
/* 8BD88 8008B188 460E0182 */  mul.s      $f6, $f0, $f14
/* 8BD8C 8008B18C 256FFF00 */  addiu      $t7, $t3, -0x100
/* 8BD90 8008B190 31F803FF */  andi       $t8, $t7, 0x3ff
/* 8BD94 8008B194 0018C880 */  sll        $t9, $t8, 2
/* 8BD98 8008B198 46809120 */  cvt.s.w    $f4, $f18
/* 8BD9C 8008B19C 00F94821 */  addu       $t1, $a3, $t9
/* 8BDA0 8008B1A0 C5220000 */  lwc1       $f2, ($t1)
/* 8BDA4 8008B1A4 46062200 */  add.s      $f8, $f4, $f6
/* 8BDA8 8008B1A8 2419FF00 */  addiu      $t9, $zero, -0x100
/* 8BDAC 8008B1AC 444BF800 */  cfc1       $t3, $31
/* 8BDB0 8008B1B0 2409FF80 */  addiu      $t1, $zero, -0x80
/* 8BDB4 8008B1B4 35610003 */  ori        $at, $t3, 3
/* 8BDB8 8008B1B8 38210002 */  xori       $at, $at, 2
/* 8BDBC 8008B1BC 44C1F800 */  ctc1       $at, $31
/* 8BDC0 8008B1C0 240AFFF0 */  addiu      $t2, $zero, -0x10
/* 8BDC4 8008B1C4 460042A4 */  cvt.w.s    $f10, $f8
/* 8BDC8 8008B1C8 440C5000 */  mfc1       $t4, $f10
/* 8BDCC 8008B1CC 44CBF800 */  ctc1       $t3, $31
/* 8BDD0 8008B1D0 A46C0088 */  sh         $t4, 0x88($v1)
/* 8BDD4 8008B1D4 850D008C */  lh         $t5, 0x8c($t0)
/* 8BDD8 8008B1D8 460E1102 */  mul.s      $f4, $f2, $f14
/* 8BDDC 8008B1DC 448D8000 */  mtc1       $t5, $f16
/* 8BDE0 8008B1E0 AC790158 */  sw         $t9, 0x158($v1)
/* 8BDE4 8008B1E4 44801000 */  mtc1       $zero, $f2
/* 8BDE8 8008B1E8 468084A0 */  cvt.s.w    $f18, $f16
/* 8BDEC 8008B1EC 46049180 */  add.s      $f6, $f18, $f4
/* 8BDF0 8008B1F0 444EF800 */  cfc1       $t6, $31
/* 8BDF4 8008B1F4 00000000 */  nop
/* 8BDF8 8008B1F8 35C10003 */  ori        $at, $t6, 3
/* 8BDFC 8008B1FC 38210002 */  xori       $at, $at, 2
/* 8BE00 8008B200 44C1F800 */  ctc1       $at, $31
/* 8BE04 8008B204 3C014800 */  lui        $at, 0x4800
/* 8BE08 8008B208 46003224 */  cvt.w.s    $f8, $f6
/* 8BE0C 8008B20C 44815000 */  mtc1       $at, $f10
/* 8BE10 8008B210 44CEF800 */  ctc1       $t6, $31
/* 8BE14 8008B214 440F4000 */  mfc1       $t7, $f8
/* 8BE18 8008B218 460A0402 */  mul.s      $f16, $f0, $f10
/* 8BE1C 8008B21C A46F008C */  sh         $t7, 0x8c($v1)
/* 8BE20 8008B220 4458F800 */  cfc1       $t8, $31
/* 8BE24 8008B224 00000000 */  nop
/* 8BE28 8008B228 37010003 */  ori        $at, $t8, 3
/* 8BE2C 8008B22C 38210002 */  xori       $at, $at, 2
/* 8BE30 8008B230 44C1F800 */  ctc1       $at, $31
/* 8BE34 8008B234 3C01800F */  lui        $at, 0x800f
/* 8BE38 8008B238 460084A4 */  cvt.w.s    $f18, $f16
/* 8BE3C 8008B23C 44069000 */  mfc1       $a2, $f18
/* 8BE40 8008B240 44D8F800 */  ctc1       $t8, $31
/* 8BE44 8008B244 AC6600EC */  sw         $a2, 0xec($v1)
/* 8BE48 8008B248 AC6600F0 */  sw         $a2, 0xf0($v1)
/* 8BE4C 8008B24C C420D268 */  lwc1       $f0, -0x2d98($at)
/* 8BE50 8008B250 AC600168 */  sw         $zero, 0x168($v1)
/* 8BE54 8008B254 AC69015C */  sw         $t1, 0x15c($v1)
/* 8BE58 8008B258 AC60016C */  sw         $zero, 0x16c($v1)
/* 8BE5C 8008B25C AC6A0154 */  sw         $t2, 0x154($v1)
/* 8BE60 8008B260 AC600164 */  sw         $zero, 0x164($v1)
/* 8BE64 8008B264 E4620118 */  swc1       $f2, 0x118($v1)
/* 8BE68 8008B268 E462011C */  swc1       $f2, 0x11c($v1)
/* 8BE6C 8008B26C E4600110 */  swc1       $f0, 0x110($v1)
/* 8BE70 8008B270 E4600114 */  swc1       $f0, 0x114($v1)
.L8008B274:
/* 8BE74 8008B274 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BE78 8008B278 27BD0030 */  addiu      $sp, $sp, 0x30
/* 8BE7C 8008B27C 03E00008 */  jr         $ra
/* 8BE80 8008B280 00000000 */   nop
