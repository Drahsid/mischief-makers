glabel func_80069E18
/* 6AA18 80069E18 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6AA1C 80069E1C 000E7880 */  sll        $t7, $t6, 2
/* 6AA20 80069E20 01EE7823 */  subu       $t7, $t7, $t6
/* 6AA24 80069E24 000F7880 */  sll        $t7, $t7, 2
/* 6AA28 80069E28 01EE7821 */  addu       $t7, $t7, $t6
/* 6AA2C 80069E2C 000F7880 */  sll        $t7, $t7, 2
/* 6AA30 80069E30 01EE7823 */  subu       $t7, $t7, $t6
/* 6AA34 80069E34 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6AA38 80069E38 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6AA3C 80069E3C 000F78C0 */  sll        $t7, $t7, 3
/* 6AA40 80069E40 3C013F80 */  lui        $at, 0x3f80
/* 6AA44 80069E44 01F81021 */  addu       $v0, $t7, $t8
/* 6AA48 80069E48 44810000 */  mtc1       $at, $f0
/* 6AA4C 80069E4C C4440118 */  lwc1       $f4, 0x118($v0)
/* 6AA50 80069E50 44804000 */  mtc1       $zero, $f8
/* 6AA54 80069E54 46002181 */  sub.s      $f6, $f4, $f0
/* 6AA58 80069E58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6AA5C 80069E5C E4460118 */  swc1       $f6, 0x118($v0)
/* 6AA60 80069E60 C44A0118 */  lwc1       $f10, 0x118($v0)
/* 6AA64 80069E64 AFA40018 */  sw         $a0, 0x18($sp)
/* 6AA68 80069E68 460A4032 */  c.eq.s     $f8, $f10
/* 6AA6C 80069E6C 01C02025 */  or         $a0, $t6, $zero
/* 6AA70 80069E70 4500000E */  bc1f       .L80069EAC
/* 6AA74 80069E74 AFBF0014 */   sw        $ra, 0x14($sp)
/* 6AA78 80069E78 8C430080 */  lw         $v1, 0x80($v0)
/* 6AA7C 80069E7C 2401FFDF */  addiu      $at, $zero, -0x21
/* 6AA80 80069E80 30790020 */  andi       $t9, $v1, 0x20
/* 6AA84 80069E84 17200007 */  bnez       $t9, .L80069EA4
/* 6AA88 80069E88 00614824 */   and       $t1, $v1, $at
/* 6AA8C 80069E8C 3C01BF80 */  lui        $at, 0xbf80
/* 6AA90 80069E90 44818000 */  mtc1       $at, $f16
/* 6AA94 80069E94 34680020 */  ori        $t0, $v1, 0x20
/* 6AA98 80069E98 AC480080 */  sw         $t0, 0x80($v0)
/* 6AA9C 80069E9C 10000003 */  b          .L80069EAC
/* 6AAA0 80069EA0 E4500148 */   swc1      $f16, 0x148($v0)
.L80069EA4:
/* 6AAA4 80069EA4 AC490080 */  sw         $t1, 0x80($v0)
/* 6AAA8 80069EA8 E4400148 */  swc1       $f0, 0x148($v0)
.L80069EAC:
/* 6AAAC 80069EAC 0C01A6E5 */  jal        func_80069B94
/* 6AAB0 80069EB0 00000000 */   nop
/* 6AAB4 80069EB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6AAB8 80069EB8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6AABC 80069EBC 03E00008 */  jr         $ra
/* 6AAC0 80069EC0 00000000 */   nop
