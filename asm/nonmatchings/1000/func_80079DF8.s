glabel func_80079DF8
/* 7A9F8 80079DF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A9FC 80079DFC AFA40018 */  sw         $a0, 0x18($sp)
/* 7AA00 80079E00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7AA04 80079E04 97A4001A */  lhu        $a0, 0x1a($sp)
/* 7AA08 80079E08 0C00D191 */  jal        func_80034644
/* 7AA0C 80079E0C 00000000 */   nop
/* 7AA10 80079E10 0C000CD3 */  jal        func_8000334C
/* 7AA14 80079E14 2404002D */   addiu     $a0, $zero, 0x2d
/* 7AA18 80079E18 97AE001A */  lhu        $t6, 0x1a($sp)
/* 7AA1C 80079E1C 3C18800F */  lui        $t8, 0x800f
/* 7AA20 80079E20 000E7880 */  sll        $t7, $t6, 2
/* 7AA24 80079E24 01EE7823 */  subu       $t7, $t7, $t6
/* 7AA28 80079E28 000F7880 */  sll        $t7, $t7, 2
/* 7AA2C 80079E2C 01EE7821 */  addu       $t7, $t7, $t6
/* 7AA30 80079E30 000F7880 */  sll        $t7, $t7, 2
/* 7AA34 80079E34 01EE7823 */  subu       $t7, $t7, $t6
/* 7AA38 80079E38 000F78C0 */  sll        $t7, $t7, 3
/* 7AA3C 80079E3C 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7AA40 80079E40 01F81021 */  addu       $v0, $t7, $t8
/* 7AA44 80079E44 3C014080 */  lui        $at, 0x4080
/* 7AA48 80079E48 44812000 */  mtc1       $at, $f4
/* 7AA4C 80079E4C 8C590080 */  lw         $t9, 0x80($v0)
/* 7AA50 80079E50 2401FD7F */  addiu      $at, $zero, -0x281
/* 7AA54 80079E54 03214024 */  and        $t0, $t9, $at
/* 7AA58 80079E58 3C0140A0 */  lui        $at, 0x40a0
/* 7AA5C 80079E5C 44814000 */  mtc1       $at, $f8
/* 7AA60 80079E60 8C4300EC */  lw         $v1, 0xec($v0)
/* 7AA64 80079E64 8C4400F0 */  lw         $a0, 0xf0($v0)
/* 7AA68 80079E68 C4460114 */  lwc1       $f6, 0x114($v0)
/* 7AA6C 80079E6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7AA70 80079E70 46083280 */  add.s      $f10, $f6, $f8
/* 7AA74 80079E74 AC480080 */  sw         $t0, 0x80($v0)
/* 7AA78 80079E78 E44A0114 */  swc1       $f10, 0x114($v0)
/* 7AA7C 80079E7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7AA80 80079E80 E4440118 */  swc1       $f4, 0x118($v0)
/* 7AA84 80079E84 AC430154 */  sw         $v1, 0x154($v0)
/* 7AA88 80079E88 AC440158 */  sw         $a0, 0x158($v0)
/* 7AA8C 80079E8C 04610003 */  bgez       $v1, .L80079E9C
/* 7AA90 80079E90 00034903 */   sra       $t1, $v1, 4
/* 7AA94 80079E94 2461000F */  addiu      $at, $v1, 0xf
/* 7AA98 80079E98 00014903 */  sra        $t1, $at, 4
.L80079E9C:
/* 7AA9C 80079E9C AC4900EC */  sw         $t1, 0xec($v0)
/* 7AAA0 80079EA0 04810003 */  bgez       $a0, .L80079EB0
/* 7AAA4 80079EA4 00045103 */   sra       $t2, $a0, 4
/* 7AAA8 80079EA8 2481000F */  addiu      $at, $a0, 0xf
/* 7AAAC 80079EAC 00015103 */  sra        $t2, $at, 4
.L80079EB0:
/* 7AAB0 80079EB0 03E00008 */  jr         $ra
/* 7AAB4 80079EB4 AC4A00F0 */   sw        $t2, 0xf0($v0)
