glabel func_80086A20
/* 87620 80086A20 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 87624 80086A24 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 87628 80086A28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8762C 80086A2C 31CF0003 */  andi       $t7, $t6, 3
/* 87630 80086A30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 87634 80086A34 15E0004B */  bnez       $t7, .L80086B64
/* 87638 80086A38 AFA40020 */   sw        $a0, 0x20($sp)
/* 8763C 80086A3C 97B80022 */  lhu        $t8, 0x22($sp)
/* 87640 80086A40 3C09800F */  lui        $t1, 0x800f
/* 87644 80086A44 0018C880 */  sll        $t9, $t8, 2
/* 87648 80086A48 0338C823 */  subu       $t9, $t9, $t8
/* 8764C 80086A4C 0019C880 */  sll        $t9, $t9, 2
/* 87650 80086A50 0338C821 */  addu       $t9, $t9, $t8
/* 87654 80086A54 0019C880 */  sll        $t9, $t9, 2
/* 87658 80086A58 0338C823 */  subu       $t9, $t9, $t8
/* 8765C 80086A5C 0019C8C0 */  sll        $t9, $t9, 3
/* 87660 80086A60 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 87664 80086A64 03294021 */  addu       $t0, $t9, $t1
/* 87668 80086A68 850A0088 */  lh         $t2, 0x88($t0)
/* 8766C 80086A6C 3C0140C0 */  lui        $at, 0x40c0
/* 87670 80086A70 44813000 */  mtc1       $at, $f6
/* 87674 80086A74 C50400B4 */  lwc1       $f4, 0xb4($t0)
/* 87678 80086A78 448A5000 */  mtc1       $t2, $f10
/* 8767C 80086A7C 46062202 */  mul.s      $f8, $f4, $f6
/* 87680 80086A80 850C008C */  lh         $t4, 0x8c($t0)
/* 87684 80086A84 C50600B8 */  lwc1       $f6, 0xb8($t0)
/* 87688 80086A88 85070090 */  lh         $a3, 0x90($t0)
/* 8768C 80086A8C 46805420 */  cvt.s.w    $f16, $f10
/* 87690 80086A90 3C04800E */  lui        $a0, %hi(D_800E3DA0)
/* 87694 80086A94 24843DA0 */  addiu      $a0, $a0, %lo(D_800E3DA0)
/* 87698 80086A98 46104480 */  add.s      $f18, $f8, $f16
/* 8769C 80086A9C 448C8000 */  mtc1       $t4, $f16
/* 876A0 80086AA0 444BF800 */  cfc1       $t3, $31
/* 876A4 80086AA4 AFA80018 */  sw         $t0, 0x18($sp)
/* 876A8 80086AA8 35610003 */  ori        $at, $t3, 3
/* 876AC 80086AAC 38210002 */  xori       $at, $at, 2
/* 876B0 80086AB0 44C1F800 */  ctc1       $at, $31
/* 876B4 80086AB4 3C014180 */  lui        $at, 0x4180
/* 876B8 80086AB8 46009124 */  cvt.w.s    $f4, $f18
/* 876BC 80086ABC 44815000 */  mtc1       $at, $f10
/* 876C0 80086AC0 44CBF800 */  ctc1       $t3, $31
/* 876C4 80086AC4 44052000 */  mfc1       $a1, $f4
/* 876C8 80086AC8 460A3202 */  mul.s      $f8, $f6, $f10
/* 876CC 80086ACC 468084A0 */  cvt.s.w    $f18, $f16
/* 876D0 80086AD0 46124100 */  add.s      $f4, $f8, $f18
/* 876D4 80086AD4 444DF800 */  cfc1       $t5, $31
/* 876D8 80086AD8 00000000 */  nop
/* 876DC 80086ADC 35A10003 */  ori        $at, $t5, 3
/* 876E0 80086AE0 38210002 */  xori       $at, $at, 2
/* 876E4 80086AE4 44C1F800 */  ctc1       $at, $31
/* 876E8 80086AE8 00000000 */  nop
/* 876EC 80086AEC 460021A4 */  cvt.w.s    $f6, $f4
/* 876F0 80086AF0 44063000 */  mfc1       $a2, $f6
/* 876F4 80086AF4 44CDF800 */  ctc1       $t5, $31
/* 876F8 80086AF8 0C00C48F */  jal        func_8003123C
/* 876FC 80086AFC 00000000 */   nop
/* 87700 80086B00 8FA80018 */  lw         $t0, 0x18($sp)
/* 87704 80086B04 10400017 */  beqz       $v0, .L80086B64
/* 87708 80086B08 00027080 */   sll       $t6, $v0, 2
/* 8770C 80086B0C 01C27023 */  subu       $t6, $t6, $v0
/* 87710 80086B10 000E7080 */  sll        $t6, $t6, 2
/* 87714 80086B14 01C27021 */  addu       $t6, $t6, $v0
/* 87718 80086B18 000E7080 */  sll        $t6, $t6, 2
/* 8771C 80086B1C 01C27023 */  subu       $t6, $t6, $v0
/* 87720 80086B20 3C0F800F */  lui        $t7, %hi(gActors)
/* 87724 80086B24 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 87728 80086B28 000E70C0 */  sll        $t6, $t6, 3
/* 8772C 80086B2C 01CF1821 */  addu       $v1, $t6, $t7
/* 87730 80086B30 24180010 */  addiu      $t8, $zero, 0x10
/* 87734 80086B34 24190094 */  addiu      $t9, $zero, 0x94
/* 87738 80086B38 240900B4 */  addiu      $t1, $zero, 0xb4
/* 8773C 80086B3C 240A00E6 */  addiu      $t2, $zero, 0xe6
/* 87740 80086B40 A4780094 */  sh         $t8, 0x94($v1)
/* 87744 80086B44 A060009C */  sb         $zero, 0x9c($v1)
/* 87748 80086B48 A079009D */  sb         $t9, 0x9d($v1)
/* 8774C 80086B4C A069009E */  sb         $t1, 0x9e($v1)
/* 87750 80086B50 A06A009F */  sb         $t2, 0x9f($v1)
/* 87754 80086B54 8D0B0090 */  lw         $t3, 0x90($t0)
/* 87758 80086B58 00000000 */  nop
/* 8775C 80086B5C 256C0001 */  addiu      $t4, $t3, 1
/* 87760 80086B60 AC6C0090 */  sw         $t4, 0x90($v1)
.L80086B64:
/* 87764 80086B64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 87768 80086B68 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8776C 80086B6C 03E00008 */  jr         $ra
/* 87770 80086B70 00000000 */   nop
