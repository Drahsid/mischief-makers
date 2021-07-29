.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800838E0
/* 844E0 800838E0 3C038018 */  lui        $v1, %hi(D_80180FD8)
/* 844E4 800838E4 24630FD8 */  addiu      $v1, $v1, %lo(D_80180FD8)
/* 844E8 800838E8 00001025 */  or         $v0, $zero, $zero
/* 844EC 800838EC 24040068 */  addiu      $a0, $zero, 0x68
.L800838F0:
/* 844F0 800838F0 00440019 */  multu      $v0, $a0
/* 844F4 800838F4 24420001 */  addiu      $v0, $v0, 1
/* 844F8 800838F8 0002C400 */  sll        $t8, $v0, 0x10
/* 844FC 800838FC 00181403 */  sra        $v0, $t8, 0x10
/* 84500 80083900 28410028 */  slti       $at, $v0, 0x28
/* 84504 80083904 00007012 */  mflo       $t6
/* 84508 80083908 006E7821 */  addu       $t7, $v1, $t6
/* 8450C 8008390C 1420FFF8 */  bnez       $at, .L800838F0
/* 84510 80083910 A5E00000 */   sh        $zero, ($t7)
/* 84514 80083914 03E00008 */  jr         $ra
/* 84518 80083918 00000000 */   nop

glabel func_8008391C
/* 8451C 8008391C 3C098018 */  lui        $t1, %hi(D_80180FD0)
/* 84520 80083920 25290FD0 */  addiu      $t1, $t1, %lo(D_80180FD0)
/* 84524 80083924 8D220000 */  lw         $v0, ($t1)
/* 84528 80083928 27BDFFF8 */  addiu      $sp, $sp, -8
/* 8452C 8008392C AFB00004 */  sw         $s0, 4($sp)
/* 84530 80083930 28410029 */  slti       $at, $v0, 0x29
/* 84534 80083934 00808025 */  or         $s0, $a0, $zero
/* 84538 80083938 AFA70014 */  sw         $a3, 0x14($sp)
/* 8453C 8008393C 1020002E */  beqz       $at, .L800839F8
/* 84540 80083940 30EE00FF */   andi      $t6, $a3, 0xff
/* 84544 80083944 00027880 */  sll        $t7, $v0, 2
/* 84548 80083948 01E27823 */  subu       $t7, $t7, $v0
/* 8454C 8008394C 000F7880 */  sll        $t7, $t7, 2
/* 84550 80083950 01E27821 */  addu       $t7, $t7, $v0
/* 84554 80083954 3C188018 */  lui        $t8, %hi(D_80180FD8)
/* 84558 80083958 27180FD8 */  addiu      $t8, $t8, %lo(D_80180FD8)
/* 8455C 8008395C 000F78C0 */  sll        $t7, $t7, 3
/* 84560 80083960 01F81821 */  addu       $v1, $t7, $t8
/* 84564 80083964 00026880 */  sll        $t5, $v0, 2
/* 84568 80083968 01A26823 */  subu       $t5, $t5, $v0
/* 8456C 8008396C A06E005C */  sb         $t6, 0x5c($v1)
/* 84570 80083970 000D6880 */  sll        $t5, $t5, 2
/* 84574 80083974 93AA001B */  lbu        $t2, 0x1b($sp)
/* 84578 80083978 93AB001F */  lbu        $t3, 0x1f($sp)
/* 8457C 8008397C 93AC0023 */  lbu        $t4, 0x23($sp)
/* 84580 80083980 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 84584 80083984 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 84588 80083988 01A26821 */  addu       $t5, $t5, $v0
/* 8458C 8008398C 3C0E8018 */  lui        $t6, %hi(D_80180FD8)
/* 84590 80083990 24190001 */  addiu      $t9, $zero, 1
/* 84594 80083994 25CE0FD8 */  addiu      $t6, $t6, %lo(D_80180FD8)
/* 84598 80083998 000D68C0 */  sll        $t5, $t5, 3
/* 8459C 8008399C A4790000 */  sh         $t9, ($v1)
/* 845A0 800839A0 AC650054 */  sw         $a1, 0x54($v1)
/* 845A4 800839A4 AC660058 */  sw         $a2, 0x58($v1)
/* 845A8 800839A8 01AE4021 */  addu       $t0, $t5, $t6
/* 845AC 800839AC 00002025 */  or         $a0, $zero, $zero
/* 845B0 800839B0 A06A005D */  sb         $t2, 0x5d($v1)
/* 845B4 800839B4 A06B005E */  sb         $t3, 0x5e($v1)
/* 845B8 800839B8 A06C005F */  sb         $t4, 0x5f($v1)
/* 845BC 800839BC E4640060 */  swc1       $f4, 0x60($v1)
/* 845C0 800839C0 E4660064 */  swc1       $f6, 0x64($v1)
.L800839C4:
/* 845C4 800839C4 920F0000 */  lbu        $t7, ($s0)
/* 845C8 800839C8 0104C021 */  addu       $t8, $t0, $a0
/* 845CC 800839CC A30F0002 */  sb         $t7, 2($t8)
/* 845D0 800839D0 92190000 */  lbu        $t9, ($s0)
/* 845D4 800839D4 24840001 */  addiu      $a0, $a0, 1
/* 845D8 800839D8 13200005 */  beqz       $t9, .L800839F0
/* 845DC 800839DC 26100001 */   addiu     $s0, $s0, 1
/* 845E0 800839E0 308AFFFF */  andi       $t2, $a0, 0xffff
/* 845E4 800839E4 29410050 */  slti       $at, $t2, 0x50
/* 845E8 800839E8 1420FFF6 */  bnez       $at, .L800839C4
/* 845EC 800839EC 01402025 */   or        $a0, $t2, $zero
.L800839F0:
/* 845F0 800839F0 244B0001 */  addiu      $t3, $v0, 1
/* 845F4 800839F4 AD2B0000 */  sw         $t3, ($t1)
.L800839F8:
/* 845F8 800839F8 8FB00004 */  lw         $s0, 4($sp)
/* 845FC 800839FC 03E00008 */  jr         $ra
/* 84600 80083A00 27BD0008 */   addiu     $sp, $sp, 8

