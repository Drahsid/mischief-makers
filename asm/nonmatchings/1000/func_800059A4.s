glabel func_800059A4
/* 65A4 800059A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 65A8 800059A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 65AC 800059AC 30F0FFFF */  andi       $s0, $a3, 0xffff
/* 65B0 800059B0 AFA40030 */  sw         $a0, 0x30($sp)
/* 65B4 800059B4 AFA50034 */  sw         $a1, 0x34($sp)
/* 65B8 800059B8 001070C0 */  sll        $t6, $s0, 3
/* 65BC 800059BC 3C058017 */  lui        $a1, 0x8017
/* 65C0 800059C0 3C048017 */  lui        $a0, 0x8017
/* 65C4 800059C4 008E2021 */  addu       $a0, $a0, $t6
/* 65C8 800059C8 00AE2821 */  addu       $a1, $a1, $t6
/* 65CC 800059CC AFBF002C */  sw         $ra, 0x2c($sp)
/* 65D0 800059D0 AFA60038 */  sw         $a2, 0x38($sp)
/* 65D4 800059D4 AFA7003C */  sw         $a3, 0x3c($sp)
/* 65D8 800059D8 8CA51ADC */  lw         $a1, 0x1adc($a1)
/* 65DC 800059DC 8C841AD8 */  lw         $a0, 0x1ad8($a0)
/* 65E0 800059E0 AFB20028 */  sw         $s2, 0x28($sp)
/* 65E4 800059E4 AFB10024 */  sw         $s1, 0x24($sp)
/* 65E8 800059E8 2407003C */  addiu      $a3, $zero, 0x3c
/* 65EC 800059EC 0C0290C2 */  jal        func_800A4308
/* 65F0 800059F0 24060000 */   addiu     $a2, $zero, 0
/* 65F4 800059F4 3C050083 */  lui        $a1, 0x83
/* 65F8 800059F8 34A5D5FF */  ori        $a1, $a1, 0xd5ff
/* 65FC 800059FC 0065082B */  sltu       $at, $v1, $a1
/* 6600 80005A00 14200002 */  bnez       $at, .L80005A0C
/* 6604 80005A04 00609025 */   or        $s2, $v1, $zero
/* 6608 80005A08 00A09025 */  or         $s2, $a1, $zero
.L80005A0C:
/* 660C 80005A0C 3C010001 */  lui        $at, 1
/* 6610 80005A10 34215180 */  ori        $at, $at, 0x5180
/* 6614 80005A14 0241001B */  divu       $zero, $s2, $at
/* 6618 80005A18 97B00032 */  lhu        $s0, 0x32($sp)
/* 661C 80005A1C 97B10036 */  lhu        $s1, 0x36($sp)
/* 6620 80005A20 3C18800D */  lui        $t8, %hi(D_800D1798)
/* 6624 80005A24 27181798 */  addiu      $t8, $t8, %lo(D_800D1798)
/* 6628 80005A28 97A7003A */  lhu        $a3, 0x3a($sp)
/* 662C 80005A2C AFB80014 */  sw         $t8, 0x14($sp)
/* 6630 80005A30 AFA00010 */  sw         $zero, 0x10($sp)
/* 6634 80005A34 02002025 */  or         $a0, $s0, $zero
/* 6638 80005A38 02203025 */  or         $a2, $s1, $zero
/* 663C 80005A3C 00002812 */  mflo       $a1
/* 6640 80005A40 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 6644 80005A44 0C009E00 */  jal        func_80027800
/* 6648 80005A48 01E02825 */   or        $a1, $t7, $zero
/* 664C 80005A4C 3C010001 */  lui        $at, 1
/* 6650 80005A50 34215180 */  ori        $at, $at, 0x5180
/* 6654 80005A54 0241001B */  divu       $zero, $s2, $at
/* 6658 80005A58 24010E10 */  addiu      $at, $zero, 0xe10
/* 665C 80005A5C 26040004 */  addiu      $a0, $s0, 4
/* 6660 80005A60 26260030 */  addiu      $a2, $s1, 0x30
/* 6664 80005A64 3C0B800D */  lui        $t3, %hi(D_800D1798)
/* 6668 80005A68 256B1798 */  addiu      $t3, $t3, %lo(D_800D1798)
/* 666C 80005A6C 30CAFFFF */  andi       $t2, $a2, 0xffff
/* 6670 80005A70 3099FFFF */  andi       $t9, $a0, 0xffff
/* 6674 80005A74 97A7003A */  lhu        $a3, 0x3a($sp)
/* 6678 80005A78 03202025 */  or         $a0, $t9, $zero
/* 667C 80005A7C 01403025 */  or         $a2, $t2, $zero
/* 6680 80005A80 AFAB0014 */  sw         $t3, 0x14($sp)
/* 6684 80005A84 AFA00010 */  sw         $zero, 0x10($sp)
/* 6688 80005A88 00002810 */  mfhi       $a1
/* 668C 80005A8C 00000000 */  nop
/* 6690 80005A90 00000000 */  nop
/* 6694 80005A94 00A1001B */  divu       $zero, $a1, $at
/* 6698 80005A98 00004012 */  mflo       $t0
/* 669C 80005A9C 3105FFFF */  andi       $a1, $t0, 0xffff
/* 66A0 80005AA0 0C009E00 */  jal        func_80027800
/* 66A4 80005AA4 00000000 */   nop
/* 66A8 80005AA8 24010E10 */  addiu      $at, $zero, 0xe10
/* 66AC 80005AAC 0241001B */  divu       $zero, $s2, $at
/* 66B0 80005AB0 2401003C */  addiu      $at, $zero, 0x3c
/* 66B4 80005AB4 26040008 */  addiu      $a0, $s0, 8
/* 66B8 80005AB8 26260060 */  addiu      $a2, $s1, 0x60
/* 66BC 80005ABC 3C18800D */  lui        $t8, %hi(D_800D1798)
/* 66C0 80005AC0 27181798 */  addiu      $t8, $t8, %lo(D_800D1798)
/* 66C4 80005AC4 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 66C8 80005AC8 308CFFFF */  andi       $t4, $a0, 0xffff
/* 66CC 80005ACC 97A7003A */  lhu        $a3, 0x3a($sp)
/* 66D0 80005AD0 01802025 */  or         $a0, $t4, $zero
/* 66D4 80005AD4 01E03025 */  or         $a2, $t7, $zero
/* 66D8 80005AD8 AFB80014 */  sw         $t8, 0x14($sp)
/* 66DC 80005ADC AFA00010 */  sw         $zero, 0x10($sp)
/* 66E0 80005AE0 00002810 */  mfhi       $a1
/* 66E4 80005AE4 00000000 */  nop
/* 66E8 80005AE8 00000000 */  nop
/* 66EC 80005AEC 00A1001B */  divu       $zero, $a1, $at
/* 66F0 80005AF0 00006812 */  mflo       $t5
/* 66F4 80005AF4 31A5FFFF */  andi       $a1, $t5, 0xffff
/* 66F8 80005AF8 0C009E00 */  jal        func_80027800
/* 66FC 80005AFC 00000000 */   nop
/* 6700 80005B00 2401003C */  addiu      $at, $zero, 0x3c
/* 6704 80005B04 0241001B */  divu       $zero, $s2, $at
/* 6708 80005B08 2604000B */  addiu      $a0, $s0, 0xb
/* 670C 80005B0C 26260090 */  addiu      $a2, $s1, 0x90
/* 6710 80005B10 3C0A800D */  lui        $t2, %hi(D_800D1798)
/* 6714 80005B14 254A1798 */  addiu      $t2, $t2, %lo(D_800D1798)
/* 6718 80005B18 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 671C 80005B1C 3099FFFF */  andi       $t9, $a0, 0xffff
/* 6720 80005B20 97A7003A */  lhu        $a3, 0x3a($sp)
/* 6724 80005B24 03202025 */  or         $a0, $t9, $zero
/* 6728 80005B28 01203025 */  or         $a2, $t1, $zero
/* 672C 80005B2C AFAA0014 */  sw         $t2, 0x14($sp)
/* 6730 80005B30 AFA00010 */  sw         $zero, 0x10($sp)
/* 6734 80005B34 00002810 */  mfhi       $a1
/* 6738 80005B38 30A8FFFF */  andi       $t0, $a1, 0xffff
/* 673C 80005B3C 0C009E00 */  jal        func_80027800
/* 6740 80005B40 01002825 */   or        $a1, $t0, $zero
/* 6744 80005B44 2602000E */  addiu      $v0, $s0, 0xe
/* 6748 80005B48 8FBF002C */  lw         $ra, 0x2c($sp)
/* 674C 80005B4C 304BFFFF */  andi       $t3, $v0, 0xffff
/* 6750 80005B50 8FB00020 */  lw         $s0, 0x20($sp)
/* 6754 80005B54 8FB10024 */  lw         $s1, 0x24($sp)
/* 6758 80005B58 8FB20028 */  lw         $s2, 0x28($sp)
/* 675C 80005B5C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6760 80005B60 03E00008 */  jr         $ra
/* 6764 80005B64 01601025 */   or        $v0, $t3, $zero
