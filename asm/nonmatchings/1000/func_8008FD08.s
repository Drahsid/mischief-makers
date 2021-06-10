glabel func_8008FD08
/* 90908 8008FD08 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9090C 8008FD0C AFB10030 */  sw         $s1, 0x30($sp)
/* 90910 8008FD10 AFA40048 */  sw         $a0, 0x48($sp)
/* 90914 8008FD14 97B1004A */  lhu        $s1, 0x4a($sp)
/* 90918 8008FD18 3C18800F */  lui        $t8, 0x800f
/* 9091C 8008FD1C 00117880 */  sll        $t7, $s1, 2
/* 90920 8008FD20 01F17823 */  subu       $t7, $t7, $s1
/* 90924 8008FD24 000F7880 */  sll        $t7, $t7, 2
/* 90928 8008FD28 01F17821 */  addu       $t7, $t7, $s1
/* 9092C 8008FD2C 000F7880 */  sll        $t7, $t7, 2
/* 90930 8008FD30 01F17823 */  subu       $t7, $t7, $s1
/* 90934 8008FD34 000F78C0 */  sll        $t7, $t7, 3
/* 90938 8008FD38 030FC021 */  addu       $t8, $t8, $t7
/* 9093C 8008FD3C 8F18F678 */  lw         $t8, -0x988($t8)
/* 90940 8008FD40 3C01800F */  lui        $at, %hi(D_800ED360)
/* 90944 8008FD44 44982000 */  mtc1       $t8, $f4
/* 90948 8008FD48 C428D360 */  lwc1       $f8, %lo(D_800ED360)($at)
/* 9094C 8008FD4C 468021A0 */  cvt.s.w    $f6, $f4
/* 90950 8008FD50 E7B50020 */  swc1       $f21, 0x20($sp)
/* 90954 8008FD54 E7B40024 */  swc1       $f20, 0x24($sp)
/* 90958 8008FD58 46083503 */  div.s      $f20, $f6, $f8
/* 9095C 8008FD5C 3C014110 */  lui        $at, 0x4110
/* 90960 8008FD60 44815000 */  mtc1       $at, $f10
/* 90964 8008FD64 AFB0002C */  sw         $s0, 0x2c($sp)
/* 90968 8008FD68 26300003 */  addiu      $s0, $s1, 3
/* 9096C 8008FD6C AFBF0034 */  sw         $ra, 0x34($sp)
/* 90970 8008FD70 3219FFFF */  andi       $t9, $s0, 0xffff
/* 90974 8008FD74 24080001 */  addiu      $t0, $zero, 1
/* 90978 8008FD78 AFA80010 */  sw         $t0, 0x10($sp)
/* 9097C 8008FD7C 03208025 */  or         $s0, $t9, $zero
/* 90980 8008FD80 3324FFFF */  andi       $a0, $t9, 0xffff
/* 90984 8008FD84 24051044 */  addiu      $a1, $zero, 0x1044
/* 90988 8008FD88 46145402 */  mul.s      $f16, $f10, $f20
/* 9098C 8008FD8C E7B40014 */  swc1       $f20, 0x14($sp)
/* 90990 8008FD90 E7B40018 */  swc1       $f20, 0x18($sp)
/* 90994 8008FD94 24060120 */  addiu      $a2, $zero, 0x120
/* 90998 8008FD98 44078000 */  mfc1       $a3, $f16
/* 9099C 8008FD9C 0C00CB98 */  jal        func_80032E60
/* 909A0 8008FDA0 00000000 */   nop
/* 909A4 8008FDA4 3C014100 */  lui        $at, 0x4100
/* 909A8 8008FDA8 44819000 */  mtc1       $at, $f18
/* 909AC 8008FDAC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 909B0 8008FDB0 46149102 */  mul.s      $f4, $f18, $f20
/* 909B4 8008FDB4 24051042 */  addiu      $a1, $zero, 0x1042
/* 909B8 8008FDB8 24060180 */  addiu      $a2, $zero, 0x180
/* 909BC 8008FDBC AFA00010 */  sw         $zero, 0x10($sp)
/* 909C0 8008FDC0 44072000 */  mfc1       $a3, $f4
/* 909C4 8008FDC4 E7B40014 */  swc1       $f20, 0x14($sp)
/* 909C8 8008FDC8 0C00CB98 */  jal        func_80032E60
/* 909CC 8008FDCC E7B40018 */   swc1      $f20, 0x18($sp)
/* 909D0 8008FDD0 3C014150 */  lui        $at, 0x4150
/* 909D4 8008FDD4 44813000 */  mtc1       $at, $f6
/* 909D8 8008FDD8 24090002 */  addiu      $t1, $zero, 2
/* 909DC 8008FDDC 46143202 */  mul.s      $f8, $f6, $f20
/* 909E0 8008FDE0 AFA90010 */  sw         $t1, 0x10($sp)
/* 909E4 8008FDE4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 909E8 8008FDE8 24051048 */  addiu      $a1, $zero, 0x1048
/* 909EC 8008FDEC 44074000 */  mfc1       $a3, $f8
/* 909F0 8008FDF0 24060190 */  addiu      $a2, $zero, 0x190
/* 909F4 8008FDF4 E7B40014 */  swc1       $f20, 0x14($sp)
/* 909F8 8008FDF8 0C00CB98 */  jal        func_80032E60
/* 909FC 8008FDFC E7B40018 */   swc1      $f20, 0x18($sp)
/* 90A00 8008FE00 3C0141A8 */  lui        $at, 0x41a8
/* 90A04 8008FE04 44815000 */  mtc1       $at, $f10
/* 90A08 8008FE08 240A0002 */  addiu      $t2, $zero, 2
/* 90A0C 8008FE0C 46145402 */  mul.s      $f16, $f10, $f20
/* 90A10 8008FE10 AFAA0010 */  sw         $t2, 0x10($sp)
/* 90A14 8008FE14 3204FFFF */  andi       $a0, $s0, 0xffff
/* 90A18 8008FE18 2405104A */  addiu      $a1, $zero, 0x104a
/* 90A1C 8008FE1C 44078000 */  mfc1       $a3, $f16
/* 90A20 8008FE20 240601B8 */  addiu      $a2, $zero, 0x1b8
/* 90A24 8008FE24 E7B40014 */  swc1       $f20, 0x14($sp)
/* 90A28 8008FE28 0C00CB98 */  jal        func_80032E60
/* 90A2C 8008FE2C E7B40018 */   swc1      $f20, 0x18($sp)
/* 90A30 8008FE30 3C01800F */  lui        $at, %hi(D_800ED368)
/* 90A34 8008FE34 C421D368 */  lwc1       $f1, %lo(D_800ED368)($at)
/* 90A38 8008FE38 C420D36C */  lwc1       $f0, -0x2c94($at)
/* 90A3C 8008FE3C 3C01800F */  lui        $at, %hi(D_800ED370)
/* 90A40 8008FE40 C423D370 */  lwc1       $f3, %lo(D_800ED370)($at)
/* 90A44 8008FE44 C422D374 */  lwc1       $f2, -0x2c8c($at)
/* 90A48 8008FE48 00115880 */  sll        $t3, $s1, 2
/* 90A4C 8008FE4C 3C01800F */  lui        $at, %hi(D_800ED378)
/* 90A50 8008FE50 01715823 */  subu       $t3, $t3, $s1
/* 90A54 8008FE54 000B5880 */  sll        $t3, $t3, 2
/* 90A58 8008FE58 C42DD378 */  lwc1       $f13, %lo(D_800ED378)($at)
/* 90A5C 8008FE5C C42CD37C */  lwc1       $f12, -0x2c84($at)
/* 90A60 8008FE60 01715821 */  addu       $t3, $t3, $s1
/* 90A64 8008FE64 3C01800F */  lui        $at, %hi(D_800ED380)
/* 90A68 8008FE68 000B5880 */  sll        $t3, $t3, 2
/* 90A6C 8008FE6C 01715823 */  subu       $t3, $t3, $s1
/* 90A70 8008FE70 3C0C800F */  lui        $t4, %hi(D_800EF510)
/* 90A74 8008FE74 C42FD380 */  lwc1       $f15, %lo(D_800ED380)($at)
/* 90A78 8008FE78 C42ED384 */  lwc1       $f14, -0x2c7c($at)
/* 90A7C 8008FE7C 258CF510 */  addiu      $t4, $t4, %lo(D_800EF510)
/* 90A80 8008FE80 000B58C0 */  sll        $t3, $t3, 3
/* 90A84 8008FE84 016C8021 */  addu       $s0, $t3, $t4
/* 90A88 8008FE88 3C01800F */  lui        $at, %hi(D_800ED388)
/* 90A8C 8008FE8C C612024C */  lwc1       $f18, 0x24c($s0)
/* 90A90 8008FE90 C427D388 */  lwc1       $f7, %lo(D_800ED388)($at)
/* 90A94 8008FE94 C426D38C */  lwc1       $f6, -0x2c74($at)
/* 90A98 8008FE98 46009121 */  cvt.d.s    $f4, $f18
/* 90A9C 8008FE9C 46262202 */  mul.d      $f8, $f4, $f6
/* 90AA0 8008FEA0 C61008AC */  lwc1       $f16, 0x8ac($s0)
/* 90AA4 8008FEA4 960D0D54 */  lhu        $t5, 0xd54($s0)
/* 90AA8 8008FEA8 460084A1 */  cvt.d.s    $f18, $f16
/* 90AAC 8008FEAC 9618121C */  lhu        $t8, 0x121c($s0)
/* 90AB0 8008FEB0 46209102 */  mul.d      $f4, $f18, $f0
/* 90AB4 8008FEB4 462042A0 */  cvt.s.d    $f10, $f8
/* 90AB8 8008FEB8 C6080F0C */  lwc1       $f8, 0xf0c($s0)
/* 90ABC 8008FEBC E60A024C */  swc1       $f10, 0x24c($s0)
/* 90AC0 8008FEC0 96191EDC */  lhu        $t9, 0x1edc($s0)
/* 90AC4 8008FEC4 460042A1 */  cvt.d.s    $f10, $f8
/* 90AC8 8008FEC8 46205402 */  mul.d      $f16, $f10, $f0
/* 90ACC 8008FECC 462021A0 */  cvt.s.d    $f6, $f4
/* 90AD0 8008FED0 C6040714 */  lwc1       $f4, 0x714($s0)
/* 90AD4 8008FED4 E60608AC */  swc1       $f6, 0x8ac($s0)
/* 90AD8 8008FED8 9609220C */  lhu        $t1, 0x220c($s0)
/* 90ADC 8008FEDC 460021A1 */  cvt.d.s    $f6, $f4
/* 90AE0 8008FEE0 46223202 */  mul.d      $f8, $f6, $f2
/* 90AE4 8008FEE4 462084A0 */  cvt.s.d    $f18, $f16
/* 90AE8 8008FEE8 26240008 */  addiu      $a0, $s1, 8
/* 90AEC 8008FEEC E6120F0C */  swc1       $f18, 0xf0c($s0)
/* 90AF0 8008FEF0 C6120D74 */  lwc1       $f18, 0xd74($s0)
/* 90AF4 8008FEF4 462042A0 */  cvt.s.d    $f10, $f8
/* 90AF8 8008FEF8 308BFFFF */  andi       $t3, $a0, 0xffff
/* 90AFC 8008FEFC 46009121 */  cvt.d.s    $f4, $f18
/* 90B00 8008FF00 46222182 */  mul.d      $f6, $f4, $f2
/* 90B04 8008FF04 E60A0714 */  swc1       $f10, 0x714($s0)
/* 90B08 8008FF08 C6100714 */  lwc1       $f16, 0x714($s0)
/* 90B0C 8008FF0C 35AF0010 */  ori        $t7, $t5, 0x10
/* 90B10 8008FF10 E6100718 */  swc1       $f16, 0x718($s0)
/* 90B14 8008FF14 46203220 */  cvt.s.d    $f8, $f6
/* 90B18 8008FF18 C610156C */  lwc1       $f16, 0x156c($s0)
/* 90B1C 8008FF1C E6080D74 */  swc1       $f8, 0xd74($s0)
/* 90B20 8008FF20 460084A1 */  cvt.d.s    $f18, $f16
/* 90B24 8008FF24 462C9102 */  mul.d      $f4, $f18, $f12
/* 90B28 8008FF28 C60A0D74 */  lwc1       $f10, 0xd74($s0)
/* 90B2C 8008FF2C C6081EFC */  lwc1       $f8, 0x1efc($s0)
/* 90B30 8008FF30 E60A0D78 */  swc1       $f10, 0xd78($s0)
/* 90B34 8008FF34 370E0010 */  ori        $t6, $t8, 0x10
/* 90B38 8008FF38 460042A1 */  cvt.d.s    $f10, $f8
/* 90B3C 8008FF3C 462C5402 */  mul.d      $f16, $f10, $f12
/* 90B40 8008FF40 462021A0 */  cvt.s.d    $f6, $f4
/* 90B44 8008FF44 C60418A0 */  lwc1       $f4, 0x18a0($s0)
/* 90B48 8008FF48 E606156C */  swc1       $f6, 0x156c($s0)
/* 90B4C 8008FF4C 37280010 */  ori        $t0, $t9, 0x10
/* 90B50 8008FF50 462084A0 */  cvt.s.d    $f18, $f16
/* 90B54 8008FF54 C6102230 */  lwc1       $f16, 0x2230($s0)
/* 90B58 8008FF58 460021A1 */  cvt.d.s    $f6, $f4
/* 90B5C 8008FF5C 462E3202 */  mul.d      $f8, $f6, $f14
/* 90B60 8008FF60 E6121EFC */  swc1       $f18, 0x1efc($s0)
/* 90B64 8008FF64 460084A1 */  cvt.d.s    $f18, $f16
/* 90B68 8008FF68 352A0010 */  ori        $t2, $t1, 0x10
/* 90B6C 8008FF6C A60F0D54 */  sh         $t7, 0xd54($s0)
/* 90B70 8008FF70 462E9102 */  mul.d      $f4, $f18, $f14
/* 90B74 8008FF74 462042A0 */  cvt.s.d    $f10, $f8
/* 90B78 8008FF78 A60E121C */  sh         $t6, 0x121c($s0)
/* 90B7C 8008FF7C E60A18A0 */  swc1       $f10, 0x18a0($s0)
/* 90B80 8008FF80 A6081EDC */  sh         $t0, 0x1edc($s0)
/* 90B84 8008FF84 462021A0 */  cvt.s.d    $f6, $f4
/* 90B88 8008FF88 A60A220C */  sh         $t2, 0x220c($s0)
/* 90B8C 8008FF8C E6062230 */  swc1       $f6, 0x2230($s0)
/* 90B90 8008FF90 01602025 */  or         $a0, $t3, $zero
/* 90B94 8008FF94 0C00ABAD */  jal        func_8002AEB4
/* 90B98 8008FF98 24050020 */   addiu     $a1, $zero, 0x20
/* 90B9C 8008FF9C 2624000B */  addiu      $a0, $s1, 0xb
/* 90BA0 8008FFA0 308CFFFF */  andi       $t4, $a0, 0xffff
/* 90BA4 8008FFA4 01802025 */  or         $a0, $t4, $zero
/* 90BA8 8008FFA8 AFAC0038 */  sw         $t4, 0x38($sp)
/* 90BAC 8008FFAC 0C00ABAD */  jal        func_8002AEB4
/* 90BB0 8008FFB0 24050020 */   addiu     $a1, $zero, 0x20
/* 90BB4 8008FFB4 26240013 */  addiu      $a0, $s1, 0x13
/* 90BB8 8008FFB8 308DFFFF */  andi       $t5, $a0, 0xffff
/* 90BBC 8008FFBC 01A02025 */  or         $a0, $t5, $zero
/* 90BC0 8008FFC0 0C00ABAD */  jal        func_8002AEB4
/* 90BC4 8008FFC4 24050020 */   addiu     $a1, $zero, 0x20
/* 90BC8 8008FFC8 26240015 */  addiu      $a0, $s1, 0x15
/* 90BCC 8008FFCC 308FFFFF */  andi       $t7, $a0, 0xffff
/* 90BD0 8008FFD0 01E02025 */  or         $a0, $t7, $zero
/* 90BD4 8008FFD4 0C00ABAD */  jal        func_8002AEB4
/* 90BD8 8008FFD8 24050020 */   addiu     $a1, $zero, 0x20
/* 90BDC 8008FFDC 26250007 */  addiu      $a1, $s1, 7
/* 90BE0 8008FFE0 30B8FFFF */  andi       $t8, $a1, 0xffff
/* 90BE4 8008FFE4 97A4004A */  lhu        $a0, 0x4a($sp)
/* 90BE8 8008FFE8 3C06800F */  lui        $a2, %hi(D_800E91E8)
/* 90BEC 8008FFEC 24C691E8 */  addiu      $a2, $a2, %lo(D_800E91E8)
/* 90BF0 8008FFF0 0C023E94 */  jal        func_8008FA50
/* 90BF4 8008FFF4 03002825 */   or        $a1, $t8, $zero
/* 90BF8 8008FFF8 97A4004A */  lhu        $a0, 0x4a($sp)
/* 90BFC 8008FFFC 97A5003A */  lhu        $a1, 0x3a($sp)
/* 90C00 80090000 3C06800F */  lui        $a2, %hi(D_800E91F0)
/* 90C04 80090004 0C023E94 */  jal        func_8008FA50
/* 90C08 80090008 24C691F0 */   addiu     $a2, $a2, %lo(D_800E91F0)
/* 90C0C 8009000C 3C01BF80 */  lui        $at, 0xbf80
/* 90C10 80090010 44810000 */  mtc1       $at, $f0
/* 90C14 80090014 8E0E061C */  lw         $t6, 0x61c($s0)
/* 90C18 80090018 8FBF0034 */  lw         $ra, 0x34($sp)
/* 90C1C 8009001C 000EC823 */  negu       $t9, $t6
/* 90C20 80090020 07210004 */  bgez       $t9, .L80090034
/* 90C24 80090024 00194403 */   sra       $t0, $t9, 0x10
/* 90C28 80090028 3401FFFF */  ori        $at, $zero, 0xffff
/* 90C2C 8009002C 00390821 */  addu       $at, $at, $t9
/* 90C30 80090030 00014403 */  sra        $t0, $at, 0x10
.L80090034:
/* 90C34 80090034 44884000 */  mtc1       $t0, $f8
/* 90C38 80090038 E6000AC8 */  swc1       $f0, 0xac8($s0)
/* 90C3C 8009003C 468042A0 */  cvt.s.w    $f10, $f8
/* 90C40 80090040 E6001128 */  swc1       $f0, 0x1128($s0)
/* 90C44 80090044 E6000468 */  swc1       $f0, 0x468($s0)
/* 90C48 80090048 E60A0600 */  swc1       $f10, 0x600($s0)
/* 90C4C 8009004C 8FB0002C */  lw         $s0, 0x2c($sp)
/* 90C50 80090050 C7B50020 */  lwc1       $f21, 0x20($sp)
/* 90C54 80090054 C7B40024 */  lwc1       $f20, 0x24($sp)
/* 90C58 80090058 8FB10030 */  lw         $s1, 0x30($sp)
/* 90C5C 8009005C 03E00008 */  jr         $ra
/* 90C60 80090060 27BD0048 */   addiu     $sp, $sp, 0x48