glabel func_80083A04
/* 84604 80083A04 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 84608 80083A08 AFA50084 */  sw         $a1, 0x84($sp)
/* 8460C 80083A0C AFA60088 */  sw         $a2, 0x88($sp)
/* 84610 80083A10 00803025 */  or         $a2, $a0, $zero
/* 84614 80083A14 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84618 80083A18 AFA40080 */  sw         $a0, 0x80($sp)
/* 8461C 80083A1C 3C05800F */  lui        $a1, %hi(D_800ED070)
/* 84620 80083A20 24A5D070 */  addiu      $a1, $a1, %lo(D_800ED070)
/* 84624 80083A24 0C029590 */  jal        sprintf
/* 84628 80083A28 27A40030 */   addiu     $a0, $sp, 0x30
/* 8462C 80083A2C 3C013F80 */  lui        $at, 0x3f80
/* 84630 80083A30 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 84634 80083A34 44810000 */  mtc1       $at, $f0
/* 84638 80083A38 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 8463C 80083A3C 8FA50084 */  lw         $a1, 0x84($sp)
/* 84640 80083A40 8FA60088 */  lw         $a2, 0x88($sp)
/* 84644 80083A44 240E00FF */  addiu      $t6, $zero, 0xff
/* 84648 80083A48 AFAE0018 */  sw         $t6, 0x18($sp)
/* 8464C 80083A4C 27A40030 */  addiu      $a0, $sp, 0x30
/* 84650 80083A50 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 84654 80083A54 E7A00020 */  swc1       $f0, 0x20($sp)
/* 84658 80083A58 AFA70010 */  sw         $a3, 0x10($sp)
/* 8465C 80083A5C 0C020E47 */  jal        func_8008391C
/* 84660 80083A60 AFA70014 */   sw        $a3, 0x14($sp)
/* 84664 80083A64 8FBF002C */  lw         $ra, 0x2c($sp)
/* 84668 80083A68 27BD0080 */  addiu      $sp, $sp, 0x80
/* 8466C 80083A6C 03E00008 */  jr         $ra
/* 84670 80083A70 00000000 */   nop

