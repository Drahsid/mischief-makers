glabel func_800819A8
/* 825A8 800819A8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 825AC 800819AC E7B80024 */  swc1       $f24, 0x24($sp)
/* 825B0 800819B0 3C014040 */  lui        $at, 0x4040
/* 825B4 800819B4 4481C000 */  mtc1       $at, $f24
/* 825B8 800819B8 3C013F80 */  lui        $at, 0x3f80
/* 825BC 800819BC AFB20034 */  sw         $s2, 0x34($sp)
/* 825C0 800819C0 E7B6001C */  swc1       $f22, 0x1c($sp)
/* 825C4 800819C4 E7B40014 */  swc1       $f20, 0x14($sp)
/* 825C8 800819C8 3C12800F */  lui        $s2, 0x800f
/* 825CC 800819CC AFB30038 */  sw         $s3, 0x38($sp)
/* 825D0 800819D0 AFB10030 */  sw         $s1, 0x30($sp)
/* 825D4 800819D4 AFB0002C */  sw         $s0, 0x2c($sp)
/* 825D8 800819D8 4481A000 */  mtc1       $at, $f20
/* 825DC 800819DC 4480B000 */  mtc1       $zero, $f22
/* 825E0 800819E0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 825E4 800819E4 00A08825 */  or         $s1, $a1, $zero
/* 825E8 800819E8 24130198 */  addiu      $s3, $zero, 0x198
/* 825EC 800819EC 2652F510 */  addiu      $s2, $s2, -0xaf0
/* 825F0 800819F0 AFBF003C */  sw         $ra, 0x3c($sp)
/* 825F4 800819F4 E7B90020 */  swc1       $f25, 0x20($sp)
/* 825F8 800819F8 E7B70018 */  swc1       $f23, 0x18($sp)
/* 825FC 800819FC E7B50010 */  swc1       $f21, 0x10($sp)
/* 82600 80081A00 AFA40068 */  sw         $a0, 0x68($sp)
.L80081A04:
/* 82604 80081A04 02130019 */  multu      $s0, $s3
/* 82608 80081A08 444FF800 */  cfc1       $t7, $31
/* 8260C 80081A0C 24020001 */  addiu      $v0, $zero, 1
/* 82610 80081A10 44C2F800 */  ctc1       $v0, $31
/* 82614 80081A14 3C014F00 */  lui        $at, 0x4f00
/* 82618 80081A18 00007012 */  mflo       $t6
/* 8261C 80081A1C 024E1821 */  addu       $v1, $s2, $t6
/* 82620 80081A20 C4600124 */  lwc1       $f0, 0x124($v1)
/* 82624 80081A24 8C670174 */  lw         $a3, 0x174($v1)
/* 82628 80081A28 46000124 */  cvt.w.s    $f4, $f0
/* 8262C 80081A2C AC60016C */  sw         $zero, 0x16c($v1)
/* 82630 80081A30 4442F800 */  cfc1       $v0, $31
/* 82634 80081A34 00000000 */  nop
/* 82638 80081A38 30420078 */  andi       $v0, $v0, 0x78
/* 8263C 80081A3C 10400012 */  beqz       $v0, .L80081A88
/* 82640 80081A40 00000000 */   nop
/* 82644 80081A44 44812000 */  mtc1       $at, $f4
/* 82648 80081A48 24020001 */  addiu      $v0, $zero, 1
/* 8264C 80081A4C 46040101 */  sub.s      $f4, $f0, $f4
/* 82650 80081A50 3C018000 */  lui        $at, 0x8000
/* 82654 80081A54 44C2F800 */  ctc1       $v0, $31
/* 82658 80081A58 00000000 */  nop
/* 8265C 80081A5C 46002124 */  cvt.w.s    $f4, $f4
/* 82660 80081A60 4442F800 */  cfc1       $v0, $31
/* 82664 80081A64 00000000 */  nop
/* 82668 80081A68 30420078 */  andi       $v0, $v0, 0x78
/* 8266C 80081A6C 14400004 */  bnez       $v0, .L80081A80
/* 82670 80081A70 00000000 */   nop
/* 82674 80081A74 44022000 */  mfc1       $v0, $f4
/* 82678 80081A78 10000007 */  b          .L80081A98
/* 8267C 80081A7C 00411025 */   or        $v0, $v0, $at
.L80081A80:
/* 82680 80081A80 10000005 */  b          .L80081A98
/* 82684 80081A84 2402FFFF */   addiu     $v0, $zero, -1
.L80081A88:
/* 82688 80081A88 44022000 */  mfc1       $v0, $f4
/* 8268C 80081A8C 00000000 */  nop
/* 82690 80081A90 0440FFFB */  bltz       $v0, .L80081A80
/* 82694 80081A94 00000000 */   nop
.L80081A98:
/* 82698 80081A98 44CFF800 */  ctc1       $t7, $31
/* 8269C 80081A9C C466011C */  lwc1       $f6, 0x11c($v1)
/* 826A0 80081AA0 0002C040 */  sll        $t8, $v0, 1
/* 826A4 80081AA4 46143201 */  sub.s      $f8, $f6, $f20
/* 826A8 80081AA8 00F83021 */  addu       $a2, $a3, $t8
/* 826AC 80081AAC E468011C */  swc1       $f8, 0x11c($v1)
/* 826B0 80081AB0 C46A011C */  lwc1       $f10, 0x11c($v1)
/* 826B4 80081AB4 00000000 */  nop
/* 826B8 80081AB8 4616503E */  c.le.s     $f10, $f22
/* 826BC 80081ABC 00000000 */  nop
/* 826C0 80081AC0 45000066 */  bc1f       .L80081C5C
/* 826C4 80081AC4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 826C8 80081AC8 94D90006 */  lhu        $t9, 6($a2)
/* 826CC 80081ACC 00000000 */  nop
/* 826D0 80081AD0 27288005 */  addiu      $t0, $t9, -0x7ffb
/* 826D4 80081AD4 2D010005 */  sltiu      $at, $t0, 5
/* 826D8 80081AD8 10200007 */  beqz       $at, .L80081AF8
/* 826DC 80081ADC 00084080 */   sll       $t0, $t0, 2
/* 826E0 80081AE0 3C01800F */  lui        $at, %hi(D_800ED030)
/* 826E4 80081AE4 00280821 */  addu       $at, $at, $t0
/* 826E8 80081AE8 8C28D030 */  lw         $t0, %lo(D_800ED030)($at)
/* 826EC 80081AEC 00000000 */  nop
/* 826F0 80081AF0 01000008 */  jr         $t0
/* 826F4 80081AF4 00000000 */   nop
.L80081AF8:
/* 826F8 80081AF8 3204FFFF */  andi       $a0, $s0, 0xffff
/* 826FC 80081AFC 02202825 */  or         $a1, $s1, $zero
/* 82700 80081B00 AFA20048 */  sw         $v0, 0x48($sp)
/* 82704 80081B04 AFA30044 */  sw         $v1, 0x44($sp)
/* 82708 80081B08 0C020206 */  jal        func_80080818
/* 8270C 80081B0C AFA70064 */   sw        $a3, 0x64($sp)
/* 82710 80081B10 8FA20048 */  lw         $v0, 0x48($sp)
/* 82714 80081B14 8FA70064 */  lw         $a3, 0x64($sp)
/* 82718 80081B18 00024840 */  sll        $t1, $v0, 1
/* 8271C 80081B1C 01273021 */  addu       $a2, $t1, $a3
/* 82720 80081B20 24C60006 */  addiu      $a2, $a2, 6
/* 82724 80081B24 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82728 80081B28 0C020076 */  jal        func_800801D8
/* 8272C 80081B2C 02202825 */   or        $a1, $s1, $zero
/* 82730 80081B30 8FA30044 */  lw         $v1, 0x44($sp)
/* 82734 80081B34 00000000 */  nop
/* 82738 80081B38 C4700124 */  lwc1       $f16, 0x124($v1)
/* 8273C 80081B3C 00000000 */  nop
/* 82740 80081B40 46188480 */  add.s      $f18, $f16, $f24
/* 82744 80081B44 10000039 */  b          .L80081C2C
/* 82748 80081B48 E4720124 */   swc1      $f18, 0x124($v1)
/* 8274C 80081B4C 46140100 */  add.s      $f4, $f0, $f20
/* 82750 80081B50 320AFFFF */  andi       $t2, $s0, 0xffff
/* 82754 80081B54 E476013C */  swc1       $f22, 0x13c($v1)
/* 82758 80081B58 E4640124 */  swc1       $f4, 0x124($v1)
/* 8275C 80081B5C 1000FFA9 */  b          .L80081A04
/* 82760 80081B60 01408025 */   or        $s0, $t2, $zero
/* 82764 80081B64 444BF800 */  cfc1       $t3, $31
/* 82768 80081B68 C466013C */  lwc1       $f6, 0x13c($v1)
/* 8276C 80081B6C 35610003 */  ori        $at, $t3, 3
/* 82770 80081B70 38210002 */  xori       $at, $at, 2
/* 82774 80081B74 44C1F800 */  ctc1       $at, $31
/* 82778 80081B78 320DFFFF */  andi       $t5, $s0, 0xffff
/* 8277C 80081B7C 46003224 */  cvt.w.s    $f8, $f6
/* 82780 80081B80 01A08025 */  or         $s0, $t5, $zero
/* 82784 80081B84 44024000 */  mfc1       $v0, $f8
/* 82788 80081B88 44CBF800 */  ctc1       $t3, $31
/* 8278C 80081B8C 384C0001 */  xori       $t4, $v0, 1
/* 82790 80081B90 448C5000 */  mtc1       $t4, $f10
/* 82794 80081B94 46140480 */  add.s      $f18, $f0, $f20
/* 82798 80081B98 46805420 */  cvt.s.w    $f16, $f10
/* 8279C 80081B9C E4720124 */  swc1       $f18, 0x124($v1)
/* 827A0 80081BA0 1000FF98 */  b          .L80081A04
/* 827A4 80081BA4 E470013C */   swc1      $f16, 0x13c($v1)
/* 827A8 80081BA8 3C014000 */  lui        $at, 0x4000
/* 827AC 80081BAC 44812000 */  mtc1       $at, $f4
/* 827B0 80081BB0 94D20008 */  lhu        $s2, 8($a2)
/* 827B4 80081BB4 46040180 */  add.s      $f6, $f0, $f4
/* 827B8 80081BB8 AFA30044 */  sw         $v1, 0x44($sp)
/* 827BC 80081BBC E4660124 */  swc1       $f6, 0x124($v1)
/* 827C0 80081BC0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 827C4 80081BC4 0C02066A */  jal        func_800819A8
/* 827C8 80081BC8 02202825 */   or        $a1, $s1, $zero
/* 827CC 80081BCC 8FA30044 */  lw         $v1, 0x44($sp)
/* 827D0 80081BD0 1000002D */  b          .L80081C88
/* 827D4 80081BD4 AC72016C */   sw        $s2, 0x16c($v1)
/* 827D8 80081BD8 94EE0000 */  lhu        $t6, ($a3)
/* 827DC 80081BDC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 827E0 80081BE0 15C00008 */  bnez       $t6, .L80081C04
/* 827E4 80081BE4 02202825 */   or        $a1, $s1, $zero
/* 827E8 80081BE8 94EF0002 */  lhu        $t7, 2($a3)
/* 827EC 80081BEC 00000000 */  nop
/* 827F0 80081BF0 15E00004 */  bnez       $t7, .L80081C04
/* 827F4 80081BF4 00000000 */   nop
/* 827F8 80081BF8 24E70006 */  addiu      $a3, $a3, 6
/* 827FC 80081BFC 10000002 */  b          .L80081C08
/* 82800 80081C00 E4780124 */   swc1      $f24, 0x124($v1)
.L80081C04:
/* 82804 80081C04 E4760124 */  swc1       $f22, 0x124($v1)
.L80081C08:
/* 82808 80081C08 0C020076 */  jal        func_800801D8
/* 8280C 80081C0C 00E03025 */   or        $a2, $a3, $zero
/* 82810 80081C10 3218FFFF */  andi       $t8, $s0, 0xffff
/* 82814 80081C14 1000FF7B */  b          .L80081A04
/* 82818 80081C18 03008025 */   or        $s0, $t8, $zero
/* 8281C 80081C1C 3C01BF80 */  lui        $at, 0xbf80
/* 82820 80081C20 44814000 */  mtc1       $at, $f8
/* 82824 80081C24 00000000 */  nop
/* 82828 80081C28 E468011C */  swc1       $f8, 0x11c($v1)
.L80081C2C:
/* 8282C 80081C2C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82830 80081C30 0C02016E */  jal        func_800805B8
/* 82834 80081C34 02202825 */   or        $a1, $s1, $zero
/* 82838 80081C38 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8283C 80081C3C 0C020234 */  jal        func_800808D0
/* 82840 80081C40 02202825 */   or        $a1, $s1, $zero
/* 82844 80081C44 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82848 80081C48 0C0202BB */  jal        func_80080AEC
/* 8284C 80081C4C 02202825 */   or        $a1, $s1, $zero
/* 82850 80081C50 1000000E */  b          .L80081C8C
/* 82854 80081C54 8FBF003C */   lw        $ra, 0x3c($sp)
/* 82858 80081C58 3204FFFF */  andi       $a0, $s0, 0xffff
.L80081C5C:
/* 8285C 80081C5C 0C020206 */  jal        func_80080818
/* 82860 80081C60 02202825 */   or        $a1, $s1, $zero
/* 82864 80081C64 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82868 80081C68 0C02016E */  jal        func_800805B8
/* 8286C 80081C6C 02202825 */   or        $a1, $s1, $zero
/* 82870 80081C70 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82874 80081C74 0C020234 */  jal        func_800808D0
/* 82878 80081C78 02202825 */   or        $a1, $s1, $zero
/* 8287C 80081C7C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 82880 80081C80 0C0202BB */  jal        func_80080AEC
/* 82884 80081C84 02202825 */   or        $a1, $s1, $zero
.L80081C88:
/* 82888 80081C88 8FBF003C */  lw         $ra, 0x3c($sp)
.L80081C8C:
/* 8288C 80081C8C C7B50010 */  lwc1       $f21, 0x10($sp)
/* 82890 80081C90 C7B40014 */  lwc1       $f20, 0x14($sp)
/* 82894 80081C94 C7B70018 */  lwc1       $f23, 0x18($sp)
/* 82898 80081C98 C7B6001C */  lwc1       $f22, 0x1c($sp)
/* 8289C 80081C9C C7B90020 */  lwc1       $f25, 0x20($sp)
/* 828A0 80081CA0 C7B80024 */  lwc1       $f24, 0x24($sp)
/* 828A4 80081CA4 8FB0002C */  lw         $s0, 0x2c($sp)
/* 828A8 80081CA8 8FB10030 */  lw         $s1, 0x30($sp)
/* 828AC 80081CAC 8FB20034 */  lw         $s2, 0x34($sp)
/* 828B0 80081CB0 8FB30038 */  lw         $s3, 0x38($sp)
/* 828B4 80081CB4 03E00008 */  jr         $ra
/* 828B8 80081CB8 27BD0068 */   addiu     $sp, $sp, 0x68
