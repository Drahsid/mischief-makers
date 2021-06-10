glabel func_800B9A08
/* BA608 800B9A08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA60C 800B9A0C AFBF001C */  sw         $ra, 0x1c($sp)
/* BA610 800B9A10 AFA40030 */  sw         $a0, 0x30($sp)
/* BA614 800B9A14 AFA50034 */  sw         $a1, 0x34($sp)
/* BA618 800B9A18 AFA60038 */  sw         $a2, 0x38($sp)
/* BA61C 800B9A1C AFA7003C */  sw         $a3, 0x3c($sp)
/* BA620 800B9A20 AFB00018 */  sw         $s0, 0x18($sp)
/* BA624 800B9A24 240E002E */  addiu      $t6, $zero, 0x2e
/* BA628 800B9A28 A3AE002F */  sb         $t6, 0x2f($sp)
/* BA62C 800B9A2C 87AF003E */  lh         $t7, 0x3e($sp)
/* BA630 800B9A30 1DE00006 */  bgtz       $t7, .L800B9A4C
/* BA634 800B9A34 00000000 */   nop
/* BA638 800B9A38 3C19800F */  lui        $t9, %hi(D_800EEA00)
/* BA63C 800B9A3C 2739EA00 */  addiu      $t9, $t9, %lo(D_800EEA00)
/* BA640 800B9A40 24180001 */  addiu      $t8, $zero, 1
/* BA644 800B9A44 A7B8003E */  sh         $t8, 0x3e($sp)
/* BA648 800B9A48 AFB90038 */  sw         $t9, 0x38($sp)
.L800B9A4C:
/* BA64C 800B9A4C 93A80037 */  lbu        $t0, 0x37($sp)
/* BA650 800B9A50 24010066 */  addiu      $at, $zero, 0x66
/* BA654 800B9A54 11010010 */  beq        $t0, $at, .L800B9A98
/* BA658 800B9A58 00000000 */   nop
/* BA65C 800B9A5C 24010067 */  addiu      $at, $zero, 0x67
/* BA660 800B9A60 11010004 */  beq        $t0, $at, .L800B9A74
/* BA664 800B9A64 00000000 */   nop
/* BA668 800B9A68 24010047 */  addiu      $at, $zero, 0x47
/* BA66C 800B9A6C 150100E0 */  bne        $t0, $at, .L800B9DF0
/* BA670 800B9A70 00000000 */   nop
.L800B9A74:
/* BA674 800B9A74 87A90042 */  lh         $t1, 0x42($sp)
/* BA678 800B9A78 2921FFFC */  slti       $at, $t1, -4
/* BA67C 800B9A7C 142000DC */  bnez       $at, .L800B9DF0
/* BA680 800B9A80 00000000 */   nop
/* BA684 800B9A84 8FAA0030 */  lw         $t2, 0x30($sp)
/* BA688 800B9A88 8D4B0024 */  lw         $t3, 0x24($t2)
/* BA68C 800B9A8C 012B082A */  slt        $at, $t1, $t3
/* BA690 800B9A90 102000D7 */  beqz       $at, .L800B9DF0
/* BA694 800B9A94 00000000 */   nop
.L800B9A98:
/* BA698 800B9A98 87AC0042 */  lh         $t4, 0x42($sp)
/* BA69C 800B9A9C 258D0001 */  addiu      $t5, $t4, 1
/* BA6A0 800B9AA0 A7AD0042 */  sh         $t5, 0x42($sp)
/* BA6A4 800B9AA4 93AE0037 */  lbu        $t6, 0x37($sp)
/* BA6A8 800B9AA8 24010066 */  addiu      $at, $zero, 0x66
/* BA6AC 800B9AAC 11C10019 */  beq        $t6, $at, .L800B9B14
/* BA6B0 800B9AB0 00000000 */   nop
/* BA6B4 800B9AB4 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA6B8 800B9AB8 8DF80030 */  lw         $t8, 0x30($t7)
/* BA6BC 800B9ABC 33190008 */  andi       $t9, $t8, 8
/* BA6C0 800B9AC0 17200009 */  bnez       $t9, .L800B9AE8
/* BA6C4 800B9AC4 00000000 */   nop
/* BA6C8 800B9AC8 87A8003E */  lh         $t0, 0x3e($sp)
/* BA6CC 800B9ACC 8DEA0024 */  lw         $t2, 0x24($t7)
/* BA6D0 800B9AD0 010A082A */  slt        $at, $t0, $t2
/* BA6D4 800B9AD4 10200004 */  beqz       $at, .L800B9AE8
/* BA6D8 800B9AD8 00000000 */   nop
/* BA6DC 800B9ADC 87A9003E */  lh         $t1, 0x3e($sp)
/* BA6E0 800B9AE0 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA6E4 800B9AE4 AD690024 */  sw         $t1, 0x24($t3)
.L800B9AE8:
/* BA6E8 800B9AE8 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA6EC 800B9AEC 87AE0042 */  lh         $t6, 0x42($sp)
/* BA6F0 800B9AF0 8D8D0024 */  lw         $t5, 0x24($t4)
/* BA6F4 800B9AF4 01AEC023 */  subu       $t8, $t5, $t6
/* BA6F8 800B9AF8 AD980024 */  sw         $t8, 0x24($t4)
/* BA6FC 800B9AFC 8FB90030 */  lw         $t9, 0x30($sp)
/* BA700 800B9B00 8F2F0024 */  lw         $t7, 0x24($t9)
/* BA704 800B9B04 05E10003 */  bgez       $t7, .L800B9B14
/* BA708 800B9B08 00000000 */   nop
/* BA70C 800B9B0C 8FA80030 */  lw         $t0, 0x30($sp)
/* BA710 800B9B10 AD000024 */  sw         $zero, 0x24($t0)
.L800B9B14:
/* BA714 800B9B14 87AA0042 */  lh         $t2, 0x42($sp)
/* BA718 800B9B18 1D400049 */  bgtz       $t2, .L800B9C40
/* BA71C 800B9B1C 00000000 */   nop
/* BA720 800B9B20 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA724 800B9B24 24090030 */  addiu      $t1, $zero, 0x30
/* BA728 800B9B28 8D6D0008 */  lw         $t5, 8($t3)
/* BA72C 800B9B2C 8D6E0014 */  lw         $t6, 0x14($t3)
/* BA730 800B9B30 01AEC021 */  addu       $t8, $t5, $t6
/* BA734 800B9B34 A3090000 */  sb         $t1, ($t8)
/* BA738 800B9B38 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA73C 800B9B3C 8D990014 */  lw         $t9, 0x14($t4)
/* BA740 800B9B40 272F0001 */  addiu      $t7, $t9, 1
/* BA744 800B9B44 AD8F0014 */  sw         $t7, 0x14($t4)
/* BA748 800B9B48 8FA80030 */  lw         $t0, 0x30($sp)
/* BA74C 800B9B4C 8D0A0024 */  lw         $t2, 0x24($t0)
/* BA750 800B9B50 1D400005 */  bgtz       $t2, .L800B9B68
/* BA754 800B9B54 00000000 */   nop
/* BA758 800B9B58 8D0B0030 */  lw         $t3, 0x30($t0)
/* BA75C 800B9B5C 316D0008 */  andi       $t5, $t3, 8
/* BA760 800B9B60 11A0000B */  beqz       $t5, .L800B9B90
/* BA764 800B9B64 00000000 */   nop
.L800B9B68:
/* BA768 800B9B68 8FA90030 */  lw         $t1, 0x30($sp)
/* BA76C 800B9B6C 93AE002F */  lbu        $t6, 0x2f($sp)
/* BA770 800B9B70 8D380008 */  lw         $t8, 8($t1)
/* BA774 800B9B74 8D390014 */  lw         $t9, 0x14($t1)
/* BA778 800B9B78 03197821 */  addu       $t7, $t8, $t9
/* BA77C 800B9B7C A1EE0000 */  sb         $t6, ($t7)
/* BA780 800B9B80 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA784 800B9B84 8D8A0014 */  lw         $t2, 0x14($t4)
/* BA788 800B9B88 25480001 */  addiu      $t0, $t2, 1
/* BA78C 800B9B8C AD880014 */  sw         $t0, 0x14($t4)
.L800B9B90:
/* BA790 800B9B90 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA794 800B9B94 87A90042 */  lh         $t1, 0x42($sp)
/* BA798 800B9B98 8D6D0024 */  lw         $t5, 0x24($t3)
/* BA79C 800B9B9C 0009C023 */  negu       $t8, $t1
/* BA7A0 800B9BA0 01B8082A */  slt        $at, $t5, $t8
/* BA7A4 800B9BA4 10200005 */  beqz       $at, .L800B9BBC
/* BA7A8 800B9BA8 00000000 */   nop
/* BA7AC 800B9BAC 8FB90030 */  lw         $t9, 0x30($sp)
/* BA7B0 800B9BB0 8F2E0024 */  lw         $t6, 0x24($t9)
/* BA7B4 800B9BB4 000E7823 */  negu       $t7, $t6
/* BA7B8 800B9BB8 A7AF0042 */  sh         $t7, 0x42($sp)
.L800B9BBC:
/* BA7BC 800B9BBC 87AA0042 */  lh         $t2, 0x42($sp)
/* BA7C0 800B9BC0 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA7C4 800B9BC4 000A4023 */  negu       $t0, $t2
/* BA7C8 800B9BC8 AD880018 */  sw         $t0, 0x18($t4)
/* BA7CC 800B9BCC 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA7D0 800B9BD0 87AD0042 */  lh         $t5, 0x42($sp)
/* BA7D4 800B9BD4 8D690024 */  lw         $t1, 0x24($t3)
/* BA7D8 800B9BD8 012DC021 */  addu       $t8, $t1, $t5
/* BA7DC 800B9BDC AD780024 */  sw         $t8, 0x24($t3)
/* BA7E0 800B9BE0 8FB90030 */  lw         $t9, 0x30($sp)
/* BA7E4 800B9BE4 87AF003E */  lh         $t7, 0x3e($sp)
/* BA7E8 800B9BE8 8F2E0024 */  lw         $t6, 0x24($t9)
/* BA7EC 800B9BEC 01CF082A */  slt        $at, $t6, $t7
/* BA7F0 800B9BF0 10200004 */  beqz       $at, .L800B9C04
/* BA7F4 800B9BF4 00000000 */   nop
/* BA7F8 800B9BF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* BA7FC 800B9BFC 8D480024 */  lw         $t0, 0x24($t2)
/* BA800 800B9C00 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B9C04:
/* BA804 800B9C04 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA808 800B9C08 87B0003E */  lh         $s0, 0x3e($sp)
/* BA80C 800B9C0C 8FA50038 */  lw         $a1, 0x38($sp)
/* BA810 800B9C10 8D890008 */  lw         $t1, 8($t4)
/* BA814 800B9C14 8D8D0014 */  lw         $t5, 0x14($t4)
/* BA818 800B9C18 AD90001C */  sw         $s0, 0x1c($t4)
/* BA81C 800B9C1C 02003025 */  or         $a2, $s0, $zero
/* BA820 800B9C20 0C029735 */  jal        func_800A5CD4
/* BA824 800B9C24 012D2021 */   addu      $a0, $t1, $t5
/* BA828 800B9C28 8FB80030 */  lw         $t8, 0x30($sp)
/* BA82C 800B9C2C 87B9003E */  lh         $t9, 0x3e($sp)
/* BA830 800B9C30 8F0B0024 */  lw         $t3, 0x24($t8)
/* BA834 800B9C34 01797023 */  subu       $t6, $t3, $t9
/* BA838 800B9C38 1000006B */  b          .L800B9DE8
/* BA83C 800B9C3C AF0E0020 */   sw        $t6, 0x20($t8)
.L800B9C40:
/* BA840 800B9C40 87AF003E */  lh         $t7, 0x3e($sp)
/* BA844 800B9C44 87AA0042 */  lh         $t2, 0x42($sp)
/* BA848 800B9C48 01EA082A */  slt        $at, $t7, $t2
/* BA84C 800B9C4C 10200028 */  beqz       $at, .L800B9CF0
/* BA850 800B9C50 00000000 */   nop
/* BA854 800B9C54 8FA80030 */  lw         $t0, 0x30($sp)
/* BA858 800B9C58 8FA50038 */  lw         $a1, 0x38($sp)
/* BA85C 800B9C5C 87A6003E */  lh         $a2, 0x3e($sp)
/* BA860 800B9C60 8D090008 */  lw         $t1, 8($t0)
/* BA864 800B9C64 8D0D0014 */  lw         $t5, 0x14($t0)
/* BA868 800B9C68 0C029735 */  jal        func_800A5CD4
/* BA86C 800B9C6C 012D2021 */   addu      $a0, $t1, $t5
/* BA870 800B9C70 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA874 800B9C74 87B9003E */  lh         $t9, 0x3e($sp)
/* BA878 800B9C78 8D8B0014 */  lw         $t3, 0x14($t4)
/* BA87C 800B9C7C 01797021 */  addu       $t6, $t3, $t9
/* BA880 800B9C80 AD8E0014 */  sw         $t6, 0x14($t4)
/* BA884 800B9C84 87B80042 */  lh         $t8, 0x42($sp)
/* BA888 800B9C88 87AF003E */  lh         $t7, 0x3e($sp)
/* BA88C 800B9C8C 8FA80030 */  lw         $t0, 0x30($sp)
/* BA890 800B9C90 030F5023 */  subu       $t2, $t8, $t7
/* BA894 800B9C94 AD0A0018 */  sw         $t2, 0x18($t0)
/* BA898 800B9C98 8FA90030 */  lw         $t1, 0x30($sp)
/* BA89C 800B9C9C 8D2D0024 */  lw         $t5, 0x24($t1)
/* BA8A0 800B9CA0 1DA00005 */  bgtz       $t5, .L800B9CB8
/* BA8A4 800B9CA4 00000000 */   nop
/* BA8A8 800B9CA8 8D2B0030 */  lw         $t3, 0x30($t1)
/* BA8AC 800B9CAC 31790008 */  andi       $t9, $t3, 8
/* BA8B0 800B9CB0 1320000B */  beqz       $t9, .L800B9CE0
/* BA8B4 800B9CB4 00000000 */   nop
.L800B9CB8:
/* BA8B8 800B9CB8 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA8BC 800B9CBC 93AE002F */  lbu        $t6, 0x2f($sp)
/* BA8C0 800B9CC0 8D980008 */  lw         $t8, 8($t4)
/* BA8C4 800B9CC4 8D8F0014 */  lw         $t7, 0x14($t4)
/* BA8C8 800B9CC8 030F5021 */  addu       $t2, $t8, $t7
/* BA8CC 800B9CCC A14E0000 */  sb         $t6, ($t2)
/* BA8D0 800B9CD0 8FA80030 */  lw         $t0, 0x30($sp)
/* BA8D4 800B9CD4 8D0D001C */  lw         $t5, 0x1c($t0)
/* BA8D8 800B9CD8 25A90001 */  addiu      $t1, $t5, 1
/* BA8DC 800B9CDC AD09001C */  sw         $t1, 0x1c($t0)
.L800B9CE0:
/* BA8E0 800B9CE0 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA8E4 800B9CE4 8D790024 */  lw         $t9, 0x24($t3)
/* BA8E8 800B9CE8 1000003F */  b          .L800B9DE8
/* BA8EC 800B9CEC AD790020 */   sw        $t9, 0x20($t3)
.L800B9CF0:
/* BA8F0 800B9CF0 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA8F4 800B9CF4 8FA50038 */  lw         $a1, 0x38($sp)
/* BA8F8 800B9CF8 87A60042 */  lh         $a2, 0x42($sp)
/* BA8FC 800B9CFC 8D980008 */  lw         $t8, 8($t4)
/* BA900 800B9D00 8D8F0014 */  lw         $t7, 0x14($t4)
/* BA904 800B9D04 0C029735 */  jal        func_800A5CD4
/* BA908 800B9D08 030F2021 */   addu      $a0, $t8, $t7
/* BA90C 800B9D0C 8FAE0030 */  lw         $t6, 0x30($sp)
/* BA910 800B9D10 87AD0042 */  lh         $t5, 0x42($sp)
/* BA914 800B9D14 8DCA0014 */  lw         $t2, 0x14($t6)
/* BA918 800B9D18 014D4821 */  addu       $t1, $t2, $t5
/* BA91C 800B9D1C ADC90014 */  sw         $t1, 0x14($t6)
/* BA920 800B9D20 87A8003E */  lh         $t0, 0x3e($sp)
/* BA924 800B9D24 87B90042 */  lh         $t9, 0x42($sp)
/* BA928 800B9D28 01195823 */  subu       $t3, $t0, $t9
/* BA92C 800B9D2C A7AB003E */  sh         $t3, 0x3e($sp)
/* BA930 800B9D30 8FAC0030 */  lw         $t4, 0x30($sp)
/* BA934 800B9D34 8D980024 */  lw         $t8, 0x24($t4)
/* BA938 800B9D38 1F000005 */  bgtz       $t8, .L800B9D50
/* BA93C 800B9D3C 00000000 */   nop
/* BA940 800B9D40 8D8F0030 */  lw         $t7, 0x30($t4)
/* BA944 800B9D44 31EA0008 */  andi       $t2, $t7, 8
/* BA948 800B9D48 1140000B */  beqz       $t2, .L800B9D78
/* BA94C 800B9D4C 00000000 */   nop
.L800B9D50:
/* BA950 800B9D50 8FA90030 */  lw         $t1, 0x30($sp)
/* BA954 800B9D54 93AD002F */  lbu        $t5, 0x2f($sp)
/* BA958 800B9D58 8D2E0008 */  lw         $t6, 8($t1)
/* BA95C 800B9D5C 8D280014 */  lw         $t0, 0x14($t1)
/* BA960 800B9D60 01C8C821 */  addu       $t9, $t6, $t0
/* BA964 800B9D64 A32D0000 */  sb         $t5, ($t9)
/* BA968 800B9D68 8FAB0030 */  lw         $t3, 0x30($sp)
/* BA96C 800B9D6C 8D780014 */  lw         $t8, 0x14($t3)
/* BA970 800B9D70 270C0001 */  addiu      $t4, $t8, 1
/* BA974 800B9D74 AD6C0014 */  sw         $t4, 0x14($t3)
.L800B9D78:
/* BA978 800B9D78 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA97C 800B9D7C 87A9003E */  lh         $t1, 0x3e($sp)
/* BA980 800B9D80 8DEA0024 */  lw         $t2, 0x24($t7)
/* BA984 800B9D84 0149082A */  slt        $at, $t2, $t1
/* BA988 800B9D88 10200004 */  beqz       $at, .L800B9D9C
/* BA98C 800B9D8C 00000000 */   nop
/* BA990 800B9D90 8FAE0030 */  lw         $t6, 0x30($sp)
/* BA994 800B9D94 8DC80024 */  lw         $t0, 0x24($t6)
/* BA998 800B9D98 A7A8003E */  sh         $t0, 0x3e($sp)
.L800B9D9C:
/* BA99C 800B9D9C 8FAD0030 */  lw         $t5, 0x30($sp)
/* BA9A0 800B9DA0 87AC0042 */  lh         $t4, 0x42($sp)
/* BA9A4 800B9DA4 8FAB0038 */  lw         $t3, 0x38($sp)
/* BA9A8 800B9DA8 8DB90008 */  lw         $t9, 8($t5)
/* BA9AC 800B9DAC 8DB80014 */  lw         $t8, 0x14($t5)
/* BA9B0 800B9DB0 87A6003E */  lh         $a2, 0x3e($sp)
/* BA9B4 800B9DB4 018B2821 */  addu       $a1, $t4, $t3
/* BA9B8 800B9DB8 0C029735 */  jal        func_800A5CD4
/* BA9BC 800B9DBC 03382021 */   addu      $a0, $t9, $t8
/* BA9C0 800B9DC0 8FAF0030 */  lw         $t7, 0x30($sp)
/* BA9C4 800B9DC4 87A9003E */  lh         $t1, 0x3e($sp)
/* BA9C8 800B9DC8 8DEA0014 */  lw         $t2, 0x14($t7)
/* BA9CC 800B9DCC 01497021 */  addu       $t6, $t2, $t1
/* BA9D0 800B9DD0 ADEE0014 */  sw         $t6, 0x14($t7)
/* BA9D4 800B9DD4 8FA80030 */  lw         $t0, 0x30($sp)
/* BA9D8 800B9DD8 87B9003E */  lh         $t9, 0x3e($sp)
/* BA9DC 800B9DDC 8D0D0024 */  lw         $t5, 0x24($t0)
/* BA9E0 800B9DE0 01B9C023 */  subu       $t8, $t5, $t9
/* BA9E4 800B9DE4 AD180018 */  sw         $t8, 0x18($t0)
.L800B9DE8:
/* BA9E8 800B9DE8 100000C4 */  b          .L800BA0FC
/* BA9EC 800B9DEC 00000000 */   nop
.L800B9DF0:
/* BA9F0 800B9DF0 93AC0037 */  lbu        $t4, 0x37($sp)
/* BA9F4 800B9DF4 24010067 */  addiu      $at, $zero, 0x67
/* BA9F8 800B9DF8 11810004 */  beq        $t4, $at, .L800B9E0C
/* BA9FC 800B9DFC 00000000 */   nop
/* BAA00 800B9E00 24010047 */  addiu      $at, $zero, 0x47
/* BAA04 800B9E04 1581001D */  bne        $t4, $at, .L800B9E7C
/* BAA08 800B9E08 00000000 */   nop
.L800B9E0C:
/* BAA0C 800B9E0C 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA10 800B9E10 87AB003E */  lh         $t3, 0x3e($sp)
/* BAA14 800B9E14 8D490024 */  lw         $t1, 0x24($t2)
/* BAA18 800B9E18 0169082A */  slt        $at, $t3, $t1
/* BAA1C 800B9E1C 10200004 */  beqz       $at, .L800B9E30
/* BAA20 800B9E20 00000000 */   nop
/* BAA24 800B9E24 87AE003E */  lh         $t6, 0x3e($sp)
/* BAA28 800B9E28 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAA2C 800B9E2C ADEE0024 */  sw         $t6, 0x24($t7)
.L800B9E30:
/* BAA30 800B9E30 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAA34 800B9E34 8DB90024 */  lw         $t9, 0x24($t5)
/* BAA38 800B9E38 2738FFFF */  addiu      $t8, $t9, -1
/* BAA3C 800B9E3C ADB80024 */  sw         $t8, 0x24($t5)
/* BAA40 800B9E40 8FA80030 */  lw         $t0, 0x30($sp)
/* BAA44 800B9E44 8D0C0024 */  lw         $t4, 0x24($t0)
/* BAA48 800B9E48 05810003 */  bgez       $t4, .L800B9E58
/* BAA4C 800B9E4C 00000000 */   nop
/* BAA50 800B9E50 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA54 800B9E54 AD400024 */  sw         $zero, 0x24($t2)
.L800B9E58:
/* BAA58 800B9E58 93AB0037 */  lbu        $t3, 0x37($sp)
/* BAA5C 800B9E5C 24010067 */  addiu      $at, $zero, 0x67
/* BAA60 800B9E60 15610004 */  bne        $t3, $at, .L800B9E74
/* BAA64 800B9E64 00000000 */   nop
/* BAA68 800B9E68 24090065 */  addiu      $t1, $zero, 0x65
/* BAA6C 800B9E6C 10000003 */  b          .L800B9E7C
/* BAA70 800B9E70 A3A90037 */   sb        $t1, 0x37($sp)
.L800B9E74:
/* BAA74 800B9E74 240E0045 */  addiu      $t6, $zero, 0x45
/* BAA78 800B9E78 A3AE0037 */  sb         $t6, 0x37($sp)
.L800B9E7C:
/* BAA7C 800B9E7C 8FB80030 */  lw         $t8, 0x30($sp)
/* BAA80 800B9E80 8FAF0038 */  lw         $t7, 0x38($sp)
/* BAA84 800B9E84 8F0D0008 */  lw         $t5, 8($t8)
/* BAA88 800B9E88 8F080014 */  lw         $t0, 0x14($t8)
/* BAA8C 800B9E8C 91F90000 */  lbu        $t9, ($t7)
/* BAA90 800B9E90 01A86021 */  addu       $t4, $t5, $t0
/* BAA94 800B9E94 A1990000 */  sb         $t9, ($t4)
/* BAA98 800B9E98 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAA9C 800B9E9C 8D4B0014 */  lw         $t3, 0x14($t2)
/* BAAA0 800B9EA0 25690001 */  addiu      $t1, $t3, 1
/* BAAA4 800B9EA4 AD490014 */  sw         $t1, 0x14($t2)
/* BAAA8 800B9EA8 8FAE0038 */  lw         $t6, 0x38($sp)
/* BAAAC 800B9EAC 25CF0001 */  addiu      $t7, $t6, 1
/* BAAB0 800B9EB0 AFAF0038 */  sw         $t7, 0x38($sp)
/* BAAB4 800B9EB4 8FB80030 */  lw         $t8, 0x30($sp)
/* BAAB8 800B9EB8 8F0D0024 */  lw         $t5, 0x24($t8)
/* BAABC 800B9EBC 1DA00005 */  bgtz       $t5, .L800B9ED4
/* BAAC0 800B9EC0 00000000 */   nop
/* BAAC4 800B9EC4 8F080030 */  lw         $t0, 0x30($t8)
/* BAAC8 800B9EC8 31190008 */  andi       $t9, $t0, 8
/* BAACC 800B9ECC 1320000B */  beqz       $t9, .L800B9EFC
/* BAAD0 800B9ED0 00000000 */   nop
.L800B9ED4:
/* BAAD4 800B9ED4 8FAB0030 */  lw         $t3, 0x30($sp)
/* BAAD8 800B9ED8 93AC002F */  lbu        $t4, 0x2f($sp)
/* BAADC 800B9EDC 8D690008 */  lw         $t1, 8($t3)
/* BAAE0 800B9EE0 8D6A0014 */  lw         $t2, 0x14($t3)
/* BAAE4 800B9EE4 012A7021 */  addu       $t6, $t1, $t2
/* BAAE8 800B9EE8 A1CC0000 */  sb         $t4, ($t6)
/* BAAEC 800B9EEC 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAAF0 800B9EF0 8DED0014 */  lw         $t5, 0x14($t7)
/* BAAF4 800B9EF4 25B80001 */  addiu      $t8, $t5, 1
/* BAAF8 800B9EF8 ADF80014 */  sw         $t8, 0x14($t7)
.L800B9EFC:
/* BAAFC 800B9EFC 8FA80030 */  lw         $t0, 0x30($sp)
/* BAB00 800B9F00 8D190024 */  lw         $t9, 0x24($t0)
/* BAB04 800B9F04 1B20001F */  blez       $t9, .L800B9F84
/* BAB08 800B9F08 00000000 */   nop
/* BAB0C 800B9F0C 87AB003E */  lh         $t3, 0x3e($sp)
/* BAB10 800B9F10 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAB14 800B9F14 2569FFFF */  addiu      $t1, $t3, -1
/* BAB18 800B9F18 A7A9003E */  sh         $t1, 0x3e($sp)
/* BAB1C 800B9F1C 8D4C0024 */  lw         $t4, 0x24($t2)
/* BAB20 800B9F20 00097400 */  sll        $t6, $t1, 0x10
/* BAB24 800B9F24 000E6C03 */  sra        $t5, $t6, 0x10
/* BAB28 800B9F28 018D082A */  slt        $at, $t4, $t5
/* BAB2C 800B9F2C 10200004 */  beqz       $at, .L800B9F40
/* BAB30 800B9F30 00000000 */   nop
/* BAB34 800B9F34 8FB80030 */  lw         $t8, 0x30($sp)
/* BAB38 800B9F38 8F0F0024 */  lw         $t7, 0x24($t8)
/* BAB3C 800B9F3C A7AF003E */  sh         $t7, 0x3e($sp)
.L800B9F40:
/* BAB40 800B9F40 8FA80030 */  lw         $t0, 0x30($sp)
/* BAB44 800B9F44 8FA50038 */  lw         $a1, 0x38($sp)
/* BAB48 800B9F48 87A6003E */  lh         $a2, 0x3e($sp)
/* BAB4C 800B9F4C 8D190008 */  lw         $t9, 8($t0)
/* BAB50 800B9F50 8D0B0014 */  lw         $t3, 0x14($t0)
/* BAB54 800B9F54 0C029735 */  jal        func_800A5CD4
/* BAB58 800B9F58 032B2021 */   addu      $a0, $t9, $t3
/* BAB5C 800B9F5C 8FAA0030 */  lw         $t2, 0x30($sp)
/* BAB60 800B9F60 87AE003E */  lh         $t6, 0x3e($sp)
/* BAB64 800B9F64 8D490014 */  lw         $t1, 0x14($t2)
/* BAB68 800B9F68 012E6021 */  addu       $t4, $t1, $t6
/* BAB6C 800B9F6C AD4C0014 */  sw         $t4, 0x14($t2)
/* BAB70 800B9F70 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAB74 800B9F74 87AF003E */  lh         $t7, 0x3e($sp)
/* BAB78 800B9F78 8DB80024 */  lw         $t8, 0x24($t5)
/* BAB7C 800B9F7C 030F4023 */  subu       $t0, $t8, $t7
/* BAB80 800B9F80 ADA80018 */  sw         $t0, 0x18($t5)
.L800B9F84:
/* BAB84 800B9F84 8FB90030 */  lw         $t9, 0x30($sp)
/* BAB88 800B9F88 8F2B0008 */  lw         $t3, 8($t9)
/* BAB8C 800B9F8C 8F290014 */  lw         $t1, 0x14($t9)
/* BAB90 800B9F90 01697021 */  addu       $t6, $t3, $t1
/* BAB94 800B9F94 AFAE0038 */  sw         $t6, 0x38($sp)
/* BAB98 800B9F98 93AC0037 */  lbu        $t4, 0x37($sp)
/* BAB9C 800B9F9C 8FAA0038 */  lw         $t2, 0x38($sp)
/* BABA0 800B9FA0 A14C0000 */  sb         $t4, ($t2)
/* BABA4 800B9FA4 8FB80038 */  lw         $t8, 0x38($sp)
/* BABA8 800B9FA8 270F0001 */  addiu      $t7, $t8, 1
/* BABAC 800B9FAC AFAF0038 */  sw         $t7, 0x38($sp)
/* BABB0 800B9FB0 87A80042 */  lh         $t0, 0x42($sp)
/* BABB4 800B9FB4 05000008 */  bltz       $t0, .L800B9FD8
/* BABB8 800B9FB8 00000000 */   nop
/* BABBC 800B9FBC 8FB90038 */  lw         $t9, 0x38($sp)
/* BABC0 800B9FC0 240D002B */  addiu      $t5, $zero, 0x2b
/* BABC4 800B9FC4 A32D0000 */  sb         $t5, ($t9)
/* BABC8 800B9FC8 8FAB0038 */  lw         $t3, 0x38($sp)
/* BABCC 800B9FCC 25690001 */  addiu      $t1, $t3, 1
/* BABD0 800B9FD0 1000000A */  b          .L800B9FFC
/* BABD4 800B9FD4 AFA90038 */   sw        $t1, 0x38($sp)
.L800B9FD8:
/* BABD8 800B9FD8 8FAC0038 */  lw         $t4, 0x38($sp)
/* BABDC 800B9FDC 240E002D */  addiu      $t6, $zero, 0x2d
/* BABE0 800B9FE0 A18E0000 */  sb         $t6, ($t4)
/* BABE4 800B9FE4 8FAA0038 */  lw         $t2, 0x38($sp)
/* BABE8 800B9FE8 25580001 */  addiu      $t8, $t2, 1
/* BABEC 800B9FEC AFB80038 */  sw         $t8, 0x38($sp)
/* BABF0 800B9FF0 87AF0042 */  lh         $t7, 0x42($sp)
/* BABF4 800B9FF4 000F4023 */  negu       $t0, $t7
/* BABF8 800B9FF8 A7A80042 */  sh         $t0, 0x42($sp)
.L800B9FFC:
/* BABFC 800B9FFC 87AD0042 */  lh         $t5, 0x42($sp)
/* BAC00 800BA000 29A10064 */  slti       $at, $t5, 0x64
/* BAC04 800BA004 14200021 */  bnez       $at, .L800BA08C
/* BAC08 800BA008 00000000 */   nop
/* BAC0C 800BA00C 87B90042 */  lh         $t9, 0x42($sp)
/* BAC10 800BA010 2B2103E8 */  slti       $at, $t9, 0x3e8
/* BAC14 800BA014 1420000F */  bnez       $at, .L800BA054
/* BAC18 800BA018 00000000 */   nop
/* BAC1C 800BA01C 87AB0042 */  lh         $t3, 0x42($sp)
/* BAC20 800BA020 240103E8 */  addiu      $at, $zero, 0x3e8
/* BAC24 800BA024 8FAC0038 */  lw         $t4, 0x38($sp)
/* BAC28 800BA028 0161001A */  div        $zero, $t3, $at
/* BAC2C 800BA02C 00004812 */  mflo       $t1
/* BAC30 800BA030 252E0030 */  addiu      $t6, $t1, 0x30
/* BAC34 800BA034 A18E0000 */  sb         $t6, ($t4)
/* BAC38 800BA038 87AF0042 */  lh         $t7, 0x42($sp)
/* BAC3C 800BA03C 8FAA0038 */  lw         $t2, 0x38($sp)
/* BAC40 800BA040 01E1001A */  div        $zero, $t7, $at
/* BAC44 800BA044 00004010 */  mfhi       $t0
/* BAC48 800BA048 25580001 */  addiu      $t8, $t2, 1
/* BAC4C 800BA04C AFB80038 */  sw         $t8, 0x38($sp)
/* BAC50 800BA050 A7A80042 */  sh         $t0, 0x42($sp)
.L800BA054:
/* BAC54 800BA054 87AD0042 */  lh         $t5, 0x42($sp)
/* BAC58 800BA058 24010064 */  addiu      $at, $zero, 0x64
/* BAC5C 800BA05C 8FA90038 */  lw         $t1, 0x38($sp)
/* BAC60 800BA060 01A1001A */  div        $zero, $t5, $at
/* BAC64 800BA064 0000C812 */  mflo       $t9
/* BAC68 800BA068 272B0030 */  addiu      $t3, $t9, 0x30
/* BAC6C 800BA06C A12B0000 */  sb         $t3, ($t1)
/* BAC70 800BA070 87AA0042 */  lh         $t2, 0x42($sp)
/* BAC74 800BA074 8FAE0038 */  lw         $t6, 0x38($sp)
/* BAC78 800BA078 0141001A */  div        $zero, $t2, $at
/* BAC7C 800BA07C 0000C010 */  mfhi       $t8
/* BAC80 800BA080 25CC0001 */  addiu      $t4, $t6, 1
/* BAC84 800BA084 AFAC0038 */  sw         $t4, 0x38($sp)
/* BAC88 800BA088 A7B80042 */  sh         $t8, 0x42($sp)
.L800BA08C:
/* BAC8C 800BA08C 87AF0042 */  lh         $t7, 0x42($sp)
/* BAC90 800BA090 2401000A */  addiu      $at, $zero, 0xa
/* BAC94 800BA094 8FB90038 */  lw         $t9, 0x38($sp)
/* BAC98 800BA098 01E1001A */  div        $zero, $t7, $at
/* BAC9C 800BA09C 00004012 */  mflo       $t0
/* BACA0 800BA0A0 250D0030 */  addiu      $t5, $t0, 0x30
/* BACA4 800BA0A4 A32D0000 */  sb         $t5, ($t9)
/* BACA8 800BA0A8 87AE0042 */  lh         $t6, 0x42($sp)
/* BACAC 800BA0AC 8FAB0038 */  lw         $t3, 0x38($sp)
/* BACB0 800BA0B0 01C1001A */  div        $zero, $t6, $at
/* BACB4 800BA0B4 00006010 */  mfhi       $t4
/* BACB8 800BA0B8 25690001 */  addiu      $t1, $t3, 1
/* BACBC 800BA0BC AFA90038 */  sw         $t1, 0x38($sp)
/* BACC0 800BA0C0 A7AC0042 */  sh         $t4, 0x42($sp)
/* BACC4 800BA0C4 87AA0042 */  lh         $t2, 0x42($sp)
/* BACC8 800BA0C8 8FAF0038 */  lw         $t7, 0x38($sp)
/* BACCC 800BA0CC 25580030 */  addiu      $t8, $t2, 0x30
/* BACD0 800BA0D0 A1F80000 */  sb         $t8, ($t7)
/* BACD4 800BA0D4 8FA80038 */  lw         $t0, 0x38($sp)
/* BACD8 800BA0D8 250D0001 */  addiu      $t5, $t0, 1
/* BACDC 800BA0DC AFAD0038 */  sw         $t5, 0x38($sp)
/* BACE0 800BA0E0 8FB90030 */  lw         $t9, 0x30($sp)
/* BACE4 800BA0E4 8FAC0038 */  lw         $t4, 0x38($sp)
/* BACE8 800BA0E8 8F2B0008 */  lw         $t3, 8($t9)
/* BACEC 800BA0EC 8F290014 */  lw         $t1, 0x14($t9)
/* BACF0 800BA0F0 01697021 */  addu       $t6, $t3, $t1
/* BACF4 800BA0F4 018E5023 */  subu       $t2, $t4, $t6
/* BACF8 800BA0F8 AF2A001C */  sw         $t2, 0x1c($t9)
.L800BA0FC:
/* BACFC 800BA0FC 8FB80030 */  lw         $t8, 0x30($sp)
/* BAD00 800BA100 24010010 */  addiu      $at, $zero, 0x10
/* BAD04 800BA104 8F0F0030 */  lw         $t7, 0x30($t8)
/* BAD08 800BA108 31E80014 */  andi       $t0, $t7, 0x14
/* BAD0C 800BA10C 15010017 */  bne        $t0, $at, .L800BA16C
/* BAD10 800BA110 00000000 */   nop
/* BAD14 800BA114 8FAD0030 */  lw         $t5, 0x30($sp)
/* BAD18 800BA118 8DAB000C */  lw         $t3, 0xc($t5)
/* BAD1C 800BA11C 8DA90014 */  lw         $t1, 0x14($t5)
/* BAD20 800BA120 8DAE0018 */  lw         $t6, 0x18($t5)
/* BAD24 800BA124 8DB9001C */  lw         $t9, 0x1c($t5)
/* BAD28 800BA128 8DAF0020 */  lw         $t7, 0x20($t5)
/* BAD2C 800BA12C 01696021 */  addu       $t4, $t3, $t1
/* BAD30 800BA130 018E5021 */  addu       $t2, $t4, $t6
/* BAD34 800BA134 0159C021 */  addu       $t8, $t2, $t9
/* BAD38 800BA138 030F4021 */  addu       $t0, $t8, $t7
/* BAD3C 800BA13C AFA80028 */  sw         $t0, 0x28($sp)
/* BAD40 800BA140 8FA90030 */  lw         $t1, 0x30($sp)
/* BAD44 800BA144 8FAB0028 */  lw         $t3, 0x28($sp)
/* BAD48 800BA148 8D2C0028 */  lw         $t4, 0x28($t1)
/* BAD4C 800BA14C 016C082A */  slt        $at, $t3, $t4
/* BAD50 800BA150 10200006 */  beqz       $at, .L800BA16C
/* BAD54 800BA154 00000000 */   nop
/* BAD58 800BA158 8FAE0030 */  lw         $t6, 0x30($sp)
/* BAD5C 800BA15C 8FB90028 */  lw         $t9, 0x28($sp)
/* BAD60 800BA160 8DCA0028 */  lw         $t2, 0x28($t6)
/* BAD64 800BA164 01596823 */  subu       $t5, $t2, $t9
/* BAD68 800BA168 ADCD0010 */  sw         $t5, 0x10($t6)
.L800BA16C:
/* BAD6C 800BA16C 10000001 */  b          .L800BA174
/* BAD70 800BA170 00000000 */   nop
.L800BA174:
/* BAD74 800BA174 8FBF001C */  lw         $ra, 0x1c($sp)
/* BAD78 800BA178 8FB00018 */  lw         $s0, 0x18($sp)
/* BAD7C 800BA17C 27BD0030 */  addiu      $sp, $sp, 0x30
/* BAD80 800BA180 03E00008 */  jr         $ra
/* BAD84 800BA184 00000000 */   nop
/* BAD88 800BA188 00000000 */  nop
/* BAD8C 800BA18C 00000000 */  nop