glabel func_80083A74
/* 84674 80083A74 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 84678 80083A78 AFA50084 */  sw         $a1, 0x84($sp)
/* 8467C 80083A7C AFA60088 */  sw         $a2, 0x88($sp)
/* 84680 80083A80 00803025 */  or         $a2, $a0, $zero
/* 84684 80083A84 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84688 80083A88 AFA40080 */  sw         $a0, 0x80($sp)
/* 8468C 80083A8C 3C05800F */  lui        $a1, %hi(D_800ED078)
/* 84690 80083A90 24A5D078 */  addiu      $a1, $a1, %lo(D_800ED078)
/* 84694 80083A94 0C029590 */  jal        sprintf
/* 84698 80083A98 27A40030 */   addiu     $a0, $sp, 0x30
/* 8469C 80083A9C 3C013F80 */  lui        $at, 0x3f80
/* 846A0 80083AA0 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 846A4 80083AA4 44810000 */  mtc1       $at, $f0
/* 846A8 80083AA8 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 846AC 80083AAC 8FA50084 */  lw         $a1, 0x84($sp)
/* 846B0 80083AB0 8FA60088 */  lw         $a2, 0x88($sp)
/* 846B4 80083AB4 240E00FF */  addiu      $t6, $zero, 0xff
/* 846B8 80083AB8 AFAE0018 */  sw         $t6, 0x18($sp)
/* 846BC 80083ABC 27A40030 */  addiu      $a0, $sp, 0x30
/* 846C0 80083AC0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 846C4 80083AC4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 846C8 80083AC8 AFA70010 */  sw         $a3, 0x10($sp)
/* 846CC 80083ACC 0C020E47 */  jal        func_8008391C
/* 846D0 80083AD0 AFA70014 */   sw        $a3, 0x14($sp)
/* 846D4 80083AD4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 846D8 80083AD8 27BD0080 */  addiu      $sp, $sp, 0x80
/* 846DC 80083ADC 03E00008 */  jr         $ra
/* 846E0 80083AE0 00000000 */   nop

glabel func_80083AE4
/* 846E4 80083AE4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 846E8 80083AE8 46006121 */  cvt.d.s    $f4, $f12
/* 846EC 80083AEC AFA50084 */  sw         $a1, 0x84($sp)
/* 846F0 80083AF0 AFA60088 */  sw         $a2, 0x88($sp)
/* 846F4 80083AF4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 846F8 80083AF8 44062800 */  mfc1       $a2, $f5
/* 846FC 80083AFC 3C05800F */  lui        $a1, %hi(D_800ED080)
/* 84700 80083B00 44072000 */  mfc1       $a3, $f4
/* 84704 80083B04 24A5D080 */  addiu      $a1, $a1, %lo(D_800ED080)
/* 84708 80083B08 0C029590 */  jal        sprintf
/* 8470C 80083B0C 27A40030 */   addiu     $a0, $sp, 0x30
/* 84710 80083B10 3C013F80 */  lui        $at, 0x3f80
/* 84714 80083B14 44810000 */  mtc1       $at, $f0
/* 84718 80083B18 8FA50084 */  lw         $a1, 0x84($sp)
/* 8471C 80083B1C 8FA60088 */  lw         $a2, 0x88($sp)
/* 84720 80083B20 240E00FF */  addiu      $t6, $zero, 0xff
/* 84724 80083B24 240F00FF */  addiu      $t7, $zero, 0xff
/* 84728 80083B28 241800FF */  addiu      $t8, $zero, 0xff
/* 8472C 80083B2C AFB80018 */  sw         $t8, 0x18($sp)
/* 84730 80083B30 AFAF0014 */  sw         $t7, 0x14($sp)
/* 84734 80083B34 AFAE0010 */  sw         $t6, 0x10($sp)
/* 84738 80083B38 27A40030 */  addiu      $a0, $sp, 0x30
/* 8473C 80083B3C 240700FF */  addiu      $a3, $zero, 0xff
/* 84740 80083B40 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 84744 80083B44 0C020E47 */  jal        func_8008391C
/* 84748 80083B48 E7A00020 */   swc1      $f0, 0x20($sp)
/* 8474C 80083B4C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 84750 80083B50 27BD0080 */  addiu      $sp, $sp, 0x80
/* 84754 80083B54 03E00008 */  jr         $ra
/* 84758 80083B58 00000000 */   nop

