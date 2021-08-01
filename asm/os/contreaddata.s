.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osContStartReadData
/* 9B680 8009AA80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B684 8009AA84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B688 8009AA88 AFA40020 */  sw         $a0, 0x20($sp)
/* 9B68C 8009AA8C AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B690 8009AA90 0C02AA26 */  jal        __osSiGetAccess
/* 9B694 8009AA94 00000000 */   nop
/* 9B698 8009AA98 3C0E8018 */  lui        $t6, %hi(__osContLastCmd)
/* 9B69C 8009AA9C 91CE5670 */  lbu        $t6, %lo(__osContLastCmd)($t6)
/* 9B6A0 8009AAA0 24010001 */  addiu      $at, $zero, 1
/* 9B6A4 8009AAA4 11C1000C */  beq        $t6, $at, .L8009AAD8
/* 9B6A8 8009AAA8 00000000 */   nop
/* 9B6AC 8009AAAC 0C026B05 */  jal        func_8009AC14
/* 9B6B0 8009AAB0 00000000 */   nop
/* 9B6B4 8009AAB4 3C058018 */  lui        $a1, %hi(__osContPifRam)
/* 9B6B8 8009AAB8 24A55630 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 9B6BC 8009AABC 0C02AA48 */  jal        __osSiRawStartDma
/* 9B6C0 8009AAC0 24040001 */   addiu     $a0, $zero, 1
/* 9B6C4 8009AAC4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B6C8 8009AAC8 8FA40020 */  lw         $a0, 0x20($sp)
/* 9B6CC 8009AACC 00002825 */  or         $a1, $zero, $zero
/* 9B6D0 8009AAD0 0C026B44 */  jal        osRecvMesg
/* 9B6D4 8009AAD4 24060001 */   addiu     $a2, $zero, 1
.L8009AAD8:
/* 9B6D8 8009AAD8 AFA00018 */  sw         $zero, 0x18($sp)
.L8009AADC:
/* 9B6DC 8009AADC 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B6E0 8009AAE0 3C018018 */  lui        $at, %hi(__osContPifRam)
/* 9B6E4 8009AAE4 240F00FF */  addiu      $t7, $zero, 0xff
/* 9B6E8 8009AAE8 0018C880 */  sll        $t9, $t8, 2
/* 9B6EC 8009AAEC 00390821 */  addu       $at, $at, $t9
/* 9B6F0 8009AAF0 AC2F5630 */  sw         $t7, %lo(__osContPifRam)($at)
/* 9B6F4 8009AAF4 8FA80018 */  lw         $t0, 0x18($sp)
/* 9B6F8 8009AAF8 25090001 */  addiu      $t1, $t0, 1
/* 9B6FC 8009AAFC 29210010 */  slti       $at, $t1, 0x10
/* 9B700 8009AB00 1420FFF6 */  bnez       $at, .L8009AADC
/* 9B704 8009AB04 AFA90018 */   sw        $t1, 0x18($sp)
/* 9B708 8009AB08 3C018018 */  lui        $at, %hi(__osContPifRam+0x3C)
/* 9B70C 8009AB0C AC20566C */  sw         $zero, %lo(__osContPifRam+0x3C)($at)
/* 9B710 8009AB10 3C058018 */  lui        $a1, %hi(__osContPifRam)
/* 9B714 8009AB14 24A55630 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 9B718 8009AB18 0C02AA48 */  jal        __osSiRawStartDma
/* 9B71C 8009AB1C 00002025 */   or        $a0, $zero, $zero
/* 9B720 8009AB20 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9B724 8009AB24 240A0001 */  addiu      $t2, $zero, 1
/* 9B728 8009AB28 3C018018 */  lui        $at, %hi(__osContLastCmd)
/* 9B72C 8009AB2C A02A5670 */  sb         $t2, %lo(__osContLastCmd)($at)
/* 9B730 8009AB30 0C02AA39 */  jal        __osSiRelAccess
/* 9B734 8009AB34 00000000 */   nop
/* 9B738 8009AB38 10000003 */  b          .L8009AB48
/* 9B73C 8009AB3C 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9B740 8009AB40 10000001 */  b          .L8009AB48
/* 9B744 8009AB44 00000000 */   nop
.L8009AB48:
/* 9B748 8009AB48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B74C 8009AB4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B750 8009AB50 03E00008 */  jr         $ra
/* 9B754 8009AB54 00000000 */   nop

