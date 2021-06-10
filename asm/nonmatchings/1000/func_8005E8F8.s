glabel func_8005E8F8
/* 5F4F8 8005E8F8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5F4FC 8005E8FC 000E7880 */  sll        $t7, $t6, 2
/* 5F500 8005E900 01EE7823 */  subu       $t7, $t7, $t6
/* 5F504 8005E904 000F7880 */  sll        $t7, $t7, 2
/* 5F508 8005E908 01EE7821 */  addu       $t7, $t7, $t6
/* 5F50C 8005E90C 000F7880 */  sll        $t7, $t7, 2
/* 5F510 8005E910 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F514 8005E914 01EE7823 */  subu       $t7, $t7, $t6
/* 5F518 8005E918 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 5F51C 8005E91C AFB00018 */  sw         $s0, 0x18($sp)
/* 5F520 8005E920 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 5F524 8005E924 000F78C0 */  sll        $t7, $t7, 3
/* 5F528 8005E928 01F88021 */  addu       $s0, $t7, $t8
/* 5F52C 8005E92C 921900D1 */  lbu        $t9, 0xd1($s0)
/* 5F530 8005E930 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F534 8005E934 2F210007 */  sltiu      $at, $t9, 7
/* 5F538 8005E938 102000B5 */  beqz       $at, .L8005EC10
/* 5F53C 8005E93C AFA40020 */   sw        $a0, 0x20($sp)
/* 5F540 8005E940 0019C880 */  sll        $t9, $t9, 2
/* 5F544 8005E944 3C01800F */  lui        $at, %hi(D_800EBFB0)
/* 5F548 8005E948 00390821 */  addu       $at, $at, $t9
/* 5F54C 8005E94C 8C39BFB0 */  lw         $t9, %lo(D_800EBFB0)($at)
/* 5F550 8005E950 00000000 */  nop
/* 5F554 8005E954 03200008 */  jr         $t9
/* 5F558 8005E958 00000000 */   nop
/* 5F55C 8005E95C 3C0141A0 */  lui        $at, 0x41a0
/* 5F560 8005E960 44812000 */  mtc1       $at, $f4
/* 5F564 8005E964 C60E0114 */  lwc1       $f14, 0x114($s0)
/* 5F568 8005E968 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F56C 8005E96C 46047183 */  div.s      $f6, $f14, $f4
/* 5F570 8005E970 44063000 */  mfc1       $a2, $f6
/* 5F574 8005E974 0C00A618 */  jal        func_80029860
/* 5F578 8005E978 00000000 */   nop
/* 5F57C 8005E97C C6080114 */  lwc1       $f8, 0x114($s0)
/* 5F580 8005E980 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F584 8005E984 46080032 */  c.eq.s     $f0, $f8
/* 5F588 8005E988 240B0001 */  addiu      $t3, $zero, 1
/* 5F58C 8005E98C 450000A1 */  bc1f       .L8005EC14
/* 5F590 8005E990 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F594 8005E994 96080084 */  lhu        $t0, 0x84($s0)
/* 5F598 8005E998 240102CE */  addiu      $at, $zero, 0x2ce
/* 5F59C 8005E99C 15010005 */  bne        $t0, $at, .L8005E9B4
/* 5F5A0 8005E9A0 00000000 */   nop
/* 5F5A4 8005E9A4 8E090080 */  lw         $t1, 0x80($s0)
/* 5F5A8 8005E9A8 3C015000 */  lui        $at, 0x5000
/* 5F5AC 8005E9AC 01215025 */  or         $t2, $t1, $at
/* 5F5B0 8005E9B0 AE0A0080 */  sw         $t2, 0x80($s0)
.L8005E9B4:
/* 5F5B4 8005E9B4 10000096 */  b          .L8005EC10
/* 5F5B8 8005E9B8 A60B00D0 */   sh        $t3, 0xd0($s0)
/* 5F5BC 8005E9BC 3C0141A0 */  lui        $at, 0x41a0
/* 5F5C0 8005E9C0 44815000 */  mtc1       $at, $f10
/* 5F5C4 8005E9C4 C60E0110 */  lwc1       $f14, 0x110($s0)
/* 5F5C8 8005E9C8 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 5F5CC 8005E9CC 460A7403 */  div.s      $f16, $f14, $f10
/* 5F5D0 8005E9D0 44068000 */  mfc1       $a2, $f16
/* 5F5D4 8005E9D4 0C00A618 */  jal        func_80029860
/* 5F5D8 8005E9D8 00000000 */   nop
/* 5F5DC 8005E9DC C6120110 */  lwc1       $f18, 0x110($s0)
/* 5F5E0 8005E9E0 3C0141A0 */  lui        $at, 0x41a0
/* 5F5E4 8005E9E4 46120032 */  c.eq.s     $f0, $f18
/* 5F5E8 8005E9E8 44812000 */  mtc1       $at, $f4
/* 5F5EC 8005E9EC 45000003 */  bc1f       .L8005E9FC
/* 5F5F0 8005E9F0 E60000B4 */   swc1      $f0, 0xb4($s0)
/* 5F5F4 8005E9F4 240C0001 */  addiu      $t4, $zero, 1
/* 5F5F8 8005E9F8 A20C00D0 */  sb         $t4, 0xd0($s0)
.L8005E9FC:
/* 5F5FC 8005E9FC C60E0114 */  lwc1       $f14, 0x114($s0)
/* 5F600 8005EA00 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F604 8005EA04 46047183 */  div.s      $f6, $f14, $f4
/* 5F608 8005EA08 44063000 */  mfc1       $a2, $f6
/* 5F60C 8005EA0C 0C00A618 */  jal        func_80029860
/* 5F610 8005EA10 00000000 */   nop
/* 5F614 8005EA14 C6080114 */  lwc1       $f8, 0x114($s0)
/* 5F618 8005EA18 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F61C 8005EA1C 46080032 */  c.eq.s     $f0, $f8
/* 5F620 8005EA20 00000000 */  nop
/* 5F624 8005EA24 45000006 */  bc1f       .L8005EA40
/* 5F628 8005EA28 00000000 */   nop
/* 5F62C 8005EA2C 920D00D0 */  lbu        $t5, 0xd0($s0)
/* 5F630 8005EA30 24010001 */  addiu      $at, $zero, 1
/* 5F634 8005EA34 15A10002 */  bne        $t5, $at, .L8005EA40
/* 5F638 8005EA38 240E0002 */   addiu     $t6, $zero, 2
/* 5F63C 8005EA3C A20E00D0 */  sb         $t6, 0xd0($s0)
.L8005EA40:
/* 5F640 8005EA40 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F644 8005EA44 00000000 */  nop
/* 5F648 8005EA48 28410009 */  slti       $at, $v0, 9
/* 5F64C 8005EA4C 14200003 */  bnez       $at, .L8005EA5C
/* 5F650 8005EA50 244FFFFA */   addiu     $t7, $v0, -6
/* 5F654 8005EA54 1000001D */  b          .L8005EACC
/* 5F658 8005EA58 A20F009C */   sb        $t7, 0x9c($s0)
.L8005EA5C:
/* 5F65C 8005EA5C 921800D0 */  lbu        $t8, 0xd0($s0)
/* 5F660 8005EA60 24020002 */  addiu      $v0, $zero, 2
/* 5F664 8005EA64 14580019 */  bne        $v0, $t8, .L8005EACC
/* 5F668 8005EA68 A200009C */   sb        $zero, 0x9c($s0)
/* 5F66C 8005EA6C 8E090080 */  lw         $t1, 0x80($s0)
/* 5F670 8005EA70 960E0084 */  lhu        $t6, 0x84($s0)
/* 5F674 8005EA74 3C013000 */  lui        $at, 0x3000
/* 5F678 8005EA78 96190094 */  lhu        $t9, 0x94($s0)
/* 5F67C 8005EA7C 01215025 */  or         $t2, $t1, $at
/* 5F680 8005EA80 000E78C0 */  sll        $t7, $t6, 3
/* 5F684 8005EA84 3C01801A */  lui        $at, 0x801a
/* 5F688 8005EA88 01EE7821 */  addu       $t7, $t7, $t6
/* 5F68C 8005EA8C 000F79C0 */  sll        $t7, $t7, 7
/* 5F690 8005EA90 34210BA8 */  ori        $at, $at, 0xba8
/* 5F694 8005EA94 37280010 */  ori        $t0, $t9, 0x10
/* 5F698 8005EA98 240B0030 */  addiu      $t3, $zero, 0x30
/* 5F69C 8005EA9C 240C0001 */  addiu      $t4, $zero, 1
/* 5F6A0 8005EAA0 240D0018 */  addiu      $t5, $zero, 0x18
/* 5F6A4 8005EAA4 01E1C021 */  addu       $t8, $t7, $at
/* 5F6A8 8005EAA8 24190004 */  addiu      $t9, $zero, 4
/* 5F6AC 8005EAAC A6080094 */  sh         $t0, 0x94($s0)
/* 5F6B0 8005EAB0 AE0A0080 */  sw         $t2, 0x80($s0)
/* 5F6B4 8005EAB4 A60B00AA */  sh         $t3, 0xaa($s0)
/* 5F6B8 8005EAB8 A60C00AC */  sh         $t4, 0xac($s0)
/* 5F6BC 8005EABC A60D00AE */  sh         $t5, 0xae($s0)
/* 5F6C0 8005EAC0 A60200B0 */  sh         $v0, 0xb0($s0)
/* 5F6C4 8005EAC4 AE18017C */  sw         $t8, 0x17c($s0)
/* 5F6C8 8005EAC8 A61900D0 */  sh         $t9, 0xd0($s0)
.L8005EACC:
/* 5F6CC 8005EACC 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F6D0 8005EAD0 00000000 */  nop
/* 5F6D4 8005EAD4 A202009E */  sb         $v0, 0x9e($s0)
/* 5F6D8 8005EAD8 1000004D */  b          .L8005EC10
/* 5F6DC 8005EADC A202009D */   sb        $v0, 0x9d($s0)
/* 5F6E0 8005EAE0 96080084 */  lhu        $t0, 0x84($s0)
/* 5F6E4 8005EAE4 240102CE */  addiu      $at, $zero, 0x2ce
/* 5F6E8 8005EAE8 15010007 */  bne        $t0, $at, .L8005EB08
/* 5F6EC 8005EAEC 3C0141A0 */   lui       $at, 0x41a0
/* 5F6F0 8005EAF0 8E090080 */  lw         $t1, 0x80($s0)
/* 5F6F4 8005EAF4 3C01AFFF */  lui        $at, 0xafff
/* 5F6F8 8005EAF8 3421FFFF */  ori        $at, $at, 0xffff
/* 5F6FC 8005EAFC 01215024 */  and        $t2, $t1, $at
/* 5F700 8005EB00 AE0A0080 */  sw         $t2, 0x80($s0)
/* 5F704 8005EB04 3C0141A0 */  lui        $at, 0x41a0
.L8005EB08:
/* 5F708 8005EB08 44818000 */  mtc1       $at, $f16
/* 5F70C 8005EB0C C60A0114 */  lwc1       $f10, 0x114($s0)
/* 5F710 8005EB10 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F714 8005EB14 46105483 */  div.s      $f18, $f10, $f16
/* 5F718 8005EB18 44807000 */  mtc1       $zero, $f14
/* 5F71C 8005EB1C 44069000 */  mfc1       $a2, $f18
/* 5F720 8005EB20 0C00A618 */  jal        func_80029860
/* 5F724 8005EB24 00000000 */   nop
/* 5F728 8005EB28 44802000 */  mtc1       $zero, $f4
/* 5F72C 8005EB2C E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F730 8005EB30 46040032 */  c.eq.s     $f0, $f4
/* 5F734 8005EB34 00000000 */  nop
/* 5F738 8005EB38 45000036 */  bc1f       .L8005EC14
/* 5F73C 8005EB3C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F740 8005EB40 10000033 */  b          .L8005EC10
/* 5F744 8005EB44 AE000080 */   sw        $zero, 0x80($s0)
/* 5F748 8005EB48 8E0B0080 */  lw         $t3, 0x80($s0)
/* 5F74C 8005EB4C 3C01CFFF */  lui        $at, 0xcfff
/* 5F750 8005EB50 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F754 8005EB54 3421FFFF */  ori        $at, $at, 0xffff
/* 5F758 8005EB58 01616024 */  and        $t4, $t3, $at
/* 5F75C 8005EB5C 28410078 */  slti       $at, $v0, 0x78
/* 5F760 8005EB60 10200004 */  beqz       $at, .L8005EB74
/* 5F764 8005EB64 AE0C0080 */   sw        $t4, 0x80($s0)
/* 5F768 8005EB68 244D0006 */  addiu      $t5, $v0, 6
/* 5F76C 8005EB6C 10000003 */  b          .L8005EB7C
/* 5F770 8005EB70 A20D009C */   sb        $t5, 0x9c($s0)
.L8005EB74:
/* 5F774 8005EB74 240E007F */  addiu      $t6, $zero, 0x7f
/* 5F778 8005EB78 A20E009C */  sb         $t6, 0x9c($s0)
.L8005EB7C:
/* 5F77C 8005EB7C 3C0141A0 */  lui        $at, 0x41a0
/* 5F780 8005EB80 44810000 */  mtc1       $at, $f0
/* 5F784 8005EB84 C6080110 */  lwc1       $f8, 0x110($s0)
/* 5F788 8005EB88 C6120114 */  lwc1       $f18, 0x114($s0)
/* 5F78C 8005EB8C 46004283 */  div.s      $f10, $f8, $f0
/* 5F790 8005EB90 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F794 8005EB94 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 5F798 8005EB98 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F79C 8005EB9C 44807000 */  mtc1       $zero, $f14
/* 5F7A0 8005EBA0 A202009E */  sb         $v0, 0x9e($s0)
/* 5F7A4 8005EBA4 A202009D */  sb         $v0, 0x9d($s0)
/* 5F7A8 8005EBA8 46009103 */  div.s      $f4, $f18, $f0
/* 5F7AC 8005EBAC 460A3400 */  add.s      $f16, $f6, $f10
/* 5F7B0 8005EBB0 E61000B4 */  swc1       $f16, 0xb4($s0)
/* 5F7B4 8005EBB4 44062000 */  mfc1       $a2, $f4
/* 5F7B8 8005EBB8 0C00A618 */  jal        func_80029860
/* 5F7BC 8005EBBC 00000000 */   nop
/* 5F7C0 8005EBC0 44804000 */  mtc1       $zero, $f8
/* 5F7C4 8005EBC4 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F7C8 8005EBC8 46080032 */  c.eq.s     $f0, $f8
/* 5F7CC 8005EBCC 00000000 */  nop
/* 5F7D0 8005EBD0 45000010 */  bc1f       .L8005EC14
/* 5F7D4 8005EBD4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F7D8 8005EBD8 1000000D */  b          .L8005EC10
/* 5F7DC 8005EBDC AE000080 */   sw        $zero, 0x80($s0)
/* 5F7E0 8005EBE0 3C18800C */  lui        $t8, %hi(D_800BE4E0)
/* 5F7E4 8005EBE4 9718E4E0 */  lhu        $t8, %lo(D_800BE4E0)($t8)
/* 5F7E8 8005EBE8 3C0F8018 */  lui        $t7, %hi(D_801783F6)
/* 5F7EC 8005EBEC 85EF83F6 */  lh         $t7, %lo(D_801783F6)($t7)
/* 5F7F0 8005EBF0 3319000F */  andi       $t9, $t8, 0xf
/* 5F7F4 8005EBF4 07210003 */  bgez       $t9, .L8005EC04
/* 5F7F8 8005EBF8 00194083 */   sra       $t0, $t9, 2
/* 5F7FC 8005EBFC 27210003 */  addiu      $at, $t9, 3
/* 5F800 8005EC00 00014083 */  sra        $t0, $at, 2
.L8005EC04:
/* 5F804 8005EC04 01E84823 */  subu       $t1, $t7, $t0
/* 5F808 8005EC08 252AFFDA */  addiu      $t2, $t1, -0x26
/* 5F80C 8005EC0C A60A008C */  sh         $t2, 0x8c($s0)
.L8005EC10:
/* 5F810 8005EC10 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005EC14:
/* 5F814 8005EC14 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F818 8005EC18 03E00008 */  jr         $ra
/* 5F81C 8005EC1C 27BD0020 */   addiu     $sp, $sp, 0x20