glabel func_80083B5C
/* 8475C 80083B5C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 84760 80083B60 AFA60090 */  sw         $a2, 0x90($sp)
/* 84764 80083B64 00803825 */  or         $a3, $a0, $zero
/* 84768 80083B68 AFA5008C */  sw         $a1, 0x8c($sp)
/* 8476C 80083B6C 00E03025 */  or         $a2, $a3, $zero
/* 84770 80083B70 AFBF002C */  sw         $ra, 0x2c($sp)
/* 84774 80083B74 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 84778 80083B78 3C05800F */  lui        $a1, %hi(D_800ED088)
/* 8477C 80083B7C 24A5D088 */  addiu      $a1, $a1, %lo(D_800ED088)
/* 84780 80083B80 01C03025 */  or         $a2, $t6, $zero
/* 84784 80083B84 0C029590 */  jal        sprintf
/* 84788 80083B88 27A40034 */   addiu     $a0, $sp, 0x34
/* 8478C 80083B8C 3C013F80 */  lui        $at, 0x3f80
/* 84790 80083B90 44810000 */  mtc1       $at, $f0
/* 84794 80083B94 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84798 80083B98 8FA60090 */  lw         $a2, 0x90($sp)
/* 8479C 80083B9C 240F00FF */  addiu      $t7, $zero, 0xff
/* 847A0 80083BA0 241800FF */  addiu      $t8, $zero, 0xff
/* 847A4 80083BA4 241900FF */  addiu      $t9, $zero, 0xff
/* 847A8 80083BA8 AFB90018 */  sw         $t9, 0x18($sp)
/* 847AC 80083BAC AFB80014 */  sw         $t8, 0x14($sp)
/* 847B0 80083BB0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 847B4 80083BB4 27A40034 */  addiu      $a0, $sp, 0x34
/* 847B8 80083BB8 240700FF */  addiu      $a3, $zero, 0xff
/* 847BC 80083BBC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 847C0 80083BC0 0C020E47 */  jal        func_8008391C
/* 847C4 80083BC4 E7A00020 */   swc1      $f0, 0x20($sp)
/* 847C8 80083BC8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 847CC 80083BCC 27BD0088 */  addiu      $sp, $sp, 0x88
/* 847D0 80083BD0 03E00008 */  jr         $ra
/* 847D4 80083BD4 00000000 */   nop

glabel func_80083BD8
/* 847D8 80083BD8 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 847DC 80083BDC AFA60090 */  sw         $a2, 0x90($sp)
/* 847E0 80083BE0 00803825 */  or         $a3, $a0, $zero
/* 847E4 80083BE4 AFA5008C */  sw         $a1, 0x8c($sp)
/* 847E8 80083BE8 00E03025 */  or         $a2, $a3, $zero
/* 847EC 80083BEC AFBF002C */  sw         $ra, 0x2c($sp)
/* 847F0 80083BF0 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 847F4 80083BF4 3C05800F */  lui        $a1, %hi(D_800ED090)
/* 847F8 80083BF8 24A5D090 */  addiu      $a1, $a1, %lo(D_800ED090)
/* 847FC 80083BFC 01C03025 */  or         $a2, $t6, $zero
/* 84800 80083C00 0C029590 */  jal        sprintf
/* 84804 80083C04 27A40034 */   addiu     $a0, $sp, 0x34
/* 84808 80083C08 3C013F80 */  lui        $at, 0x3f80
/* 8480C 80083C0C 44810000 */  mtc1       $at, $f0
/* 84810 80083C10 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84814 80083C14 8FA60090 */  lw         $a2, 0x90($sp)
/* 84818 80083C18 240F00FF */  addiu      $t7, $zero, 0xff
/* 8481C 80083C1C 241800FF */  addiu      $t8, $zero, 0xff
/* 84820 80083C20 241900FF */  addiu      $t9, $zero, 0xff
/* 84824 80083C24 AFB90018 */  sw         $t9, 0x18($sp)
/* 84828 80083C28 AFB80014 */  sw         $t8, 0x14($sp)
/* 8482C 80083C2C AFAF0010 */  sw         $t7, 0x10($sp)
/* 84830 80083C30 27A40034 */  addiu      $a0, $sp, 0x34
/* 84834 80083C34 240700FF */  addiu      $a3, $zero, 0xff
/* 84838 80083C38 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 8483C 80083C3C 0C020E47 */  jal        func_8008391C
/* 84840 80083C40 E7A00020 */   swc1      $f0, 0x20($sp)
/* 84844 80083C44 8FBF002C */  lw         $ra, 0x2c($sp)
/* 84848 80083C48 27BD0088 */  addiu      $sp, $sp, 0x88
/* 8484C 80083C4C 03E00008 */  jr         $ra
/* 84850 80083C50 00000000 */   nop

