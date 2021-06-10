glabel func_8008DE30
/* 8EA30 8008DE30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8EA34 8008DE34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EA38 8008DE38 AFA40018 */  sw         $a0, 0x18($sp)
/* 8EA3C 8008DE3C 0C000CB1 */  jal        func_800032C4
/* 8EA40 8008DE40 240400B5 */   addiu     $a0, $zero, 0xb5
/* 8EA44 8008DE44 0C000CB1 */  jal        func_800032C4
/* 8EA48 8008DE48 240400B4 */   addiu     $a0, $zero, 0xb4
/* 8EA4C 8008DE4C 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8EA50 8008DE50 3C18800F */  lui        $t8, 0x800f
/* 8EA54 8008DE54 000E7880 */  sll        $t7, $t6, 2
/* 8EA58 8008DE58 01EE7823 */  subu       $t7, $t7, $t6
/* 8EA5C 8008DE5C 000F7880 */  sll        $t7, $t7, 2
/* 8EA60 8008DE60 01EE7821 */  addu       $t7, $t7, $t6
/* 8EA64 8008DE64 000F7880 */  sll        $t7, $t7, 2
/* 8EA68 8008DE68 01EE7823 */  subu       $t7, $t7, $t6
/* 8EA6C 8008DE6C 000F78C0 */  sll        $t7, $t7, 3
/* 8EA70 8008DE70 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8EA74 8008DE74 01F81021 */  addu       $v0, $t7, $t8
/* 8EA78 8008DE78 8C4300F0 */  lw         $v1, 0xf0($v0)
/* 8EA7C 8008DE7C 3C01FFF9 */  lui        $at, 0xfff9
/* 8EA80 8008DE80 34218001 */  ori        $at, $at, 0x8001
/* 8EA84 8008DE84 0061082A */  slt        $at, $v1, $at
/* 8EA88 8008DE88 14200002 */  bnez       $at, .L8008DE94
/* 8EA8C 8008DE8C 2479CE00 */   addiu     $t9, $v1, -0x3200
/* 8EA90 8008DE90 AC5900F0 */  sw         $t9, 0xf0($v0)
.L8008DE94:
/* 8EA94 8008DE94 8448008C */  lh         $t0, 0x8c($v0)
/* 8EA98 8008DE98 24090040 */  addiu      $t1, $zero, 0x40
/* 8EA9C 8008DE9C 2901FF00 */  slti       $at, $t0, -0x100
/* 8EAA0 8008DEA0 10200003 */  beqz       $at, .L8008DEB0
/* 8EAA4 8008DEA4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8EAA8 8008DEA8 A44900D0 */  sh         $t1, 0xd0($v0)
/* 8EAAC 8008DEAC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DEB0:
/* 8EAB0 8008DEB0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8EAB4 8008DEB4 03E00008 */  jr         $ra
/* 8EAB8 8008DEB8 00000000 */   nop
