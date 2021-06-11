glabel func_80049AC0
/* 4A6C0 80049AC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 4A6C4 80049AC4 AFA40050 */  sw         $a0, 0x50($sp)
/* 4A6C8 80049AC8 97AE0052 */  lhu        $t6, 0x52($sp)
/* 4A6CC 80049ACC 3C18800F */  lui        $t8, 0x800f
/* 4A6D0 80049AD0 000E7880 */  sll        $t7, $t6, 2
/* 4A6D4 80049AD4 01EE7823 */  subu       $t7, $t7, $t6
/* 4A6D8 80049AD8 000F7880 */  sll        $t7, $t7, 2
/* 4A6DC 80049ADC 01EE7821 */  addu       $t7, $t7, $t6
/* 4A6E0 80049AE0 000F7880 */  sll        $t7, $t7, 2
/* 4A6E4 80049AE4 01EE7823 */  subu       $t7, $t7, $t6
/* 4A6E8 80049AE8 000F78C0 */  sll        $t7, $t7, 3
/* 4A6EC 80049AEC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4A6F0 80049AF0 01F84021 */  addu       $t0, $t7, $t8
/* 4A6F4 80049AF4 951900D0 */  lhu        $t9, 0xd0($t0)
/* 4A6F8 80049AF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A6FC 80049AFC 17200005 */  bnez       $t9, .L80049B14
/* 4A700 80049B00 01C02025 */   or        $a0, $t6, $zero
/* 4A704 80049B04 0C012A58 */  jal        func_8004A960
/* 4A708 80049B08 AFA80028 */   sw        $t0, 0x28($sp)
/* 4A70C 80049B0C 8FA80028 */  lw         $t0, 0x28($sp)
/* 4A710 80049B10 00000000 */  nop
.L80049B14:
/* 4A714 80049B14 91020141 */  lbu        $v0, 0x141($t0)
/* 4A718 80049B18 00000000 */  nop
/* 4A71C 80049B1C 10400002 */  beqz       $v0, .L80049B28
/* 4A720 80049B20 244AFFFF */   addiu     $t2, $v0, -1
/* 4A724 80049B24 A10A0141 */  sb         $t2, 0x141($t0)
.L80049B28:
/* 4A728 80049B28 8D0B0080 */  lw         $t3, 0x80($t0)
/* 4A72C 80049B2C 97A40052 */  lhu        $a0, 0x52($sp)
/* 4A730 80049B30 000B6180 */  sll        $t4, $t3, 6
/* 4A734 80049B34 05810058 */  bgez       $t4, .L80049C98
/* 4A738 80049B38 00000000 */   nop
/* 4A73C 80049B3C 950500D6 */  lhu        $a1, 0xd6($t0)
/* 4A740 80049B40 0C014A3D */  jal        func_800528F4
/* 4A744 80049B44 AFA80028 */   sw        $t0, 0x28($sp)
/* 4A748 80049B48 8FA80028 */  lw         $t0, 0x28($sp)
/* 4A74C 80049B4C 24010001 */  addiu      $at, $zero, 1
/* 4A750 80049B50 14410003 */  bne        $v0, $at, .L80049B60
/* 4A754 80049B54 00000000 */   nop
/* 4A758 80049B58 AD0000F0 */  sw         $zero, 0xf0($t0)
/* 4A75C 80049B5C AD0000EC */  sw         $zero, 0xec($t0)
.L80049B60:
/* 4A760 80049B60 1440035C */  bnez       $v0, .L8004A8D4
/* 4A764 80049B64 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4A768 80049B68 910D012E */  lbu        $t5, 0x12e($t0)
/* 4A76C 80049B6C 97A40052 */  lhu        $a0, 0x52($sp)
/* 4A770 80049B70 31AF0080 */  andi       $t7, $t5, 0x80
/* 4A774 80049B74 15E00048 */  bnez       $t7, .L80049C98
/* 4A778 80049B78 00000000 */   nop
/* 4A77C 80049B7C 0C013CAC */  jal        func_8004F2B0
/* 4A780 80049B80 AFA80028 */   sw        $t0, 0x28($sp)
/* 4A784 80049B84 8FA80028 */  lw         $t0, 0x28($sp)
/* 4A788 80049B88 10400043 */  beqz       $v0, .L80049C98
/* 4A78C 80049B8C 24010001 */   addiu     $at, $zero, 1
/* 4A790 80049B90 14410015 */  bne        $v0, $at, .L80049BE8
/* 4A794 80049B94 24010002 */   addiu     $at, $zero, 2
/* 4A798 80049B98 951800D6 */  lhu        $t8, 0xd6($t0)
/* 4A79C 80049B9C 3C0E800F */  lui        $t6, 0x800f
/* 4A7A0 80049BA0 0018C880 */  sll        $t9, $t8, 2
/* 4A7A4 80049BA4 0338C823 */  subu       $t9, $t9, $t8
/* 4A7A8 80049BA8 0019C880 */  sll        $t9, $t9, 2
/* 4A7AC 80049BAC 0338C821 */  addu       $t9, $t9, $t8
/* 4A7B0 80049BB0 0019C880 */  sll        $t9, $t9, 2
/* 4A7B4 80049BB4 0338C823 */  subu       $t9, $t9, $t8
/* 4A7B8 80049BB8 0019C8C0 */  sll        $t9, $t9, 3
/* 4A7BC 80049BBC 01D97021 */  addu       $t6, $t6, $t9
/* 4A7C0 80049BC0 91CEF5EE */  lbu        $t6, -0xa12($t6)
/* 4A7C4 80049BC4 24010003 */  addiu      $at, $zero, 3
/* 4A7C8 80049BC8 15C10004 */  bne        $t6, $at, .L80049BDC
/* 4A7CC 80049BCC 240B0029 */   addiu     $t3, $zero, 0x29
/* 4A7D0 80049BD0 240A0026 */  addiu      $t2, $zero, 0x26
/* 4A7D4 80049BD4 1000033E */  b          .L8004A8D0
/* 4A7D8 80049BD8 A50A00D0 */   sh        $t2, 0xd0($t0)
.L80049BDC:
/* 4A7DC 80049BDC 1000033C */  b          .L8004A8D0
/* 4A7E0 80049BE0 A50B00D0 */   sh        $t3, 0xd0($t0)
/* 4A7E4 80049BE4 24010002 */  addiu      $at, $zero, 2
.L80049BE8:
/* 4A7E8 80049BE8 1441033A */  bne        $v0, $at, .L8004A8D4
/* 4A7EC 80049BEC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4A7F0 80049BF0 950C00D6 */  lhu        $t4, 0xd6($t0)
/* 4A7F4 80049BF4 3C0F800F */  lui        $t7, 0x800f
/* 4A7F8 80049BF8 000C6880 */  sll        $t5, $t4, 2
/* 4A7FC 80049BFC 01AC6823 */  subu       $t5, $t5, $t4
/* 4A800 80049C00 000D6880 */  sll        $t5, $t5, 2
/* 4A804 80049C04 01AC6821 */  addu       $t5, $t5, $t4
/* 4A808 80049C08 000D6880 */  sll        $t5, $t5, 2
/* 4A80C 80049C0C 01AC6823 */  subu       $t5, $t5, $t4
/* 4A810 80049C10 000D68C0 */  sll        $t5, $t5, 3
/* 4A814 80049C14 01ED7821 */  addu       $t7, $t7, $t5
/* 4A818 80049C18 91EFF5EE */  lbu        $t7, -0xa12($t7)
/* 4A81C 80049C1C 24010003 */  addiu      $at, $zero, 3
/* 4A820 80049C20 11E1001A */  beq        $t7, $at, .L80049C8C
/* 4A824 80049C24 3C048013 */   lui       $a0, %hi(D_801373D8)
/* 4A828 80049C28 248473D8 */  addiu      $a0, $a0, %lo(D_801373D8)
/* 4A82C 80049C2C 94820000 */  lhu        $v0, ($a0)
/* 4A830 80049C30 A5000142 */  sh         $zero, 0x142($t0)
/* 4A834 80049C34 30580002 */  andi       $t8, $v0, 2
/* 4A838 80049C38 13000005 */  beqz       $t8, .L80049C50
/* 4A83C 80049C3C 304A0001 */   andi      $t2, $v0, 1
/* 4A840 80049C40 8D190080 */  lw         $t9, 0x80($t0)
/* 4A844 80049C44 2401FFDF */  addiu      $at, $zero, -0x21
/* 4A848 80049C48 03217024 */  and        $t6, $t9, $at
/* 4A84C 80049C4C AD0E0080 */  sw         $t6, 0x80($t0)
.L80049C50:
/* 4A850 80049C50 11400005 */  beqz       $t2, .L80049C68
/* 4A854 80049C54 24010008 */   addiu     $at, $zero, 8
/* 4A858 80049C58 8D0B0080 */  lw         $t3, 0x80($t0)
/* 4A85C 80049C5C 00000000 */  nop
/* 4A860 80049C60 356C0020 */  ori        $t4, $t3, 0x20
/* 4A864 80049C64 AD0C0080 */  sw         $t4, 0x80($t0)
.L80049C68:
/* 4A868 80049C68 91040140 */  lbu        $a0, 0x140($t0)
/* 4A86C 80049C6C 240D0001 */  addiu      $t5, $zero, 1
/* 4A870 80049C70 14800003 */  bnez       $a0, .L80049C80
/* 4A874 80049C74 240F0002 */   addiu     $t7, $zero, 2
/* 4A878 80049C78 91040140 */  lbu        $a0, 0x140($t0)
/* 4A87C 80049C7C A50D0142 */  sh         $t5, 0x142($t0)
.L80049C80:
/* 4A880 80049C80 14810003 */  bne        $a0, $at, .L80049C90
/* 4A884 80049C84 24180026 */   addiu     $t8, $zero, 0x26
/* 4A888 80049C88 A50F0142 */  sh         $t7, 0x142($t0)
.L80049C8C:
/* 4A88C 80049C8C 24180026 */  addiu      $t8, $zero, 0x26
.L80049C90:
/* 4A890 80049C90 1000030F */  b          .L8004A8D0
/* 4A894 80049C94 A51800D0 */   sh        $t8, 0xd0($t0)
.L80049C98:
/* 4A898 80049C98 97A40052 */  lhu        $a0, 0x52($sp)
/* 4A89C 80049C9C 0C012598 */  jal        func_80049660
/* 4A8A0 80049CA0 AFA80028 */   sw        $t0, 0x28($sp)
/* 4A8A4 80049CA4 8FA80028 */  lw         $t0, 0x28($sp)
/* 4A8A8 80049CA8 104000A3 */  beqz       $v0, .L80049F38
/* 4A8AC 80049CAC 00403825 */   or        $a3, $v0, $zero
/* 4A8B0 80049CB0 24010001 */  addiu      $at, $zero, 1
/* 4A8B4 80049CB4 1441001D */  bne        $v0, $at, .L80049D2C
/* 4A8B8 80049CB8 24010003 */   addiu     $at, $zero, 3
/* 4A8BC 80049CBC 8D1900EC */  lw         $t9, 0xec($t0)
/* 4A8C0 80049CC0 3C013FE8 */  lui        $at, 0x3fe8
/* 4A8C4 80049CC4 00197023 */  negu       $t6, $t9
/* 4A8C8 80049CC8 448E2000 */  mtc1       $t6, $f4
/* 4A8CC 80049CCC 44814800 */  mtc1       $at, $f9
/* 4A8D0 80049CD0 468021A1 */  cvt.d.w    $f6, $f4
/* 4A8D4 80049CD4 44804000 */  mtc1       $zero, $f8
/* 4A8D8 80049CD8 8D0C0080 */  lw         $t4, 0x80($t0)
/* 4A8DC 80049CDC 46283282 */  mul.d      $f10, $f6, $f8
/* 4A8E0 80049CE0 240B0001 */  addiu      $t3, $zero, 1
/* 4A8E4 80049CE4 000C6980 */  sll        $t5, $t4, 6
/* 4A8E8 80049CE8 A10B00D0 */  sb         $t3, 0xd0($t0)
/* 4A8EC 80049CEC 240F0011 */  addiu      $t7, $zero, 0x11
/* 4A8F0 80049CF0 444AF800 */  cfc1       $t2, $31
/* 4A8F4 80049CF4 24180013 */  addiu      $t8, $zero, 0x13
/* 4A8F8 80049CF8 35410003 */  ori        $at, $t2, 3
/* 4A8FC 80049CFC 38210002 */  xori       $at, $at, 2
/* 4A900 80049D00 44C1F800 */  ctc1       $at, $31
/* 4A904 80049D04 00000000 */  nop
/* 4A908 80049D08 46205424 */  cvt.w.d    $f16, $f10
/* 4A90C 80049D0C 44CAF800 */  ctc1       $t2, $31
/* 4A910 80049D10 05A00003 */  bltz       $t5, .L80049D20
/* 4A914 80049D14 E51000EC */   swc1      $f16, 0xec($t0)
/* 4A918 80049D18 100002ED */  b          .L8004A8D0
/* 4A91C 80049D1C A10F00D1 */   sb        $t7, 0xd1($t0)
.L80049D20:
/* 4A920 80049D20 100002EB */  b          .L8004A8D0
/* 4A924 80049D24 A11800D1 */   sb        $t8, 0xd1($t0)
/* 4A928 80049D28 24010003 */  addiu      $at, $zero, 3
.L80049D2C:
/* 4A92C 80049D2C 14410026 */  bne        $v0, $at, .L80049DC8
/* 4A930 80049D30 27A50030 */   addiu     $a1, $sp, 0x30
/* 4A934 80049D34 8D190080 */  lw         $t9, 0x80($t0)
/* 4A938 80049D38 3C064000 */  lui        $a2, 0x4000
/* 4A93C 80049D3C 332E0020 */  andi       $t6, $t9, 0x20
/* 4A940 80049D40 15C00007 */  bnez       $t6, .L80049D60
/* 4A944 80049D44 24070014 */   addiu     $a3, $zero, 0x14
/* 4A948 80049D48 850A00A4 */  lh         $t2, 0xa4($t0)
/* 4A94C 80049D4C 850B0088 */  lh         $t3, 0x88($t0)
/* 4A950 80049D50 00000000 */  nop
/* 4A954 80049D54 014B6021 */  addu       $t4, $t2, $t3
/* 4A958 80049D58 10000006 */  b          .L80049D74
/* 4A95C 80049D5C AFAC0030 */   sw        $t4, 0x30($sp)
.L80049D60:
/* 4A960 80049D60 850D00A2 */  lh         $t5, 0xa2($t0)
/* 4A964 80049D64 850F0088 */  lh         $t7, 0x88($t0)
/* 4A968 80049D68 00000000 */  nop
/* 4A96C 80049D6C 01AFC021 */  addu       $t8, $t5, $t7
/* 4A970 80049D70 AFB80030 */  sw         $t8, 0x30($sp)
.L80049D74:
/* 4A974 80049D74 851900A8 */  lh         $t9, 0xa8($t0)
/* 4A978 80049D78 850E00A6 */  lh         $t6, 0xa6($t0)
/* 4A97C 80049D7C 850C008C */  lh         $t4, 0x8c($t0)
/* 4A980 80049D80 032E5021 */  addu       $t2, $t9, $t6
/* 4A984 80049D84 850F0090 */  lh         $t7, 0x90($t0)
/* 4A988 80049D88 05410003 */  bgez       $t2, .L80049D98
/* 4A98C 80049D8C 000A5843 */   sra       $t3, $t2, 1
/* 4A990 80049D90 25410001 */  addiu      $at, $t2, 1
/* 4A994 80049D94 00015843 */  sra        $t3, $at, 1
.L80049D98:
/* 4A998 80049D98 3C198022 */  lui        $t9, 0x8022
/* 4A99C 80049D9C 2418014E */  addiu      $t8, $zero, 0x14e
/* 4A9A0 80049DA0 3739D4E8 */  ori        $t9, $t9, 0xd4e8
/* 4A9A4 80049DA4 97A40052 */  lhu        $a0, 0x52($sp)
/* 4A9A8 80049DA8 016C6821 */  addu       $t5, $t3, $t4
/* 4A9AC 80049DAC AFAD0034 */  sw         $t5, 0x34($sp)
/* 4A9B0 80049DB0 AFB8003C */  sw         $t8, 0x3c($sp)
/* 4A9B4 80049DB4 AFB90040 */  sw         $t9, 0x40($sp)
/* 4A9B8 80049DB8 0C0167CC */  jal        func_80059F30
/* 4A9BC 80049DBC AFAF0038 */   sw        $t7, 0x38($sp)
/* 4A9C0 80049DC0 100002C4 */  b          .L8004A8D4
/* 4A9C4 80049DC4 8FBF0014 */   lw        $ra, 0x14($sp)
.L80049DC8:
/* 4A9C8 80049DC8 24010004 */  addiu      $at, $zero, 4
/* 4A9CC 80049DCC 1441004E */  bne        $v0, $at, .L80049F08
/* 4A9D0 80049DD0 3C0A800F */   lui       $t2, %hi(gActors)
/* 4A9D4 80049DD4 950600D6 */  lhu        $a2, 0xd6($t0)
/* 4A9D8 80049DD8 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 4A9DC 80049DDC 00067080 */  sll        $t6, $a2, 2
/* 4A9E0 80049DE0 01C67023 */  subu       $t6, $t6, $a2
/* 4A9E4 80049DE4 000E7080 */  sll        $t6, $t6, 2
/* 4A9E8 80049DE8 01C67021 */  addu       $t6, $t6, $a2
/* 4A9EC 80049DEC 000E7080 */  sll        $t6, $t6, 2
/* 4A9F0 80049DF0 01C67023 */  subu       $t6, $t6, $a2
/* 4A9F4 80049DF4 000E70C0 */  sll        $t6, $t6, 3
/* 4A9F8 80049DF8 01CA1821 */  addu       $v1, $t6, $t2
/* 4A9FC 80049DFC 846B00AA */  lh         $t3, 0xaa($v1)
/* 4AA00 80049E00 846C00AC */  lh         $t4, 0xac($v1)
/* 4AA04 80049E04 84780088 */  lh         $t8, 0x88($v1)
/* 4AA08 80049E08 016C6821 */  addu       $t5, $t3, $t4
/* 4AA0C 80049E0C 05A10003 */  bgez       $t5, .L80049E1C
/* 4AA10 80049E10 000D7843 */   sra       $t7, $t5, 1
/* 4AA14 80049E14 25A10001 */  addiu      $at, $t5, 1
/* 4AA18 80049E18 00017843 */  sra        $t7, $at, 1
.L80049E1C:
/* 4AA1C 80049E1C 850C00A2 */  lh         $t4, 0xa2($t0)
/* 4AA20 80049E20 850B00A4 */  lh         $t3, 0xa4($t0)
/* 4AA24 80049E24 01F8C821 */  addu       $t9, $t7, $t8
/* 4AA28 80049E28 016C6821 */  addu       $t5, $t3, $t4
/* 4AA2C 80049E2C 850E0088 */  lh         $t6, 0x88($t0)
/* 4AA30 80049E30 846B00AE */  lh         $t3, 0xae($v1)
/* 4AA34 80049E34 032E5021 */  addu       $t2, $t9, $t6
/* 4AA38 80049E38 05A10003 */  bgez       $t5, .L80049E48
/* 4AA3C 80049E3C 000D7843 */   sra       $t7, $t5, 1
/* 4AA40 80049E40 25A10001 */  addiu      $at, $t5, 1
/* 4AA44 80049E44 00017843 */  sra        $t7, $at, 1
.L80049E48:
/* 4AA48 80049E48 846E00B0 */  lh         $t6, 0xb0($v1)
/* 4AA4C 80049E4C 014FC021 */  addu       $t8, $t2, $t7
/* 4AA50 80049E50 07010003 */  bgez       $t8, .L80049E60
/* 4AA54 80049E54 0018C843 */   sra       $t9, $t8, 1
/* 4AA58 80049E58 27010001 */  addiu      $at, $t8, 1
/* 4AA5C 80049E5C 0001C843 */  sra        $t9, $at, 1
.L80049E60:
/* 4AA60 80049E60 01CB6021 */  addu       $t4, $t6, $t3
/* 4AA64 80049E64 846A008C */  lh         $t2, 0x8c($v1)
/* 4AA68 80049E68 850B00A8 */  lh         $t3, 0xa8($t0)
/* 4AA6C 80049E6C 850E00A6 */  lh         $t6, 0xa6($t0)
/* 4AA70 80049E70 8518008C */  lh         $t8, 0x8c($t0)
/* 4AA74 80049E74 AFB90030 */  sw         $t9, 0x30($sp)
/* 4AA78 80049E78 05810003 */  bgez       $t4, .L80049E88
/* 4AA7C 80049E7C 000C6843 */   sra       $t5, $t4, 1
/* 4AA80 80049E80 25810001 */  addiu      $at, $t4, 1
/* 4AA84 80049E84 00016843 */  sra        $t5, $at, 1
.L80049E88:
/* 4AA88 80049E88 01AA7821 */  addu       $t7, $t5, $t2
/* 4AA8C 80049E8C 01CB6021 */  addu       $t4, $t6, $t3
/* 4AA90 80049E90 01F8C821 */  addu       $t9, $t7, $t8
/* 4AA94 80049E94 05810003 */  bgez       $t4, .L80049EA4
/* 4AA98 80049E98 000C6843 */   sra       $t5, $t4, 1
/* 4AA9C 80049E9C 25810001 */  addiu      $at, $t4, 1
/* 4AAA0 80049EA0 00016843 */  sra        $t5, $at, 1
.L80049EA4:
/* 4AAA4 80049EA4 032D5021 */  addu       $t2, $t9, $t5
/* 4AAA8 80049EA8 05410003 */  bgez       $t2, .L80049EB8
/* 4AAAC 80049EAC 000A7843 */   sra       $t7, $t2, 1
/* 4AAB0 80049EB0 25410001 */  addiu      $at, $t2, 1
/* 4AAB4 80049EB4 00017843 */  sra        $t7, $at, 1
.L80049EB8:
/* 4AAB8 80049EB8 84640090 */  lh         $a0, 0x90($v1)
/* 4AABC 80049EBC 85020090 */  lh         $v0, 0x90($t0)
/* 4AAC0 80049EC0 AFAF0034 */  sw         $t7, 0x34($sp)
/* 4AAC4 80049EC4 0082082A */  slt        $at, $a0, $v0
/* 4AAC8 80049EC8 10200003 */  beqz       $at, .L80049ED8
/* 4AACC 80049ECC 2418014E */   addiu     $t8, $zero, 0x14e
/* 4AAD0 80049ED0 10000002 */  b          .L80049EDC
/* 4AAD4 80049ED4 AFA20038 */   sw        $v0, 0x38($sp)
.L80049ED8:
/* 4AAD8 80049ED8 AFA40038 */  sw         $a0, 0x38($sp)
.L80049EDC:
/* 4AADC 80049EDC 3C0E8022 */  lui        $t6, 0x8022
/* 4AAE0 80049EE0 35CED4E8 */  ori        $t6, $t6, 0xd4e8
/* 4AAE4 80049EE4 97A40052 */  lhu        $a0, 0x52($sp)
/* 4AAE8 80049EE8 AFB8003C */  sw         $t8, 0x3c($sp)
/* 4AAEC 80049EEC AFAE0040 */  sw         $t6, 0x40($sp)
/* 4AAF0 80049EF0 27A50030 */  addiu      $a1, $sp, 0x30
/* 4AAF4 80049EF4 3C064000 */  lui        $a2, 0x4000
/* 4AAF8 80049EF8 0C0167CC */  jal        func_80059F30
/* 4AAFC 80049EFC 24070014 */   addiu     $a3, $zero, 0x14
/* 4AB00 80049F00 10000274 */  b          .L8004A8D4
/* 4AB04 80049F04 8FBF0014 */   lw        $ra, 0x14($sp)
.L80049F08:
/* 4AB08 80049F08 2841000B */  slti       $at, $v0, 0xb
/* 4AB0C 80049F0C 14200006 */  bnez       $at, .L80049F28
/* 4AB10 80049F10 00000000 */   nop
/* 4AB14 80049F14 810B0171 */  lb         $t3, 0x171($t0)
/* 4AB18 80049F18 00000000 */  nop
/* 4AB1C 80049F1C 29610003 */  slti       $at, $t3, 3
/* 4AB20 80049F20 14200004 */  bnez       $at, .L80049F34
/* 4AB24 80049F24 00000000 */   nop
.L80049F28:
/* 4AB28 80049F28 AD0000F0 */  sw         $zero, 0xf0($t0)
/* 4AB2C 80049F2C 10000002 */  b          .L80049F38
/* 4AB30 80049F30 AD0000EC */   sw        $zero, 0xec($t0)
.L80049F34:
/* 4AB34 80049F34 00003825 */  or         $a3, $zero, $zero
.L80049F38:
/* 4AB38 80049F38 24010002 */  addiu      $at, $zero, 2
/* 4AB3C 80049F3C 14E10040 */  bne        $a3, $at, .L8004A040
/* 4AB40 80049F40 240F0012 */   addiu     $t7, $zero, 0x12
/* 4AB44 80049F44 8D0200F8 */  lw         $v0, 0xf8($t0)
/* 4AB48 80049F48 2401FFDF */  addiu      $at, $zero, -0x21
/* 4AB4C 80049F4C 04410005 */  bgez       $v0, .L80049F64
/* 4AB50 80049F50 00000000 */   nop
/* 4AB54 80049F54 8D0C0080 */  lw         $t4, 0x80($t0)
/* 4AB58 80049F58 8D0200F8 */  lw         $v0, 0xf8($t0)
/* 4AB5C 80049F5C 0181C824 */  and        $t9, $t4, $at
/* 4AB60 80049F60 AD190080 */  sw         $t9, 0x80($t0)
.L80049F64:
/* 4AB64 80049F64 18400005 */  blez       $v0, .L80049F7C
/* 4AB68 80049F68 00000000 */   nop
/* 4AB6C 80049F6C 8D0D0080 */  lw         $t5, 0x80($t0)
/* 4AB70 80049F70 00000000 */  nop
/* 4AB74 80049F74 35AA0020 */  ori        $t2, $t5, 0x20
/* 4AB78 80049F78 AD0A0080 */  sw         $t2, 0x80($t0)
.L80049F7C:
/* 4AB7C 80049F7C 851800AE */  lh         $t8, 0xae($t0)
/* 4AB80 80049F80 850B00B0 */  lh         $t3, 0xb0($t0)
/* 4AB84 80049F84 8D190080 */  lw         $t9, 0x80($t0)
/* 4AB88 80049F88 24020020 */  addiu      $v0, $zero, 0x20
/* 4AB8C 80049F8C 270E0008 */  addiu      $t6, $t8, 8
/* 4AB90 80049F90 256CFFF8 */  addiu      $t4, $t3, -8
/* 4AB94 80049F94 332D0020 */  andi       $t5, $t9, 0x20
/* 4AB98 80049F98 A50000E4 */  sh         $zero, 0xe4($t0)
/* 4AB9C 80049F9C A10200DA */  sb         $v0, 0xda($t0)
/* 4ABA0 80049FA0 A10F00DB */  sb         $t7, 0xdb($t0)
/* 4ABA4 80049FA4 A50E00A6 */  sh         $t6, 0xa6($t0)
/* 4ABA8 80049FA8 15A00006 */  bnez       $t5, .L80049FC4
/* 4ABAC 80049FAC A50C00A8 */   sh        $t4, 0xa8($t0)
/* 4ABB0 80049FB0 850A00AC */  lh         $t2, 0xac($t0)
/* 4ABB4 80049FB4 A50000A2 */  sh         $zero, 0xa2($t0)
/* 4ABB8 80049FB8 254F0010 */  addiu      $t7, $t2, 0x10
/* 4ABBC 80049FBC 10000005 */  b          .L80049FD4
/* 4ABC0 80049FC0 A50F00A4 */   sh        $t7, 0xa4($t0)
.L80049FC4:
/* 4ABC4 80049FC4 851800AA */  lh         $t8, 0xaa($t0)
/* 4ABC8 80049FC8 A50000A4 */  sh         $zero, 0xa4($t0)
/* 4ABCC 80049FCC 270EFFF0 */  addiu      $t6, $t8, -0x10
/* 4ABD0 80049FD0 A50E00A2 */  sh         $t6, 0xa2($t0)
.L80049FD4:
/* 4ABD4 80049FD4 950B00D6 */  lhu        $t3, 0xd6($t0)
/* 4ABD8 80049FD8 3C19800F */  lui        $t9, 0x800f
/* 4ABDC 80049FDC 000B6080 */  sll        $t4, $t3, 2
/* 4ABE0 80049FE0 018B6023 */  subu       $t4, $t4, $t3
/* 4ABE4 80049FE4 000C6080 */  sll        $t4, $t4, 2
/* 4ABE8 80049FE8 018B6021 */  addu       $t4, $t4, $t3
/* 4ABEC 80049FEC 000C6080 */  sll        $t4, $t4, 2
/* 4ABF0 80049FF0 018B6023 */  subu       $t4, $t4, $t3
/* 4ABF4 80049FF4 000C60C0 */  sll        $t4, $t4, 3
/* 4ABF8 80049FF8 A100012F */  sb         $zero, 0x12f($t0)
/* 4ABFC 80049FFC 032CC821 */  addu       $t9, $t9, $t4
/* 4AC00 8004A000 9339F5EF */  lbu        $t9, -0xa11($t9)
/* 4AC04 8004A004 00000000 */  nop
/* 4AC08 8004A008 332D0080 */  andi       $t5, $t9, 0x80
/* 4AC0C 8004A00C 11A0000A */  beqz       $t5, .L8004A038
/* 4AC10 8004A010 00000000 */   nop
/* 4AC14 8004A014 910A00D1 */  lbu        $t2, 0xd1($t0)
/* 4AC18 8004A018 24010021 */  addiu      $at, $zero, 0x21
/* 4AC1C 8004A01C 15410004 */  bne        $t2, $at, .L8004A030
/* 4AC20 8004A020 24180021 */   addiu     $t8, $zero, 0x21
/* 4AC24 8004A024 240F0001 */  addiu      $t7, $zero, 1
/* 4AC28 8004A028 10000229 */  b          .L8004A8D0
/* 4AC2C 8004A02C A10F00D0 */   sb        $t7, 0xd0($t0)
.L8004A030:
/* 4AC30 8004A030 10000227 */  b          .L8004A8D0
/* 4AC34 8004A034 A51800D0 */   sh        $t8, 0xd0($t0)
.L8004A038:
/* 4AC38 8004A038 10000225 */  b          .L8004A8D0
/* 4AC3C 8004A03C A50200D0 */   sh        $v0, 0xd0($t0)
.L8004A040:
/* 4AC40 8004A040 2401000A */  addiu      $at, $zero, 0xa
/* 4AC44 8004A044 14E1003C */  bne        $a3, $at, .L8004A138
/* 4AC48 8004A048 3C053F80 */   lui       $a1, 0x3f80
/* 4AC4C 8004A04C 97A40052 */  lhu        $a0, 0x52($sp)
/* 4AC50 8004A050 0C0166AF */  jal        func_80059ABC
/* 4AC54 8004A054 AFA80028 */   sw        $t0, 0x28($sp)
/* 4AC58 8004A058 8FA80028 */  lw         $t0, 0x28($sp)
/* 4AC5C 8004A05C 3C0B800F */  lui        $t3, %hi(gActors)
/* 4AC60 8004A060 950600D6 */  lhu        $a2, 0xd6($t0)
/* 4AC64 8004A064 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 4AC68 8004A068 00067080 */  sll        $t6, $a2, 2
/* 4AC6C 8004A06C 01C67023 */  subu       $t6, $t6, $a2
/* 4AC70 8004A070 000E7080 */  sll        $t6, $t6, 2
/* 4AC74 8004A074 01C67021 */  addu       $t6, $t6, $a2
/* 4AC78 8004A078 000E7080 */  sll        $t6, $t6, 2
/* 4AC7C 8004A07C 01C67023 */  subu       $t6, $t6, $a2
/* 4AC80 8004A080 000E70C0 */  sll        $t6, $t6, 3
/* 4AC84 8004A084 01CB1821 */  addu       $v1, $t6, $t3
/* 4AC88 8004A088 8C6C0098 */  lw         $t4, 0x98($v1)
/* 4AC8C 8004A08C 97AD0052 */  lhu        $t5, 0x52($sp)
/* 4AC90 8004A090 8C6A0088 */  lw         $t2, 0x88($v1)
/* 4AC94 8004A094 8C6F008C */  lw         $t7, 0x8c($v1)
/* 4AC98 8004A098 8C780090 */  lw         $t8, 0x90($v1)
/* 4AC9C 8004A09C 35990200 */  ori        $t9, $t4, 0x200
/* 4ACA0 8004A0A0 AC790098 */  sw         $t9, 0x98($v1)
/* 4ACA4 8004A0A4 A46D00D6 */  sh         $t5, 0xd6($v1)
/* 4ACA8 8004A0A8 AC6A0104 */  sw         $t2, 0x104($v1)
/* 4ACAC 8004A0AC AC6F0108 */  sw         $t7, 0x108($v1)
/* 4ACB0 8004A0B0 AC78010C */  sw         $t8, 0x10c($v1)
/* 4ACB4 8004A0B4 91040140 */  lbu        $a0, 0x140($t0)
/* 4ACB8 8004A0B8 24010002 */  addiu      $at, $zero, 2
/* 4ACBC 8004A0BC 14810003 */  bne        $a0, $at, .L8004A0CC
/* 4ACC0 8004A0C0 3C068013 */   lui       $a2, %hi(D_801373E0)
/* 4ACC4 8004A0C4 A1000140 */  sb         $zero, 0x140($t0)
/* 4ACC8 8004A0C8 300400FF */  andi       $a0, $zero, 0xff
.L8004A0CC:
/* 4ACCC 8004A0CC 24010006 */  addiu      $at, $zero, 6
/* 4ACD0 8004A0D0 14810004 */  bne        $a0, $at, .L8004A0E4
/* 4ACD4 8004A0D4 24C673E0 */   addiu     $a2, $a2, %lo(D_801373E0)
/* 4ACD8 8004A0D8 240E0008 */  addiu      $t6, $zero, 8
/* 4ACDC 8004A0DC A10E0140 */  sb         $t6, 0x140($t0)
/* 4ACE0 8004A0E0 31C400FF */  andi       $a0, $t6, 0xff
.L8004A0E4:
/* 4ACE4 8004A0E4 14800004 */  bnez       $a0, .L8004A0F8
/* 4ACE8 8004A0E8 3C010200 */   lui       $at, 0x200
/* 4ACEC 8004A0EC 240B0001 */  addiu      $t3, $zero, 1
/* 4ACF0 8004A0F0 10000002 */  b          .L8004A0FC
/* 4ACF4 8004A0F4 A50B0142 */   sh        $t3, 0x142($t0)
.L8004A0F8:
/* 4ACF8 8004A0F8 A5000142 */  sh         $zero, 0x142($t0)
.L8004A0FC:
/* 4ACFC 8004A0FC 8D0C0080 */  lw         $t4, 0x80($t0)
/* 4AD00 8004A100 A100012F */  sb         $zero, 0x12f($t0)
/* 4AD04 8004A104 0181C825 */  or         $t9, $t4, $at
/* 4AD08 8004A108 AD190080 */  sw         $t9, 0x80($t0)
/* 4AD0C 8004A10C 8C6D0088 */  lw         $t5, 0x88($v1)
/* 4AD10 8004A110 8D0A0088 */  lw         $t2, 0x88($t0)
/* 4AD14 8004A114 8C78008C */  lw         $t8, 0x8c($v1)
/* 4AD18 8004A118 8D0E008C */  lw         $t6, 0x8c($t0)
/* 4AD1C 8004A11C 240C0022 */  addiu      $t4, $zero, 0x22
/* 4AD20 8004A120 01AA7823 */  subu       $t7, $t5, $t2
/* 4AD24 8004A124 030E5823 */  subu       $t3, $t8, $t6
/* 4AD28 8004A128 ACCF0000 */  sw         $t7, ($a2)
/* 4AD2C 8004A12C ACCB0004 */  sw         $t3, 4($a2)
/* 4AD30 8004A130 100001E7 */  b          .L8004A8D0
/* 4AD34 8004A134 A50C00D0 */   sh        $t4, 0xd0($t0)
.L8004A138:
/* 4AD38 8004A138 24010014 */  addiu      $at, $zero, 0x14
/* 4AD3C 8004A13C 14E10054 */  bne        $a3, $at, .L8004A290
/* 4AD40 8004A140 24040001 */   addiu     $a0, $zero, 1
/* 4AD44 8004A144 24050010 */  addiu      $a1, $zero, 0x10
/* 4AD48 8004A148 AFA70048 */  sw         $a3, 0x48($sp)
/* 4AD4C 8004A14C 0C00A12E */  jal        func_800284B8
/* 4AD50 8004A150 AFA80028 */   sw        $t0, 0x28($sp)
/* 4AD54 8004A154 8FA70048 */  lw         $a3, 0x48($sp)
/* 4AD58 8004A158 8FA80028 */  lw         $t0, 0x28($sp)
/* 4AD5C 8004A15C 1040004C */  beqz       $v0, .L8004A290
/* 4AD60 8004A160 3046FFFF */   andi      $a2, $v0, 0xffff
/* 4AD64 8004A164 0006C880 */  sll        $t9, $a2, 2
/* 4AD68 8004A168 0326C823 */  subu       $t9, $t9, $a2
/* 4AD6C 8004A16C 0019C880 */  sll        $t9, $t9, 2
/* 4AD70 8004A170 0326C821 */  addu       $t9, $t9, $a2
/* 4AD74 8004A174 0019C880 */  sll        $t9, $t9, 2
/* 4AD78 8004A178 0326C823 */  subu       $t9, $t9, $a2
/* 4AD7C 8004A17C 3C0D800F */  lui        $t5, %hi(gActors)
/* 4AD80 8004A180 3C0A8013 */  lui        $t2, %hi(D_801373DE)
/* 4AD84 8004A184 954A73DE */  lhu        $t2, %lo(D_801373DE)($t2)
/* 4AD88 8004A188 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 4AD8C 8004A18C 0019C8C0 */  sll        $t9, $t9, 3
/* 4AD90 8004A190 032D1821 */  addu       $v1, $t9, $t5
/* 4AD94 8004A194 AFA30020 */  sw         $v1, 0x20($sp)
/* 4AD98 8004A198 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 4AD9C 8004A19C A7A6004E */  sh         $a2, 0x4e($sp)
/* 4ADA0 8004A1A0 AFA80028 */  sw         $t0, 0x28($sp)
/* 4ADA4 8004A1A4 0C0078B4 */  jal        func_8001E2D0
/* 4ADA8 8004A1A8 A46A00D2 */   sh        $t2, 0xd2($v1)
/* 4ADAC 8004A1AC 8FA30020 */  lw         $v1, 0x20($sp)
/* 4ADB0 8004A1B0 97A70052 */  lhu        $a3, 0x52($sp)
/* 4ADB4 8004A1B4 8C6F0098 */  lw         $t7, 0x98($v1)
/* 4ADB8 8004A1B8 8FA80028 */  lw         $t0, 0x28($sp)
/* 4ADBC 8004A1BC 35F80200 */  ori        $t8, $t7, 0x200
/* 4ADC0 8004A1C0 AC780098 */  sw         $t8, 0x98($v1)
/* 4ADC4 8004A1C4 A46700D6 */  sh         $a3, 0xd6($v1)
/* 4ADC8 8004A1C8 8D050088 */  lw         $a1, 0x88($t0)
/* 4ADCC 8004A1CC 97A6004E */  lhu        $a2, 0x4e($sp)
/* 4ADD0 8004A1D0 AC650104 */  sw         $a1, 0x104($v1)
/* 4ADD4 8004A1D4 AC650088 */  sw         $a1, 0x88($v1)
/* 4ADD8 8004A1D8 8D05008C */  lw         $a1, 0x8c($t0)
/* 4ADDC 8004A1DC 24010002 */  addiu      $at, $zero, 2
/* 4ADE0 8004A1E0 AC650108 */  sw         $a1, 0x108($v1)
/* 4ADE4 8004A1E4 AC65008C */  sw         $a1, 0x8c($v1)
/* 4ADE8 8004A1E8 8D050090 */  lw         $a1, 0x90($t0)
/* 4ADEC 8004A1EC 240E0008 */  addiu      $t6, $zero, 8
/* 4ADF0 8004A1F0 AC65010C */  sw         $a1, 0x10c($v1)
/* 4ADF4 8004A1F4 AC650090 */  sw         $a1, 0x90($v1)
/* 4ADF8 8004A1F8 91040140 */  lbu        $a0, 0x140($t0)
/* 4ADFC 8004A1FC A50600D6 */  sh         $a2, 0xd6($t0)
/* 4AE00 8004A200 14810003 */  bne        $a0, $at, .L8004A210
/* 4AE04 8004A204 3C068013 */   lui       $a2, %hi(D_801373E0)
/* 4AE08 8004A208 A1000140 */  sb         $zero, 0x140($t0)
/* 4AE0C 8004A20C 300400FF */  andi       $a0, $zero, 0xff
.L8004A210:
/* 4AE10 8004A210 24010006 */  addiu      $at, $zero, 6
/* 4AE14 8004A214 14810003 */  bne        $a0, $at, .L8004A224
/* 4AE18 8004A218 24C673E0 */   addiu     $a2, $a2, %lo(D_801373E0)
/* 4AE1C 8004A21C A10E0140 */  sb         $t6, 0x140($t0)
/* 4AE20 8004A220 31C400FF */  andi       $a0, $t6, 0xff
.L8004A224:
/* 4AE24 8004A224 14800004 */  bnez       $a0, .L8004A238
/* 4AE28 8004A228 3C010200 */   lui       $at, 0x200
/* 4AE2C 8004A22C 240B0001 */  addiu      $t3, $zero, 1
/* 4AE30 8004A230 10000002 */  b          .L8004A23C
/* 4AE34 8004A234 A50B0142 */   sh        $t3, 0x142($t0)
.L8004A238:
/* 4AE38 8004A238 A5000142 */  sh         $zero, 0x142($t0)
.L8004A23C:
/* 4AE3C 8004A23C 8D0C0080 */  lw         $t4, 0x80($t0)
/* 4AE40 8004A240 850D00AC */  lh         $t5, 0xac($t0)
/* 4AE44 8004A244 0181C825 */  or         $t9, $t4, $at
/* 4AE48 8004A248 851800B0 */  lh         $t8, 0xb0($t0)
/* 4AE4C 8004A24C AD190080 */  sw         $t9, 0x80($t0)
/* 4AE50 8004A250 05A10003 */  bgez       $t5, .L8004A260
/* 4AE54 8004A254 000D5043 */   sra       $t2, $t5, 1
/* 4AE58 8004A258 25A10001 */  addiu      $at, $t5, 1
/* 4AE5C 8004A25C 00015043 */  sra        $t2, $at, 1
.L8004A260:
/* 4AE60 8004A260 000A7C00 */  sll        $t7, $t2, 0x10
/* 4AE64 8004A264 00187400 */  sll        $t6, $t8, 0x10
/* 4AE68 8004A268 ACCF0000 */  sw         $t7, ($a2)
/* 4AE6C 8004A26C ACCE0004 */  sw         $t6, 4($a2)
/* 4AE70 8004A270 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 4AE74 8004A274 3C053F80 */  lui        $a1, 0x3f80
/* 4AE78 8004A278 0C0166AF */  jal        func_80059ABC
/* 4AE7C 8004A27C AFA80028 */   sw        $t0, 0x28($sp)
/* 4AE80 8004A280 8FA80028 */  lw         $t0, 0x28($sp)
/* 4AE84 8004A284 240B0022 */  addiu      $t3, $zero, 0x22
/* 4AE88 8004A288 10000191 */  b          .L8004A8D0
/* 4AE8C 8004A28C A50B00D0 */   sh        $t3, 0xd0($t0)
.L8004A290:
/* 4AE90 8004A290 2401000F */  addiu      $at, $zero, 0xf
/* 4AE94 8004A294 10E10002 */  beq        $a3, $at, .L8004A2A0
/* 4AE98 8004A298 24010010 */   addiu     $at, $zero, 0x10
/* 4AE9C 8004A29C 14E10034 */  bne        $a3, $at, .L8004A370
.L8004A2A0:
/* 4AEA0 8004A2A0 24010010 */   addiu     $at, $zero, 0x10
/* 4AEA4 8004A2A4 14E10002 */  bne        $a3, $at, .L8004A2B0
/* 4AEA8 8004A2A8 240C0004 */   addiu     $t4, $zero, 4
/* 4AEAC 8004A2AC A10C0140 */  sb         $t4, 0x140($t0)
.L8004A2B0:
/* 4AEB0 8004A2B0 91040140 */  lbu        $a0, 0x140($t0)
/* 4AEB4 8004A2B4 24010002 */  addiu      $at, $zero, 2
/* 4AEB8 8004A2B8 14810003 */  bne        $a0, $at, .L8004A2C8
/* 4AEBC 8004A2BC 24190008 */   addiu     $t9, $zero, 8
/* 4AEC0 8004A2C0 A1000140 */  sb         $zero, 0x140($t0)
/* 4AEC4 8004A2C4 300400FF */  andi       $a0, $zero, 0xff
.L8004A2C8:
/* 4AEC8 8004A2C8 24010006 */  addiu      $at, $zero, 6
/* 4AECC 8004A2CC 14810002 */  bne        $a0, $at, .L8004A2D8
/* 4AED0 8004A2D0 2418003F */   addiu     $t8, $zero, 0x3f
/* 4AED4 8004A2D4 A1190140 */  sb         $t9, 0x140($t0)
.L8004A2D8:
/* 4AED8 8004A2D8 8D0D0080 */  lw         $t5, 0x80($t0)
/* 4AEDC 8004A2DC 3C010081 */  lui        $at, 0x81
/* 4AEE0 8004A2E0 01A15024 */  and        $t2, $t5, $at
/* 4AEE4 8004A2E4 11400004 */  beqz       $t2, .L8004A2F8
/* 4AEE8 8004A2E8 24010008 */   addiu     $at, $zero, 8
/* 4AEEC 8004A2EC 240F003C */  addiu      $t7, $zero, 0x3c
/* 4AEF0 8004A2F0 10000002 */  b          .L8004A2FC
/* 4AEF4 8004A2F4 AD0F0170 */   sw        $t7, 0x170($t0)
.L8004A2F8:
/* 4AEF8 8004A2F8 AD180170 */  sw         $t8, 0x170($t0)
.L8004A2FC:
/* 4AEFC 8004A2FC 91040140 */  lbu        $a0, 0x140($t0)
/* 4AF00 8004A300 340DFFFF */  ori        $t5, $zero, 0xffff
/* 4AF04 8004A304 14800005 */  bnez       $a0, .L8004A31C
/* 4AF08 8004A308 00000000 */   nop
/* 4AF0C 8004A30C 8D0E0170 */  lw         $t6, 0x170($t0)
/* 4AF10 8004A310 91040140 */  lbu        $a0, 0x140($t0)
/* 4AF14 8004A314 25CB0001 */  addiu      $t3, $t6, 1
/* 4AF18 8004A318 AD0B0170 */  sw         $t3, 0x170($t0)
.L8004A31C:
/* 4AF1C 8004A31C 14810005 */  bne        $a0, $at, .L8004A334
/* 4AF20 8004A320 00000000 */   nop
/* 4AF24 8004A324 8D0C0170 */  lw         $t4, 0x170($t0)
/* 4AF28 8004A328 00000000 */  nop
/* 4AF2C 8004A32C 25990002 */  addiu      $t9, $t4, 2
/* 4AF30 8004A330 AD190170 */  sw         $t9, 0x170($t0)
.L8004A334:
/* 4AF34 8004A334 A50D00D6 */  sh         $t5, 0xd6($t0)
/* 4AF38 8004A338 24040089 */  addiu      $a0, $zero, 0x89
/* 4AF3C 8004A33C 0C000CD3 */  jal        func_8000334C
/* 4AF40 8004A340 AFA80028 */   sw        $t0, 0x28($sp)
/* 4AF44 8004A344 97A40052 */  lhu        $a0, 0x52($sp)
/* 4AF48 8004A348 0C0166AF */  jal        func_80059ABC
/* 4AF4C 8004A34C 3C053F80 */   lui       $a1, 0x3f80
/* 4AF50 8004A350 8FA80028 */  lw         $t0, 0x28($sp)
/* 4AF54 8004A354 3C010200 */  lui        $at, 0x200
/* 4AF58 8004A358 8D0A0080 */  lw         $t2, 0x80($t0)
/* 4AF5C 8004A35C 24180024 */  addiu      $t8, $zero, 0x24
/* 4AF60 8004A360 01417825 */  or         $t7, $t2, $at
/* 4AF64 8004A364 AD0F0080 */  sw         $t7, 0x80($t0)
/* 4AF68 8004A368 10000159 */  b          .L8004A8D0
/* 4AF6C 8004A36C A51800D0 */   sh        $t8, 0xd0($t0)
.L8004A370:
/* 4AF70 8004A370 8D0E0080 */  lw         $t6, 0x80($t0)
/* 4AF74 8004A374 00000000 */  nop
/* 4AF78 8004A378 000E5980 */  sll        $t3, $t6, 6
/* 4AF7C 8004A37C 0560000B */  bltz       $t3, .L8004A3AC
/* 4AF80 8004A380 00000000 */   nop
/* 4AF84 8004A384 910C012E */  lbu        $t4, 0x12e($t0)
/* 4AF88 8004A388 97A40052 */  lhu        $a0, 0x52($sp)
/* 4AF8C 8004A38C 31990040 */  andi       $t9, $t4, 0x40
/* 4AF90 8004A390 17200006 */  bnez       $t9, .L8004A3AC
/* 4AF94 8004A394 00000000 */   nop
/* 4AF98 8004A398 0C012518 */  jal        func_80049460
/* 4AF9C 8004A39C AFA80028 */   sw        $t0, 0x28($sp)
/* 4AFA0 8004A3A0 8FA80028 */  lw         $t0, 0x28($sp)
/* 4AFA4 8004A3A4 1440014B */  bnez       $v0, .L8004A8D4
/* 4AFA8 8004A3A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8004A3AC:
/* 4AFAC 8004A3AC 8D0D0080 */  lw         $t5, 0x80($t0)
/* 4AFB0 8004A3B0 3C010081 */  lui        $at, 0x81
/* 4AFB4 8004A3B4 01A15024 */  and        $t2, $t5, $at
/* 4AFB8 8004A3B8 11400018 */  beqz       $t2, .L8004A41C
/* 4AFBC 8004A3BC 97A40052 */   lhu       $a0, 0x52($sp)
/* 4AFC0 8004A3C0 8D0F0098 */  lw         $t7, 0x98($t0)
/* 4AFC4 8004A3C4 00000000 */  nop
/* 4AFC8 8004A3C8 31F80080 */  andi       $t8, $t7, 0x80
/* 4AFCC 8004A3CC 13000013 */  beqz       $t8, .L8004A41C
/* 4AFD0 8004A3D0 97A40052 */   lhu       $a0, 0x52($sp)
/* 4AFD4 8004A3D4 910200D1 */  lbu        $v0, 0xd1($t0)
/* 4AFD8 8004A3D8 24010003 */  addiu      $at, $zero, 3
/* 4AFDC 8004A3DC 1041013C */  beq        $v0, $at, .L8004A8D0
/* 4AFE0 8004A3E0 2401001F */   addiu     $at, $zero, 0x1f
/* 4AFE4 8004A3E4 1041013A */  beq        $v0, $at, .L8004A8D0
/* 4AFE8 8004A3E8 24010026 */   addiu     $at, $zero, 0x26
/* 4AFEC 8004A3EC 10410138 */  beq        $v0, $at, .L8004A8D0
/* 4AFF0 8004A3F0 24010001 */   addiu     $at, $zero, 1
/* 4AFF4 8004A3F4 10410137 */  beq        $v0, $at, .L8004A8D4
/* 4AFF8 8004A3F8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4AFFC 8004A3FC 97A40052 */  lhu        $a0, 0x52($sp)
/* 4B000 8004A400 0C016249 */  jal        func_80058924
/* 4B004 8004A404 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B008 8004A408 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B00C 8004A40C 240E0003 */  addiu      $t6, $zero, 3
/* 4B010 8004A410 1000012F */  b          .L8004A8D0
/* 4B014 8004A414 A50E00D0 */   sh        $t6, 0xd0($t0)
/* 4B018 8004A418 97A40052 */  lhu        $a0, 0x52($sp)
.L8004A41C:
/* 4B01C 8004A41C 0C0123B7 */  jal        func_80048EDC
/* 4B020 8004A420 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B024 8004A424 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B028 8004A428 00401825 */  or         $v1, $v0, $zero
/* 4B02C 8004A42C 950B012C */  lhu        $t3, 0x12c($t0)
/* 4B030 8004A430 00403825 */  or         $a3, $v0, $zero
/* 4B034 8004A434 316C0002 */  andi       $t4, $t3, 2
/* 4B038 8004A438 1180005F */  beqz       $t4, .L8004A5B8
/* 4B03C 8004A43C 24010003 */   addiu     $at, $zero, 3
/* 4B040 8004A440 14410003 */  bne        $v0, $at, .L8004A450
/* 4B044 8004A444 2419001E */   addiu     $t9, $zero, 0x1e
/* 4B048 8004A448 10000121 */  b          .L8004A8D0
/* 4B04C 8004A44C A51900D0 */   sh        $t9, 0xd0($t0)
.L8004A450:
/* 4B050 8004A450 24010002 */  addiu      $at, $zero, 2
/* 4B054 8004A454 1461001B */  bne        $v1, $at, .L8004A4C4
/* 4B058 8004A458 3C048013 */   lui       $a0, %hi(D_801373D8)
/* 4B05C 8004A45C 248473D8 */  addiu      $a0, $a0, %lo(D_801373D8)
/* 4B060 8004A460 94820000 */  lhu        $v0, ($a0)
/* 4B064 8004A464 00000000 */  nop
/* 4B068 8004A468 304D0001 */  andi       $t5, $v0, 1
/* 4B06C 8004A46C 11A00005 */  beqz       $t5, .L8004A484
/* 4B070 8004A470 30580002 */   andi      $t8, $v0, 2
/* 4B074 8004A474 8D0A0080 */  lw         $t2, 0x80($t0)
/* 4B078 8004A478 00000000 */  nop
/* 4B07C 8004A47C 354F0020 */  ori        $t7, $t2, 0x20
/* 4B080 8004A480 AD0F0080 */  sw         $t7, 0x80($t0)
.L8004A484:
/* 4B084 8004A484 13000005 */  beqz       $t8, .L8004A49C
/* 4B088 8004A488 240F000E */   addiu     $t7, $zero, 0xe
/* 4B08C 8004A48C 8D0E0080 */  lw         $t6, 0x80($t0)
/* 4B090 8004A490 2401FFDF */  addiu      $at, $zero, -0x21
/* 4B094 8004A494 01C15824 */  and        $t3, $t6, $at
/* 4B098 8004A498 AD0B0080 */  sw         $t3, 0x80($t0)
.L8004A49C:
/* 4B09C 8004A49C 8D190080 */  lw         $t9, 0x80($t0)
/* 4B0A0 8004A4A0 304CFF7F */  andi       $t4, $v0, 0xff7f
/* 4B0A4 8004A4A4 00196980 */  sll        $t5, $t9, 6
/* 4B0A8 8004A4A8 05A00004 */  bltz       $t5, .L8004A4BC
/* 4B0AC 8004A4AC A48C0000 */   sh        $t4, ($a0)
/* 4B0B0 8004A4B0 240A000D */  addiu      $t2, $zero, 0xd
/* 4B0B4 8004A4B4 10000106 */  b          .L8004A8D0
/* 4B0B8 8004A4B8 A50A00D0 */   sh        $t2, 0xd0($t0)
.L8004A4BC:
/* 4B0BC 8004A4BC 10000104 */  b          .L8004A8D0
/* 4B0C0 8004A4C0 A50F00D0 */   sh        $t7, 0xd0($t0)
.L8004A4C4:
/* 4B0C4 8004A4C4 24010001 */  addiu      $at, $zero, 1
/* 4B0C8 8004A4C8 1461001A */  bne        $v1, $at, .L8004A534
/* 4B0CC 8004A4CC 3C048013 */   lui       $a0, %hi(D_801373D8)
/* 4B0D0 8004A4D0 248473D8 */  addiu      $a0, $a0, %lo(D_801373D8)
/* 4B0D4 8004A4D4 94820000 */  lhu        $v0, ($a0)
/* 4B0D8 8004A4D8 00000000 */  nop
/* 4B0DC 8004A4DC 30580001 */  andi       $t8, $v0, 1
/* 4B0E0 8004A4E0 13000005 */  beqz       $t8, .L8004A4F8
/* 4B0E4 8004A4E4 304C0002 */   andi      $t4, $v0, 2
/* 4B0E8 8004A4E8 8D0E0080 */  lw         $t6, 0x80($t0)
/* 4B0EC 8004A4EC 00000000 */  nop
/* 4B0F0 8004A4F0 35CB0020 */  ori        $t3, $t6, 0x20
/* 4B0F4 8004A4F4 AD0B0080 */  sw         $t3, 0x80($t0)
.L8004A4F8:
/* 4B0F8 8004A4F8 11800005 */  beqz       $t4, .L8004A510
/* 4B0FC 8004A4FC 240E0015 */   addiu     $t6, $zero, 0x15
/* 4B100 8004A500 8D190080 */  lw         $t9, 0x80($t0)
/* 4B104 8004A504 2401FFDF */  addiu      $at, $zero, -0x21
/* 4B108 8004A508 03216824 */  and        $t5, $t9, $at
/* 4B10C 8004A50C AD0D0080 */  sw         $t5, 0x80($t0)
.L8004A510:
/* 4B110 8004A510 8D0A0080 */  lw         $t2, 0x80($t0)
/* 4B114 8004A514 24180014 */  addiu      $t8, $zero, 0x14
/* 4B118 8004A518 000A7980 */  sll        $t7, $t2, 6
/* 4B11C 8004A51C 05E00003 */  bltz       $t7, .L8004A52C
/* 4B120 8004A520 00000000 */   nop
/* 4B124 8004A524 100000EA */  b          .L8004A8D0
/* 4B128 8004A528 A51800D0 */   sh        $t8, 0xd0($t0)
.L8004A52C:
/* 4B12C 8004A52C 100000E8 */  b          .L8004A8D0
/* 4B130 8004A530 A50E00D0 */   sh        $t6, 0xd0($t0)
.L8004A534:
/* 4B134 8004A534 9102012E */  lbu        $v0, 0x12e($t0)
/* 4B138 8004A538 00000000 */  nop
/* 4B13C 8004A53C 304B0001 */  andi       $t3, $v0, 1
/* 4B140 8004A540 1560001D */  bnez       $t3, .L8004A5B8
/* 4B144 8004A544 344C0001 */   ori       $t4, $v0, 1
/* 4B148 8004A548 97A40052 */  lhu        $a0, 0x52($sp)
/* 4B14C 8004A54C A10C012E */  sb         $t4, 0x12e($t0)
/* 4B150 8004A550 AFA70048 */  sw         $a3, 0x48($sp)
/* 4B154 8004A554 0C012410 */  jal        func_80049040
/* 4B158 8004A558 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B15C 8004A55C 8FA70048 */  lw         $a3, 0x48($sp)
/* 4B160 8004A560 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B164 8004A564 10400014 */  beqz       $v0, .L8004A5B8
/* 4B168 8004A568 00000000 */   nop
/* 4B16C 8004A56C 8D190080 */  lw         $t9, 0x80($t0)
/* 4B170 8004A570 97A40052 */  lhu        $a0, 0x52($sp)
/* 4B174 8004A574 00196980 */  sll        $t5, $t9, 6
/* 4B178 8004A578 05A00009 */  bltz       $t5, .L8004A5A0
/* 4B17C 8004A57C 24050028 */   addiu     $a1, $zero, 0x28
/* 4B180 8004A580 97A40052 */  lhu        $a0, 0x52($sp)
/* 4B184 8004A584 24050027 */  addiu      $a1, $zero, 0x27
/* 4B188 8004A588 0C0174DC */  jal        func_8005D370
/* 4B18C 8004A58C AFA80028 */   sw        $t0, 0x28($sp)
/* 4B190 8004A590 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B194 8004A594 240A0016 */  addiu      $t2, $zero, 0x16
/* 4B198 8004A598 100000CD */  b          .L8004A8D0
/* 4B19C 8004A59C A50A00D0 */   sh        $t2, 0xd0($t0)
.L8004A5A0:
/* 4B1A0 8004A5A0 0C0174DC */  jal        func_8005D370
/* 4B1A4 8004A5A4 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B1A8 8004A5A8 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B1AC 8004A5AC 240F001A */  addiu      $t7, $zero, 0x1a
/* 4B1B0 8004A5B0 100000C7 */  b          .L8004A8D0
/* 4B1B4 8004A5B4 A50F00D0 */   sh        $t7, 0xd0($t0)
.L8004A5B8:
/* 4B1B8 8004A5B8 910200D1 */  lbu        $v0, 0xd1($t0)
/* 4B1BC 8004A5BC 2401000D */  addiu      $at, $zero, 0xd
/* 4B1C0 8004A5C0 10410003 */  beq        $v0, $at, .L8004A5D0
/* 4B1C4 8004A5C4 2401000E */   addiu     $at, $zero, 0xe
/* 4B1C8 8004A5C8 1441005C */  bne        $v0, $at, .L8004A73C
/* 4B1CC 8004A5CC 00000000 */   nop
.L8004A5D0:
/* 4B1D0 8004A5D0 10E0005A */  beqz       $a3, .L8004A73C
/* 4B1D4 8004A5D4 00000000 */   nop
/* 4B1D8 8004A5D8 8D180098 */  lw         $t8, 0x98($t0)
/* 4B1DC 8004A5DC 00000000 */  nop
/* 4B1E0 8004A5E0 330E0040 */  andi       $t6, $t8, 0x40
/* 4B1E4 8004A5E4 15C00055 */  bnez       $t6, .L8004A73C
/* 4B1E8 8004A5E8 00000000 */   nop
/* 4B1EC 8004A5EC 910B00D0 */  lbu        $t3, 0xd0($t0)
/* 4B1F0 8004A5F0 00000000 */  nop
/* 4B1F4 8004A5F4 29610002 */  slti       $at, $t3, 2
/* 4B1F8 8004A5F8 14200015 */  bnez       $at, .L8004A650
/* 4B1FC 8004A5FC 00000000 */   nop
/* 4B200 8004A600 8D0400EC */  lw         $a0, 0xec($t0)
/* 4B204 8004A604 0C0171B4 */  jal        func_8005C6D0
/* 4B208 8004A608 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B20C 8004A60C 2404000B */  addiu      $a0, $zero, 0xb
/* 4B210 8004A610 0C012325 */  jal        func_80048C94
/* 4B214 8004A614 AFA2002C */   sw        $v0, 0x2c($sp)
/* 4B218 8004A618 44829000 */  mtc1       $v0, $f18
/* 4B21C 8004A61C 3C013FE8 */  lui        $at, 0x3fe8
/* 4B220 8004A620 46809121 */  cvt.d.w    $f4, $f18
/* 4B224 8004A624 44813800 */  mtc1       $at, $f7
/* 4B228 8004A628 8FA5002C */  lw         $a1, 0x2c($sp)
/* 4B22C 8004A62C 44803000 */  mtc1       $zero, $f6
/* 4B230 8004A630 44855000 */  mtc1       $a1, $f10
/* 4B234 8004A634 46262202 */  mul.d      $f8, $f4, $f6
/* 4B238 8004A638 46805421 */  cvt.d.w    $f16, $f10
/* 4B23C 8004A63C 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B240 8004A640 4630403C */  c.lt.d     $f8, $f16
/* 4B244 8004A644 00000000 */  nop
/* 4B248 8004A648 4500003C */  bc1f       .L8004A73C
/* 4B24C 8004A64C 00000000 */   nop
.L8004A650:
/* 4B250 8004A650 8D0D0080 */  lw         $t5, 0x80($t0)
/* 4B254 8004A654 3C01FF3C */  lui        $at, 0xff3c
/* 4B258 8004A658 3421FFFF */  ori        $at, $at, 0xffff
/* 4B25C 8004A65C 01A15024 */  and        $t2, $t5, $at
/* 4B260 8004A660 3C010002 */  lui        $at, 2
/* 4B264 8004A664 240C0004 */  addiu      $t4, $zero, 4
/* 4B268 8004A668 24190002 */  addiu      $t9, $zero, 2
/* 4B26C 8004A66C 0141C025 */  or         $t8, $t2, $at
/* 4B270 8004A670 AD0A0080 */  sw         $t2, 0x80($t0)
/* 4B274 8004A674 AD0C017C */  sw         $t4, 0x17c($t0)
/* 4B278 8004A678 A51900B0 */  sh         $t9, 0xb0($t0)
/* 4B27C 8004A67C AD180080 */  sw         $t8, 0x80($t0)
/* 4B280 8004A680 24040024 */  addiu      $a0, $zero, 0x24
/* 4B284 8004A684 0C000CD3 */  jal        func_8000334C
/* 4B288 8004A688 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B28C 8004A68C 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B290 8004A690 2404000F */  addiu      $a0, $zero, 0xf
/* 4B294 8004A694 8D0E0150 */  lw         $t6, 0x150($t0)
/* 4B298 8004A698 00000000 */  nop
/* 4B29C 8004A69C 11C00004 */  beqz       $t6, .L8004A6B0
/* 4B2A0 8004A6A0 00000000 */   nop
/* 4B2A4 8004A6A4 8D0B0104 */  lw         $t3, 0x104($t0)
/* 4B2A8 8004A6A8 00000000 */  nop
/* 4B2AC 8004A6AC AD0B00EC */  sw         $t3, 0xec($t0)
.L8004A6B0:
/* 4B2B0 8004A6B0 0C012325 */  jal        func_80048C94
/* 4B2B4 8004A6B4 AFA80028 */   sw        $t0, 0x28($sp)
/* 4B2B8 8004A6B8 44829000 */  mtc1       $v0, $f18
/* 4B2BC 8004A6BC 3C013FF8 */  lui        $at, 0x3ff8
/* 4B2C0 8004A6C0 46809121 */  cvt.d.w    $f4, $f18
/* 4B2C4 8004A6C4 44813800 */  mtc1       $at, $f7
/* 4B2C8 8004A6C8 44803000 */  mtc1       $zero, $f6
/* 4B2CC 8004A6CC 8FA80028 */  lw         $t0, 0x28($sp)
/* 4B2D0 8004A6D0 46262282 */  mul.d      $f10, $f4, $f6
/* 4B2D4 8004A6D4 8D190080 */  lw         $t9, 0x80($t0)
/* 4B2D8 8004A6D8 240A0024 */  addiu      $t2, $zero, 0x24
/* 4B2DC 8004A6DC 00196980 */  sll        $t5, $t9, 6
/* 4B2E0 8004A6E0 240F0018 */  addiu      $t7, $zero, 0x18
/* 4B2E4 8004A6E4 444CF800 */  cfc1       $t4, $31
/* 4B2E8 8004A6E8 00000000 */  nop
/* 4B2EC 8004A6EC 35810003 */  ori        $at, $t4, 3
/* 4B2F0 8004A6F0 38210002 */  xori       $at, $at, 2
/* 4B2F4 8004A6F4 44C1F800 */  ctc1       $at, $31
/* 4B2F8 8004A6F8 00000000 */  nop
/* 4B2FC 8004A6FC 46205224 */  cvt.w.d    $f8, $f10
/* 4B300 8004A700 44CCF800 */  ctc1       $t4, $31
/* 4B304 8004A704 05A00004 */  bltz       $t5, .L8004A718
/* 4B308 8004A708 E50800F0 */   swc1      $f8, 0xf0($t0)
/* 4B30C 8004A70C AD0A0170 */  sw         $t2, 0x170($t0)
/* 4B310 8004A710 1000000A */  b          .L8004A73C
/* 4B314 8004A714 A50F00D0 */   sh        $t7, 0xd0($t0)
.L8004A718:
/* 4B318 8004A718 91180140 */  lbu        $t8, 0x140($t0)
/* 4B31C 8004A71C 240B0025 */  addiu      $t3, $zero, 0x25
/* 4B320 8004A720 17000004 */  bnez       $t8, .L8004A734
/* 4B324 8004A724 240C001C */   addiu     $t4, $zero, 0x1c
/* 4B328 8004A728 240E0026 */  addiu      $t6, $zero, 0x26
/* 4B32C 8004A72C 10000002 */  b          .L8004A738
/* 4B330 8004A730 AD0E0170 */   sw        $t6, 0x170($t0)
.L8004A734:
/* 4B334 8004A734 AD0B0170 */  sw         $t3, 0x170($t0)
.L8004A738:
/* 4B338 8004A738 A50C00D0 */  sh         $t4, 0xd0($t0)
.L8004A73C:
/* 4B33C 8004A73C 9505012C */  lhu        $a1, 0x12c($t0)
/* 4B340 8004A740 3C090200 */  lui        $t1, 0x200
/* 4B344 8004A744 30B90004 */  andi       $t9, $a1, 4
/* 4B348 8004A748 13200049 */  beqz       $t9, .L8004A870
/* 4B34C 8004A74C 3C068013 */   lui       $a2, %hi(D_801373E0)
/* 4B350 8004A750 24C673E0 */  addiu      $a2, $a2, %lo(D_801373E0)
/* 4B354 8004A754 80C20010 */  lb         $v0, 0x10($a2)
/* 4B358 8004A758 24070004 */  addiu      $a3, $zero, 4
/* 4B35C 8004A75C 14400003 */  bnez       $v0, .L8004A76C
/* 4B360 8004A760 30AD0008 */   andi      $t5, $a1, 8
/* 4B364 8004A764 10000001 */  b          .L8004A76C
/* 4B368 8004A768 24070008 */   addiu     $a3, $zero, 8
.L8004A76C:
/* 4B36C 8004A76C 11A00004 */  beqz       $t5, .L8004A780
/* 4B370 8004A770 00000000 */   nop
/* 4B374 8004A774 14400002 */  bnez       $v0, .L8004A780
/* 4B378 8004A778 00000000 */   nop
/* 4B37C 8004A77C 2407000C */  addiu      $a3, $zero, 0xc
.L8004A780:
/* 4B380 8004A780 8D030080 */  lw         $v1, 0x80($t0)
/* 4B384 8004A784 3C010081 */  lui        $at, 0x81
/* 4B388 8004A788 00615024 */  and        $t2, $v1, $at
/* 4B38C 8004A78C 1140002C */  beqz       $t2, .L8004A840
/* 4B390 8004A790 28410009 */   slti      $at, $v0, 9
/* 4B394 8004A794 14200004 */  bnez       $at, .L8004A7A8
/* 4B398 8004A798 00402025 */   or        $a0, $v0, $zero
/* 4B39C 8004A79C 240F0010 */  addiu      $t7, $zero, 0x10
/* 4B3A0 8004A7A0 10000001 */  b          .L8004A7A8
/* 4B3A4 8004A7A4 01E22023 */   subu      $a0, $t7, $v0
.L8004A7A8:
/* 4B3A8 8004A7A8 80D80012 */  lb         $t8, 0x12($a2)
/* 4B3AC 8004A7AC 00000000 */  nop
/* 4B3B0 8004A7B0 00F8082A */  slt        $at, $a3, $t8
/* 4B3B4 8004A7B4 1420002F */  bnez       $at, .L8004A874
/* 4B3B8 8004A7B8 30AE0001 */   andi      $t6, $a1, 1
/* 4B3BC 8004A7BC 80CE0011 */  lb         $t6, 0x11($a2)
/* 4B3C0 8004A7C0 00000000 */  nop
/* 4B3C4 8004A7C4 29C1000E */  slti       $at, $t6, 0xe
/* 4B3C8 8004A7C8 10200029 */  beqz       $at, .L8004A870
/* 4B3CC 8004A7CC 28810005 */   slti      $at, $a0, 5
/* 4B3D0 8004A7D0 1420000E */  bnez       $at, .L8004A80C
/* 4B3D4 8004A7D4 2401BFBF */   addiu     $at, $zero, -0x4041
/* 4B3D8 8004A7D8 00615824 */  and        $t3, $v1, $at
/* 4B3DC 8004A7DC 0169C824 */  and        $t9, $t3, $t1
/* 4B3E0 8004A7E0 17200004 */  bnez       $t9, .L8004A7F4
/* 4B3E4 8004A7E4 AD0B0080 */   sw        $t3, 0x80($t0)
/* 4B3E8 8004A7E8 240D000F */  addiu      $t5, $zero, 0xf
/* 4B3EC 8004A7EC 10000038 */  b          .L8004A8D0
/* 4B3F0 8004A7F0 A50D00D0 */   sh        $t5, 0xd0($t0)
.L8004A7F4:
/* 4B3F4 8004A7F4 950A0142 */  lhu        $t2, 0x142($t0)
/* 4B3F8 8004A7F8 240F0028 */  addiu      $t7, $zero, 0x28
/* 4B3FC 8004A7FC 15400035 */  bnez       $t2, .L8004A8D4
/* 4B400 8004A800 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4B404 8004A804 10000032 */  b          .L8004A8D0
/* 4B408 8004A808 A50F00D0 */   sh        $t7, 0xd0($t0)
.L8004A80C:
/* 4B40C 8004A80C 24010004 */  addiu      $at, $zero, 4
/* 4B410 8004A810 14810017 */  bne        $a0, $at, .L8004A870
/* 4B414 8004A814 2401BFBF */   addiu     $at, $zero, -0x4041
/* 4B418 8004A818 0061C024 */  and        $t8, $v1, $at
/* 4B41C 8004A81C 03095824 */  and        $t3, $t8, $t1
/* 4B420 8004A820 15600004 */  bnez       $t3, .L8004A834
/* 4B424 8004A824 AD180080 */   sw        $t8, 0x80($t0)
/* 4B428 8004A828 240C000B */  addiu      $t4, $zero, 0xb
/* 4B42C 8004A82C 10000028 */  b          .L8004A8D0
/* 4B430 8004A830 A50C00D0 */   sh        $t4, 0xd0($t0)
.L8004A834:
/* 4B434 8004A834 2419000C */  addiu      $t9, $zero, 0xc
/* 4B438 8004A838 10000025 */  b          .L8004A8D0
/* 4B43C 8004A83C A51900D0 */   sh        $t9, 0xd0($t0)
.L8004A840:
/* 4B440 8004A840 80CD0012 */  lb         $t5, 0x12($a2)
/* 4B444 8004A844 00695024 */  and        $t2, $v1, $t1
/* 4B448 8004A848 00ED082A */  slt        $at, $a3, $t5
/* 4B44C 8004A84C 14200009 */  bnez       $at, .L8004A874
/* 4B450 8004A850 30AE0001 */   andi      $t6, $a1, 1
/* 4B454 8004A854 15400004 */  bnez       $t2, .L8004A868
/* 4B458 8004A858 24180012 */   addiu     $t8, $zero, 0x12
/* 4B45C 8004A85C 240F0010 */  addiu      $t7, $zero, 0x10
/* 4B460 8004A860 1000001B */  b          .L8004A8D0
/* 4B464 8004A864 A50F00D0 */   sh        $t7, 0xd0($t0)
.L8004A868:
/* 4B468 8004A868 10000019 */  b          .L8004A8D0
/* 4B46C 8004A86C A51800D0 */   sh        $t8, 0xd0($t0)
.L8004A870:
/* 4B470 8004A870 30AE0001 */  andi       $t6, $a1, 1
.L8004A874:
/* 4B474 8004A874 11C00017 */  beqz       $t6, .L8004A8D4
/* 4B478 8004A878 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4B47C 8004A87C 8D030080 */  lw         $v1, 0x80($t0)
/* 4B480 8004A880 3C048013 */  lui        $a0, %hi(D_801373D8)
/* 4B484 8004A884 306B4000 */  andi       $t3, $v1, 0x4000
/* 4B488 8004A888 15600011 */  bnez       $t3, .L8004A8D0
/* 4B48C 8004A88C 248473D8 */   addiu     $a0, $a0, %lo(D_801373D8)
/* 4B490 8004A890 94820000 */  lhu        $v0, ($a0)
/* 4B494 8004A894 00000000 */  nop
/* 4B498 8004A898 304C0090 */  andi       $t4, $v0, 0x90
/* 4B49C 8004A89C 1580000C */  bnez       $t4, .L8004A8D0
/* 4B4A0 8004A8A0 30590003 */   andi      $t9, $v0, 3
/* 4B4A4 8004A8A4 1320000A */  beqz       $t9, .L8004A8D0
/* 4B4A8 8004A8A8 2401BFBF */   addiu     $at, $zero, -0x4041
/* 4B4AC 8004A8AC 00616824 */  and        $t5, $v1, $at
/* 4B4B0 8004A8B0 01A97824 */  and        $t7, $t5, $t1
/* 4B4B4 8004A8B4 15E00004 */  bnez       $t7, .L8004A8C8
/* 4B4B8 8004A8B8 AD0D0080 */   sw        $t5, 0x80($t0)
/* 4B4BC 8004A8BC 24180007 */  addiu      $t8, $zero, 7
/* 4B4C0 8004A8C0 10000003 */  b          .L8004A8D0
/* 4B4C4 8004A8C4 A51800D0 */   sh        $t8, 0xd0($t0)
.L8004A8C8:
/* 4B4C8 8004A8C8 240E0008 */  addiu      $t6, $zero, 8
/* 4B4CC 8004A8CC A50E00D0 */  sh         $t6, 0xd0($t0)
.L8004A8D0:
/* 4B4D0 8004A8D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004A8D4:
/* 4B4D4 8004A8D4 27BD0050 */  addiu      $sp, $sp, 0x50
/* 4B4D8 8004A8D8 03E00008 */  jr         $ra
/* 4B4DC 8004A8DC 00000000 */   nop
