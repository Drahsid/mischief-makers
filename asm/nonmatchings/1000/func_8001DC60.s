glabel func_8001DC60
/* 1E860 8001DC60 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1E864 8001DC64 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 1E868 8001DC68 3C03800C */  lui        $v1, %hi(D_800BE55C)
/* 1E86C 8001DC6C 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 1E870 8001DC70 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 1E874 8001DC74 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1E878 8001DC78 AFB70034 */  sw         $s7, 0x34($sp)
/* 1E87C 8001DC7C AFB5002C */  sw         $s5, 0x2c($sp)
/* 1E880 8001DC80 AFB40028 */  sw         $s4, 0x28($sp)
/* 1E884 8001DC84 3C08800C */  lui        $t0, %hi(D_800BE664)
/* 1E888 8001DC88 9508E664 */  lhu        $t0, %lo(D_800BE664)($t0)
/* 1E88C 8001DC8C 2457FF30 */  addiu      $s7, $v0, -0xd0
/* 1E890 8001DC90 245400D0 */  addiu      $s4, $v0, 0xd0
/* 1E894 8001DC94 2475FF60 */  addiu      $s5, $v1, -0xa0
/* 1E898 8001DC98 247E00A0 */  addiu      $fp, $v1, 0xa0
/* 1E89C 8001DC9C 32EEFFFF */  andi       $t6, $s7, 0xffff
/* 1E8A0 8001DCA0 328FFFFF */  andi       $t7, $s4, 0xffff
/* 1E8A4 8001DCA4 32B8FFFF */  andi       $t8, $s5, 0xffff
/* 1E8A8 8001DCA8 33D9FFFF */  andi       $t9, $fp, 0xffff
/* 1E8AC 8001DCAC AFBF003C */  sw         $ra, 0x3c($sp)
/* 1E8B0 8001DCB0 AFB60030 */  sw         $s6, 0x30($sp)
/* 1E8B4 8001DCB4 AFB30024 */  sw         $s3, 0x24($sp)
/* 1E8B8 8001DCB8 AFB20020 */  sw         $s2, 0x20($sp)
/* 1E8BC 8001DCBC AFB1001C */  sw         $s1, 0x1c($sp)
/* 1E8C0 8001DCC0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E8C4 8001DCC4 01C0B825 */  or         $s7, $t6, $zero
/* 1E8C8 8001DCC8 01E0A025 */  or         $s4, $t7, $zero
/* 1E8CC 8001DCCC 0300A825 */  or         $s5, $t8, $zero
/* 1E8D0 8001DCD0 11000027 */  beqz       $t0, .L8001DD70
/* 1E8D4 8001DCD4 0320F025 */   or        $fp, $t9, $zero
/* 1E8D8 8001DCD8 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1E8DC 8001DCDC 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1E8E0 8001DCE0 3416FFFF */  ori        $s6, $zero, 0xffff
/* 1E8E4 8001DCE4 96040000 */  lhu        $a0, ($s0)
/* 1E8E8 8001DCE8 03209825 */  or         $s3, $t9, $zero
/* 1E8EC 8001DCEC 12C40044 */  beq        $s6, $a0, .L8001DE00
/* 1E8F0 8001DCF0 24120198 */   addiu     $s2, $zero, 0x198
/* 1E8F4 8001DCF4 3C11800F */  lui        $s1, %hi(gActors)
/* 1E8F8 8001DCF8 2631F510 */  addiu      $s1, $s1, %lo(gActors)
.L8001DCFC:
/* 1E8FC 8001DCFC 96030004 */  lhu        $v1, 4($s0)
/* 1E900 8001DD00 00000000 */  nop
/* 1E904 8001DD04 0263082A */  slt        $at, $s3, $v1
/* 1E908 8001DD08 14200013 */  bnez       $at, .L8001DD58
/* 1E90C 8001DD0C 0075082A */   slt       $at, $v1, $s5
/* 1E910 8001DD10 1420003C */  bnez       $at, .L8001DE04
/* 1E914 8001DD14 8FBF003C */   lw        $ra, 0x3c($sp)
/* 1E918 8001DD18 96030002 */  lhu        $v1, 2($s0)
/* 1E91C 8001DD1C 00000000 */  nop
/* 1E920 8001DD20 0077082A */  slt        $at, $v1, $s7
/* 1E924 8001DD24 1420000C */  bnez       $at, .L8001DD58
/* 1E928 8001DD28 0283082A */   slt       $at, $s4, $v1
/* 1E92C 8001DD2C 1420000A */  bnez       $at, .L8001DD58
/* 1E930 8001DD30 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1E934 8001DD34 00B20019 */  multu      $a1, $s2
/* 1E938 8001DD38 00004812 */  mflo       $t1
/* 1E93C 8001DD3C 02295021 */  addu       $t2, $s1, $t1
/* 1E940 8001DD40 8D4B0080 */  lw         $t3, 0x80($t2)
/* 1E944 8001DD44 00000000 */  nop
/* 1E948 8001DD48 15600003 */  bnez       $t3, .L8001DD58
/* 1E94C 8001DD4C 00000000 */   nop
/* 1E950 8001DD50 0C0076E8 */  jal        func_8001DBA0
/* 1E954 8001DD54 02002025 */   or        $a0, $s0, $zero
.L8001DD58:
/* 1E958 8001DD58 9604000C */  lhu        $a0, 0xc($s0)
/* 1E95C 8001DD5C 2610000C */  addiu      $s0, $s0, 0xc
/* 1E960 8001DD60 16C4FFE6 */  bne        $s6, $a0, .L8001DCFC
/* 1E964 8001DD64 00000000 */   nop
/* 1E968 8001DD68 10000026 */  b          .L8001DE04
/* 1E96C 8001DD6C 8FBF003C */   lw        $ra, 0x3c($sp)
.L8001DD70:
/* 1E970 8001DD70 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1E974 8001DD74 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1E978 8001DD78 3416FFFF */  ori        $s6, $zero, 0xffff
/* 1E97C 8001DD7C 96040000 */  lhu        $a0, ($s0)
/* 1E980 8001DD80 02E09825 */  or         $s3, $s7, $zero
/* 1E984 8001DD84 12C4001E */  beq        $s6, $a0, .L8001DE00
/* 1E988 8001DD88 24120198 */   addiu     $s2, $zero, 0x198
/* 1E98C 8001DD8C 3C11800F */  lui        $s1, %hi(gActors)
/* 1E990 8001DD90 2631F510 */  addiu      $s1, $s1, %lo(gActors)
.L8001DD94:
/* 1E994 8001DD94 96030002 */  lhu        $v1, 2($s0)
/* 1E998 8001DD98 00000000 */  nop
/* 1E99C 8001DD9C 0073082A */  slt        $at, $v1, $s3
/* 1E9A0 8001DDA0 14200013 */  bnez       $at, .L8001DDF0
/* 1E9A4 8001DDA4 0283082A */   slt       $at, $s4, $v1
/* 1E9A8 8001DDA8 14200016 */  bnez       $at, .L8001DE04
/* 1E9AC 8001DDAC 8FBF003C */   lw        $ra, 0x3c($sp)
/* 1E9B0 8001DDB0 96030004 */  lhu        $v1, 4($s0)
/* 1E9B4 8001DDB4 00000000 */  nop
/* 1E9B8 8001DDB8 0075082A */  slt        $at, $v1, $s5
/* 1E9BC 8001DDBC 1420000C */  bnez       $at, .L8001DDF0
/* 1E9C0 8001DDC0 03C3082A */   slt       $at, $fp, $v1
/* 1E9C4 8001DDC4 1420000A */  bnez       $at, .L8001DDF0
/* 1E9C8 8001DDC8 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1E9CC 8001DDCC 00B20019 */  multu      $a1, $s2
/* 1E9D0 8001DDD0 00006012 */  mflo       $t4
/* 1E9D4 8001DDD4 022C6821 */  addu       $t5, $s1, $t4
/* 1E9D8 8001DDD8 8DAE0080 */  lw         $t6, 0x80($t5)
/* 1E9DC 8001DDDC 00000000 */  nop
/* 1E9E0 8001DDE0 15C00003 */  bnez       $t6, .L8001DDF0
/* 1E9E4 8001DDE4 00000000 */   nop
/* 1E9E8 8001DDE8 0C0076E8 */  jal        func_8001DBA0
/* 1E9EC 8001DDEC 02002025 */   or        $a0, $s0, $zero
.L8001DDF0:
/* 1E9F0 8001DDF0 9604000C */  lhu        $a0, 0xc($s0)
/* 1E9F4 8001DDF4 2610000C */  addiu      $s0, $s0, 0xc
/* 1E9F8 8001DDF8 16C4FFE6 */  bne        $s6, $a0, .L8001DD94
/* 1E9FC 8001DDFC 00000000 */   nop
.L8001DE00:
/* 1EA00 8001DE00 8FBF003C */  lw         $ra, 0x3c($sp)
.L8001DE04:
/* 1EA04 8001DE04 8FB00018 */  lw         $s0, 0x18($sp)
/* 1EA08 8001DE08 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1EA0C 8001DE0C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1EA10 8001DE10 8FB30024 */  lw         $s3, 0x24($sp)
/* 1EA14 8001DE14 8FB40028 */  lw         $s4, 0x28($sp)
/* 1EA18 8001DE18 8FB5002C */  lw         $s5, 0x2c($sp)
/* 1EA1C 8001DE1C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1EA20 8001DE20 8FB70034 */  lw         $s7, 0x34($sp)
/* 1EA24 8001DE24 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1EA28 8001DE28 03E00008 */  jr         $ra
/* 1EA2C 8001DE2C 27BD0040 */   addiu     $sp, $sp, 0x40
