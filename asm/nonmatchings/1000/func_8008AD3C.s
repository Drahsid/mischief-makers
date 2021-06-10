glabel func_8008AD3C
/* 8B93C 8008AD3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B940 8008AD40 AFA40020 */  sw         $a0, 0x20($sp)
/* 8B944 8008AD44 97AE0022 */  lhu        $t6, 0x22($sp)
/* 8B948 8008AD48 3C18800F */  lui        $t8, 0x800f
/* 8B94C 8008AD4C 000E7880 */  sll        $t7, $t6, 2
/* 8B950 8008AD50 01EE7823 */  subu       $t7, $t7, $t6
/* 8B954 8008AD54 000F7880 */  sll        $t7, $t7, 2
/* 8B958 8008AD58 01EE7821 */  addu       $t7, $t7, $t6
/* 8B95C 8008AD5C 000F7880 */  sll        $t7, $t7, 2
/* 8B960 8008AD60 01EE7823 */  subu       $t7, $t7, $t6
/* 8B964 8008AD64 000F78C0 */  sll        $t7, $t7, 3
/* 8B968 8008AD68 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8B96C 8008AD6C 01F81821 */  addu       $v1, $t7, $t8
/* 8B970 8008AD70 946200D0 */  lhu        $v0, 0xd0($v1)
/* 8B974 8008AD74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B978 8008AD78 10400006 */  beqz       $v0, .L8008AD94
/* 8B97C 8008AD7C 24040001 */   addiu     $a0, $zero, 1
/* 8B980 8008AD80 24040001 */  addiu      $a0, $zero, 1
/* 8B984 8008AD84 10440028 */  beq        $v0, $a0, .L8008AE28
/* 8B988 8008AD88 97A40022 */   lhu       $a0, 0x22($sp)
/* 8B98C 8008AD8C 10000030 */  b          .L8008AE50
/* 8B990 8008AD90 8C6A0098 */   lw        $t2, 0x98($v1)
.L8008AD94:
/* 8B994 8008AD94 94790094 */  lhu        $t9, 0x94($v1)
/* 8B998 8008AD98 8C690080 */  lw         $t1, 0x80($v1)
/* 8B99C 8008AD9C 946D00D8 */  lhu        $t5, 0xd8($v1)
/* 8B9A0 8008ADA0 3C0C800E */  lui        $t4, %hi(D_800DE188)
/* 8B9A4 8008ADA4 240BFFF8 */  addiu      $t3, $zero, -8
/* 8B9A8 8008ADA8 258CE188 */  addiu      $t4, $t4, %lo(D_800DE188)
/* 8B9AC 8008ADAC 37280A01 */  ori        $t0, $t9, 0xa01
/* 8B9B0 8008ADB0 352A0001 */  ori        $t2, $t1, 1
/* 8B9B4 8008ADB4 A4680094 */  sh         $t0, 0x94($v1)
/* 8B9B8 8008ADB8 AC6A0080 */  sw         $t2, 0x80($v1)
/* 8B9BC 8008ADBC A46400E6 */  sh         $a0, 0xe6($v1)
/* 8B9C0 8008ADC0 A46B0090 */  sh         $t3, 0x90($v1)
/* 8B9C4 8008ADC4 AC600188 */  sw         $zero, 0x188($v1)
/* 8B9C8 8008ADC8 148D0005 */  bne        $a0, $t5, .L8008ADE0
/* 8B9CC 8008ADCC AC6C018C */   sw        $t4, 0x18c($v1)
/* 8B9D0 8008ADD0 3C0E800E */  lui        $t6, %hi(D_800E44DC)
/* 8B9D4 8008ADD4 25CE44DC */  addiu      $t6, $t6, %lo(D_800E44DC)
/* 8B9D8 8008ADD8 10000004 */  b          .L8008ADEC
/* 8B9DC 8008ADDC AC6E00E8 */   sw        $t6, 0xe8($v1)
.L8008ADE0:
/* 8B9E0 8008ADE0 3C0F800E */  lui        $t7, %hi(D_800E44C8)
/* 8B9E4 8008ADE4 25EF44C8 */  addiu      $t7, $t7, %lo(D_800E44C8)
/* 8B9E8 8008ADE8 AC6F00E8 */  sw         $t7, 0xe8($v1)
.L8008ADEC:
/* 8B9EC 8008ADEC 4458F800 */  cfc1       $t8, $31
/* 8B9F0 8008ADF0 C4640110 */  lwc1       $f4, 0x110($v1)
/* 8B9F4 8008ADF4 37010003 */  ori        $at, $t8, 3
/* 8B9F8 8008ADF8 38210002 */  xori       $at, $at, 2
/* 8B9FC 8008ADFC 44C1F800 */  ctc1       $at, $31
/* 8BA00 8008AE00 946800D0 */  lhu        $t0, 0xd0($v1)
/* 8BA04 8008AE04 460021A4 */  cvt.w.s    $f6, $f4
/* 8BA08 8008AE08 25090001 */  addiu      $t1, $t0, 1
/* 8BA0C 8008AE0C 44023000 */  mfc1       $v0, $f6
/* 8BA10 8008AE10 44D8F800 */  ctc1       $t8, $31
/* 8BA14 8008AE14 305900FF */  andi       $t9, $v0, 0xff
/* 8BA18 8008AE18 AC790178 */  sw         $t9, 0x178($v1)
/* 8BA1C 8008AE1C A46900D0 */  sh         $t1, 0xd0($v1)
/* 8BA20 8008AE20 AC620150 */  sw         $v0, 0x150($v1)
/* 8BA24 8008AE24 97A40022 */  lhu        $a0, 0x22($sp)
.L8008AE28:
/* 8BA28 8008AE28 0C02283D */  jal        func_8008A0F4
/* 8BA2C 8008AE2C AFA30018 */   sw        $v1, 0x18($sp)
/* 8BA30 8008AE30 97A40022 */  lhu        $a0, 0x22($sp)
/* 8BA34 8008AE34 0C022A8A */  jal        func_8008AA28
/* 8BA38 8008AE38 00000000 */   nop
/* 8BA3C 8008AE3C 8FA30018 */  lw         $v1, 0x18($sp)
/* 8BA40 8008AE40 10400002 */  beqz       $v0, .L8008AE4C
/* 8BA44 8008AE44 00000000 */   nop
/* 8BA48 8008AE48 AC600080 */  sw         $zero, 0x80($v1)
.L8008AE4C:
/* 8BA4C 8008AE4C 8C6A0098 */  lw         $t2, 0x98($v1)
.L8008AE50:
/* 8BA50 8008AE50 3C01FFDF */  lui        $at, 0xffdf
/* 8BA54 8008AE54 3421F9FF */  ori        $at, $at, 0xf9ff
/* 8BA58 8008AE58 97A40022 */  lhu        $a0, 0x22($sp)
/* 8BA5C 8008AE5C 01415824 */  and        $t3, $t2, $at
/* 8BA60 8008AE60 0C022ADA */  jal        func_8008AB68
/* 8BA64 8008AE64 AC6B0098 */   sw        $t3, 0x98($v1)
/* 8BA68 8008AE68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BA6C 8008AE6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8BA70 8008AE70 03E00008 */  jr         $ra
/* 8BA74 8008AE74 00000000 */   nop
