glabel func_80032900
/* 33500 80032900 308EFFFF */  andi       $t6, $a0, 0xffff
/* 33504 80032904 24080198 */  addiu      $t0, $zero, 0x198
/* 33508 80032908 01C80019 */  multu      $t6, $t0
/* 3350C 8003290C 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 33510 80032910 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 33514 80032914 4458F800 */  cfc1       $t8, $31
/* 33518 80032918 24020001 */  addiu      $v0, $zero, 1
/* 3351C 8003291C 44C2F800 */  ctc1       $v0, $31
/* 33520 80032920 AFA40000 */  sw         $a0, ($sp)
/* 33524 80032924 01C02025 */  or         $a0, $t6, $zero
/* 33528 80032928 3C014F00 */  lui        $at, 0x4f00
/* 3352C 8003292C 00007812 */  mflo       $t7
/* 33530 80032930 00EF1821 */  addu       $v1, $a3, $t7
/* 33534 80032934 C4640130 */  lwc1       $f4, 0x130($v1)
/* 33538 80032938 00000000 */  nop
/* 3353C 8003293C 460021A4 */  cvt.w.s    $f6, $f4
/* 33540 80032940 4442F800 */  cfc1       $v0, $31
/* 33544 80032944 00000000 */  nop
/* 33548 80032948 30420078 */  andi       $v0, $v0, 0x78
/* 3354C 8003294C 10400012 */  beqz       $v0, .L80032998
/* 33550 80032950 00000000 */   nop
/* 33554 80032954 44813000 */  mtc1       $at, $f6
/* 33558 80032958 24020001 */  addiu      $v0, $zero, 1
/* 3355C 8003295C 46062181 */  sub.s      $f6, $f4, $f6
/* 33560 80032960 3C018000 */  lui        $at, 0x8000
/* 33564 80032964 44C2F800 */  ctc1       $v0, $31
/* 33568 80032968 00000000 */  nop
/* 3356C 8003296C 460031A4 */  cvt.w.s    $f6, $f6
/* 33570 80032970 4442F800 */  cfc1       $v0, $31
/* 33574 80032974 00000000 */  nop
/* 33578 80032978 30420078 */  andi       $v0, $v0, 0x78
/* 3357C 8003297C 14400004 */  bnez       $v0, .L80032990
/* 33580 80032980 00000000 */   nop
/* 33584 80032984 44023000 */  mfc1       $v0, $f6
/* 33588 80032988 10000007 */  b          .L800329A8
/* 3358C 8003298C 00411025 */   or        $v0, $v0, $at
.L80032990:
/* 33590 80032990 10000005 */  b          .L800329A8
/* 33594 80032994 2402FFFF */   addiu     $v0, $zero, -1
.L80032998:
/* 33598 80032998 44023000 */  mfc1       $v0, $f6
/* 3359C 8003299C 00000000 */  nop
/* 335A0 800329A0 0440FFFB */  bltz       $v0, .L80032990
/* 335A4 800329A4 00000000 */   nop
.L800329A8:
/* 335A8 800329A8 44D8F800 */  ctc1       $t8, $31
/* 335AC 800329AC 24050001 */  addiu      $a1, $zero, 1
/* 335B0 800329B0 C4680134 */  lwc1       $f8, 0x134($v1)
/* 335B4 800329B4 4449F800 */  cfc1       $t1, $31
/* 335B8 800329B8 44C5F800 */  ctc1       $a1, $31
/* 335BC 800329BC 3059FFFF */  andi       $t9, $v0, 0xffff
/* 335C0 800329C0 460042A4 */  cvt.w.s    $f10, $f8
/* 335C4 800329C4 03201025 */  or         $v0, $t9, $zero
/* 335C8 800329C8 4445F800 */  cfc1       $a1, $31
/* 335CC 800329CC 00025880 */  sll        $t3, $v0, 2
/* 335D0 800329D0 30A50078 */  andi       $a1, $a1, 0x78
/* 335D4 800329D4 10A00013 */  beqz       $a1, .L80032A24
/* 335D8 800329D8 01625823 */   subu      $t3, $t3, $v0
/* 335DC 800329DC 3C014F00 */  lui        $at, 0x4f00
/* 335E0 800329E0 44815000 */  mtc1       $at, $f10
/* 335E4 800329E4 24050001 */  addiu      $a1, $zero, 1
/* 335E8 800329E8 460A4281 */  sub.s      $f10, $f8, $f10
/* 335EC 800329EC 3C018000 */  lui        $at, 0x8000
/* 335F0 800329F0 44C5F800 */  ctc1       $a1, $31
/* 335F4 800329F4 00000000 */  nop
/* 335F8 800329F8 460052A4 */  cvt.w.s    $f10, $f10
/* 335FC 800329FC 4445F800 */  cfc1       $a1, $31
/* 33600 80032A00 00000000 */  nop
/* 33604 80032A04 30A50078 */  andi       $a1, $a1, 0x78
/* 33608 80032A08 14A00004 */  bnez       $a1, .L80032A1C
/* 3360C 80032A0C 00000000 */   nop
/* 33610 80032A10 44055000 */  mfc1       $a1, $f10
/* 33614 80032A14 10000007 */  b          .L80032A34
/* 33618 80032A18 00A12825 */   or        $a1, $a1, $at
.L80032A1C:
/* 3361C 80032A1C 10000005 */  b          .L80032A34
/* 33620 80032A20 2405FFFF */   addiu     $a1, $zero, -1
.L80032A24:
/* 33624 80032A24 44055000 */  mfc1       $a1, $f10
/* 33628 80032A28 00000000 */  nop
/* 3362C 80032A2C 04A0FFFB */  bltz       $a1, .L80032A1C
/* 33630 80032A30 00000000 */   nop
.L80032A34:
/* 33634 80032A34 000B5880 */  sll        $t3, $t3, 2
/* 33638 80032A38 01625821 */  addu       $t3, $t3, $v0
/* 3363C 80032A3C 000B5880 */  sll        $t3, $t3, 2
/* 33640 80032A40 01625823 */  subu       $t3, $t3, $v0
/* 33644 80032A44 30AAFFFF */  andi       $t2, $a1, 0xffff
/* 33648 80032A48 000B58C0 */  sll        $t3, $t3, 3
/* 3364C 80032A4C 00EB6021 */  addu       $t4, $a3, $t3
/* 33650 80032A50 000A6880 */  sll        $t5, $t2, 2
/* 33654 80032A54 018D3021 */  addu       $a2, $t4, $t5
/* 33658 80032A58 8CCE0150 */  lw         $t6, 0x150($a2)
/* 3365C 80032A5C 2401CE0F */  addiu      $at, $zero, -0x31f1
/* 33660 80032A60 01C17824 */  and        $t7, $t6, $at
/* 33664 80032A64 44C9F800 */  ctc1       $t1, $31
/* 33668 80032A68 31F90002 */  andi       $t9, $t7, 2
/* 3366C 80032A6C 13200008 */  beqz       $t9, .L80032A90
/* 33670 80032A70 ACCF0150 */   sw        $t7, 0x150($a2)
/* 33674 80032A74 8C6A0150 */  lw         $t2, 0x150($v1)
/* 33678 80032A78 8C690080 */  lw         $t1, 0x80($v1)
/* 3367C 80032A7C 240BFFFF */  addiu      $t3, $zero, -1
/* 33680 80032A80 016A6023 */  subu       $t4, $t3, $t2
/* 33684 80032A84 012C6824 */  and        $t5, $t1, $t4
/* 33688 80032A88 100000EA */  b          .L80032E34
/* 3368C 80032A8C AC6D0080 */   sw        $t5, 0x80($v1)
.L80032A90:
/* 33690 80032A90 00480019 */  multu      $v0, $t0
/* 33694 80032A94 8C6E0080 */  lw         $t6, 0x80($v1)
/* 33698 80032A98 8C6F0150 */  lw         $t7, 0x150($v1)
/* 3369C 80032A9C 8C690098 */  lw         $t1, 0x98($v1)
/* 336A0 80032AA0 01CFC025 */  or         $t8, $t6, $t7
/* 336A4 80032AA4 AC780080 */  sw         $t8, 0x80($v1)
/* 336A8 80032AA8 312C0200 */  andi       $t4, $t1, 0x200
/* 336AC 80032AAC 0000C812 */  mflo       $t9
/* 336B0 80032AB0 00F92821 */  addu       $a1, $a3, $t9
/* 336B4 80032AB4 8CAB00EC */  lw         $t3, 0xec($a1)
/* 336B8 80032AB8 00000000 */  nop
/* 336BC 80032ABC AC6B00EC */  sw         $t3, 0xec($v1)
/* 336C0 80032AC0 8CAA00F0 */  lw         $t2, 0xf0($a1)
/* 336C4 80032AC4 1180000D */  beqz       $t4, .L80032AFC
/* 336C8 80032AC8 AC6A00F0 */   sw        $t2, 0xf0($v1)
/* 336CC 80032ACC 946F00D6 */  lhu        $t7, 0xd6($v1)
/* 336D0 80032AD0 2401EFFF */  addiu      $at, $zero, -0x1001
/* 336D4 80032AD4 01E80019 */  multu      $t7, $t0
/* 336D8 80032AD8 03017024 */  and        $t6, $t8, $at
/* 336DC 80032ADC AC6E0080 */  sw         $t6, 0x80($v1)
/* 336E0 80032AE0 0000C012 */  mflo       $t8
/* 336E4 80032AE4 00F8C821 */  addu       $t9, $a3, $t8
/* 336E8 80032AE8 A72400D6 */  sh         $a0, 0xd6($t9)
/* 336EC 80032AEC 8CCB0150 */  lw         $t3, 0x150($a2)
/* 336F0 80032AF0 00000000 */  nop
/* 336F4 80032AF4 356A1000 */  ori        $t2, $t3, 0x1000
/* 336F8 80032AF8 ACCA0150 */  sw         $t2, 0x150($a2)
.L80032AFC:
/* 336FC 80032AFC 8C690080 */  lw         $t1, 0x80($v1)
/* 33700 80032B00 00000000 */  nop
/* 33704 80032B04 00096380 */  sll        $t4, $t1, 0xe
/* 33708 80032B08 05810033 */  bgez       $t4, .L80032BD8
/* 3370C 80032B0C 00000000 */   nop
/* 33710 80032B10 8CA200F0 */  lw         $v0, 0xf0($a1)
/* 33714 80032B14 00000000 */  nop
/* 33718 80032B18 0441000B */  bgez       $v0, .L80032B48
/* 3371C 80032B1C 00000000 */   nop
/* 33720 80032B20 8C6D0098 */  lw         $t5, 0x98($v1)
/* 33724 80032B24 00000000 */  nop
/* 33728 80032B28 31AE0020 */  andi       $t6, $t5, 0x20
/* 3372C 80032B2C 11C00006 */  beqz       $t6, .L80032B48
/* 33730 80032B30 00000000 */   nop
/* 33734 80032B34 8CCF0150 */  lw         $t7, 0x150($a2)
/* 33738 80032B38 00000000 */  nop
/* 3373C 80032B3C 35F80080 */  ori        $t8, $t7, 0x80
/* 33740 80032B40 1000000C */  b          .L80032B74
/* 33744 80032B44 ACD80150 */   sw        $t8, 0x150($a2)
.L80032B48:
/* 33748 80032B48 1840000A */  blez       $v0, .L80032B74
/* 3374C 80032B4C 00000000 */   nop
/* 33750 80032B50 8C790098 */  lw         $t9, 0x98($v1)
/* 33754 80032B54 00000000 */  nop
/* 33758 80032B58 332B0010 */  andi       $t3, $t9, 0x10
/* 3375C 80032B5C 11600005 */  beqz       $t3, .L80032B74
/* 33760 80032B60 00000000 */   nop
/* 33764 80032B64 8CCA0150 */  lw         $t2, 0x150($a2)
/* 33768 80032B68 00000000 */  nop
/* 3376C 80032B6C 35490040 */  ori        $t1, $t2, 0x40
/* 33770 80032B70 ACC90150 */  sw         $t1, 0x150($a2)
.L80032B74:
/* 33774 80032B74 8CA200EC */  lw         $v0, 0xec($a1)
/* 33778 80032B78 00000000 */  nop
/* 3377C 80032B7C 0441000B */  bgez       $v0, .L80032BAC
/* 33780 80032B80 00000000 */   nop
/* 33784 80032B84 8C6C0098 */  lw         $t4, 0x98($v1)
/* 33788 80032B88 00000000 */  nop
/* 3378C 80032B8C 318D0004 */  andi       $t5, $t4, 4
/* 33790 80032B90 11A00006 */  beqz       $t5, .L80032BAC
/* 33794 80032B94 00000000 */   nop
/* 33798 80032B98 8CCE0150 */  lw         $t6, 0x150($a2)
/* 3379C 80032B9C 00000000 */  nop
/* 337A0 80032BA0 35CF0010 */  ori        $t7, $t6, 0x10
/* 337A4 80032BA4 1000000C */  b          .L80032BD8
/* 337A8 80032BA8 ACCF0150 */   sw        $t7, 0x150($a2)
.L80032BAC:
/* 337AC 80032BAC 1840000A */  blez       $v0, .L80032BD8
/* 337B0 80032BB0 00000000 */   nop
/* 337B4 80032BB4 8C780098 */  lw         $t8, 0x98($v1)
/* 337B8 80032BB8 00000000 */  nop
/* 337BC 80032BBC 33190008 */  andi       $t9, $t8, 8
/* 337C0 80032BC0 13200005 */  beqz       $t9, .L80032BD8
/* 337C4 80032BC4 00000000 */   nop
/* 337C8 80032BC8 8CCB0150 */  lw         $t3, 0x150($a2)
/* 337CC 80032BCC 00000000 */  nop
/* 337D0 80032BD0 356A0020 */  ori        $t2, $t3, 0x20
/* 337D4 80032BD4 ACCA0150 */  sw         $t2, 0x150($a2)
.L80032BD8:
/* 337D8 80032BD8 8CA90080 */  lw         $t1, 0x80($a1)
/* 337DC 80032BDC 00000000 */  nop
/* 337E0 80032BE0 312C0020 */  andi       $t4, $t1, 0x20
/* 337E4 80032BE4 11800031 */  beqz       $t4, .L80032CAC
/* 337E8 80032BE8 00000000 */   nop
/* 337EC 80032BEC 8C6D0154 */  lw         $t5, 0x154($v1)
/* 337F0 80032BF0 84AE0088 */  lh         $t6, 0x88($a1)
/* 337F4 80032BF4 448D9000 */  mtc1       $t5, $f18
/* 337F8 80032BF8 C4B000B4 */  lwc1       $f16, 0xb4($a1)
/* 337FC 80032BFC 46809120 */  cvt.s.w    $f4, $f18
/* 33800 80032C00 448E4000 */  mtc1       $t6, $f8
/* 33804 80032C04 46048182 */  mul.s      $f6, $f16, $f4
/* 33808 80032C08 468042A0 */  cvt.s.w    $f10, $f8
/* 3380C 80032C0C C4680118 */  lwc1       $f8, 0x118($v1)
/* 33810 80032C10 46065481 */  sub.s      $f18, $f10, $f6
/* 33814 80032C14 444FF800 */  cfc1       $t7, $31
/* 33818 80032C18 00000000 */  nop
/* 3381C 80032C1C 35E10003 */  ori        $at, $t7, 3
/* 33820 80032C20 38210002 */  xori       $at, $at, 2
/* 33824 80032C24 44C1F800 */  ctc1       $at, $31
/* 33828 80032C28 00000000 */  nop
/* 3382C 80032C2C 46009424 */  cvt.w.s    $f16, $f18
/* 33830 80032C30 44188000 */  mfc1       $t8, $f16
/* 33834 80032C34 44CFF800 */  ctc1       $t7, $31
/* 33838 80032C38 A4780088 */  sh         $t8, 0x88($v1)
/* 3383C 80032C3C C4A400B4 */  lwc1       $f4, 0xb4($a1)
/* 33840 80032C40 46004287 */  neg.s      $f10, $f8
/* 33844 80032C44 460A2182 */  mul.s      $f6, $f4, $f10
/* 33848 80032C48 C468011C */  lwc1       $f8, 0x11c($v1)
/* 3384C 80032C4C 4459F800 */  cfc1       $t9, $31
/* 33850 80032C50 00000000 */  nop
/* 33854 80032C54 37210003 */  ori        $at, $t9, 3
/* 33858 80032C58 38210002 */  xori       $at, $at, 2
/* 3385C 80032C5C 44C1F800 */  ctc1       $at, $31
/* 33860 80032C60 00000000 */  nop
/* 33864 80032C64 460034A4 */  cvt.w.s    $f18, $f6
/* 33868 80032C68 440B9000 */  mfc1       $t3, $f18
/* 3386C 80032C6C 44D9F800 */  ctc1       $t9, $31
/* 33870 80032C70 A46B00AC */  sh         $t3, 0xac($v1)
/* 33874 80032C74 C4B000B4 */  lwc1       $f16, 0xb4($a1)
/* 33878 80032C78 46004107 */  neg.s      $f4, $f8
/* 3387C 80032C7C 46048282 */  mul.s      $f10, $f16, $f4
/* 33880 80032C80 444AF800 */  cfc1       $t2, $31
/* 33884 80032C84 00000000 */  nop
/* 33888 80032C88 35410003 */  ori        $at, $t2, 3
/* 3388C 80032C8C 38210002 */  xori       $at, $at, 2
/* 33890 80032C90 44C1F800 */  ctc1       $at, $31
/* 33894 80032C94 00000000 */  nop
/* 33898 80032C98 460051A4 */  cvt.w.s    $f6, $f10
/* 3389C 80032C9C 44093000 */  mfc1       $t1, $f6
/* 338A0 80032CA0 44CAF800 */  ctc1       $t2, $31
/* 338A4 80032CA4 10000030 */  b          .L80032D68
/* 338A8 80032CA8 A46900AA */   sh        $t1, 0xaa($v1)
.L80032CAC:
/* 338AC 80032CAC 8C6C0154 */  lw         $t4, 0x154($v1)
/* 338B0 80032CB0 84AD0088 */  lh         $t5, 0x88($a1)
/* 338B4 80032CB4 448C4000 */  mtc1       $t4, $f8
/* 338B8 80032CB8 C4B200B4 */  lwc1       $f18, 0xb4($a1)
/* 338BC 80032CBC 46804420 */  cvt.s.w    $f16, $f8
/* 338C0 80032CC0 448D5000 */  mtc1       $t5, $f10
/* 338C4 80032CC4 46109102 */  mul.s      $f4, $f18, $f16
/* 338C8 80032CC8 468051A0 */  cvt.s.w    $f6, $f10
/* 338CC 80032CCC C46A0118 */  lwc1       $f10, 0x118($v1)
/* 338D0 80032CD0 46062200 */  add.s      $f8, $f4, $f6
/* 338D4 80032CD4 444EF800 */  cfc1       $t6, $31
/* 338D8 80032CD8 00000000 */  nop
/* 338DC 80032CDC 35C10003 */  ori        $at, $t6, 3
/* 338E0 80032CE0 38210002 */  xori       $at, $at, 2
/* 338E4 80032CE4 44C1F800 */  ctc1       $at, $31
/* 338E8 80032CE8 00000000 */  nop
/* 338EC 80032CEC 460044A4 */  cvt.w.s    $f18, $f8
/* 338F0 80032CF0 440F9000 */  mfc1       $t7, $f18
/* 338F4 80032CF4 44CEF800 */  ctc1       $t6, $31
/* 338F8 80032CF8 A46F0088 */  sh         $t7, 0x88($v1)
/* 338FC 80032CFC C4B000B4 */  lwc1       $f16, 0xb4($a1)
/* 33900 80032D00 C472011C */  lwc1       $f18, 0x11c($v1)
/* 33904 80032D04 460A8102 */  mul.s      $f4, $f16, $f10
/* 33908 80032D08 4458F800 */  cfc1       $t8, $31
/* 3390C 80032D0C 00000000 */  nop
/* 33910 80032D10 37010003 */  ori        $at, $t8, 3
/* 33914 80032D14 38210002 */  xori       $at, $at, 2
/* 33918 80032D18 44C1F800 */  ctc1       $at, $31
/* 3391C 80032D1C 00000000 */  nop
/* 33920 80032D20 460021A4 */  cvt.w.s    $f6, $f4
/* 33924 80032D24 44193000 */  mfc1       $t9, $f6
/* 33928 80032D28 44D8F800 */  ctc1       $t8, $31
/* 3392C 80032D2C A47900AA */  sh         $t9, 0xaa($v1)
/* 33930 80032D30 C4A800B4 */  lwc1       $f8, 0xb4($a1)
/* 33934 80032D34 00000000 */  nop
/* 33938 80032D38 46124402 */  mul.s      $f16, $f8, $f18
/* 3393C 80032D3C 444BF800 */  cfc1       $t3, $31
/* 33940 80032D40 00000000 */  nop
/* 33944 80032D44 35610003 */  ori        $at, $t3, 3
/* 33948 80032D48 38210002 */  xori       $at, $at, 2
/* 3394C 80032D4C 44C1F800 */  ctc1       $at, $31
/* 33950 80032D50 00000000 */  nop
/* 33954 80032D54 460082A4 */  cvt.w.s    $f10, $f16
/* 33958 80032D58 440A5000 */  mfc1       $t2, $f10
/* 3395C 80032D5C 44CBF800 */  ctc1       $t3, $31
/* 33960 80032D60 A46A00AC */  sh         $t2, 0xac($v1)
/* 33964 80032D64 00000000 */  nop
.L80032D68:
/* 33968 80032D68 8C690158 */  lw         $t1, 0x158($v1)
/* 3396C 80032D6C 84AC008C */  lh         $t4, 0x8c($a1)
/* 33970 80032D70 44893000 */  mtc1       $t1, $f6
/* 33974 80032D74 C4A400B8 */  lwc1       $f4, 0xb8($a1)
/* 33978 80032D78 46803220 */  cvt.s.w    $f8, $f6
/* 3397C 80032D7C 448C8000 */  mtc1       $t4, $f16
/* 33980 80032D80 8C6A015C */  lw         $t2, 0x15c($v1)
/* 33984 80032D84 46082482 */  mul.s      $f18, $f4, $f8
/* 33988 80032D88 468082A0 */  cvt.s.w    $f10, $f16
/* 3398C 80032D8C C4700110 */  lwc1       $f16, 0x110($v1)
/* 33990 80032D90 460A9180 */  add.s      $f6, $f18, $f10
/* 33994 80032D94 444DF800 */  cfc1       $t5, $31
/* 33998 80032D98 00000000 */  nop
/* 3399C 80032D9C 35A10003 */  ori        $at, $t5, 3
/* 339A0 80032DA0 38210002 */  xori       $at, $at, 2
/* 339A4 80032DA4 44C1F800 */  ctc1       $at, $31
/* 339A8 80032DA8 00000000 */  nop
/* 339AC 80032DAC 46003124 */  cvt.w.s    $f4, $f6
/* 339B0 80032DB0 440E2000 */  mfc1       $t6, $f4
/* 339B4 80032DB4 44CDF800 */  ctc1       $t5, $31
/* 339B8 80032DB8 A46E008C */  sh         $t6, 0x8c($v1)
/* 339BC 80032DBC C4A800B8 */  lwc1       $f8, 0xb8($a1)
/* 339C0 80032DC0 C4640114 */  lwc1       $f4, 0x114($v1)
/* 339C4 80032DC4 46104482 */  mul.s      $f18, $f8, $f16
/* 339C8 80032DC8 444FF800 */  cfc1       $t7, $31
/* 339CC 80032DCC 00000000 */  nop
/* 339D0 80032DD0 35E10003 */  ori        $at, $t7, 3
/* 339D4 80032DD4 38210002 */  xori       $at, $at, 2
/* 339D8 80032DD8 44C1F800 */  ctc1       $at, $31
/* 339DC 80032DDC 00000000 */  nop
/* 339E0 80032DE0 460092A4 */  cvt.w.s    $f10, $f18
/* 339E4 80032DE4 44185000 */  mfc1       $t8, $f10
/* 339E8 80032DE8 44CFF800 */  ctc1       $t7, $31
/* 339EC 80032DEC A47800AE */  sh         $t8, 0xae($v1)
/* 339F0 80032DF0 C4A600B8 */  lwc1       $f6, 0xb8($a1)
/* 339F4 80032DF4 00000000 */  nop
/* 339F8 80032DF8 46043202 */  mul.s      $f8, $f6, $f4
/* 339FC 80032DFC 4459F800 */  cfc1       $t9, $31
/* 33A00 80032E00 00000000 */  nop
/* 33A04 80032E04 37210003 */  ori        $at, $t9, 3
/* 33A08 80032E08 38210002 */  xori       $at, $at, 2
/* 33A0C 80032E0C 44C1F800 */  ctc1       $at, $31
/* 33A10 80032E10 00000000 */  nop
/* 33A14 80032E14 46004424 */  cvt.w.s    $f16, $f8
/* 33A18 80032E18 440B8000 */  mfc1       $t3, $f16
/* 33A1C 80032E1C 44D9F800 */  ctc1       $t9, $31
/* 33A20 80032E20 A46B00B0 */  sh         $t3, 0xb0($v1)
/* 33A24 80032E24 8CA90090 */  lw         $t1, 0x90($a1)
/* 33A28 80032E28 00000000 */  nop
/* 33A2C 80032E2C 01496021 */  addu       $t4, $t2, $t1
/* 33A30 80032E30 AC6C0090 */  sw         $t4, 0x90($v1)
.L80032E34:
/* 33A34 80032E34 8CCD0150 */  lw         $t5, 0x150($a2)
/* 33A38 80032E38 3C01FFDF */  lui        $at, 0xffdf
/* 33A3C 80032E3C 31AE0001 */  andi       $t6, $t5, 1
/* 33A40 80032E40 11C00002 */  beqz       $t6, .L80032E4C
/* 33A44 80032E44 00000000 */   nop
/* 33A48 80032E48 AC600080 */  sw         $zero, 0x80($v1)
.L80032E4C:
/* 33A4C 80032E4C 8C6F0098 */  lw         $t7, 0x98($v1)
/* 33A50 80032E50 3421F9FF */  ori        $at, $at, 0xf9ff
/* 33A54 80032E54 01E1C024 */  and        $t8, $t7, $at
/* 33A58 80032E58 03E00008 */  jr         $ra
/* 33A5C 80032E5C AC780098 */   sw        $t8, 0x98($v1)
