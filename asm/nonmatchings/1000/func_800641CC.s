glabel func_800641CC
/* 64DCC 800641CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 64DD0 800641D0 000E7880 */  sll        $t7, $t6, 2
/* 64DD4 800641D4 01EE7823 */  subu       $t7, $t7, $t6
/* 64DD8 800641D8 000F7880 */  sll        $t7, $t7, 2
/* 64DDC 800641DC 01EE7821 */  addu       $t7, $t7, $t6
/* 64DE0 800641E0 000F7880 */  sll        $t7, $t7, 2
/* 64DE4 800641E4 01EE7823 */  subu       $t7, $t7, $t6
/* 64DE8 800641E8 3C18800F */  lui        $t8, %hi(gActors)
/* 64DEC 800641EC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 64DF0 800641F0 000F78C0 */  sll        $t7, $t7, 3
/* 64DF4 800641F4 01F81021 */  addu       $v0, $t7, $t8
/* 64DF8 800641F8 8C590154 */  lw         $t9, 0x154($v0)
/* 64DFC 800641FC AFA40000 */  sw         $a0, ($sp)
/* 64E00 80064200 13200009 */  beqz       $t9, .L80064228
/* 64E04 80064204 00000000 */   nop
/* 64E08 80064208 9043009F */  lbu        $v1, 0x9f($v0)
/* 64E0C 8006420C 240100A0 */  addiu      $at, $zero, 0xa0
/* 64E10 80064210 14610003 */  bne        $v1, $at, .L80064220
/* 64E14 80064214 24680001 */   addiu     $t0, $v1, 1
/* 64E18 80064218 1000000B */  b          .L80064248
/* 64E1C 8006421C AC400154 */   sw        $zero, 0x154($v0)
.L80064220:
/* 64E20 80064220 10000009 */  b          .L80064248
/* 64E24 80064224 A048009F */   sb        $t0, 0x9f($v0)
.L80064228:
/* 64E28 80064228 9043009F */  lbu        $v1, 0x9f($v0)
/* 64E2C 8006422C 24010040 */  addiu      $at, $zero, 0x40
/* 64E30 80064230 14610004 */  bne        $v1, $at, .L80064244
/* 64E34 80064234 246AFFFF */   addiu     $t2, $v1, -1
/* 64E38 80064238 24090001 */  addiu      $t1, $zero, 1
/* 64E3C 8006423C 10000002 */  b          .L80064248
/* 64E40 80064240 AC490154 */   sw        $t1, 0x154($v0)
.L80064244:
/* 64E44 80064244 A04A009F */  sb         $t2, 0x9f($v0)
.L80064248:
/* 64E48 80064248 8C4B0158 */  lw         $t3, 0x158($v0)
/* 64E4C 8006424C 3C01800F */  lui        $at, 0x800f
/* 64E50 80064250 1160001B */  beqz       $t3, .L800642C0
/* 64E54 80064254 00000000 */   nop
/* 64E58 80064258 3C01800F */  lui        $at, %hi(D_800EC4A8)
/* 64E5C 8006425C C4460118 */  lwc1       $f6, 0x118($v0)
/* 64E60 80064260 C42BC4A8 */  lwc1       $f11, %lo(D_800EC4A8)($at)
/* 64E64 80064264 C42AC4AC */  lwc1       $f10, -0x3b54($at)
/* 64E68 80064268 C44400B8 */  lwc1       $f4, 0xb8($v0)
/* 64E6C 8006426C 46003221 */  cvt.d.s    $f8, $f6
/* 64E70 80064270 462A4400 */  add.d      $f16, $f8, $f10
/* 64E74 80064274 3C01800F */  lui        $at, 0x800f
/* 64E78 80064278 46002021 */  cvt.d.s    $f0, $f4
/* 64E7C 8006427C 4620803C */  c.lt.d     $f16, $f0
/* 64E80 80064280 00000000 */  nop
/* 64E84 80064284 45000003 */  bc1f       .L80064294
/* 64E88 80064288 00000000 */   nop
/* 64E8C 8006428C 03E00008 */  jr         $ra
/* 64E90 80064290 AC400158 */   sw        $zero, 0x158($v0)
.L80064294:
/* 64E94 80064294 C423C4B0 */  lwc1       $f3, -0x3b50($at)
/* 64E98 80064298 C422C4B4 */  lwc1       $f2, -0x3b4c($at)
/* 64E9C 8006429C C45200B4 */  lwc1       $f18, 0xb4($v0)
/* 64EA0 800642A0 46220280 */  add.d      $f10, $f0, $f2
/* 64EA4 800642A4 46009121 */  cvt.d.s    $f4, $f18
/* 64EA8 800642A8 46222181 */  sub.d      $f6, $f4, $f2
/* 64EAC 800642AC 46203220 */  cvt.s.d    $f8, $f6
/* 64EB0 800642B0 46205420 */  cvt.s.d    $f16, $f10
/* 64EB4 800642B4 E44800B4 */  swc1       $f8, 0xb4($v0)
/* 64EB8 800642B8 03E00008 */  jr         $ra
/* 64EBC 800642BC E45000B8 */   swc1      $f16, 0xb8($v0)
.L800642C0:
/* 64EC0 800642C0 C4440118 */  lwc1       $f4, 0x118($v0)
/* 64EC4 800642C4 C429C4B8 */  lwc1       $f9, -0x3b48($at)
/* 64EC8 800642C8 C428C4BC */  lwc1       $f8, -0x3b44($at)
/* 64ECC 800642CC C45200B8 */  lwc1       $f18, 0xb8($v0)
/* 64ED0 800642D0 460021A1 */  cvt.d.s    $f6, $f4
/* 64ED4 800642D4 46283281 */  sub.d      $f10, $f6, $f8
/* 64ED8 800642D8 3C01800F */  lui        $at, 0x800f
/* 64EDC 800642DC 46009021 */  cvt.d.s    $f0, $f18
/* 64EE0 800642E0 462A003C */  c.lt.d     $f0, $f10
/* 64EE4 800642E4 240C0001 */  addiu      $t4, $zero, 1
/* 64EE8 800642E8 45000003 */  bc1f       .L800642F8
/* 64EEC 800642EC 00000000 */   nop
/* 64EF0 800642F0 03E00008 */  jr         $ra
/* 64EF4 800642F4 AC4C0158 */   sw        $t4, 0x158($v0)
.L800642F8:
/* 64EF8 800642F8 C423C4C0 */  lwc1       $f3, -0x3b40($at)
/* 64EFC 800642FC C422C4C4 */  lwc1       $f2, -0x3b3c($at)
/* 64F00 80064300 C45000B4 */  lwc1       $f16, 0xb4($v0)
/* 64F04 80064304 46220201 */  sub.d      $f8, $f0, $f2
/* 64F08 80064308 460084A1 */  cvt.d.s    $f18, $f16
/* 64F0C 8006430C 46229100 */  add.d      $f4, $f18, $f2
/* 64F10 80064310 462021A0 */  cvt.s.d    $f6, $f4
/* 64F14 80064314 462042A0 */  cvt.s.d    $f10, $f8
/* 64F18 80064318 E44600B4 */  swc1       $f6, 0xb4($v0)
/* 64F1C 8006431C E44A00B8 */  swc1       $f10, 0xb8($v0)
/* 64F20 80064320 03E00008 */  jr         $ra
/* 64F24 80064324 00000000 */   nop
