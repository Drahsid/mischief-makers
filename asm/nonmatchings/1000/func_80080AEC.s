glabel func_80080AEC
/* 816EC 80080AEC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 816F0 80080AF0 240A0198 */  addiu      $t2, $zero, 0x198
/* 816F4 80080AF4 01CA0019 */  multu      $t6, $t2
/* 816F8 80080AF8 3C09800F */  lui        $t1, %hi(gActors)
/* 816FC 80080AFC 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 81700 80080B00 44802000 */  mtc1       $zero, $f4
/* 81704 80080B04 27BDFFF8 */  addiu      $sp, $sp, -8
/* 81708 80080B08 AFA40008 */  sw         $a0, 8($sp)
/* 8170C 80080B0C 01C02025 */  or         $a0, $t6, $zero
/* 81710 80080B10 AFB00004 */  sw         $s0, 4($sp)
/* 81714 80080B14 00A08025 */  or         $s0, $a1, $zero
/* 81718 80080B18 24060001 */  addiu      $a2, $zero, 1
/* 8171C 80080B1C 00803825 */  or         $a3, $a0, $zero
/* 81720 80080B20 00007812 */  mflo       $t7
/* 81724 80080B24 012F1021 */  addu       $v0, $t1, $t7
/* 81728 80080B28 C4460138 */  lwc1       $f6, 0x138($v0)
/* 8172C 80080B2C 00000000 */  nop
/* 81730 80080B30 46062032 */  c.eq.s     $f4, $f6
/* 81734 80080B34 00000000 */  nop
/* 81738 80080B38 45010004 */  bc1t       .L80080B4C
/* 8173C 80080B3C 00000000 */   nop
/* 81740 80080B40 8C430158 */  lw         $v1, 0x158($v0)
/* 81744 80080B44 10000003 */  b          .L80080B54
/* 81748 80080B48 00031823 */   negu      $v1, $v1
.L80080B4C:
/* 8174C 80080B4C 8C430158 */  lw         $v1, 0x158($v0)
/* 81750 80080B50 00000000 */  nop
.L80080B54:
/* 81754 80080B54 94580094 */  lhu        $t8, 0x94($v0)
/* 81758 80080B58 8C45015C */  lw         $a1, 0x15c($v0)
/* 8175C 80080B5C 33190001 */  andi       $t9, $t8, 1
/* 81760 80080B60 13200020 */  beqz       $t9, .L80080BE4
/* 81764 80080B64 00000000 */   nop
/* 81768 80080B68 8C4C0168 */  lw         $t4, 0x168($v0)
/* 8176C 80080B6C 3C01800F */  lui        $at, %hi(D_800ED024)
/* 81770 80080B70 448C4000 */  mtc1       $t4, $f8
/* 81774 80080B74 C42AD024 */  lwc1       $f10, %lo(D_800ED024)($at)
/* 81778 80080B78 46804020 */  cvt.s.w    $f0, $f8
/* 8177C 80080B7C 44838000 */  mtc1       $v1, $f16
/* 81780 80080B80 44854000 */  mtc1       $a1, $f8
/* 81784 80080B84 460A0003 */  div.s      $f0, $f0, $f10
/* 81788 80080B88 468084A0 */  cvt.s.w    $f18, $f16
/* 8178C 80080B8C 46009102 */  mul.s      $f4, $f18, $f0
/* 81790 80080B90 444DF800 */  cfc1       $t5, $31
/* 81794 80080B94 00000000 */  nop
/* 81798 80080B98 35A10003 */  ori        $at, $t5, 3
/* 8179C 80080B9C 38210002 */  xori       $at, $at, 2
/* 817A0 80080BA0 44C1F800 */  ctc1       $at, $31
/* 817A4 80080BA4 00000000 */  nop
/* 817A8 80080BA8 460021A4 */  cvt.w.s    $f6, $f4
/* 817AC 80080BAC 44CDF800 */  ctc1       $t5, $31
/* 817B0 80080BB0 44033000 */  mfc1       $v1, $f6
/* 817B4 80080BB4 468042A0 */  cvt.s.w    $f10, $f8
/* 817B8 80080BB8 46005402 */  mul.s      $f16, $f10, $f0
/* 817BC 80080BBC 444EF800 */  cfc1       $t6, $31
/* 817C0 80080BC0 00000000 */  nop
/* 817C4 80080BC4 35C10003 */  ori        $at, $t6, 3
/* 817C8 80080BC8 38210002 */  xori       $at, $at, 2
/* 817CC 80080BCC 44C1F800 */  ctc1       $at, $31
/* 817D0 80080BD0 00000000 */  nop
/* 817D4 80080BD4 460084A4 */  cvt.w.s    $f18, $f16
/* 817D8 80080BD8 44CEF800 */  ctc1       $t6, $31
/* 817DC 80080BDC 44059000 */  mfc1       $a1, $f18
/* 817E0 80080BE0 00000000 */  nop
.L80080BE4:
/* 817E4 80080BE4 444FF800 */  cfc1       $t7, $31
/* 817E8 80080BE8 44C6F800 */  ctc1       $a2, $31
/* 817EC 80080BEC C4440128 */  lwc1       $f4, 0x128($v0)
/* 817F0 80080BF0 3C014F00 */  lui        $at, 0x4f00
/* 817F4 80080BF4 460021A4 */  cvt.w.s    $f6, $f4
/* 817F8 80080BF8 4446F800 */  cfc1       $a2, $31
/* 817FC 80080BFC 00000000 */  nop
/* 81800 80080C00 30C60078 */  andi       $a2, $a2, 0x78
/* 81804 80080C04 10C00012 */  beqz       $a2, .L80080C50
/* 81808 80080C08 00000000 */   nop
/* 8180C 80080C0C 44813000 */  mtc1       $at, $f6
/* 81810 80080C10 24060001 */  addiu      $a2, $zero, 1
/* 81814 80080C14 46062181 */  sub.s      $f6, $f4, $f6
/* 81818 80080C18 3C018000 */  lui        $at, 0x8000
/* 8181C 80080C1C 44C6F800 */  ctc1       $a2, $31
/* 81820 80080C20 00000000 */  nop
/* 81824 80080C24 460031A4 */  cvt.w.s    $f6, $f6
/* 81828 80080C28 4446F800 */  cfc1       $a2, $31
/* 8182C 80080C2C 00000000 */  nop
/* 81830 80080C30 30C60078 */  andi       $a2, $a2, 0x78
/* 81834 80080C34 14C00004 */  bnez       $a2, .L80080C48
/* 81838 80080C38 00000000 */   nop
/* 8183C 80080C3C 44063000 */  mfc1       $a2, $f6
/* 81840 80080C40 10000007 */  b          .L80080C60
/* 81844 80080C44 00C13025 */   or        $a2, $a2, $at
.L80080C48:
/* 81848 80080C48 10000005 */  b          .L80080C60
/* 8184C 80080C4C 2406FFFF */   addiu     $a2, $zero, -1
.L80080C50:
/* 81850 80080C50 44063000 */  mfc1       $a2, $f6
/* 81854 80080C54 00000000 */  nop
/* 81858 80080C58 04C0FFFB */  bltz       $a2, .L80080C48
/* 8185C 80080C5C 00000000 */   nop
.L80080C60:
/* 81860 80080C60 44CFF800 */  ctc1       $t7, $31
/* 81864 80080C64 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 81868 80080C68 17040004 */  bne        $t8, $a0, .L80080C7C
/* 8186C 80080C6C 03003025 */   or        $a2, $t8, $zero
/* 81870 80080C70 8C590088 */  lw         $t9, 0x88($v0)
/* 81874 80080C74 1000000A */  b          .L80080CA0
/* 81878 80080C78 03232021 */   addu      $a0, $t9, $v1
.L80080C7C:
/* 8187C 80080C7C 00CA0019 */  multu      $a2, $t2
/* 81880 80080C80 00006012 */  mflo       $t4
/* 81884 80080C84 012C4021 */  addu       $t0, $t1, $t4
/* 81888 80080C88 8D0D0088 */  lw         $t5, 0x88($t0)
/* 8188C 80080C8C 8D0E0158 */  lw         $t6, 0x158($t0)
/* 81890 80080C90 00000000 */  nop
/* 81894 80080C94 01AE2023 */  subu       $a0, $t5, $t6
/* 81898 80080C98 00837821 */  addu       $t7, $a0, $v1
/* 8189C 80080C9C AC4F0088 */  sw         $t7, 0x88($v0)
.L80080CA0:
/* 818A0 80080CA0 4458F800 */  cfc1       $t8, $31
/* 818A4 80080CA4 24060001 */  addiu      $a2, $zero, 1
/* 818A8 80080CA8 44C6F800 */  ctc1       $a2, $31
/* 818AC 80080CAC C448012C */  lwc1       $f8, 0x12c($v0)
/* 818B0 80080CB0 3C014F00 */  lui        $at, 0x4f00
/* 818B4 80080CB4 460042A4 */  cvt.w.s    $f10, $f8
/* 818B8 80080CB8 4446F800 */  cfc1       $a2, $31
/* 818BC 80080CBC 00000000 */  nop
/* 818C0 80080CC0 30C60078 */  andi       $a2, $a2, 0x78
/* 818C4 80080CC4 10C00012 */  beqz       $a2, .L80080D10
/* 818C8 80080CC8 00000000 */   nop
/* 818CC 80080CCC 44815000 */  mtc1       $at, $f10
/* 818D0 80080CD0 24060001 */  addiu      $a2, $zero, 1
/* 818D4 80080CD4 460A4281 */  sub.s      $f10, $f8, $f10
/* 818D8 80080CD8 3C018000 */  lui        $at, 0x8000
/* 818DC 80080CDC 44C6F800 */  ctc1       $a2, $31
/* 818E0 80080CE0 00000000 */  nop
/* 818E4 80080CE4 460052A4 */  cvt.w.s    $f10, $f10
/* 818E8 80080CE8 4446F800 */  cfc1       $a2, $31
/* 818EC 80080CEC 00000000 */  nop
/* 818F0 80080CF0 30C60078 */  andi       $a2, $a2, 0x78
/* 818F4 80080CF4 14C00004 */  bnez       $a2, .L80080D08
/* 818F8 80080CF8 00000000 */   nop
/* 818FC 80080CFC 44065000 */  mfc1       $a2, $f10
/* 81900 80080D00 10000007 */  b          .L80080D20
/* 81904 80080D04 00C13025 */   or        $a2, $a2, $at
.L80080D08:
/* 81908 80080D08 10000005 */  b          .L80080D20
/* 8190C 80080D0C 2406FFFF */   addiu     $a2, $zero, -1
.L80080D10:
/* 81910 80080D10 44065000 */  mfc1       $a2, $f10
/* 81914 80080D14 00000000 */  nop
/* 81918 80080D18 04C0FFFB */  bltz       $a2, .L80080D08
/* 8191C 80080D1C 00000000 */   nop
.L80080D20:
/* 81920 80080D20 44D8F800 */  ctc1       $t8, $31
/* 81924 80080D24 30D9FFFF */  andi       $t9, $a2, 0xffff
/* 81928 80080D28 17270004 */  bne        $t9, $a3, .L80080D3C
/* 8192C 80080D2C 03203025 */   or        $a2, $t9, $zero
/* 81930 80080D30 8C4C008C */  lw         $t4, 0x8c($v0)
/* 81934 80080D34 1000000A */  b          .L80080D60
/* 81938 80080D38 01851821 */   addu      $v1, $t4, $a1
.L80080D3C:
/* 8193C 80080D3C 00CA0019 */  multu      $a2, $t2
/* 81940 80080D40 00006812 */  mflo       $t5
/* 81944 80080D44 012D4021 */  addu       $t0, $t1, $t5
/* 81948 80080D48 8D0E008C */  lw         $t6, 0x8c($t0)
/* 8194C 80080D4C 8D0F015C */  lw         $t7, 0x15c($t0)
/* 81950 80080D50 00000000 */  nop
/* 81954 80080D54 01CF1823 */  subu       $v1, $t6, $t7
/* 81958 80080D58 0065C021 */  addu       $t8, $v1, $a1
/* 8195C 80080D5C AC58008C */  sw         $t8, 0x8c($v0)
.L80080D60:
/* 81960 80080D60 4459F800 */  cfc1       $t9, $31
/* 81964 80080D64 24060001 */  addiu      $a2, $zero, 1
/* 81968 80080D68 44C6F800 */  ctc1       $a2, $31
/* 8196C 80080D6C C4500130 */  lwc1       $f16, 0x130($v0)
/* 81970 80080D70 3C014F00 */  lui        $at, 0x4f00
/* 81974 80080D74 460084A4 */  cvt.w.s    $f18, $f16
/* 81978 80080D78 4446F800 */  cfc1       $a2, $31
/* 8197C 80080D7C 00000000 */  nop
/* 81980 80080D80 30C60078 */  andi       $a2, $a2, 0x78
/* 81984 80080D84 10C00012 */  beqz       $a2, .L80080DD0
/* 81988 80080D88 00000000 */   nop
/* 8198C 80080D8C 44819000 */  mtc1       $at, $f18
/* 81990 80080D90 24060001 */  addiu      $a2, $zero, 1
/* 81994 80080D94 46128481 */  sub.s      $f18, $f16, $f18
/* 81998 80080D98 3C018000 */  lui        $at, 0x8000
/* 8199C 80080D9C 44C6F800 */  ctc1       $a2, $31
/* 819A0 80080DA0 00000000 */  nop
/* 819A4 80080DA4 460094A4 */  cvt.w.s    $f18, $f18
/* 819A8 80080DA8 4446F800 */  cfc1       $a2, $31
/* 819AC 80080DAC 00000000 */  nop
/* 819B0 80080DB0 30C60078 */  andi       $a2, $a2, 0x78
/* 819B4 80080DB4 14C00004 */  bnez       $a2, .L80080DC8
/* 819B8 80080DB8 00000000 */   nop
/* 819BC 80080DBC 44069000 */  mfc1       $a2, $f18
/* 819C0 80080DC0 10000007 */  b          .L80080DE0
/* 819C4 80080DC4 00C13025 */   or        $a2, $a2, $at
.L80080DC8:
/* 819C8 80080DC8 10000005 */  b          .L80080DE0
/* 819CC 80080DCC 2406FFFF */   addiu     $a2, $zero, -1
.L80080DD0:
/* 819D0 80080DD0 44069000 */  mfc1       $a2, $f18
/* 819D4 80080DD4 00000000 */  nop
/* 819D8 80080DD8 04C0FFFB */  bltz       $a2, .L80080DC8
/* 819DC 80080DDC 00000000 */   nop
.L80080DE0:
/* 819E0 80080DE0 44D9F800 */  ctc1       $t9, $31
/* 819E4 80080DE4 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 819E8 80080DE8 15870004 */  bne        $t4, $a3, .L80080DFC
/* 819EC 80080DEC 01803025 */   or        $a2, $t4, $zero
/* 819F0 80080DF0 8C450090 */  lw         $a1, 0x90($v0)
/* 819F4 80080DF4 10000015 */  b          .L80080E4C
/* 819F8 80080DF8 86020000 */   lh        $v0, ($s0)
.L80080DFC:
/* 819FC 80080DFC 00CA0019 */  multu      $a2, $t2
/* 81A00 80080E00 00006812 */  mflo       $t5
/* 81A04 80080E04 012D4021 */  addu       $t0, $t1, $t5
/* 81A08 80080E08 8D0E0090 */  lw         $t6, 0x90($t0)
/* 81A0C 80080E0C C508013C */  lwc1       $f8, 0x13c($t0)
/* 81A10 80080E10 448E2000 */  mtc1       $t6, $f4
/* 81A14 80080E14 00000000 */  nop
/* 81A18 80080E18 468021A0 */  cvt.s.w    $f6, $f4
/* 81A1C 80080E1C 46083281 */  sub.s      $f10, $f6, $f8
/* 81A20 80080E20 444FF800 */  cfc1       $t7, $31
/* 81A24 80080E24 00000000 */  nop
/* 81A28 80080E28 35E10003 */  ori        $at, $t7, 3
/* 81A2C 80080E2C 38210002 */  xori       $at, $at, 2
/* 81A30 80080E30 44C1F800 */  ctc1       $at, $31
/* 81A34 80080E34 00000000 */  nop
/* 81A38 80080E38 46005424 */  cvt.w.s    $f16, $f10
/* 81A3C 80080E3C 44CFF800 */  ctc1       $t7, $31
/* 81A40 80080E40 44058000 */  mfc1       $a1, $f16
/* 81A44 80080E44 00000000 */  nop
/* 81A48 80080E48 86020000 */  lh         $v0, ($s0)
.L80080E4C:
/* 81A4C 80080E4C 240B7FFF */  addiu      $t3, $zero, 0x7fff
/* 81A50 80080E50 1162001D */  beq        $t3, $v0, .L80080EC8
/* 81A54 80080E54 00000000 */   nop
/* 81A58 80080E58 44859000 */  mtc1       $a1, $f18
/* 81A5C 80080E5C 00000000 */  nop
/* 81A60 80080E60 46809020 */  cvt.s.w    $f0, $f18
/* 81A64 80080E64 00473021 */  addu       $a2, $v0, $a3
.L80080E68:
/* 81A68 80080E68 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 81A6C 80080E6C 030A0019 */  multu      $t8, $t2
/* 81A70 80080E70 2610000A */  addiu      $s0, $s0, 0xa
/* 81A74 80080E74 0000C812 */  mflo       $t9
/* 81A78 80080E78 01394021 */  addu       $t0, $t1, $t9
/* 81A7C 80080E7C C504013C */  lwc1       $f4, 0x13c($t0)
/* 81A80 80080E80 8D0C0158 */  lw         $t4, 0x158($t0)
/* 81A84 80080E84 46002180 */  add.s      $f6, $f4, $f0
/* 81A88 80080E88 8D0E015C */  lw         $t6, 0x15c($t0)
/* 81A8C 80080E8C 4458F800 */  cfc1       $t8, $31
/* 81A90 80080E90 01846821 */  addu       $t5, $t4, $a0
/* 81A94 80080E94 37010003 */  ori        $at, $t8, 3
/* 81A98 80080E98 38210002 */  xori       $at, $at, 2
/* 81A9C 80080E9C 44C1F800 */  ctc1       $at, $31
/* 81AA0 80080EA0 01C37821 */  addu       $t7, $t6, $v1
/* 81AA4 80080EA4 46003224 */  cvt.w.s    $f8, $f6
/* 81AA8 80080EA8 AD0D0088 */  sw         $t5, 0x88($t0)
/* 81AAC 80080EAC 44194000 */  mfc1       $t9, $f8
/* 81AB0 80080EB0 AD0F008C */  sw         $t7, 0x8c($t0)
/* 81AB4 80080EB4 AD190090 */  sw         $t9, 0x90($t0)
/* 81AB8 80080EB8 86020000 */  lh         $v0, ($s0)
/* 81ABC 80080EBC 44D8F800 */  ctc1       $t8, $31
/* 81AC0 80080EC0 1562FFE9 */  bne        $t3, $v0, .L80080E68
/* 81AC4 80080EC4 00473021 */   addu      $a2, $v0, $a3
.L80080EC8:
/* 81AC8 80080EC8 8FB00004 */  lw         $s0, 4($sp)
/* 81ACC 80080ECC 03E00008 */  jr         $ra
/* 81AD0 80080ED0 27BD0008 */   addiu     $sp, $sp, 8
