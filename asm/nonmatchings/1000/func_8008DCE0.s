glabel func_8008DCE0
/* 8E8E0 8008DCE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8E8E4 8008DCE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 8E8E8 8008DCE8 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8E8EC 8008DCEC 3C18800F */  lui        $t8, 0x800f
/* 8E8F0 8008DCF0 000E7880 */  sll        $t7, $t6, 2
/* 8E8F4 8008DCF4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E8F8 8008DCF8 000F7880 */  sll        $t7, $t7, 2
/* 8E8FC 8008DCFC 01EE7821 */  addu       $t7, $t7, $t6
/* 8E900 8008DD00 000F7880 */  sll        $t7, $t7, 2
/* 8E904 8008DD04 01EE7823 */  subu       $t7, $t7, $t6
/* 8E908 8008DD08 AFB00018 */  sw         $s0, 0x18($sp)
/* 8E90C 8008DD0C 000F78C0 */  sll        $t7, $t7, 3
/* 8E910 8008DD10 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8E914 8008DD14 01F88021 */  addu       $s0, $t7, $t8
/* 8E918 8008DD18 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8E91C 8008DD1C 9204009C */  lbu        $a0, 0x9c($s0)
/* 8E920 8008DD20 00002825 */  or         $a1, $zero, $zero
/* 8E924 8008DD24 0C00A607 */  jal        func_8002981C
/* 8E928 8008DD28 24060004 */   addiu     $a2, $zero, 4
/* 8E92C 8008DD2C 9204009D */  lbu        $a0, 0x9d($s0)
/* 8E930 8008DD30 A202009C */  sb         $v0, 0x9c($s0)
/* 8E934 8008DD34 00002825 */  or         $a1, $zero, $zero
/* 8E938 8008DD38 0C00A607 */  jal        func_8002981C
/* 8E93C 8008DD3C 24060004 */   addiu     $a2, $zero, 4
/* 8E940 8008DD40 9204009E */  lbu        $a0, 0x9e($s0)
/* 8E944 8008DD44 A202009D */  sb         $v0, 0x9d($s0)
/* 8E948 8008DD48 00002825 */  or         $a1, $zero, $zero
/* 8E94C 8008DD4C 0C00A607 */  jal        func_8002981C
/* 8E950 8008DD50 24060004 */   addiu     $a2, $zero, 4
/* 8E954 8008DD54 97A40022 */  lhu        $a0, 0x22($sp)
/* 8E958 8008DD58 0C0234E7 */  jal        func_8008D39C
/* 8E95C 8008DD5C A202009E */   sb        $v0, 0x9e($s0)
/* 8E960 8008DD60 96190094 */  lhu        $t9, 0x94($s0)
/* 8E964 8008DD64 3C0141A0 */  lui        $at, 0x41a0
/* 8E968 8008DD68 33280008 */  andi       $t0, $t9, 8
/* 8E96C 8008DD6C 11000006 */  beqz       $t0, .L8008DD88
/* 8E970 8008DD70 3C02800F */   lui       $v0, 0x800f
/* 8E974 8008DD74 C60400C4 */  lwc1       $f4, 0xc4($s0)
/* 8E978 8008DD78 44813000 */  mtc1       $at, $f6
/* 8E97C 8008DD7C 00000000 */  nop
/* 8E980 8008DD80 46062200 */  add.s      $f8, $f4, $f6
/* 8E984 8008DD84 E60800C4 */  swc1       $f8, 0xc4($s0)
.L8008DD88:
/* 8E988 8008DD88 3C013F80 */  lui        $at, 0x3f80
/* 8E98C 8008DD8C 44818000 */  mtc1       $at, $f16
/* 8E990 8008DD90 C60A0120 */  lwc1       $f10, 0x120($s0)
/* 8E994 8008DD94 44803000 */  mtc1       $zero, $f6
/* 8E998 8008DD98 46105481 */  sub.s      $f18, $f10, $f16
/* 8E99C 8008DD9C E6120120 */  swc1       $f18, 0x120($s0)
/* 8E9A0 8008DDA0 C6040120 */  lwc1       $f4, 0x120($s0)
/* 8E9A4 8008DDA4 00000000 */  nop
/* 8E9A8 8008DDA8 4606203C */  c.lt.s     $f4, $f6
/* 8E9AC 8008DDAC 00000000 */  nop
/* 8E9B0 8008DDB0 4501000B */  bc1t       .L8008DDE0
/* 8E9B4 8008DDB4 00000000 */   nop
/* 8E9B8 8008DDB8 8E090098 */  lw         $t1, 0x98($s0)
/* 8E9BC 8008DDBC 00000000 */  nop
/* 8E9C0 8008DDC0 312A0020 */  andi       $t2, $t1, 0x20
/* 8E9C4 8008DDC4 11400013 */  beqz       $t2, .L8008DE14
/* 8E9C8 8008DDC8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8E9CC 8008DDCC 8E0B0080 */  lw         $t3, 0x80($s0)
/* 8E9D0 8008DDD0 00000000 */  nop
/* 8E9D4 8008DDD4 000B6380 */  sll        $t4, $t3, 0xe
/* 8E9D8 8008DDD8 0581000E */  bgez       $t4, .L8008DE14
/* 8E9DC 8008DDDC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008DDE0:
/* 8E9E0 8008DDE0 8442F5F0 */  lh         $v0, -0xa10($v0)
/* 8E9E4 8008DDE4 97A40022 */  lhu        $a0, 0x22($sp)
/* 8E9E8 8008DDE8 10400003 */  beqz       $v0, .L8008DDF8
/* 8E9EC 8008DDEC 304D8000 */   andi      $t5, $v0, 0x8000
/* 8E9F0 8008DDF0 11A00005 */  beqz       $t5, .L8008DE08
/* 8E9F4 8008DDF4 00000000 */   nop
.L8008DDF8:
/* 8E9F8 8008DDF8 0C02371C */  jal        func_8008DC70
/* 8E9FC 8008DDFC 00000000 */   nop
/* 8EA00 8008DE00 10000004 */  b          .L8008DE14
/* 8EA04 8008DE04 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008DE08:
/* 8EA08 8008DE08 0C023300 */  jal        func_8008CC00
/* 8EA0C 8008DE0C 00000000 */   nop
/* 8EA10 8008DE10 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008DE14:
/* 8EA14 8008DE14 8FB00018 */  lw         $s0, 0x18($sp)
/* 8EA18 8008DE18 03E00008 */  jr         $ra
/* 8EA1C 8008DE1C 27BD0020 */   addiu     $sp, $sp, 0x20
