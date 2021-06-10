glabel func_80059D88
/* 5A988 80059D88 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5A98C 80059D8C 000E7880 */  sll        $t7, $t6, 2
/* 5A990 80059D90 01EE7823 */  subu       $t7, $t7, $t6
/* 5A994 80059D94 000F7880 */  sll        $t7, $t7, 2
/* 5A998 80059D98 01EE7821 */  addu       $t7, $t7, $t6
/* 5A99C 80059D9C 000F7880 */  sll        $t7, $t7, 2
/* 5A9A0 80059DA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5A9A4 80059DA4 01EE7823 */  subu       $t7, $t7, $t6
/* 5A9A8 80059DA8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 5A9AC 80059DAC AFA60030 */  sw         $a2, 0x30($sp)
/* 5A9B0 80059DB0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 5A9B4 80059DB4 000F78C0 */  sll        $t7, $t7, 3
/* 5A9B8 80059DB8 01F83021 */  addu       $a2, $t7, $t8
/* 5A9BC 80059DBC 8CD90080 */  lw         $t9, 0x80($a2)
/* 5A9C0 80059DC0 AFA40028 */  sw         $a0, 0x28($sp)
/* 5A9C4 80059DC4 44876000 */  mtc1       $a3, $f12
/* 5A9C8 80059DC8 33280020 */  andi       $t0, $t9, 0x20
/* 5A9CC 80059DCC 01C02025 */  or         $a0, $t6, $zero
/* 5A9D0 80059DD0 11000005 */  beqz       $t0, .L80059DE8
/* 5A9D4 80059DD4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 5A9D8 80059DD8 8CA90000 */  lw         $t1, ($a1)
/* 5A9DC 80059DDC 00000000 */  nop
/* 5A9E0 80059DE0 00095023 */  negu       $t2, $t1
/* 5A9E4 80059DE4 ACAA0000 */  sw         $t2, ($a1)
.L80059DE8:
/* 5A9E8 80059DE8 8CAB0000 */  lw         $t3, ($a1)
/* 5A9EC 80059DEC 84CC0088 */  lh         $t4, 0x88($a2)
/* 5A9F0 80059DF0 8CAE0004 */  lw         $t6, 4($a1)
/* 5A9F4 80059DF4 016C6821 */  addu       $t5, $t3, $t4
/* 5A9F8 80059DF8 ACAD0000 */  sw         $t5, ($a1)
/* 5A9FC 80059DFC 84CF008C */  lh         $t7, 0x8c($a2)
/* 5AA00 80059E00 8CB90008 */  lw         $t9, 8($a1)
/* 5AA04 80059E04 01CFC021 */  addu       $t8, $t6, $t7
/* 5AA08 80059E08 ACB80004 */  sw         $t8, 4($a1)
/* 5AA0C 80059E0C 84C80090 */  lh         $t0, 0x90($a2)
/* 5AA10 80059E10 00000000 */  nop
/* 5AA14 80059E14 03284821 */  addu       $t1, $t9, $t0
/* 5AA18 80059E18 ACA90008 */  sw         $t1, 8($a1)
/* 5AA1C 80059E1C E7AC0034 */  swc1       $f12, 0x34($sp)
/* 5AA20 80059E20 AFA6001C */  sw         $a2, 0x1c($sp)
/* 5AA24 80059E24 0C0164A8 */  jal        func_800592A0
/* 5AA28 80059E28 AFA5002C */   sw        $a1, 0x2c($sp)
/* 5AA2C 80059E2C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 5AA30 80059E30 8FA6001C */  lw         $a2, 0x1c($sp)
/* 5AA34 80059E34 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* 5AA38 80059E38 14400003 */  bnez       $v0, .L80059E48
/* 5AA3C 80059E3C 3047FFFF */   andi      $a3, $v0, 0xffff
/* 5AA40 80059E40 10000037 */  b          .L80059F20
/* 5AA44 80059E44 00E01025 */   or        $v0, $a3, $zero
.L80059E48:
/* 5AA48 80059E48 3C014000 */  lui        $at, 0x4000
/* 5AA4C 80059E4C 44817000 */  mtc1       $at, $f14
/* 5AA50 80059E50 3C014270 */  lui        $at, 0x4270
/* 5AA54 80059E54 44812000 */  mtc1       $at, $f4
/* 5AA58 80059E58 3C0141F0 */  lui        $at, 0x41f0
/* 5AA5C 80059E5C 44813000 */  mtc1       $at, $f6
/* 5AA60 80059E60 00025080 */  sll        $t2, $v0, 2
/* 5AA64 80059E64 46066203 */  div.s      $f8, $f12, $f6
/* 5AA68 80059E68 01425023 */  subu       $t2, $t2, $v0
/* 5AA6C 80059E6C 000A5080 */  sll        $t2, $t2, 2
/* 5AA70 80059E70 01425021 */  addu       $t2, $t2, $v0
/* 5AA74 80059E74 000A5080 */  sll        $t2, $t2, 2
/* 5AA78 80059E78 01425023 */  subu       $t2, $t2, $v0
/* 5AA7C 80059E7C 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 5AA80 80059E80 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 5AA84 80059E84 000A50C0 */  sll        $t2, $t2, 3
/* 5AA88 80059E88 014B1821 */  addu       $v1, $t2, $t3
/* 5AA8C 80059E8C 946C0094 */  lhu        $t4, 0x94($v1)
/* 5AA90 80059E90 240E0194 */  addiu      $t6, $zero, 0x194
/* 5AA94 80059E94 460E6003 */  div.s      $f0, $f12, $f14
/* 5AA98 80059E98 240F00E0 */  addiu      $t7, $zero, 0xe0
/* 5AA9C 80059E9C 2418FFF9 */  addiu      $t8, $zero, -7
/* 5AAA0 80059EA0 358D0209 */  ori        $t5, $t4, 0x209
/* 5AAA4 80059EA4 A46D0094 */  sh         $t5, 0x94($v1)
/* 5AAA8 80059EA8 A46E0084 */  sh         $t6, 0x84($v1)
/* 5AAAC 80059EAC A06F009F */  sb         $t7, 0x9f($v1)
/* 5AAB0 80059EB0 AC780154 */  sw         $t8, 0x154($v1)
/* 5AAB4 80059EB4 E4640148 */  swc1       $f4, 0x148($v1)
/* 5AAB8 80059EB8 3C090022 */  lui        $t1, 0x22
/* 5AABC 80059EBC 3C0AFFDE */  lui        $t2, 0xffde
/* 5AAC0 80059EC0 00E01025 */  or         $v0, $a3, $zero
/* 5AAC4 80059EC4 460E4083 */  div.s      $f2, $f8, $f14
/* 5AAC8 80059EC8 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5AACC 80059ECC E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5AAD0 80059ED0 E4620114 */  swc1       $f2, 0x114($v1)
/* 5AAD4 80059ED4 E4620110 */  swc1       $f2, 0x110($v1)
/* 5AAD8 80059ED8 8CD90080 */  lw         $t9, 0x80($a2)
/* 5AADC 80059EDC 00000000 */  nop
/* 5AAE0 80059EE0 33280020 */  andi       $t0, $t9, 0x20
/* 5AAE4 80059EE4 15000003 */  bnez       $t0, .L80059EF4
/* 5AAE8 80059EE8 00000000 */   nop
/* 5AAEC 80059EEC 10000002 */  b          .L80059EF8
/* 5AAF0 80059EF0 AC690150 */   sw        $t1, 0x150($v1)
.L80059EF4:
/* 5AAF4 80059EF4 AC6A0150 */  sw         $t2, 0x150($v1)
.L80059EF8:
/* 5AAF8 80059EF8 8CA40010 */  lw         $a0, 0x10($a1)
/* 5AAFC 80059EFC 00000000 */  nop
/* 5AB00 80059F00 14800006 */  bnez       $a0, .L80059F1C
/* 5AB04 80059F04 00000000 */   nop
/* 5AB08 80059F08 946B0094 */  lhu        $t3, 0x94($v1)
/* 5AB0C 80059F0C 00000000 */  nop
/* 5AB10 80059F10 316CFDFF */  andi       $t4, $t3, 0xfdff
/* 5AB14 80059F14 10000002 */  b          .L80059F20
/* 5AB18 80059F18 A46C0094 */   sh        $t4, 0x94($v1)
.L80059F1C:
/* 5AB1C 80059F1C AC64018C */  sw         $a0, 0x18c($v1)
.L80059F20:
/* 5AB20 80059F20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5AB24 80059F24 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5AB28 80059F28 03E00008 */  jr         $ra
/* 5AB2C 80059F2C 00000000 */   nop
