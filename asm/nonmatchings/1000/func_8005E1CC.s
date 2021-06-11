glabel func_8005E1CC
/* 5EDCC 8005E1CC 3C0140A0 */  lui        $at, 0x40a0
/* 5EDD0 8005E1D0 44856000 */  mtc1       $a1, $f12
/* 5EDD4 8005E1D4 44812000 */  mtc1       $at, $f4
/* 5EDD8 8005E1D8 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 5EDDC 8005E1DC 46046003 */  div.s      $f0, $f12, $f4
/* 5EDE0 8005E1E0 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 5EDE4 8005E1E4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5EDE8 8005E1E8 000E7880 */  sll        $t7, $t6, 2
/* 5EDEC 8005E1EC 0003C940 */  sll        $t9, $v1, 5
/* 5EDF0 8005E1F0 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 5EDF4 8005E1F4 332803FF */  andi       $t0, $t9, 0x3ff
/* 5EDF8 8005E1F8 01EE7823 */  subu       $t7, $t7, $t6
/* 5EDFC 8005E1FC 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 5EE00 8005E200 000F7880 */  sll        $t7, $t7, 2
/* 5EE04 8005E204 00084880 */  sll        $t1, $t0, 2
/* 5EE08 8005E208 00A95021 */  addu       $t2, $a1, $t1
/* 5EE0C 8005E20C 01EE7821 */  addu       $t7, $t7, $t6
/* 5EE10 8005E210 272BFF00 */  addiu      $t3, $t9, -0x100
/* 5EE14 8005E214 C5460000 */  lwc1       $f6, ($t2)
/* 5EE18 8005E218 000F7880 */  sll        $t7, $t7, 2
/* 5EE1C 8005E21C 316C03FF */  andi       $t4, $t3, 0x3ff
/* 5EE20 8005E220 01EE7823 */  subu       $t7, $t7, $t6
/* 5EE24 8005E224 000C6880 */  sll        $t5, $t4, 2
/* 5EE28 8005E228 46003202 */  mul.s      $f8, $f6, $f0
/* 5EE2C 8005E22C 00AD7021 */  addu       $t6, $a1, $t5
/* 5EE30 8005E230 C5D00000 */  lwc1       $f16, ($t6)
/* 5EE34 8005E234 3C18800F */  lui        $t8, %hi(gActors)
/* 5EE38 8005E238 46008482 */  mul.s      $f18, $f16, $f0
/* 5EE3C 8005E23C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5EE40 8005E240 000F78C0 */  sll        $t7, $t7, 3
/* 5EE44 8005E244 01F81021 */  addu       $v0, $t7, $t8
/* 5EE48 8005E248 460C4280 */  add.s      $f10, $f8, $f12
/* 5EE4C 8005E24C AFA40000 */  sw         $a0, ($sp)
/* 5EE50 8005E250 460C9100 */  add.s      $f4, $f18, $f12
/* 5EE54 8005E254 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5EE58 8005E258 03E00008 */  jr         $ra
/* 5EE5C 8005E25C E44400B8 */   swc1      $f4, 0xb8($v0)
