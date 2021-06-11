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
/* 7FDB8 8007F1B8 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 7FDBC 8007F1BC 3C08800C */  lui        $t0, %hi(D_800BE514)
/* 7FDC0 8007F1C0 9508E514 */  lhu        $t0, %lo(D_800BE514)($t0)
/* 7FDC4 8007F1C4 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
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
