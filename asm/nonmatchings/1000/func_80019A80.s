glabel func_80019A80
/* 1A680 80019A80 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A684 80019A84 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1A688 80019A88 AFB40030 */  sw         $s4, 0x30($sp)
/* 1A68C 80019A8C AFB3002C */  sw         $s3, 0x2c($sp)
/* 1A690 80019A90 AFB20028 */  sw         $s2, 0x28($sp)
/* 1A694 80019A94 AFB10024 */  sw         $s1, 0x24($sp)
/* 1A698 80019A98 0C00662D */  jal        func_800198B4
/* 1A69C 80019A9C AFB00020 */   sw        $s0, 0x20($sp)
/* 1A6A0 80019AA0 340EFFFF */  ori        $t6, $zero, 0xffff
/* 1A6A4 80019AA4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1A6A8 80019AA8 240400B5 */  addiu      $a0, $zero, 0xb5
/* 1A6AC 80019AAC 24053010 */  addiu      $a1, $zero, 0x3010
/* 1A6B0 80019AB0 3406FF7B */  ori        $a2, $zero, 0xff7b
/* 1A6B4 80019AB4 3407FFF2 */  ori        $a3, $zero, 0xfff2
/* 1A6B8 80019AB8 0C009CFF */  jal        func_800273FC
/* 1A6BC 80019ABC 241000B6 */   addiu     $s0, $zero, 0xb6
/* 1A6C0 80019AC0 00009025 */  or         $s2, $zero, $zero
/* 1A6C4 80019AC4 00008825 */  or         $s1, $zero, $zero
/* 1A6C8 80019AC8 2413002E */  addiu      $s3, $zero, 0x2e
.L80019ACC:
/* 1A6CC 80019ACC 02330019 */  multu      $s1, $s3
/* 1A6D0 80019AD0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1A6D4 80019AD4 26100001 */  addiu      $s0, $s0, 1
/* 1A6D8 80019AD8 3219FFFF */  andi       $t9, $s0, 0xffff
/* 1A6DC 80019ADC 3418FFFF */  ori        $t8, $zero, 0xffff
/* 1A6E0 80019AE0 AFB80010 */  sw         $t8, 0x10($sp)
/* 1A6E4 80019AE4 03208025 */  or         $s0, $t9, $zero
/* 1A6E8 80019AE8 24053012 */  addiu      $a1, $zero, 0x3012
/* 1A6EC 80019AEC 24070002 */  addiu      $a3, $zero, 2
/* 1A6F0 80019AF0 00003012 */  mflo       $a2
/* 1A6F4 80019AF4 24C6FF9C */  addiu      $a2, $a2, -0x64
/* 1A6F8 80019AF8 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 1A6FC 80019AFC 0C009CFF */  jal        func_800273FC
/* 1A700 80019B00 01E03025 */   or        $a2, $t7, $zero
/* 1A704 80019B04 26520001 */  addiu      $s2, $s2, 1
/* 1A708 80019B08 3251FFFF */  andi       $s1, $s2, 0xffff
/* 1A70C 80019B0C 2A210005 */  slti       $at, $s1, 5
/* 1A710 80019B10 1420FFEE */  bnez       $at, .L80019ACC
/* 1A714 80019B14 02209025 */   or        $s2, $s1, $zero
/* 1A718 80019B18 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1A71C 80019B1C 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1A720 80019B20 24010004 */  addiu      $at, $zero, 4
/* 1A724 80019B24 1041000A */  beq        $v0, $at, .L80019B50
/* 1A728 80019B28 3204FFFF */   andi      $a0, $s0, 0xffff
/* 1A72C 80019B2C 3409FFFF */  ori        $t1, $zero, 0xffff
/* 1A730 80019B30 AFA90010 */  sw         $t1, 0x10($sp)
/* 1A734 80019B34 24053014 */  addiu      $a1, $zero, 0x3014
/* 1A738 80019B38 24060080 */  addiu      $a2, $zero, 0x80
/* 1A73C 80019B3C 0C009CFF */  jal        func_800273FC
/* 1A740 80019B40 24070012 */   addiu     $a3, $zero, 0x12
/* 1A744 80019B44 3C028018 */  lui        $v0, %hi(D_8017815C)
/* 1A748 80019B48 9442815C */  lhu        $v0, %lo(D_8017815C)($v0)
/* 1A74C 80019B4C 00000000 */  nop
.L80019B50:
/* 1A750 80019B50 1040000F */  beqz       $v0, .L80019B90
/* 1A754 80019B54 240400B4 */   addiu     $a0, $zero, 0xb4
/* 1A758 80019B58 240400B4 */  addiu      $a0, $zero, 0xb4
/* 1A75C 80019B5C 24050110 */  addiu      $a1, $zero, 0x110
/* 1A760 80019B60 3406FF78 */  ori        $a2, $zero, 0xff78
/* 1A764 80019B64 3407FFD0 */  ori        $a3, $zero, 0xffd0
/* 1A768 80019B68 0C009CFF */  jal        func_800273FC
/* 1A76C 80019B6C AFA00010 */   sw        $zero, 0x10($sp)
/* 1A770 80019B70 2404007A */  addiu      $a0, $zero, 0x7a
/* 1A774 80019B74 2405011A */  addiu      $a1, $zero, 0x11a
/* 1A778 80019B78 3406FF78 */  ori        $a2, $zero, 0xff78
/* 1A77C 80019B7C 3407FFDC */  ori        $a3, $zero, 0xffdc
/* 1A780 80019B80 0C009CFF */  jal        func_800273FC
/* 1A784 80019B84 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A788 80019B88 10000006 */  b          .L80019BA4
/* 1A78C 80019B8C 00000000 */   nop
.L80019B90:
/* 1A790 80019B90 24050110 */  addiu      $a1, $zero, 0x110
/* 1A794 80019B94 3406FF78 */  ori        $a2, $zero, 0xff78
/* 1A798 80019B98 3407FFDC */  ori        $a3, $zero, 0xffdc
/* 1A79C 80019B9C 0C009CFF */  jal        func_800273FC
/* 1A7A0 80019BA0 AFA00010 */   sw        $zero, 0x10($sp)
.L80019BA4:
/* 1A7A4 80019BA4 3C038018 */  lui        $v1, %hi(D_8017815C)
/* 1A7A8 80019BA8 3C0A8018 */  lui        $t2, %hi(D_8017815E)
/* 1A7AC 80019BAC 954A815E */  lhu        $t2, %lo(D_8017815E)($t2)
/* 1A7B0 80019BB0 9463815C */  lhu        $v1, %lo(D_8017815C)($v1)
/* 1A7B4 80019BB4 2404007B */  addiu      $a0, $zero, 0x7b
/* 1A7B8 80019BB8 006A082A */  slt        $at, $v1, $t2
/* 1A7BC 80019BBC 10200008 */  beqz       $at, .L80019BE0
/* 1A7C0 80019BC0 2405011E */   addiu     $a1, $zero, 0x11e
/* 1A7C4 80019BC4 24060082 */  addiu      $a2, $zero, 0x82
/* 1A7C8 80019BC8 24070030 */  addiu      $a3, $zero, 0x30
/* 1A7CC 80019BCC 0C009CFF */  jal        func_800273FC
/* 1A7D0 80019BD0 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A7D4 80019BD4 3C038018 */  lui        $v1, %hi(D_8017815C)
/* 1A7D8 80019BD8 9463815C */  lhu        $v1, %lo(D_8017815C)($v1)
/* 1A7DC 80019BDC 00000000 */  nop
.L80019BE0:
/* 1A7E0 80019BE0 00035840 */  sll        $t3, $v1, 1
/* 1A7E4 80019BE4 3C0C800D */  lui        $t4, %hi(D_800C8C04)
/* 1A7E8 80019BE8 018B6021 */  addu       $t4, $t4, $t3
/* 1A7EC 80019BEC 958C8C04 */  lhu        $t4, %lo(D_800C8C04)($t4)
/* 1A7F0 80019BF0 24100039 */  addiu      $s0, $zero, 0x39
/* 1A7F4 80019BF4 19800056 */  blez       $t4, .L80019D50
/* 1A7F8 80019BF8 00009025 */   or        $s2, $zero, $zero
.L80019BFC:
/* 1A7FC 80019BFC 00036880 */  sll        $t5, $v1, 2
/* 1A800 80019C00 3C0E800D */  lui        $t6, %hi(D_800C8EDC)
/* 1A804 80019C04 01CD7021 */  addu       $t6, $t6, $t5
/* 1A808 80019C08 8DCE8EDC */  lw         $t6, %lo(D_800C8EDC)($t6)
/* 1A80C 80019C0C 00121040 */  sll        $v0, $s2, 1
/* 1A810 80019C10 3C18800D */  lui        $t8, %hi(D_800C95F4)
/* 1A814 80019C14 3C19800D */  lui        $t9, %hi(D_800C9610)
/* 1A818 80019C18 27399610 */  addiu      $t9, $t9, %lo(D_800C9610)
/* 1A81C 80019C1C 271895F4 */  addiu      $t8, $t8, %lo(D_800C95F4)
/* 1A820 80019C20 01C27821 */  addu       $t7, $t6, $v0
/* 1A824 80019C24 95F10000 */  lhu        $s1, ($t7)
/* 1A828 80019C28 00589821 */  addu       $s3, $v0, $t8
/* 1A82C 80019C2C 0059A021 */  addu       $s4, $v0, $t9
/* 1A830 80019C30 96870000 */  lhu        $a3, ($s4)
/* 1A834 80019C34 96660000 */  lhu        $a2, ($s3)
/* 1A838 80019C38 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A83C 80019C3C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1A840 80019C40 0C009CFF */  jal        func_800273FC
/* 1A844 80019C44 02202825 */   or        $a1, $s1, $zero
/* 1A848 80019C48 26100001 */  addiu      $s0, $s0, 1
/* 1A84C 80019C4C 3208FFFF */  andi       $t0, $s0, 0xffff
/* 1A850 80019C50 24013022 */  addiu      $at, $zero, 0x3022
/* 1A854 80019C54 1221000A */  beq        $s1, $at, .L80019C80
/* 1A858 80019C58 01008025 */   or        $s0, $t0, $zero
/* 1A85C 80019C5C 24013026 */  addiu      $at, $zero, 0x3026
/* 1A860 80019C60 12210007 */  beq        $s1, $at, .L80019C80
/* 1A864 80019C64 2401302E */   addiu     $at, $zero, 0x302e
/* 1A868 80019C68 12210005 */  beq        $s1, $at, .L80019C80
/* 1A86C 80019C6C 24013034 */   addiu     $at, $zero, 0x3034
/* 1A870 80019C70 12210003 */  beq        $s1, $at, .L80019C80
/* 1A874 80019C74 24013036 */   addiu     $at, $zero, 0x3036
/* 1A878 80019C78 1621000C */  bne        $s1, $at, .L80019CAC
/* 1A87C 80019C7C 3204FFFF */   andi      $a0, $s0, 0xffff
.L80019C80:
/* 1A880 80019C80 3204FFFF */  andi       $a0, $s0, 0xffff
/* 1A884 80019C84 26100001 */  addiu      $s0, $s0, 1
/* 1A888 80019C88 3209FFFF */  andi       $t1, $s0, 0xffff
/* 1A88C 80019C8C 96660000 */  lhu        $a2, ($s3)
/* 1A890 80019C90 96870000 */  lhu        $a3, ($s4)
/* 1A894 80019C94 01208025 */  or         $s0, $t1, $zero
/* 1A898 80019C98 24053006 */  addiu      $a1, $zero, 0x3006
/* 1A89C 80019C9C 0C009CFF */  jal        func_800273FC
/* 1A8A0 80019CA0 AFA00010 */   sw        $zero, 0x10($sp)
/* 1A8A4 80019CA4 10000009 */  b          .L80019CCC
/* 1A8A8 80019CA8 00000000 */   nop
.L80019CAC:
/* 1A8AC 80019CAC 26100001 */  addiu      $s0, $s0, 1
/* 1A8B0 80019CB0 320AFFFF */  andi       $t2, $s0, 0xffff
/* 1A8B4 80019CB4 96660000 */  lhu        $a2, ($s3)
/* 1A8B8 80019CB8 96870000 */  lhu        $a3, ($s4)
/* 1A8BC 80019CBC 01408025 */  or         $s0, $t2, $zero
/* 1A8C0 80019CC0 24053004 */  addiu      $a1, $zero, 0x3004
/* 1A8C4 80019CC4 0C009CFF */  jal        func_800273FC
/* 1A8C8 80019CC8 AFA00010 */   sw        $zero, 0x10($sp)
.L80019CCC:
/* 1A8CC 80019CCC 3C038018 */  lui        $v1, %hi(D_8017815C)
/* 1A8D0 80019CD0 9463815C */  lhu        $v1, %lo(D_8017815C)($v1)
/* 1A8D4 80019CD4 24010004 */  addiu      $at, $zero, 4
/* 1A8D8 80019CD8 14610015 */  bne        $v1, $at, .L80019D30
/* 1A8DC 80019CDC 00034040 */   sll       $t0, $v1, 1
/* 1A8E0 80019CE0 24010009 */  addiu      $at, $zero, 9
/* 1A8E4 80019CE4 16410012 */  bne        $s2, $at, .L80019D30
/* 1A8E8 80019CE8 00105880 */   sll       $t3, $s0, 2
/* 1A8EC 80019CEC 01705823 */  subu       $t3, $t3, $s0
/* 1A8F0 80019CF0 000B5880 */  sll        $t3, $t3, 2
/* 1A8F4 80019CF4 01705821 */  addu       $t3, $t3, $s0
/* 1A8F8 80019CF8 000B5880 */  sll        $t3, $t3, 2
/* 1A8FC 80019CFC 01705823 */  subu       $t3, $t3, $s0
/* 1A900 80019D00 3C0C800F */  lui        $t4, %hi(gActors)
/* 1A904 80019D04 258CF510 */  addiu      $t4, $t4, %lo(gActors)
/* 1A908 80019D08 000B58C0 */  sll        $t3, $t3, 3
/* 1A90C 80019D0C 016C1021 */  addu       $v0, $t3, $t4
/* 1A910 80019D10 240D006E */  addiu      $t5, $zero, 0x6e
/* 1A914 80019D14 240F0002 */  addiu      $t7, $zero, 2
/* 1A918 80019D18 A44DFEF0 */  sh         $t5, -0x110($v0)
/* 1A91C 80019D1C A44FFEF4 */  sh         $t7, -0x10c($v0)
/* 1A920 80019D20 844EFEF0 */  lh         $t6, -0x110($v0)
/* 1A924 80019D24 8458FEF4 */  lh         $t8, -0x10c($v0)
/* 1A928 80019D28 A44EFD58 */  sh         $t6, -0x2a8($v0)
/* 1A92C 80019D2C A458FD5C */  sh         $t8, -0x2a4($v0)
.L80019D30:
/* 1A930 80019D30 3C09800D */  lui        $t1, %hi(D_800C8C04)
/* 1A934 80019D34 01284821 */  addu       $t1, $t1, $t0
/* 1A938 80019D38 95298C04 */  lhu        $t1, %lo(D_800C8C04)($t1)
/* 1A93C 80019D3C 26520001 */  addiu      $s2, $s2, 1
/* 1A940 80019D40 3259FFFF */  andi       $t9, $s2, 0xffff
/* 1A944 80019D44 0329082A */  slt        $at, $t9, $t1
/* 1A948 80019D48 1420FFAC */  bnez       $at, .L80019BFC
/* 1A94C 80019D4C 03209025 */   or        $s2, $t9, $zero
.L80019D50:
/* 1A950 80019D50 3C05800D */  lui        $a1, %hi(D_800C962C)
/* 1A954 80019D54 240A0001 */  addiu      $t2, $zero, 1
/* 1A958 80019D58 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1A95C 80019D5C 24A5962C */  addiu      $a1, $a1, %lo(D_800C962C)
/* 1A960 80019D60 24040078 */  addiu      $a0, $zero, 0x78
/* 1A964 80019D64 3406FF78 */  ori        $a2, $zero, 0xff78
/* 1A968 80019D68 0C009D44 */  jal        func_80027510
/* 1A96C 80019D6C 24070002 */   addiu     $a3, $zero, 2
/* 1A970 80019D70 0C006961 */  jal        func_8001A584
/* 1A974 80019D74 00000000 */   nop
/* 1A978 80019D78 3C0B8018 */  lui        $t3, %hi(D_80178152)
/* 1A97C 80019D7C 956B8152 */  lhu        $t3, %lo(D_80178152)($t3)
/* 1A980 80019D80 3C108018 */  lui        $s0, %hi(D_80178156)
/* 1A984 80019D84 1160001E */  beqz       $t3, .L80019E00
/* 1A988 80019D88 26108156 */   addiu     $s0, $s0, %lo(D_80178156)
/* 1A98C 80019D8C 3C108018 */  lui        $s0, %hi(D_80178156)
/* 1A990 80019D90 26108156 */  addiu      $s0, $s0, %lo(D_80178156)
/* 1A994 80019D94 96040000 */  lhu        $a0, ($s0)
/* 1A998 80019D98 00000000 */  nop
/* 1A99C 80019D9C 1480000C */  bnez       $a0, .L80019DD0
/* 1A9A0 80019DA0 00801025 */   or        $v0, $a0, $zero
/* 1A9A4 80019DA4 0C006677 */  jal        func_800199DC
/* 1A9A8 80019DA8 00000000 */   nop
/* 1A9AC 80019DAC 960C0000 */  lhu        $t4, ($s0)
/* 1A9B0 80019DB0 3C0E800D */  lui        $t6, %hi(D_800C95F4)
/* 1A9B4 80019DB4 000C6840 */  sll        $t5, $t4, 1
/* 1A9B8 80019DB8 01CD7021 */  addu       $t6, $t6, $t5
/* 1A9BC 80019DBC 85CE95F4 */  lh         $t6, %lo(D_800C95F4)($t6)
/* 1A9C0 80019DC0 3C018010 */  lui        $at, %hi(D_800FB4D8)
/* 1A9C4 80019DC4 25CFFFF8 */  addiu      $t7, $t6, -8
/* 1A9C8 80019DC8 10000017 */  b          .L80019E28
/* 1A9CC 80019DCC A42FB4D8 */   sh        $t7, %lo(D_800FB4D8)($at)
.L80019DD0:
/* 1A9D0 80019DD0 2444FFFF */  addiu      $a0, $v0, -1
/* 1A9D4 80019DD4 3098FFFF */  andi       $t8, $a0, 0xffff
/* 1A9D8 80019DD8 0C006677 */  jal        func_800199DC
/* 1A9DC 80019DDC 03002025 */   or        $a0, $t8, $zero
/* 1A9E0 80019DE0 96190000 */  lhu        $t9, ($s0)
/* 1A9E4 80019DE4 3C09800D */  lui        $t1, %hi(D_800C95F2)
/* 1A9E8 80019DE8 00194040 */  sll        $t0, $t9, 1
/* 1A9EC 80019DEC 01284821 */  addu       $t1, $t1, $t0
/* 1A9F0 80019DF0 852995F2 */  lh         $t1, %lo(D_800C95F2)($t1)
/* 1A9F4 80019DF4 3C018010 */  lui        $at, %hi(D_800FB4D8)
/* 1A9F8 80019DF8 1000000B */  b          .L80019E28
/* 1A9FC 80019DFC A429B4D8 */   sh        $t1, %lo(D_800FB4D8)($at)
.L80019E00:
/* 1AA00 80019E00 96040000 */  lhu        $a0, ($s0)
/* 1AA04 80019E04 0C006677 */  jal        func_800199DC
/* 1AA08 80019E08 00000000 */   nop
/* 1AA0C 80019E0C 960A0000 */  lhu        $t2, ($s0)
/* 1AA10 80019E10 3C0C800D */  lui        $t4, %hi(D_800C95F4)
/* 1AA14 80019E14 000A5840 */  sll        $t3, $t2, 1
/* 1AA18 80019E18 018B6021 */  addu       $t4, $t4, $t3
/* 1AA1C 80019E1C 858C95F4 */  lh         $t4, %lo(D_800C95F4)($t4)
/* 1AA20 80019E20 3C018010 */  lui        $at, %hi(D_800FB4D8)
/* 1AA24 80019E24 A42CB4D8 */  sh         $t4, %lo(D_800FB4D8)($at)
.L80019E28:
/* 1AA28 80019E28 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1AA2C 80019E2C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1AA30 80019E30 8FB10024 */  lw         $s1, 0x24($sp)
/* 1AA34 80019E34 8FB20028 */  lw         $s2, 0x28($sp)
/* 1AA38 80019E38 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1AA3C 80019E3C 8FB40030 */  lw         $s4, 0x30($sp)
/* 1AA40 80019E40 03E00008 */  jr         $ra
/* 1AA44 80019E44 27BD0038 */   addiu     $sp, $sp, 0x38
