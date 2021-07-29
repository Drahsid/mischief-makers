glabel func_8000DD6C
/* E96C 8000DD6C 27BDFE90 */  addiu      $sp, $sp, -0x170
/* E970 8000DD70 3C0E800C */  lui        $t6, %hi(D_800BE710)
/* E974 8000DD74 91CEE710 */  lbu        $t6, %lo(D_800BE710)($t6)
/* E978 8000DD78 AFBF003C */  sw         $ra, 0x3c($sp)
/* E97C 8000DD7C AFBE0038 */  sw         $fp, 0x38($sp)
/* E980 8000DD80 AFB70034 */  sw         $s7, 0x34($sp)
/* E984 8000DD84 AFB60030 */  sw         $s6, 0x30($sp)
/* E988 8000DD88 AFB5002C */  sw         $s5, 0x2c($sp)
/* E98C 8000DD8C AFB40028 */  sw         $s4, 0x28($sp)
/* E990 8000DD90 AFB30024 */  sw         $s3, 0x24($sp)
/* E994 8000DD94 AFB20020 */  sw         $s2, 0x20($sp)
/* E998 8000DD98 AFB1001C */  sw         $s1, 0x1c($sp)
/* E99C 8000DD9C 11C000A2 */  beqz       $t6, .L8000E028
/* E9A0 8000DDA0 AFB00018 */   sw        $s0, 0x18($sp)
/* E9A4 8000DDA4 3C088013 */  lui        $t0, %hi(D_8012A670)
/* E9A8 8000DDA8 2508A670 */  addiu      $t0, $t0, %lo(D_8012A670)
/* E9AC 8000DDAC 8D020000 */  lw         $v0, ($t0)
/* E9B0 8000DDB0 3C18800E */  lui        $t8, %hi(D_800E39C0)
/* E9B4 8000DDB4 244F0008 */  addiu      $t7, $v0, 8
/* E9B8 8000DDB8 AD0F0000 */  sw         $t7, ($t0)
/* E9BC 8000DDBC 3C160600 */  lui        $s6, 0x600
/* E9C0 8000DDC0 271839C0 */  addiu      $t8, $t8, %lo(D_800E39C0)
/* E9C4 8000DDC4 AC580004 */  sw         $t8, 4($v0)
/* E9C8 8000DDC8 AC560000 */  sw         $s6, ($v0)
/* E9CC 8000DDCC 8D020000 */  lw         $v0, ($t0)
/* E9D0 8000DDD0 3C0F0050 */  lui        $t7, 0x50
/* E9D4 8000DDD4 24590008 */  addiu      $t9, $v0, 8
/* E9D8 8000DDD8 AD190000 */  sw         $t9, ($t0)
/* E9DC 8000DDDC 3C0EB900 */  lui        $t6, 0xb900
/* E9E0 8000DDE0 35CE031D */  ori        $t6, $t6, 0x31d
/* E9E4 8000DDE4 35EF4240 */  ori        $t7, $t7, 0x4240
/* E9E8 8000DDE8 3C158013 */  lui        $s5, 0x8013
/* E9EC 8000DDEC AC4F0004 */  sw         $t7, 4($v0)
/* E9F0 8000DDF0 AC4E0000 */  sw         $t6, ($v0)
/* E9F4 8000DDF4 3C14FCFF */  lui        $s4, 0xfcff
/* E9F8 8000DDF8 3C130100 */  lui        $s3, 0x100
/* E9FC 8000DDFC 3C120102 */  lui        $s2, 0x102
/* EA00 8000DE00 3C110103 */  lui        $s1, 0x103
/* EA04 8000DE04 3C10800C */  lui        $s0, %hi(D_800BE700)
/* EA08 8000DE08 8EB576DC */  lw         $s5, 0x76dc($s5)
/* EA0C 8000DE0C 2610E700 */  addiu      $s0, $s0, %lo(D_800BE700)
/* EA10 8000DE10 36310040 */  ori        $s1, $s1, 0x40
/* EA14 8000DE14 36520040 */  ori        $s2, $s2, 0x40
/* EA18 8000DE18 36730040 */  ori        $s3, $s3, 0x40
/* EA1C 8000DE1C 3694FFFF */  ori        $s4, $s4, 0xffff
/* EA20 8000DE20 0000F025 */  or         $fp, $zero, $zero
/* EA24 8000DE24 3C170700 */  lui        $s7, 0x700
.L8000DE28:
/* EA28 8000DE28 001EC0C0 */  sll        $t8, $fp, 3
/* EA2C 8000DE2C 031EC021 */  addu       $t8, $t8, $fp
/* EA30 8000DE30 3C198010 */  lui        $t9, %hi(D_801069E0)
/* EA34 8000DE34 273969E0 */  addiu      $t9, $t9, %lo(D_801069E0)
/* EA38 8000DE38 0018C100 */  sll        $t8, $t8, 4
/* EA3C 8000DE3C 03191821 */  addu       $v1, $t8, $t9
/* EA40 8000DE40 946E0080 */  lhu        $t6, 0x80($v1)
/* EA44 8000DE44 00000000 */  nop
/* EA48 8000DE48 11C00070 */  beqz       $t6, .L8000E00C
/* EA4C 8000DE4C 00000000 */   nop
/* EA50 8000DE50 960F0000 */  lhu        $t7, ($s0)
/* EA54 8000DE54 846E0088 */  lh         $t6, 0x88($v1)
/* EA58 8000DE58 000FC180 */  sll        $t8, $t7, 6
/* EA5C 8000DE5C 3C0F800C */  lui        $t7, %hi(D_800BE594)
/* EA60 8000DE60 85EFE594 */  lh         $t7, %lo(D_800BE594)($t7)
/* EA64 8000DE64 84790084 */  lh         $t9, 0x84($v1)
/* EA68 8000DE68 00782021 */  addu       $a0, $v1, $t8
/* EA6C 8000DE6C 01CFC023 */  subu       $t8, $t6, $t7
/* EA70 8000DE70 44983000 */  mtc1       $t8, $f6
/* EA74 8000DE74 44992000 */  mtc1       $t9, $f4
/* EA78 8000DE78 468031A0 */  cvt.s.w    $f6, $f6
/* EA7C 8000DE7C 24070000 */  addiu      $a3, $zero, 0
/* EA80 8000DE80 AFA30044 */  sw         $v1, 0x44($sp)
/* EA84 8000DE84 46802120 */  cvt.s.w    $f4, $f4
/* EA88 8000DE88 44063000 */  mfc1       $a2, $f6
/* EA8C 8000DE8C 44052000 */  mfc1       $a1, $f4
/* EA90 8000DE90 0C029393 */  jal        guRotateRPY
/* EA94 8000DE94 00000000 */   nop
/* EA98 8000DE98 3C088013 */  lui        $t0, %hi(D_8012A670)
/* EA9C 8000DE9C 2508A670 */  addiu      $t0, $t0, %lo(D_8012A670)
/* EAA0 8000DEA0 8D020000 */  lw         $v0, ($t0)
/* EAA4 8000DEA4 8FA30044 */  lw         $v1, 0x44($sp)
/* EAA8 8000DEA8 24590008 */  addiu      $t9, $v0, 8
/* EAAC 8000DEAC AD190000 */  sw         $t9, ($t0)
/* EAB0 8000DEB0 3C0E800F */  lui        $t6, %hi(D_800EF4F4)
/* EAB4 8000DEB4 AC510000 */  sw         $s1, ($v0)
/* EAB8 8000DEB8 8DCEF4F4 */  lw         $t6, %lo(D_800EF4F4)($t6)
/* EABC 8000DEBC 3C1F1FFF */  lui        $ra, 0x1fff
/* EAC0 8000DEC0 37FFFFFF */  ori        $ra, $ra, 0xffff
/* EAC4 8000DEC4 01DF7824 */  and        $t7, $t6, $ra
/* EAC8 8000DEC8 AC4F0004 */  sw         $t7, 4($v0)
/* EACC 8000DECC 8D020000 */  lw         $v0, ($t0)
/* EAD0 8000DED0 3C19800F */  lui        $t9, %hi(D_800EF4F4)
/* EAD4 8000DED4 24580008 */  addiu      $t8, $v0, 8
/* EAD8 8000DED8 AD180000 */  sw         $t8, ($t0)
/* EADC 8000DEDC AC520000 */  sw         $s2, ($v0)
/* EAE0 8000DEE0 8F39F4F4 */  lw         $t9, %lo(D_800EF4F4)($t9)
/* EAE4 8000DEE4 00000000 */  nop
/* EAE8 8000DEE8 272E00C0 */  addiu      $t6, $t9, 0xc0
/* EAEC 8000DEEC 01DF7824 */  and        $t7, $t6, $ra
/* EAF0 8000DEF0 AC4F0004 */  sw         $t7, 4($v0)
/* EAF4 8000DEF4 8D020000 */  lw         $v0, ($t0)
/* EAF8 8000DEF8 00000000 */  nop
/* EAFC 8000DEFC 24580008 */  addiu      $t8, $v0, 8
/* EB00 8000DF00 AD180000 */  sw         $t8, ($t0)
/* EB04 8000DF04 AC530000 */  sw         $s3, ($v0)
/* EB08 8000DF08 96190000 */  lhu        $t9, ($s0)
/* EB0C 8000DF0C 00000000 */  nop
/* EB10 8000DF10 00197180 */  sll        $t6, $t9, 6
/* EB14 8000DF14 006E7821 */  addu       $t7, $v1, $t6
/* EB18 8000DF18 01FFC024 */  and        $t8, $t7, $ra
/* EB1C 8000DF1C AC580004 */  sw         $t8, 4($v0)
/* EB20 8000DF20 8D020000 */  lw         $v0, ($t0)
/* EB24 8000DF24 3C0EFFFC */  lui        $t6, 0xfffc
/* EB28 8000DF28 24590008 */  addiu      $t9, $v0, 8
/* EB2C 8000DF2C AD190000 */  sw         $t9, ($t0)
/* EB30 8000DF30 35CEF279 */  ori        $t6, $t6, 0xf279
/* EB34 8000DF34 AC4E0004 */  sw         $t6, 4($v0)
/* EB38 8000DF38 AC540000 */  sw         $s4, ($v0)
/* EB3C 8000DF3C 8D020000 */  lw         $v0, ($t0)
/* EB40 8000DF40 3C18FD10 */  lui        $t8, 0xfd10
/* EB44 8000DF44 244F0008 */  addiu      $t7, $v0, 8
/* EB48 8000DF48 AD0F0000 */  sw         $t7, ($t0)
/* EB4C 8000DF4C AC580000 */  sw         $t8, ($v0)
/* EB50 8000DF50 8C79008C */  lw         $t9, 0x8c($v1)
/* EB54 8000DF54 3C0FE800 */  lui        $t7, 0xe800
/* EB58 8000DF58 AC590004 */  sw         $t9, 4($v0)
/* EB5C 8000DF5C 8D020000 */  lw         $v0, ($t0)
/* EB60 8000DF60 3C19F500 */  lui        $t9, 0xf500
/* EB64 8000DF64 244E0008 */  addiu      $t6, $v0, 8
/* EB68 8000DF68 AD0E0000 */  sw         $t6, ($t0)
/* EB6C 8000DF6C AC400004 */  sw         $zero, 4($v0)
/* EB70 8000DF70 AC4F0000 */  sw         $t7, ($v0)
/* EB74 8000DF74 8D020000 */  lw         $v0, ($t0)
/* EB78 8000DF78 37390100 */  ori        $t9, $t9, 0x100
/* EB7C 8000DF7C 24580008 */  addiu      $t8, $v0, 8
/* EB80 8000DF80 AD180000 */  sw         $t8, ($t0)
/* EB84 8000DF84 AC570004 */  sw         $s7, 4($v0)
/* EB88 8000DF88 AC590000 */  sw         $t9, ($v0)
/* EB8C 8000DF8C 8D020000 */  lw         $v0, ($t0)
/* EB90 8000DF90 3C0FE600 */  lui        $t7, 0xe600
/* EB94 8000DF94 244E0008 */  addiu      $t6, $v0, 8
/* EB98 8000DF98 AD0E0000 */  sw         $t6, ($t0)
/* EB9C 8000DF9C AC400004 */  sw         $zero, 4($v0)
/* EBA0 8000DFA0 AC4F0000 */  sw         $t7, ($v0)
/* EBA4 8000DFA4 8D020000 */  lw         $v0, ($t0)
/* EBA8 8000DFA8 3C0E073F */  lui        $t6, 0x73f
/* EBAC 8000DFAC 24580008 */  addiu      $t8, $v0, 8
/* EBB0 8000DFB0 AD180000 */  sw         $t8, ($t0)
/* EBB4 8000DFB4 35CEC000 */  ori        $t6, $t6, 0xc000
/* EBB8 8000DFB8 3C19F000 */  lui        $t9, 0xf000
/* EBBC 8000DFBC AC590000 */  sw         $t9, ($v0)
/* EBC0 8000DFC0 AC4E0004 */  sw         $t6, 4($v0)
/* EBC4 8000DFC4 8D020000 */  lw         $v0, ($t0)
/* EBC8 8000DFC8 3C18E700 */  lui        $t8, 0xe700
/* EBCC 8000DFCC 244F0008 */  addiu      $t7, $v0, 8
/* EBD0 8000DFD0 AD0F0000 */  sw         $t7, ($t0)
/* EBD4 8000DFD4 AC400004 */  sw         $zero, 4($v0)
/* EBD8 8000DFD8 AC580000 */  sw         $t8, ($v0)
/* EBDC 8000DFDC 8D020000 */  lw         $v0, ($t0)
/* EBE0 8000DFE0 00000000 */  nop
/* EBE4 8000DFE4 24590008 */  addiu      $t9, $v0, 8
/* EBE8 8000DFE8 AD190000 */  sw         $t9, ($t0)
/* EBEC 8000DFEC AC560000 */  sw         $s6, ($v0)
/* EBF0 8000DFF0 946F0080 */  lhu        $t7, 0x80($v1)
/* EBF4 8000DFF4 00000000 */  nop
/* EBF8 8000DFF8 000FC0C0 */  sll        $t8, $t7, 3
/* EBFC 8000DFFC 02B8C821 */  addu       $t9, $s5, $t8
/* EC00 8000E000 8F2E0110 */  lw         $t6, 0x110($t9)
/* EC04 8000E004 00000000 */  nop
/* EC08 8000E008 AC4E0004 */  sw         $t6, 4($v0)
.L8000E00C:
/* EC0C 8000E00C 27DE0001 */  addiu      $fp, $fp, 1
/* EC10 8000E010 33CFFFFF */  andi       $t7, $fp, 0xffff
/* EC14 8000E014 29E10040 */  slti       $at, $t7, 0x40
/* EC18 8000E018 1420FF83 */  bnez       $at, .L8000DE28
/* EC1C 8000E01C 01E0F025 */   or        $fp, $t7, $zero
/* EC20 8000E020 1000028E */  b          .L8000EA5C
/* EC24 8000E024 8FBF003C */   lw        $ra, 0x3c($sp)
.L8000E028:
/* EC28 8000E028 3C088013 */  lui        $t0, %hi(D_8012A670)
/* EC2C 8000E02C 2508A670 */  addiu      $t0, $t0, %lo(D_8012A670)
/* EC30 8000E030 8D020000 */  lw         $v0, ($t0)
/* EC34 8000E034 3C19800E */  lui        $t9, %hi(D_800E3998)
/* EC38 8000E038 24580008 */  addiu      $t8, $v0, 8
/* EC3C 8000E03C AD180000 */  sw         $t8, ($t0)
/* EC40 8000E040 3C160600 */  lui        $s6, 0x600
/* EC44 8000E044 27393998 */  addiu      $t9, $t9, %lo(D_800E3998)
/* EC48 8000E048 0000F025 */  or         $fp, $zero, $zero
/* EC4C 8000E04C 3C170700 */  lui        $s7, 0x700
/* EC50 8000E050 AC590004 */  sw         $t9, 4($v0)
/* EC54 8000E054 AC560000 */  sw         $s6, ($v0)
.L8000E058:
/* EC58 8000E058 001E70C0 */  sll        $t6, $fp, 3
/* EC5C 8000E05C 01DE7021 */  addu       $t6, $t6, $fp
/* EC60 8000E060 3C0F8010 */  lui        $t7, %hi(D_801069E0)
/* EC64 8000E064 25EF69E0 */  addiu      $t7, $t7, %lo(D_801069E0)
/* EC68 8000E068 000E7100 */  sll        $t6, $t6, 4
/* EC6C 8000E06C 01CF1821 */  addu       $v1, $t6, $t7
/* EC70 8000E070 94620080 */  lhu        $v0, 0x80($v1)
/* EC74 8000E074 27DE0001 */  addiu      $fp, $fp, 1
/* EC78 8000E078 10400273 */  beqz       $v0, .L8000EA48
/* EC7C 8000E07C 244BFFFF */   addiu     $t3, $v0, -1
/* EC80 8000E080 3178FFFF */  andi       $t8, $t3, 0xffff
/* EC84 8000E084 2401001F */  addiu      $at, $zero, 0x1f
/* EC88 8000E088 17010115 */  bne        $t8, $at, .L8000E4E0
/* EC8C 8000E08C 03005825 */   or        $t3, $t8, $zero
/* EC90 8000E090 84790088 */  lh         $t9, 0x88($v1)
/* EC94 8000E094 8D020000 */  lw         $v0, ($t0)
/* EC98 8000E098 3C0F800C */  lui        $t7, %hi(D_800BE594)
/* EC9C 8000E09C 85EFE594 */  lh         $t7, %lo(D_800BE594)($t7)
/* ECA0 8000E0A0 00197023 */  negu       $t6, $t9
/* ECA4 8000E0A4 24580008 */  addiu      $t8, $v0, 8
/* ECA8 8000E0A8 84710084 */  lh         $s1, 0x84($v1)
/* ECAC 8000E0AC AD180000 */  sw         $t8, ($t0)
/* ECB0 8000E0B0 3C19FD10 */  lui        $t9, 0xfd10
/* ECB4 8000E0B4 AC590000 */  sw         $t9, ($v0)
/* ECB8 8000E0B8 01CF9023 */  subu       $s2, $t6, $t7
/* ECBC 8000E0BC 8C6E008C */  lw         $t6, 0x8c($v1)
/* ECC0 8000E0C0 3C18E800 */  lui        $t8, 0xe800
/* ECC4 8000E0C4 AC4E0004 */  sw         $t6, 4($v0)
/* ECC8 8000E0C8 8D020000 */  lw         $v0, ($t0)
/* ECCC 8000E0CC 3C0EF500 */  lui        $t6, 0xf500
/* ECD0 8000E0D0 244F0008 */  addiu      $t7, $v0, 8
/* ECD4 8000E0D4 AD0F0000 */  sw         $t7, ($t0)
/* ECD8 8000E0D8 AC400004 */  sw         $zero, 4($v0)
/* ECDC 8000E0DC AC580000 */  sw         $t8, ($v0)
/* ECE0 8000E0E0 8D020000 */  lw         $v0, ($t0)
/* ECE4 8000E0E4 35CE0100 */  ori        $t6, $t6, 0x100
/* ECE8 8000E0E8 24590008 */  addiu      $t9, $v0, 8
/* ECEC 8000E0EC AD190000 */  sw         $t9, ($t0)
/* ECF0 8000E0F0 AC570004 */  sw         $s7, 4($v0)
/* ECF4 8000E0F4 AC4E0000 */  sw         $t6, ($v0)
/* ECF8 8000E0F8 8D020000 */  lw         $v0, ($t0)
/* ECFC 8000E0FC 3C18E600 */  lui        $t8, 0xe600
/* ED00 8000E100 244F0008 */  addiu      $t7, $v0, 8
/* ED04 8000E104 AD0F0000 */  sw         $t7, ($t0)
/* ED08 8000E108 AC400004 */  sw         $zero, 4($v0)
/* ED0C 8000E10C AC580000 */  sw         $t8, ($v0)
/* ED10 8000E110 8D020000 */  lw         $v0, ($t0)
/* ED14 8000E114 3C0F073F */  lui        $t7, 0x73f
/* ED18 8000E118 24590008 */  addiu      $t9, $v0, 8
/* ED1C 8000E11C AD190000 */  sw         $t9, ($t0)
/* ED20 8000E120 35EFC000 */  ori        $t7, $t7, 0xc000
/* ED24 8000E124 3C0EF000 */  lui        $t6, 0xf000
/* ED28 8000E128 AC4E0000 */  sw         $t6, ($v0)
/* ED2C 8000E12C AC4F0004 */  sw         $t7, 4($v0)
/* ED30 8000E130 8D020000 */  lw         $v0, ($t0)
/* ED34 8000E134 3C19E700 */  lui        $t9, 0xe700
/* ED38 8000E138 24580008 */  addiu      $t8, $v0, 8
/* ED3C 8000E13C AD180000 */  sw         $t8, ($t0)
/* ED40 8000E140 AC400004 */  sw         $zero, 4($v0)
/* ED44 8000E144 AC590000 */  sw         $t9, ($v0)
/* ED48 8000E148 8D020000 */  lw         $v0, ($t0)
/* ED4C 8000E14C 3C19800C */  lui        $t9, %hi(D_800C5F20)
/* ED50 8000E150 244E0008 */  addiu      $t6, $v0, 8
/* ED54 8000E154 AD0E0000 */  sw         $t6, ($t0)
/* ED58 8000E158 27395F20 */  addiu      $t9, $t9, %lo(D_800C5F20)
/* ED5C 8000E15C 000BC080 */  sll        $t8, $t3, 2
/* ED60 8000E160 3C0FFD50 */  lui        $t7, 0xfd50
/* ED64 8000E164 03199821 */  addu       $s3, $t8, $t9
/* ED68 8000E168 AC4F0000 */  sw         $t7, ($v0)
/* ED6C 8000E16C 8E6E0000 */  lw         $t6, ($s3)
/* ED70 8000E170 3C18F550 */  lui        $t8, 0xf550
/* ED74 8000E174 AC4E0004 */  sw         $t6, 4($v0)
/* ED78 8000E178 8D020000 */  lw         $v0, ($t0)
/* ED7C 8000E17C 3C0EE600 */  lui        $t6, 0xe600
/* ED80 8000E180 244F0008 */  addiu      $t7, $v0, 8
/* ED84 8000E184 AD0F0000 */  sw         $t7, ($t0)
/* ED88 8000E188 AC570004 */  sw         $s7, 4($v0)
/* ED8C 8000E18C AC580000 */  sw         $t8, ($v0)
/* ED90 8000E190 8D020000 */  lw         $v0, ($t0)
/* ED94 8000E194 3C18F300 */  lui        $t8, 0xf300
/* ED98 8000E198 24590008 */  addiu      $t9, $v0, 8
/* ED9C 8000E19C AD190000 */  sw         $t9, ($t0)
/* EDA0 8000E1A0 AC400004 */  sw         $zero, 4($v0)
/* EDA4 8000E1A4 AC4E0000 */  sw         $t6, ($v0)
/* EDA8 8000E1A8 8D020000 */  lw         $v0, ($t0)
/* EDAC 8000E1AC 3C190723 */  lui        $t9, 0x723
/* EDB0 8000E1B0 244F0008 */  addiu      $t7, $v0, 8
/* EDB4 8000E1B4 AD0F0000 */  sw         $t7, ($t0)
/* EDB8 8000E1B8 3739F156 */  ori        $t9, $t9, 0xf156
/* EDBC 8000E1BC AC590004 */  sw         $t9, 4($v0)
/* EDC0 8000E1C0 AC580000 */  sw         $t8, ($v0)
/* EDC4 8000E1C4 8D020000 */  lw         $v0, ($t0)
/* EDC8 8000E1C8 3C0FE700 */  lui        $t7, 0xe700
/* EDCC 8000E1CC 244E0008 */  addiu      $t6, $v0, 8
/* EDD0 8000E1D0 AD0E0000 */  sw         $t6, ($t0)
/* EDD4 8000E1D4 AC400004 */  sw         $zero, 4($v0)
/* EDD8 8000E1D8 AC4F0000 */  sw         $t7, ($v0)
/* EDDC 8000E1DC 8D020000 */  lw         $v0, ($t0)
/* EDE0 8000E1E0 3C19F548 */  lui        $t9, 0xf548
/* EDE4 8000E1E4 24580008 */  addiu      $t8, $v0, 8
/* EDE8 8000E1E8 AD180000 */  sw         $t8, ($t0)
/* EDEC 8000E1EC 37390C00 */  ori        $t9, $t9, 0xc00
/* EDF0 8000E1F0 AC590000 */  sw         $t9, ($v0)
/* EDF4 8000E1F4 AC400004 */  sw         $zero, 4($v0)
/* EDF8 8000E1F8 8D020000 */  lw         $v0, ($t0)
/* EDFC 8000E1FC 3C18000B */  lui        $t8, 0xb
/* EE00 8000E200 244E0008 */  addiu      $t6, $v0, 8
/* EE04 8000E204 AD0E0000 */  sw         $t6, ($t0)
/* EE08 8000E208 3718C05C */  ori        $t8, $t8, 0xc05c
/* EE0C 8000E20C 3C0FF200 */  lui        $t7, 0xf200
/* EE10 8000E210 AC4F0000 */  sw         $t7, ($v0)
/* EE14 8000E214 AC580004 */  sw         $t8, 4($v0)
/* EE18 8000E218 8D0A0000 */  lw         $t2, ($t0)
/* EE1C 8000E21C 26310088 */  addiu      $s1, $s1, 0x88
/* EE20 8000E220 2630002F */  addiu      $s0, $s1, 0x2f
/* EE24 8000E224 25590008 */  addiu      $t9, $t2, 8
/* EE28 8000E228 26520060 */  addiu      $s2, $s2, 0x60
/* EE2C 8000E22C 06010003 */  bgez       $s0, .L8000E23C
/* EE30 8000E230 AD190000 */   sw        $t9, ($t0)
/* EE34 8000E234 10000002 */  b          .L8000E240
/* EE38 8000E238 00006825 */   or        $t5, $zero, $zero
.L8000E23C:
/* EE3C 8000E23C 02006825 */  or         $t5, $s0, $zero
.L8000E240:
/* EE40 8000E240 26420017 */  addiu      $v0, $s2, 0x17
/* EE44 8000E244 04410003 */  bgez       $v0, .L8000E254
/* EE48 8000E248 3C01E400 */   lui       $at, 0xe400
/* EE4C 8000E24C 10000002 */  b          .L8000E258
/* EE50 8000E250 00001825 */   or        $v1, $zero, $zero
.L8000E254:
/* EE54 8000E254 00401825 */  or         $v1, $v0, $zero
.L8000E258:
/* EE58 8000E258 00037080 */  sll        $t6, $v1, 2
/* EE5C 8000E25C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* EE60 8000E260 000DC880 */  sll        $t9, $t5, 2
/* EE64 8000E264 332E0FFF */  andi       $t6, $t9, 0xfff
/* EE68 8000E268 01E1C025 */  or         $t8, $t7, $at
/* EE6C 8000E26C 000E7B00 */  sll        $t7, $t6, 0xc
/* EE70 8000E270 030FC825 */  or         $t9, $t8, $t7
/* EE74 8000E274 06210003 */  bgez       $s1, .L8000E284
/* EE78 8000E278 AD590000 */   sw        $t9, ($t2)
/* EE7C 8000E27C 10000002 */  b          .L8000E288
/* EE80 8000E280 00006825 */   or        $t5, $zero, $zero
.L8000E284:
/* EE84 8000E284 02206825 */  or         $t5, $s1, $zero
.L8000E288:
/* EE88 8000E288 06410003 */  bgez       $s2, .L8000E298
/* EE8C 8000E28C 000D7880 */   sll       $t7, $t5, 2
/* EE90 8000E290 10000002 */  b          .L8000E29C
/* EE94 8000E294 00001825 */   or        $v1, $zero, $zero
.L8000E298:
/* EE98 8000E298 02401825 */  or         $v1, $s2, $zero
.L8000E29C:
/* EE9C 8000E29C 00037080 */  sll        $t6, $v1, 2
/* EEA0 8000E2A0 31D80FFF */  andi       $t8, $t6, 0xfff
/* EEA4 8000E2A4 31F90FFF */  andi       $t9, $t7, 0xfff
/* EEA8 8000E2A8 00197300 */  sll        $t6, $t9, 0xc
/* EEAC 8000E2AC 030E7825 */  or         $t7, $t8, $t6
/* EEB0 8000E2B0 AD4F0004 */  sw         $t7, 4($t2)
/* EEB4 8000E2B4 8D1F0000 */  lw         $ra, ($t0)
/* EEB8 8000E2B8 3C18B400 */  lui        $t8, 0xb400
/* EEBC 8000E2BC 27F90008 */  addiu      $t9, $ra, 8
/* EEC0 8000E2C0 AD190000 */  sw         $t9, ($t0)
/* EEC4 8000E2C4 06210003 */  bgez       $s1, .L8000E2D4
/* EEC8 8000E2C8 AFF80000 */   sw        $t8, ($ra)
/* EECC 8000E2CC 10000002 */  b          .L8000E2D8
/* EED0 8000E2D0 00116823 */   negu      $t5, $s1
.L8000E2D4:
/* EED4 8000E2D4 00006825 */  or         $t5, $zero, $zero
.L8000E2D8:
/* EED8 8000E2D8 06410003 */  bgez       $s2, .L8000E2E8
/* EEDC 8000E2DC 3C01E400 */   lui       $at, 0xe400
/* EEE0 8000E2E0 10000002 */  b          .L8000E2EC
/* EEE4 8000E2E4 00121823 */   negu      $v1, $s2
.L8000E2E8:
/* EEE8 8000E2E8 00001825 */  or         $v1, $zero, $zero
.L8000E2EC:
/* EEEC 8000E2EC 00037140 */  sll        $t6, $v1, 5
/* EEF0 8000E2F0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* EEF4 8000E2F4 000D7540 */  sll        $t6, $t5, 0x15
/* EEF8 8000E2F8 01EEC825 */  or         $t9, $t7, $t6
/* EEFC 8000E2FC AFF90004 */  sw         $t9, 4($ra)
/* EF00 8000E300 8D020000 */  lw         $v0, ($t0)
/* EF04 8000E304 3C0E1000 */  lui        $t6, 0x1000
/* EF08 8000E308 24580008 */  addiu      $t8, $v0, 8
/* EF0C 8000E30C AD180000 */  sw         $t8, ($t0)
/* EF10 8000E310 35CE0400 */  ori        $t6, $t6, 0x400
/* EF14 8000E314 3C0FB300 */  lui        $t7, 0xb300
/* EF18 8000E318 AC4F0000 */  sw         $t7, ($v0)
/* EF1C 8000E31C AC4E0004 */  sw         $t6, 4($v0)
/* EF20 8000E320 8D020000 */  lw         $v0, ($t0)
/* EF24 8000E324 3C18FD50 */  lui        $t8, 0xfd50
/* EF28 8000E328 24590008 */  addiu      $t9, $v0, 8
/* EF2C 8000E32C AD190000 */  sw         $t9, ($t0)
/* EF30 8000E330 AC580000 */  sw         $t8, ($v0)
/* EF34 8000E334 8E6F0000 */  lw         $t7, ($s3)
/* EF38 8000E338 3C18F550 */  lui        $t8, 0xf550
/* EF3C 8000E33C 25EE0480 */  addiu      $t6, $t7, 0x480
/* EF40 8000E340 AC4E0004 */  sw         $t6, 4($v0)
/* EF44 8000E344 8D020000 */  lw         $v0, ($t0)
/* EF48 8000E348 3C0EE600 */  lui        $t6, 0xe600
/* EF4C 8000E34C 24590008 */  addiu      $t9, $v0, 8
/* EF50 8000E350 AD190000 */  sw         $t9, ($t0)
/* EF54 8000E354 AC570004 */  sw         $s7, 4($v0)
/* EF58 8000E358 AC580000 */  sw         $t8, ($v0)
/* EF5C 8000E35C 8D020000 */  lw         $v0, ($t0)
/* EF60 8000E360 3C18F300 */  lui        $t8, 0xf300
/* EF64 8000E364 244F0008 */  addiu      $t7, $v0, 8
/* EF68 8000E368 AD0F0000 */  sw         $t7, ($t0)
/* EF6C 8000E36C AC400004 */  sw         $zero, 4($v0)
/* EF70 8000E370 AC4E0000 */  sw         $t6, ($v0)
/* EF74 8000E374 8D020000 */  lw         $v0, ($t0)
/* EF78 8000E378 3C0F072F */  lui        $t7, 0x72f
/* EF7C 8000E37C 24590008 */  addiu      $t9, $v0, 8
/* EF80 8000E380 AD190000 */  sw         $t9, ($t0)
/* EF84 8000E384 35EFF156 */  ori        $t7, $t7, 0xf156
/* EF88 8000E388 AC4F0004 */  sw         $t7, 4($v0)
/* EF8C 8000E38C AC580000 */  sw         $t8, ($v0)
/* EF90 8000E390 8D020000 */  lw         $v0, ($t0)
/* EF94 8000E394 3C19E700 */  lui        $t9, 0xe700
/* EF98 8000E398 244E0008 */  addiu      $t6, $v0, 8
/* EF9C 8000E39C AD0E0000 */  sw         $t6, ($t0)
/* EFA0 8000E3A0 AC400004 */  sw         $zero, 4($v0)
/* EFA4 8000E3A4 AC590000 */  sw         $t9, ($v0)
/* EFA8 8000E3A8 8D020000 */  lw         $v0, ($t0)
/* EFAC 8000E3AC 3C0FF548 */  lui        $t7, 0xf548
/* EFB0 8000E3B0 24580008 */  addiu      $t8, $v0, 8
/* EFB4 8000E3B4 AD180000 */  sw         $t8, ($t0)
/* EFB8 8000E3B8 35EF0C00 */  ori        $t7, $t7, 0xc00
/* EFBC 8000E3BC AC4F0000 */  sw         $t7, ($v0)
/* EFC0 8000E3C0 AC400004 */  sw         $zero, 4($v0)
/* EFC4 8000E3C4 8D020000 */  lw         $v0, ($t0)
/* EFC8 8000E3C8 3C18000B */  lui        $t8, 0xb
/* EFCC 8000E3CC 244E0008 */  addiu      $t6, $v0, 8
/* EFD0 8000E3D0 AD0E0000 */  sw         $t6, ($t0)
/* EFD4 8000E3D4 3718C07C */  ori        $t8, $t8, 0xc07c
/* EFD8 8000E3D8 3C19F200 */  lui        $t9, 0xf200
/* EFDC 8000E3DC AC590000 */  sw         $t9, ($v0)
/* EFE0 8000E3E0 AC580004 */  sw         $t8, 4($v0)
/* EFE4 8000E3E4 8D060000 */  lw         $a2, ($t0)
/* EFE8 8000E3E8 26420037 */  addiu      $v0, $s2, 0x37
/* EFEC 8000E3EC 24CF0008 */  addiu      $t7, $a2, 8
/* EFF0 8000E3F0 06010003 */  bgez       $s0, .L8000E400
/* EFF4 8000E3F4 AD0F0000 */   sw        $t7, ($t0)
/* EFF8 8000E3F8 10000002 */  b          .L8000E404
/* EFFC 8000E3FC 00006825 */   or        $t5, $zero, $zero
.L8000E400:
/* F000 8000E400 02006825 */  or         $t5, $s0, $zero
.L8000E404:
/* F004 8000E404 04410003 */  bgez       $v0, .L8000E414
/* F008 8000E408 000D7880 */   sll       $t7, $t5, 2
/* F00C 8000E40C 10000002 */  b          .L8000E418
/* F010 8000E410 00001825 */   or        $v1, $zero, $zero
.L8000E414:
/* F014 8000E414 00401825 */  or         $v1, $v0, $zero
.L8000E418:
/* F018 8000E418 00037080 */  sll        $t6, $v1, 2
/* F01C 8000E41C 31D90FFF */  andi       $t9, $t6, 0xfff
/* F020 8000E420 0321C025 */  or         $t8, $t9, $at
/* F024 8000E424 31EE0FFF */  andi       $t6, $t7, 0xfff
/* F028 8000E428 000ECB00 */  sll        $t9, $t6, 0xc
/* F02C 8000E42C 03197825 */  or         $t7, $t8, $t9
/* F030 8000E430 06210003 */  bgez       $s1, .L8000E440
/* F034 8000E434 ACCF0000 */   sw        $t7, ($a2)
/* F038 8000E438 10000002 */  b          .L8000E444
/* F03C 8000E43C 00006825 */   or        $t5, $zero, $zero
.L8000E440:
/* F040 8000E440 02206825 */  or         $t5, $s1, $zero
.L8000E444:
/* F044 8000E444 26440018 */  addiu      $a0, $s2, 0x18
/* F048 8000E448 04810003 */  bgez       $a0, .L8000E458
/* F04C 8000E44C 000DC880 */   sll       $t9, $t5, 2
/* F050 8000E450 10000002 */  b          .L8000E45C
/* F054 8000E454 00001825 */   or        $v1, $zero, $zero
.L8000E458:
/* F058 8000E458 00801825 */  or         $v1, $a0, $zero
.L8000E45C:
/* F05C 8000E45C 00037080 */  sll        $t6, $v1, 2
/* F060 8000E460 31D80FFF */  andi       $t8, $t6, 0xfff
/* F064 8000E464 332F0FFF */  andi       $t7, $t9, 0xfff
/* F068 8000E468 000F7300 */  sll        $t6, $t7, 0xc
/* F06C 8000E46C 030EC825 */  or         $t9, $t8, $t6
/* F070 8000E470 ACD90004 */  sw         $t9, 4($a2)
/* F074 8000E474 8D050000 */  lw         $a1, ($t0)
/* F078 8000E478 3C18B400 */  lui        $t8, 0xb400
/* F07C 8000E47C 24AF0008 */  addiu      $t7, $a1, 8
/* F080 8000E480 AD0F0000 */  sw         $t7, ($t0)
/* F084 8000E484 06210003 */  bgez       $s1, .L8000E494
/* F088 8000E488 ACB80000 */   sw        $t8, ($a1)
/* F08C 8000E48C 10000002 */  b          .L8000E498
/* F090 8000E490 00116823 */   negu      $t5, $s1
.L8000E494:
/* F094 8000E494 00006825 */  or         $t5, $zero, $zero
.L8000E498:
/* F098 8000E498 04810003 */  bgez       $a0, .L8000E4A8
/* F09C 8000E49C 00001825 */   or        $v1, $zero, $zero
/* F0A0 8000E4A0 10000001 */  b          .L8000E4A8
/* F0A4 8000E4A4 00041823 */   negu      $v1, $a0
.L8000E4A8:
/* F0A8 8000E4A8 00037140 */  sll        $t6, $v1, 5
/* F0AC 8000E4AC 31D9FFFF */  andi       $t9, $t6, 0xffff
/* F0B0 8000E4B0 000D7540 */  sll        $t6, $t5, 0x15
/* F0B4 8000E4B4 032E7825 */  or         $t7, $t9, $t6
/* F0B8 8000E4B8 ACAF0004 */  sw         $t7, 4($a1)
/* F0BC 8000E4BC 8D020000 */  lw         $v0, ($t0)
/* F0C0 8000E4C0 3C0E1000 */  lui        $t6, 0x1000
/* F0C4 8000E4C4 24580008 */  addiu      $t8, $v0, 8
/* F0C8 8000E4C8 AD180000 */  sw         $t8, ($t0)
/* F0CC 8000E4CC 35CE0400 */  ori        $t6, $t6, 0x400
/* F0D0 8000E4D0 3C19B300 */  lui        $t9, 0xb300
/* F0D4 8000E4D4 AC590000 */  sw         $t9, ($v0)
/* F0D8 8000E4D8 1000015B */  b          .L8000EA48
/* F0DC 8000E4DC AC4E0004 */   sw        $t6, 4($v0)
.L8000E4E0:
/* F0E0 8000E4E0 000B2040 */  sll        $a0, $t3, 1
/* F0E4 8000E4E4 3C0F800C */  lui        $t7, %hi(D_800C5D20)
/* F0E8 8000E4E8 01E47821 */  addu       $t7, $t7, $a0
/* F0EC 8000E4EC 85EF5D20 */  lh         $t7, %lo(D_800C5D20)($t7)
/* F0F0 8000E4F0 84780084 */  lh         $t8, 0x84($v1)
/* F0F4 8000E4F4 3C19800C */  lui        $t9, %hi(D_800C5E20)
/* F0F8 8000E4F8 27395E20 */  addiu      $t9, $t9, %lo(D_800C5E20)
/* F0FC 8000E4FC 01F88821 */  addu       $s1, $t7, $t8
/* F100 8000E500 846F0088 */  lh         $t7, 0x88($v1)
/* F104 8000E504 0099F821 */  addu       $ra, $a0, $t9
/* F108 8000E508 87EE0000 */  lh         $t6, ($ra)
/* F10C 8000E50C 3C19800C */  lui        $t9, %hi(D_800BE594)
/* F110 8000E510 000FC023 */  negu       $t8, $t7
/* F114 8000E514 8739E594 */  lh         $t9, %lo(D_800BE594)($t9)
/* F118 8000E518 263100A0 */  addiu      $s1, $s1, 0xa0
/* F11C 8000E51C 3C0F800C */  lui        $t7, %hi(D_800C5DA0)
/* F120 8000E520 01E47821 */  addu       $t7, $t7, $a0
/* F124 8000E524 01D1A821 */  addu       $s5, $t6, $s1
/* F128 8000E528 85EF5DA0 */  lh         $t7, %lo(D_800C5DA0)($t7)
/* F12C 8000E52C 03197023 */  subu       $t6, $t8, $t9
/* F130 8000E530 8D020000 */  lw         $v0, ($t0)
/* F134 8000E534 3C18800C */  lui        $t8, %hi(D_800C5EA0)
/* F138 8000E538 27185EA0 */  addiu      $t8, $t8, %lo(D_800C5EA0)
/* F13C 8000E53C 01CF9023 */  subu       $s2, $t6, $t7
/* F140 8000E540 00988021 */  addu       $s0, $a0, $t8
/* F144 8000E544 244E0008 */  addiu      $t6, $v0, 8
/* F148 8000E548 86190000 */  lh         $t9, ($s0)
/* F14C 8000E54C AD0E0000 */  sw         $t6, ($t0)
/* F150 8000E550 3C0FFD10 */  lui        $t7, 0xfd10
/* F154 8000E554 AC4F0000 */  sw         $t7, ($v0)
/* F158 8000E558 8C78008C */  lw         $t8, 0x8c($v1)
/* F15C 8000E55C 26520078 */  addiu      $s2, $s2, 0x78
/* F160 8000E560 AC580004 */  sw         $t8, 4($v0)
/* F164 8000E564 8D020000 */  lw         $v0, ($t0)
/* F168 8000E568 0332B021 */  addu       $s6, $t9, $s2
/* F16C 8000E56C 24590008 */  addiu      $t9, $v0, 8
/* F170 8000E570 AD190000 */  sw         $t9, ($t0)
/* F174 8000E574 3C0EE800 */  lui        $t6, 0xe800
/* F178 8000E578 AC4E0000 */  sw         $t6, ($v0)
/* F17C 8000E57C AC400004 */  sw         $zero, 4($v0)
/* F180 8000E580 8D020000 */  lw         $v0, ($t0)
/* F184 8000E584 3C18F500 */  lui        $t8, 0xf500
/* F188 8000E588 244F0008 */  addiu      $t7, $v0, 8
/* F18C 8000E58C AD0F0000 */  sw         $t7, ($t0)
/* F190 8000E590 37180100 */  ori        $t8, $t8, 0x100
/* F194 8000E594 AC580000 */  sw         $t8, ($v0)
/* F198 8000E598 AC570004 */  sw         $s7, 4($v0)
/* F19C 8000E59C 8D090000 */  lw         $t1, ($t0)
/* F1A0 8000E5A0 3C0EE600 */  lui        $t6, 0xe600
/* F1A4 8000E5A4 25390008 */  addiu      $t9, $t1, 8
/* F1A8 8000E5A8 AD190000 */  sw         $t9, ($t0)
/* F1AC 8000E5AC AD200004 */  sw         $zero, 4($t1)
/* F1B0 8000E5B0 AD2E0000 */  sw         $t6, ($t1)
/* F1B4 8000E5B4 8D0A0000 */  lw         $t2, ($t0)
/* F1B8 8000E5B8 3C19073F */  lui        $t9, 0x73f
/* F1BC 8000E5BC 254F0008 */  addiu      $t7, $t2, 8
/* F1C0 8000E5C0 AD0F0000 */  sw         $t7, ($t0)
/* F1C4 8000E5C4 3739C000 */  ori        $t9, $t9, 0xc000
/* F1C8 8000E5C8 3C18F000 */  lui        $t8, 0xf000
/* F1CC 8000E5CC AD580000 */  sw         $t8, ($t2)
/* F1D0 8000E5D0 AD590004 */  sw         $t9, 4($t2)
/* F1D4 8000E5D4 8D0C0000 */  lw         $t4, ($t0)
/* F1D8 8000E5D8 3C0FE700 */  lui        $t7, 0xe700
/* F1DC 8000E5DC 258E0008 */  addiu      $t6, $t4, 8
/* F1E0 8000E5E0 AD0E0000 */  sw         $t6, ($t0)
/* F1E4 8000E5E4 AD800004 */  sw         $zero, 4($t4)
/* F1E8 8000E5E8 AD8F0000 */  sw         $t7, ($t4)
/* F1EC 8000E5EC 8D020000 */  lw         $v0, ($t0)
/* F1F0 8000E5F0 3C0F800C */  lui        $t7, %hi(D_800C5F20)
/* F1F4 8000E5F4 24580008 */  addiu      $t8, $v0, 8
/* F1F8 8000E5F8 AD180000 */  sw         $t8, ($t0)
/* F1FC 8000E5FC 25EF5F20 */  addiu      $t7, $t7, %lo(D_800C5F20)
/* F200 8000E600 000B7080 */  sll        $t6, $t3, 2
/* F204 8000E604 3C19FD50 */  lui        $t9, 0xfd50
/* F208 8000E608 01CF9821 */  addu       $s3, $t6, $t7
/* F20C 8000E60C AC590000 */  sw         $t9, ($v0)
/* F210 8000E610 8E780000 */  lw         $t8, ($s3)
/* F214 8000E614 3C0EF550 */  lui        $t6, 0xf550
/* F218 8000E618 AC580004 */  sw         $t8, 4($v0)
/* F21C 8000E61C 8D040000 */  lw         $a0, ($t0)
/* F220 8000E620 3C18E600 */  lui        $t8, 0xe600
/* F224 8000E624 24990008 */  addiu      $t9, $a0, 8
/* F228 8000E628 AD190000 */  sw         $t9, ($t0)
/* F22C 8000E62C AC970004 */  sw         $s7, 4($a0)
/* F230 8000E630 AC8E0000 */  sw         $t6, ($a0)
/* F234 8000E634 8D050000 */  lw         $a1, ($t0)
/* F238 8000E638 3C0EF300 */  lui        $t6, 0xf300
/* F23C 8000E63C 24AF0008 */  addiu      $t7, $a1, 8
/* F240 8000E640 AD0F0000 */  sw         $t7, ($t0)
/* F244 8000E644 ACA00004 */  sw         $zero, 4($a1)
/* F248 8000E648 ACB80000 */  sw         $t8, ($a1)
/* F24C 8000E64C 8D140000 */  lw         $s4, ($t0)
/* F250 8000E650 26B5FFFF */  addiu      $s5, $s5, -1
/* F254 8000E654 26990008 */  addiu      $t9, $s4, 8
/* F258 8000E658 AD190000 */  sw         $t9, ($t0)
/* F25C 8000E65C AE8E0000 */  sw         $t6, ($s4)
/* F260 8000E660 860F0000 */  lh         $t7, ($s0)
/* F264 8000E664 87E70000 */  lh         $a3, ($ra)
/* F268 8000E668 26D6FFFF */  addiu      $s6, $s6, -1
/* F26C 8000E66C 01E70019 */  multu      $t7, $a3
/* F270 8000E670 240B07FF */  addiu      $t3, $zero, 0x7ff
/* F274 8000E674 00003012 */  mflo       $a2
/* F278 8000E678 24C60001 */  addiu      $a2, $a2, 1
/* F27C 8000E67C 0006C043 */  sra        $t8, $a2, 1
/* F280 8000E680 2706FFFF */  addiu      $a2, $t8, -1
/* F284 8000E684 28C107FF */  slti       $at, $a2, 0x7ff
/* F288 8000E688 10200003 */  beqz       $at, .L8000E698
/* F28C 8000E68C 00000000 */   nop
/* F290 8000E690 10000001 */  b          .L8000E698
/* F294 8000E694 00C05825 */   or        $t3, $a2, $zero
.L8000E698:
/* F298 8000E698 04E10003 */  bgez       $a3, .L8000E6A8
/* F29C 8000E69C 000710C3 */   sra       $v0, $a3, 3
/* F2A0 8000E6A0 24E10007 */  addiu      $at, $a3, 7
/* F2A4 8000E6A4 000110C3 */  sra        $v0, $at, 3
.L8000E6A8:
/* F2A8 8000E6A8 1C400003 */  bgtz       $v0, .L8000E6B8
/* F2AC 8000E6AC 00406825 */   or        $t5, $v0, $zero
/* F2B0 8000E6B0 10000001 */  b          .L8000E6B8
/* F2B4 8000E6B4 240D0001 */   addiu     $t5, $zero, 1
.L8000E6B8:
/* F2B8 8000E6B8 1C400003 */  bgtz       $v0, .L8000E6C8
/* F2BC 8000E6BC 25B907FF */   addiu     $t9, $t5, 0x7ff
/* F2C0 8000E6C0 10000002 */  b          .L8000E6CC
/* F2C4 8000E6C4 24030001 */   addiu     $v1, $zero, 1
.L8000E6C8:
/* F2C8 8000E6C8 00401825 */  or         $v1, $v0, $zero
.L8000E6CC:
/* F2CC 8000E6CC 0323001A */  div        $zero, $t9, $v1
/* F2D0 8000E6D0 14600002 */  bnez       $v1, .L8000E6DC
/* F2D4 8000E6D4 00000000 */   nop
/* F2D8 8000E6D8 0007000D */  break      7
.L8000E6DC:
/* F2DC 8000E6DC 2401FFFF */   addiu     $at, $zero, -1
/* F2E0 8000E6E0 14610004 */  bne        $v1, $at, .L8000E6F4
/* F2E4 8000E6E4 3C018000 */   lui       $at, 0x8000
/* F2E8 8000E6E8 17210002 */  bne        $t9, $at, .L8000E6F4
/* F2EC 8000E6EC 00000000 */   nop
/* F2F0 8000E6F0 0006000D */  break      6
.L8000E6F4:
/* F2F4 8000E6F4 31790FFF */   andi      $t9, $t3, 0xfff
/* F2F8 8000E6F8 3C01F548 */  lui        $at, 0xf548
/* F2FC 8000E6FC 240B07FF */  addiu      $t3, $zero, 0x7ff
/* F300 8000E700 00007012 */  mflo       $t6
/* F304 8000E704 31CF0FFF */  andi       $t7, $t6, 0xfff
/* F308 8000E708 01F7C025 */  or         $t8, $t7, $s7
/* F30C 8000E70C 00197300 */  sll        $t6, $t9, 0xc
/* F310 8000E710 030E7825 */  or         $t7, $t8, $t6
/* F314 8000E714 AE8F0004 */  sw         $t7, 4($s4)
/* F318 8000E718 8D020000 */  lw         $v0, ($t0)
/* F31C 8000E71C 3C18E700 */  lui        $t8, 0xe700
/* F320 8000E720 24590008 */  addiu      $t9, $v0, 8
/* F324 8000E724 AD190000 */  sw         $t9, ($t0)
/* F328 8000E728 AC580000 */  sw         $t8, ($v0)
/* F32C 8000E72C AC400004 */  sw         $zero, 4($v0)
/* F330 8000E730 00402025 */  or         $a0, $v0, $zero
/* F334 8000E734 8D020000 */  lw         $v0, ($t0)
/* F338 8000E738 87EF0000 */  lh         $t7, ($ra)
/* F33C 8000E73C 244E0008 */  addiu      $t6, $v0, 8
/* F340 8000E740 25F90007 */  addiu      $t9, $t7, 7
/* F344 8000E744 0019C0C3 */  sra        $t8, $t9, 3
/* F348 8000E748 AD0E0000 */  sw         $t6, ($t0)
/* F34C 8000E74C 330E01FF */  andi       $t6, $t8, 0x1ff
/* F350 8000E750 000E7A40 */  sll        $t7, $t6, 9
/* F354 8000E754 01E1C825 */  or         $t9, $t7, $at
/* F358 8000E758 AC590000 */  sw         $t9, ($v0)
/* F35C 8000E75C AC400004 */  sw         $zero, 4($v0)
/* F360 8000E760 00402825 */  or         $a1, $v0, $zero
/* F364 8000E764 8D020000 */  lw         $v0, ($t0)
/* F368 8000E768 3C0EF200 */  lui        $t6, 0xf200
/* F36C 8000E76C 24580008 */  addiu      $t8, $v0, 8
/* F370 8000E770 AD180000 */  sw         $t8, ($t0)
/* F374 8000E774 AC4E0000 */  sw         $t6, ($v0)
/* F378 8000E778 860F0000 */  lh         $t7, ($s0)
/* F37C 8000E77C 00000000 */  nop
/* F380 8000E780 25F9FFFF */  addiu      $t9, $t7, -1
/* F384 8000E784 87EF0000 */  lh         $t7, ($ra)
/* F388 8000E788 0019C080 */  sll        $t8, $t9, 2
/* F38C 8000E78C 330E0FFF */  andi       $t6, $t8, 0xfff
/* F390 8000E790 25F9FFFF */  addiu      $t9, $t7, -1
/* F394 8000E794 0019C080 */  sll        $t8, $t9, 2
/* F398 8000E798 330F0FFF */  andi       $t7, $t8, 0xfff
/* F39C 8000E79C 000FCB00 */  sll        $t9, $t7, 0xc
/* F3A0 8000E7A0 01D9C025 */  or         $t8, $t6, $t9
/* F3A4 8000E7A4 AC580004 */  sw         $t8, 4($v0)
/* F3A8 8000E7A8 8D020000 */  lw         $v0, ($t0)
/* F3AC 8000E7AC 3C0EFD50 */  lui        $t6, 0xfd50
/* F3B0 8000E7B0 244F0008 */  addiu      $t7, $v0, 8
/* F3B4 8000E7B4 AD0F0000 */  sw         $t7, ($t0)
/* F3B8 8000E7B8 AC4E0000 */  sw         $t6, ($v0)
/* F3BC 8000E7BC 8E790000 */  lw         $t9, ($s3)
/* F3C0 8000E7C0 3C0FF550 */  lui        $t7, 0xf550
/* F3C4 8000E7C4 AC590004 */  sw         $t9, 4($v0)
/* F3C8 8000E7C8 8D020000 */  lw         $v0, ($t0)
/* F3CC 8000E7CC 3C19E600 */  lui        $t9, 0xe600
/* F3D0 8000E7D0 24580008 */  addiu      $t8, $v0, 8
/* F3D4 8000E7D4 AD180000 */  sw         $t8, ($t0)
/* F3D8 8000E7D8 AC4F0000 */  sw         $t7, ($v0)
/* F3DC 8000E7DC AC570004 */  sw         $s7, 4($v0)
/* F3E0 8000E7E0 8D020000 */  lw         $v0, ($t0)
/* F3E4 8000E7E4 3C0FF300 */  lui        $t7, 0xf300
/* F3E8 8000E7E8 244E0008 */  addiu      $t6, $v0, 8
/* F3EC 8000E7EC AD0E0000 */  sw         $t6, ($t0)
/* F3F0 8000E7F0 AC590000 */  sw         $t9, ($v0)
/* F3F4 8000E7F4 AC400004 */  sw         $zero, 4($v0)
/* F3F8 8000E7F8 00405025 */  or         $t2, $v0, $zero
/* F3FC 8000E7FC 8D020000 */  lw         $v0, ($t0)
/* F400 8000E800 00000000 */  nop
/* F404 8000E804 24580008 */  addiu      $t8, $v0, 8
/* F408 8000E808 AD180000 */  sw         $t8, ($t0)
/* F40C 8000E80C AC4F0000 */  sw         $t7, ($v0)
/* F410 8000E810 860E0000 */  lh         $t6, ($s0)
/* F414 8000E814 87E70000 */  lh         $a3, ($ra)
/* F418 8000E818 00404825 */  or         $t1, $v0, $zero
/* F41C 8000E81C 01C70019 */  multu      $t6, $a3
/* F420 8000E820 00003012 */  mflo       $a2
/* F424 8000E824 24C60001 */  addiu      $a2, $a2, 1
/* F428 8000E828 0006C843 */  sra        $t9, $a2, 1
/* F42C 8000E82C 2726FFFF */  addiu      $a2, $t9, -1
/* F430 8000E830 28C107FF */  slti       $at, $a2, 0x7ff
/* F434 8000E834 10200003 */  beqz       $at, .L8000E844
/* F438 8000E838 00000000 */   nop
/* F43C 8000E83C 10000001 */  b          .L8000E844
/* F440 8000E840 00C05825 */   or        $t3, $a2, $zero
.L8000E844:
/* F444 8000E844 04E10003 */  bgez       $a3, .L8000E854
/* F448 8000E848 000710C3 */   sra       $v0, $a3, 3
/* F44C 8000E84C 24E10007 */  addiu      $at, $a3, 7
/* F450 8000E850 000110C3 */  sra        $v0, $at, 3
.L8000E854:
/* F454 8000E854 1C400003 */  bgtz       $v0, .L8000E864
/* F458 8000E858 00406825 */   or        $t5, $v0, $zero
/* F45C 8000E85C 10000001 */  b          .L8000E864
/* F460 8000E860 240D0001 */   addiu     $t5, $zero, 1
.L8000E864:
/* F464 8000E864 1C400003 */  bgtz       $v0, .L8000E874
/* F468 8000E868 25B807FF */   addiu     $t8, $t5, 0x7ff
/* F46C 8000E86C 10000002 */  b          .L8000E878
/* F470 8000E870 24030001 */   addiu     $v1, $zero, 1
.L8000E874:
/* F474 8000E874 00401825 */  or         $v1, $v0, $zero
.L8000E878:
/* F478 8000E878 0303001A */  div        $zero, $t8, $v1
/* F47C 8000E87C 02A06825 */  or         $t5, $s5, $zero
/* F480 8000E880 14600002 */  bnez       $v1, .L8000E88C
/* F484 8000E884 00000000 */   nop
/* F488 8000E888 0007000D */  break      7
.L8000E88C:
/* F48C 8000E88C 2401FFFF */   addiu     $at, $zero, -1
/* F490 8000E890 14610004 */  bne        $v1, $at, .L8000E8A4
/* F494 8000E894 3C018000 */   lui       $at, 0x8000
/* F498 8000E898 17010002 */  bne        $t8, $at, .L8000E8A4
/* F49C 8000E89C 00000000 */   nop
/* F4A0 8000E8A0 0006000D */  break      6
.L8000E8A4:
/* F4A4 8000E8A4 31780FFF */   andi      $t8, $t3, 0xfff
/* F4A8 8000E8A8 3C01F548 */  lui        $at, 0xf548
/* F4AC 8000E8AC 02C01825 */  or         $v1, $s6, $zero
/* F4B0 8000E8B0 00007812 */  mflo       $t7
/* F4B4 8000E8B4 31EE0FFF */  andi       $t6, $t7, 0xfff
/* F4B8 8000E8B8 01D7C825 */  or         $t9, $t6, $s7
/* F4BC 8000E8BC 00187B00 */  sll        $t7, $t8, 0xc
/* F4C0 8000E8C0 032F7025 */  or         $t6, $t9, $t7
/* F4C4 8000E8C4 AD2E0004 */  sw         $t6, 4($t1)
/* F4C8 8000E8C8 8D020000 */  lw         $v0, ($t0)
/* F4CC 8000E8CC 3C19E700 */  lui        $t9, 0xe700
/* F4D0 8000E8D0 24580008 */  addiu      $t8, $v0, 8
/* F4D4 8000E8D4 AD180000 */  sw         $t8, ($t0)
/* F4D8 8000E8D8 AC400004 */  sw         $zero, 4($v0)
/* F4DC 8000E8DC AC590000 */  sw         $t9, ($v0)
/* F4E0 8000E8E0 00402025 */  or         $a0, $v0, $zero
/* F4E4 8000E8E4 8D020000 */  lw         $v0, ($t0)
/* F4E8 8000E8E8 87EE0000 */  lh         $t6, ($ra)
/* F4EC 8000E8EC 244F0008 */  addiu      $t7, $v0, 8
/* F4F0 8000E8F0 25D80007 */  addiu      $t8, $t6, 7
/* F4F4 8000E8F4 0018C8C3 */  sra        $t9, $t8, 3
/* F4F8 8000E8F8 AD0F0000 */  sw         $t7, ($t0)
/* F4FC 8000E8FC 332F01FF */  andi       $t7, $t9, 0x1ff
/* F500 8000E900 000F7240 */  sll        $t6, $t7, 9
/* F504 8000E904 01C1C025 */  or         $t8, $t6, $at
/* F508 8000E908 AC580000 */  sw         $t8, ($v0)
/* F50C 8000E90C AC400004 */  sw         $zero, 4($v0)
/* F510 8000E910 00402825 */  or         $a1, $v0, $zero
/* F514 8000E914 8D020000 */  lw         $v0, ($t0)
/* F518 8000E918 3C0FF200 */  lui        $t7, 0xf200
/* F51C 8000E91C 24590008 */  addiu      $t9, $v0, 8
/* F520 8000E920 AD190000 */  sw         $t9, ($t0)
/* F524 8000E924 AC4F0000 */  sw         $t7, ($v0)
/* F528 8000E928 860E0000 */  lh         $t6, ($s0)
/* F52C 8000E92C 00403025 */  or         $a2, $v0, $zero
/* F530 8000E930 25D8FFFF */  addiu      $t8, $t6, -1
/* F534 8000E934 87EE0000 */  lh         $t6, ($ra)
/* F538 8000E938 0018C880 */  sll        $t9, $t8, 2
/* F53C 8000E93C 332F0FFF */  andi       $t7, $t9, 0xfff
/* F540 8000E940 25D8FFFF */  addiu      $t8, $t6, -1
/* F544 8000E944 0018C880 */  sll        $t9, $t8, 2
/* F548 8000E948 332E0FFF */  andi       $t6, $t9, 0xfff
/* F54C 8000E94C 000EC300 */  sll        $t8, $t6, 0xc
/* F550 8000E950 01F8C825 */  or         $t9, $t7, $t8
/* F554 8000E954 AC590004 */  sw         $t9, 4($v0)
/* F558 8000E958 8D020000 */  lw         $v0, ($t0)
/* F55C 8000E95C 3C01E400 */  lui        $at, 0xe400
/* F560 8000E960 244E0008 */  addiu      $t6, $v0, 8
/* F564 8000E964 AD0E0000 */  sw         $t6, ($t0)
/* F568 8000E968 06A10003 */  bgez       $s5, .L8000E978
/* F56C 8000E96C 00403825 */   or        $a3, $v0, $zero
/* F570 8000E970 10000001 */  b          .L8000E978
/* F574 8000E974 00006825 */   or        $t5, $zero, $zero
.L8000E978:
/* F578 8000E978 06C10003 */  bgez       $s6, .L8000E988
/* F57C 8000E97C 000D7080 */   sll       $t6, $t5, 2
/* F580 8000E980 10000001 */  b          .L8000E988
/* F584 8000E984 00001825 */   or        $v1, $zero, $zero
.L8000E988:
/* F588 8000E988 00037880 */  sll        $t7, $v1, 2
/* F58C 8000E98C 31F80FFF */  andi       $t8, $t7, 0xfff
/* F590 8000E990 0301C825 */  or         $t9, $t8, $at
/* F594 8000E994 31CF0FFF */  andi       $t7, $t6, 0xfff
/* F598 8000E998 000FC300 */  sll        $t8, $t7, 0xc
/* F59C 8000E99C 03387025 */  or         $t6, $t9, $t8
/* F5A0 8000E9A0 06210003 */  bgez       $s1, .L8000E9B0
/* F5A4 8000E9A4 ACEE0000 */   sw        $t6, ($a3)
/* F5A8 8000E9A8 10000002 */  b          .L8000E9B4
/* F5AC 8000E9AC 00006825 */   or        $t5, $zero, $zero
.L8000E9B0:
/* F5B0 8000E9B0 02206825 */  or         $t5, $s1, $zero
.L8000E9B4:
/* F5B4 8000E9B4 06410003 */  bgez       $s2, .L8000E9C4
/* F5B8 8000E9B8 000DC080 */   sll       $t8, $t5, 2
/* F5BC 8000E9BC 10000002 */  b          .L8000E9C8
/* F5C0 8000E9C0 00001825 */   or        $v1, $zero, $zero
.L8000E9C4:
/* F5C4 8000E9C4 02401825 */  or         $v1, $s2, $zero
.L8000E9C8:
/* F5C8 8000E9C8 00037880 */  sll        $t7, $v1, 2
/* F5CC 8000E9CC 31F90FFF */  andi       $t9, $t7, 0xfff
/* F5D0 8000E9D0 330E0FFF */  andi       $t6, $t8, 0xfff
/* F5D4 8000E9D4 000E7B00 */  sll        $t7, $t6, 0xc
/* F5D8 8000E9D8 032FC025 */  or         $t8, $t9, $t7
/* F5DC 8000E9DC ACF80004 */  sw         $t8, 4($a3)
/* F5E0 8000E9E0 8D050000 */  lw         $a1, ($t0)
/* F5E4 8000E9E4 3C19B400 */  lui        $t9, 0xb400
/* F5E8 8000E9E8 24AE0008 */  addiu      $t6, $a1, 8
/* F5EC 8000E9EC AD0E0000 */  sw         $t6, ($t0)
/* F5F0 8000E9F0 06210003 */  bgez       $s1, .L8000EA00
/* F5F4 8000E9F4 ACB90000 */   sw        $t9, ($a1)
/* F5F8 8000E9F8 10000002 */  b          .L8000EA04
/* F5FC 8000E9FC 00116823 */   negu      $t5, $s1
.L8000EA00:
/* F600 8000EA00 00006825 */  or         $t5, $zero, $zero
.L8000EA04:
/* F604 8000EA04 06410003 */  bgez       $s2, .L8000EA14
/* F608 8000EA08 00001825 */   or        $v1, $zero, $zero
/* F60C 8000EA0C 10000001 */  b          .L8000EA14
/* F610 8000EA10 00121823 */   negu      $v1, $s2
.L8000EA14:
/* F614 8000EA14 00037940 */  sll        $t7, $v1, 5
/* F618 8000EA18 31F8FFFF */  andi       $t8, $t7, 0xffff
/* F61C 8000EA1C 000D7D40 */  sll        $t7, $t5, 0x15
/* F620 8000EA20 030F7025 */  or         $t6, $t8, $t7
/* F624 8000EA24 ACAE0004 */  sw         $t6, 4($a1)
/* F628 8000EA28 8D020000 */  lw         $v0, ($t0)
/* F62C 8000EA2C 3C0F1000 */  lui        $t7, 0x1000
/* F630 8000EA30 24590008 */  addiu      $t9, $v0, 8
/* F634 8000EA34 AD190000 */  sw         $t9, ($t0)
/* F638 8000EA38 35EF0400 */  ori        $t7, $t7, 0x400
/* F63C 8000EA3C 3C18B300 */  lui        $t8, 0xb300
/* F640 8000EA40 AC580000 */  sw         $t8, ($v0)
/* F644 8000EA44 AC4F0004 */  sw         $t7, 4($v0)
.L8000EA48:
/* F648 8000EA48 33CEFFFF */  andi       $t6, $fp, 0xffff
/* F64C 8000EA4C 29C10040 */  slti       $at, $t6, 0x40
/* F650 8000EA50 1420FD81 */  bnez       $at, .L8000E058
/* F654 8000EA54 01C0F025 */   or        $fp, $t6, $zero
/* F658 8000EA58 8FBF003C */  lw         $ra, 0x3c($sp)
.L8000EA5C:
/* F65C 8000EA5C 8FB00018 */  lw         $s0, 0x18($sp)
/* F660 8000EA60 8FB1001C */  lw         $s1, 0x1c($sp)
/* F664 8000EA64 8FB20020 */  lw         $s2, 0x20($sp)
/* F668 8000EA68 8FB30024 */  lw         $s3, 0x24($sp)
/* F66C 8000EA6C 8FB40028 */  lw         $s4, 0x28($sp)
/* F670 8000EA70 8FB5002C */  lw         $s5, 0x2c($sp)
/* F674 8000EA74 8FB60030 */  lw         $s6, 0x30($sp)
/* F678 8000EA78 8FB70034 */  lw         $s7, 0x34($sp)
/* F67C 8000EA7C 8FBE0038 */  lw         $fp, 0x38($sp)
/* F680 8000EA80 03E00008 */  jr         $ra
/* F684 8000EA84 27BD0170 */   addiu     $sp, $sp, 0x170
