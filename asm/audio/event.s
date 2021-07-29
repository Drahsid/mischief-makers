.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alEvtqNew
/* AE340 800AD740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE344 800AD744 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE348 800AD748 AFA40020 */  sw         $a0, 0x20($sp)
/* AE34C 800AD74C AFA50024 */  sw         $a1, 0x24($sp)
/* AE350 800AD750 AFA60028 */  sw         $a2, 0x28($sp)
/* AE354 800AD754 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE358 800AD758 ADC00010 */  sw         $zero, 0x10($t6)
/* AE35C 800AD75C 8FAF0020 */  lw         $t7, 0x20($sp)
/* AE360 800AD760 ADE00008 */  sw         $zero, 8($t7)
/* AE364 800AD764 8FB80020 */  lw         $t8, 0x20($sp)
/* AE368 800AD768 AF00000C */  sw         $zero, 0xc($t8)
/* AE36C 800AD76C 8FB90020 */  lw         $t9, 0x20($sp)
/* AE370 800AD770 AF200000 */  sw         $zero, ($t9)
/* AE374 800AD774 8FA80020 */  lw         $t0, 0x20($sp)
/* AE378 800AD778 AD000004 */  sw         $zero, 4($t0)
/* AE37C 800AD77C 8FA90028 */  lw         $t1, 0x28($sp)
/* AE380 800AD780 AFA0001C */  sw         $zero, 0x1c($sp)
/* AE384 800AD784 1920000F */  blez       $t1, .L800AD7C4
/* AE388 800AD788 00000000 */   nop
.L800AD78C:
/* AE38C 800AD78C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AE390 800AD790 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE394 800AD794 8FA50020 */  lw         $a1, 0x20($sp)
/* AE398 800AD798 000A58C0 */  sll        $t3, $t2, 3
/* AE39C 800AD79C 016A5823 */  subu       $t3, $t3, $t2
/* AE3A0 800AD7A0 000B5880 */  sll        $t3, $t3, 2
/* AE3A4 800AD7A4 0C026EAE */  jal        alLink
/* AE3A8 800AD7A8 016C2021 */   addu      $a0, $t3, $t4
/* AE3AC 800AD7AC 8FAD001C */  lw         $t5, 0x1c($sp)
/* AE3B0 800AD7B0 8FAF0028 */  lw         $t7, 0x28($sp)
/* AE3B4 800AD7B4 25AE0001 */  addiu      $t6, $t5, 1
/* AE3B8 800AD7B8 01CF082A */  slt        $at, $t6, $t7
/* AE3BC 800AD7BC 1420FFF3 */  bnez       $at, .L800AD78C
/* AE3C0 800AD7C0 AFAE001C */   sw        $t6, 0x1c($sp)
.L800AD7C4:
/* AE3C4 800AD7C4 10000001 */  b          .L800AD7CC
/* AE3C8 800AD7C8 00000000 */   nop
.L800AD7CC:
/* AE3CC 800AD7CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE3D0 800AD7D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AE3D4 800AD7D4 03E00008 */  jr         $ra
/* AE3D8 800AD7D8 00000000 */   nop

