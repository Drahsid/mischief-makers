glabel func_80072A28
/* 73628 80072A28 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7362C 80072A2C AFB00028 */  sw         $s0, 0x28($sp)
/* 73630 80072A30 3090FFFF */  andi       $s0, $a0, 0xffff
/* 73634 80072A34 AFBF002C */  sw         $ra, 0x2c($sp)
/* 73638 80072A38 AFA40038 */  sw         $a0, 0x38($sp)
/* 7363C 80072A3C 0C01B22E */  jal        func_8006C8B8
/* 73640 80072A40 3204FFFF */   andi      $a0, $s0, 0xffff
/* 73644 80072A44 14400071 */  bnez       $v0, .L80072C0C
/* 73648 80072A48 00107080 */   sll       $t6, $s0, 2
/* 7364C 80072A4C 01D07023 */  subu       $t6, $t6, $s0
/* 73650 80072A50 000E7080 */  sll        $t6, $t6, 2
/* 73654 80072A54 01D07021 */  addu       $t6, $t6, $s0
/* 73658 80072A58 000E7080 */  sll        $t6, $t6, 2
/* 7365C 80072A5C 01D07023 */  subu       $t6, $t6, $s0
/* 73660 80072A60 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 73664 80072A64 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 73668 80072A68 000E70C0 */  sll        $t6, $t6, 3
/* 7366C 80072A6C 01CF1821 */  addu       $v1, $t6, $t7
/* 73670 80072A70 946600D0 */  lhu        $a2, 0xd0($v1)
/* 73674 80072A74 24010480 */  addiu      $at, $zero, 0x480
/* 73678 80072A78 10C10008 */  beq        $a2, $at, .L80072A9C
/* 7367C 80072A7C 00C01025 */   or        $v0, $a2, $zero
/* 73680 80072A80 24010481 */  addiu      $at, $zero, 0x481
/* 73684 80072A84 10410013 */  beq        $v0, $at, .L80072AD4
/* 73688 80072A88 24010482 */   addiu     $at, $zero, 0x482
/* 7368C 80072A8C 1041004D */  beq        $v0, $at, .L80072BC4
/* 73690 80072A90 3204FFFF */   andi      $a0, $s0, 0xffff
/* 73694 80072A94 10000056 */  b          .L80072BF0
/* 73698 80072A98 8C620158 */   lw        $v0, 0x158($v1)
.L80072A9C:
/* 7369C 80072A9C 3C19800E */  lui        $t9, %hi(D_800E2464)
/* 736A0 80072AA0 24D80001 */  addiu      $t8, $a2, 1
/* 736A4 80072AA4 27392464 */  addiu      $t9, $t9, %lo(D_800E2464)
/* 736A8 80072AA8 24080001 */  addiu      $t0, $zero, 1
/* 736AC 80072AAC A47800D0 */  sh         $t8, 0xd0($v1)
/* 736B0 80072AB0 A46800E6 */  sh         $t0, 0xe6($v1)
/* 736B4 80072AB4 AC7900E8 */  sw         $t9, 0xe8($v1)
/* 736B8 80072AB8 AC600158 */  sw         $zero, 0x158($v1)
/* 736BC 80072ABC 240400A1 */  addiu      $a0, $zero, 0xa1
/* 736C0 80072AC0 3205FFFF */  andi       $a1, $s0, 0xffff
/* 736C4 80072AC4 0C000DB2 */  jal        func_800036C8
/* 736C8 80072AC8 AFA30030 */   sw        $v1, 0x30($sp)
/* 736CC 80072ACC 8FA30030 */  lw         $v1, 0x30($sp)
/* 736D0 80072AD0 00000000 */  nop
.L80072AD4:
/* 736D4 80072AD4 8C690158 */  lw         $t1, 0x158($v1)
/* 736D8 80072AD8 2401022C */  addiu      $at, $zero, 0x22c
/* 736DC 80072ADC 15210009 */  bne        $t1, $at, .L80072B04
/* 736E0 80072AE0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 736E4 80072AE4 946A00D0 */  lhu        $t2, 0xd0($v1)
/* 736E8 80072AE8 3C0C800E */  lui        $t4, %hi(D_800E24A0)
/* 736EC 80072AEC 258C24A0 */  addiu      $t4, $t4, %lo(D_800E24A0)
/* 736F0 80072AF0 240D0001 */  addiu      $t5, $zero, 1
/* 736F4 80072AF4 254B0001 */  addiu      $t3, $t2, 1
/* 736F8 80072AF8 A46B00D0 */  sh         $t3, 0xd0($v1)
/* 736FC 80072AFC A46D00E6 */  sh         $t5, 0xe6($v1)
/* 73700 80072B00 AC6C00E8 */  sw         $t4, 0xe8($v1)
.L80072B04:
/* 73704 80072B04 24050020 */  addiu      $a1, $zero, 0x20
/* 73708 80072B08 0C00A23B */  jal        func_800288EC
/* 7370C 80072B0C AFA30030 */   sw        $v1, 0x30($sp)
/* 73710 80072B10 8FA30030 */  lw         $v1, 0x30($sp)
/* 73714 80072B14 14400020 */  bnez       $v0, .L80072B98
/* 73718 80072B18 3204FFFF */   andi      $a0, $s0, 0xffff
/* 7371C 80072B1C 846E008C */  lh         $t6, 0x8c($v1)
/* 73720 80072B20 C46400B4 */  lwc1       $f4, 0xb4($v1)
/* 73724 80072B24 44803000 */  mtc1       $zero, $f6
/* 73728 80072B28 448E5000 */  mtc1       $t6, $f10
/* 7372C 80072B2C 46062202 */  mul.s      $f8, $f4, $f6
/* 73730 80072B30 84670090 */  lh         $a3, 0x90($v1)
/* 73734 80072B34 84650088 */  lh         $a1, 0x88($v1)
/* 73738 80072B38 24E7FFFF */  addiu      $a3, $a3, -1
/* 7373C 80072B3C 46805420 */  cvt.s.w    $f16, $f10
/* 73740 80072B40 00074400 */  sll        $t0, $a3, 0x10
/* 73744 80072B44 3C0A0001 */  lui        $t2, 1
/* 73748 80072B48 46104480 */  add.s      $f18, $f8, $f16
/* 7374C 80072B4C 3C0B0008 */  lui        $t3, 8
/* 73750 80072B50 444FF800 */  cfc1       $t7, $31
/* 73754 80072B54 240C0006 */  addiu      $t4, $zero, 6
/* 73758 80072B58 35E10003 */  ori        $at, $t7, 3
/* 7375C 80072B5C 38210002 */  xori       $at, $at, 2
/* 73760 80072B60 44C1F800 */  ctc1       $at, $31
/* 73764 80072B64 AFAC0018 */  sw         $t4, 0x18($sp)
/* 73768 80072B68 46009124 */  cvt.w.s    $f4, $f18
/* 7376C 80072B6C AFAB0014 */  sw         $t3, 0x14($sp)
/* 73770 80072B70 44062000 */  mfc1       $a2, $f4
/* 73774 80072B74 44CFF800 */  ctc1       $t7, $31
/* 73778 80072B78 0006C400 */  sll        $t8, $a2, 0x10
/* 7377C 80072B7C 00183403 */  sra        $a2, $t8, 0x10
/* 73780 80072B80 AFAA0010 */  sw         $t2, 0x10($sp)
/* 73784 80072B84 00083C03 */  sra        $a3, $t0, 0x10
/* 73788 80072B88 0C00CF9F */  jal        func_80033E7C
/* 7378C 80072B8C AFA30030 */   sw        $v1, 0x30($sp)
/* 73790 80072B90 8FA30030 */  lw         $v1, 0x30($sp)
/* 73794 80072B94 00000000 */  nop
.L80072B98:
/* 73798 80072B98 3C0D800E */  lui        $t5, %hi(D_800E3584)
/* 7379C 80072B9C 8DAD3584 */  lw         $t5, %lo(D_800E3584)($t5)
/* 737A0 80072BA0 3C01000C */  lui        $at, 0xc
/* 737A4 80072BA4 01A17024 */  and        $t6, $t5, $at
/* 737A8 80072BA8 11C00010 */  beqz       $t6, .L80072BEC
/* 737AC 80072BAC 00000000 */   nop
/* 737B0 80072BB0 8C6F0080 */  lw         $t7, 0x80($v1)
/* 737B4 80072BB4 00000000 */  nop
/* 737B8 80072BB8 39F80020 */  xori       $t8, $t7, 0x20
/* 737BC 80072BBC 1000000B */  b          .L80072BEC
/* 737C0 80072BC0 AC780080 */   sw        $t8, 0x80($v1)
.L80072BC4:
/* 737C4 80072BC4 3C013F80 */  lui        $at, 0x3f80
/* 737C8 80072BC8 44813000 */  mtc1       $at, $f6
/* 737CC 80072BCC 3C053F00 */  lui        $a1, 0x3f00
/* 737D0 80072BD0 24060000 */  addiu      $a2, $zero, 0
/* 737D4 80072BD4 3C0740E0 */  lui        $a3, 0x40e0
/* 737D8 80072BD8 AFA30030 */  sw         $v1, 0x30($sp)
/* 737DC 80072BDC 0C0199E3 */  jal        func_8006678C
/* 737E0 80072BE0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 737E4 80072BE4 8FA30030 */  lw         $v1, 0x30($sp)
/* 737E8 80072BE8 00000000 */  nop
.L80072BEC:
/* 737EC 80072BEC 8C620158 */  lw         $v0, 0x158($v1)
.L80072BF0:
/* 737F0 80072BF0 00000000 */  nop
/* 737F4 80072BF4 28414000 */  slti       $at, $v0, 0x4000
/* 737F8 80072BF8 10200002 */  beqz       $at, .L80072C04
/* 737FC 80072BFC 24590001 */   addiu     $t9, $v0, 1
/* 73800 80072C00 AC790158 */  sw         $t9, 0x158($v1)
.L80072C04:
/* 73804 80072C04 0C01A6E5 */  jal        func_80069B94
/* 73808 80072C08 3204FFFF */   andi      $a0, $s0, 0xffff
.L80072C0C:
/* 7380C 80072C0C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 73810 80072C10 8FB00028 */  lw         $s0, 0x28($sp)
/* 73814 80072C14 03E00008 */  jr         $ra
/* 73818 80072C18 27BD0038 */   addiu     $sp, $sp, 0x38
