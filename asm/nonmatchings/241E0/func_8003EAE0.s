glabel func_8003EAE0
/* 3F6E0 8003EAE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F6E4 8003EAE4 87A90032 */  lh         $t1, 0x32($sp)
/* 3F6E8 8003EAE8 AFA50024 */  sw         $a1, 0x24($sp)
/* 3F6EC 8003EAEC AFBF001C */  sw         $ra, 0x1c($sp)
/* 3F6F0 8003EAF0 AFA40020 */  sw         $a0, 0x20($sp)
/* 3F6F4 8003EAF4 AFA60028 */  sw         $a2, 0x28($sp)
/* 3F6F8 8003EAF8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 3F6FC 8003EAFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3F700 8003EB00 00067C00 */  sll        $t7, $a2, 0x10
/* 3F704 8003EB04 0007CC00 */  sll        $t9, $a3, 0x10
/* 3F708 8003EB08 3C05800E */  lui        $a1, %hi(D_800E1380)
/* 3F70C 8003EB0C 00193C03 */  sra        $a3, $t9, 0x10
/* 3F710 8003EB10 000F3403 */  sra        $a2, $t7, 0x10
/* 3F714 8003EB14 01C02025 */  or         $a0, $t6, $zero
/* 3F718 8003EB18 24A51380 */  addiu      $a1, $a1, %lo(D_800E1380)
/* 3F71C 8003EB1C 0C00F546 */  jal        func_8003D518
/* 3F720 8003EB20 AFA90010 */   sw        $t1, 0x10($sp)
/* 3F724 8003EB24 97A40026 */  lhu        $a0, 0x26($sp)
/* 3F728 8003EB28 10400034 */  beqz       $v0, .L8003EBFC
/* 3F72C 8003EB2C 00025080 */   sll       $t2, $v0, 2
/* 3F730 8003EB30 01425023 */  subu       $t2, $t2, $v0
/* 3F734 8003EB34 000A5080 */  sll        $t2, $t2, 2
/* 3F738 8003EB38 01425021 */  addu       $t2, $t2, $v0
/* 3F73C 8003EB3C 000A5080 */  sll        $t2, $t2, 2
/* 3F740 8003EB40 01425023 */  subu       $t2, $t2, $v0
/* 3F744 8003EB44 3C0B800F */  lui        $t3, %hi(gActors)
/* 3F748 8003EB48 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 3F74C 8003EB4C 000A50C0 */  sll        $t2, $t2, 3
/* 3F750 8003EB50 014B1821 */  addu       $v1, $t2, $t3
/* 3F754 8003EB54 3C0E800E */  lui        $t6, %hi(D_800D8528)
/* 3F758 8003EB58 240C0209 */  addiu      $t4, $zero, 0x209
/* 3F75C 8003EB5C 240D01D6 */  addiu      $t5, $zero, 0x1d6
/* 3F760 8003EB60 25CE8528 */  addiu      $t6, $t6, %lo(D_800D8528)
/* 3F764 8003EB64 00047880 */  sll        $t7, $a0, 2
/* 3F768 8003EB68 3C01800D */  lui        $at, %hi(D_800D281C)
/* 3F76C 8003EB6C A46C0094 */  sh         $t4, 0x94($v1)
/* 3F770 8003EB70 A46D0084 */  sh         $t5, 0x84($v1)
/* 3F774 8003EB74 AC6E018C */  sw         $t6, 0x18c($v1)
/* 3F778 8003EB78 002F0821 */  addu       $at, $at, $t7
/* 3F77C 8003EB7C C424281C */  lwc1       $f4, %lo(D_800D281C)($at)
/* 3F780 8003EB80 3C014018 */  lui        $at, 0x4018
/* 3F784 8003EB84 44814800 */  mtc1       $at, $f9
/* 3F788 8003EB88 44804000 */  mtc1       $zero, $f8
/* 3F78C 8003EB8C 460021A1 */  cvt.d.s    $f6, $f4
/* 3F790 8003EB90 46283282 */  mul.d      $f10, $f6, $f8
/* 3F794 8003EB94 3C01800F */  lui        $at, 0x800f
/* 3F798 8003EB98 3C18800C */  lui        $t8, 0x800c
/* 3F79C 8003EB9C 3C0A800D */  lui        $t2, 0x800d
/* 3F7A0 8003EBA0 00044840 */  sll        $t1, $a0, 1
/* 3F7A4 8003EBA4 46205420 */  cvt.s.d    $f16, $f10
/* 3F7A8 8003EBA8 01495021 */  addu       $t2, $t2, $t1
/* 3F7AC 8003EBAC E47000B8 */  swc1       $f16, 0xb8($v1)
/* 3F7B0 8003EBB0 C432BC00 */  lwc1       $f18, -0x4400($at)
/* 3F7B4 8003EBB4 3C01FFFC */  lui        $at, 0xfffc
/* 3F7B8 8003EBB8 E47200B4 */  swc1       $f18, 0xb4($v1)
/* 3F7BC 8003EBBC 9718E4E0 */  lhu        $t8, -0x1b20($t8)
/* 3F7C0 8003EBC0 240D0010 */  addiu      $t5, $zero, 0x10
/* 3F7C4 8003EBC4 3319000F */  andi       $t9, $t8, 0xf
/* 3F7C8 8003EBC8 00194580 */  sll        $t0, $t9, 0x16
/* 3F7CC 8003EBCC AC680160 */  sw         $t0, 0x160($v1)
/* 3F7D0 8003EBD0 954A2814 */  lhu        $t2, 0x2814($t2)
/* 3F7D4 8003EBD4 240EFFFC */  addiu      $t6, $zero, -4
/* 3F7D8 8003EBD8 000A5C00 */  sll        $t3, $t2, 0x10
/* 3F7DC 8003EBDC 01616021 */  addu       $t4, $t3, $at
/* 3F7E0 8003EBE0 AC6C0150 */  sw         $t4, 0x150($v1)
/* 3F7E4 8003EBE4 AC6D0154 */  sw         $t5, 0x154($v1)
/* 3F7E8 8003EBE8 AC6E0164 */  sw         $t6, 0x164($v1)
/* 3F7EC 8003EBEC 3C01800F */  lui        $at, %hi(D_800EBC04)
/* 3F7F0 8003EBF0 C424BC04 */  lwc1       $f4, %lo(D_800EBC04)($at)
/* 3F7F4 8003EBF4 00000000 */  nop
/* 3F7F8 8003EBF8 E464011C */  swc1       $f4, 0x11c($v1)
.L8003EBFC:
/* 3F7FC 8003EBFC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3F800 8003EC00 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F804 8003EC04 03E00008 */  jr         $ra
/* 3F808 8003EC08 00000000 */   nop