glabel alEvtqNextEvent
/* AE3DC 800AD7DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE3E0 800AD7E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE3E4 800AD7E4 AFA40028 */  sw         $a0, 0x28($sp)
/* AE3E8 800AD7E8 AFA5002C */  sw         $a1, 0x2c($sp)
/* AE3EC 800AD7EC 0C02B9A8 */  jal        osSetIntMask
/* AE3F0 800AD7F0 24040001 */   addiu     $a0, $zero, 1
/* AE3F4 800AD7F4 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE3F8 800AD7F8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE3FC 800AD7FC 8DCF0008 */  lw         $t7, 8($t6)
/* AE400 800AD800 AFAF0024 */  sw         $t7, 0x24($sp)
/* AE404 800AD804 8FB80024 */  lw         $t8, 0x24($sp)
/* AE408 800AD808 1300000F */  beqz       $t8, .L800AD848
/* AE40C 800AD80C 00000000 */   nop
/* AE410 800AD810 0C026EBB */  jal        alUnlink
/* AE414 800AD814 8FA40024 */   lw        $a0, 0x24($sp)
/* AE418 800AD818 8FA40024 */  lw         $a0, 0x24($sp)
/* AE41C 800AD81C 8FA5002C */  lw         $a1, 0x2c($sp)
/* AE420 800AD820 24060010 */  addiu      $a2, $zero, 0x10
/* AE424 800AD824 0C02DF1C */  jal        alCopy
/* AE428 800AD828 2484000C */   addiu     $a0, $a0, 0xc
/* AE42C 800AD82C 8FA40024 */  lw         $a0, 0x24($sp)
/* AE430 800AD830 0C026EAE */  jal        alLink
/* AE434 800AD834 8FA50028 */   lw        $a1, 0x28($sp)
/* AE438 800AD838 8FB90024 */  lw         $t9, 0x24($sp)
/* AE43C 800AD83C 8F280008 */  lw         $t0, 8($t9)
/* AE440 800AD840 10000005 */  b          .L800AD858
/* AE444 800AD844 AFA80020 */   sw        $t0, 0x20($sp)
.L800AD848:
/* AE448 800AD848 8FAA002C */  lw         $t2, 0x2c($sp)
/* AE44C 800AD84C 2409FFFF */  addiu      $t1, $zero, -1
/* AE450 800AD850 A5490000 */  sh         $t1, ($t2)
/* AE454 800AD854 AFA00020 */  sw         $zero, 0x20($sp)
.L800AD858:
/* AE458 800AD858 0C02B9A8 */  jal        osSetIntMask
/* AE45C 800AD85C 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE460 800AD860 10000003 */  b          .L800AD870
/* AE464 800AD864 8FA20020 */   lw        $v0, 0x20($sp)
/* AE468 800AD868 10000001 */  b          .L800AD870
/* AE46C 800AD86C 00000000 */   nop
.L800AD870:
/* AE470 800AD870 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE474 800AD874 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE478 800AD878 03E00008 */  jr         $ra
/* AE47C 800AD87C 00000000 */   nop

