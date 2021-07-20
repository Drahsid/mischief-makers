.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001DBA0
/* 1E7A0 8001DBA0 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 1E7A4 8001DBA4 000E7880 */  sll        $t7, $t6, 2
/* 1E7A8 8001DBA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E7AC 8001DBAC 01EE7823 */  subu       $t7, $t7, $t6
/* 1E7B0 8001DBB0 000F7880 */  sll        $t7, $t7, 2
/* 1E7B4 8001DBB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E7B8 8001DBB8 AFA50024 */  sw         $a1, 0x24($sp)
/* 1E7BC 8001DBBC 01EE7821 */  addu       $t7, $t7, $t6
/* 1E7C0 8001DBC0 9499000A */  lhu        $t9, 0xa($a0)
/* 1E7C4 8001DBC4 000F7880 */  sll        $t7, $t7, 2
/* 1E7C8 8001DBC8 01EE7823 */  subu       $t7, $t7, $t6
/* 1E7CC 8001DBCC 3C18800F */  lui        $t8, %hi(gActors)
/* 1E7D0 8001DBD0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 1E7D4 8001DBD4 000F78C0 */  sll        $t7, $t7, 3
/* 1E7D8 8001DBD8 00803025 */  or         $a2, $a0, $zero
/* 1E7DC 8001DBDC 01F81021 */  addu       $v0, $t7, $t8
/* 1E7E0 8001DBE0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 1E7E4 8001DBE4 AFA60020 */  sw         $a2, 0x20($sp)
/* 1E7E8 8001DBE8 31C4FFFF */  andi       $a0, $t6, 0xffff
/* 1E7EC 8001DBEC 0C0078B4 */  jal        func_8001E2D0
/* 1E7F0 8001DBF0 A45900D2 */   sh        $t9, 0xd2($v0)
/* 1E7F4 8001DBF4 8FA60020 */  lw         $a2, 0x20($sp)
/* 1E7F8 8001DBF8 3C09800C */  lui        $t1, %hi(D_800BE558)
/* 1E7FC 8001DBFC 8529E558 */  lh         $t1, %lo(D_800BE558)($t1)
/* 1E800 8001DC00 94C80002 */  lhu        $t0, 2($a2)
/* 1E804 8001DC04 8FA2001C */  lw         $v0, 0x1c($sp)
/* 1E808 8001DC08 01095023 */  subu       $t2, $t0, $t1
/* 1E80C 8001DC0C A44A0088 */  sh         $t2, 0x88($v0)
/* 1E810 8001DC10 3C0C800C */  lui        $t4, %hi(D_800BE55C)
/* 1E814 8001DC14 858CE55C */  lh         $t4, %lo(D_800BE55C)($t4)
/* 1E818 8001DC18 94CB0004 */  lhu        $t3, 4($a2)
/* 1E81C 8001DC1C 3C014F80 */  lui        $at, 0x4f80
/* 1E820 8001DC20 016C6823 */  subu       $t5, $t3, $t4
/* 1E824 8001DC24 A44D008C */  sh         $t5, 0x8c($v0)
/* 1E828 8001DC28 94CE0006 */  lhu        $t6, 6($a2)
/* 1E82C 8001DC2C 00000000 */  nop
/* 1E830 8001DC30 448E2000 */  mtc1       $t6, $f4
/* 1E834 8001DC34 05C10004 */  bgez       $t6, .L8001DC48
/* 1E838 8001DC38 468021A0 */   cvt.s.w   $f6, $f4
/* 1E83C 8001DC3C 44814000 */  mtc1       $at, $f8
/* 1E840 8001DC40 00000000 */  nop
/* 1E844 8001DC44 46083180 */  add.s      $f6, $f6, $f8
.L8001DC48:
/* 1E848 8001DC48 E4460110 */  swc1       $f6, 0x110($v0)
/* 1E84C 8001DC4C 94CF0008 */  lhu        $t7, 8($a2)
/* 1E850 8001DC50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E854 8001DC54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E858 8001DC58 03E00008 */  jr         $ra
/* 1E85C 8001DC5C A44F00D8 */   sh        $t7, 0xd8($v0)

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