glabel func_80083C54
/* 84854 80083C54 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 84858 80083C58 AFA60090 */  sw         $a2, 0x90($sp)
/* 8485C 80083C5C 00803825 */  or         $a3, $a0, $zero
/* 84860 80083C60 AFA5008C */  sw         $a1, 0x8c($sp)
/* 84864 80083C64 00E03025 */  or         $a2, $a3, $zero
/* 84868 80083C68 AFBF002C */  sw         $ra, 0x2c($sp)
/* 8486C 80083C6C 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 84870 80083C70 3C05800F */  lui        $a1, %hi(D_800ED098)
/* 84874 80083C74 24A5D098 */  addiu      $a1, $a1, %lo(D_800ED098)
/* 84878 80083C78 01C03025 */  or         $a2, $t6, $zero
/* 8487C 80083C7C 0C029590 */  jal        sprintf
/* 84880 80083C80 27A40034 */   addiu     $a0, $sp, 0x34
/* 84884 80083C84 3C013F80 */  lui        $at, 0x3f80
/* 84888 80083C88 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 8488C 80083C8C 44810000 */  mtc1       $at, $f0
/* 84890 80083C90 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 84894 80083C94 8FA5008C */  lw         $a1, 0x8c($sp)
/* 84898 80083C98 8FA60090 */  lw         $a2, 0x90($sp)
/* 8489C 80083C9C 240F00FF */  addiu      $t7, $zero, 0xff
/* 848A0 80083CA0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 848A4 80083CA4 27A40034 */  addiu      $a0, $sp, 0x34
/* 848A8 80083CA8 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 848AC 80083CAC E7A00020 */  swc1       $f0, 0x20($sp)
/* 848B0 80083CB0 AFA70010 */  sw         $a3, 0x10($sp)
/* 848B4 80083CB4 0C020E47 */  jal        func_8008391C
/* 848B8 80083CB8 AFA70014 */   sw        $a3, 0x14($sp)
/* 848BC 80083CBC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 848C0 80083CC0 27BD0088 */  addiu      $sp, $sp, 0x88
/* 848C4 80083CC4 03E00008 */  jr         $ra
/* 848C8 80083CC8 00000000 */   nop