glabel alEvtqPostEvent
/* AE480 800AD880 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AE484 800AD884 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE488 800AD888 AFA40030 */  sw         $a0, 0x30($sp)
/* AE48C 800AD88C AFA50034 */  sw         $a1, 0x34($sp)
/* AE490 800AD890 AFA60038 */  sw         $a2, 0x38($sp)
/* AE494 800AD894 AFA00020 */  sw         $zero, 0x20($sp)
/* AE498 800AD898 0C02B9A8 */  jal        osSetIntMask
/* AE49C 800AD89C 24040001 */   addiu     $a0, $zero, 1
/* AE4A0 800AD8A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE4A4 800AD8A4 8FAE0030 */  lw         $t6, 0x30($sp)
/* AE4A8 800AD8A8 8DCF0000 */  lw         $t7, ($t6)
/* AE4AC 800AD8AC AFAF002C */  sw         $t7, 0x2c($sp)
/* AE4B0 800AD8B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE4B4 800AD8B4 17000008 */  bnez       $t8, .L800AD8D8
/* AE4B8 800AD8B8 00000000 */   nop
/* AE4BC 800AD8BC 0C02B9A8 */  jal        osSetIntMask
/* AE4C0 800AD8C0 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE4C4 800AD8C4 2404007C */  addiu      $a0, $zero, 0x7c
/* AE4C8 800AD8C8 0C0297B4 */  jal        __osError
/* AE4CC 800AD8CC 00002825 */   or        $a1, $zero, $zero
/* AE4D0 800AD8D0 1000004A */  b          .L800AD9FC
/* AE4D4 800AD8D4 00000000 */   nop
.L800AD8D8:
/* AE4D8 800AD8D8 0C026EBB */  jal        alUnlink
/* AE4DC 800AD8DC 8FA4002C */   lw        $a0, 0x2c($sp)
/* AE4E0 800AD8E0 8FA5002C */  lw         $a1, 0x2c($sp)
/* AE4E4 800AD8E4 8FA40034 */  lw         $a0, 0x34($sp)
/* AE4E8 800AD8E8 24060010 */  addiu      $a2, $zero, 0x10
/* AE4EC 800AD8EC 0C02DF1C */  jal        alCopy
/* AE4F0 800AD8F0 24A5000C */   addiu     $a1, $a1, 0xc
/* AE4F4 800AD8F4 8FB90038 */  lw         $t9, 0x38($sp)
/* AE4F8 800AD8F8 3C017FFF */  lui        $at, 0x7fff
/* AE4FC 800AD8FC 3421FFFF */  ori        $at, $at, 0xffff
/* AE500 800AD900 17210003 */  bne        $t9, $at, .L800AD910
/* AE504 800AD904 00000000 */   nop
/* AE508 800AD908 2408FFFF */  addiu      $t0, $zero, -1
/* AE50C 800AD90C AFA80020 */  sw         $t0, 0x20($sp)
.L800AD910:
/* AE510 800AD910 8FA90030 */  lw         $t1, 0x30($sp)
/* AE514 800AD914 252A0008 */  addiu      $t2, $t1, 8
/* AE518 800AD918 11400034 */  beqz       $t2, .L800AD9EC
/* AE51C 800AD91C AFAA0024 */   sw        $t2, 0x24($sp)
.L800AD920:
/* AE520 800AD920 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE524 800AD924 8D6C0000 */  lw         $t4, ($t3)
/* AE528 800AD928 15800011 */  bnez       $t4, .L800AD970
/* AE52C 800AD92C 00000000 */   nop
/* AE530 800AD930 8FAD0020 */  lw         $t5, 0x20($sp)
/* AE534 800AD934 11A00004 */  beqz       $t5, .L800AD948
/* AE538 800AD938 00000000 */   nop
/* AE53C 800AD93C 8FAE002C */  lw         $t6, 0x2c($sp)
/* AE540 800AD940 10000004 */  b          .L800AD954
/* AE544 800AD944 ADC00008 */   sw        $zero, 8($t6)
.L800AD948:
/* AE548 800AD948 8FAF0038 */  lw         $t7, 0x38($sp)
/* AE54C 800AD94C 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE550 800AD950 AF0F0008 */  sw         $t7, 8($t8)
.L800AD954:
/* AE554 800AD954 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE558 800AD958 0C026EAE */  jal        alLink
/* AE55C 800AD95C 8FA50024 */   lw        $a1, 0x24($sp)
/* AE560 800AD960 10000022 */  b          .L800AD9EC
/* AE564 800AD964 00000000 */   nop
/* AE568 800AD968 1000001C */  b          .L800AD9DC
/* AE56C 800AD96C 00000000 */   nop
.L800AD970:
/* AE570 800AD970 8FB90024 */  lw         $t9, 0x24($sp)
/* AE574 800AD974 8F280000 */  lw         $t0, ($t9)
/* AE578 800AD978 AFA80028 */  sw         $t0, 0x28($sp)
/* AE57C 800AD97C 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE580 800AD980 8FA90038 */  lw         $t1, 0x38($sp)
/* AE584 800AD984 8D4B0008 */  lw         $t3, 8($t2)
/* AE588 800AD988 012B082A */  slt        $at, $t1, $t3
/* AE58C 800AD98C 1020000E */  beqz       $at, .L800AD9C8
/* AE590 800AD990 00000000 */   nop
/* AE594 800AD994 8FAC0038 */  lw         $t4, 0x38($sp)
/* AE598 800AD998 8FAD002C */  lw         $t5, 0x2c($sp)
/* AE59C 800AD99C ADAC0008 */  sw         $t4, 8($t5)
/* AE5A0 800AD9A0 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE5A4 800AD9A4 8FB80038 */  lw         $t8, 0x38($sp)
/* AE5A8 800AD9A8 8DCF0008 */  lw         $t7, 8($t6)
/* AE5AC 800AD9AC 01F8C823 */  subu       $t9, $t7, $t8
/* AE5B0 800AD9B0 ADD90008 */  sw         $t9, 8($t6)
/* AE5B4 800AD9B4 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE5B8 800AD9B8 0C026EAE */  jal        alLink
/* AE5BC 800AD9BC 8FA50024 */   lw        $a1, 0x24($sp)
/* AE5C0 800AD9C0 1000000A */  b          .L800AD9EC
/* AE5C4 800AD9C4 00000000 */   nop
.L800AD9C8:
/* AE5C8 800AD9C8 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE5CC 800AD9CC 8FA80038 */  lw         $t0, 0x38($sp)
/* AE5D0 800AD9D0 8D490008 */  lw         $t1, 8($t2)
/* AE5D4 800AD9D4 01095823 */  subu       $t3, $t0, $t1
/* AE5D8 800AD9D8 AFAB0038 */  sw         $t3, 0x38($sp)
.L800AD9DC:
/* AE5DC 800AD9DC 8FAC0024 */  lw         $t4, 0x24($sp)
/* AE5E0 800AD9E0 8D8D0000 */  lw         $t5, ($t4)
/* AE5E4 800AD9E4 15A0FFCE */  bnez       $t5, .L800AD920
/* AE5E8 800AD9E8 AFAD0024 */   sw        $t5, 0x24($sp)
.L800AD9EC:
/* AE5EC 800AD9EC 0C02B9A8 */  jal        osSetIntMask
/* AE5F0 800AD9F0 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE5F4 800AD9F4 10000001 */  b          .L800AD9FC
/* AE5F8 800AD9F8 00000000 */   nop
.L800AD9FC:
/* AE5FC 800AD9FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE600 800ADA00 27BD0030 */  addiu      $sp, $sp, 0x30
/* AE604 800ADA04 03E00008 */  jr         $ra
/* AE608 800ADA08 00000000 */   nop

