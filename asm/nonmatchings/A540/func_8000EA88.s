glabel func_8000EA88
/* F688 8000EA88 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* F68C 8000EA8C AFB00028 */  sw         $s0, 0x28($sp)
/* F690 8000EA90 3C108013 */  lui        $s0, %hi(D_8012A670)
/* F694 8000EA94 2610A670 */  addiu      $s0, $s0, %lo(D_8012A670)
/* F698 8000EA98 8E020000 */  lw         $v0, ($s0)
/* F69C 8000EA9C AFBF004C */  sw         $ra, 0x4c($sp)
/* F6A0 8000EAA0 244E0008 */  addiu      $t6, $v0, 8
/* F6A4 8000EAA4 AFBE0048 */  sw         $fp, 0x48($sp)
/* F6A8 8000EAA8 AFB70044 */  sw         $s7, 0x44($sp)
/* F6AC 8000EAAC AFB60040 */  sw         $s6, 0x40($sp)
/* F6B0 8000EAB0 AFB5003C */  sw         $s5, 0x3c($sp)
/* F6B4 8000EAB4 AFB40038 */  sw         $s4, 0x38($sp)
/* F6B8 8000EAB8 AFB30034 */  sw         $s3, 0x34($sp)
/* F6BC 8000EABC AFB20030 */  sw         $s2, 0x30($sp)
/* F6C0 8000EAC0 AFB1002C */  sw         $s1, 0x2c($sp)
/* F6C4 8000EAC4 E7B70020 */  swc1       $f23, 0x20($sp)
/* F6C8 8000EAC8 E7B60024 */  swc1       $f22, 0x24($sp)
/* F6CC 8000EACC E7B50018 */  swc1       $f21, 0x18($sp)
/* F6D0 8000EAD0 E7B4001C */  swc1       $f20, 0x1c($sp)
/* F6D4 8000EAD4 AE0E0000 */  sw         $t6, ($s0)
/* F6D8 8000EAD8 3C0FB900 */  lui        $t7, 0xb900
/* F6DC 8000EADC 3C180050 */  lui        $t8, 0x50
/* F6E0 8000EAE0 37184240 */  ori        $t8, $t8, 0x4240
/* F6E4 8000EAE4 35EF031D */  ori        $t7, $t7, 0x31d
/* F6E8 8000EAE8 AC4F0000 */  sw         $t7, ($v0)
/* F6EC 8000EAEC AC580004 */  sw         $t8, 4($v0)
/* F6F0 8000EAF0 8E020000 */  lw         $v0, ($s0)
/* F6F4 8000EAF4 3C0F800E */  lui        $t7, %hi(D_800E39C0)
/* F6F8 8000EAF8 24590008 */  addiu      $t9, $v0, 8
/* F6FC 8000EAFC AE190000 */  sw         $t9, ($s0)
/* F700 8000EB00 25EF39C0 */  addiu      $t7, $t7, %lo(D_800E39C0)
/* F704 8000EB04 3C0E0600 */  lui        $t6, 0x600
/* F708 8000EB08 3C188013 */  lui        $t8, %hi(D_801376DC)
/* F70C 8000EB0C AC4E0000 */  sw         $t6, ($v0)
/* F710 8000EB10 AC4F0004 */  sw         $t7, 4($v0)
/* F714 8000EB14 8F1876DC */  lw         $t8, %lo(D_801376DC)($t8)
/* F718 8000EB18 3C013F80 */  lui        $at, 0x3f80
/* F71C 8000EB1C 3C17F500 */  lui        $s7, 0xf500
/* F720 8000EB20 4481B000 */  mtc1       $at, $f22
/* F724 8000EB24 4480A000 */  mtc1       $zero, $f20
/* F728 8000EB28 36F70100 */  ori        $s7, $s7, 0x100
/* F72C 8000EB2C 3C120700 */  lui        $s2, 0x700
/* F730 8000EB30 3C13E600 */  lui        $s3, 0xe600
/* F734 8000EB34 3C14E700 */  lui        $s4, 0xe700
/* F738 8000EB38 3C15FD10 */  lui        $s5, 0xfd10
/* F73C 8000EB3C 3C16E800 */  lui        $s6, 0xe800
/* F740 8000EB40 3C1EF000 */  lui        $fp, 0xf000
/* F744 8000EB44 00006025 */  or         $t4, $zero, $zero
/* F748 8000EB48 AFB80054 */  sw         $t8, 0x54($sp)
.L8000EB4C:
/* F74C 8000EB4C 000CC880 */  sll        $t9, $t4, 2
/* F750 8000EB50 032CC821 */  addu       $t9, $t9, $t4
/* F754 8000EB54 3C0E8010 */  lui        $t6, %hi(D_80104098)
/* F758 8000EB58 25CE4098 */  addiu      $t6, $t6, %lo(D_80104098)
/* F75C 8000EB5C 0019C940 */  sll        $t9, $t9, 5
/* F760 8000EB60 032E8821 */  addu       $s1, $t9, $t6
/* F764 8000EB64 962F0080 */  lhu        $t7, 0x80($s1)
/* F768 8000EB68 3C18800C */  lui        $t8, 0x800c
/* F76C 8000EB6C 11E001B3 */  beqz       $t7, .L8000F23C
/* F770 8000EB70 00000000 */   nop
/* F774 8000EB74 862E0084 */  lh         $t6, 0x84($s1)
/* F778 8000EB78 862F0088 */  lh         $t7, 0x88($s1)
/* F77C 8000EB7C 448E2000 */  mtc1       $t6, $f4
/* F780 8000EB80 448F3000 */  mtc1       $t7, $f6
/* F784 8000EB84 46802120 */  cvt.s.w    $f4, $f4
/* F788 8000EB88 9718E700 */  lhu        $t8, -0x1900($t8)
/* F78C 8000EB8C 4407A000 */  mfc1       $a3, $f20
/* F790 8000EB90 468031A0 */  cvt.s.w    $f6, $f6
/* F794 8000EB94 44052000 */  mfc1       $a1, $f4
/* F798 8000EB98 0018C980 */  sll        $t9, $t8, 6
/* F79C 8000EB9C 44063000 */  mfc1       $a2, $f6
/* F7A0 8000EBA0 02392021 */  addu       $a0, $s1, $t9
/* F7A4 8000EBA4 0C029393 */  jal        guTranslate
/* F7A8 8000EBA8 A7AC0052 */   sh        $t4, 0x52($sp)
/* F7AC 8000EBAC 8E020000 */  lw         $v0, ($s0)
/* F7B0 8000EBB0 3C190103 */  lui        $t9, 0x103
/* F7B4 8000EBB4 24580008 */  addiu      $t8, $v0, 8
/* F7B8 8000EBB8 97AC0052 */  lhu        $t4, 0x52($sp)
/* F7BC 8000EBBC AE180000 */  sw         $t8, ($s0)
/* F7C0 8000EBC0 37390040 */  ori        $t9, $t9, 0x40
/* F7C4 8000EBC4 3C0E800F */  lui        $t6, %hi(D_800EF4F4)
/* F7C8 8000EBC8 AC590000 */  sw         $t9, ($v0)
/* F7CC 8000EBCC 8DCEF4F4 */  lw         $t6, %lo(D_800EF4F4)($t6)
/* F7D0 8000EBD0 3C1F1FFF */  lui        $ra, 0x1fff
/* F7D4 8000EBD4 37FFFFFF */  ori        $ra, $ra, 0xffff
/* F7D8 8000EBD8 25CF0080 */  addiu      $t7, $t6, 0x80
/* F7DC 8000EBDC 01FFC024 */  and        $t8, $t7, $ra
/* F7E0 8000EBE0 AC580004 */  sw         $t8, 4($v0)
/* F7E4 8000EBE4 8E020000 */  lw         $v0, ($s0)
/* F7E8 8000EBE8 3C0E0102 */  lui        $t6, 0x102
/* F7EC 8000EBEC 24590008 */  addiu      $t9, $v0, 8
/* F7F0 8000EBF0 AE190000 */  sw         $t9, ($s0)
/* F7F4 8000EBF4 35CE0040 */  ori        $t6, $t6, 0x40
/* F7F8 8000EBF8 3C0F800C */  lui        $t7, %hi(D_800BE700)
/* F7FC 8000EBFC AC4E0000 */  sw         $t6, ($v0)
/* F800 8000EC00 95EFE700 */  lhu        $t7, %lo(D_800BE700)($t7)
/* F804 8000EC04 3C0D8018 */  lui        $t5, 0x8018
/* F808 8000EC08 000FC180 */  sll        $t8, $t7, 6
/* F80C 8000EC0C 0238C821 */  addu       $t9, $s1, $t8
/* F810 8000EC10 033F7024 */  and        $t6, $t9, $ra
/* F814 8000EC14 AC4E0004 */  sw         $t6, 4($v0)
/* F818 8000EC18 962F0080 */  lhu        $t7, 0x80($s1)
/* F81C 8000EC1C 25AD80F8 */  addiu      $t5, $t5, -0x7f08
/* F820 8000EC20 31F80001 */  andi       $t8, $t7, 1
/* F824 8000EC24 1300002C */  beqz       $t8, .L8000ECD8
/* F828 8000EC28 3C19800C */   lui       $t9, %hi(D_800BE700)
/* F82C 8000EC2C 9739E700 */  lhu        $t9, %lo(D_800BE700)($t9)
/* F830 8000EC30 95B80000 */  lhu        $t8, ($t5)
/* F834 8000EC34 00197080 */  sll        $t6, $t9, 2
/* F838 8000EC38 01D97023 */  subu       $t6, $t6, $t9
/* F83C 8000EC3C 0018C980 */  sll        $t9, $t8, 6
/* F840 8000EC40 3C188017 */  lui        $t8, %hi(D_801720F0)
/* F844 8000EC44 000E7B00 */  sll        $t7, $t6, 0xc
/* F848 8000EC48 01F97021 */  addu       $t6, $t7, $t9
/* F84C 8000EC4C 271820F0 */  addiu      $t8, $t8, %lo(D_801720F0)
/* F850 8000EC50 8E25008C */  lw         $a1, 0x8c($s1)
/* F854 8000EC54 8E260090 */  lw         $a2, 0x90($s1)
/* F858 8000EC58 4407B000 */  mfc1       $a3, $f22
/* F85C 8000EC5C 01D82021 */  addu       $a0, $t6, $t8
/* F860 8000EC60 0C02945F */  jal        guScale
/* F864 8000EC64 A7AC0052 */   sh        $t4, 0x52($sp)
/* F868 8000EC68 8E020000 */  lw         $v0, ($s0)
/* F86C 8000EC6C 3C190100 */  lui        $t9, 0x100
/* F870 8000EC70 244F0008 */  addiu      $t7, $v0, 8
/* F874 8000EC74 AE0F0000 */  sw         $t7, ($s0)
/* F878 8000EC78 97AC0052 */  lhu        $t4, 0x52($sp)
/* F87C 8000EC7C 37390040 */  ori        $t9, $t9, 0x40
/* F880 8000EC80 3C0D8018 */  lui        $t5, %hi(D_801780F8)
/* F884 8000EC84 3C0F800C */  lui        $t7, %hi(D_800BE700)
/* F888 8000EC88 AC590000 */  sw         $t9, ($v0)
/* F88C 8000EC8C 95EFE700 */  lhu        $t7, %lo(D_800BE700)($t7)
/* F890 8000EC90 25AD80F8 */  addiu      $t5, $t5, %lo(D_801780F8)
/* F894 8000EC94 95AE0000 */  lhu        $t6, ($t5)
/* F898 8000EC98 000FC880 */  sll        $t9, $t7, 2
/* F89C 8000EC9C 032FC823 */  subu       $t9, $t9, $t7
/* F8A0 8000ECA0 000EC180 */  sll        $t8, $t6, 6
/* F8A4 8000ECA4 00197300 */  sll        $t6, $t9, 0xc
/* F8A8 8000ECA8 3C198017 */  lui        $t9, %hi(D_801720F0)
/* F8AC 8000ECAC 3C1F1FFF */  lui        $ra, 0x1fff
/* F8B0 8000ECB0 273920F0 */  addiu      $t9, $t9, %lo(D_801720F0)
/* F8B4 8000ECB4 030E7821 */  addu       $t7, $t8, $t6
/* F8B8 8000ECB8 37FFFFFF */  ori        $ra, $ra, 0xffff
/* F8BC 8000ECBC 01F9C021 */  addu       $t8, $t7, $t9
/* F8C0 8000ECC0 031F7024 */  and        $t6, $t8, $ra
/* F8C4 8000ECC4 AC4E0004 */  sw         $t6, 4($v0)
/* F8C8 8000ECC8 95AF0000 */  lhu        $t7, ($t5)
/* F8CC 8000ECCC 00000000 */  nop
/* F8D0 8000ECD0 25F90001 */  addiu      $t9, $t7, 1
/* F8D4 8000ECD4 A5B90000 */  sh         $t9, ($t5)
.L8000ECD8:
/* F8D8 8000ECD8 92380094 */  lbu        $t8, 0x94($s1)
/* F8DC 8000ECDC 240100FF */  addiu      $at, $zero, 0xff
/* F8E0 8000ECE0 1701000B */  bne        $t8, $at, .L8000ED10
/* F8E4 8000ECE4 3C0EFA00 */   lui       $t6, 0xfa00
/* F8E8 8000ECE8 8E020000 */  lw         $v0, ($s0)
/* F8EC 8000ECEC 3C0FFCFF */  lui        $t7, 0xfcff
/* F8F0 8000ECF0 3C19FFFC */  lui        $t9, 0xfffc
/* F8F4 8000ECF4 244E0008 */  addiu      $t6, $v0, 8
/* F8F8 8000ECF8 AE0E0000 */  sw         $t6, ($s0)
/* F8FC 8000ECFC 3739F279 */  ori        $t9, $t9, 0xf279
/* F900 8000ED00 35EFFFFF */  ori        $t7, $t7, 0xffff
/* F904 8000ED04 AC4F0000 */  sw         $t7, ($v0)
/* F908 8000ED08 10000019 */  b          .L8000ED70
/* F90C 8000ED0C AC590004 */   sw        $t9, 4($v0)
.L8000ED10:
/* F910 8000ED10 8E020000 */  lw         $v0, ($s0)
/* F914 8000ED14 3C03800C */  lui        $v1, %hi(D_800BE6F0)
/* F918 8000ED18 24580008 */  addiu      $t8, $v0, 8
/* F91C 8000ED1C AE180000 */  sw         $t8, ($s0)
/* F920 8000ED20 AC4E0000 */  sw         $t6, ($v0)
/* F924 8000ED24 906FE6F0 */  lbu        $t7, %lo(D_800BE6F0)($v1)
/* F928 8000ED28 92380094 */  lbu        $t8, 0x94($s1)
/* F92C 8000ED2C 01E01825 */  or         $v1, $t7, $zero
/* F930 8000ED30 000F7600 */  sll        $t6, $t7, 0x18
/* F934 8000ED34 030E7825 */  or         $t7, $t8, $t6
/* F938 8000ED38 0003CC00 */  sll        $t9, $v1, 0x10
/* F93C 8000ED3C 01F9C025 */  or         $t8, $t7, $t9
/* F940 8000ED40 00037200 */  sll        $t6, $v1, 8
/* F944 8000ED44 030E7825 */  or         $t7, $t8, $t6
/* F948 8000ED48 AC4F0004 */  sw         $t7, 4($v0)
/* F94C 8000ED4C 8E020000 */  lw         $v0, ($s0)
/* F950 8000ED50 3C0EFF2F */  lui        $t6, 0xff2f
/* F954 8000ED54 24590008 */  addiu      $t9, $v0, 8
/* F958 8000ED58 AE190000 */  sw         $t9, ($s0)
/* F95C 8000ED5C 3C18FC11 */  lui        $t8, 0xfc11
/* F960 8000ED60 37189623 */  ori        $t8, $t8, 0x9623
/* F964 8000ED64 35CEFFFF */  ori        $t6, $t6, 0xffff
/* F968 8000ED68 AC4E0004 */  sw         $t6, 4($v0)
/* F96C 8000ED6C AC580000 */  sw         $t8, ($v0)
.L8000ED70:
/* F970 8000ED70 962F0082 */  lhu        $t7, 0x82($s1)
/* F974 8000ED74 3C188026 */  lui        $t8, 0x8026
/* F978 8000ED78 29E10374 */  slti       $at, $t7, 0x374
/* F97C 8000ED7C 14200026 */  bnez       $at, .L8000EE18
/* F980 8000ED80 00000000 */   nop
/* F984 8000ED84 8E020000 */  lw         $v0, ($s0)
/* F988 8000ED88 371851F8 */  ori        $t8, $t8, 0x51f8
/* F98C 8000ED8C 24590008 */  addiu      $t9, $v0, 8
/* F990 8000ED90 AE190000 */  sw         $t9, ($s0)
/* F994 8000ED94 AC580004 */  sw         $t8, 4($v0)
/* F998 8000ED98 AC550000 */  sw         $s5, ($v0)
/* F99C 8000ED9C 8E020000 */  lw         $v0, ($s0)
/* F9A0 8000EDA0 00000000 */  nop
/* F9A4 8000EDA4 244E0008 */  addiu      $t6, $v0, 8
/* F9A8 8000EDA8 AE0E0000 */  sw         $t6, ($s0)
/* F9AC 8000EDAC AC400004 */  sw         $zero, 4($v0)
/* F9B0 8000EDB0 AC560000 */  sw         $s6, ($v0)
/* F9B4 8000EDB4 8E020000 */  lw         $v0, ($s0)
/* F9B8 8000EDB8 3C0E0703 */  lui        $t6, 0x703
/* F9BC 8000EDBC 244F0008 */  addiu      $t7, $v0, 8
/* F9C0 8000EDC0 AE0F0000 */  sw         $t7, ($s0)
/* F9C4 8000EDC4 AC520004 */  sw         $s2, 4($v0)
/* F9C8 8000EDC8 AC570000 */  sw         $s7, ($v0)
/* F9CC 8000EDCC 8E020000 */  lw         $v0, ($s0)
/* F9D0 8000EDD0 35CEC000 */  ori        $t6, $t6, 0xc000
/* F9D4 8000EDD4 24590008 */  addiu      $t9, $v0, 8
/* F9D8 8000EDD8 AE190000 */  sw         $t9, ($s0)
/* F9DC 8000EDDC AC400004 */  sw         $zero, 4($v0)
/* F9E0 8000EDE0 AC530000 */  sw         $s3, ($v0)
/* F9E4 8000EDE4 8E020000 */  lw         $v0, ($s0)
/* F9E8 8000EDE8 00000000 */  nop
/* F9EC 8000EDEC 24580008 */  addiu      $t8, $v0, 8
/* F9F0 8000EDF0 AE180000 */  sw         $t8, ($s0)
/* F9F4 8000EDF4 AC4E0004 */  sw         $t6, 4($v0)
/* F9F8 8000EDF8 AC5E0000 */  sw         $fp, ($v0)
/* F9FC 8000EDFC 8E020000 */  lw         $v0, ($s0)
/* FA00 8000EE00 00000000 */  nop
/* FA04 8000EE04 244F0008 */  addiu      $t7, $v0, 8
/* FA08 8000EE08 AE0F0000 */  sw         $t7, ($s0)
/* FA0C 8000EE0C AC400004 */  sw         $zero, 4($v0)
/* FA10 8000EE10 100000B8 */  b          .L8000F0F4
/* FA14 8000EE14 AC540000 */   sw        $s4, ($v0)
.L8000EE18:
/* FA18 8000EE18 96220080 */  lhu        $v0, 0x80($s1)
/* FA1C 8000EE1C 00000000 */  nop
/* FA20 8000EE20 30594000 */  andi       $t9, $v0, 0x4000
/* FA24 8000EE24 1320005B */  beqz       $t9, .L8000EF94
/* FA28 8000EE28 30580200 */   andi      $t8, $v0, 0x200
/* FA2C 8000EE2C 30580200 */  andi       $t8, $v0, 0x200
/* FA30 8000EE30 13000028 */  beqz       $t8, .L8000EED4
/* FA34 8000EE34 00000000 */   nop
/* FA38 8000EE38 8E020000 */  lw         $v0, ($s0)
/* FA3C 8000EE3C 00000000 */  nop
/* FA40 8000EE40 244E0008 */  addiu      $t6, $v0, 8
/* FA44 8000EE44 AE0E0000 */  sw         $t6, ($s0)
/* FA48 8000EE48 AC550000 */  sw         $s5, ($v0)
/* FA4C 8000EE4C 8E2F0098 */  lw         $t7, 0x98($s1)
/* FA50 8000EE50 00000000 */  nop
/* FA54 8000EE54 AC4F0004 */  sw         $t7, 4($v0)
/* FA58 8000EE58 8E020000 */  lw         $v0, ($s0)
/* FA5C 8000EE5C 00000000 */  nop
/* FA60 8000EE60 24590008 */  addiu      $t9, $v0, 8
/* FA64 8000EE64 AE190000 */  sw         $t9, ($s0)
/* FA68 8000EE68 AC400004 */  sw         $zero, 4($v0)
/* FA6C 8000EE6C AC560000 */  sw         $s6, ($v0)
/* FA70 8000EE70 8E020000 */  lw         $v0, ($s0)
/* FA74 8000EE74 3C19073F */  lui        $t9, 0x73f
/* FA78 8000EE78 24580008 */  addiu      $t8, $v0, 8
/* FA7C 8000EE7C AE180000 */  sw         $t8, ($s0)
/* FA80 8000EE80 AC520004 */  sw         $s2, 4($v0)
/* FA84 8000EE84 AC570000 */  sw         $s7, ($v0)
/* FA88 8000EE88 8E020000 */  lw         $v0, ($s0)
/* FA8C 8000EE8C 3739C000 */  ori        $t9, $t9, 0xc000
/* FA90 8000EE90 244E0008 */  addiu      $t6, $v0, 8
/* FA94 8000EE94 AE0E0000 */  sw         $t6, ($s0)
/* FA98 8000EE98 AC400004 */  sw         $zero, 4($v0)
/* FA9C 8000EE9C AC530000 */  sw         $s3, ($v0)
/* FAA0 8000EEA0 8E020000 */  lw         $v0, ($s0)
/* FAA4 8000EEA4 00000000 */  nop
/* FAA8 8000EEA8 244F0008 */  addiu      $t7, $v0, 8
/* FAAC 8000EEAC AE0F0000 */  sw         $t7, ($s0)
/* FAB0 8000EEB0 AC590004 */  sw         $t9, 4($v0)
/* FAB4 8000EEB4 AC5E0000 */  sw         $fp, ($v0)
/* FAB8 8000EEB8 8E020000 */  lw         $v0, ($s0)
/* FABC 8000EEBC 00000000 */  nop
/* FAC0 8000EEC0 24580008 */  addiu      $t8, $v0, 8
/* FAC4 8000EEC4 AE180000 */  sw         $t8, ($s0)
/* FAC8 8000EEC8 AC400004 */  sw         $zero, 4($v0)
/* FACC 8000EECC 10000089 */  b          .L8000F0F4
/* FAD0 8000EED0 AC540000 */   sw        $s4, ($v0)
.L8000EED4:
/* FAD4 8000EED4 8E020000 */  lw         $v0, ($s0)
/* FAD8 8000EED8 00000000 */  nop
/* FADC 8000EEDC 244E0008 */  addiu      $t6, $v0, 8
/* FAE0 8000EEE0 AE0E0000 */  sw         $t6, ($s0)
/* FAE4 8000EEE4 AC550000 */  sw         $s5, ($v0)
/* FAE8 8000EEE8 962F0082 */  lhu        $t7, 0x82($s1)
/* FAEC 8000EEEC 3C0E8027 */  lui        $t6, 0x8027
/* FAF0 8000EEF0 00401825 */  or         $v1, $v0, $zero
/* FAF4 8000EEF4 05E10003 */  bgez       $t7, .L8000EF04
/* FAF8 8000EEF8 000FC843 */   sra       $t9, $t7, 1
/* FAFC 8000EEFC 25E10001 */  addiu      $at, $t7, 1
/* FB00 8000EF00 0001C843 */  sra        $t9, $at, 1
.L8000EF04:
/* FB04 8000EF04 0019C080 */  sll        $t8, $t9, 2
/* FB08 8000EF08 01D87021 */  addu       $t6, $t6, $t8
/* FB0C 8000EF0C 8DCE88F8 */  lw         $t6, -0x7708($t6)
/* FB10 8000EF10 00000000 */  nop
/* FB14 8000EF14 AC6E0004 */  sw         $t6, 4($v1)
/* FB18 8000EF18 8E020000 */  lw         $v0, ($s0)
/* FB1C 8000EF1C 00000000 */  nop
/* FB20 8000EF20 244F0008 */  addiu      $t7, $v0, 8
/* FB24 8000EF24 AE0F0000 */  sw         $t7, ($s0)
/* FB28 8000EF28 AC400004 */  sw         $zero, 4($v0)
/* FB2C 8000EF2C AC560000 */  sw         $s6, ($v0)
/* FB30 8000EF30 8E020000 */  lw         $v0, ($s0)
/* FB34 8000EF34 3C0F073F */  lui        $t7, 0x73f
/* FB38 8000EF38 24590008 */  addiu      $t9, $v0, 8
/* FB3C 8000EF3C AE190000 */  sw         $t9, ($s0)
/* FB40 8000EF40 AC520004 */  sw         $s2, 4($v0)
/* FB44 8000EF44 AC570000 */  sw         $s7, ($v0)
/* FB48 8000EF48 8E020000 */  lw         $v0, ($s0)
/* FB4C 8000EF4C 35EFC000 */  ori        $t7, $t7, 0xc000
/* FB50 8000EF50 24580008 */  addiu      $t8, $v0, 8
/* FB54 8000EF54 AE180000 */  sw         $t8, ($s0)
/* FB58 8000EF58 AC400004 */  sw         $zero, 4($v0)
/* FB5C 8000EF5C AC530000 */  sw         $s3, ($v0)
/* FB60 8000EF60 8E020000 */  lw         $v0, ($s0)
/* FB64 8000EF64 00000000 */  nop
/* FB68 8000EF68 244E0008 */  addiu      $t6, $v0, 8
/* FB6C 8000EF6C AE0E0000 */  sw         $t6, ($s0)
/* FB70 8000EF70 AC4F0004 */  sw         $t7, 4($v0)
/* FB74 8000EF74 AC5E0000 */  sw         $fp, ($v0)
/* FB78 8000EF78 8E020000 */  lw         $v0, ($s0)
/* FB7C 8000EF7C 00000000 */  nop
/* FB80 8000EF80 24590008 */  addiu      $t9, $v0, 8
/* FB84 8000EF84 AE190000 */  sw         $t9, ($s0)
/* FB88 8000EF88 AC400004 */  sw         $zero, 4($v0)
/* FB8C 8000EF8C 10000059 */  b          .L8000F0F4
/* FB90 8000EF90 AC540000 */   sw        $s4, ($v0)
.L8000EF94:
/* FB94 8000EF94 13000028 */  beqz       $t8, .L8000F038
/* FB98 8000EF98 00000000 */   nop
/* FB9C 8000EF9C 8E020000 */  lw         $v0, ($s0)
/* FBA0 8000EFA0 00000000 */  nop
/* FBA4 8000EFA4 244E0008 */  addiu      $t6, $v0, 8
/* FBA8 8000EFA8 AE0E0000 */  sw         $t6, ($s0)
/* FBAC 8000EFAC AC550000 */  sw         $s5, ($v0)
/* FBB0 8000EFB0 8E2F0098 */  lw         $t7, 0x98($s1)
/* FBB4 8000EFB4 00000000 */  nop
/* FBB8 8000EFB8 AC4F0004 */  sw         $t7, 4($v0)
/* FBBC 8000EFBC 8E020000 */  lw         $v0, ($s0)
/* FBC0 8000EFC0 00000000 */  nop
/* FBC4 8000EFC4 24590008 */  addiu      $t9, $v0, 8
/* FBC8 8000EFC8 AE190000 */  sw         $t9, ($s0)
/* FBCC 8000EFCC AC400004 */  sw         $zero, 4($v0)
/* FBD0 8000EFD0 AC560000 */  sw         $s6, ($v0)
/* FBD4 8000EFD4 8E020000 */  lw         $v0, ($s0)
/* FBD8 8000EFD8 3C190703 */  lui        $t9, 0x703
/* FBDC 8000EFDC 24580008 */  addiu      $t8, $v0, 8
/* FBE0 8000EFE0 AE180000 */  sw         $t8, ($s0)
/* FBE4 8000EFE4 AC520004 */  sw         $s2, 4($v0)
/* FBE8 8000EFE8 AC570000 */  sw         $s7, ($v0)
/* FBEC 8000EFEC 8E020000 */  lw         $v0, ($s0)
/* FBF0 8000EFF0 3739C000 */  ori        $t9, $t9, 0xc000
/* FBF4 8000EFF4 244E0008 */  addiu      $t6, $v0, 8
/* FBF8 8000EFF8 AE0E0000 */  sw         $t6, ($s0)
/* FBFC 8000EFFC AC400004 */  sw         $zero, 4($v0)
/* FC00 8000F000 AC530000 */  sw         $s3, ($v0)
/* FC04 8000F004 8E020000 */  lw         $v0, ($s0)
/* FC08 8000F008 00000000 */  nop
/* FC0C 8000F00C 244F0008 */  addiu      $t7, $v0, 8
/* FC10 8000F010 AE0F0000 */  sw         $t7, ($s0)
/* FC14 8000F014 AC590004 */  sw         $t9, 4($v0)
/* FC18 8000F018 AC5E0000 */  sw         $fp, ($v0)
/* FC1C 8000F01C 8E020000 */  lw         $v0, ($s0)
/* FC20 8000F020 00000000 */  nop
/* FC24 8000F024 24580008 */  addiu      $t8, $v0, 8
/* FC28 8000F028 AE180000 */  sw         $t8, ($s0)
/* FC2C 8000F02C AC400004 */  sw         $zero, 4($v0)
/* FC30 8000F030 10000030 */  b          .L8000F0F4
/* FC34 8000F034 AC540000 */   sw        $s4, ($v0)
.L8000F038:
/* FC38 8000F038 8E020000 */  lw         $v0, ($s0)
/* FC3C 8000F03C 00000000 */  nop
/* FC40 8000F040 244E0008 */  addiu      $t6, $v0, 8
/* FC44 8000F044 AE0E0000 */  sw         $t6, ($s0)
/* FC48 8000F048 AC550000 */  sw         $s5, ($v0)
/* FC4C 8000F04C 962F0082 */  lhu        $t7, 0x82($s1)
/* FC50 8000F050 3C0E8027 */  lui        $t6, 0x8027
/* FC54 8000F054 00401825 */  or         $v1, $v0, $zero
/* FC58 8000F058 05E10003 */  bgez       $t7, .L8000F068
/* FC5C 8000F05C 000FC843 */   sra       $t9, $t7, 1
/* FC60 8000F060 25E10001 */  addiu      $at, $t7, 1
/* FC64 8000F064 0001C843 */  sra        $t9, $at, 1
.L8000F068:
/* FC68 8000F068 0019C080 */  sll        $t8, $t9, 2
/* FC6C 8000F06C 01D87021 */  addu       $t6, $t6, $t8
/* FC70 8000F070 8DCE88F8 */  lw         $t6, -0x7708($t6)
/* FC74 8000F074 00000000 */  nop
/* FC78 8000F078 AC6E0004 */  sw         $t6, 4($v1)
/* FC7C 8000F07C 8E020000 */  lw         $v0, ($s0)
/* FC80 8000F080 00000000 */  nop
/* FC84 8000F084 244F0008 */  addiu      $t7, $v0, 8
/* FC88 8000F088 AE0F0000 */  sw         $t7, ($s0)
/* FC8C 8000F08C AC400004 */  sw         $zero, 4($v0)
/* FC90 8000F090 AC560000 */  sw         $s6, ($v0)
/* FC94 8000F094 8E020000 */  lw         $v0, ($s0)
/* FC98 8000F098 3C0F0703 */  lui        $t7, 0x703
/* FC9C 8000F09C 24590008 */  addiu      $t9, $v0, 8
/* FCA0 8000F0A0 AE190000 */  sw         $t9, ($s0)
/* FCA4 8000F0A4 AC520004 */  sw         $s2, 4($v0)
/* FCA8 8000F0A8 AC570000 */  sw         $s7, ($v0)
/* FCAC 8000F0AC 8E020000 */  lw         $v0, ($s0)
/* FCB0 8000F0B0 35EFC000 */  ori        $t7, $t7, 0xc000
/* FCB4 8000F0B4 24580008 */  addiu      $t8, $v0, 8
/* FCB8 8000F0B8 AE180000 */  sw         $t8, ($s0)
/* FCBC 8000F0BC AC400004 */  sw         $zero, 4($v0)
/* FCC0 8000F0C0 AC530000 */  sw         $s3, ($v0)
/* FCC4 8000F0C4 8E020000 */  lw         $v0, ($s0)
/* FCC8 8000F0C8 00000000 */  nop
/* FCCC 8000F0CC 244E0008 */  addiu      $t6, $v0, 8
/* FCD0 8000F0D0 AE0E0000 */  sw         $t6, ($s0)
/* FCD4 8000F0D4 AC4F0004 */  sw         $t7, 4($v0)
/* FCD8 8000F0D8 AC5E0000 */  sw         $fp, ($v0)
/* FCDC 8000F0DC 8E020000 */  lw         $v0, ($s0)
/* FCE0 8000F0E0 00000000 */  nop
/* FCE4 8000F0E4 24590008 */  addiu      $t9, $v0, 8
/* FCE8 8000F0E8 AE190000 */  sw         $t9, ($s0)
/* FCEC 8000F0EC AC400004 */  sw         $zero, 4($v0)
/* FCF0 8000F0F0 AC540000 */  sw         $s4, ($v0)
.L8000F0F4:
/* FCF4 8000F0F4 96380082 */  lhu        $t8, 0x82($s1)
/* FCF8 8000F0F8 3C0F0420 */  lui        $t7, 0x420
/* FCFC 8000F0FC 2B010374 */  slti       $at, $t8, 0x374
/* FD00 8000F100 14200042 */  bnez       $at, .L8000F20C
/* FD04 8000F104 35EF0030 */   ori       $t7, $t7, 0x30
/* FD08 8000F108 8E020000 */  lw         $v0, ($s0)
/* FD0C 8000F10C 3C198020 */  lui        $t9, 0x8020
/* FD10 8000F110 244E0008 */  addiu      $t6, $v0, 8
/* FD14 8000F114 AE0E0000 */  sw         $t6, ($s0)
/* FD18 8000F118 37390FA8 */  ori        $t9, $t9, 0xfa8
/* FD1C 8000F11C AC590004 */  sw         $t9, 4($v0)
/* FD20 8000F120 AC4F0000 */  sw         $t7, ($v0)
/* FD24 8000F124 8E020000 */  lw         $v0, ($s0)
/* FD28 8000F128 3C0EFD50 */  lui        $t6, 0xfd50
/* FD2C 8000F12C 24580008 */  addiu      $t8, $v0, 8
/* FD30 8000F130 AE180000 */  sw         $t8, ($s0)
/* FD34 8000F134 AC4E0000 */  sw         $t6, ($v0)
/* FD38 8000F138 962F0082 */  lhu        $t7, 0x82($s1)
/* FD3C 8000F13C 3C018024 */  lui        $at, 0x8024
/* FD40 8000F140 342147E8 */  ori        $at, $at, 0x47e8
/* FD44 8000F144 000FC980 */  sll        $t9, $t7, 6
/* FD48 8000F148 0321C021 */  addu       $t8, $t9, $at
/* FD4C 8000F14C AC580004 */  sw         $t8, 4($v0)
/* FD50 8000F150 8E020000 */  lw         $v0, ($s0)
/* FD54 8000F154 3C0FF550 */  lui        $t7, 0xf550
/* FD58 8000F158 244E0008 */  addiu      $t6, $v0, 8
/* FD5C 8000F15C AE0E0000 */  sw         $t6, ($s0)
/* FD60 8000F160 AC520004 */  sw         $s2, 4($v0)
/* FD64 8000F164 AC4F0000 */  sw         $t7, ($v0)
/* FD68 8000F168 8E020000 */  lw         $v0, ($s0)
/* FD6C 8000F16C 3C0F0703 */  lui        $t7, 0x703
/* FD70 8000F170 24590008 */  addiu      $t9, $v0, 8
/* FD74 8000F174 AE190000 */  sw         $t9, ($s0)
/* FD78 8000F178 AC400004 */  sw         $zero, 4($v0)
/* FD7C 8000F17C AC530000 */  sw         $s3, ($v0)
/* FD80 8000F180 8E020000 */  lw         $v0, ($s0)
/* FD84 8000F184 35EFF800 */  ori        $t7, $t7, 0xf800
/* FD88 8000F188 24580008 */  addiu      $t8, $v0, 8
/* FD8C 8000F18C AE180000 */  sw         $t8, ($s0)
/* FD90 8000F190 3C0EF300 */  lui        $t6, 0xf300
/* FD94 8000F194 AC4E0000 */  sw         $t6, ($v0)
/* FD98 8000F198 AC4F0004 */  sw         $t7, 4($v0)
/* FD9C 8000F19C 8E020000 */  lw         $v0, ($s0)
/* FDA0 8000F1A0 3C0EF540 */  lui        $t6, 0xf540
/* FDA4 8000F1A4 24590008 */  addiu      $t9, $v0, 8
/* FDA8 8000F1A8 AE190000 */  sw         $t9, ($s0)
/* FDAC 8000F1AC AC400004 */  sw         $zero, 4($v0)
/* FDB0 8000F1B0 AC540000 */  sw         $s4, ($v0)
/* FDB4 8000F1B4 8E020000 */  lw         $v0, ($s0)
/* FDB8 8000F1B8 35CE0200 */  ori        $t6, $t6, 0x200
/* FDBC 8000F1BC 24580008 */  addiu      $t8, $v0, 8
/* FDC0 8000F1C0 AE180000 */  sw         $t8, ($s0)
/* FDC4 8000F1C4 AC400004 */  sw         $zero, 4($v0)
/* FDC8 8000F1C8 AC4E0000 */  sw         $t6, ($v0)
/* FDCC 8000F1CC 8E020000 */  lw         $v0, ($s0)
/* FDD0 8000F1D0 3C180003 */  lui        $t8, 3
/* FDD4 8000F1D4 244F0008 */  addiu      $t7, $v0, 8
/* FDD8 8000F1D8 AE0F0000 */  sw         $t7, ($s0)
/* FDDC 8000F1DC 3718C03C */  ori        $t8, $t8, 0xc03c
/* FDE0 8000F1E0 3C19F200 */  lui        $t9, 0xf200
/* FDE4 8000F1E4 AC590000 */  sw         $t9, ($v0)
/* FDE8 8000F1E8 AC580004 */  sw         $t8, 4($v0)
/* FDEC 8000F1EC 8E020000 */  lw         $v0, ($s0)
/* FDF0 8000F1F0 2419140A */  addiu      $t9, $zero, 0x140a
/* FDF4 8000F1F4 244E0008 */  addiu      $t6, $v0, 8
/* FDF8 8000F1F8 AE0E0000 */  sw         $t6, ($s0)
/* FDFC 8000F1FC 3C0FBF00 */  lui        $t7, 0xbf00
/* FE00 8000F200 AC4F0000 */  sw         $t7, ($v0)
/* FE04 8000F204 1000000D */  b          .L8000F23C
/* FE08 8000F208 AC590004 */   sw        $t9, 4($v0)
.L8000F20C:
/* FE0C 8000F20C 8E020000 */  lw         $v0, ($s0)
/* FE10 8000F210 3C0E0600 */  lui        $t6, 0x600
/* FE14 8000F214 24580008 */  addiu      $t8, $v0, 8
/* FE18 8000F218 AE180000 */  sw         $t8, ($s0)
/* FE1C 8000F21C AC4E0000 */  sw         $t6, ($v0)
/* FE20 8000F220 96390082 */  lhu        $t9, 0x82($s1)
/* FE24 8000F224 8FAF0054 */  lw         $t7, 0x54($sp)
/* FE28 8000F228 0019C080 */  sll        $t8, $t9, 2
/* FE2C 8000F22C 01F87021 */  addu       $t6, $t7, $t8
/* FE30 8000F230 8DD90000 */  lw         $t9, ($t6)
/* FE34 8000F234 00000000 */  nop
/* FE38 8000F238 AC590004 */  sw         $t9, 4($v0)
.L8000F23C:
/* FE3C 8000F23C 258C0001 */  addiu      $t4, $t4, 1
/* FE40 8000F240 318FFFFF */  andi       $t7, $t4, 0xffff
/* FE44 8000F244 29E10040 */  slti       $at, $t7, 0x40
/* FE48 8000F248 1420FE40 */  bnez       $at, .L8000EB4C
/* FE4C 8000F24C 01E06025 */   or        $t4, $t7, $zero
/* FE50 8000F250 8FBF004C */  lw         $ra, 0x4c($sp)
/* FE54 8000F254 C7B50018 */  lwc1       $f21, 0x18($sp)
/* FE58 8000F258 C7B4001C */  lwc1       $f20, 0x1c($sp)
/* FE5C 8000F25C C7B70020 */  lwc1       $f23, 0x20($sp)
/* FE60 8000F260 C7B60024 */  lwc1       $f22, 0x24($sp)
/* FE64 8000F264 8FB00028 */  lw         $s0, 0x28($sp)
/* FE68 8000F268 8FB1002C */  lw         $s1, 0x2c($sp)
/* FE6C 8000F26C 8FB20030 */  lw         $s2, 0x30($sp)
/* FE70 8000F270 8FB30034 */  lw         $s3, 0x34($sp)
/* FE74 8000F274 8FB40038 */  lw         $s4, 0x38($sp)
/* FE78 8000F278 8FB5003C */  lw         $s5, 0x3c($sp)
/* FE7C 8000F27C 8FB60040 */  lw         $s6, 0x40($sp)
/* FE80 8000F280 8FB70044 */  lw         $s7, 0x44($sp)
/* FE84 8000F284 8FBE0048 */  lw         $fp, 0x48($sp)
/* FE88 8000F288 03E00008 */  jr         $ra
/* FE8C 8000F28C 27BD0058 */   addiu     $sp, $sp, 0x58
