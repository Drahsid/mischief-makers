glabel func_80048D30
/* 49930 80048D30 308EFFFF */  andi       $t6, $a0, 0xffff
/* 49934 80048D34 000EC080 */  sll        $t8, $t6, 2
/* 49938 80048D38 030EC023 */  subu       $t8, $t8, $t6
/* 4993C 80048D3C 0018C080 */  sll        $t8, $t8, 2
/* 49940 80048D40 030EC021 */  addu       $t8, $t8, $t6
/* 49944 80048D44 0018C080 */  sll        $t8, $t8, 2
/* 49948 80048D48 3C06800F */  lui        $a2, %hi(gActors)
/* 4994C 80048D4C 030EC023 */  subu       $t8, $t8, $t6
/* 49950 80048D50 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 49954 80048D54 0018C0C0 */  sll        $t8, $t8, 3
/* 49958 80048D58 00D81821 */  addu       $v1, $a2, $t8
/* 4995C 80048D5C 8C790080 */  lw         $t9, 0x80($v1)
/* 49960 80048D60 00057880 */  sll        $t7, $a1, 2
/* 49964 80048D64 3C02800D */  lui        $v0, %hi(D_800D4094)
/* 49968 80048D68 004F1021 */  addu       $v0, $v0, $t7
/* 4996C 80048D6C 8C424094 */  lw         $v0, %lo(D_800D4094)($v0)
/* 49970 80048D70 33280020 */  andi       $t0, $t9, 0x20
/* 49974 80048D74 1500000B */  bnez       $t0, .L80048DA4
/* 49978 80048D78 AFA40000 */   sw        $a0, ($sp)
/* 4997C 80048D7C 80690171 */  lb         $t1, 0x171($v1)
/* 49980 80048D80 00000000 */  nop
/* 49984 80048D84 00095080 */  sll        $t2, $t1, 2
/* 49988 80048D88 01422021 */  addu       $a0, $t2, $v0
/* 4998C 80048D8C 808B0000 */  lb         $t3, ($a0)
/* 49990 80048D90 00000000 */  nop
/* 49994 80048D94 A46B00A2 */  sh         $t3, 0xa2($v1)
/* 49998 80048D98 808C0001 */  lb         $t4, 1($a0)
/* 4999C 80048D9C 1000000D */  b          .L80048DD4
/* 499A0 80048DA0 A46C00A4 */   sh        $t4, 0xa4($v1)
.L80048DA4:
/* 499A4 80048DA4 806D0171 */  lb         $t5, 0x171($v1)
/* 499A8 80048DA8 00000000 */  nop
/* 499AC 80048DAC 000D7080 */  sll        $t6, $t5, 2
/* 499B0 80048DB0 01C22021 */  addu       $a0, $t6, $v0
/* 499B4 80048DB4 808F0000 */  lb         $t7, ($a0)
/* 499B8 80048DB8 00000000 */  nop
/* 499BC 80048DBC 000FC023 */  negu       $t8, $t7
/* 499C0 80048DC0 A47800A4 */  sh         $t8, 0xa4($v1)
/* 499C4 80048DC4 80990001 */  lb         $t9, 1($a0)
/* 499C8 80048DC8 00000000 */  nop
/* 499CC 80048DCC 00194023 */  negu       $t0, $t9
/* 499D0 80048DD0 A46800A2 */  sh         $t0, 0xa2($v1)
.L80048DD4:
/* 499D4 80048DD4 80890002 */  lb         $t1, 2($a0)
/* 499D8 80048DD8 846B00A2 */  lh         $t3, 0xa2($v1)
/* 499DC 80048DDC A46900A6 */  sh         $t1, 0xa6($v1)
/* 499E0 80048DE0 808A0003 */  lb         $t2, 3($a0)
/* 499E4 80048DE4 448B2000 */  mtc1       $t3, $f4
/* 499E8 80048DE8 A46A00A8 */  sh         $t2, 0xa8($v1)
/* 499EC 80048DEC 468021A0 */  cvt.s.w    $f6, $f4
/* 499F0 80048DF0 C4C80120 */  lwc1       $f8, 0x120($a2)
/* 499F4 80048DF4 846E00A4 */  lh         $t6, 0xa4($v1)
/* 499F8 80048DF8 46083282 */  mul.s      $f10, $f6, $f8
/* 499FC 80048DFC 448E9000 */  mtc1       $t6, $f18
/* 49A00 80048E00 847900A6 */  lh         $t9, 0xa6($v1)
/* 49A04 80048E04 846A00A8 */  lh         $t2, 0xa8($v1)
/* 49A08 80048E08 444CF800 */  cfc1       $t4, $31
/* 49A0C 80048E0C 00000000 */  nop
/* 49A10 80048E10 35810003 */  ori        $at, $t4, 3
/* 49A14 80048E14 38210002 */  xori       $at, $at, 2
/* 49A18 80048E18 44C1F800 */  ctc1       $at, $31
/* 49A1C 80048E1C 00000000 */  nop
/* 49A20 80048E20 46005424 */  cvt.w.s    $f16, $f10
/* 49A24 80048E24 44CCF800 */  ctc1       $t4, $31
/* 49A28 80048E28 440D8000 */  mfc1       $t5, $f16
/* 49A2C 80048E2C 46809120 */  cvt.s.w    $f4, $f18
/* 49A30 80048E30 A46D00A2 */  sh         $t5, 0xa2($v1)
/* 49A34 80048E34 C4C60120 */  lwc1       $f6, 0x120($a2)
/* 49A38 80048E38 44998000 */  mtc1       $t9, $f16
/* 49A3C 80048E3C 46062202 */  mul.s      $f8, $f4, $f6
/* 49A40 80048E40 444FF800 */  cfc1       $t7, $31
/* 49A44 80048E44 00000000 */  nop
/* 49A48 80048E48 35E10003 */  ori        $at, $t7, 3
/* 49A4C 80048E4C 38210002 */  xori       $at, $at, 2
/* 49A50 80048E50 44C1F800 */  ctc1       $at, $31
/* 49A54 80048E54 00000000 */  nop
/* 49A58 80048E58 460042A4 */  cvt.w.s    $f10, $f8
/* 49A5C 80048E5C 44CFF800 */  ctc1       $t7, $31
/* 49A60 80048E60 44185000 */  mfc1       $t8, $f10
/* 49A64 80048E64 468084A0 */  cvt.s.w    $f18, $f16
/* 49A68 80048E68 A47800A4 */  sh         $t8, 0xa4($v1)
/* 49A6C 80048E6C C4C40120 */  lwc1       $f4, 0x120($a2)
/* 49A70 80048E70 448A5000 */  mtc1       $t2, $f10
/* 49A74 80048E74 46049182 */  mul.s      $f6, $f18, $f4
/* 49A78 80048E78 4448F800 */  cfc1       $t0, $31
/* 49A7C 80048E7C 00000000 */  nop
/* 49A80 80048E80 35010003 */  ori        $at, $t0, 3
/* 49A84 80048E84 38210002 */  xori       $at, $at, 2
/* 49A88 80048E88 44C1F800 */  ctc1       $at, $31
/* 49A8C 80048E8C 00000000 */  nop
/* 49A90 80048E90 46003224 */  cvt.w.s    $f8, $f6
/* 49A94 80048E94 44C8F800 */  ctc1       $t0, $31
/* 49A98 80048E98 44094000 */  mfc1       $t1, $f8
/* 49A9C 80048E9C 46805420 */  cvt.s.w    $f16, $f10
/* 49AA0 80048EA0 A46900A6 */  sh         $t1, 0xa6($v1)
/* 49AA4 80048EA4 C4D20120 */  lwc1       $f18, 0x120($a2)
/* 49AA8 80048EA8 00000000 */  nop
/* 49AAC 80048EAC 46128102 */  mul.s      $f4, $f16, $f18
/* 49AB0 80048EB0 444BF800 */  cfc1       $t3, $31
/* 49AB4 80048EB4 00000000 */  nop
/* 49AB8 80048EB8 35610003 */  ori        $at, $t3, 3
/* 49ABC 80048EBC 38210002 */  xori       $at, $at, 2
/* 49AC0 80048EC0 44C1F800 */  ctc1       $at, $31
/* 49AC4 80048EC4 00000000 */  nop
/* 49AC8 80048EC8 460021A4 */  cvt.w.s    $f6, $f4
/* 49ACC 80048ECC 440C3000 */  mfc1       $t4, $f6
/* 49AD0 80048ED0 44CBF800 */  ctc1       $t3, $31
/* 49AD4 80048ED4 03E00008 */  jr         $ra
/* 49AD8 80048ED8 A46C00A8 */   sh        $t4, 0xa8($v1)