glabel alEvtqFlush
/* AE60C 800ADA0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE610 800ADA10 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE614 800ADA14 AFA40028 */  sw         $a0, 0x28($sp)
/* AE618 800ADA18 0C02B9A8 */  jal        osSetIntMask
/* AE61C 800ADA1C 24040001 */   addiu     $a0, $zero, 1
/* AE620 800ADA20 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE624 800ADA24 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE628 800ADA28 8DCF0008 */  lw         $t7, 8($t6)
/* AE62C 800ADA2C AFAF0024 */  sw         $t7, 0x24($sp)
/* AE630 800ADA30 8FB80024 */  lw         $t8, 0x24($sp)
/* AE634 800ADA34 1300000E */  beqz       $t8, .L800ADA70
/* AE638 800ADA38 00000000 */   nop
.L800ADA3C:
/* AE63C 800ADA3C 8FB90024 */  lw         $t9, 0x24($sp)
/* AE640 800ADA40 8F280000 */  lw         $t0, ($t9)
/* AE644 800ADA44 AFA80020 */  sw         $t0, 0x20($sp)
/* AE648 800ADA48 0C026EBB */  jal        alUnlink
/* AE64C 800ADA4C 8FA40024 */   lw        $a0, 0x24($sp)
/* AE650 800ADA50 8FA40024 */  lw         $a0, 0x24($sp)
/* AE654 800ADA54 0C026EAE */  jal        alLink
/* AE658 800ADA58 8FA50028 */   lw        $a1, 0x28($sp)
/* AE65C 800ADA5C 8FA90020 */  lw         $t1, 0x20($sp)
/* AE660 800ADA60 AFA90024 */  sw         $t1, 0x24($sp)
/* AE664 800ADA64 8FAA0024 */  lw         $t2, 0x24($sp)
/* AE668 800ADA68 1540FFF4 */  bnez       $t2, .L800ADA3C
/* AE66C 800ADA6C 00000000 */   nop
.L800ADA70:
/* AE670 800ADA70 0C02B9A8 */  jal        osSetIntMask
/* AE674 800ADA74 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE678 800ADA78 10000001 */  b          .L800ADA80
/* AE67C 800ADA7C 00000000 */   nop
.L800ADA80:
/* AE680 800ADA80 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE684 800ADA84 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE688 800ADA88 03E00008 */  jr         $ra
/* AE68C 800ADA8C 00000000 */   nop