glabel func_80083CCC
/* 848CC 80083CCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 848D0 80083CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 848D4 80083CD4 0C0295C8 */  jal        osGetTime
/* 848D8 80083CD8 00000000 */   nop
/* 848DC 80083CDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 848E0 80083CE0 3C018018 */  lui        $at, %hi(D_80182018)
/* 848E4 80083CE4 AC232018 */  sw         $v1, %lo(D_80182018)($at)
/* 848E8 80083CE8 03E00008 */  jr         $ra
/* 848EC 80083CEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80083CF0
/* 848F0 80083CF0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 848F4 80083CF4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 848F8 80083CF8 AFA40088 */  sw         $a0, 0x88($sp)
/* 848FC 80083CFC 0C0295C8 */  jal        osGetTime
/* 84900 80083D00 AFA5008C */   sw        $a1, 0x8c($sp)
/* 84904 80083D04 3C0E8018 */  lui        $t6, %hi(D_80182018)
/* 84908 80083D08 8DCE2018 */  lw         $t6, %lo(D_80182018)($t6)
/* 8490C 80083D0C 3C01800F */  lui        $at, %hi(D_800ED0C0)
/* 84910 80083D10 006E3823 */  subu       $a3, $v1, $t6
/* 84914 80083D14 44872000 */  mtc1       $a3, $f4
/* 84918 80083D18 C429D0C0 */  lwc1       $f9, %lo(D_800ED0C0)($at)
/* 8491C 80083D1C 468021A1 */  cvt.d.w    $f6, $f4
/* 84920 80083D20 C428D0C4 */  lwc1       $f8, -0x2f3c($at)
/* 84924 80083D24 3C01800F */  lui        $at, %hi(D_800ED0C8)
/* 84928 80083D28 46283282 */  mul.d      $f10, $f6, $f8
/* 8492C 80083D2C C431D0C8 */  lwc1       $f17, %lo(D_800ED0C8)($at)
/* 84930 80083D30 C430D0CC */  lwc1       $f16, -0x2f34($at)
/* 84934 80083D34 3C05800F */  lui        $a1, %hi(D_800ED0A0)
/* 84938 80083D38 24A5D0A0 */  addiu      $a1, $a1, %lo(D_800ED0A0)
/* 8493C 80083D3C 46305483 */  div.d      $f18, $f10, $f16
/* 84940 80083D40 27A40030 */  addiu      $a0, $sp, 0x30
/* 84944 80083D44 444FF800 */  cfc1       $t7, $31
/* 84948 80083D48 00000000 */  nop
/* 8494C 80083D4C 35E10003 */  ori        $at, $t7, 3
/* 84950 80083D50 38210002 */  xori       $at, $at, 2
/* 84954 80083D54 44C1F800 */  ctc1       $at, $31
/* 84958 80083D58 00000000 */  nop
/* 8495C 80083D5C 46209124 */  cvt.w.d    $f4, $f18
/* 84960 80083D60 44062000 */  mfc1       $a2, $f4
/* 84964 80083D64 44CFF800 */  ctc1       $t7, $31
/* 84968 80083D68 0C029590 */  jal        sprintf
/* 8496C 80083D6C 00000000 */   nop
/* 84970 80083D70 3C013F80 */  lui        $at, 0x3f80
/* 84974 80083D74 3C07800C */  lui        $a3, %hi(D_800BE6B9)
/* 84978 80083D78 44810000 */  mtc1       $at, $f0
/* 8497C 80083D7C 90E7E6B9 */  lbu        $a3, %lo(D_800BE6B9)($a3)
/* 84980 80083D80 8FA50088 */  lw         $a1, 0x88($sp)
/* 84984 80083D84 8FA6008C */  lw         $a2, 0x8c($sp)
/* 84988 80083D88 240A00FF */  addiu      $t2, $zero, 0xff
/* 8498C 80083D8C AFAA0018 */  sw         $t2, 0x18($sp)
/* 84990 80083D90 27A40030 */  addiu      $a0, $sp, 0x30
/* 84994 80083D94 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 84998 80083D98 E7A00020 */  swc1       $f0, 0x20($sp)
/* 8499C 80083D9C AFA70010 */  sw         $a3, 0x10($sp)
/* 849A0 80083DA0 0C020E47 */  jal        func_8008391C
/* 849A4 80083DA4 AFA70014 */   sw        $a3, 0x14($sp)
/* 849A8 80083DA8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 849AC 80083DAC 27BD0088 */  addiu      $sp, $sp, 0x88
/* 849B0 80083DB0 03E00008 */  jr         $ra
/* 849B4 80083DB4 00000000 */   nop