glabel osContGetReadData
/* 9B758 8009AB58 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B75C 8009AB5C 3C0E8018 */  lui        $t6, %hi(__osContPifRam)
/* 9B760 8009AB60 25CE5630 */  addiu      $t6, $t6, %lo(__osContPifRam)
/* 9B764 8009AB64 AFAE000C */  sw         $t6, 0xc($sp)
/* 9B768 8009AB68 3C0F8018 */  lui        $t7, %hi(__osMaxControllers)
/* 9B76C 8009AB6C 91EF5671 */  lbu        $t7, %lo(__osMaxControllers)($t7)
/* 9B770 8009AB70 AFA00000 */  sw         $zero, ($sp)
/* 9B774 8009AB74 19E00023 */  blez       $t7, .L8009AC04
/* 9B778 8009AB78 00000000 */   nop
.L8009AB7C:
/* 9B77C 8009AB7C 8FB9000C */  lw         $t9, 0xc($sp)
/* 9B780 8009AB80 27B80004 */  addiu      $t8, $sp, 4
/* 9B784 8009AB84 8B210000 */  lwl        $at, ($t9)
/* 9B788 8009AB88 9B210003 */  lwr        $at, 3($t9)
/* 9B78C 8009AB8C AF010000 */  sw         $at, ($t8)
/* 9B790 8009AB90 8B290004 */  lwl        $t1, 4($t9)
/* 9B794 8009AB94 9B290007 */  lwr        $t1, 7($t9)
/* 9B798 8009AB98 AF090004 */  sw         $t1, 4($t8)
/* 9B79C 8009AB9C 93AA0006 */  lbu        $t2, 6($sp)
/* 9B7A0 8009ABA0 314B00C0 */  andi       $t3, $t2, 0xc0
/* 9B7A4 8009ABA4 000B6103 */  sra        $t4, $t3, 4
/* 9B7A8 8009ABA8 A08C0004 */  sb         $t4, 4($a0)
/* 9B7AC 8009ABAC 908D0004 */  lbu        $t5, 4($a0)
/* 9B7B0 8009ABB0 11A00003 */  beqz       $t5, .L8009ABC0
/* 9B7B4 8009ABB4 00000000 */   nop
/* 9B7B8 8009ABB8 10000007 */  b          .L8009ABD8
/* 9B7BC 8009ABBC 00000000 */   nop
.L8009ABC0:
/* 9B7C0 8009ABC0 97AE0008 */  lhu        $t6, 8($sp)
/* 9B7C4 8009ABC4 A48E0000 */  sh         $t6, ($a0)
/* 9B7C8 8009ABC8 83AF000A */  lb         $t7, 0xa($sp)
/* 9B7CC 8009ABCC A08F0002 */  sb         $t7, 2($a0)
/* 9B7D0 8009ABD0 83A8000B */  lb         $t0, 0xb($sp)
/* 9B7D4 8009ABD4 A0880003 */  sb         $t0, 3($a0)
.L8009ABD8:
/* 9B7D8 8009ABD8 8FB80000 */  lw         $t8, ($sp)
/* 9B7DC 8009ABDC 3C0B8018 */  lui        $t3, %hi(__osMaxControllers)
/* 9B7E0 8009ABE0 916B5671 */  lbu        $t3, %lo(__osMaxControllers)($t3)
/* 9B7E4 8009ABE4 8FA9000C */  lw         $t1, 0xc($sp)
/* 9B7E8 8009ABE8 27190001 */  addiu      $t9, $t8, 1
/* 9B7EC 8009ABEC 032B082A */  slt        $at, $t9, $t3
/* 9B7F0 8009ABF0 252A0008 */  addiu      $t2, $t1, 8
/* 9B7F4 8009ABF4 AFAA000C */  sw         $t2, 0xc($sp)
/* 9B7F8 8009ABF8 AFB90000 */  sw         $t9, ($sp)
/* 9B7FC 8009ABFC 1420FFDF */  bnez       $at, .L8009AB7C
/* 9B800 8009AC00 24840006 */   addiu     $a0, $a0, 6
.L8009AC04:
/* 9B804 8009AC04 10000001 */  b          .L8009AC0C
/* 9B808 8009AC08 00000000 */   nop
.L8009AC0C:
/* 9B80C 8009AC0C 03E00008 */  jr         $ra
/* 9B810 8009AC10 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8009AC14
/* 9B814 8009AC14 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9B818 8009AC18 3C0E8018 */  lui        $t6, %hi(__osContPifRam)
/* 9B81C 8009AC1C 25CE5630 */  addiu      $t6, $t6, %lo(__osContPifRam)
/* 9B820 8009AC20 AFAE000C */  sw         $t6, 0xc($sp)
/* 9B824 8009AC24 AFA00000 */  sw         $zero, ($sp)
.L8009AC28:
/* 9B828 8009AC28 8FAF0000 */  lw         $t7, ($sp)
/* 9B82C 8009AC2C 3C018018 */  lui        $at, %hi(__osContPifRam)
/* 9B830 8009AC30 000FC080 */  sll        $t8, $t7, 2
/* 9B834 8009AC34 00380821 */  addu       $at, $at, $t8
/* 9B838 8009AC38 AC205630 */  sw         $zero, %lo(__osContPifRam)($at)
/* 9B83C 8009AC3C 8FB90000 */  lw         $t9, ($sp)
/* 9B840 8009AC40 27280001 */  addiu      $t0, $t9, 1
/* 9B844 8009AC44 29010010 */  slti       $at, $t0, 0x10
/* 9B848 8009AC48 1420FFF7 */  bnez       $at, .L8009AC28
/* 9B84C 8009AC4C AFA80000 */   sw        $t0, ($sp)
/* 9B850 8009AC50 24090001 */  addiu      $t1, $zero, 1
/* 9B854 8009AC54 3C018018 */  lui        $at, %hi(__osContPifRam+0x3C)
/* 9B858 8009AC58 AC29566C */  sw         $t1, %lo(__osContPifRam+0x3C)($at)
/* 9B85C 8009AC5C 240A00FF */  addiu      $t2, $zero, 0xff
/* 9B860 8009AC60 A3AA0004 */  sb         $t2, 4($sp)
/* 9B864 8009AC64 240B0001 */  addiu      $t3, $zero, 1
/* 9B868 8009AC68 A3AB0005 */  sb         $t3, 5($sp)
/* 9B86C 8009AC6C 240C0004 */  addiu      $t4, $zero, 4
/* 9B870 8009AC70 A3AC0006 */  sb         $t4, 6($sp)
/* 9B874 8009AC74 240D0001 */  addiu      $t5, $zero, 1
/* 9B878 8009AC78 A3AD0007 */  sb         $t5, 7($sp)
/* 9B87C 8009AC7C 340EFFFF */  ori        $t6, $zero, 0xffff
/* 9B880 8009AC80 A7AE0008 */  sh         $t6, 8($sp)
/* 9B884 8009AC84 240FFFFF */  addiu      $t7, $zero, -1
/* 9B888 8009AC88 A3AF000A */  sb         $t7, 0xa($sp)
/* 9B88C 8009AC8C 2418FFFF */  addiu      $t8, $zero, -1
/* 9B890 8009AC90 A3B8000B */  sb         $t8, 0xb($sp)
/* 9B894 8009AC94 3C198018 */  lui        $t9, %hi(__osMaxControllers)
/* 9B898 8009AC98 93395671 */  lbu        $t9, %lo(__osMaxControllers)($t9)
/* 9B89C 8009AC9C AFA00000 */  sw         $zero, ($sp)
/* 9B8A0 8009ACA0 1B200014 */  blez       $t9, .L8009ACF4
/* 9B8A4 8009ACA4 00000000 */   nop
.L8009ACA8:
/* 9B8A8 8009ACA8 27A90004 */  addiu      $t1, $sp, 4
/* 9B8AC 8009ACAC 8D210000 */  lw         $at, ($t1)
/* 9B8B0 8009ACB0 8FA8000C */  lw         $t0, 0xc($sp)
/* 9B8B4 8009ACB4 A9010000 */  swl        $at, ($t0)
/* 9B8B8 8009ACB8 B9010003 */  swr        $at, 3($t0)
/* 9B8BC 8009ACBC 8D2B0004 */  lw         $t3, 4($t1)
/* 9B8C0 8009ACC0 A90B0004 */  swl        $t3, 4($t0)
/* 9B8C4 8009ACC4 B90B0007 */  swr        $t3, 7($t0)
/* 9B8C8 8009ACC8 8FAC000C */  lw         $t4, 0xc($sp)
/* 9B8CC 8009ACCC 258D0008 */  addiu      $t5, $t4, 8
/* 9B8D0 8009ACD0 AFAD000C */  sw         $t5, 0xc($sp)
/* 9B8D4 8009ACD4 8FAE0000 */  lw         $t6, ($sp)
/* 9B8D8 8009ACD8 3C188018 */  lui        $t8, %hi(__osMaxControllers)
/* 9B8DC 8009ACDC 93185671 */  lbu        $t8, %lo(__osMaxControllers)($t8)
/* 9B8E0 8009ACE0 25CF0001 */  addiu      $t7, $t6, 1
/* 9B8E4 8009ACE4 AFAF0000 */  sw         $t7, ($sp)
/* 9B8E8 8009ACE8 01F8082A */  slt        $at, $t7, $t8
/* 9B8EC 8009ACEC 1420FFEE */  bnez       $at, .L8009ACA8
/* 9B8F0 8009ACF0 00000000 */   nop
.L8009ACF4:
/* 9B8F4 8009ACF4 8FAA000C */  lw         $t2, 0xc($sp)
/* 9B8F8 8009ACF8 241900FE */  addiu      $t9, $zero, 0xfe
/* 9B8FC 8009ACFC A1590000 */  sb         $t9, ($t2)
/* 9B900 8009AD00 10000001 */  b          .L8009AD08
/* 9B904 8009AD04 00000000 */   nop
.L8009AD08:
/* 9B908 8009AD08 03E00008 */  jr         $ra
/* 9B90C 8009AD0C 27BD0010 */   addiu     $sp, $sp, 0x10