glabel alEvtqFlushType
/* AE690 800ADA90 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AE694 800ADA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE698 800ADA98 AFA40030 */  sw         $a0, 0x30($sp)
/* AE69C 800ADA9C AFA50034 */  sw         $a1, 0x34($sp)
/* AE6A0 800ADAA0 0C02B9A8 */  jal        osSetIntMask
/* AE6A4 800ADAA4 24040001 */   addiu     $a0, $zero, 1
/* AE6A8 800ADAA8 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE6AC 800ADAAC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AE6B0 800ADAB0 8DCF0008 */  lw         $t7, 8($t6)
/* AE6B4 800ADAB4 AFAF002C */  sw         $t7, 0x2c($sp)
/* AE6B8 800ADAB8 8FB8002C */  lw         $t8, 0x2c($sp)
/* AE6BC 800ADABC 13000020 */  beqz       $t8, .L800ADB40
/* AE6C0 800ADAC0 00000000 */   nop
.L800ADAC4:
/* AE6C4 800ADAC4 8FB9002C */  lw         $t9, 0x2c($sp)
/* AE6C8 800ADAC8 8F280000 */  lw         $t0, ($t9)
/* AE6CC 800ADACC AFA80028 */  sw         $t0, 0x28($sp)
/* AE6D0 800ADAD0 8FA9002C */  lw         $t1, 0x2c($sp)
/* AE6D4 800ADAD4 AFA90024 */  sw         $t1, 0x24($sp)
/* AE6D8 800ADAD8 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE6DC 800ADADC AFAA0020 */  sw         $t2, 0x20($sp)
/* AE6E0 800ADAE0 8FAB0024 */  lw         $t3, 0x24($sp)
/* AE6E4 800ADAE4 87AD0036 */  lh         $t5, 0x36($sp)
/* AE6E8 800ADAE8 856C000C */  lh         $t4, 0xc($t3)
/* AE6EC 800ADAEC 158D000F */  bne        $t4, $t5, .L800ADB2C
/* AE6F0 800ADAF0 00000000 */   nop
/* AE6F4 800ADAF4 8FAE0020 */  lw         $t6, 0x20($sp)
/* AE6F8 800ADAF8 11C00007 */  beqz       $t6, .L800ADB18
/* AE6FC 800ADAFC 00000000 */   nop
/* AE700 800ADB00 8FAF0020 */  lw         $t7, 0x20($sp)
/* AE704 800ADB04 8FB90024 */  lw         $t9, 0x24($sp)
/* AE708 800ADB08 8DF80008 */  lw         $t8, 8($t7)
/* AE70C 800ADB0C 8F280008 */  lw         $t0, 8($t9)
/* AE710 800ADB10 03084821 */  addu       $t1, $t8, $t0
/* AE714 800ADB14 ADE90008 */  sw         $t1, 8($t7)
.L800ADB18:
/* AE718 800ADB18 0C026EBB */  jal        alUnlink
/* AE71C 800ADB1C 8FA4002C */   lw        $a0, 0x2c($sp)
/* AE720 800ADB20 8FA4002C */  lw         $a0, 0x2c($sp)
/* AE724 800ADB24 0C026EAE */  jal        alLink
/* AE728 800ADB28 8FA50030 */   lw        $a1, 0x30($sp)
.L800ADB2C:
/* AE72C 800ADB2C 8FAA0028 */  lw         $t2, 0x28($sp)
/* AE730 800ADB30 AFAA002C */  sw         $t2, 0x2c($sp)
/* AE734 800ADB34 8FAB002C */  lw         $t3, 0x2c($sp)
/* AE738 800ADB38 1560FFE2 */  bnez       $t3, .L800ADAC4
/* AE73C 800ADB3C 00000000 */   nop
.L800ADB40:
/* AE740 800ADB40 0C02B9A8 */  jal        osSetIntMask
/* AE744 800ADB44 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE748 800ADB48 10000001 */  b          .L800ADB50
/* AE74C 800ADB4C 00000000 */   nop
.L800ADB50:
/* AE750 800ADB50 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE754 800ADB54 27BD0030 */  addiu      $sp, $sp, 0x30
/* AE758 800ADB58 03E00008 */  jr         $ra
/* AE75C 800ADB5C 00000000 */   nop
