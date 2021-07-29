glabel func_8003AC30
/* 3B830 8003AC30 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 3B834 8003AC34 AFB70038 */  sw         $s7, 0x38($sp)
/* 3B838 8003AC38 AFB0001C */  sw         $s0, 0x1c($sp)
/* 3B83C 8003AC3C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 3B840 8003AC40 24170198 */  addiu      $s7, $zero, 0x198
/* 3B844 8003AC44 02170019 */  multu      $s0, $s7
/* 3B848 8003AC48 AFB60034 */  sw         $s6, 0x34($sp)
/* 3B84C 8003AC4C 3C16800F */  lui        $s6, %hi(gActors)
/* 3B850 8003AC50 26D6F510 */  addiu      $s6, $s6, %lo(gActors)
/* 3B854 8003AC54 AFB50030 */  sw         $s5, 0x30($sp)
/* 3B858 8003AC58 AFBF003C */  sw         $ra, 0x3c($sp)
/* 3B85C 8003AC5C AFB4002C */  sw         $s4, 0x2c($sp)
/* 3B860 8003AC60 AFB30028 */  sw         $s3, 0x28($sp)
/* 3B864 8003AC64 AFB20024 */  sw         $s2, 0x24($sp)
/* 3B868 8003AC68 AFB10020 */  sw         $s1, 0x20($sp)
/* 3B86C 8003AC6C E7B50010 */  swc1       $f21, 0x10($sp)
/* 3B870 8003AC70 E7B40014 */  swc1       $f20, 0x14($sp)
/* 3B874 8003AC74 00007012 */  mflo       $t6
/* 3B878 8003AC78 02CEA821 */  addu       $s5, $s6, $t6
/* 3B87C 8003AC7C 96A500D0 */  lhu        $a1, 0xd0($s5)
/* 3B880 8003AC80 AFA40058 */  sw         $a0, 0x58($sp)
/* 3B884 8003AC84 10A00006 */  beqz       $a1, .L8003ACA0
/* 3B888 8003AC88 00A01825 */   or        $v1, $a1, $zero
/* 3B88C 8003AC8C 24010001 */  addiu      $at, $zero, 1
/* 3B890 8003AC90 1061005A */  beq        $v1, $at, .L8003ADFC
/* 3B894 8003AC94 00000000 */   nop
/* 3B898 8003AC98 10000258 */  b          .L8003B5FC
/* 3B89C 8003AC9C 8FBF003C */   lw        $ra, 0x3c($sp)
.L8003ACA0:
/* 3B8A0 8003ACA0 444AF800 */  cfc1       $t2, $31
/* 3B8A4 8003ACA4 24020001 */  addiu      $v0, $zero, 1
/* 3B8A8 8003ACA8 44C2F800 */  ctc1       $v0, $31
/* 3B8AC 8003ACAC C6A80110 */  lwc1       $f8, 0x110($s5)
/* 3B8B0 8003ACB0 24AF0001 */  addiu      $t7, $a1, 1
/* 3B8B4 8003ACB4 24180001 */  addiu      $t8, $zero, 1
/* 3B8B8 8003ACB8 24190003 */  addiu      $t9, $zero, 3
/* 3B8BC 8003ACBC 240802CA */  addiu      $t0, $zero, 0x2ca
/* 3B8C0 8003ACC0 34098000 */  ori        $t1, $zero, 0x8000
/* 3B8C4 8003ACC4 460042A4 */  cvt.w.s    $f10, $f8
/* 3B8C8 8003ACC8 A6AF00D0 */  sh         $t7, 0xd0($s5)
/* 3B8CC 8003ACCC A6B80094 */  sh         $t8, 0x94($s5)
/* 3B8D0 8003ACD0 AEB90080 */  sw         $t9, 0x80($s5)
/* 3B8D4 8003ACD4 A6A80084 */  sh         $t0, 0x84($s5)
/* 3B8D8 8003ACD8 AEA90090 */  sw         $t1, 0x90($s5)
/* 3B8DC 8003ACDC 3C01800F */  lui        $at, %hi(D_800EBB10)
/* 3B8E0 8003ACE0 C424BB10 */  lwc1       $f4, %lo(D_800EBB10)($at)
/* 3B8E4 8003ACE4 4442F800 */  cfc1       $v0, $31
/* 3B8E8 8003ACE8 3C013FC0 */  lui        $at, 0x3fc0
/* 3B8EC 8003ACEC 44813000 */  mtc1       $at, $f6
/* 3B8F0 8003ACF0 30420078 */  andi       $v0, $v0, 0x78
/* 3B8F4 8003ACF4 E6A400B4 */  swc1       $f4, 0xb4($s5)
/* 3B8F8 8003ACF8 10400013 */  beqz       $v0, .L8003AD48
/* 3B8FC 8003ACFC E6A600B8 */   swc1      $f6, 0xb8($s5)
/* 3B900 8003AD00 3C014F00 */  lui        $at, 0x4f00
/* 3B904 8003AD04 44815000 */  mtc1       $at, $f10
/* 3B908 8003AD08 24020001 */  addiu      $v0, $zero, 1
/* 3B90C 8003AD0C 460A4281 */  sub.s      $f10, $f8, $f10
/* 3B910 8003AD10 3C018000 */  lui        $at, 0x8000
/* 3B914 8003AD14 44C2F800 */  ctc1       $v0, $31
/* 3B918 8003AD18 00000000 */  nop
/* 3B91C 8003AD1C 460052A4 */  cvt.w.s    $f10, $f10
/* 3B920 8003AD20 4442F800 */  cfc1       $v0, $31
/* 3B924 8003AD24 00000000 */  nop
/* 3B928 8003AD28 30420078 */  andi       $v0, $v0, 0x78
/* 3B92C 8003AD2C 14400004 */  bnez       $v0, .L8003AD40
/* 3B930 8003AD30 00000000 */   nop
/* 3B934 8003AD34 44025000 */  mfc1       $v0, $f10
/* 3B938 8003AD38 10000007 */  b          .L8003AD58
/* 3B93C 8003AD3C 00411025 */   or        $v0, $v0, $at
.L8003AD40:
/* 3B940 8003AD40 10000005 */  b          .L8003AD58
/* 3B944 8003AD44 2402FFFF */   addiu     $v0, $zero, -1
.L8003AD48:
/* 3B948 8003AD48 44025000 */  mfc1       $v0, $f10
/* 3B94C 8003AD4C 00000000 */  nop
/* 3B950 8003AD50 0440FFFB */  bltz       $v0, .L8003AD40
/* 3B954 8003AD54 00000000 */   nop
.L8003AD58:
/* 3B958 8003AD58 304D0300 */  andi       $t5, $v0, 0x300
/* 3B95C 8003AD5C 44CAF800 */  ctc1       $t2, $31
/* 3B960 8003AD60 304C0003 */  andi       $t4, $v0, 3
/* 3B964 8003AD64 000D7400 */  sll        $t6, $t5, 0x10
/* 3B968 8003AD68 30433000 */  andi       $v1, $v0, 0x3000
/* 3B96C 8003AD6C 24011000 */  addiu      $at, $zero, 0x1000
/* 3B970 8003AD70 AEAC015C */  sw         $t4, 0x15c($s5)
/* 3B974 8003AD74 AEAE0170 */  sw         $t6, 0x170($s5)
/* 3B978 8003AD78 10610006 */  beq        $v1, $at, .L8003AD94
/* 3B97C 8003AD7C 24060020 */   addiu     $a2, $zero, 0x20
/* 3B980 8003AD80 24012000 */  addiu      $at, $zero, 0x2000
/* 3B984 8003AD84 10610005 */  beq        $v1, $at, .L8003AD9C
/* 3B988 8003AD88 00000000 */   nop
/* 3B98C 8003AD8C 10000005 */  b          .L8003ADA4
/* 3B990 8003AD90 86B3015E */   lh        $s3, 0x15e($s5)
.L8003AD94:
/* 3B994 8003AD94 10000002 */  b          .L8003ADA0
/* 3B998 8003AD98 24060040 */   addiu     $a2, $zero, 0x40
.L8003AD9C:
/* 3B99C 8003AD9C 24060060 */  addiu      $a2, $zero, 0x60
.L8003ADA0:
/* 3B9A0 8003ADA0 86B3015E */  lh         $s3, 0x15e($s5)
.L8003ADA4:
/* 3B9A4 8003ADA4 2612FFFF */  addiu      $s2, $s0, -1
/* 3B9A8 8003ADA8 324FFFFF */  andi       $t7, $s2, 0xffff
/* 3B9AC 8003ADAC 06600013 */  bltz       $s3, .L8003ADFC
/* 3B9B0 8003ADB0 01E09025 */   or        $s2, $t7, $zero
/* 3B9B4 8003ADB4 44868000 */  mtc1       $a2, $f16
/* 3B9B8 8003ADB8 04C10005 */  bgez       $a2, .L8003ADD0
/* 3B9BC 8003ADBC 46808020 */   cvt.s.w   $f0, $f16
/* 3B9C0 8003ADC0 3C014F80 */  lui        $at, 0x4f80
/* 3B9C4 8003ADC4 44819000 */  mtc1       $at, $f18
/* 3B9C8 8003ADC8 00000000 */  nop
/* 3B9CC 8003ADCC 46120000 */  add.s      $f0, $f0, $f18
.L8003ADD0:
/* 3B9D0 8003ADD0 02570019 */  multu      $s2, $s7
/* 3B9D4 8003ADD4 2673FFFF */  addiu      $s3, $s3, -1
/* 3B9D8 8003ADD8 00134C00 */  sll        $t1, $s3, 0x10
/* 3B9DC 8003ADDC 2652FFFF */  addiu      $s2, $s2, -1
/* 3B9E0 8003ADE0 3248FFFF */  andi       $t0, $s2, 0xffff
/* 3B9E4 8003ADE4 00099C03 */  sra        $s3, $t1, 0x10
/* 3B9E8 8003ADE8 01009025 */  or         $s2, $t0, $zero
/* 3B9EC 8003ADEC 0000C012 */  mflo       $t8
/* 3B9F0 8003ADF0 02D8C821 */  addu       $t9, $s6, $t8
/* 3B9F4 8003ADF4 0661FFF6 */  bgez       $s3, .L8003ADD0
/* 3B9F8 8003ADF8 E7200138 */   swc1      $f0, 0x138($t9)
.L8003ADFC:
/* 3B9FC 8003ADFC 8EA20098 */  lw         $v0, 0x98($s5)
/* 3BA00 8003AE00 2611FFFF */  addiu      $s1, $s0, -1
/* 3BA04 8003AE04 304B0200 */  andi       $t3, $v0, 0x200
/* 3BA08 8003AE08 116000FA */  beqz       $t3, .L8003B1F4
/* 3BA0C 8003AE0C 3C0C8013 */   lui       $t4, %hi(D_801373F2)
/* 3BA10 8003AE10 818C73F2 */  lb         $t4, %lo(D_801373F2)($t4)
/* 3BA14 8003AE14 00026B80 */  sll        $t5, $v0, 0xe
/* 3BA18 8003AE18 158000F6 */  bnez       $t4, .L8003B1F4
/* 3BA1C 8003AE1C 00000000 */   nop
/* 3BA20 8003AE20 05A100F4 */  bgez       $t5, .L8003B1F4
/* 3BA24 8003AE24 00000000 */   nop
/* 3BA28 8003AE28 8EA20158 */  lw         $v0, 0x158($s5)
/* 3BA2C 8003AE2C 2401007F */  addiu      $at, $zero, 0x7f
/* 3BA30 8003AE30 00027080 */  sll        $t6, $v0, 2
/* 3BA34 8003AE34 01C27023 */  subu       $t6, $t6, $v0
/* 3BA38 8003AE38 000E7080 */  sll        $t6, $t6, 2
/* 3BA3C 8003AE3C 01C27021 */  addu       $t6, $t6, $v0
/* 3BA40 8003AE40 000E7080 */  sll        $t6, $t6, 2
/* 3BA44 8003AE44 01C27023 */  subu       $t6, $t6, $v0
/* 3BA48 8003AE48 000E70C0 */  sll        $t6, $t6, 3
/* 3BA4C 8003AE4C 02CE7821 */  addu       $t7, $s6, $t6
/* 3BA50 8003AE50 91F8009C */  lbu        $t8, 0x9c($t7)
/* 3BA54 8003AE54 3052FFFF */  andi       $s2, $v0, 0xffff
/* 3BA58 8003AE58 170100E6 */  bne        $t8, $at, .L8003B1F4
/* 3BA5C 8003AE5C 00000000 */   nop
/* 3BA60 8003AE60 02570019 */  multu      $s2, $s7
/* 3BA64 8003AE64 8EA90088 */  lw         $t1, 0x88($s5)
/* 3BA68 8003AE68 8EAB008C */  lw         $t3, 0x8c($s5)
/* 3BA6C 8003AE6C 24060060 */  addiu      $a2, $zero, 0x60
/* 3BA70 8003AE70 A7A60046 */  sh         $a2, 0x46($sp)
/* 3BA74 8003AE74 0000C812 */  mflo       $t9
/* 3BA78 8003AE78 02D9A021 */  addu       $s4, $s6, $t9
/* 3BA7C 8003AE7C 8E880088 */  lw         $t0, 0x88($s4)
/* 3BA80 8003AE80 8E8A008C */  lw         $t2, 0x8c($s4)
/* 3BA84 8003AE84 01092023 */  subu       $a0, $t0, $t1
/* 3BA88 8003AE88 0C00A538 */  jal        func_800294E0
/* 3BA8C 8003AE8C 014B2823 */   subu      $a1, $t2, $t3
/* 3BA90 8003AE90 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BA94 8003AE94 28410080 */  slti       $at, $v0, 0x80
/* 3BA98 8003AE98 14200025 */  bnez       $at, .L8003AF30
/* 3BA9C 8003AE9C 28410180 */   slti      $at, $v0, 0x180
/* 3BAA0 8003AEA0 10200024 */  beqz       $at, .L8003AF34
/* 3BAA4 8003AEA4 28410180 */   slti      $at, $v0, 0x180
/* 3BAA8 8003AEA8 0C0121BD */  jal        func_800486F4
/* 3BAAC 8003AEAC A7A60046 */   sh        $a2, 0x46($sp)
/* 3BAB0 8003AEB0 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BAB4 8003AEB4 10400014 */  beqz       $v0, .L8003AF08
/* 3BAB8 8003AEB8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BABC 8003AEBC 24010004 */  addiu      $at, $zero, 4
/* 3BAC0 8003AEC0 1041000C */  beq        $v0, $at, .L8003AEF4
/* 3BAC4 8003AEC4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BAC8 8003AEC8 24010008 */  addiu      $at, $zero, 8
/* 3BACC 8003AECC 10410013 */  beq        $v0, $at, .L8003AF1C
/* 3BAD0 8003AED0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BAD4 8003AED4 2401000C */  addiu      $at, $zero, 0xc
/* 3BAD8 8003AED8 14410084 */  bne        $v0, $at, .L8003B0EC
/* 3BADC 8003AEDC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BAE0 8003AEE0 0C00EA56 */  jal        func_8003A958
/* 3BAE4 8003AEE4 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BAE8 8003AEE8 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BAEC 8003AEEC 10000080 */  b          .L8003B0F0
/* 3BAF0 8003AEF0 444CF800 */   cfc1      $t4, $31
.L8003AEF4:
/* 3BAF4 8003AEF4 0C00EA6E */  jal        func_8003A9B8
/* 3BAF8 8003AEF8 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BAFC 8003AEFC 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB00 8003AF00 1000007B */  b          .L8003B0F0
/* 3BB04 8003AF04 444CF800 */   cfc1      $t4, $31
.L8003AF08:
/* 3BB08 8003AF08 0C00EA86 */  jal        func_8003AA18
/* 3BB0C 8003AF0C A7A60046 */   sh        $a2, 0x46($sp)
/* 3BB10 8003AF10 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB14 8003AF14 10000076 */  b          .L8003B0F0
/* 3BB18 8003AF18 444CF800 */   cfc1      $t4, $31
.L8003AF1C:
/* 3BB1C 8003AF1C 0C00EAC9 */  jal        func_8003AB24
/* 3BB20 8003AF20 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BB24 8003AF24 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB28 8003AF28 10000071 */  b          .L8003B0F0
/* 3BB2C 8003AF2C 444CF800 */   cfc1      $t4, $31
.L8003AF30:
/* 3BB30 8003AF30 28410180 */  slti       $at, $v0, 0x180
.L8003AF34:
/* 3BB34 8003AF34 14200025 */  bnez       $at, .L8003AFCC
/* 3BB38 8003AF38 28410280 */   slti      $at, $v0, 0x280
/* 3BB3C 8003AF3C 10200024 */  beqz       $at, .L8003AFD0
/* 3BB40 8003AF40 28410280 */   slti      $at, $v0, 0x280
/* 3BB44 8003AF44 0C0121BD */  jal        func_800486F4
/* 3BB48 8003AF48 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BB4C 8003AF4C 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB50 8003AF50 10400014 */  beqz       $v0, .L8003AFA4
/* 3BB54 8003AF54 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BB58 8003AF58 24010004 */  addiu      $at, $zero, 4
/* 3BB5C 8003AF5C 1041000C */  beq        $v0, $at, .L8003AF90
/* 3BB60 8003AF60 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BB64 8003AF64 24010008 */  addiu      $at, $zero, 8
/* 3BB68 8003AF68 10410013 */  beq        $v0, $at, .L8003AFB8
/* 3BB6C 8003AF6C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BB70 8003AF70 2401000C */  addiu      $at, $zero, 0xc
/* 3BB74 8003AF74 1441005D */  bne        $v0, $at, .L8003B0EC
/* 3BB78 8003AF78 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BB7C 8003AF7C 0C00EA86 */  jal        func_8003AA18
/* 3BB80 8003AF80 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BB84 8003AF84 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB88 8003AF88 10000059 */  b          .L8003B0F0
/* 3BB8C 8003AF8C 444CF800 */   cfc1      $t4, $31
.L8003AF90:
/* 3BB90 8003AF90 0C00EAC9 */  jal        func_8003AB24
/* 3BB94 8003AF94 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BB98 8003AF98 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BB9C 8003AF9C 10000054 */  b          .L8003B0F0
/* 3BBA0 8003AFA0 444CF800 */   cfc1      $t4, $31
.L8003AFA4:
/* 3BBA4 8003AFA4 0C00EA6E */  jal        func_8003A9B8
/* 3BBA8 8003AFA8 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BBAC 8003AFAC 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BBB0 8003AFB0 1000004F */  b          .L8003B0F0
/* 3BBB4 8003AFB4 444CF800 */   cfc1      $t4, $31
.L8003AFB8:
/* 3BBB8 8003AFB8 0C00EA56 */  jal        func_8003A958
/* 3BBBC 8003AFBC A7A60046 */   sh        $a2, 0x46($sp)
/* 3BBC0 8003AFC0 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BBC4 8003AFC4 1000004A */  b          .L8003B0F0
/* 3BBC8 8003AFC8 444CF800 */   cfc1      $t4, $31
.L8003AFCC:
/* 3BBCC 8003AFCC 28410280 */  slti       $at, $v0, 0x280
.L8003AFD0:
/* 3BBD0 8003AFD0 14200025 */  bnez       $at, .L8003B068
/* 3BBD4 8003AFD4 28410380 */   slti      $at, $v0, 0x380
/* 3BBD8 8003AFD8 10200023 */  beqz       $at, .L8003B068
/* 3BBDC 8003AFDC 00000000 */   nop
/* 3BBE0 8003AFE0 0C0121BD */  jal        func_800486F4
/* 3BBE4 8003AFE4 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BBE8 8003AFE8 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BBEC 8003AFEC 10400014 */  beqz       $v0, .L8003B040
/* 3BBF0 8003AFF0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BBF4 8003AFF4 24010004 */  addiu      $at, $zero, 4
/* 3BBF8 8003AFF8 1041000C */  beq        $v0, $at, .L8003B02C
/* 3BBFC 8003AFFC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC00 8003B000 24010008 */  addiu      $at, $zero, 8
/* 3BC04 8003B004 10410013 */  beq        $v0, $at, .L8003B054
/* 3BC08 8003B008 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC0C 8003B00C 2401000C */  addiu      $at, $zero, 0xc
/* 3BC10 8003B010 14410036 */  bne        $v0, $at, .L8003B0EC
/* 3BC14 8003B014 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC18 8003B018 0C00EA6E */  jal        func_8003A9B8
/* 3BC1C 8003B01C A7A60046 */   sh        $a2, 0x46($sp)
/* 3BC20 8003B020 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BC24 8003B024 10000032 */  b          .L8003B0F0
/* 3BC28 8003B028 444CF800 */   cfc1      $t4, $31
.L8003B02C:
/* 3BC2C 8003B02C 0C00EA56 */  jal        func_8003A958
/* 3BC30 8003B030 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BC34 8003B034 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BC38 8003B038 1000002D */  b          .L8003B0F0
/* 3BC3C 8003B03C 444CF800 */   cfc1      $t4, $31
.L8003B040:
/* 3BC40 8003B040 0C00EAC9 */  jal        func_8003AB24
/* 3BC44 8003B044 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BC48 8003B048 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BC4C 8003B04C 10000028 */  b          .L8003B0F0
/* 3BC50 8003B050 444CF800 */   cfc1      $t4, $31
.L8003B054:
/* 3BC54 8003B054 0C00EA86 */  jal        func_8003AA18
/* 3BC58 8003B058 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BC5C 8003B05C 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BC60 8003B060 10000023 */  b          .L8003B0F0
/* 3BC64 8003B064 444CF800 */   cfc1      $t4, $31
.L8003B068:
/* 3BC68 8003B068 0C0121BD */  jal        func_800486F4
/* 3BC6C 8003B06C A7A60046 */   sh        $a2, 0x46($sp)
/* 3BC70 8003B070 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BC74 8003B074 10400014 */  beqz       $v0, .L8003B0C8
/* 3BC78 8003B078 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC7C 8003B07C 24010004 */  addiu      $at, $zero, 4
/* 3BC80 8003B080 1041000C */  beq        $v0, $at, .L8003B0B4
/* 3BC84 8003B084 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC88 8003B088 24010008 */  addiu      $at, $zero, 8
/* 3BC8C 8003B08C 10410013 */  beq        $v0, $at, .L8003B0DC
/* 3BC90 8003B090 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BC94 8003B094 2401000C */  addiu      $at, $zero, 0xc
/* 3BC98 8003B098 14410014 */  bne        $v0, $at, .L8003B0EC
/* 3BC9C 8003B09C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 3BCA0 8003B0A0 0C00EAC9 */  jal        func_8003AB24
/* 3BCA4 8003B0A4 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BCA8 8003B0A8 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BCAC 8003B0AC 10000010 */  b          .L8003B0F0
/* 3BCB0 8003B0B0 444CF800 */   cfc1      $t4, $31
.L8003B0B4:
/* 3BCB4 8003B0B4 0C00EA86 */  jal        func_8003AA18
/* 3BCB8 8003B0B8 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BCBC 8003B0BC 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BCC0 8003B0C0 1000000B */  b          .L8003B0F0
/* 3BCC4 8003B0C4 444CF800 */   cfc1      $t4, $31
.L8003B0C8:
/* 3BCC8 8003B0C8 0C00EA56 */  jal        func_8003A958
/* 3BCCC 8003B0CC A7A60046 */   sh        $a2, 0x46($sp)
/* 3BCD0 8003B0D0 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BCD4 8003B0D4 10000006 */  b          .L8003B0F0
/* 3BCD8 8003B0D8 444CF800 */   cfc1      $t4, $31
.L8003B0DC:
/* 3BCDC 8003B0DC 0C00EA6E */  jal        func_8003A9B8
/* 3BCE0 8003B0E0 A7A60046 */   sh        $a2, 0x46($sp)
/* 3BCE4 8003B0E4 97A60046 */  lhu        $a2, 0x46($sp)
/* 3BCE8 8003B0E8 00000000 */  nop
.L8003B0EC:
/* 3BCEC 8003B0EC 444CF800 */  cfc1       $t4, $31
.L8003B0F0:
/* 3BCF0 8003B0F0 24030001 */  addiu      $v1, $zero, 1
/* 3BCF4 8003B0F4 44C3F800 */  ctc1       $v1, $31
/* 3BCF8 8003B0F8 C6A40110 */  lwc1       $f4, 0x110($s5)
/* 3BCFC 8003B0FC 3C014F00 */  lui        $at, 0x4f00
/* 3BD00 8003B100 460021A4 */  cvt.w.s    $f6, $f4
/* 3BD04 8003B104 4443F800 */  cfc1       $v1, $31
/* 3BD08 8003B108 00000000 */  nop
/* 3BD0C 8003B10C 30630078 */  andi       $v1, $v1, 0x78
/* 3BD10 8003B110 10600012 */  beqz       $v1, .L8003B15C
/* 3BD14 8003B114 00000000 */   nop
/* 3BD18 8003B118 44813000 */  mtc1       $at, $f6
/* 3BD1C 8003B11C 24030001 */  addiu      $v1, $zero, 1
/* 3BD20 8003B120 46062181 */  sub.s      $f6, $f4, $f6
/* 3BD24 8003B124 3C018000 */  lui        $at, 0x8000
/* 3BD28 8003B128 44C3F800 */  ctc1       $v1, $31
/* 3BD2C 8003B12C 00000000 */  nop
/* 3BD30 8003B130 460031A4 */  cvt.w.s    $f6, $f6
/* 3BD34 8003B134 4443F800 */  cfc1       $v1, $31
/* 3BD38 8003B138 00000000 */  nop
/* 3BD3C 8003B13C 30630078 */  andi       $v1, $v1, 0x78
/* 3BD40 8003B140 14600004 */  bnez       $v1, .L8003B154
/* 3BD44 8003B144 00000000 */   nop
/* 3BD48 8003B148 44033000 */  mfc1       $v1, $f6
/* 3BD4C 8003B14C 10000007 */  b          .L8003B16C
/* 3BD50 8003B150 00611825 */   or        $v1, $v1, $at
.L8003B154:
/* 3BD54 8003B154 10000005 */  b          .L8003B16C
/* 3BD58 8003B158 2403FFFF */   addiu     $v1, $zero, -1
.L8003B15C:
/* 3BD5C 8003B15C 44033000 */  mfc1       $v1, $f6
/* 3BD60 8003B160 00000000 */  nop
/* 3BD64 8003B164 0460FFFB */  bltz       $v1, .L8003B154
/* 3BD68 8003B168 00000000 */   nop
.L8003B16C:
/* 3BD6C 8003B16C 44CCF800 */  ctc1       $t4, $31
/* 3BD70 8003B170 306E0030 */  andi       $t6, $v1, 0x30
/* 3BD74 8003B174 24010010 */  addiu      $at, $zero, 0x10
/* 3BD78 8003B178 11C10005 */  beq        $t6, $at, .L8003B190
/* 3BD7C 8003B17C 24010020 */   addiu     $at, $zero, 0x20
/* 3BD80 8003B180 11C10005 */  beq        $t6, $at, .L8003B198
/* 3BD84 8003B184 00000000 */   nop
/* 3BD88 8003B188 10000005 */  b          .L8003B1A0
/* 3BD8C 8003B18C 44864000 */   mtc1      $a2, $f8
.L8003B190:
/* 3BD90 8003B190 10000002 */  b          .L8003B19C
/* 3BD94 8003B194 24060040 */   addiu     $a2, $zero, 0x40
.L8003B198:
/* 3BD98 8003B198 24060020 */  addiu      $a2, $zero, 0x20
.L8003B19C:
/* 3BD9C 8003B19C 44864000 */  mtc1       $a2, $f8
.L8003B1A0:
/* 3BDA0 8003B1A0 04C10005 */  bgez       $a2, .L8003B1B8
/* 3BDA4 8003B1A4 46804020 */   cvt.s.w   $f0, $f8
/* 3BDA8 8003B1A8 3C014F80 */  lui        $at, 0x4f80
/* 3BDAC 8003B1AC 44815000 */  mtc1       $at, $f10
/* 3BDB0 8003B1B0 00000000 */  nop
/* 3BDB4 8003B1B4 460A0000 */  add.s      $f0, $f0, $f10
.L8003B1B8:
/* 3BDB8 8003B1B8 C6820138 */  lwc1       $f2, 0x138($s4)
/* 3BDBC 8003B1BC 3C014200 */  lui        $at, 0x4200
/* 3BDC0 8003B1C0 4602003C */  c.lt.s     $f0, $f2
/* 3BDC4 8003B1C4 00000000 */  nop
/* 3BDC8 8003B1C8 45000003 */  bc1f       .L8003B1D8
/* 3BDCC 8003B1CC 00000000 */   nop
/* 3BDD0 8003B1D0 10000008 */  b          .L8003B1F4
/* 3BDD4 8003B1D4 E6800138 */   swc1      $f0, 0x138($s4)
.L8003B1D8:
/* 3BDD8 8003B1D8 44810000 */  mtc1       $at, $f0
/* 3BDDC 8003B1DC 00000000 */  nop
/* 3BDE0 8003B1E0 4600103C */  c.lt.s     $f2, $f0
/* 3BDE4 8003B1E4 00000000 */  nop
/* 3BDE8 8003B1E8 45000002 */  bc1f       .L8003B1F4
/* 3BDEC 8003B1EC 00000000 */   nop
/* 3BDF0 8003B1F0 E6800138 */  swc1       $f0, 0x138($s4)
.L8003B1F4:
/* 3BDF4 8003B1F4 8EAF0170 */  lw         $t7, 0x170($s5)
/* 3BDF8 8003B1F8 3C0103FF */  lui        $at, 0x3ff
/* 3BDFC 8003B1FC 3421FFFF */  ori        $at, $at, 0xffff
/* 3BE00 8003B200 8EA5016C */  lw         $a1, 0x16c($s5)
/* 3BE04 8003B204 01E12024 */  and        $a0, $t7, $at
/* 3BE08 8003B208 AEA40170 */  sw         $a0, 0x170($s5)
/* 3BE0C 8003B20C 3C06000C */  lui        $a2, 0xc
/* 3BE10 8003B210 0C00A634 */  jal        func_800298D0
/* 3BE14 8003B214 3232FFFF */   andi      $s2, $s1, 0xffff
/* 3BE18 8003B218 86B3015E */  lh         $s3, 0x15e($s5)
/* 3BE1C 8003B21C AEA2016C */  sw         $v0, 0x16c($s5)
/* 3BE20 8003B220 04410004 */  bgez       $v0, .L8003B234
/* 3BE24 8003B224 00028C03 */   sra       $s1, $v0, 0x10
/* 3BE28 8003B228 3401FFFF */  ori        $at, $zero, 0xffff
/* 3BE2C 8003B22C 00220821 */  addu       $at, $at, $v0
/* 3BE30 8003B230 00018C03 */  sra        $s1, $at, 0x10
.L8003B234:
/* 3BE34 8003B234 066000F0 */  bltz       $s3, .L8003B5F8
/* 3BE38 8003B238 3C01800F */   lui       $at, %hi(D_800EBB18)
/* 3BE3C 8003B23C C435BB18 */  lwc1       $f21, %lo(D_800EBB18)($at)
/* 3BE40 8003B240 C434BB1C */  lwc1       $f20, -0x44e4($at)
/* 3BE44 8003B244 00000000 */  nop
.L8003B248:
/* 3BE48 8003B248 02570019 */  multu      $s2, $s7
/* 3BE4C 8003B24C 3C014780 */  lui        $at, 0x4780
/* 3BE50 8003B250 44819000 */  mtc1       $at, $f18
/* 3BE54 8003B254 323903FF */  andi       $t9, $s1, 0x3ff
/* 3BE58 8003B258 3C02800C */  lui        $v0, %hi(D_800BCCD0)
/* 3BE5C 8003B25C 332903FF */  andi       $t1, $t9, 0x3ff
/* 3BE60 8003B260 2442CCD0 */  addiu      $v0, $v0, %lo(D_800BCCD0)
/* 3BE64 8003B264 00095080 */  sll        $t2, $t1, 2
/* 3BE68 8003B268 8EAC0088 */  lw         $t4, 0x88($s5)
/* 3BE6C 8003B26C 004A5821 */  addu       $t3, $v0, $t2
/* 3BE70 8003B270 C5640000 */  lwc1       $f4, ($t3)
/* 3BE74 8003B274 448C4000 */  mtc1       $t4, $f8
/* 3BE78 8003B278 00004012 */  mflo       $t0
/* 3BE7C 8003B27C 02C8A021 */  addu       $s4, $s6, $t0
/* 3BE80 8003B280 C690013C */  lwc1       $f16, 0x13c($s4)
/* 3BE84 8003B284 8E8D0154 */  lw         $t5, 0x154($s4)
/* 3BE88 8003B288 46128002 */  mul.s      $f0, $f16, $f18
/* 3BE8C 8003B28C 448D9000 */  mtc1       $t5, $f18
/* 3BE90 8003B290 03208825 */  or         $s1, $t9, $zero
/* 3BE94 8003B294 2738FF00 */  addiu      $t8, $t9, -0x100
/* 3BE98 8003B298 46040182 */  mul.s      $f6, $f0, $f4
/* 3BE9C 8003B29C 331903FF */  andi       $t9, $t8, 0x3ff
/* 3BEA0 8003B2A0 00194080 */  sll        $t0, $t9, 2
/* 3BEA4 8003B2A4 00484821 */  addu       $t1, $v0, $t0
/* 3BEA8 8003B2A8 468042A0 */  cvt.s.w    $f10, $f8
/* 3BEAC 8003B2AC 8E8B0158 */  lw         $t3, 0x158($s4)
/* 3BEB0 8003B2B0 46809120 */  cvt.s.w    $f4, $f18
/* 3BEB4 8003B2B4 460A3400 */  add.s      $f16, $f6, $f10
/* 3BEB8 8003B2B8 C52A0000 */  lwc1       $f10, ($t1)
/* 3BEBC 8003B2BC 46102200 */  add.s      $f8, $f4, $f16
/* 3BEC0 8003B2C0 444EF800 */  cfc1       $t6, $31
/* 3BEC4 8003B2C4 00000000 */  nop
/* 3BEC8 8003B2C8 35C10003 */  ori        $at, $t6, 3
/* 3BECC 8003B2CC 38210002 */  xori       $at, $at, 2
/* 3BED0 8003B2D0 44C1F800 */  ctc1       $at, $31
/* 3BED4 8003B2D4 00000000 */  nop
/* 3BED8 8003B2D8 460041A4 */  cvt.w.s    $f6, $f8
/* 3BEDC 8003B2DC 440F3000 */  mfc1       $t7, $f6
/* 3BEE0 8003B2E0 44CEF800 */  ctc1       $t6, $31
/* 3BEE4 8003B2E4 AE8F0088 */  sw         $t7, 0x88($s4)
/* 3BEE8 8003B2E8 8EAA008C */  lw         $t2, 0x8c($s5)
/* 3BEEC 8003B2EC 460A0482 */  mul.s      $f18, $f0, $f10
/* 3BEF0 8003B2F0 448A2000 */  mtc1       $t2, $f4
/* 3BEF4 8003B2F4 448B3000 */  mtc1       $t3, $f6
/* 3BEF8 8003B2F8 46802420 */  cvt.s.w    $f16, $f4
/* 3BEFC 8003B2FC 468032A0 */  cvt.s.w    $f10, $f6
/* 3BF00 8003B300 46109200 */  add.s      $f8, $f18, $f16
/* 3BF04 8003B304 46085100 */  add.s      $f4, $f10, $f8
/* 3BF08 8003B308 444CF800 */  cfc1       $t4, $31
/* 3BF0C 8003B30C 00000000 */  nop
/* 3BF10 8003B310 35810003 */  ori        $at, $t4, 3
/* 3BF14 8003B314 38210002 */  xori       $at, $at, 2
/* 3BF18 8003B318 44C1F800 */  ctc1       $at, $31
/* 3BF1C 8003B31C 00000000 */  nop
/* 3BF20 8003B320 460024A4 */  cvt.w.s    $f18, $f4
/* 3BF24 8003B324 440D9000 */  mfc1       $t5, $f18
/* 3BF28 8003B328 44CCF800 */  ctc1       $t4, $31
/* 3BF2C 8003B32C 0C00A14A */  jal        func_80028528
/* 3BF30 8003B330 AE8D008C */   sw        $t5, 0x8c($s4)
/* 3BF34 8003B334 104000A3 */  beqz       $v0, .L8003B5C4
/* 3BF38 8003B338 3046FFFF */   andi      $a2, $v0, 0xffff
/* 3BF3C 8003B33C 00D70019 */  multu      $a2, $s7
/* 3BF40 8003B340 240F0034 */  addiu      $t7, $zero, 0x34
/* 3BF44 8003B344 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 3BF48 8003B348 00007012 */  mflo       $t6
/* 3BF4C 8003B34C 02CE8021 */  addu       $s0, $s6, $t6
/* 3BF50 8003B350 0C0078B4 */  jal        func_8001E2D0
/* 3BF54 8003B354 A60F00D2 */   sh        $t7, 0xd2($s0)
/* 3BF58 8003B358 24180003 */  addiu      $t8, $zero, 3
/* 3BF5C 8003B35C AE180080 */  sw         $t8, 0x80($s0)
/* 3BF60 8003B360 8EA20088 */  lw         $v0, 0x88($s5)
/* 3BF64 8003B364 8E9900EC */  lw         $t9, 0xec($s4)
/* 3BF68 8003B368 8E890088 */  lw         $t1, 0x88($s4)
/* 3BF6C 8003B36C 03224021 */  addu       $t0, $t9, $v0
/* 3BF70 8003B370 01095023 */  subu       $t2, $t0, $t1
/* 3BF74 8003B374 05410003 */  bgez       $t2, .L8003B384
/* 3BF78 8003B378 000A5843 */   sra       $t3, $t2, 1
/* 3BF7C 8003B37C 25410001 */  addiu      $at, $t2, 1
/* 3BF80 8003B380 00015843 */  sra        $t3, $at, 1
.L8003B384:
/* 3BF84 8003B384 448B8000 */  mtc1       $t3, $f16
/* 3BF88 8003B388 44824000 */  mtc1       $v0, $f8
/* 3BF8C 8003B38C 468081A1 */  cvt.d.w    $f6, $f16
/* 3BF90 8003B390 46343282 */  mul.d      $f10, $f6, $f20
/* 3BF94 8003B394 46804121 */  cvt.d.w    $f4, $f8
/* 3BF98 8003B398 462A2481 */  sub.d      $f18, $f4, $f10
/* 3BF9C 8003B39C 444CF800 */  cfc1       $t4, $31
/* 3BFA0 8003B3A0 00000000 */  nop
/* 3BFA4 8003B3A4 35810003 */  ori        $at, $t4, 3
/* 3BFA8 8003B3A8 38210002 */  xori       $at, $at, 2
/* 3BFAC 8003B3AC 44C1F800 */  ctc1       $at, $31
/* 3BFB0 8003B3B0 00000000 */  nop
/* 3BFB4 8003B3B4 46209424 */  cvt.w.d    $f16, $f18
/* 3BFB8 8003B3B8 E6100088 */  swc1       $f16, 0x88($s0)
/* 3BFBC 8003B3BC 8EA3008C */  lw         $v1, 0x8c($s5)
/* 3BFC0 8003B3C0 8E8D00F0 */  lw         $t5, 0xf0($s4)
/* 3BFC4 8003B3C4 8E8F008C */  lw         $t7, 0x8c($s4)
/* 3BFC8 8003B3C8 01A37021 */  addu       $t6, $t5, $v1
/* 3BFCC 8003B3CC 01CFC023 */  subu       $t8, $t6, $t7
/* 3BFD0 8003B3D0 44CCF800 */  ctc1       $t4, $31
/* 3BFD4 8003B3D4 07010003 */  bgez       $t8, .L8003B3E4
/* 3BFD8 8003B3D8 0018C843 */   sra       $t9, $t8, 1
/* 3BFDC 8003B3DC 27010001 */  addiu      $at, $t8, 1
/* 3BFE0 8003B3E0 0001C843 */  sra        $t9, $at, 1
.L8003B3E4:
/* 3BFE4 8003B3E4 44993000 */  mtc1       $t9, $f6
/* 3BFE8 8003B3E8 44835000 */  mtc1       $v1, $f10
/* 3BFEC 8003B3EC 46803221 */  cvt.d.w    $f8, $f6
/* 3BFF0 8003B3F0 46344102 */  mul.d      $f4, $f8, $f20
/* 3BFF4 8003B3F4 468054A1 */  cvt.d.w    $f18, $f10
/* 3BFF8 8003B3F8 46249401 */  sub.d      $f16, $f18, $f4
/* 3BFFC 8003B3FC 4448F800 */  cfc1       $t0, $31
/* 3C000 8003B400 00000000 */  nop
/* 3C004 8003B404 35010003 */  ori        $at, $t0, 3
/* 3C008 8003B408 38210002 */  xori       $at, $at, 2
/* 3C00C 8003B40C 44C1F800 */  ctc1       $at, $31
/* 3C010 8003B410 00000000 */  nop
/* 3C014 8003B414 462081A4 */  cvt.w.d    $f6, $f16
/* 3C018 8003B418 E606008C */  swc1       $f6, 0x8c($s0)
/* 3C01C 8003B41C 8EAC008C */  lw         $t4, 0x8c($s5)
/* 3C020 8003B420 8E8B008C */  lw         $t3, 0x8c($s4)
/* 3C024 8003B424 8EAA0088 */  lw         $t2, 0x88($s5)
/* 3C028 8003B428 8E890088 */  lw         $t1, 0x88($s4)
/* 3C02C 8003B42C 44C8F800 */  ctc1       $t0, $31
/* 3C030 8003B430 016C2823 */  subu       $a1, $t3, $t4
/* 3C034 8003B434 0C00A538 */  jal        func_800294E0
/* 3C038 8003B438 012A2023 */   subu      $a0, $t1, $t2
/* 3C03C 8003B43C 44824000 */  mtc1       $v0, $f8
/* 3C040 8003B440 3C01800F */  lui        $at, %hi(D_800EBB20)
/* 3C044 8003B444 468042A1 */  cvt.d.w    $f10, $f8
/* 3C048 8003B448 C433BB20 */  lwc1       $f19, %lo(D_800EBB20)($at)
/* 3C04C 8003B44C C432BB24 */  lwc1       $f18, -0x44dc($at)
/* 3C050 8003B450 00000000 */  nop
/* 3C054 8003B454 46325102 */  mul.d      $f4, $f10, $f18
/* 3C058 8003B458 46202420 */  cvt.s.d    $f16, $f4
/* 3C05C 8003B45C E61000C4 */  swc1       $f16, 0xc4($s0)
/* 3C060 8003B460 86AE0088 */  lh         $t6, 0x88($s5)
/* 3C064 8003B464 868D0088 */  lh         $t5, 0x88($s4)
/* 3C068 8003B468 86B9008C */  lh         $t9, 0x8c($s5)
/* 3C06C 8003B46C 01AE7823 */  subu       $t7, $t5, $t6
/* 3C070 8003B470 448F3000 */  mtc1       $t7, $f6
/* 3C074 8003B474 8698008C */  lh         $t8, 0x8c($s4)
/* 3C078 8003B478 46803020 */  cvt.s.w    $f0, $f6
/* 3C07C 8003B47C 03194023 */  subu       $t0, $t8, $t9
/* 3C080 8003B480 44884000 */  mtc1       $t0, $f8
/* 3C084 8003B484 46000282 */  mul.s      $f10, $f0, $f0
/* 3C088 8003B488 468040A0 */  cvt.s.w    $f2, $f8
/* 3C08C 8003B48C 46021482 */  mul.s      $f18, $f2, $f2
/* 3C090 8003B490 0C0295C4 */  jal        sqrtf
/* 3C094 8003B494 46125300 */   add.s     $f12, $f10, $f18
/* 3C098 8003B498 4449F800 */  cfc1       $t1, $31
/* 3C09C 8003B49C 240A0001 */  addiu      $t2, $zero, 1
/* 3C0A0 8003B4A0 44CAF800 */  ctc1       $t2, $31
/* 3C0A4 8003B4A4 C6A40110 */  lwc1       $f4, 0x110($s5)
/* 3C0A8 8003B4A8 3C014F00 */  lui        $at, 0x4f00
/* 3C0AC 8003B4AC 46002424 */  cvt.w.s    $f16, $f4
/* 3C0B0 8003B4B0 444AF800 */  cfc1       $t2, $31
/* 3C0B4 8003B4B4 00000000 */  nop
/* 3C0B8 8003B4B8 314A0078 */  andi       $t2, $t2, 0x78
/* 3C0BC 8003B4BC 11400012 */  beqz       $t2, .L8003B508
/* 3C0C0 8003B4C0 00000000 */   nop
/* 3C0C4 8003B4C4 44818000 */  mtc1       $at, $f16
/* 3C0C8 8003B4C8 240A0001 */  addiu      $t2, $zero, 1
/* 3C0CC 8003B4CC 46102401 */  sub.s      $f16, $f4, $f16
/* 3C0D0 8003B4D0 3C018000 */  lui        $at, 0x8000
/* 3C0D4 8003B4D4 44CAF800 */  ctc1       $t2, $31
/* 3C0D8 8003B4D8 00000000 */  nop
/* 3C0DC 8003B4DC 46008424 */  cvt.w.s    $f16, $f16
/* 3C0E0 8003B4E0 444AF800 */  cfc1       $t2, $31
/* 3C0E4 8003B4E4 00000000 */  nop
/* 3C0E8 8003B4E8 314A0078 */  andi       $t2, $t2, 0x78
/* 3C0EC 8003B4EC 15400004 */  bnez       $t2, .L8003B500
/* 3C0F0 8003B4F0 00000000 */   nop
/* 3C0F4 8003B4F4 440A8000 */  mfc1       $t2, $f16
/* 3C0F8 8003B4F8 10000007 */  b          .L8003B518
/* 3C0FC 8003B4FC 01415025 */   or        $t2, $t2, $at
.L8003B500:
/* 3C100 8003B500 10000005 */  b          .L8003B518
/* 3C104 8003B504 240AFFFF */   addiu     $t2, $zero, -1
.L8003B508:
/* 3C108 8003B508 440A8000 */  mfc1       $t2, $f16
/* 3C10C 8003B50C 00000000 */  nop
/* 3C110 8003B510 0540FFFB */  bltz       $t2, .L8003B500
/* 3C114 8003B514 00000000 */   nop
.L8003B518:
/* 3C118 8003B518 44C9F800 */  ctc1       $t1, $31
/* 3C11C 8003B51C 314C4000 */  andi       $t4, $t2, 0x4000
/* 3C120 8003B520 11800011 */  beqz       $t4, .L8003B568
/* 3C124 8003B524 3C014190 */   lui       $at, 0x4190
/* 3C128 8003B528 96AD0094 */  lhu        $t5, 0x94($s5)
/* 3C12C 8003B52C 34018009 */  ori        $at, $zero, 0x8009
/* 3C130 8003B530 31AE0100 */  andi       $t6, $t5, 0x100
/* 3C134 8003B534 01C17821 */  addu       $t7, $t6, $at
/* 3C138 8003B538 3C014150 */  lui        $at, 0x4150
/* 3C13C 8003B53C 44813000 */  mtc1       $at, $f6
/* 3C140 8003B540 3C014000 */  lui        $at, 0x4000
/* 3C144 8003B544 46060203 */  div.s      $f8, $f0, $f6
/* 3C148 8003B548 44815000 */  mtc1       $at, $f10
/* 3C14C 8003B54C 24183064 */  addiu      $t8, $zero, 0x3064
/* 3C150 8003B550 A60F0094 */  sh         $t7, 0x94($s0)
/* 3C154 8003B554 A6180084 */  sh         $t8, 0x84($s0)
/* 3C158 8003B558 460A4483 */  div.s      $f18, $f8, $f10
/* 3C15C 8003B55C 46009107 */  neg.s      $f4, $f18
/* 3C160 8003B560 1000000D */  b          .L8003B598
/* 3C164 8003B564 E60400B4 */   swc1      $f4, 0xb4($s0)
.L8003B568:
/* 3C168 8003B568 44818000 */  mtc1       $at, $f16
/* 3C16C 8003B56C 3C014000 */  lui        $at, 0x4000
/* 3C170 8003B570 46100183 */  div.s      $f6, $f0, $f16
/* 3C174 8003B574 44814000 */  mtc1       $at, $f8
/* 3C178 8003B578 96B90094 */  lhu        $t9, 0x94($s5)
/* 3C17C 8003B57C 240A00A2 */  addiu      $t2, $zero, 0xa2
/* 3C180 8003B580 33280100 */  andi       $t0, $t9, 0x100
/* 3C184 8003B584 25090209 */  addiu      $t1, $t0, 0x209
/* 3C188 8003B588 A6090094 */  sh         $t1, 0x94($s0)
/* 3C18C 8003B58C A60A0084 */  sh         $t2, 0x84($s0)
/* 3C190 8003B590 46083283 */  div.s      $f10, $f6, $f8
/* 3C194 8003B594 E60A00B4 */  swc1       $f10, 0xb4($s0)
.L8003B598:
/* 3C198 8003B598 3C013F80 */  lui        $at, 0x3f80
/* 3C19C 8003B59C 44819000 */  mtc1       $at, $f18
/* 3C1A0 8003B5A0 44812000 */  mtc1       $at, $f4
/* 3C1A4 8003B5A4 E61200B8 */  swc1       $f18, 0xb8($s0)
/* 3C1A8 8003B5A8 86AB0090 */  lh         $t3, 0x90($s5)
/* 3C1AC 8003B5AC 3C0D8022 */  lui        $t5, 0x8022
/* 3C1B0 8003B5B0 35ADD528 */  ori        $t5, $t5, 0xd528
/* 3C1B4 8003B5B4 256CFFFC */  addiu      $t4, $t3, -4
/* 3C1B8 8003B5B8 A60C0090 */  sh         $t4, 0x90($s0)
/* 3C1BC 8003B5BC AE0D018C */  sw         $t5, 0x18c($s0)
/* 3C1C0 8003B5C0 E6040148 */  swc1       $f4, 0x148($s0)
.L8003B5C4:
/* 3C1C4 8003B5C4 8EB9015C */  lw         $t9, 0x15c($s5)
/* 3C1C8 8003B5C8 3C09800D */  lui        $t1, %hi(D_800D2714)
/* 3C1CC 8003B5CC 00194040 */  sll        $t0, $t9, 1
/* 3C1D0 8003B5D0 01284821 */  addu       $t1, $t1, $t0
/* 3C1D4 8003B5D4 2673FFFF */  addiu      $s3, $s3, -1
/* 3C1D8 8003B5D8 95292714 */  lhu        $t1, %lo(D_800D2714)($t1)
/* 3C1DC 8003B5DC 00137C00 */  sll        $t7, $s3, 0x10
/* 3C1E0 8003B5E0 2652FFFF */  addiu      $s2, $s2, -1
/* 3C1E4 8003B5E4 324EFFFF */  andi       $t6, $s2, 0xffff
/* 3C1E8 8003B5E8 000F9C03 */  sra        $s3, $t7, 0x10
/* 3C1EC 8003B5EC 01C09025 */  or         $s2, $t6, $zero
/* 3C1F0 8003B5F0 0661FF15 */  bgez       $s3, .L8003B248
/* 3C1F4 8003B5F4 02298821 */   addu      $s1, $s1, $t1
.L8003B5F8:
/* 3C1F8 8003B5F8 8FBF003C */  lw         $ra, 0x3c($sp)
.L8003B5FC:
/* 3C1FC 8003B5FC AEA00098 */  sw         $zero, 0x98($s5)
/* 3C200 8003B600 8FB50030 */  lw         $s5, 0x30($sp)
/* 3C204 8003B604 C7B50010 */  lwc1       $f21, 0x10($sp)
/* 3C208 8003B608 C7B40014 */  lwc1       $f20, 0x14($sp)
/* 3C20C 8003B60C 8FB0001C */  lw         $s0, 0x1c($sp)
/* 3C210 8003B610 8FB10020 */  lw         $s1, 0x20($sp)
/* 3C214 8003B614 8FB20024 */  lw         $s2, 0x24($sp)
/* 3C218 8003B618 8FB30028 */  lw         $s3, 0x28($sp)
/* 3C21C 8003B61C 8FB4002C */  lw         $s4, 0x2c($sp)
/* 3C220 8003B620 8FB60034 */  lw         $s6, 0x34($sp)
/* 3C224 8003B624 8FB70038 */  lw         $s7, 0x38($sp)
/* 3C228 8003B628 03E00008 */  jr         $ra
/* 3C22C 8003B62C 27BD0058 */   addiu     $sp, $sp, 0x58
