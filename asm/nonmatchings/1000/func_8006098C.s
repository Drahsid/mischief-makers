glabel func_8006098C
/* 6158C 8006098C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 61590 80060990 AFA40048 */  sw         $a0, 0x48($sp)
/* 61594 80060994 97AE004A */  lhu        $t6, 0x4a($sp)
/* 61598 80060998 3C18800F */  lui        $t8, 0x800f
/* 6159C 8006099C 000E7880 */  sll        $t7, $t6, 2
/* 615A0 800609A0 01EE7823 */  subu       $t7, $t7, $t6
/* 615A4 800609A4 000F7880 */  sll        $t7, $t7, 2
/* 615A8 800609A8 01EE7821 */  addu       $t7, $t7, $t6
/* 615AC 800609AC 000F7880 */  sll        $t7, $t7, 2
/* 615B0 800609B0 01EE7823 */  subu       $t7, $t7, $t6
/* 615B4 800609B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 615B8 800609B8 000F78C0 */  sll        $t7, $t7, 3
/* 615BC 800609BC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 615C0 800609C0 01F88021 */  addu       $s0, $t7, $t8
/* 615C4 800609C4 920500D1 */  lbu        $a1, 0xd1($s0)
/* 615C8 800609C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 615CC 800609CC 14A0001C */  bnez       $a1, .L80060A40
/* 615D0 800609D0 3C01800F */   lui       $at, %hi(D_800EC140)
/* 615D4 800609D4 C420C140 */  lwc1       $f0, %lo(D_800EC140)($at)
/* 615D8 800609D8 96190094 */  lhu        $t9, 0x94($s0)
/* 615DC 800609DC 2409015C */  addiu      $t1, $zero, 0x15c
/* 615E0 800609E0 240A0001 */  addiu      $t2, $zero, 1
/* 615E4 800609E4 240B0002 */  addiu      $t3, $zero, 2
/* 615E8 800609E8 240C001E */  addiu      $t4, $zero, 0x1e
/* 615EC 800609EC 240D00D2 */  addiu      $t5, $zero, 0xd2
/* 615F0 800609F0 97A5004A */  lhu        $a1, 0x4a($sp)
/* 615F4 800609F4 37280001 */  ori        $t0, $t9, 1
/* 615F8 800609F8 A6080094 */  sh         $t0, 0x94($s0)
/* 615FC 800609FC A6090084 */  sh         $t1, 0x84($s0)
/* 61600 80060A00 A20A00DE */  sb         $t2, 0xde($s0)
/* 61604 80060A04 A20000DF */  sb         $zero, 0xdf($s0)
/* 61608 80060A08 A20000DA */  sb         $zero, 0xda($s0)
/* 6160C 80060A0C A20B00DB */  sb         $t3, 0xdb($s0)
/* 61610 80060A10 A60000E4 */  sh         $zero, 0xe4($s0)
/* 61614 80060A14 AE000154 */  sw         $zero, 0x154($s0)
/* 61618 80060A18 AE0C0158 */  sw         $t4, 0x158($s0)
/* 6161C 80060A1C AE0D015C */  sw         $t5, 0x15c($s0)
/* 61620 80060A20 240400C3 */  addiu      $a0, $zero, 0xc3
/* 61624 80060A24 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 61628 80060A28 0C000DB2 */  jal        func_800036C8
/* 6162C 80060A2C E60000B4 */   swc1      $f0, 0xb4($s0)
/* 61630 80060A30 240E0001 */  addiu      $t6, $zero, 1
/* 61634 80060A34 A60E00D0 */  sh         $t6, 0xd0($s0)
/* 61638 80060A38 920500D1 */  lbu        $a1, 0xd1($s0)
/* 6163C 80060A3C 00000000 */  nop
.L80060A40:
/* 61640 80060A40 8E0F0098 */  lw         $t7, 0x98($s0)
/* 61644 80060A44 24010064 */  addiu      $at, $zero, 0x64
/* 61648 80060A48 31F80200 */  andi       $t8, $t7, 0x200
/* 6164C 80060A4C 1300000A */  beqz       $t8, .L80060A78
/* 61650 80060A50 00000000 */   nop
/* 61654 80060A54 10A10009 */  beq        $a1, $at, .L80060A7C
/* 61658 80060A58 24010064 */   addiu     $at, $zero, 0x64
/* 6165C 80060A5C 97A4004A */  lhu        $a0, 0x4a($sp)
/* 61660 80060A60 0C016249 */  jal        func_80058924
/* 61664 80060A64 00000000 */   nop
/* 61668 80060A68 24190064 */  addiu      $t9, $zero, 0x64
/* 6166C 80060A6C A61900D0 */  sh         $t9, 0xd0($s0)
/* 61670 80060A70 920500D1 */  lbu        $a1, 0xd1($s0)
/* 61674 80060A74 00000000 */  nop
.L80060A78:
/* 61678 80060A78 24010064 */  addiu      $at, $zero, 0x64
.L80060A7C:
/* 6167C 80060A7C 10A10005 */  beq        $a1, $at, .L80060A94
/* 61680 80060A80 24010065 */   addiu     $at, $zero, 0x65
/* 61684 80060A84 10A10021 */  beq        $a1, $at, .L80060B0C
/* 61688 80060A88 00000000 */   nop
/* 6168C 80060A8C 10000077 */  b          .L80060C6C
/* 61690 80060A90 00000000 */   nop
.L80060A94:
/* 61694 80060A94 8E020098 */  lw         $v0, 0x98($s0)
/* 61698 80060A98 3C01FF3C */  lui        $at, 0xff3c
/* 6169C 80060A9C 30480200 */  andi       $t0, $v0, 0x200
/* 616A0 80060AA0 11000008 */  beqz       $t0, .L80060AC4
/* 616A4 80060AA4 304C0400 */   andi      $t4, $v0, 0x400
/* 616A8 80060AA8 8E090104 */  lw         $t1, 0x104($s0)
/* 616AC 80060AAC 8E0A0108 */  lw         $t2, 0x108($s0)
/* 616B0 80060AB0 8E0B010C */  lw         $t3, 0x10c($s0)
/* 616B4 80060AB4 AE090088 */  sw         $t1, 0x88($s0)
/* 616B8 80060AB8 AE0A008C */  sw         $t2, 0x8c($s0)
/* 616BC 80060ABC 1000006B */  b          .L80060C6C
/* 616C0 80060AC0 AE0B0090 */   sw        $t3, 0x90($s0)
.L80060AC4:
/* 616C4 80060AC4 11800008 */  beqz       $t4, .L80060AE8
/* 616C8 80060AC8 3421FFFF */   ori       $at, $at, 0xffff
/* 616CC 80060ACC 8E0F0080 */  lw         $t7, 0x80($s0)
/* 616D0 80060AD0 8E0D00F8 */  lw         $t5, 0xf8($s0)
/* 616D4 80060AD4 8E0E00FC */  lw         $t6, 0xfc($s0)
/* 616D8 80060AD8 35F80080 */  ori        $t8, $t7, 0x80
/* 616DC 80060ADC AE180080 */  sw         $t8, 0x80($s0)
/* 616E0 80060AE0 AE0D00EC */  sw         $t5, 0xec($s0)
/* 616E4 80060AE4 AE0E00F0 */  sw         $t6, 0xf0($s0)
.L80060AE8:
/* 616E8 80060AE8 8E190080 */  lw         $t9, 0x80($s0)
/* 616EC 80060AEC 240B0065 */  addiu      $t3, $zero, 0x65
/* 616F0 80060AF0 03214024 */  and        $t0, $t9, $at
/* 616F4 80060AF4 3C010002 */  lui        $at, 2
/* 616F8 80060AF8 01015025 */  or         $t2, $t0, $at
/* 616FC 80060AFC AE080080 */  sw         $t0, 0x80($s0)
/* 61700 80060B00 AE0A0080 */  sw         $t2, 0x80($s0)
/* 61704 80060B04 10000059 */  b          .L80060C6C
/* 61708 80060B08 A60B00D0 */   sh        $t3, 0xd0($s0)
.L80060B0C:
/* 6170C 80060B0C 8E0C0098 */  lw         $t4, 0x98($s0)
/* 61710 80060B10 2401FF7F */  addiu      $at, $zero, -0x81
/* 61714 80060B14 318D002D */  andi       $t5, $t4, 0x2d
/* 61718 80060B18 15A00005 */  bnez       $t5, .L80060B30
/* 6171C 80060B1C 00000000 */   nop
/* 61720 80060B20 8E0E0154 */  lw         $t6, 0x154($s0)
/* 61724 80060B24 00000000 */  nop
/* 61728 80060B28 11C0000B */  beqz       $t6, .L80060B58
/* 6172C 80060B2C 00000000 */   nop
.L80060B30:
/* 61730 80060B30 8E0F0080 */  lw         $t7, 0x80($s0)
/* 61734 80060B34 8E190154 */  lw         $t9, 0x154($s0)
/* 61738 80060B38 01E1C024 */  and        $t8, $t7, $at
/* 6173C 80060B3C 27280001 */  addiu      $t0, $t9, 1
/* 61740 80060B40 29010010 */  slti       $at, $t0, 0x10
/* 61744 80060B44 AE180080 */  sw         $t8, 0x80($s0)
/* 61748 80060B48 14200003 */  bnez       $at, .L80060B58
/* 6174C 80060B4C AE080154 */   sw        $t0, 0x154($s0)
/* 61750 80060B50 10000046 */  b          .L80060C6C
/* 61754 80060B54 AE000080 */   sw        $zero, 0x80($s0)
.L80060B58:
/* 61758 80060B58 8E0400EC */  lw         $a0, 0xec($s0)
/* 6175C 80060B5C 2401000A */  addiu      $at, $zero, 0xa
/* 61760 80060B60 0081001A */  div        $zero, $a0, $at
/* 61764 80060B64 00002012 */  mflo       $a0
/* 61768 80060B68 0C0171B4 */  jal        func_8005C6D0
/* 6176C 80060B6C 00000000 */   nop
/* 61770 80060B70 8E0400EC */  lw         $a0, 0xec($s0)
/* 61774 80060B74 00002825 */  or         $a1, $zero, $zero
/* 61778 80060B78 0C00A607 */  jal        func_8002981C
/* 6177C 80060B7C 00403025 */   or        $a2, $v0, $zero
/* 61780 80060B80 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 61784 80060B84 2401000A */  addiu      $at, $zero, 0xa
/* 61788 80060B88 0081001A */  div        $zero, $a0, $at
/* 6178C 80060B8C AE0200EC */  sw         $v0, 0xec($s0)
/* 61790 80060B90 00002012 */  mflo       $a0
/* 61794 80060B94 0C0171B4 */  jal        func_8005C6D0
/* 61798 80060B98 00000000 */   nop
/* 6179C 80060B9C 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 617A0 80060BA0 3C05FFFF */  lui        $a1, 0xffff
/* 617A4 80060BA4 0C00A607 */  jal        func_8002981C
/* 617A8 80060BA8 24460200 */   addiu     $a2, $v0, 0x200
/* 617AC 80060BAC AE0200F0 */  sw         $v0, 0xf0($s0)
/* 617B0 80060BB0 3C01800F */  lui        $at, %hi(D_800EC148)
/* 617B4 80060BB4 C60400B4 */  lwc1       $f4, 0xb4($s0)
/* 617B8 80060BB8 C429C148 */  lwc1       $f9, %lo(D_800EC148)($at)
/* 617BC 80060BBC C428C14C */  lwc1       $f8, -0x3eb4($at)
/* 617C0 80060BC0 460021A1 */  cvt.d.s    $f6, $f4
/* 617C4 80060BC4 46283280 */  add.d      $f10, $f6, $f8
/* 617C8 80060BC8 3C01800F */  lui        $at, %hi(D_800EC154)
/* 617CC 80060BCC 46205420 */  cvt.s.d    $f16, $f10
/* 617D0 80060BD0 C61200B8 */  lwc1       $f18, 0xb8($s0)
/* 617D4 80060BD4 E61000B4 */  swc1       $f16, 0xb4($s0)
/* 617D8 80060BD8 C426C154 */  lwc1       $f6, %lo(D_800EC154)($at)
/* 617DC 80060BDC C427C150 */  lwc1       $f7, -0x3eb0($at)
/* 617E0 80060BE0 46009121 */  cvt.d.s    $f4, $f18
/* 617E4 80060BE4 46262200 */  add.d      $f8, $f4, $f6
/* 617E8 80060BE8 240C0014 */  addiu      $t4, $zero, 0x14
/* 617EC 80060BEC 462042A0 */  cvt.s.d    $f10, $f8
/* 617F0 80060BF0 8E0400EC */  lw         $a0, 0xec($s0)
/* 617F4 80060BF4 E60A00B8 */  swc1       $f10, 0xb8($s0)
/* 617F8 80060BF8 0C0171B4 */  jal        func_8005C6D0
/* 617FC 80060BFC AE0C0158 */   sw        $t4, 0x158($s0)
/* 61800 80060C00 8E0400F0 */  lw         $a0, 0xf0($s0)
/* 61804 80060C04 0C0171B4 */  jal        func_8005C6D0
/* 61808 80060C08 AFA2002C */   sw        $v0, 0x2c($sp)
/* 6180C 80060C0C 8FA3002C */  lw         $v1, 0x2c($sp)
/* 61810 80060C10 3C010001 */  lui        $at, 1
/* 61814 80060C14 34218001 */  ori        $at, $at, 0x8001
/* 61818 80060C18 00436821 */  addu       $t5, $v0, $v1
/* 6181C 80060C1C 01A1082A */  slt        $at, $t5, $at
/* 61820 80060C20 14200012 */  bnez       $at, .L80060C6C
/* 61824 80060C24 3C01800F */   lui       $at, %hi(D_800EC158)
/* 61828 80060C28 C61000B4 */  lwc1       $f16, 0xb4($s0)
/* 6182C 80060C2C C425C158 */  lwc1       $f5, %lo(D_800EC158)($at)
/* 61830 80060C30 C424C15C */  lwc1       $f4, -0x3ea4($at)
/* 61834 80060C34 460084A1 */  cvt.d.s    $f18, $f16
/* 61838 80060C38 46249180 */  add.d      $f6, $f18, $f4
/* 6183C 80060C3C 3C01800F */  lui        $at, %hi(D_800EC164)
/* 61840 80060C40 46203220 */  cvt.s.d    $f8, $f6
/* 61844 80060C44 C60A00B8 */  lwc1       $f10, 0xb8($s0)
/* 61848 80060C48 E60800B4 */  swc1       $f8, 0xb4($s0)
/* 6184C 80060C4C C432C164 */  lwc1       $f18, %lo(D_800EC164)($at)
/* 61850 80060C50 C433C160 */  lwc1       $f19, -0x3ea0($at)
/* 61854 80060C54 46005421 */  cvt.d.s    $f16, $f10
/* 61858 80060C58 46328100 */  add.d      $f4, $f16, $f18
/* 6185C 80060C5C 240E0004 */  addiu      $t6, $zero, 4
/* 61860 80060C60 462021A0 */  cvt.s.d    $f6, $f4
/* 61864 80060C64 AE0E0158 */  sw         $t6, 0x158($s0)
/* 61868 80060C68 E60600B8 */  swc1       $f6, 0xb8($s0)
.L80060C6C:
/* 6186C 80060C6C 0C0005E3 */  jal        func_8000178C
/* 61870 80060C70 00000000 */   nop
/* 61874 80060C74 304F0001 */  andi       $t7, $v0, 1
/* 61878 80060C78 15E00006 */  bnez       $t7, .L80060C94
/* 6187C 80060C7C 27A50034 */   addiu     $a1, $sp, 0x34
/* 61880 80060C80 8E180080 */  lw         $t8, 0x80($s0)
/* 61884 80060C84 2401FFDF */  addiu      $at, $zero, -0x21
/* 61888 80060C88 0301C824 */  and        $t9, $t8, $at
/* 6188C 80060C8C 10000005 */  b          .L80060CA4
/* 61890 80060C90 AE190080 */   sw        $t9, 0x80($s0)
.L80060C94:
/* 61894 80060C94 8E080080 */  lw         $t0, 0x80($s0)
/* 61898 80060C98 00000000 */  nop
/* 6189C 80060C9C 35090020 */  ori        $t1, $t0, 0x20
/* 618A0 80060CA0 AE090080 */  sw         $t1, 0x80($s0)
.L80060CA4:
/* 618A4 80060CA4 8E0A015C */  lw         $t2, 0x15c($s0)
/* 618A8 80060CA8 00000000 */  nop
/* 618AC 80060CAC 254BFFFF */  addiu      $t3, $t2, -1
/* 618B0 80060CB0 AE0B015C */  sw         $t3, 0x15c($s0)
/* 618B4 80060CB4 15600003 */  bnez       $t3, .L80060CC4
/* 618B8 80060CB8 01601025 */   or        $v0, $t3, $zero
/* 618BC 80060CBC AE000080 */  sw         $zero, 0x80($s0)
/* 618C0 80060CC0 01601025 */  or         $v0, $t3, $zero
.L80060CC4:
/* 618C4 80060CC4 8E0C0158 */  lw         $t4, 0x158($s0)
/* 618C8 80060CC8 AE000098 */  sw         $zero, 0x98($s0)
/* 618CC 80060CCC 004C001A */  div        $zero, $v0, $t4
/* 618D0 80060CD0 15800002 */  bnez       $t4, .L80060CDC
/* 618D4 80060CD4 00000000 */   nop
/* 618D8 80060CD8 0007000D */  break      7
.L80060CDC:
/* 618DC 80060CDC 2401FFFF */   addiu     $at, $zero, -1
/* 618E0 80060CE0 15810004 */  bne        $t4, $at, .L80060CF4
/* 618E4 80060CE4 3C018000 */   lui       $at, 0x8000
/* 618E8 80060CE8 14410002 */  bne        $v0, $at, .L80060CF4
/* 618EC 80060CEC 00000000 */   nop
/* 618F0 80060CF0 0006000D */  break      6
.L80060CF4:
/* 618F4 80060CF4 00006810 */   mfhi      $t5
/* 618F8 80060CF8 15A0002C */  bnez       $t5, .L80060DAC
/* 618FC 80060CFC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 61900 80060D00 860E0088 */  lh         $t6, 0x88($s0)
/* 61904 80060D04 860F008C */  lh         $t7, 0x8c($s0)
/* 61908 80060D08 86180090 */  lh         $t8, 0x90($s0)
/* 6190C 80060D0C 97A4004A */  lhu        $a0, 0x4a($sp)
/* 61910 80060D10 AFAE0034 */  sw         $t6, 0x34($sp)
/* 61914 80060D14 AFAF0038 */  sw         $t7, 0x38($sp)
/* 61918 80060D18 0C0164A8 */  jal        func_800592A0
/* 6191C 80060D1C AFB8003C */   sw        $t8, 0x3c($sp)
/* 61920 80060D20 10400021 */  beqz       $v0, .L80060DA8
/* 61924 80060D24 3059FFFF */   andi      $t9, $v0, 0xffff
/* 61928 80060D28 00194080 */  sll        $t0, $t9, 2
/* 6192C 80060D2C 01194023 */  subu       $t0, $t0, $t9
/* 61930 80060D30 00084080 */  sll        $t0, $t0, 2
/* 61934 80060D34 01194021 */  addu       $t0, $t0, $t9
/* 61938 80060D38 00084080 */  sll        $t0, $t0, 2
/* 6193C 80060D3C 01194023 */  subu       $t0, $t0, $t9
/* 61940 80060D40 3C09800F */  lui        $t1, %hi(gActors)
/* 61944 80060D44 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 61948 80060D48 000840C0 */  sll        $t0, $t0, 3
/* 6194C 80060D4C 01091821 */  addu       $v1, $t0, $t1
/* 61950 80060D50 946A0094 */  lhu        $t2, 0x94($v1)
/* 61954 80060D54 3C014270 */  lui        $at, 0x4270
/* 61958 80060D58 44814000 */  mtc1       $at, $f8
/* 6195C 80060D5C 240C015C */  addiu      $t4, $zero, 0x15c
/* 61960 80060D60 354B0001 */  ori        $t3, $t2, 1
/* 61964 80060D64 A46B0094 */  sh         $t3, 0x94($v1)
/* 61968 80060D68 A46C0084 */  sh         $t4, 0x84($v1)
/* 6196C 80060D6C 3C01800F */  lui        $at, %hi(D_800EC168)
/* 61970 80060D70 E4680148 */  swc1       $f8, 0x148($v1)
/* 61974 80060D74 C42AC168 */  lwc1       $f10, %lo(D_800EC168)($at)
/* 61978 80060D78 3C01800F */  lui        $at, %hi(D_800EC16C)
/* 6197C 80060D7C E46A00B8 */  swc1       $f10, 0xb8($v1)
/* 61980 80060D80 C430C16C */  lwc1       $f16, %lo(D_800EC16C)($at)
/* 61984 80060D84 3C01800F */  lui        $at, %hi(D_800EC170)
/* 61988 80060D88 E47000B4 */  swc1       $f16, 0xb4($v1)
/* 6198C 80060D8C C432C170 */  lwc1       $f18, %lo(D_800EC170)($at)
/* 61990 80060D90 3C01800F */  lui        $at, %hi(D_800EC174)
/* 61994 80060D94 E4720110 */  swc1       $f18, 0x110($v1)
/* 61998 80060D98 C424C174 */  lwc1       $f4, %lo(D_800EC174)($at)
/* 6199C 80060D9C 240DFE00 */  addiu      $t5, $zero, -0x200
/* 619A0 80060DA0 AC6D015C */  sw         $t5, 0x15c($v1)
/* 619A4 80060DA4 E4640114 */  swc1       $f4, 0x114($v1)
.L80060DA8:
/* 619A8 80060DA8 8FBF001C */  lw         $ra, 0x1c($sp)
.L80060DAC:
/* 619AC 80060DAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 619B0 80060DB0 03E00008 */  jr         $ra
/* 619B4 80060DB4 27BD0048 */   addiu     $sp, $sp, 0x48