glabel func_80083DB8
/* 849B8 80083DB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 849BC 80083DBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 849C0 80083DC0 0C0295C8 */  jal        osGetTime
/* 849C4 80083DC4 AFA40020 */   sw        $a0, 0x20($sp)
/* 849C8 80083DC8 3C0E8018 */  lui        $t6, %hi(D_80182018)
/* 849CC 80083DCC 8DCE2018 */  lw         $t6, %lo(D_80182018)($t6)
/* 849D0 80083DD0 97AF0022 */  lhu        $t7, 0x22($sp)
/* 849D4 80083DD4 006E4823 */  subu       $t1, $v1, $t6
/* 849D8 80083DD8 15E00007 */  bnez       $t7, .L80083DF8
/* 849DC 80083DDC 01203825 */   or        $a3, $t1, $zero
/* 849E0 80083DE0 3C04800F */  lui        $a0, %hi(D_800ED0A8)
/* 849E4 80083DE4 2484D0A8 */  addiu      $a0, $a0, %lo(D_800ED0A8)
/* 849E8 80083DE8 0C0296EF */  jal        rmonPrintf
/* 849EC 80083DEC AFA9001C */   sw        $t1, 0x1c($sp)
/* 849F0 80083DF0 8FA7001C */  lw         $a3, 0x1c($sp)
/* 849F4 80083DF4 00000000 */  nop
.L80083DF8:
/* 849F8 80083DF8 44872000 */  mtc1       $a3, $f4
/* 849FC 80083DFC 3C01800F */  lui        $at, %hi(D_800ED0D0)
/* 84A00 80083E00 468021A1 */  cvt.d.w    $f6, $f4
/* 84A04 80083E04 C429D0D0 */  lwc1       $f9, %lo(D_800ED0D0)($at)
/* 84A08 80083E08 C428D0D4 */  lwc1       $f8, -0x2f2c($at)
/* 84A0C 80083E0C 3C01800F */  lui        $at, %hi(D_800ED0D8)
/* 84A10 80083E10 46283282 */  mul.d      $f10, $f6, $f8
/* 84A14 80083E14 C431D0D8 */  lwc1       $f17, %lo(D_800ED0D8)($at)
/* 84A18 80083E18 C430D0DC */  lwc1       $f16, -0x2f24($at)
/* 84A1C 80083E1C 3C04800F */  lui        $a0, %hi(D_800ED0AC)
/* 84A20 80083E20 97A50022 */  lhu        $a1, 0x22($sp)
/* 84A24 80083E24 46305483 */  div.d      $f18, $f10, $f16
/* 84A28 80083E28 2484D0AC */  addiu      $a0, $a0, %lo(D_800ED0AC)
/* 84A2C 80083E2C 444AF800 */  cfc1       $t2, $31
/* 84A30 80083E30 00000000 */  nop
/* 84A34 80083E34 35410003 */  ori        $at, $t2, 3
/* 84A38 80083E38 38210002 */  xori       $at, $at, 2
/* 84A3C 80083E3C 44C1F800 */  ctc1       $at, $31
/* 84A40 80083E40 00000000 */  nop
/* 84A44 80083E44 46209124 */  cvt.w.d    $f4, $f18
/* 84A48 80083E48 44062000 */  mfc1       $a2, $f4
/* 84A4C 80083E4C 44CAF800 */  ctc1       $t2, $31
/* 84A50 80083E50 0C0296EF */  jal        rmonPrintf
/* 84A54 80083E54 00000000 */   nop
/* 84A58 80083E58 0C0295C8 */  jal        osGetTime
/* 84A5C 80083E5C 00000000 */   nop
/* 84A60 80083E60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 84A64 80083E64 3C018018 */  lui        $at, %hi(D_80182018)
/* 84A68 80083E68 AC232018 */  sw         $v1, %lo(D_80182018)($at)
/* 84A6C 80083E6C 03E00008 */  jr         $ra
/* 84A70 80083E70 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80083E74
/* 84A74 80083E74 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 84A78 80083E78 3C0E8013 */  lui        $t6, %hi(D_8012A670)
/* 84A7C 80083E7C 8DCEA670 */  lw         $t6, %lo(D_8012A670)($t6)
/* 84A80 80083E80 AFB30020 */  sw         $s3, 0x20($sp)
/* 84A84 80083E84 27B3008C */  addiu      $s3, $sp, 0x8c
/* 84A88 80083E88 AFBF0024 */  sw         $ra, 0x24($sp)
/* 84A8C 80083E8C AFB2001C */  sw         $s2, 0x1c($sp)
/* 84A90 80083E90 AFB10018 */  sw         $s1, 0x18($sp)
/* 84A94 80083E94 AFB00014 */  sw         $s0, 0x14($sp)
/* 84A98 80083E98 02602025 */  or         $a0, $s3, $zero
/* 84A9C 80083E9C 0C001192 */  jal        func_80004648
/* 84AA0 80083EA0 AFAE008C */   sw        $t6, 0x8c($sp)
/* 84AA4 80083EA4 0C0011EC */  jal        func_800047B0
/* 84AA8 80083EA8 00002025 */   or        $a0, $zero, $zero
/* 84AAC 80083EAC 3C04800C */  lui        $a0, %hi(D_800BE6B9)
/* 84AB0 80083EB0 9084E6B9 */  lbu        $a0, %lo(D_800BE6B9)($a0)
/* 84AB4 80083EB4 240700FF */  addiu      $a3, $zero, 0xff
/* 84AB8 80083EB8 00802825 */  or         $a1, $a0, $zero
/* 84ABC 80083EBC 0C0011DF */  jal        func_8000477C
/* 84AC0 80083EC0 308600FF */   andi      $a2, $a0, 0xff
/* 84AC4 80083EC4 3C013FF0 */  lui        $at, 0x3ff0
/* 84AC8 80083EC8 44816800 */  mtc1       $at, $f13
/* 84ACC 80083ECC 44806000 */  mtc1       $zero, $f12
/* 84AD0 80083ED0 0C0011D8 */  jal        func_80004760
/* 84AD4 80083ED4 46206386 */   mov.d     $f14, $f12
/* 84AD8 80083ED8 0C0011EC */  jal        func_800047B0
/* 84ADC 80083EDC 24040001 */   addiu     $a0, $zero, 1
/* 84AE0 80083EE0 3C108018 */  lui        $s0, %hi(D_80180FD8)
/* 84AE4 80083EE4 3C128018 */  lui        $s2, %hi(D_80182018)
/* 84AE8 80083EE8 26522018 */  addiu      $s2, $s2, %lo(D_80182018)
/* 84AEC 80083EEC 26100FD8 */  addiu      $s0, $s0, %lo(D_80180FD8)
.L80083EF0:
/* 84AF0 80083EF0 960F0000 */  lhu        $t7, ($s0)
/* 84AF4 80083EF4 26110002 */  addiu      $s1, $s0, 2
/* 84AF8 80083EF8 11E0001A */  beqz       $t7, .L80083F64
/* 84AFC 80083EFC 00000000 */   nop
/* 84B00 80083F00 0C029722 */  jal        strlen
/* 84B04 80083F04 02202025 */   or        $a0, $s1, $zero
/* 84B08 80083F08 24440001 */  addiu      $a0, $v0, 1
/* 84B0C 80083F0C 0C0011CE */  jal        func_80004738
/* 84B10 80083F10 24050001 */   addiu     $a1, $zero, 1
/* 84B14 80083F14 8E040054 */  lw         $a0, 0x54($s0)
/* 84B18 80083F18 8E180058 */  lw         $t8, 0x58($s0)
/* 84B1C 80083F1C 24190078 */  addiu      $t9, $zero, 0x78
/* 84B20 80083F20 248400A0 */  addiu      $a0, $a0, 0xa0
/* 84B24 80083F24 0C0011D3 */  jal        func_8000474C
/* 84B28 80083F28 03382823 */   subu      $a1, $t9, $t8
/* 84B2C 80083F2C 9204005C */  lbu        $a0, 0x5c($s0)
/* 84B30 80083F30 9205005D */  lbu        $a1, 0x5d($s0)
/* 84B34 80083F34 9206005E */  lbu        $a2, 0x5e($s0)
/* 84B38 80083F38 9207005F */  lbu        $a3, 0x5f($s0)
/* 84B3C 80083F3C 0C0011DF */  jal        func_8000477C
/* 84B40 80083F40 00000000 */   nop
/* 84B44 80083F44 C6040060 */  lwc1       $f4, 0x60($s0)
/* 84B48 80083F48 C6060064 */  lwc1       $f6, 0x64($s0)
/* 84B4C 80083F4C 46002321 */  cvt.d.s    $f12, $f4
/* 84B50 80083F50 0C0011D8 */  jal        func_80004760
/* 84B54 80083F54 460033A1 */   cvt.d.s   $f14, $f6
/* 84B58 80083F58 02602025 */  or         $a0, $s3, $zero
/* 84B5C 80083F5C 0C001201 */  jal        func_80004804
/* 84B60 80083F60 02202825 */   or        $a1, $s1, $zero
.L80083F64:
/* 84B64 80083F64 26100068 */  addiu      $s0, $s0, 0x68
/* 84B68 80083F68 1612FFE1 */  bne        $s0, $s2, .L80083EF0
/* 84B6C 80083F6C 00000000 */   nop
/* 84B70 80083F70 3C018018 */  lui        $at, %hi(D_80180FD0)
/* 84B74 80083F74 AC200FD0 */  sw         $zero, %lo(D_80180FD0)($at)
/* 84B78 80083F78 0C0011BF */  jal        func_800046FC
/* 84B7C 80083F7C 02602025 */   or        $a0, $s3, $zero
/* 84B80 80083F80 8FA8008C */  lw         $t0, 0x8c($sp)
/* 84B84 80083F84 8FBF0024 */  lw         $ra, 0x24($sp)
/* 84B88 80083F88 3C018013 */  lui        $at, 0x8013
/* 84B8C 80083F8C 8FB00014 */  lw         $s0, 0x14($sp)
/* 84B90 80083F90 8FB10018 */  lw         $s1, 0x18($sp)
/* 84B94 80083F94 8FB2001C */  lw         $s2, 0x1c($sp)
/* 84B98 80083F98 8FB30020 */  lw         $s3, 0x20($sp)
/* 84B9C 80083F9C 27BD0090 */  addiu      $sp, $sp, 0x90
/* 84BA0 80083FA0 03E00008 */  jr         $ra
/* 84BA4 80083FA4 AC28A670 */   sw        $t0, -0x5990($at)
/* 84BA8 80083FA8 00000000 */  nop
/* 84BAC 80083FAC 00000000 */  nop