glabel func_8001DE30
/* 1EA30 8001DE30 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1EA34 8001DE34 3C0E800C */  lui        $t6, %hi(D_800BE664)
/* 1EA38 8001DE38 95CEE664 */  lhu        $t6, %lo(D_800BE664)($t6)
/* 1EA3C 8001DE3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 1EA40 8001DE40 AFB70030 */  sw         $s7, 0x30($sp)
/* 1EA44 8001DE44 AFB6002C */  sw         $s6, 0x2c($sp)
/* 1EA48 8001DE48 AFB50028 */  sw         $s5, 0x28($sp)
/* 1EA4C 8001DE4C AFB40024 */  sw         $s4, 0x24($sp)
/* 1EA50 8001DE50 AFB30020 */  sw         $s3, 0x20($sp)
/* 1EA54 8001DE54 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1EA58 8001DE58 AFB10018 */  sw         $s1, 0x18($sp)
/* 1EA5C 8001DE5C 11C0008A */  beqz       $t6, .L8001E088
/* 1EA60 8001DE60 AFB00014 */   sw        $s0, 0x14($sp)
/* 1EA64 8001DE64 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 1EA68 8001DE68 3C03800C */  lui        $v1, %hi(D_800BE55C)
/* 1EA6C 8001DE6C 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 1EA70 8001DE70 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 1EA74 8001DE74 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1EA78 8001DE78 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1EA7C 8001DE7C 2458FF50 */  addiu      $t8, $v0, -0xb0
/* 1EA80 8001DE80 245900B0 */  addiu      $t9, $v0, 0xb0
/* 1EA84 8001DE84 246AFF80 */  addiu      $t2, $v1, -0x80
/* 1EA88 8001DE88 246B0080 */  addiu      $t3, $v1, 0x80
/* 1EA8C 8001DE8C A7B80058 */  sh         $t8, 0x58($sp)
/* 1EA90 8001DE90 A7B90056 */  sh         $t9, 0x56($sp)
/* 1EA94 8001DE94 A7AA004E */  sh         $t2, 0x4e($sp)
/* 1EA98 8001DE98 A7AB004C */  sh         $t3, 0x4c($sp)
/* 1EA9C 8001DE9C 96040000 */  lhu        $a0, ($s0)
/* 1EAA0 8001DEA0 2454FF30 */  addiu      $s4, $v0, -0xd0
/* 1EAA4 8001DEA4 245600D0 */  addiu      $s6, $v0, 0xd0
/* 1EAA8 8001DEA8 2477FF60 */  addiu      $s7, $v1, -0xa0
/* 1EAAC 8001DEAC 3411FFFF */  ori        $s1, $zero, 0xffff
/* 1EAB0 8001DEB0 328FFFFF */  andi       $t7, $s4, 0xffff
/* 1EAB4 8001DEB4 32C8FFFF */  andi       $t0, $s6, 0xffff
/* 1EAB8 8001DEB8 32E9FFFF */  andi       $t1, $s7, 0xffff
/* 1EABC 8001DEBC 247500A0 */  addiu      $s5, $v1, 0xa0
/* 1EAC0 8001DEC0 01E0A025 */  or         $s4, $t7, $zero
/* 1EAC4 8001DEC4 0100B025 */  or         $s6, $t0, $zero
/* 1EAC8 8001DEC8 0120B825 */  or         $s7, $t1, $zero
/* 1EACC 8001DECC 32ACFFFF */  andi       $t4, $s5, 0xffff
/* 1EAD0 8001DED0 12240023 */  beq        $s1, $a0, .L8001DF60
/* 1EAD4 8001DED4 00802825 */   or        $a1, $a0, $zero
/* 1EAD8 8001DED8 3C12800F */  lui        $s2, %hi(gActors)
/* 1EADC 8001DEDC 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 1EAE0 8001DEE0 01803025 */  or         $a2, $t4, $zero
/* 1EAE4 8001DEE4 24130198 */  addiu      $s3, $zero, 0x198
.L8001DEE8:
/* 1EAE8 8001DEE8 96020004 */  lhu        $v0, 4($s0)
/* 1EAEC 8001DEEC 97AD004C */  lhu        $t5, 0x4c($sp)
/* 1EAF0 8001DEF0 00C2082A */  slt        $at, $a2, $v0
/* 1EAF4 8001DEF4 14200016 */  bnez       $at, .L8001DF50
/* 1EAF8 8001DEF8 004D082A */   slt       $at, $v0, $t5
/* 1EAFC 8001DEFC 14200018 */  bnez       $at, .L8001DF60
/* 1EB00 8001DF00 00000000 */   nop
/* 1EB04 8001DF04 96020002 */  lhu        $v0, 2($s0)
/* 1EB08 8001DF08 00000000 */  nop
/* 1EB0C 8001DF0C 0054082A */  slt        $at, $v0, $s4
/* 1EB10 8001DF10 1420000F */  bnez       $at, .L8001DF50
/* 1EB14 8001DF14 02C2082A */   slt       $at, $s6, $v0
/* 1EB18 8001DF18 1420000D */  bnez       $at, .L8001DF50
/* 1EB1C 8001DF1C 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EB20 8001DF20 00B30019 */  multu      $a1, $s3
/* 1EB24 8001DF24 02002025 */  or         $a0, $s0, $zero
/* 1EB28 8001DF28 00007012 */  mflo       $t6
/* 1EB2C 8001DF2C 024E7821 */  addu       $t7, $s2, $t6
/* 1EB30 8001DF30 8DF80080 */  lw         $t8, 0x80($t7)
/* 1EB34 8001DF34 00000000 */  nop
/* 1EB38 8001DF38 17000005 */  bnez       $t8, .L8001DF50
/* 1EB3C 8001DF3C 00000000 */   nop
/* 1EB40 8001DF40 0C0076E8 */  jal        func_8001DBA0
/* 1EB44 8001DF44 AFA60038 */   sw        $a2, 0x38($sp)
/* 1EB48 8001DF48 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EB4C 8001DF4C 00000000 */  nop
.L8001DF50:
/* 1EB50 8001DF50 9604000C */  lhu        $a0, 0xc($s0)
/* 1EB54 8001DF54 2610000C */  addiu      $s0, $s0, 0xc
/* 1EB58 8001DF58 1624FFE3 */  bne        $s1, $a0, .L8001DEE8
/* 1EB5C 8001DF5C 00802825 */   or        $a1, $a0, $zero
.L8001DF60:
/* 1EB60 8001DF60 3C12800F */  lui        $s2, %hi(gActors)
/* 1EB64 8001DF64 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 1EB68 8001DF68 12250027 */  beq        $s1, $a1, .L8001E008
/* 1EB6C 8001DF6C 24130198 */   addiu     $s3, $zero, 0x198
/* 1EB70 8001DF70 97A6004E */  lhu        $a2, 0x4e($sp)
/* 1EB74 8001DF74 00000000 */  nop
.L8001DF78:
/* 1EB78 8001DF78 96020004 */  lhu        $v0, 4($s0)
/* 1EB7C 8001DF7C 00000000 */  nop
/* 1EB80 8001DF80 0046082A */  slt        $at, $v0, $a2
/* 1EB84 8001DF84 14200020 */  bnez       $at, .L8001E008
/* 1EB88 8001DF88 00000000 */   nop
/* 1EB8C 8001DF8C 96020002 */  lhu        $v0, 2($s0)
/* 1EB90 8001DF90 00000000 */  nop
/* 1EB94 8001DF94 0054082A */  slt        $at, $v0, $s4
/* 1EB98 8001DF98 14200017 */  bnez       $at, .L8001DFF8
/* 1EB9C 8001DF9C 02C2082A */   slt       $at, $s6, $v0
/* 1EBA0 8001DFA0 14200015 */  bnez       $at, .L8001DFF8
/* 1EBA4 8001DFA4 00000000 */   nop
/* 1EBA8 8001DFA8 97B90058 */  lhu        $t9, 0x58($sp)
/* 1EBAC 8001DFAC 97A80056 */  lhu        $t0, 0x56($sp)
/* 1EBB0 8001DFB0 0322082A */  slt        $at, $t9, $v0
/* 1EBB4 8001DFB4 10200004 */  beqz       $at, .L8001DFC8
/* 1EBB8 8001DFB8 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EBBC 8001DFBC 0048082A */  slt        $at, $v0, $t0
/* 1EBC0 8001DFC0 1420000D */  bnez       $at, .L8001DFF8
/* 1EBC4 8001DFC4 00000000 */   nop
.L8001DFC8:
/* 1EBC8 8001DFC8 00B30019 */  multu      $a1, $s3
/* 1EBCC 8001DFCC 02002025 */  or         $a0, $s0, $zero
/* 1EBD0 8001DFD0 00004812 */  mflo       $t1
/* 1EBD4 8001DFD4 02495021 */  addu       $t2, $s2, $t1
/* 1EBD8 8001DFD8 8D4B0080 */  lw         $t3, 0x80($t2)
/* 1EBDC 8001DFDC 00000000 */  nop
/* 1EBE0 8001DFE0 15600005 */  bnez       $t3, .L8001DFF8
/* 1EBE4 8001DFE4 00000000 */   nop
/* 1EBE8 8001DFE8 0C0076E8 */  jal        func_8001DBA0
/* 1EBEC 8001DFEC AFA60038 */   sw        $a2, 0x38($sp)
/* 1EBF0 8001DFF0 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EBF4 8001DFF4 00000000 */  nop
.L8001DFF8:
/* 1EBF8 8001DFF8 9604000C */  lhu        $a0, 0xc($s0)
/* 1EBFC 8001DFFC 2610000C */  addiu      $s0, $s0, 0xc
/* 1EC00 8001E000 1624FFDD */  bne        $s1, $a0, .L8001DF78
/* 1EC04 8001E004 00802825 */   or        $a1, $a0, $zero
.L8001E008:
/* 1EC08 8001E008 122500A6 */  beq        $s1, $a1, .L8001E2A4
/* 1EC0C 8001E00C 02E03025 */   or        $a2, $s7, $zero
.L8001E010:
/* 1EC10 8001E010 96020004 */  lhu        $v0, 4($s0)
/* 1EC14 8001E014 00000000 */  nop
/* 1EC18 8001E018 0046082A */  slt        $at, $v0, $a2
/* 1EC1C 8001E01C 142000A2 */  bnez       $at, .L8001E2A8
/* 1EC20 8001E020 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1EC24 8001E024 96020002 */  lhu        $v0, 2($s0)
/* 1EC28 8001E028 00000000 */  nop
/* 1EC2C 8001E02C 0054082A */  slt        $at, $v0, $s4
/* 1EC30 8001E030 1420000F */  bnez       $at, .L8001E070
/* 1EC34 8001E034 02C2082A */   slt       $at, $s6, $v0
/* 1EC38 8001E038 1420000D */  bnez       $at, .L8001E070
/* 1EC3C 8001E03C 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EC40 8001E040 00B30019 */  multu      $a1, $s3
/* 1EC44 8001E044 02002025 */  or         $a0, $s0, $zero
/* 1EC48 8001E048 00006012 */  mflo       $t4
/* 1EC4C 8001E04C 024C6821 */  addu       $t5, $s2, $t4
/* 1EC50 8001E050 8DAE0080 */  lw         $t6, 0x80($t5)
/* 1EC54 8001E054 00000000 */  nop
/* 1EC58 8001E058 15C00005 */  bnez       $t6, .L8001E070
/* 1EC5C 8001E05C 00000000 */   nop
/* 1EC60 8001E060 0C0076E8 */  jal        func_8001DBA0
/* 1EC64 8001E064 AFA6003C */   sw        $a2, 0x3c($sp)
/* 1EC68 8001E068 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1EC6C 8001E06C 00000000 */  nop
.L8001E070:
/* 1EC70 8001E070 9604000C */  lhu        $a0, 0xc($s0)
/* 1EC74 8001E074 2610000C */  addiu      $s0, $s0, 0xc
/* 1EC78 8001E078 1624FFE5 */  bne        $s1, $a0, .L8001E010
/* 1EC7C 8001E07C 00000000 */   nop
/* 1EC80 8001E080 10000089 */  b          .L8001E2A8
/* 1EC84 8001E084 8FBF0034 */   lw        $ra, 0x34($sp)
.L8001E088:
/* 1EC88 8001E088 3C02800C */  lui        $v0, %hi(D_800BE558)
/* 1EC8C 8001E08C 3C03800C */  lui        $v1, %hi(D_800BE55C)
/* 1EC90 8001E090 8442E558 */  lh         $v0, %lo(D_800BE558)($v0)
/* 1EC94 8001E094 8463E55C */  lh         $v1, %lo(D_800BE55C)($v1)
/* 1EC98 8001E098 3C108013 */  lui        $s0, %hi(D_8013776C)
/* 1EC9C 8001E09C 8E10776C */  lw         $s0, %lo(D_8013776C)($s0)
/* 1ECA0 8001E0A0 2458FF50 */  addiu      $t8, $v0, -0xb0
/* 1ECA4 8001E0A4 245900B0 */  addiu      $t9, $v0, 0xb0
/* 1ECA8 8001E0A8 246AFF80 */  addiu      $t2, $v1, -0x80
/* 1ECAC 8001E0AC 246B0080 */  addiu      $t3, $v1, 0x80
/* 1ECB0 8001E0B0 A7B80058 */  sh         $t8, 0x58($sp)
/* 1ECB4 8001E0B4 A7B90056 */  sh         $t9, 0x56($sp)
/* 1ECB8 8001E0B8 A7AA004E */  sh         $t2, 0x4e($sp)
/* 1ECBC 8001E0BC A7AB004C */  sh         $t3, 0x4c($sp)
/* 1ECC0 8001E0C0 96040000 */  lhu        $a0, ($s0)
/* 1ECC4 8001E0C4 245600D0 */  addiu      $s6, $v0, 0xd0
/* 1ECC8 8001E0C8 2477FF60 */  addiu      $s7, $v1, -0xa0
/* 1ECCC 8001E0CC 247500A0 */  addiu      $s5, $v1, 0xa0
/* 1ECD0 8001E0D0 3411FFFF */  ori        $s1, $zero, 0xffff
/* 1ECD4 8001E0D4 32C8FFFF */  andi       $t0, $s6, 0xffff
/* 1ECD8 8001E0D8 32E9FFFF */  andi       $t1, $s7, 0xffff
/* 1ECDC 8001E0DC 32ACFFFF */  andi       $t4, $s5, 0xffff
/* 1ECE0 8001E0E0 2454FF30 */  addiu      $s4, $v0, -0xd0
/* 1ECE4 8001E0E4 328FFFFF */  andi       $t7, $s4, 0xffff
/* 1ECE8 8001E0E8 0100B025 */  or         $s6, $t0, $zero
/* 1ECEC 8001E0EC 0120B825 */  or         $s7, $t1, $zero
/* 1ECF0 8001E0F0 0180A825 */  or         $s5, $t4, $zero
/* 1ECF4 8001E0F4 12240023 */  beq        $s1, $a0, .L8001E184
/* 1ECF8 8001E0F8 00802825 */   or        $a1, $a0, $zero
/* 1ECFC 8001E0FC 3C12800F */  lui        $s2, %hi(gActors)
/* 1ED00 8001E100 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 1ED04 8001E104 01E03025 */  or         $a2, $t7, $zero
/* 1ED08 8001E108 24130198 */  addiu      $s3, $zero, 0x198
.L8001E10C:
/* 1ED0C 8001E10C 96020002 */  lhu        $v0, 2($s0)
/* 1ED10 8001E110 97AD0058 */  lhu        $t5, 0x58($sp)
/* 1ED14 8001E114 0046082A */  slt        $at, $v0, $a2
/* 1ED18 8001E118 14200016 */  bnez       $at, .L8001E174
/* 1ED1C 8001E11C 01A2082A */   slt       $at, $t5, $v0
/* 1ED20 8001E120 14200018 */  bnez       $at, .L8001E184
/* 1ED24 8001E124 00000000 */   nop
/* 1ED28 8001E128 96020004 */  lhu        $v0, 4($s0)
/* 1ED2C 8001E12C 00000000 */  nop
/* 1ED30 8001E130 0057082A */  slt        $at, $v0, $s7
/* 1ED34 8001E134 1420000F */  bnez       $at, .L8001E174
/* 1ED38 8001E138 02A2082A */   slt       $at, $s5, $v0
/* 1ED3C 8001E13C 1420000D */  bnez       $at, .L8001E174
/* 1ED40 8001E140 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1ED44 8001E144 00B30019 */  multu      $a1, $s3
/* 1ED48 8001E148 02002025 */  or         $a0, $s0, $zero
/* 1ED4C 8001E14C 00007012 */  mflo       $t6
/* 1ED50 8001E150 024E7821 */  addu       $t7, $s2, $t6
/* 1ED54 8001E154 8DF80080 */  lw         $t8, 0x80($t7)
/* 1ED58 8001E158 00000000 */  nop
/* 1ED5C 8001E15C 17000005 */  bnez       $t8, .L8001E174
/* 1ED60 8001E160 00000000 */   nop
/* 1ED64 8001E164 0C0076E8 */  jal        func_8001DBA0
/* 1ED68 8001E168 AFA60038 */   sw        $a2, 0x38($sp)
/* 1ED6C 8001E16C 8FA60038 */  lw         $a2, 0x38($sp)
/* 1ED70 8001E170 00000000 */  nop
.L8001E174:
/* 1ED74 8001E174 9604000C */  lhu        $a0, 0xc($s0)
/* 1ED78 8001E178 2610000C */  addiu      $s0, $s0, 0xc
/* 1ED7C 8001E17C 1624FFE3 */  bne        $s1, $a0, .L8001E10C
/* 1ED80 8001E180 00802825 */   or        $a1, $a0, $zero
.L8001E184:
/* 1ED84 8001E184 3C12800F */  lui        $s2, %hi(gActors)
/* 1ED88 8001E188 2652F510 */  addiu      $s2, $s2, %lo(gActors)
/* 1ED8C 8001E18C 12250027 */  beq        $s1, $a1, .L8001E22C
/* 1ED90 8001E190 24130198 */   addiu     $s3, $zero, 0x198
/* 1ED94 8001E194 97A60056 */  lhu        $a2, 0x56($sp)
/* 1ED98 8001E198 00000000 */  nop
.L8001E19C:
/* 1ED9C 8001E19C 96020002 */  lhu        $v0, 2($s0)
/* 1EDA0 8001E1A0 00000000 */  nop
/* 1EDA4 8001E1A4 00C2082A */  slt        $at, $a2, $v0
/* 1EDA8 8001E1A8 14200020 */  bnez       $at, .L8001E22C
/* 1EDAC 8001E1AC 00000000 */   nop
/* 1EDB0 8001E1B0 96020004 */  lhu        $v0, 4($s0)
/* 1EDB4 8001E1B4 00000000 */  nop
/* 1EDB8 8001E1B8 0057082A */  slt        $at, $v0, $s7
/* 1EDBC 8001E1BC 14200017 */  bnez       $at, .L8001E21C
/* 1EDC0 8001E1C0 02A2082A */   slt       $at, $s5, $v0
/* 1EDC4 8001E1C4 14200015 */  bnez       $at, .L8001E21C
/* 1EDC8 8001E1C8 00000000 */   nop
/* 1EDCC 8001E1CC 97B9004E */  lhu        $t9, 0x4e($sp)
/* 1EDD0 8001E1D0 97A8004C */  lhu        $t0, 0x4c($sp)
/* 1EDD4 8001E1D4 0322082A */  slt        $at, $t9, $v0
/* 1EDD8 8001E1D8 10200004 */  beqz       $at, .L8001E1EC
/* 1EDDC 8001E1DC 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EDE0 8001E1E0 0048082A */  slt        $at, $v0, $t0
/* 1EDE4 8001E1E4 1420000D */  bnez       $at, .L8001E21C
/* 1EDE8 8001E1E8 00000000 */   nop
.L8001E1EC:
/* 1EDEC 8001E1EC 00B30019 */  multu      $a1, $s3
/* 1EDF0 8001E1F0 02002025 */  or         $a0, $s0, $zero
/* 1EDF4 8001E1F4 00004812 */  mflo       $t1
/* 1EDF8 8001E1F8 02495021 */  addu       $t2, $s2, $t1
/* 1EDFC 8001E1FC 8D4B0080 */  lw         $t3, 0x80($t2)
/* 1EE00 8001E200 00000000 */  nop
/* 1EE04 8001E204 15600005 */  bnez       $t3, .L8001E21C
/* 1EE08 8001E208 00000000 */   nop
/* 1EE0C 8001E20C 0C0076E8 */  jal        func_8001DBA0
/* 1EE10 8001E210 AFA60038 */   sw        $a2, 0x38($sp)
/* 1EE14 8001E214 8FA60038 */  lw         $a2, 0x38($sp)
/* 1EE18 8001E218 00000000 */  nop
.L8001E21C:
/* 1EE1C 8001E21C 9604000C */  lhu        $a0, 0xc($s0)
/* 1EE20 8001E220 2610000C */  addiu      $s0, $s0, 0xc
/* 1EE24 8001E224 1624FFDD */  bne        $s1, $a0, .L8001E19C
/* 1EE28 8001E228 00802825 */   or        $a1, $a0, $zero
.L8001E22C:
/* 1EE2C 8001E22C 1225001D */  beq        $s1, $a1, .L8001E2A4
/* 1EE30 8001E230 02C03025 */   or        $a2, $s6, $zero
.L8001E234:
/* 1EE34 8001E234 96020002 */  lhu        $v0, 2($s0)
/* 1EE38 8001E238 00000000 */  nop
/* 1EE3C 8001E23C 00C2082A */  slt        $at, $a2, $v0
/* 1EE40 8001E240 14200019 */  bnez       $at, .L8001E2A8
/* 1EE44 8001E244 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1EE48 8001E248 96020004 */  lhu        $v0, 4($s0)
/* 1EE4C 8001E24C 00000000 */  nop
/* 1EE50 8001E250 0057082A */  slt        $at, $v0, $s7
/* 1EE54 8001E254 1420000F */  bnez       $at, .L8001E294
/* 1EE58 8001E258 02A2082A */   slt       $at, $s5, $v0
/* 1EE5C 8001E25C 1420000D */  bnez       $at, .L8001E294
/* 1EE60 8001E260 3085FFFF */   andi      $a1, $a0, 0xffff
/* 1EE64 8001E264 00B30019 */  multu      $a1, $s3
/* 1EE68 8001E268 02002025 */  or         $a0, $s0, $zero
/* 1EE6C 8001E26C 00006012 */  mflo       $t4
/* 1EE70 8001E270 024C6821 */  addu       $t5, $s2, $t4
/* 1EE74 8001E274 8DAE0080 */  lw         $t6, 0x80($t5)
/* 1EE78 8001E278 00000000 */  nop
/* 1EE7C 8001E27C 15C00005 */  bnez       $t6, .L8001E294
/* 1EE80 8001E280 00000000 */   nop
/* 1EE84 8001E284 0C0076E8 */  jal        func_8001DBA0
/* 1EE88 8001E288 AFA6003C */   sw        $a2, 0x3c($sp)
/* 1EE8C 8001E28C 8FA6003C */  lw         $a2, 0x3c($sp)
/* 1EE90 8001E290 00000000 */  nop
.L8001E294:
/* 1EE94 8001E294 9604000C */  lhu        $a0, 0xc($s0)
/* 1EE98 8001E298 2610000C */  addiu      $s0, $s0, 0xc
/* 1EE9C 8001E29C 1624FFE5 */  bne        $s1, $a0, .L8001E234
/* 1EEA0 8001E2A0 00000000 */   nop
.L8001E2A4:
/* 1EEA4 8001E2A4 8FBF0034 */  lw         $ra, 0x34($sp)
.L8001E2A8:
/* 1EEA8 8001E2A8 8FB00014 */  lw         $s0, 0x14($sp)
/* 1EEAC 8001E2AC 8FB10018 */  lw         $s1, 0x18($sp)
/* 1EEB0 8001E2B0 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1EEB4 8001E2B4 8FB30020 */  lw         $s3, 0x20($sp)
/* 1EEB8 8001E2B8 8FB40024 */  lw         $s4, 0x24($sp)
/* 1EEBC 8001E2BC 8FB50028 */  lw         $s5, 0x28($sp)
/* 1EEC0 8001E2C0 8FB6002C */  lw         $s6, 0x2c($sp)
/* 1EEC4 8001E2C4 8FB70030 */  lw         $s7, 0x30($sp)
/* 1EEC8 8001E2C8 03E00008 */  jr         $ra
/* 1EECC 8001E2CC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8001E2D0
/* 1EED0 8001E2D0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1EED4 8001E2D4 000E7880 */  sll        $t7, $t6, 2
/* 1EED8 8001E2D8 01EE7823 */  subu       $t7, $t7, $t6
/* 1EEDC 8001E2DC 000F7880 */  sll        $t7, $t7, 2
/* 1EEE0 8001E2E0 01EE7821 */  addu       $t7, $t7, $t6
/* 1EEE4 8001E2E4 000F7880 */  sll        $t7, $t7, 2
/* 1EEE8 8001E2E8 01EE7823 */  subu       $t7, $t7, $t6
/* 1EEEC 8001E2EC 3C18800F */  lui        $t8, %hi(gActors)
/* 1EEF0 8001E2F0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 1EEF4 8001E2F4 000F78C0 */  sll        $t7, $t7, 3
/* 1EEF8 8001E2F8 01F81021 */  addu       $v0, $t7, $t8
/* 1EEFC 8001E2FC 944500D2 */  lhu        $a1, 0xd2($v0)
/* 1EF00 8001E300 AFA40000 */  sw         $a0, ($sp)
/* 1EF04 8001E304 000518C0 */  sll        $v1, $a1, 3
/* 1EF08 8001E308 00651823 */  subu       $v1, $v1, $a1
/* 1EF0C 8001E30C 28A10100 */  slti       $at, $a1, 0x100
/* 1EF10 8001E310 10200024 */  beqz       $at, .L8001E3A4
/* 1EF14 8001E314 3079FFFF */   andi      $t9, $v1, 0xffff
/* 1EF18 8001E318 3C0A800D */  lui        $t2, %hi(D_800C9700)
/* 1EF1C 8001E31C 254A9700 */  addiu      $t2, $t2, %lo(D_800C9700)
/* 1EF20 8001E320 00194840 */  sll        $t1, $t9, 1
/* 1EF24 8001E324 012A2021 */  addu       $a0, $t1, $t2
/* 1EF28 8001E328 84850000 */  lh         $a1, ($a0)
/* 1EF2C 8001E32C 84860002 */  lh         $a2, 2($a0)
/* 1EF30 8001E330 84870004 */  lh         $a3, 4($a0)
/* 1EF34 8001E334 84880006 */  lh         $t0, 6($a0)
/* 1EF38 8001E338 944300D2 */  lhu        $v1, 0xd2($v0)
/* 1EF3C 8001E33C 848F0008 */  lh         $t7, 8($a0)
/* 1EF40 8001E340 8498000A */  lh         $t8, 0xa($a0)
/* 1EF44 8001E344 3C09800D */  lui        $t1, 0x800d
/* 1EF48 8001E348 00055823 */  negu       $t3, $a1
/* 1EF4C 8001E34C 00066023 */  negu       $t4, $a2
/* 1EF50 8001E350 00076823 */  negu       $t5, $a3
/* 1EF54 8001E354 00087023 */  negu       $t6, $t0
/* 1EF58 8001E358 0003C880 */  sll        $t9, $v1, 2
/* 1EF5C 8001E35C A44B00A2 */  sh         $t3, 0xa2($v0)
/* 1EF60 8001E360 A44C00A8 */  sh         $t4, 0xa8($v0)
/* 1EF64 8001E364 A44D00AA */  sh         $t5, 0xaa($v0)
/* 1EF68 8001E368 A44E00B0 */  sh         $t6, 0xb0($v0)
/* 1EF6C 8001E36C 01394821 */  addu       $t1, $t1, $t9
/* 1EF70 8001E370 A44500A4 */  sh         $a1, 0xa4($v0)
/* 1EF74 8001E374 A44600A6 */  sh         $a2, 0xa6($v0)
/* 1EF78 8001E378 A44700AC */  sh         $a3, 0xac($v0)
/* 1EF7C 8001E37C A44800AE */  sh         $t0, 0xae($v0)
/* 1EF80 8001E380 A44F00E0 */  sh         $t7, 0xe0($v0)
/* 1EF84 8001E384 A45800E4 */  sh         $t8, 0xe4($v0)
/* 1EF88 8001E388 8D299DD8 */  lw         $t1, -0x6228($t1)
/* 1EF8C 8001E38C 3C0A800D */  lui        $t2, %hi(D_800C9FCC)
/* 1EF90 8001E390 01595021 */  addu       $t2, $t2, $t9
/* 1EF94 8001E394 AC490080 */  sw         $t1, 0x80($v0)
/* 1EF98 8001E398 8D4A9FCC */  lw         $t2, %lo(D_800C9FCC)($t2)
/* 1EF9C 8001E39C 10000013 */  b          .L8001E3EC
/* 1EFA0 8001E3A0 AC4A00E8 */   sw        $t2, 0xe8($v0)
.L8001E3A4:
/* 1EFA4 8001E3A4 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 1EFA8 8001E3A8 24040010 */  addiu      $a0, $zero, 0x10
/* 1EFAC 8001E3AC 2405000A */  addiu      $a1, $zero, 0xa
/* 1EFB0 8001E3B0 3C0C800E */  lui        $t4, %hi(D_800E1380)
/* 1EFB4 8001E3B4 240B0003 */  addiu      $t3, $zero, 3
/* 1EFB8 8001E3B8 258C1380 */  addiu      $t4, $t4, %lo(D_800E1380)
/* 1EFBC 8001E3BC A44300A2 */  sh         $v1, 0xa2($v0)
/* 1EFC0 8001E3C0 A44400A4 */  sh         $a0, 0xa4($v0)
/* 1EFC4 8001E3C4 A44400A6 */  sh         $a0, 0xa6($v0)
/* 1EFC8 8001E3C8 A44300A8 */  sh         $v1, 0xa8($v0)
/* 1EFCC 8001E3CC A44300AA */  sh         $v1, 0xaa($v0)
/* 1EFD0 8001E3D0 A44400AC */  sh         $a0, 0xac($v0)
/* 1EFD4 8001E3D4 A44400AE */  sh         $a0, 0xae($v0)
/* 1EFD8 8001E3D8 A44300B0 */  sh         $v1, 0xb0($v0)
/* 1EFDC 8001E3DC A44500E0 */  sh         $a1, 0xe0($v0)
/* 1EFE0 8001E3E0 A44500E4 */  sh         $a1, 0xe4($v0)
/* 1EFE4 8001E3E4 AC4B0080 */  sw         $t3, 0x80($v0)
/* 1EFE8 8001E3E8 AC4C00E8 */  sw         $t4, 0xe8($v0)
.L8001E3EC:
/* 1EFEC 8001E3EC 3C013F80 */  lui        $at, 0x3f80
/* 1EFF0 8001E3F0 44810000 */  mtc1       $at, $f0
/* 1EFF4 8001E3F4 44802000 */  mtc1       $zero, $f4
/* 1EFF8 8001E3F8 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 1EFFC 8001E3FC E44000B8 */  swc1       $f0, 0xb8($v0)
/* 1F000 8001E400 46802020 */  cvt.s.w    $f0, $f4
/* 1F004 8001E404 24040001 */  addiu      $a0, $zero, 1
/* 1F008 8001E408 240D00FF */  addiu      $t5, $zero, 0xff
/* 1F00C 8001E40C 4458F800 */  cfc1       $t8, $31
/* 1F010 8001E410 E440014C */  swc1       $f0, 0x14c($v0)
/* 1F014 8001E414 37010003 */  ori        $at, $t8, 3
/* 1F018 8001E418 38210002 */  xori       $at, $at, 2
/* 1F01C 8001E41C 44C1F800 */  ctc1       $at, $31
/* 1F020 8001E420 E4400148 */  swc1       $f0, 0x148($v0)
/* 1F024 8001E424 460001A4 */  cvt.w.s    $f6, $f0
/* 1F028 8001E428 E4400144 */  swc1       $f0, 0x144($v0)
/* 1F02C 8001E42C 44193000 */  mfc1       $t9, $f6
/* 1F030 8001E430 44D8F800 */  ctc1       $t8, $31
/* 1F034 8001E434 332500FF */  andi       $a1, $t9, 0xff
/* 1F038 8001E438 00054C00 */  sll        $t1, $a1, 0x10
/* 1F03C 8001E43C 00095403 */  sra        $t2, $t1, 0x10
/* 1F040 8001E440 448A4000 */  mtc1       $t2, $f8
/* 1F044 8001E444 E4400140 */  swc1       $f0, 0x140($v0)
/* 1F048 8001E448 E440013C */  swc1       $f0, 0x13c($v0)
/* 1F04C 8001E44C E4400138 */  swc1       $f0, 0x138($v0)
/* 1F050 8001E450 E4400134 */  swc1       $f0, 0x134($v0)
/* 1F054 8001E454 E4400130 */  swc1       $f0, 0x130($v0)
/* 1F058 8001E458 E440012C */  swc1       $f0, 0x12c($v0)
/* 1F05C 8001E45C E4400128 */  swc1       $f0, 0x128($v0)
/* 1F060 8001E460 E4400124 */  swc1       $f0, 0x124($v0)
/* 1F064 8001E464 E4400120 */  swc1       $f0, 0x120($v0)
/* 1F068 8001E468 E440011C */  swc1       $f0, 0x11c($v0)
/* 1F06C 8001E46C E4400118 */  swc1       $f0, 0x118($v0)
/* 1F070 8001E470 E4400114 */  swc1       $f0, 0x114($v0)
/* 1F074 8001E474 E4400110 */  swc1       $f0, 0x110($v0)
/* 1F078 8001E478 46804020 */  cvt.s.w    $f0, $f8
/* 1F07C 8001E47C 240E0001 */  addiu      $t6, $zero, 1
/* 1F080 8001E480 240F0001 */  addiu      $t7, $zero, 1
/* 1F084 8001E484 444BF800 */  cfc1       $t3, $31
/* 1F088 8001E488 44C4F800 */  ctc1       $a0, $31
/* 1F08C 8001E48C A04D009F */  sb         $t5, 0x9f($v0)
/* 1F090 8001E490 460002A4 */  cvt.w.s    $f10, $f0
/* 1F094 8001E494 A44E00E6 */  sh         $t6, 0xe6($v0)
/* 1F098 8001E498 4444F800 */  cfc1       $a0, $31
/* 1F09C 8001E49C A04F00DE */  sb         $t7, 0xde($v0)
/* 1F0A0 8001E4A0 30840078 */  andi       $a0, $a0, 0x78
/* 1F0A4 8001E4A4 E44000C4 */  swc1       $f0, 0xc4($v0)
/* 1F0A8 8001E4A8 E44000C0 */  swc1       $f0, 0xc0($v0)
/* 1F0AC 8001E4AC E44000BC */  swc1       $f0, 0xbc($v0)
/* 1F0B0 8001E4B0 A44500D6 */  sh         $a1, 0xd6($v0)
/* 1F0B4 8001E4B4 A44500D4 */  sh         $a1, 0xd4($v0)
/* 1F0B8 8001E4B8 A44500D0 */  sh         $a1, 0xd0($v0)
/* 1F0BC 8001E4BC A44500CE */  sh         $a1, 0xce($v0)
/* 1F0C0 8001E4C0 A44500CC */  sh         $a1, 0xcc($v0)
/* 1F0C4 8001E4C4 A44500CA */  sh         $a1, 0xca($v0)
/* 1F0C8 8001E4C8 A44500C8 */  sh         $a1, 0xc8($v0)
/* 1F0CC 8001E4CC AC400190 */  sw         $zero, 0x190($v0)
/* 1F0D0 8001E4D0 AC40018C */  sw         $zero, 0x18c($v0)
/* 1F0D4 8001E4D4 AC400188 */  sw         $zero, 0x188($v0)
/* 1F0D8 8001E4D8 AC400184 */  sw         $zero, 0x184($v0)
/* 1F0DC 8001E4DC AC400180 */  sw         $zero, 0x180($v0)
/* 1F0E0 8001E4E0 AC40017C */  sw         $zero, 0x17c($v0)
/* 1F0E4 8001E4E4 AC400178 */  sw         $zero, 0x178($v0)
/* 1F0E8 8001E4E8 AC400174 */  sw         $zero, 0x174($v0)
/* 1F0EC 8001E4EC AC400170 */  sw         $zero, 0x170($v0)
/* 1F0F0 8001E4F0 AC40016C */  sw         $zero, 0x16c($v0)
/* 1F0F4 8001E4F4 AC400168 */  sw         $zero, 0x168($v0)
/* 1F0F8 8001E4F8 AC400164 */  sw         $zero, 0x164($v0)
/* 1F0FC 8001E4FC AC400160 */  sw         $zero, 0x160($v0)
/* 1F100 8001E500 AC40015C */  sw         $zero, 0x15c($v0)
/* 1F104 8001E504 AC400158 */  sw         $zero, 0x158($v0)
/* 1F108 8001E508 AC400154 */  sw         $zero, 0x154($v0)
/* 1F10C 8001E50C AC400150 */  sw         $zero, 0x150($v0)
/* 1F110 8001E510 AC59010C */  sw         $t9, 0x10c($v0)
/* 1F114 8001E514 AC590108 */  sw         $t9, 0x108($v0)
/* 1F118 8001E518 AC590104 */  sw         $t9, 0x104($v0)
/* 1F11C 8001E51C AC590100 */  sw         $t9, 0x100($v0)
/* 1F120 8001E520 AC5900FC */  sw         $t9, 0xfc($v0)
/* 1F124 8001E524 AC5900F8 */  sw         $t9, 0xf8($v0)
/* 1F128 8001E528 AC5900F4 */  sw         $t9, 0xf4($v0)
/* 1F12C 8001E52C AC5900F0 */  sw         $t9, 0xf0($v0)
/* 1F130 8001E530 AC5900EC */  sw         $t9, 0xec($v0)
/* 1F134 8001E534 A45900E2 */  sh         $t9, 0xe2($v0)
/* 1F138 8001E538 A05900DF */  sb         $t9, 0xdf($v0)
/* 1F13C 8001E53C A05900DD */  sb         $t9, 0xdd($v0)
/* 1F140 8001E540 A05900DC */  sb         $t9, 0xdc($v0)
/* 1F144 8001E544 A05900DB */  sb         $t9, 0xdb($v0)
/* 1F148 8001E548 10800013 */  beqz       $a0, .L8001E598
/* 1F14C 8001E54C A05900DA */   sb        $t9, 0xda($v0)
/* 1F150 8001E550 3C014F00 */  lui        $at, 0x4f00
/* 1F154 8001E554 44815000 */  mtc1       $at, $f10
/* 1F158 8001E558 24040001 */  addiu      $a0, $zero, 1
/* 1F15C 8001E55C 460A0281 */  sub.s      $f10, $f0, $f10
/* 1F160 8001E560 3C018000 */  lui        $at, 0x8000
/* 1F164 8001E564 44C4F800 */  ctc1       $a0, $31
/* 1F168 8001E568 00000000 */  nop
/* 1F16C 8001E56C 460052A4 */  cvt.w.s    $f10, $f10
/* 1F170 8001E570 4444F800 */  cfc1       $a0, $31
/* 1F174 8001E574 00000000 */  nop
/* 1F178 8001E578 30840078 */  andi       $a0, $a0, 0x78
/* 1F17C 8001E57C 14800004 */  bnez       $a0, .L8001E590
/* 1F180 8001E580 00000000 */   nop
/* 1F184 8001E584 44045000 */  mfc1       $a0, $f10
/* 1F188 8001E588 10000007 */  b          .L8001E5A8
/* 1F18C 8001E58C 00812025 */   or        $a0, $a0, $at
.L8001E590:
/* 1F190 8001E590 10000005 */  b          .L8001E5A8
/* 1F194 8001E594 2404FFFF */   addiu     $a0, $zero, -1
.L8001E598:
/* 1F198 8001E598 44045000 */  mfc1       $a0, $f10
/* 1F19C 8001E59C 00000000 */  nop
/* 1F1A0 8001E5A0 0480FFFB */  bltz       $a0, .L8001E590
/* 1F1A4 8001E5A4 00000000 */   nop
.L8001E5A8:
/* 1F1A8 8001E5A8 308600FF */  andi       $a2, $a0, 0xff
/* 1F1AC 8001E5AC 44CBF800 */  ctc1       $t3, $31
/* 1F1B0 8001E5B0 AC460098 */  sw         $a2, 0x98($v0)
/* 1F1B4 8001E5B4 A4460094 */  sh         $a2, 0x94($v0)
/* 1F1B8 8001E5B8 AC460090 */  sw         $a2, 0x90($v0)
/* 1F1BC 8001E5BC A446008E */  sh         $a2, 0x8e($v0)
/* 1F1C0 8001E5C0 A446008A */  sh         $a2, 0x8a($v0)
/* 1F1C4 8001E5C4 A4460084 */  sh         $a2, 0x84($v0)
/* 1F1C8 8001E5C8 A04400A0 */  sb         $a0, 0xa0($v0)
/* 1F1CC 8001E5CC A044009E */  sb         $a0, 0x9e($v0)
/* 1F1D0 8001E5D0 A044009D */  sb         $a0, 0x9d($v0)
/* 1F1D4 8001E5D4 03E00008 */  jr         $ra
/* 1F1D8 8001E5D8 A044009C */   sb        $a0, 0x9c($v0)
/* 1F1DC 8001E5DC 00000000 */  nop
