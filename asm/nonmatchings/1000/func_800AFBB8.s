glabel func_800AFBB8
/* B07B8 800AFBB8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B07BC 800AFBBC AFBF0014 */  sw         $ra, 0x14($sp)
/* B07C0 800AFBC0 AFA40068 */  sw         $a0, 0x68($sp)
/* B07C4 800AFBC4 AFA5006C */  sw         $a1, 0x6c($sp)
/* B07C8 800AFBC8 AFA60070 */  sw         $a2, 0x70($sp)
/* B07CC 800AFBCC AFA70074 */  sw         $a3, 0x74($sp)
/* B07D0 800AFBD0 8FAE0078 */  lw         $t6, 0x78($sp)
/* B07D4 800AFBD4 AFAE0064 */  sw         $t6, 0x64($sp)
/* B07D8 800AFBD8 8FAF0068 */  lw         $t7, 0x68($sp)
/* B07DC 800AFBDC AFAF0040 */  sw         $t7, 0x40($sp)
/* B07E0 800AFBE0 8FB80068 */  lw         $t8, 0x68($sp)
/* B07E4 800AFBE4 AFB8003C */  sw         $t8, 0x3c($sp)
/* B07E8 800AFBE8 8FB90070 */  lw         $t9, 0x70($sp)
/* B07EC 800AFBEC 17200003 */  bnez       $t9, .L800AFBFC
/* B07F0 800AFBF0 00000000 */   nop
/* B07F4 800AFBF4 1000017B */  b          .L800B01E4
/* B07F8 800AFBF8 8FA20064 */   lw        $v0, 0x64($sp)
.L800AFBFC:
/* B07FC 800AFBFC 8FA80040 */  lw         $t0, 0x40($sp)
/* B0800 800AFC00 8FAA0070 */  lw         $t2, 0x70($sp)
/* B0804 800AFC04 8D090038 */  lw         $t1, 0x38($t0)
/* B0808 800AFC08 8D0C0020 */  lw         $t4, 0x20($t0)
/* B080C 800AFC0C 012A5821 */  addu       $t3, $t1, $t2
/* B0810 800AFC10 018B082B */  sltu       $at, $t4, $t3
/* B0814 800AFC14 102000E6 */  beqz       $at, .L800AFFB0
/* B0818 800AFC18 00000000 */   nop
/* B081C 800AFC1C 8D0D0024 */  lw         $t5, 0x24($t0)
/* B0820 800AFC20 11A000E3 */  beqz       $t5, .L800AFFB0
/* B0824 800AFC24 00000000 */   nop
/* B0828 800AFC28 8FAE0040 */  lw         $t6, 0x40($sp)
/* B082C 800AFC2C 8DCF0020 */  lw         $t7, 0x20($t6)
/* B0830 800AFC30 8DD80038 */  lw         $t8, 0x38($t6)
/* B0834 800AFC34 01F8C823 */  subu       $t9, $t7, $t8
/* B0838 800AFC38 AFB90048 */  sw         $t9, 0x48($sp)
/* B083C 800AFC3C 8FA90048 */  lw         $t1, 0x48($sp)
/* B0840 800AFC40 00095040 */  sll        $t2, $t1, 1
/* B0844 800AFC44 AFAA0060 */  sw         $t2, 0x60($sp)
/* B0848 800AFC48 8FAB0048 */  lw         $t3, 0x48($sp)
/* B084C 800AFC4C 19600030 */  blez       $t3, .L800AFD10
/* B0850 800AFC50 00000000 */   nop
/* B0854 800AFC54 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0858 800AFC58 8FA50060 */  lw         $a1, 0x60($sp)
/* B085C 800AFC5C 8D990030 */  lw         $t9, 0x30($t4)
/* B0860 800AFC60 8D840044 */  lw         $a0, 0x44($t4)
/* B0864 800AFC64 8D860034 */  lw         $a2, 0x34($t4)
/* B0868 800AFC68 0320F809 */  jalr       $t9
/* B086C 800AFC6C 00000000 */   nop
/* B0870 800AFC70 AFA2005C */  sw         $v0, 0x5c($sp)
/* B0874 800AFC74 8FA8005C */  lw         $t0, 0x5c($sp)
/* B0878 800AFC78 310D0007 */  andi       $t5, $t0, 7
/* B087C 800AFC7C AFAD0058 */  sw         $t5, 0x58($sp)
/* B0880 800AFC80 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0884 800AFC84 8FAF0058 */  lw         $t7, 0x58($sp)
/* B0888 800AFC88 01CFC021 */  addu       $t8, $t6, $t7
/* B088C 800AFC8C AFB80060 */  sw         $t8, 0x60($sp)
/* B0890 800AFC90 8FA90064 */  lw         $t1, 0x64($sp)
/* B0894 800AFC94 252A0008 */  addiu      $t2, $t1, 8
/* B0898 800AFC98 AFAA0064 */  sw         $t2, 0x64($sp)
/* B089C 800AFC9C AFA90038 */  sw         $t1, 0x38($sp)
/* B08A0 800AFCA0 8FAB006C */  lw         $t3, 0x6c($sp)
/* B08A4 800AFCA4 8FAD0038 */  lw         $t5, 0x38($sp)
/* B08A8 800AFCA8 3C010800 */  lui        $at, 0x800
/* B08AC 800AFCAC 856C0000 */  lh         $t4, ($t3)
/* B08B0 800AFCB0 3199FFFF */  andi       $t9, $t4, 0xffff
/* B08B4 800AFCB4 03214025 */  or         $t0, $t9, $at
/* B08B8 800AFCB8 ADA80000 */  sw         $t0, ($t5)
/* B08BC 800AFCBC 8FAE0060 */  lw         $t6, 0x60($sp)
/* B08C0 800AFCC0 8FAB0038 */  lw         $t3, 0x38($sp)
/* B08C4 800AFCC4 31CF0007 */  andi       $t7, $t6, 7
/* B08C8 800AFCC8 01CFC023 */  subu       $t8, $t6, $t7
/* B08CC 800AFCCC 27090008 */  addiu      $t1, $t8, 8
/* B08D0 800AFCD0 312AFFFF */  andi       $t2, $t1, 0xffff
/* B08D4 800AFCD4 AD6A0004 */  sw         $t2, 4($t3)
/* B08D8 800AFCD8 8FAC0064 */  lw         $t4, 0x64($sp)
/* B08DC 800AFCDC 25990008 */  addiu      $t9, $t4, 8
/* B08E0 800AFCE0 AFB90064 */  sw         $t9, 0x64($sp)
/* B08E4 800AFCE4 AFAC0034 */  sw         $t4, 0x34($sp)
/* B08E8 800AFCE8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B08EC 800AFCEC 3C080400 */  lui        $t0, 0x400
/* B08F0 800AFCF0 ADA80000 */  sw         $t0, ($t5)
/* B08F4 800AFCF4 8FAE005C */  lw         $t6, 0x5c($sp)
/* B08F8 800AFCF8 8FAF0058 */  lw         $t7, 0x58($sp)
/* B08FC 800AFCFC 8FA90034 */  lw         $t1, 0x34($sp)
/* B0900 800AFD00 01CFC023 */  subu       $t8, $t6, $t7
/* B0904 800AFD04 AD380004 */  sw         $t8, 4($t1)
/* B0908 800AFD08 10000002 */  b          .L800AFD14
/* B090C 800AFD0C 00000000 */   nop
.L800AFD10:
/* B0910 800AFD10 AFA00058 */  sw         $zero, 0x58($sp)
.L800AFD14:
/* B0914 800AFD14 8FAA006C */  lw         $t2, 0x6c($sp)
/* B0918 800AFD18 8FAC0058 */  lw         $t4, 0x58($sp)
/* B091C 800AFD1C 854B0000 */  lh         $t3, ($t2)
/* B0920 800AFD20 016CC821 */  addu       $t9, $t3, $t4
/* B0924 800AFD24 A5590000 */  sh         $t9, ($t2)
/* B0928 800AFD28 8FA80040 */  lw         $t0, 0x40($sp)
/* B092C 800AFD2C 8D0D0028 */  lw         $t5, 0x28($t0)
/* B0930 800AFD30 8D0F001C */  lw         $t7, 0x1c($t0)
/* B0934 800AFD34 8DAE0000 */  lw         $t6, ($t5)
/* B0938 800AFD38 000FC040 */  sll        $t8, $t7, 1
/* B093C 800AFD3C 01D84821 */  addu       $t1, $t6, $t8
/* B0940 800AFD40 AD090044 */  sw         $t1, 0x44($t0)
/* B0944 800AFD44 8FAB0040 */  lw         $t3, 0x40($sp)
/* B0948 800AFD48 8D6C001C */  lw         $t4, 0x1c($t3)
/* B094C 800AFD4C AD6C0038 */  sw         $t4, 0x38($t3)
/* B0950 800AFD50 8FB9006C */  lw         $t9, 0x6c($sp)
/* B0954 800AFD54 872A0000 */  lh         $t2, ($t9)
/* B0958 800AFD58 AFAA0044 */  sw         $t2, 0x44($sp)
/* B095C 800AFD5C 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0960 800AFD60 8FAF0048 */  lw         $t7, 0x48($sp)
/* B0964 800AFD64 01ED082A */  slt        $at, $t7, $t5
/* B0968 800AFD68 10200084 */  beqz       $at, .L800AFF7C
/* B096C 800AFD6C 00000000 */   nop
.L800AFD70:
/* B0970 800AFD70 8FB80048 */  lw         $t8, 0x48($sp)
/* B0974 800AFD74 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0978 800AFD78 00184840 */  sll        $t1, $t8, 1
/* B097C 800AFD7C 01C94021 */  addu       $t0, $t6, $t1
/* B0980 800AFD80 AFA80044 */  sw         $t0, 0x44($sp)
/* B0984 800AFD84 8FAC0070 */  lw         $t4, 0x70($sp)
/* B0988 800AFD88 8FAB0048 */  lw         $t3, 0x48($sp)
/* B098C 800AFD8C 018BC823 */  subu       $t9, $t4, $t3
/* B0990 800AFD90 AFB90070 */  sw         $t9, 0x70($sp)
/* B0994 800AFD94 8FAA0040 */  lw         $t2, 0x40($sp)
/* B0998 800AFD98 2401FFFF */  addiu      $at, $zero, -1
/* B099C 800AFD9C 8D4D0024 */  lw         $t5, 0x24($t2)
/* B09A0 800AFDA0 11A10007 */  beq        $t5, $at, .L800AFDC0
/* B09A4 800AFDA4 00000000 */   nop
/* B09A8 800AFDA8 11A00005 */  beqz       $t5, .L800AFDC0
/* B09AC 800AFDAC 00000000 */   nop
/* B09B0 800AFDB0 8FAF0040 */  lw         $t7, 0x40($sp)
/* B09B4 800AFDB4 8DF80024 */  lw         $t8, 0x24($t7)
/* B09B8 800AFDB8 270EFFFF */  addiu      $t6, $t8, -1
/* B09BC 800AFDBC ADEE0024 */  sw         $t6, 0x24($t7)
.L800AFDC0:
/* B09C0 800AFDC0 8FA80040 */  lw         $t0, 0x40($sp)
/* B09C4 800AFDC4 8FA90070 */  lw         $t1, 0x70($sp)
/* B09C8 800AFDC8 8D0C0020 */  lw         $t4, 0x20($t0)
/* B09CC 800AFDCC 8D0B001C */  lw         $t3, 0x1c($t0)
/* B09D0 800AFDD0 018BC823 */  subu       $t9, $t4, $t3
/* B09D4 800AFDD4 0139082B */  sltu       $at, $t1, $t9
/* B09D8 800AFDD8 10200003 */  beqz       $at, .L800AFDE8
/* B09DC 800AFDDC 00000000 */   nop
/* B09E0 800AFDE0 10000006 */  b          .L800AFDFC
/* B09E4 800AFDE4 AFA90048 */   sw        $t1, 0x48($sp)
.L800AFDE8:
/* B09E8 800AFDE8 8FAA0040 */  lw         $t2, 0x40($sp)
/* B09EC 800AFDEC 8D4D0020 */  lw         $t5, 0x20($t2)
/* B09F0 800AFDF0 8D58001C */  lw         $t8, 0x1c($t2)
/* B09F4 800AFDF4 01B87023 */  subu       $t6, $t5, $t8
/* B09F8 800AFDF8 AFAE0048 */  sw         $t6, 0x48($sp)
.L800AFDFC:
/* B09FC 800AFDFC 8FAF0048 */  lw         $t7, 0x48($sp)
/* B0A00 800AFE00 000F4040 */  sll        $t0, $t7, 1
/* B0A04 800AFE04 AFA80060 */  sw         $t0, 0x60($sp)
/* B0A08 800AFE08 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0A0C 800AFE0C 8FA50060 */  lw         $a1, 0x60($sp)
/* B0A10 800AFE10 8D990030 */  lw         $t9, 0x30($t4)
/* B0A14 800AFE14 8D840044 */  lw         $a0, 0x44($t4)
/* B0A18 800AFE18 8D860034 */  lw         $a2, 0x34($t4)
/* B0A1C 800AFE1C 0320F809 */  jalr       $t9
/* B0A20 800AFE20 00000000 */   nop
/* B0A24 800AFE24 AFA2005C */  sw         $v0, 0x5c($sp)
/* B0A28 800AFE28 8FAB005C */  lw         $t3, 0x5c($sp)
/* B0A2C 800AFE2C 31690007 */  andi       $t1, $t3, 7
/* B0A30 800AFE30 AFA90058 */  sw         $t1, 0x58($sp)
/* B0A34 800AFE34 8FAA0060 */  lw         $t2, 0x60($sp)
/* B0A38 800AFE38 8FAD0058 */  lw         $t5, 0x58($sp)
/* B0A3C 800AFE3C 014DC021 */  addu       $t8, $t2, $t5
/* B0A40 800AFE40 AFB80060 */  sw         $t8, 0x60($sp)
/* B0A44 800AFE44 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0A48 800AFE48 31CF0007 */  andi       $t7, $t6, 7
/* B0A4C 800AFE4C 11E00007 */  beqz       $t7, .L800AFE6C
/* B0A50 800AFE50 00000000 */   nop
/* B0A54 800AFE54 8FA80044 */  lw         $t0, 0x44($sp)
/* B0A58 800AFE58 24190008 */  addiu      $t9, $zero, 8
/* B0A5C 800AFE5C 310C0007 */  andi       $t4, $t0, 7
/* B0A60 800AFE60 032C5823 */  subu       $t3, $t9, $t4
/* B0A64 800AFE64 10000002 */  b          .L800AFE70
/* B0A68 800AFE68 AFAB0054 */   sw        $t3, 0x54($sp)
.L800AFE6C:
/* B0A6C 800AFE6C AFA00054 */  sw         $zero, 0x54($sp)
.L800AFE70:
/* B0A70 800AFE70 8FA90064 */  lw         $t1, 0x64($sp)
/* B0A74 800AFE74 252A0008 */  addiu      $t2, $t1, 8
/* B0A78 800AFE78 AFAA0064 */  sw         $t2, 0x64($sp)
/* B0A7C 800AFE7C AFA90030 */  sw         $t1, 0x30($sp)
/* B0A80 800AFE80 8FAD0044 */  lw         $t5, 0x44($sp)
/* B0A84 800AFE84 8FB80054 */  lw         $t8, 0x54($sp)
/* B0A88 800AFE88 8FB90030 */  lw         $t9, 0x30($sp)
/* B0A8C 800AFE8C 3C010800 */  lui        $at, 0x800
/* B0A90 800AFE90 01B87021 */  addu       $t6, $t5, $t8
/* B0A94 800AFE94 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B0A98 800AFE98 01E14025 */  or         $t0, $t7, $at
/* B0A9C 800AFE9C AF280000 */  sw         $t0, ($t9)
/* B0AA0 800AFEA0 8FAC0060 */  lw         $t4, 0x60($sp)
/* B0AA4 800AFEA4 8FB80030 */  lw         $t8, 0x30($sp)
/* B0AA8 800AFEA8 318B0007 */  andi       $t3, $t4, 7
/* B0AAC 800AFEAC 018B4823 */  subu       $t1, $t4, $t3
/* B0AB0 800AFEB0 252A0008 */  addiu      $t2, $t1, 8
/* B0AB4 800AFEB4 314DFFFF */  andi       $t5, $t2, 0xffff
/* B0AB8 800AFEB8 AF0D0004 */  sw         $t5, 4($t8)
/* B0ABC 800AFEBC 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0AC0 800AFEC0 25CF0008 */  addiu      $t7, $t6, 8
/* B0AC4 800AFEC4 AFAF0064 */  sw         $t7, 0x64($sp)
/* B0AC8 800AFEC8 AFAE002C */  sw         $t6, 0x2c($sp)
/* B0ACC 800AFECC 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0AD0 800AFED0 3C080400 */  lui        $t0, 0x400
/* B0AD4 800AFED4 AF280000 */  sw         $t0, ($t9)
/* B0AD8 800AFED8 8FAC005C */  lw         $t4, 0x5c($sp)
/* B0ADC 800AFEDC 8FAB0058 */  lw         $t3, 0x58($sp)
/* B0AE0 800AFEE0 8FAA002C */  lw         $t2, 0x2c($sp)
/* B0AE4 800AFEE4 018B4823 */  subu       $t1, $t4, $t3
/* B0AE8 800AFEE8 AD490004 */  sw         $t1, 4($t2)
/* B0AEC 800AFEEC 8FAD0058 */  lw         $t5, 0x58($sp)
/* B0AF0 800AFEF0 15A00004 */  bnez       $t5, .L800AFF04
/* B0AF4 800AFEF4 00000000 */   nop
/* B0AF8 800AFEF8 8FB80054 */  lw         $t8, 0x54($sp)
/* B0AFC 800AFEFC 1300001A */  beqz       $t8, .L800AFF68
/* B0B00 800AFF00 00000000 */   nop
.L800AFF04:
/* B0B04 800AFF04 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0B08 800AFF08 25CF0008 */  addiu      $t7, $t6, 8
/* B0B0C 800AFF0C AFAF0064 */  sw         $t7, 0x64($sp)
/* B0B10 800AFF10 AFAE0028 */  sw         $t6, 0x28($sp)
/* B0B14 800AFF14 8FA80044 */  lw         $t0, 0x44($sp)
/* B0B18 800AFF18 8FB90058 */  lw         $t9, 0x58($sp)
/* B0B1C 800AFF1C 8FAB0054 */  lw         $t3, 0x54($sp)
/* B0B20 800AFF20 3C0100FF */  lui        $at, 0xff
/* B0B24 800AFF24 01196021 */  addu       $t4, $t0, $t9
/* B0B28 800AFF28 3421FFFF */  ori        $at, $at, 0xffff
/* B0B2C 800AFF2C 018B4821 */  addu       $t1, $t4, $t3
/* B0B30 800AFF30 8FB80028 */  lw         $t8, 0x28($sp)
/* B0B34 800AFF34 01215024 */  and        $t2, $t1, $at
/* B0B38 800AFF38 3C010A00 */  lui        $at, 0xa00
/* B0B3C 800AFF3C 01416825 */  or         $t5, $t2, $at
/* B0B40 800AFF40 AF0D0000 */  sw         $t5, ($t8)
/* B0B44 800AFF44 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0B48 800AFF48 8FB90048 */  lw         $t9, 0x48($sp)
/* B0B4C 800AFF4C 8FAA0028 */  lw         $t2, 0x28($sp)
/* B0B50 800AFF50 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B0B54 800AFF54 00196040 */  sll        $t4, $t9, 1
/* B0B58 800AFF58 318BFFFF */  andi       $t3, $t4, 0xffff
/* B0B5C 800AFF5C 000F4400 */  sll        $t0, $t7, 0x10
/* B0B60 800AFF60 010B4825 */  or         $t1, $t0, $t3
/* B0B64 800AFF64 AD490004 */  sw         $t1, 4($t2)
.L800AFF68:
/* B0B68 800AFF68 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0B6C 800AFF6C 8FB80048 */  lw         $t8, 0x48($sp)
/* B0B70 800AFF70 030D082A */  slt        $at, $t8, $t5
/* B0B74 800AFF74 1420FF7E */  bnez       $at, .L800AFD70
/* B0B78 800AFF78 00000000 */   nop
.L800AFF7C:
/* B0B7C 800AFF7C 8FAE0040 */  lw         $t6, 0x40($sp)
/* B0B80 800AFF80 8FB90070 */  lw         $t9, 0x70($sp)
/* B0B84 800AFF84 8DCF0038 */  lw         $t7, 0x38($t6)
/* B0B88 800AFF88 01F96021 */  addu       $t4, $t7, $t9
/* B0B8C 800AFF8C ADCC0038 */  sw         $t4, 0x38($t6)
/* B0B90 800AFF90 8FA80040 */  lw         $t0, 0x40($sp)
/* B0B94 800AFF94 8FA90070 */  lw         $t1, 0x70($sp)
/* B0B98 800AFF98 8D0B0044 */  lw         $t3, 0x44($t0)
/* B0B9C 800AFF9C 00095040 */  sll        $t2, $t1, 1
/* B0BA0 800AFFA0 016A6821 */  addu       $t5, $t3, $t2
/* B0BA4 800AFFA4 AD0D0044 */  sw         $t5, 0x44($t0)
/* B0BA8 800AFFA8 1000008E */  b          .L800B01E4
/* B0BAC 800AFFAC 8FA20064 */   lw        $v0, 0x64($sp)
.L800AFFB0:
/* B0BB0 800AFFB0 8FB80070 */  lw         $t8, 0x70($sp)
/* B0BB4 800AFFB4 00187840 */  sll        $t7, $t8, 1
/* B0BB8 800AFFB8 AFAF0060 */  sw         $t7, 0x60($sp)
/* B0BBC 800AFFBC 8FB90040 */  lw         $t9, 0x40($sp)
/* B0BC0 800AFFC0 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0BC4 800AFFC4 8F2B0028 */  lw         $t3, 0x28($t9)
/* B0BC8 800AFFC8 8F2C0044 */  lw         $t4, 0x44($t9)
/* B0BCC 800AFFCC 8D6A0000 */  lw         $t2, ($t3)
/* B0BD0 800AFFD0 8D6D0004 */  lw         $t5, 4($t3)
/* B0BD4 800AFFD4 018E4821 */  addu       $t1, $t4, $t6
/* B0BD8 800AFFD8 014D4021 */  addu       $t0, $t2, $t5
/* B0BDC 800AFFDC 0128C023 */  subu       $t8, $t1, $t0
/* B0BE0 800AFFE0 AFB80050 */  sw         $t8, 0x50($sp)
/* B0BE4 800AFFE4 8FAF0050 */  lw         $t7, 0x50($sp)
/* B0BE8 800AFFE8 05E10002 */  bgez       $t7, .L800AFFF4
/* B0BEC 800AFFEC 00000000 */   nop
/* B0BF0 800AFFF0 AFA00050 */  sw         $zero, 0x50($sp)
.L800AFFF4:
/* B0BF4 800AFFF4 8FAC0050 */  lw         $t4, 0x50($sp)
/* B0BF8 800AFFF8 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0BFC 800AFFFC 01CC082A */  slt        $at, $t6, $t4
/* B0C00 800B0000 10200003 */  beqz       $at, .L800B0010
/* B0C04 800B0004 00000000 */   nop
/* B0C08 800B0008 8FB90060 */  lw         $t9, 0x60($sp)
/* B0C0C 800B000C AFB90050 */  sw         $t9, 0x50($sp)
.L800B0010:
/* B0C10 800B0010 8FAB0050 */  lw         $t3, 0x50($sp)
/* B0C14 800B0014 8FAA0060 */  lw         $t2, 0x60($sp)
/* B0C18 800B0018 016A082A */  slt        $at, $t3, $t2
/* B0C1C 800B001C 10200049 */  beqz       $at, .L800B0144
/* B0C20 800B0020 00000000 */   nop
/* B0C24 800B0024 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0C28 800B0028 19A00034 */  blez       $t5, .L800B00FC
/* B0C2C 800B002C 00000000 */   nop
/* B0C30 800B0030 8FA90060 */  lw         $t1, 0x60($sp)
/* B0C34 800B0034 8FA80050 */  lw         $t0, 0x50($sp)
/* B0C38 800B0038 0128C023 */  subu       $t8, $t1, $t0
/* B0C3C 800B003C AFB80060 */  sw         $t8, 0x60($sp)
/* B0C40 800B0040 8FAF0040 */  lw         $t7, 0x40($sp)
/* B0C44 800B0044 8FA50060 */  lw         $a1, 0x60($sp)
/* B0C48 800B0048 8DF90030 */  lw         $t9, 0x30($t7)
/* B0C4C 800B004C 8DE40044 */  lw         $a0, 0x44($t7)
/* B0C50 800B0050 8DE60034 */  lw         $a2, 0x34($t7)
/* B0C54 800B0054 0320F809 */  jalr       $t9
/* B0C58 800B0058 00000000 */   nop
/* B0C5C 800B005C AFA2005C */  sw         $v0, 0x5c($sp)
/* B0C60 800B0060 8FAC005C */  lw         $t4, 0x5c($sp)
/* B0C64 800B0064 318E0007 */  andi       $t6, $t4, 7
/* B0C68 800B0068 AFAE0058 */  sw         $t6, 0x58($sp)
/* B0C6C 800B006C 8FAB0060 */  lw         $t3, 0x60($sp)
/* B0C70 800B0070 8FAA0058 */  lw         $t2, 0x58($sp)
/* B0C74 800B0074 016A6821 */  addu       $t5, $t3, $t2
/* B0C78 800B0078 AFAD0060 */  sw         $t5, 0x60($sp)
/* B0C7C 800B007C 8FA90064 */  lw         $t1, 0x64($sp)
/* B0C80 800B0080 25280008 */  addiu      $t0, $t1, 8
/* B0C84 800B0084 AFA80064 */  sw         $t0, 0x64($sp)
/* B0C88 800B0088 AFA90024 */  sw         $t1, 0x24($sp)
/* B0C8C 800B008C 8FB8006C */  lw         $t8, 0x6c($sp)
/* B0C90 800B0090 8FAE0024 */  lw         $t6, 0x24($sp)
/* B0C94 800B0094 3C010800 */  lui        $at, 0x800
/* B0C98 800B0098 870F0000 */  lh         $t7, ($t8)
/* B0C9C 800B009C 31F9FFFF */  andi       $t9, $t7, 0xffff
/* B0CA0 800B00A0 03216025 */  or         $t4, $t9, $at
/* B0CA4 800B00A4 ADCC0000 */  sw         $t4, ($t6)
/* B0CA8 800B00A8 8FAB0060 */  lw         $t3, 0x60($sp)
/* B0CAC 800B00AC 8FB80024 */  lw         $t8, 0x24($sp)
/* B0CB0 800B00B0 316A0007 */  andi       $t2, $t3, 7
/* B0CB4 800B00B4 016A6823 */  subu       $t5, $t3, $t2
/* B0CB8 800B00B8 25A90008 */  addiu      $t1, $t5, 8
/* B0CBC 800B00BC 3128FFFF */  andi       $t0, $t1, 0xffff
/* B0CC0 800B00C0 AF080004 */  sw         $t0, 4($t8)
/* B0CC4 800B00C4 8FAF0064 */  lw         $t7, 0x64($sp)
/* B0CC8 800B00C8 25F90008 */  addiu      $t9, $t7, 8
/* B0CCC 800B00CC AFB90064 */  sw         $t9, 0x64($sp)
/* B0CD0 800B00D0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B0CD4 800B00D4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B0CD8 800B00D8 3C0C0400 */  lui        $t4, 0x400
/* B0CDC 800B00DC ADCC0000 */  sw         $t4, ($t6)
/* B0CE0 800B00E0 8FAB005C */  lw         $t3, 0x5c($sp)
/* B0CE4 800B00E4 8FAA0058 */  lw         $t2, 0x58($sp)
/* B0CE8 800B00E8 8FA90020 */  lw         $t1, 0x20($sp)
/* B0CEC 800B00EC 016A6823 */  subu       $t5, $t3, $t2
/* B0CF0 800B00F0 AD2D0004 */  sw         $t5, 4($t1)
/* B0CF4 800B00F4 10000002 */  b          .L800B0100
/* B0CF8 800B00F8 00000000 */   nop
.L800B00FC:
/* B0CFC 800B00FC AFA00058 */  sw         $zero, 0x58($sp)
.L800B0100:
/* B0D00 800B0100 8FA8006C */  lw         $t0, 0x6c($sp)
/* B0D04 800B0104 8FAF0058 */  lw         $t7, 0x58($sp)
/* B0D08 800B0108 85180000 */  lh         $t8, ($t0)
/* B0D0C 800B010C 030FC821 */  addu       $t9, $t8, $t7
/* B0D10 800B0110 A5190000 */  sh         $t9, ($t0)
/* B0D14 800B0114 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0D18 800B0118 8FAB0070 */  lw         $t3, 0x70($sp)
/* B0D1C 800B011C 8D8E0038 */  lw         $t6, 0x38($t4)
/* B0D20 800B0120 01CB5021 */  addu       $t2, $t6, $t3
/* B0D24 800B0124 AD8A0038 */  sw         $t2, 0x38($t4)
/* B0D28 800B0128 8FAD0040 */  lw         $t5, 0x40($sp)
/* B0D2C 800B012C 8FB80070 */  lw         $t8, 0x70($sp)
/* B0D30 800B0130 8DA90044 */  lw         $t1, 0x44($t5)
/* B0D34 800B0134 00187840 */  sll        $t7, $t8, 1
/* B0D38 800B0138 012FC821 */  addu       $t9, $t1, $t7
/* B0D3C 800B013C 10000007 */  b          .L800B015C
/* B0D40 800B0140 ADB90044 */   sw        $t9, 0x44($t5)
.L800B0144:
/* B0D44 800B0144 8FA80040 */  lw         $t0, 0x40($sp)
/* B0D48 800B0148 8FAB0070 */  lw         $t3, 0x70($sp)
/* B0D4C 800B014C 8D0E0044 */  lw         $t6, 0x44($t0)
/* B0D50 800B0150 000B5040 */  sll        $t2, $t3, 1
/* B0D54 800B0154 01CA6021 */  addu       $t4, $t6, $t2
/* B0D58 800B0158 AD0C0044 */  sw         $t4, 0x44($t0)
.L800B015C:
/* B0D5C 800B015C 8FB80050 */  lw         $t8, 0x50($sp)
/* B0D60 800B0160 1300001C */  beqz       $t8, .L800B01D4
/* B0D64 800B0164 00000000 */   nop
/* B0D68 800B0168 8FA90070 */  lw         $t1, 0x70($sp)
/* B0D6C 800B016C 8FB90050 */  lw         $t9, 0x50($sp)
/* B0D70 800B0170 00097840 */  sll        $t7, $t1, 1
/* B0D74 800B0174 01F96823 */  subu       $t5, $t7, $t9
/* B0D78 800B0178 AFAD004C */  sw         $t5, 0x4c($sp)
/* B0D7C 800B017C 8FAB004C */  lw         $t3, 0x4c($sp)
/* B0D80 800B0180 05610002 */  bgez       $t3, .L800B018C
/* B0D84 800B0184 00000000 */   nop
/* B0D88 800B0188 AFA0004C */  sw         $zero, 0x4c($sp)
.L800B018C:
/* B0D8C 800B018C 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0D90 800B0190 25CA0008 */  addiu      $t2, $t6, 8
/* B0D94 800B0194 AFAA0064 */  sw         $t2, 0x64($sp)
/* B0D98 800B0198 AFAE001C */  sw         $t6, 0x1c($sp)
/* B0D9C 800B019C 8FAC006C */  lw         $t4, 0x6c($sp)
/* B0DA0 800B01A0 8FB8004C */  lw         $t8, 0x4c($sp)
/* B0DA4 800B01A4 3C0100FF */  lui        $at, 0xff
/* B0DA8 800B01A8 85880000 */  lh         $t0, ($t4)
/* B0DAC 800B01AC 3421FFFF */  ori        $at, $at, 0xffff
/* B0DB0 800B01B0 8FAD001C */  lw         $t5, 0x1c($sp)
/* B0DB4 800B01B4 01184821 */  addu       $t1, $t0, $t8
/* B0DB8 800B01B8 01217824 */  and        $t7, $t1, $at
/* B0DBC 800B01BC 3C010200 */  lui        $at, 0x200
/* B0DC0 800B01C0 01E1C825 */  or         $t9, $t7, $at
/* B0DC4 800B01C4 ADB90000 */  sw         $t9, ($t5)
/* B0DC8 800B01C8 8FAB0050 */  lw         $t3, 0x50($sp)
/* B0DCC 800B01CC 8FAE001C */  lw         $t6, 0x1c($sp)
/* B0DD0 800B01D0 ADCB0004 */  sw         $t3, 4($t6)
.L800B01D4:
/* B0DD4 800B01D4 10000003 */  b          .L800B01E4
/* B0DD8 800B01D8 8FA20064 */   lw        $v0, 0x64($sp)
/* B0DDC 800B01DC 10000001 */  b          .L800B01E4
/* B0DE0 800B01E0 00000000 */   nop
.L800B01E4:
/* B0DE4 800B01E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0DE8 800B01E8 27BD0068 */  addiu      $sp, $sp, 0x68
/* B0DEC 800B01EC 03E00008 */  jr         $ra
/* B0DF0 800B01F0 00000000 */   nop
