glabel func_800B8890
/* B9490 800B8890 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9494 800B8894 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9498 800B8898 AFA40048 */  sw         $a0, 0x48($sp)
/* B949C 800B889C AFA5004C */  sw         $a1, 0x4c($sp)
/* B94A0 800B88A0 AFA60050 */  sw         $a2, 0x50($sp)
/* B94A4 800B88A4 AFA70054 */  sw         $a3, 0x54($sp)
/* B94A8 800B88A8 8FAE0058 */  lw         $t6, 0x58($sp)
/* B94AC 800B88AC AFAE0044 */  sw         $t6, 0x44($sp)
/* B94B0 800B88B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* B94B4 800B88B4 8DF9001C */  lw         $t9, 0x1c($t7)
/* B94B8 800B88B8 8DF80014 */  lw         $t8, 0x14($t7)
/* B94BC 800B88BC 00194040 */  sll        $t0, $t9, 1
/* B94C0 800B88C0 03084821 */  addu       $t1, $t8, $t0
/* B94C4 800B88C4 AFA90034 */  sw         $t1, 0x34($sp)
/* B94C8 800B88C8 8FAA004C */  lw         $t2, 0x4c($sp)
/* B94CC 800B88CC 8FAB0034 */  lw         $t3, 0x34($sp)
/* B94D0 800B88D0 016A082B */  sltu       $at, $t3, $t2
/* B94D4 800B88D4 10200009 */  beqz       $at, .L800B88FC
/* B94D8 800B88D8 00000000 */   nop
/* B94DC 800B88DC 8FAC0034 */  lw         $t4, 0x34($sp)
/* B94E0 800B88E0 8FAD004C */  lw         $t5, 0x4c($sp)
/* B94E4 800B88E4 24040085 */  addiu      $a0, $zero, 0x85
/* B94E8 800B88E8 24050001 */  addiu      $a1, $zero, 1
/* B94EC 800B88EC 018D3023 */  subu       $a2, $t4, $t5
/* B94F0 800B88F0 00067043 */  sra        $t6, $a2, 1
/* B94F4 800B88F4 0C0297B4 */  jal        func_800A5ED0
/* B94F8 800B88F8 01C03025 */   or        $a2, $t6, $zero
.L800B88FC:
/* B94FC 800B88FC 8FB90048 */  lw         $t9, 0x48($sp)
/* B9500 800B8900 8FAF004C */  lw         $t7, 0x4c($sp)
/* B9504 800B8904 8F380014 */  lw         $t8, 0x14($t9)
/* B9508 800B8908 01F8082B */  sltu       $at, $t7, $t8
/* B950C 800B890C 10200007 */  beqz       $at, .L800B892C
/* B9510 800B8910 00000000 */   nop
/* B9514 800B8914 8FA90048 */  lw         $t1, 0x48($sp)
/* B9518 800B8918 8FA8004C */  lw         $t0, 0x4c($sp)
/* B951C 800B891C 8D2A001C */  lw         $t2, 0x1c($t1)
/* B9520 800B8920 000A5840 */  sll        $t3, $t2, 1
/* B9524 800B8924 010B6021 */  addu       $t4, $t0, $t3
/* B9528 800B8928 AFAC004C */  sw         $t4, 0x4c($sp)
.L800B892C:
/* B952C 800B892C 8FAD0054 */  lw         $t5, 0x54($sp)
/* B9530 800B8930 8FB9004C */  lw         $t9, 0x4c($sp)
/* B9534 800B8934 000D7040 */  sll        $t6, $t5, 1
/* B9538 800B8938 01D97821 */  addu       $t7, $t6, $t9
/* B953C 800B893C AFAF0038 */  sw         $t7, 0x38($sp)
/* B9540 800B8940 8FB80038 */  lw         $t8, 0x38($sp)
/* B9544 800B8944 8FA90034 */  lw         $t1, 0x34($sp)
/* B9548 800B8948 0138082B */  sltu       $at, $t1, $t8
/* B954C 800B894C 10200045 */  beqz       $at, .L800B8A64
/* B9550 800B8950 00000000 */   nop
/* B9554 800B8954 8FAA0038 */  lw         $t2, 0x38($sp)
/* B9558 800B8958 8FA80034 */  lw         $t0, 0x34($sp)
/* B955C 800B895C 01485823 */  subu       $t3, $t2, $t0
/* B9560 800B8960 000B6043 */  sra        $t4, $t3, 1
/* B9564 800B8964 AFAC0040 */  sw         $t4, 0x40($sp)
/* B9568 800B8968 8FAD0034 */  lw         $t5, 0x34($sp)
/* B956C 800B896C 8FAE004C */  lw         $t6, 0x4c($sp)
/* B9570 800B8970 01AEC823 */  subu       $t9, $t5, $t6
/* B9574 800B8974 00197843 */  sra        $t7, $t9, 1
/* B9578 800B8978 AFAF003C */  sw         $t7, 0x3c($sp)
/* B957C 800B897C 8FB80044 */  lw         $t8, 0x44($sp)
/* B9580 800B8980 27090008 */  addiu      $t1, $t8, 8
/* B9584 800B8984 AFA90044 */  sw         $t1, 0x44($sp)
/* B9588 800B8988 AFB80030 */  sw         $t8, 0x30($sp)
/* B958C 800B898C 8FAA0050 */  lw         $t2, 0x50($sp)
/* B9590 800B8990 8FAC0030 */  lw         $t4, 0x30($sp)
/* B9594 800B8994 3C010800 */  lui        $at, 0x800
/* B9598 800B8998 3148FFFF */  andi       $t0, $t2, 0xffff
/* B959C 800B899C 01015825 */  or         $t3, $t0, $at
/* B95A0 800B89A0 AD8B0000 */  sw         $t3, ($t4)
/* B95A4 800B89A4 8FAD003C */  lw         $t5, 0x3c($sp)
/* B95A8 800B89A8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B95AC 800B89AC 000D7040 */  sll        $t6, $t5, 1
/* B95B0 800B89B0 31D9FFFF */  andi       $t9, $t6, 0xffff
/* B95B4 800B89B4 ADF90004 */  sw         $t9, 4($t7)
/* B95B8 800B89B8 8FB80044 */  lw         $t8, 0x44($sp)
/* B95BC 800B89BC 27090008 */  addiu      $t1, $t8, 8
/* B95C0 800B89C0 AFA90044 */  sw         $t1, 0x44($sp)
/* B95C4 800B89C4 AFB8002C */  sw         $t8, 0x2c($sp)
/* B95C8 800B89C8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B95CC 800B89CC 3C0A0400 */  lui        $t2, 0x400
/* B95D0 800B89D0 AD0A0000 */  sw         $t2, ($t0)
/* B95D4 800B89D4 0C026964 */  jal        func_8009A590
/* B95D8 800B89D8 8FA4004C */   lw        $a0, 0x4c($sp)
/* B95DC 800B89DC 8FAB002C */  lw         $t3, 0x2c($sp)
/* B95E0 800B89E0 AD620004 */  sw         $v0, 4($t3)
/* B95E4 800B89E4 8FAC0044 */  lw         $t4, 0x44($sp)
/* B95E8 800B89E8 258D0008 */  addiu      $t5, $t4, 8
/* B95EC 800B89EC AFAD0044 */  sw         $t5, 0x44($sp)
/* B95F0 800B89F0 AFAC0028 */  sw         $t4, 0x28($sp)
/* B95F4 800B89F4 8FAE003C */  lw         $t6, 0x3c($sp)
/* B95F8 800B89F8 8FAF0050 */  lw         $t7, 0x50($sp)
/* B95FC 800B89FC 8FA80028 */  lw         $t0, 0x28($sp)
/* B9600 800B8A00 000EC840 */  sll        $t9, $t6, 1
/* B9604 800B8A04 032FC021 */  addu       $t8, $t9, $t7
/* B9608 800B8A08 3309FFFF */  andi       $t1, $t8, 0xffff
/* B960C 800B8A0C 3C010800 */  lui        $at, 0x800
/* B9610 800B8A10 01215025 */  or         $t2, $t1, $at
/* B9614 800B8A14 AD0A0000 */  sw         $t2, ($t0)
/* B9618 800B8A18 8FAB0040 */  lw         $t3, 0x40($sp)
/* B961C 800B8A1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9620 800B8A20 000B6040 */  sll        $t4, $t3, 1
/* B9624 800B8A24 318DFFFF */  andi       $t5, $t4, 0xffff
/* B9628 800B8A28 ADCD0004 */  sw         $t5, 4($t6)
/* B962C 800B8A2C 8FB90044 */  lw         $t9, 0x44($sp)
/* B9630 800B8A30 272F0008 */  addiu      $t7, $t9, 8
/* B9634 800B8A34 AFAF0044 */  sw         $t7, 0x44($sp)
/* B9638 800B8A38 AFB90024 */  sw         $t9, 0x24($sp)
/* B963C 800B8A3C 8FA90024 */  lw         $t1, 0x24($sp)
/* B9640 800B8A40 3C180400 */  lui        $t8, 0x400
/* B9644 800B8A44 AD380000 */  sw         $t8, ($t1)
/* B9648 800B8A48 8FAA0048 */  lw         $t2, 0x48($sp)
/* B964C 800B8A4C 0C026964 */  jal        func_8009A590
/* B9650 800B8A50 8D440014 */   lw        $a0, 0x14($t2)
/* B9654 800B8A54 8FA80024 */  lw         $t0, 0x24($sp)
/* B9658 800B8A58 AD020004 */  sw         $v0, 4($t0)
/* B965C 800B8A5C 1000001B */  b          .L800B8ACC
/* B9660 800B8A60 00000000 */   nop
.L800B8A64:
/* B9664 800B8A64 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9668 800B8A68 256C0008 */  addiu      $t4, $t3, 8
/* B966C 800B8A6C AFAC0044 */  sw         $t4, 0x44($sp)
/* B9670 800B8A70 AFAB0020 */  sw         $t3, 0x20($sp)
/* B9674 800B8A74 8FAD0050 */  lw         $t5, 0x50($sp)
/* B9678 800B8A78 8FAF0020 */  lw         $t7, 0x20($sp)
/* B967C 800B8A7C 3C010800 */  lui        $at, 0x800
/* B9680 800B8A80 31AEFFFF */  andi       $t6, $t5, 0xffff
/* B9684 800B8A84 01C1C825 */  or         $t9, $t6, $at
/* B9688 800B8A88 ADF90000 */  sw         $t9, ($t7)
/* B968C 800B8A8C 8FB80054 */  lw         $t8, 0x54($sp)
/* B9690 800B8A90 8FA80020 */  lw         $t0, 0x20($sp)
/* B9694 800B8A94 00184840 */  sll        $t1, $t8, 1
/* B9698 800B8A98 312AFFFF */  andi       $t2, $t1, 0xffff
/* B969C 800B8A9C AD0A0004 */  sw         $t2, 4($t0)
/* B96A0 800B8AA0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B96A4 800B8AA4 256C0008 */  addiu      $t4, $t3, 8
/* B96A8 800B8AA8 AFAC0044 */  sw         $t4, 0x44($sp)
/* B96AC 800B8AAC AFAB001C */  sw         $t3, 0x1c($sp)
/* B96B0 800B8AB0 8FAE001C */  lw         $t6, 0x1c($sp)
/* B96B4 800B8AB4 3C0D0400 */  lui        $t5, 0x400
/* B96B8 800B8AB8 ADCD0000 */  sw         $t5, ($t6)
/* B96BC 800B8ABC 0C026964 */  jal        func_8009A590
/* B96C0 800B8AC0 8FA4004C */   lw        $a0, 0x4c($sp)
/* B96C4 800B8AC4 8FB9001C */  lw         $t9, 0x1c($sp)
/* B96C8 800B8AC8 AF220004 */  sw         $v0, 4($t9)
.L800B8ACC:
/* B96CC 800B8ACC 8FAF0044 */  lw         $t7, 0x44($sp)
/* B96D0 800B8AD0 25F80008 */  addiu      $t8, $t7, 8
/* B96D4 800B8AD4 AFB80044 */  sw         $t8, 0x44($sp)
/* B96D8 800B8AD8 AFAF0018 */  sw         $t7, 0x18($sp)
/* B96DC 800B8ADC 8FAA0018 */  lw         $t2, 0x18($sp)
/* B96E0 800B8AE0 3C090800 */  lui        $t1, 0x800
/* B96E4 800B8AE4 AD490000 */  sw         $t1, ($t2)
/* B96E8 800B8AE8 8FA80054 */  lw         $t0, 0x54($sp)
/* B96EC 800B8AEC 8FAD0018 */  lw         $t5, 0x18($sp)
/* B96F0 800B8AF0 00085840 */  sll        $t3, $t0, 1
/* B96F4 800B8AF4 316CFFFF */  andi       $t4, $t3, 0xffff
/* B96F8 800B8AF8 ADAC0004 */  sw         $t4, 4($t5)
/* B96FC 800B8AFC 10000003 */  b          .L800B8B0C
/* B9700 800B8B00 8FA20044 */   lw        $v0, 0x44($sp)
/* B9704 800B8B04 10000001 */  b          .L800B8B0C
/* B9708 800B8B08 00000000 */   nop
.L800B8B0C:
/* B970C 800B8B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9710 800B8B10 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9714 800B8B14 03E00008 */  jr         $ra
/* B9718 800B8B18 00000000 */   nop
