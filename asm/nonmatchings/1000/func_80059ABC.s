glabel func_80059ABC
/* 5A6BC 80059ABC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 5A6C0 80059AC0 AFA40048 */  sw         $a0, 0x48($sp)
/* 5A6C4 80059AC4 97AE004A */  lhu        $t6, 0x4a($sp)
/* 5A6C8 80059AC8 3C18800F */  lui        $t8, 0x800f
/* 5A6CC 80059ACC 000E7880 */  sll        $t7, $t6, 2
/* 5A6D0 80059AD0 01EE7823 */  subu       $t7, $t7, $t6
/* 5A6D4 80059AD4 000F7880 */  sll        $t7, $t7, 2
/* 5A6D8 80059AD8 01EE7821 */  addu       $t7, $t7, $t6
/* 5A6DC 80059ADC 000F7880 */  sll        $t7, $t7, 2
/* 5A6E0 80059AE0 01EE7823 */  subu       $t7, $t7, $t6
/* 5A6E4 80059AE4 000F78C0 */  sll        $t7, $t7, 3
/* 5A6E8 80059AE8 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 5A6EC 80059AEC 01F83021 */  addu       $a2, $t7, $t8
/* 5A6F0 80059AF0 84D900A4 */  lh         $t9, 0xa4($a2)
/* 5A6F4 80059AF4 84C800A2 */  lh         $t0, 0xa2($a2)
/* 5A6F8 80059AF8 84CB0088 */  lh         $t3, 0x88($a2)
/* 5A6FC 80059AFC 03284821 */  addu       $t1, $t9, $t0
/* 5A700 80059B00 84CD00A8 */  lh         $t5, 0xa8($a2)
/* 5A704 80059B04 84CE00A6 */  lh         $t6, 0xa6($a2)
/* 5A708 80059B08 84C8008C */  lh         $t0, 0x8c($a2)
/* 5A70C 80059B0C 01AE7821 */  addu       $t7, $t5, $t6
/* 5A710 80059B10 AFA5004C */  sw         $a1, 0x4c($sp)
/* 5A714 80059B14 94C500D6 */  lhu        $a1, 0xd6($a2)
/* 5A718 80059B18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5A71C 80059B1C 05210003 */  bgez       $t1, .L80059B2C
/* 5A720 80059B20 00095043 */   sra       $t2, $t1, 1
/* 5A724 80059B24 25210001 */  addiu      $at, $t1, 1
/* 5A728 80059B28 00015043 */  sra        $t2, $at, 1
.L80059B2C:
/* 5A72C 80059B2C 014B6021 */  addu       $t4, $t2, $t3
/* 5A730 80059B30 84CA0090 */  lh         $t2, 0x90($a2)
/* 5A734 80059B34 AFAC0034 */  sw         $t4, 0x34($sp)
/* 5A738 80059B38 05E10003 */  bgez       $t7, .L80059B48
/* 5A73C 80059B3C 000FC843 */   sra       $t9, $t7, 1
/* 5A740 80059B40 25E10001 */  addiu      $at, $t7, 1
/* 5A744 80059B44 0001C843 */  sra        $t9, $at, 1
.L80059B48:
/* 5A748 80059B48 3401FFFF */  ori        $at, $zero, 0xffff
/* 5A74C 80059B4C 03284821 */  addu       $t1, $t9, $t0
/* 5A750 80059B50 254B0001 */  addiu      $t3, $t2, 1
/* 5A754 80059B54 AFA90038 */  sw         $t1, 0x38($sp)
/* 5A758 80059B58 10A10048 */  beq        $a1, $at, .L80059C7C
/* 5A75C 80059B5C AFAB003C */   sw        $t3, 0x3c($sp)
/* 5A760 80059B60 00056080 */  sll        $t4, $a1, 2
/* 5A764 80059B64 01856023 */  subu       $t4, $t4, $a1
/* 5A768 80059B68 000C6080 */  sll        $t4, $t4, 2
/* 5A76C 80059B6C 01856021 */  addu       $t4, $t4, $a1
/* 5A770 80059B70 000C6080 */  sll        $t4, $t4, 2
/* 5A774 80059B74 01856023 */  subu       $t4, $t4, $a1
/* 5A778 80059B78 000C60C0 */  sll        $t4, $t4, 3
/* 5A77C 80059B7C 01981821 */  addu       $v1, $t4, $t8
/* 5A780 80059B80 846D00AC */  lh         $t5, 0xac($v1)
/* 5A784 80059B84 846E00AA */  lh         $t6, 0xaa($v1)
/* 5A788 80059B88 AFA30020 */  sw         $v1, 0x20($sp)
/* 5A78C 80059B8C AFA60028 */  sw         $a2, 0x28($sp)
/* 5A790 80059B90 0C0171B4 */  jal        func_8005C6D0
/* 5A794 80059B94 01AE2023 */   subu      $a0, $t5, $t6
/* 5A798 80059B98 8FA30020 */  lw         $v1, 0x20($sp)
/* 5A79C 80059B9C 8FA60028 */  lw         $a2, 0x28($sp)
/* 5A7A0 80059BA0 28410030 */  slti       $at, $v0, 0x30
/* 5A7A4 80059BA4 10200011 */  beqz       $at, .L80059BEC
/* 5A7A8 80059BA8 00000000 */   nop
/* 5A7AC 80059BAC 846F00AC */  lh         $t7, 0xac($v1)
/* 5A7B0 80059BB0 847900AA */  lh         $t9, 0xaa($v1)
/* 5A7B4 80059BB4 846A0088 */  lh         $t2, 0x88($v1)
/* 5A7B8 80059BB8 01F94021 */  addu       $t0, $t7, $t9
/* 5A7BC 80059BBC 05010003 */  bgez       $t0, .L80059BCC
/* 5A7C0 80059BC0 00084843 */   sra       $t1, $t0, 1
/* 5A7C4 80059BC4 25010001 */  addiu      $at, $t0, 1
/* 5A7C8 80059BC8 00014843 */  sra        $t1, $at, 1
.L80059BCC:
/* 5A7CC 80059BCC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 5A7D0 80059BD0 012A5821 */  addu       $t3, $t1, $t2
/* 5A7D4 80059BD4 016CC021 */  addu       $t8, $t3, $t4
/* 5A7D8 80059BD8 07010003 */  bgez       $t8, .L80059BE8
/* 5A7DC 80059BDC 00186843 */   sra       $t5, $t8, 1
/* 5A7E0 80059BE0 27010001 */  addiu      $at, $t8, 1
/* 5A7E4 80059BE4 00016843 */  sra        $t5, $at, 1
.L80059BE8:
/* 5A7E8 80059BE8 AFAD0034 */  sw         $t5, 0x34($sp)
.L80059BEC:
/* 5A7EC 80059BEC 846E00AE */  lh         $t6, 0xae($v1)
/* 5A7F0 80059BF0 846F00B0 */  lh         $t7, 0xb0($v1)
/* 5A7F4 80059BF4 AFA30020 */  sw         $v1, 0x20($sp)
/* 5A7F8 80059BF8 AFA60028 */  sw         $a2, 0x28($sp)
/* 5A7FC 80059BFC 0C0171B4 */  jal        func_8005C6D0
/* 5A800 80059C00 01CF2023 */   subu      $a0, $t6, $t7
/* 5A804 80059C04 8FA30020 */  lw         $v1, 0x20($sp)
/* 5A808 80059C08 8FA60028 */  lw         $a2, 0x28($sp)
/* 5A80C 80059C0C 28410030 */  slti       $at, $v0, 0x30
/* 5A810 80059C10 10200011 */  beqz       $at, .L80059C58
/* 5A814 80059C14 00000000 */   nop
/* 5A818 80059C18 847900B0 */  lh         $t9, 0xb0($v1)
/* 5A81C 80059C1C 846800AE */  lh         $t0, 0xae($v1)
/* 5A820 80059C20 846B008C */  lh         $t3, 0x8c($v1)
/* 5A824 80059C24 03284821 */  addu       $t1, $t9, $t0
/* 5A828 80059C28 05210003 */  bgez       $t1, .L80059C38
/* 5A82C 80059C2C 00095043 */   sra       $t2, $t1, 1
/* 5A830 80059C30 25210001 */  addiu      $at, $t1, 1
/* 5A834 80059C34 00015043 */  sra        $t2, $at, 1
.L80059C38:
/* 5A838 80059C38 8FB80038 */  lw         $t8, 0x38($sp)
/* 5A83C 80059C3C 014B6021 */  addu       $t4, $t2, $t3
/* 5A840 80059C40 01986821 */  addu       $t5, $t4, $t8
/* 5A844 80059C44 05A10003 */  bgez       $t5, .L80059C54
/* 5A848 80059C48 000D7043 */   sra       $t6, $t5, 1
/* 5A84C 80059C4C 25A10001 */  addiu      $at, $t5, 1
/* 5A850 80059C50 00017043 */  sra        $t6, $at, 1
.L80059C54:
/* 5A854 80059C54 AFAE0038 */  sw         $t6, 0x38($sp)
.L80059C58:
/* 5A858 80059C58 84640090 */  lh         $a0, 0x90($v1)
/* 5A85C 80059C5C 84C20090 */  lh         $v0, 0x90($a2)
/* 5A860 80059C60 24990001 */  addiu      $t9, $a0, 1
/* 5A864 80059C64 0082082A */  slt        $at, $a0, $v0
/* 5A868 80059C68 10200003 */  beqz       $at, .L80059C78
/* 5A86C 80059C6C 244F0001 */   addiu     $t7, $v0, 1
/* 5A870 80059C70 10000002 */  b          .L80059C7C
/* 5A874 80059C74 AFAF003C */   sw        $t7, 0x3c($sp)
.L80059C78:
/* 5A878 80059C78 AFB9003C */  sw         $t9, 0x3c($sp)
.L80059C7C:
/* 5A87C 80059C7C 97A4004A */  lhu        $a0, 0x4a($sp)
/* 5A880 80059C80 27A50034 */  addiu      $a1, $sp, 0x34
/* 5A884 80059C84 0C0164A8 */  jal        func_800592A0
/* 5A888 80059C88 AFA60028 */   sw        $a2, 0x28($sp)
/* 5A88C 80059C8C 8FA60028 */  lw         $a2, 0x28($sp)
/* 5A890 80059C90 14400003 */  bnez       $v0, .L80059CA0
/* 5A894 80059C94 3045FFFF */   andi      $a1, $v0, 0xffff
/* 5A898 80059C98 10000037 */  b          .L80059D78
/* 5A89C 80059C9C 00A01025 */   or        $v0, $a1, $zero
.L80059CA0:
/* 5A8A0 80059CA0 3048FFFF */  andi       $t0, $v0, 0xffff
/* 5A8A4 80059CA4 3C014270 */  lui        $at, 0x4270
/* 5A8A8 80059CA8 44812000 */  mtc1       $at, $f4
/* 5A8AC 80059CAC 00084880 */  sll        $t1, $t0, 2
/* 5A8B0 80059CB0 C7A2004C */  lwc1       $f2, 0x4c($sp)
/* 5A8B4 80059CB4 01284823 */  subu       $t1, $t1, $t0
/* 5A8B8 80059CB8 3C0141F0 */  lui        $at, 0x41f0
/* 5A8BC 80059CBC 44814000 */  mtc1       $at, $f8
/* 5A8C0 80059CC0 00094880 */  sll        $t1, $t1, 2
/* 5A8C4 80059CC4 01284821 */  addu       $t1, $t1, $t0
/* 5A8C8 80059CC8 46001187 */  neg.s      $f6, $f2
/* 5A8CC 80059CCC 00000000 */  nop
/* 5A8D0 80059CD0 46083003 */  div.s      $f0, $f6, $f8
/* 5A8D4 80059CD4 00094880 */  sll        $t1, $t1, 2
/* 5A8D8 80059CD8 01284823 */  subu       $t1, $t1, $t0
/* 5A8DC 80059CDC 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 5A8E0 80059CE0 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 5A8E4 80059CE4 000948C0 */  sll        $t1, $t1, 3
/* 5A8E8 80059CE8 012A1821 */  addu       $v1, $t1, $t2
/* 5A8EC 80059CEC 946B0094 */  lhu        $t3, 0x94($v1)
/* 5A8F0 80059CF0 2418019A */  addiu      $t8, $zero, 0x19a
/* 5A8F4 80059CF4 240D00E0 */  addiu      $t5, $zero, 0xe0
/* 5A8F8 80059CF8 240EFFFB */  addiu      $t6, $zero, -5
/* 5A8FC 80059CFC 356C0209 */  ori        $t4, $t3, 0x209
/* 5A900 80059D00 A46C0094 */  sh         $t4, 0x94($v1)
/* 5A904 80059D04 A4780084 */  sh         $t8, 0x84($v1)
/* 5A908 80059D08 A06D009F */  sb         $t5, 0x9f($v1)
/* 5A90C 80059D0C AC6E0154 */  sw         $t6, 0x154($v1)
/* 5A910 80059D10 E4600114 */  swc1       $f0, 0x114($v1)
/* 5A914 80059D14 E4600110 */  swc1       $f0, 0x110($v1)
/* 5A918 80059D18 E4640148 */  swc1       $f4, 0x148($v1)
/* 5A91C 80059D1C E46200B4 */  swc1       $f2, 0xb4($v1)
/* 5A920 80059D20 E46200B8 */  swc1       $f2, 0xb8($v1)
/* 5A924 80059D24 8CCF0080 */  lw         $t7, 0x80($a2)
/* 5A928 80059D28 3C0A8022 */  lui        $t2, 0x8022
/* 5A92C 80059D2C 31F90020 */  andi       $t9, $t7, 0x20
/* 5A930 80059D30 17200004 */  bnez       $t9, .L80059D44
/* 5A934 80059D34 354AD568 */   ori       $t2, $t2, 0xd568
/* 5A938 80059D38 3C080022 */  lui        $t0, 0x22
/* 5A93C 80059D3C 10000003 */  b          .L80059D4C
/* 5A940 80059D40 AC680150 */   sw        $t0, 0x150($v1)
.L80059D44:
/* 5A944 80059D44 3C09FFDE */  lui        $t1, 0xffde
/* 5A948 80059D48 AC690150 */  sw         $t1, 0x150($v1)
.L80059D4C:
/* 5A94C 80059D4C 00055880 */  sll        $t3, $a1, 2
/* 5A950 80059D50 01655823 */  subu       $t3, $t3, $a1
/* 5A954 80059D54 000B5880 */  sll        $t3, $t3, 2
/* 5A958 80059D58 01655821 */  addu       $t3, $t3, $a1
/* 5A95C 80059D5C 000B5880 */  sll        $t3, $t3, 2
/* 5A960 80059D60 01655823 */  subu       $t3, $t3, $a1
/* 5A964 80059D64 000B58C0 */  sll        $t3, $t3, 3
/* 5A968 80059D68 3C01800F */  lui        $at, %hi(D_800EF69C)
/* 5A96C 80059D6C 002B0821 */  addu       $at, $at, $t3
/* 5A970 80059D70 AC2AF69C */  sw         $t2, %lo(D_800EF69C)($at)
/* 5A974 80059D74 00A01025 */  or         $v0, $a1, $zero
.L80059D78:
/* 5A978 80059D78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5A97C 80059D7C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 5A980 80059D80 03E00008 */  jr         $ra
/* 5A984 80059D84 00000000 */   nop
