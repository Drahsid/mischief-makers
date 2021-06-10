glabel func_8004AB3C
/* 4B73C 8004AB3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4B740 8004AB40 AFA40028 */  sw         $a0, 0x28($sp)
/* 4B744 8004AB44 97AE002A */  lhu        $t6, 0x2a($sp)
/* 4B748 8004AB48 3C18800F */  lui        $t8, 0x800f
/* 4B74C 8004AB4C 000E7880 */  sll        $t7, $t6, 2
/* 4B750 8004AB50 01EE7823 */  subu       $t7, $t7, $t6
/* 4B754 8004AB54 000F7880 */  sll        $t7, $t7, 2
/* 4B758 8004AB58 01EE7821 */  addu       $t7, $t7, $t6
/* 4B75C 8004AB5C 000F7880 */  sll        $t7, $t7, 2
/* 4B760 8004AB60 01EE7823 */  subu       $t7, $t7, $t6
/* 4B764 8004AB64 000F78C0 */  sll        $t7, $t7, 3
/* 4B768 8004AB68 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4B76C 8004AB6C 01F81821 */  addu       $v1, $t7, $t8
/* 4B770 8004AB70 AC60017C */  sw         $zero, 0x17c($v1)
/* 4B774 8004AB74 3C198013 */  lui        $t9, %hi(D_80137458)
/* 4B778 8004AB78 8F397458 */  lw         $t9, %lo(D_80137458)($t9)
/* 4B77C 8004AB7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B780 8004AB80 001943C0 */  sll        $t0, $t9, 0xf
/* 4B784 8004AB84 05010022 */  bgez       $t0, .L8004AC10
/* 4B788 8004AB88 24190007 */   addiu     $t9, $zero, 7
/* 4B78C 8004AB8C 8C690080 */  lw         $t1, 0x80($v1)
/* 4B790 8004AB90 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4B794 8004AB94 312A4040 */  andi       $t2, $t1, 0x4040
/* 4B798 8004AB98 1140000A */  beqz       $t2, .L8004ABC4
/* 4B79C 8004AB9C 00000000 */   nop
/* 4B7A0 8004ABA0 0C017506 */  jal        func_8005D418
/* 4B7A4 8004ABA4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 4B7A8 8004ABA8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B7AC 8004ABAC 10400005 */  beqz       $v0, .L8004ABC4
/* 4B7B0 8004ABB0 00000000 */   nop
/* 4B7B4 8004ABB4 8C6B0080 */  lw         $t3, 0x80($v1)
/* 4B7B8 8004ABB8 2401BFBF */  addiu      $at, $zero, -0x4041
/* 4B7BC 8004ABBC 01616024 */  and        $t4, $t3, $at
/* 4B7C0 8004ABC0 AC6C0080 */  sw         $t4, 0x80($v1)
.L8004ABC4:
/* 4B7C4 8004ABC4 8C620080 */  lw         $v0, 0x80($v1)
/* 4B7C8 8004ABC8 3C0E8013 */  lui        $t6, %hi(D_801373D8)
/* 4B7CC 8004ABCC 304D4040 */  andi       $t5, $v0, 0x4040
/* 4B7D0 8004ABD0 15A0000C */  bnez       $t5, .L8004AC04
/* 4B7D4 8004ABD4 24050044 */   addiu     $a1, $zero, 0x44
/* 4B7D8 8004ABD8 95CE73D8 */  lhu        $t6, %lo(D_801373D8)($t6)
/* 4B7DC 8004ABDC 38580020 */  xori       $t8, $v0, 0x20
/* 4B7E0 8004ABE0 31CF0080 */  andi       $t7, $t6, 0x80
/* 4B7E4 8004ABE4 11E00003 */  beqz       $t7, .L8004ABF4
/* 4B7E8 8004ABE8 97A4002A */   lhu       $a0, 0x2a($sp)
/* 4B7EC 8004ABEC AC780080 */  sw         $t8, 0x80($v1)
/* 4B7F0 8004ABF0 97A4002A */  lhu        $a0, 0x2a($sp)
.L8004ABF4:
/* 4B7F4 8004ABF4 0C0174DC */  jal        func_8005D370
/* 4B7F8 8004ABF8 AFA3001C */   sw        $v1, 0x1c($sp)
/* 4B7FC 8004ABFC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B800 8004AC00 00000000 */  nop
.L8004AC04:
/* 4B804 8004AC04 90670140 */  lbu        $a3, 0x140($v1)
/* 4B808 8004AC08 10000121 */  b          .L8004B090
/* 4B80C 8004AC0C A0670140 */   sb        $a3, 0x140($v1)
.L8004AC10:
/* 4B810 8004AC10 906200A0 */  lbu        $v0, 0xa0($v1)
/* 4B814 8004AC14 24010007 */  addiu      $at, $zero, 7
/* 4B818 8004AC18 30480007 */  andi       $t0, $v0, 7
/* 4B81C 8004AC1C A479012C */  sh         $t9, 0x12c($v1)
/* 4B820 8004AC20 15010028 */  bne        $t0, $at, .L8004ACC4
/* 4B824 8004AC24 24070001 */   addiu     $a3, $zero, 1
/* 4B828 8004AC28 30490010 */  andi       $t1, $v0, 0x10
/* 4B82C 8004AC2C 1520000A */  bnez       $t1, .L8004AC58
/* 4B830 8004AC30 240F6000 */   addiu     $t7, $zero, 0x6000
/* 4B834 8004AC34 8C6A0080 */  lw         $t2, 0x80($v1)
/* 4B838 8004AC38 24070005 */  addiu      $a3, $zero, 5
/* 4B83C 8004AC3C 314B0020 */  andi       $t3, $t2, 0x20
/* 4B840 8004AC40 15600003 */  bnez       $t3, .L8004AC50
/* 4B844 8004AC44 240CA000 */   addiu     $t4, $zero, -0x6000
/* 4B848 8004AC48 10000001 */  b          .L8004AC50
/* 4B84C 8004AC4C 24070004 */   addiu     $a3, $zero, 4
.L8004AC50:
/* 4B850 8004AC50 10000009 */  b          .L8004AC78
/* 4B854 8004AC54 AC6C00EC */   sw        $t4, 0xec($v1)
.L8004AC58:
/* 4B858 8004AC58 8C6D0080 */  lw         $t5, 0x80($v1)
/* 4B85C 8004AC5C 24070004 */  addiu      $a3, $zero, 4
/* 4B860 8004AC60 31AE0020 */  andi       $t6, $t5, 0x20
/* 4B864 8004AC64 15C00003 */  bnez       $t6, .L8004AC74
/* 4B868 8004AC68 00000000 */   nop
/* 4B86C 8004AC6C 10000001 */  b          .L8004AC74
/* 4B870 8004AC70 24070005 */   addiu     $a3, $zero, 5
.L8004AC74:
/* 4B874 8004AC74 AC6F00EC */  sw         $t7, 0xec($v1)
.L8004AC78:
/* 4B878 8004AC78 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4B87C 8004AC7C AFA3001C */  sw         $v1, 0x1c($sp)
/* 4B880 8004AC80 0C0174CE */  jal        func_8005D338
/* 4B884 8004AC84 A7A70026 */   sh        $a3, 0x26($sp)
/* 4B888 8004AC88 97A70026 */  lhu        $a3, 0x26($sp)
/* 4B88C 8004AC8C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B890 8004AC90 10E2000C */  beq        $a3, $v0, .L8004ACC4
/* 4B894 8004AC94 00000000 */   nop
/* 4B898 8004AC98 8C780080 */  lw         $t8, 0x80($v1)
/* 4B89C 8004AC9C 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4B8A0 8004ACA0 33194040 */  andi       $t9, $t8, 0x4040
/* 4B8A4 8004ACA4 17200007 */  bnez       $t9, .L8004ACC4
/* 4B8A8 8004ACA8 30E5FFFF */   andi      $a1, $a3, 0xffff
/* 4B8AC 8004ACAC AFA3001C */  sw         $v1, 0x1c($sp)
/* 4B8B0 8004ACB0 0C0174DC */  jal        func_8005D370
/* 4B8B4 8004ACB4 A7A70026 */   sh        $a3, 0x26($sp)
/* 4B8B8 8004ACB8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B8BC 8004ACBC 97A70026 */  lhu        $a3, 0x26($sp)
/* 4B8C0 8004ACC0 00000000 */  nop
.L8004ACC4:
/* 4B8C4 8004ACC4 8C6400EC */  lw         $a0, 0xec($v1)
/* 4B8C8 8004ACC8 3C088013 */  lui        $t0, %hi(D_801373D8)
/* 4B8CC 8004ACCC 10800020 */  beqz       $a0, .L8004AD50
/* 4B8D0 8004ACD0 00000000 */   nop
/* 4B8D4 8004ACD4 950873D8 */  lhu        $t0, %lo(D_801373D8)($t0)
/* 4B8D8 8004ACD8 00000000 */  nop
/* 4B8DC 8004ACDC 31090080 */  andi       $t1, $t0, 0x80
/* 4B8E0 8004ACE0 1120000F */  beqz       $t1, .L8004AD20
/* 4B8E4 8004ACE4 00000000 */   nop
/* 4B8E8 8004ACE8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 4B8EC 8004ACEC 0C0171B4 */  jal        func_8005C6D0
/* 4B8F0 8004ACF0 A7A70026 */   sh        $a3, 0x26($sp)
/* 4B8F4 8004ACF4 AFA20020 */  sw         $v0, 0x20($sp)
/* 4B8F8 8004ACF8 0C012325 */  jal        func_80048C94
/* 4B8FC 8004ACFC 24040001 */   addiu     $a0, $zero, 1
/* 4B900 8004AD00 8FAA0020 */  lw         $t2, 0x20($sp)
/* 4B904 8004AD04 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B908 8004AD08 97A70026 */  lhu        $a3, 0x26($sp)
/* 4B90C 8004AD0C 004A082A */  slt        $at, $v0, $t2
/* 4B910 8004AD10 10200003 */  beqz       $at, .L8004AD20
/* 4B914 8004AD14 240B0009 */   addiu     $t3, $zero, 9
/* 4B918 8004AD18 100000DD */  b          .L8004B090
/* 4B91C 8004AD1C A46B00D0 */   sh        $t3, 0xd0($v1)
.L8004AD20:
/* 4B920 8004AD20 00002025 */  or         $a0, $zero, $zero
/* 4B924 8004AD24 AFA3001C */  sw         $v1, 0x1c($sp)
/* 4B928 8004AD28 0C012325 */  jal        func_80048C94
/* 4B92C 8004AD2C A7A70026 */   sh        $a3, 0x26($sp)
/* 4B930 8004AD30 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B934 8004AD34 00002825 */  or         $a1, $zero, $zero
/* 4B938 8004AD38 8C6400EC */  lw         $a0, 0xec($v1)
/* 4B93C 8004AD3C 0C00A607 */  jal        func_8002981C
/* 4B940 8004AD40 00403025 */   or        $a2, $v0, $zero
/* 4B944 8004AD44 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4B948 8004AD48 97A70026 */  lhu        $a3, 0x26($sp)
/* 4B94C 8004AD4C AC6200EC */  sw         $v0, 0xec($v1)
.L8004AD50:
/* 4B950 8004AD50 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 4B954 8004AD54 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 4B958 8004AD58 240E0001 */  addiu      $t6, $zero, 1
/* 4B95C 8004AD5C 304C0020 */  andi       $t4, $v0, 0x20
/* 4B960 8004AD60 11800002 */  beqz       $t4, .L8004AD6C
/* 4B964 8004AD64 304D0010 */   andi      $t5, $v0, 0x10
/* 4B968 8004AD68 24070002 */  addiu      $a3, $zero, 2
.L8004AD6C:
/* 4B96C 8004AD6C 11A00003 */  beqz       $t5, .L8004AD7C
/* 4B970 8004AD70 3C088013 */   lui       $t0, 0x8013
/* 4B974 8004AD74 AC6E017C */  sw         $t6, 0x17c($v1)
/* 4B978 8004AD78 24070003 */  addiu      $a3, $zero, 3
.L8004AD7C:
/* 4B97C 8004AD7C 8C6F0150 */  lw         $t7, 0x150($v1)
/* 4B980 8004AD80 3C19800C */  lui        $t9, %hi(D_800BE5F4)
/* 4B984 8004AD84 25F80001 */  addiu      $t8, $t7, 1
/* 4B988 8004AD88 AC780150 */  sw         $t8, 0x150($v1)
/* 4B98C 8004AD8C 8F39E5F4 */  lw         $t9, %lo(D_800BE5F4)($t9)
/* 4B990 8004AD90 00000000 */  nop
/* 4B994 8004AD94 1720003A */  bnez       $t9, .L8004AE80
/* 4B998 8004AD98 00000000 */   nop
/* 4B99C 8004AD9C 8D087458 */  lw         $t0, 0x7458($t0)
/* 4B9A0 8004ADA0 3C0A800C */  lui        $t2, %hi(D_800BE504)
/* 4B9A4 8004ADA4 31090001 */  andi       $t1, $t0, 1
/* 4B9A8 8004ADA8 15200035 */  bnez       $t1, .L8004AE80
/* 4B9AC 8004ADAC 3C0B800C */   lui       $t3, %hi(D_800BE508)
/* 4B9B0 8004ADB0 954AE504 */  lhu        $t2, %lo(D_800BE504)($t2)
/* 4B9B4 8004ADB4 956BE508 */  lhu        $t3, %lo(D_800BE508)($t3)
/* 4B9B8 8004ADB8 3C0D800C */  lui        $t5, %hi(D_800BE50C)
/* 4B9BC 8004ADBC 95ADE50C */  lhu        $t5, %lo(D_800BE50C)($t5)
/* 4B9C0 8004ADC0 3C0F800C */  lui        $t7, %hi(D_800BE510)
/* 4B9C4 8004ADC4 95EFE510 */  lhu        $t7, %lo(D_800BE510)($t7)
/* 4B9C8 8004ADC8 3C19800C */  lui        $t9, %hi(D_800BE514)
/* 4B9CC 8004ADCC 014B6025 */  or         $t4, $t2, $t3
/* 4B9D0 8004ADD0 9739E514 */  lhu        $t9, %lo(D_800BE514)($t9)
/* 4B9D4 8004ADD4 3C09800C */  lui        $t1, %hi(D_800BE518)
/* 4B9D8 8004ADD8 018D7025 */  or         $t6, $t4, $t5
/* 4B9DC 8004ADDC 9529E518 */  lhu        $t1, %lo(D_800BE518)($t1)
/* 4B9E0 8004ADE0 3C0B800C */  lui        $t3, %hi(D_800BE51C)
/* 4B9E4 8004ADE4 01CFC025 */  or         $t8, $t6, $t7
/* 4B9E8 8004ADE8 956BE51C */  lhu        $t3, %lo(D_800BE51C)($t3)
/* 4B9EC 8004ADEC 3C0D800C */  lui        $t5, %hi(D_800BE520)
/* 4B9F0 8004ADF0 03194025 */  or         $t0, $t8, $t9
/* 4B9F4 8004ADF4 95ADE520 */  lhu        $t5, %lo(D_800BE520)($t5)
/* 4B9F8 8004ADF8 3C0F800C */  lui        $t7, %hi(D_800BE524)
/* 4B9FC 8004ADFC 01095025 */  or         $t2, $t0, $t1
/* 4BA00 8004AE00 95EFE524 */  lhu        $t7, %lo(D_800BE524)($t7)
/* 4BA04 8004AE04 3C19800C */  lui        $t9, %hi(D_800BE528)
/* 4BA08 8004AE08 014B6025 */  or         $t4, $t2, $t3
/* 4BA0C 8004AE0C 9739E528 */  lhu        $t9, %lo(D_800BE528)($t9)
/* 4BA10 8004AE10 3C09800C */  lui        $t1, %hi(D_800BE52C)
/* 4BA14 8004AE14 018D7025 */  or         $t6, $t4, $t5
/* 4BA18 8004AE18 9529E52C */  lhu        $t1, %lo(D_800BE52C)($t1)
/* 4BA1C 8004AE1C 3C0B800C */  lui        $t3, %hi(D_800BE530)
/* 4BA20 8004AE20 01CFC025 */  or         $t8, $t6, $t7
/* 4BA24 8004AE24 956BE530 */  lhu        $t3, %lo(D_800BE530)($t3)
/* 4BA28 8004AE28 3C0D800C */  lui        $t5, %hi(D_800BE534)
/* 4BA2C 8004AE2C 03194025 */  or         $t0, $t8, $t9
/* 4BA30 8004AE30 95ADE534 */  lhu        $t5, %lo(D_800BE534)($t5)
/* 4BA34 8004AE34 3C0F800C */  lui        $t7, %hi(D_800BE4F8)
/* 4BA38 8004AE38 01095025 */  or         $t2, $t0, $t1
/* 4BA3C 8004AE3C 95EFE4F8 */  lhu        $t7, %lo(D_800BE4F8)($t7)
/* 4BA40 8004AE40 014B6025 */  or         $t4, $t2, $t3
/* 4BA44 8004AE44 018D7025 */  or         $t6, $t4, $t5
/* 4BA48 8004AE48 01EEC024 */  and        $t8, $t7, $t6
/* 4BA4C 8004AE4C 1700000C */  bnez       $t8, .L8004AE80
/* 4BA50 8004AE50 00000000 */   nop
/* 4BA54 8004AE54 AFA3001C */  sw         $v1, 0x1c($sp)
/* 4BA58 8004AE58 0C0177BF */  jal        func_8005DEFC
/* 4BA5C 8004AE5C A7A70026 */   sh        $a3, 0x26($sp)
/* 4BA60 8004AE60 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BA64 8004AE64 97A70026 */  lhu        $a3, 0x26($sp)
/* 4BA68 8004AE68 14400005 */  bnez       $v0, .L8004AE80
/* 4BA6C 8004AE6C 00000000 */   nop
/* 4BA70 8004AE70 907900D0 */  lbu        $t9, 0xd0($v1)
/* 4BA74 8004AE74 00000000 */  nop
/* 4BA78 8004AE78 17200002 */  bnez       $t9, .L8004AE84
/* 4BA7C 8004AE7C 00000000 */   nop
.L8004AE80:
/* 4BA80 8004AE80 AC600150 */  sw         $zero, 0x150($v1)
.L8004AE84:
/* 4BA84 8004AE84 8C680150 */  lw         $t0, 0x150($v1)
/* 4BA88 8004AE88 00000000 */  nop
/* 4BA8C 8004AE8C 29010258 */  slti       $at, $t0, 0x258
/* 4BA90 8004AE90 1420000F */  bnez       $at, .L8004AED0
/* 4BA94 8004AE94 00000000 */   nop
/* 4BA98 8004AE98 846900AE */  lh         $t1, 0xae($v1)
/* 4BA9C 8004AE9C 846A008C */  lh         $t2, 0x8c($v1)
/* 4BAA0 8004AEA0 24070006 */  addiu      $a3, $zero, 6
/* 4BAA4 8004AEA4 012A2821 */  addu       $a1, $t1, $t2
/* 4BAA8 8004AEA8 00055C00 */  sll        $t3, $a1, 0x10
/* 4BAAC 8004AEAC 84640088 */  lh         $a0, 0x88($v1)
/* 4BAB0 8004AEB0 84660090 */  lh         $a2, 0x90($v1)
/* 4BAB4 8004AEB4 000B2C03 */  sra        $a1, $t3, 0x10
/* 4BAB8 8004AEB8 A7A70026 */  sh         $a3, 0x26($sp)
/* 4BABC 8004AEBC 0C00CE52 */  jal        func_80033948
/* 4BAC0 8004AEC0 AFA3001C */   sw        $v1, 0x1c($sp)
/* 4BAC4 8004AEC4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BAC8 8004AEC8 97A70026 */  lhu        $a3, 0x26($sp)
/* 4BACC 8004AECC 00000000 */  nop
.L8004AED0:
/* 4BAD0 8004AED0 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 4BAD4 8004AED4 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 4BAD8 8004AED8 240F0017 */  addiu      $t7, $zero, 0x17
/* 4BADC 8004AEDC 304D0080 */  andi       $t5, $v0, 0x80
/* 4BAE0 8004AEE0 11A00014 */  beqz       $t5, .L8004AF34
/* 4BAE4 8004AEE4 30590002 */   andi      $t9, $v0, 2
/* 4BAE8 8004AEE8 8C6E0080 */  lw         $t6, 0x80($v1)
/* 4BAEC 8004AEEC AC6F0170 */  sw         $t7, 0x170($v1)
/* 4BAF0 8004AEF0 39D80020 */  xori       $t8, $t6, 0x20
/* 4BAF4 8004AEF4 13200004 */  beqz       $t9, .L8004AF08
/* 4BAF8 8004AEF8 AC780080 */   sw        $t8, 0x80($v1)
/* 4BAFC 8004AEFC 2401FFDF */  addiu      $at, $zero, -0x21
/* 4BB00 8004AF00 03014824 */  and        $t1, $t8, $at
/* 4BB04 8004AF04 AC690080 */  sw         $t1, 0x80($v1)
.L8004AF08:
/* 4BB08 8004AF08 304A0001 */  andi       $t2, $v0, 1
/* 4BB0C 8004AF0C 11400005 */  beqz       $t2, .L8004AF24
/* 4BB10 8004AF10 00000000 */   nop
/* 4BB14 8004AF14 8C6B0080 */  lw         $t3, 0x80($v1)
/* 4BB18 8004AF18 00000000 */  nop
/* 4BB1C 8004AF1C 356C0020 */  ori        $t4, $t3, 0x20
/* 4BB20 8004AF20 AC6C0080 */  sw         $t4, 0x80($v1)
.L8004AF24:
/* 4BB24 8004AF24 8C6D0080 */  lw         $t5, 0x80($v1)
/* 4BB28 8004AF28 00000000 */  nop
/* 4BB2C 8004AF2C 35AF4000 */  ori        $t7, $t5, 0x4000
/* 4BB30 8004AF30 AC6F0080 */  sw         $t7, 0x80($v1)
.L8004AF34:
/* 4BB34 8004AF34 8C6E0098 */  lw         $t6, 0x98($v1)
/* 4BB38 8004AF38 00E03025 */  or         $a2, $a3, $zero
/* 4BB3C 8004AF3C 31D80080 */  andi       $t8, $t6, 0x80
/* 4BB40 8004AF40 13000022 */  beqz       $t8, .L8004AFCC
/* 4BB44 8004AF44 00000000 */   nop
/* 4BB48 8004AF48 907900D0 */  lbu        $t9, 0xd0($v1)
/* 4BB4C 8004AF4C 30440001 */  andi       $a0, $v0, 1
/* 4BB50 8004AF50 1320001E */  beqz       $t9, .L8004AFCC
/* 4BB54 8004AF54 30480002 */   andi      $t0, $v0, 2
/* 4BB58 8004AF58 11000005 */  beqz       $t0, .L8004AF70
/* 4BB5C 8004AF5C 24070016 */   addiu     $a3, $zero, 0x16
/* 4BB60 8004AF60 8C690088 */  lw         $t1, 0x88($v1)
/* 4BB64 8004AF64 34018000 */  ori        $at, $zero, 0x8000
/* 4BB68 8004AF68 01215021 */  addu       $t2, $t1, $at
/* 4BB6C 8004AF6C AC6A0088 */  sw         $t2, 0x88($v1)
.L8004AF70:
/* 4BB70 8004AF70 10800005 */  beqz       $a0, .L8004AF88
/* 4BB74 8004AF74 24190006 */   addiu     $t9, $zero, 6
/* 4BB78 8004AF78 8C6B0088 */  lw         $t3, 0x88($v1)
/* 4BB7C 8004AF7C 24018000 */  addiu      $at, $zero, -0x8000
/* 4BB80 8004AF80 01616021 */  addu       $t4, $t3, $at
/* 4BB84 8004AF84 AC6C0088 */  sw         $t4, 0x88($v1)
.L8004AF88:
/* 4BB88 8004AF88 8C6D0154 */  lw         $t5, 0x154($v1)
/* 4BB8C 8004AF8C 24080005 */  addiu      $t0, $zero, 5
/* 4BB90 8004AF90 25AF0001 */  addiu      $t7, $t5, 1
/* 4BB94 8004AF94 29E10097 */  slti       $at, $t7, 0x97
/* 4BB98 8004AF98 1420000A */  bnez       $at, .L8004AFC4
/* 4BB9C 8004AF9C AC6F0154 */   sw        $t7, 0x154($v1)
/* 4BBA0 8004AFA0 8C780080 */  lw         $t8, 0x80($v1)
/* 4BBA4 8004AFA4 24090001 */  addiu      $t1, $zero, 1
/* 4BBA8 8004AFA8 A06800D0 */  sb         $t0, 0xd0($v1)
/* 4BBAC 8004AFAC A06900D1 */  sb         $t1, 0xd1($v1)
/* 4BBB0 8004AFB0 240A0003 */  addiu      $t2, $zero, 3
/* 4BBB4 8004AFB4 AC790170 */  sw         $t9, 0x170($v1)
/* 4BBB8 8004AFB8 A46A00D0 */  sh         $t2, 0xd0($v1)
/* 4BBBC 8004AFBC 10000034 */  b          .L8004B090
/* 4BBC0 8004AFC0 AC780150 */   sw        $t8, 0x150($v1)
.L8004AFC4:
/* 4BBC4 8004AFC4 10000002 */  b          .L8004AFD0
/* 4BBC8 8004AFC8 00E03025 */   or        $a2, $a3, $zero
.L8004AFCC:
/* 4BBCC 8004AFCC AC600154 */  sw         $zero, 0x154($v1)
.L8004AFD0:
/* 4BBD0 8004AFD0 240B0001 */  addiu      $t3, $zero, 1
/* 4BBD4 8004AFD4 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4BBD8 8004AFD8 A06B00D0 */  sb         $t3, 0xd0($v1)
/* 4BBDC 8004AFDC AFA3001C */  sw         $v1, 0x1c($sp)
/* 4BBE0 8004AFE0 AFA60018 */  sw         $a2, 0x18($sp)
/* 4BBE4 8004AFE4 0C0174CE */  jal        func_8005D338
/* 4BBE8 8004AFE8 A7A70026 */   sh        $a3, 0x26($sp)
/* 4BBEC 8004AFEC 8FA60018 */  lw         $a2, 0x18($sp)
/* 4BBF0 8004AFF0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BBF4 8004AFF4 97A70026 */  lhu        $a3, 0x26($sp)
/* 4BBF8 8004AFF8 10C20026 */  beq        $a2, $v0, .L8004B094
/* 4BBFC 8004AFFC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BC00 8004B000 8C6C0080 */  lw         $t4, 0x80($v1)
/* 4BC04 8004B004 00002025 */  or         $a0, $zero, $zero
/* 4BC08 8004B008 318D4040 */  andi       $t5, $t4, 0x4040
/* 4BC0C 8004B00C 11A00014 */  beqz       $t5, .L8004B060
/* 4BC10 8004B010 00000000 */   nop
/* 4BC14 8004B014 0C012325 */  jal        func_80048C94
/* 4BC18 8004B018 AFA3001C */   sw        $v1, 0x1c($sp)
/* 4BC1C 8004B01C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BC20 8004B020 00002825 */  or         $a1, $zero, $zero
/* 4BC24 8004B024 8C6400EC */  lw         $a0, 0xec($v1)
/* 4BC28 8004B028 0C00A607 */  jal        func_8002981C
/* 4BC2C 8004B02C 00403025 */   or        $a2, $v0, $zero
/* 4BC30 8004B030 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BC34 8004B034 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4BC38 8004B038 0C017506 */  jal        func_8005D418
/* 4BC3C 8004B03C AC6200EC */   sw        $v0, 0xec($v1)
/* 4BC40 8004B040 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4BC44 8004B044 10400013 */  beqz       $v0, .L8004B094
/* 4BC48 8004B048 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BC4C 8004B04C 8C6F0080 */  lw         $t7, 0x80($v1)
/* 4BC50 8004B050 2401BFBF */  addiu      $at, $zero, -0x4041
/* 4BC54 8004B054 01E17024 */  and        $t6, $t7, $at
/* 4BC58 8004B058 1000000D */  b          .L8004B090
/* 4BC5C 8004B05C AC6E0080 */   sw        $t6, 0x80($v1)
.L8004B060:
/* 4BC60 8004B060 8C7800EC */  lw         $t8, 0xec($v1)
/* 4BC64 8004B064 97A4002A */  lhu        $a0, 0x2a($sp)
/* 4BC68 8004B068 17000009 */  bnez       $t8, .L8004B090
/* 4BC6C 8004B06C 30E5FFFF */   andi      $a1, $a3, 0xffff
/* 4BC70 8004B070 0C0174DC */  jal        func_8005D370
/* 4BC74 8004B074 AFA60018 */   sw        $a2, 0x18($sp)
/* 4BC78 8004B078 8FA60018 */  lw         $a2, 0x18($sp)
/* 4BC7C 8004B07C 24010006 */  addiu      $at, $zero, 6
/* 4BC80 8004B080 14C10004 */  bne        $a2, $at, .L8004B094
/* 4BC84 8004B084 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BC88 8004B088 0C000CD3 */  jal        func_8000334C
/* 4BC8C 8004B08C 240400D1 */   addiu     $a0, $zero, 0xd1
.L8004B090:
/* 4BC90 8004B090 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004B094:
/* 4BC94 8004B094 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4BC98 8004B098 03E00008 */  jr         $ra
/* 4BC9C 8004B09C 00000000 */   nop
