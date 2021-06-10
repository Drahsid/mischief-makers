glabel func_8009E938
/* 9F538 8009E938 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 9F53C 8009E93C AFBF0024 */  sw         $ra, 0x24($sp)
/* 9F540 8009E940 AFA40058 */  sw         $a0, 0x58($sp)
/* 9F544 8009E944 AFA5005C */  sw         $a1, 0x5c($sp)
/* 9F548 8009E948 AFA60060 */  sw         $a2, 0x60($sp)
/* 9F54C 8009E94C AFA70064 */  sw         $a3, 0x64($sp)
/* 9F550 8009E950 AFB10020 */  sw         $s1, 0x20($sp)
/* 9F554 8009E954 AFB0001C */  sw         $s0, 0x1c($sp)
/* 9F558 8009E958 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9F55C 8009E95C 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9F560 8009E960 AFAE004C */  sw         $t6, 0x4c($sp)
/* 9F564 8009E964 A7A0004A */  sh         $zero, 0x4a($sp)
/* 9F568 8009E968 8FAF0058 */  lw         $t7, 0x58($sp)
/* 9F56C 8009E96C AFAF0044 */  sw         $t7, 0x44($sp)
/* 9F570 8009E970 8FB80060 */  lw         $t8, 0x60($sp)
/* 9F574 8009E974 AFB80038 */  sw         $t8, 0x38($sp)
/* 9F578 8009E978 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F57C 8009E97C 8F280000 */  lw         $t0, ($t9)
/* 9F580 8009E980 15000005 */  bnez       $t0, .L8009E998
/* 9F584 8009E984 00000000 */   nop
/* 9F588 8009E988 8FA9005C */  lw         $t1, 0x5c($sp)
/* 9F58C 8009E98C AD200000 */  sw         $zero, ($t1)
/* 9F590 8009E990 1000007E */  b          .L8009EB8C
/* 9F594 8009E994 8FA20058 */   lw        $v0, 0x58($sp)
.L8009E998:
/* 9F598 8009E998 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9F59C 8009E99C 0C027B61 */  jal        func_8009ED84
/* 9F5A0 8009E9A0 27A50054 */   addiu     $a1, $sp, 0x54
/* 9F5A4 8009E9A4 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9F5A8 8009E9A8 AD42001C */  sw         $v0, 0x1c($t2)
/* 9F5AC 8009E9AC 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9F5B0 8009E9B0 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9F5B4 8009E9B4 8D6C001C */  lw         $t4, 0x1c($t3)
/* 9F5B8 8009E9B8 8D6D0020 */  lw         $t5, 0x20($t3)
/* 9F5BC 8009E9BC 018D7023 */  subu       $t6, $t4, $t5
/* 9F5C0 8009E9C0 01CF082A */  slt        $at, $t6, $t7
/* 9F5C4 8009E9C4 10200021 */  beqz       $at, .L8009EA4C
/* 9F5C8 8009E9C8 00000000 */   nop
.L8009E9CC:
/* 9F5CC 8009E9CC 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F5D0 8009E9D0 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F5D4 8009E9D4 8F19001C */  lw         $t9, 0x1c($t8)
/* 9F5D8 8009E9D8 03214024 */  and        $t0, $t9, $at
/* 9F5DC 8009E9DC AF08001C */  sw         $t0, 0x1c($t8)
/* 9F5E0 8009E9E0 8FA90054 */  lw         $t1, 0x54($sp)
/* 9F5E4 8009E9E4 8D390008 */  lw         $t9, 8($t1)
/* 9F5E8 8009E9E8 01202025 */  or         $a0, $t1, $zero
/* 9F5EC 8009E9EC 0320F809 */  jalr       $t9
/* 9F5F0 8009E9F0 00000000 */   nop
/* 9F5F4 8009E9F4 00408825 */  or         $s1, $v0, $zero
/* 9F5F8 8009E9F8 02202825 */  or         $a1, $s1, $zero
/* 9F5FC 8009E9FC 0C027B36 */  jal        func_8009ECD8
/* 9F600 8009EA00 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9F604 8009EA04 8FAA0054 */  lw         $t2, 0x54($sp)
/* 9F608 8009EA08 00408025 */  or         $s0, $v0, $zero
/* 9F60C 8009EA0C 8D4B0010 */  lw         $t3, 0x10($t2)
/* 9F610 8009EA10 01706021 */  addu       $t4, $t3, $s0
/* 9F614 8009EA14 AD4C0010 */  sw         $t4, 0x10($t2)
/* 9F618 8009EA18 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9F61C 8009EA1C 0C027B61 */  jal        func_8009ED84
/* 9F620 8009EA20 27A50054 */   addiu     $a1, $sp, 0x54
/* 9F624 8009EA24 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F628 8009EA28 ADA2001C */  sw         $v0, 0x1c($t5)
/* 9F62C 8009EA2C 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9F630 8009EA30 8FA90064 */  lw         $t1, 0x64($sp)
/* 9F634 8009EA34 8DCF001C */  lw         $t7, 0x1c($t6)
/* 9F638 8009EA38 8DC80020 */  lw         $t0, 0x20($t6)
/* 9F63C 8009EA3C 01E8C023 */  subu       $t8, $t7, $t0
/* 9F640 8009EA40 0309082A */  slt        $at, $t8, $t1
/* 9F644 8009EA44 1420FFE1 */  bnez       $at, .L8009E9CC
/* 9F648 8009EA48 00000000 */   nop
.L8009EA4C:
/* 9F64C 8009EA4C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9F650 8009EA50 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9F654 8009EA54 8F2B001C */  lw         $t3, 0x1c($t9)
/* 9F658 8009EA58 01616024 */  and        $t4, $t3, $at
/* 9F65C 8009EA5C AF2C001C */  sw         $t4, 0x1c($t9)
/* 9F660 8009EA60 8FAA0064 */  lw         $t2, 0x64($sp)
/* 9F664 8009EA64 1940003D */  blez       $t2, .L8009EB5C
/* 9F668 8009EA68 00000000 */   nop
.L8009EA6C:
/* 9F66C 8009EA6C 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F670 8009EA70 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9F674 8009EA74 8DAE0048 */  lw         $t6, 0x48($t5)
/* 9F678 8009EA78 01CF082A */  slt        $at, $t6, $t7
/* 9F67C 8009EA7C 10200003 */  beqz       $at, .L8009EA8C
/* 9F680 8009EA80 00000000 */   nop
/* 9F684 8009EA84 10000003 */  b          .L8009EA94
/* 9F688 8009EA88 AFAE003C */   sw        $t6, 0x3c($sp)
.L8009EA8C:
/* 9F68C 8009EA8C 8FA80064 */  lw         $t0, 0x64($sp)
/* 9F690 8009EA90 AFA8003C */  sw         $t0, 0x3c($sp)
.L8009EA94:
/* 9F694 8009EA94 8FB80044 */  lw         $t8, 0x44($sp)
/* 9F698 8009EA98 AFB80040 */  sw         $t8, 0x40($sp)
/* 9F69C 8009EA9C 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F6A0 8009EAA0 252B0008 */  addiu      $t3, $t1, 8
/* 9F6A4 8009EAA4 AFAB0040 */  sw         $t3, 0x40($sp)
/* 9F6A8 8009EAA8 AFA90034 */  sw         $t1, 0x34($sp)
/* 9F6AC 8009EAAC 8FB90034 */  lw         $t9, 0x34($sp)
/* 9F6B0 8009EAB0 3C0C0700 */  lui        $t4, 0x700
/* 9F6B4 8009EAB4 AF2C0000 */  sw         $t4, ($t9)
/* 9F6B8 8009EAB8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9F6BC 8009EABC AD400004 */  sw         $zero, 4($t2)
/* 9F6C0 8009EAC0 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9F6C4 8009EAC4 8DAF0038 */  lw         $t7, 0x38($t5)
/* 9F6C8 8009EAC8 AFAF0050 */  sw         $t7, 0x50($sp)
/* 9F6CC 8009EACC 8FAE0050 */  lw         $t6, 0x50($sp)
/* 9F6D0 8009EAD0 24050006 */  addiu      $a1, $zero, 6
/* 9F6D4 8009EAD4 8FA60038 */  lw         $a2, 0x38($sp)
/* 9F6D8 8009EAD8 8DD90008 */  lw         $t9, 8($t6)
/* 9F6DC 8009EADC 01C02025 */  or         $a0, $t6, $zero
/* 9F6E0 8009EAE0 0320F809 */  jalr       $t9
/* 9F6E4 8009EAE4 00000000 */   nop
/* 9F6E8 8009EAE8 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9F6EC 8009EAEC 8FA90040 */  lw         $t1, 0x40($sp)
/* 9F6F0 8009EAF0 8FA80050 */  lw         $t0, 0x50($sp)
/* 9F6F4 8009EAF4 8F070020 */  lw         $a3, 0x20($t8)
/* 9F6F8 8009EAF8 AFA90010 */  sw         $t1, 0x10($sp)
/* 9F6FC 8009EAFC 8D190004 */  lw         $t9, 4($t0)
/* 9F700 8009EB00 27A5004A */  addiu      $a1, $sp, 0x4a
/* 9F704 8009EB04 8FA6003C */  lw         $a2, 0x3c($sp)
/* 9F708 8009EB08 0320F809 */  jalr       $t9
/* 9F70C 8009EB0C 01002025 */   or        $a0, $t0, $zero
/* 9F710 8009EB10 AFA20044 */  sw         $v0, 0x44($sp)
/* 9F714 8009EB14 8FAB0064 */  lw         $t3, 0x64($sp)
/* 9F718 8009EB18 8FAC003C */  lw         $t4, 0x3c($sp)
/* 9F71C 8009EB1C 016C5023 */  subu       $t2, $t3, $t4
/* 9F720 8009EB20 AFAA0064 */  sw         $t2, 0x64($sp)
/* 9F724 8009EB24 8FAF003C */  lw         $t7, 0x3c($sp)
/* 9F728 8009EB28 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9F72C 8009EB2C 000F7040 */  sll        $t6, $t7, 1
/* 9F730 8009EB30 000EC040 */  sll        $t8, $t6, 1
/* 9F734 8009EB34 01B84821 */  addu       $t1, $t5, $t8
/* 9F738 8009EB38 AFA90038 */  sw         $t1, 0x38($sp)
/* 9F73C 8009EB3C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9F740 8009EB40 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9F744 8009EB44 8D190020 */  lw         $t9, 0x20($t0)
/* 9F748 8009EB48 032B6021 */  addu       $t4, $t9, $t3
/* 9F74C 8009EB4C AD0C0020 */  sw         $t4, 0x20($t0)
/* 9F750 8009EB50 8FAA0064 */  lw         $t2, 0x64($sp)
/* 9F754 8009EB54 1D40FFC5 */  bgtz       $t2, .L8009EA6C
/* 9F758 8009EB58 00000000 */   nop
.L8009EB5C:
/* 9F75C 8009EB5C 8FAF0044 */  lw         $t7, 0x44($sp)
/* 9F760 8009EB60 8FAE0058 */  lw         $t6, 0x58($sp)
/* 9F764 8009EB64 8FA9005C */  lw         $t1, 0x5c($sp)
/* 9F768 8009EB68 01EE6823 */  subu       $t5, $t7, $t6
/* 9F76C 8009EB6C 000DC0C3 */  sra        $t8, $t5, 3
/* 9F770 8009EB70 AD380000 */  sw         $t8, ($t1)
/* 9F774 8009EB74 0C027B0D */  jal        func_8009EC34
/* 9F778 8009EB78 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9F77C 8009EB7C 10000003 */  b          .L8009EB8C
/* 9F780 8009EB80 8FA20044 */   lw        $v0, 0x44($sp)
/* 9F784 8009EB84 10000001 */  b          .L8009EB8C
/* 9F788 8009EB88 00000000 */   nop
.L8009EB8C:
/* 9F78C 8009EB8C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9F790 8009EB90 8FB0001C */  lw         $s0, 0x1c($sp)
/* 9F794 8009EB94 8FB10020 */  lw         $s1, 0x20($sp)
/* 9F798 8009EB98 03E00008 */  jr         $ra
/* 9F79C 8009EB9C 27BD0058 */   addiu     $sp, $sp, 0x58
