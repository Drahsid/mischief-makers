.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alHeapDBAlloc
/* 9C730 8009BB30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C734 8009BB34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C738 8009BB38 AFA40020 */  sw         $a0, 0x20($sp)
/* 9C73C 8009BB3C AFA50024 */  sw         $a1, 0x24($sp)
/* 9C740 8009BB40 AFA60028 */  sw         $a2, 0x28($sp)
/* 9C744 8009BB44 AFA7002C */  sw         $a3, 0x2c($sp)
/* 9C748 8009BB48 AFA00018 */  sw         $zero, 0x18($sp)
/* 9C74C 8009BB4C 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9C750 8009BB50 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9C754 8009BB54 2401FFF0 */  addiu      $at, $zero, -0x10
/* 9C758 8009BB58 01CF0019 */  multu      $t6, $t7
/* 9C75C 8009BB5C 0000C012 */  mflo       $t8
/* 9C760 8009BB60 2719000F */  addiu      $t9, $t8, 0xf
/* 9C764 8009BB64 03214024 */  and        $t0, $t9, $at
/* 9C768 8009BB68 AFA8001C */  sw         $t0, 0x1c($sp)
/* 9C76C 8009BB6C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C770 8009BB70 8D2A000C */  lw         $t2, 0xc($t1)
/* 9C774 8009BB74 254B0001 */  addiu      $t3, $t2, 1
/* 9C778 8009BB78 AD2B000C */  sw         $t3, 0xc($t1)
/* 9C77C 8009BB7C 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9C780 8009BB80 258D0020 */  addiu      $t5, $t4, 0x20
/* 9C784 8009BB84 AFAD001C */  sw         $t5, 0x1c($sp)
/* 9C788 8009BB88 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C78C 8009BB8C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9C790 8009BB90 8DCF0004 */  lw         $t7, 4($t6)
/* 9C794 8009BB94 8DC80000 */  lw         $t0, ($t6)
/* 9C798 8009BB98 8DCA0008 */  lw         $t2, 8($t6)
/* 9C79C 8009BB9C 01F8C821 */  addu       $t9, $t7, $t8
/* 9C7A0 8009BBA0 010A5821 */  addu       $t3, $t0, $t2
/* 9C7A4 8009BBA4 0179082B */  sltu       $at, $t3, $t9
/* 9C7A8 8009BBA8 14200028 */  bnez       $at, .L8009BC4C
/* 9C7AC 8009BBAC 00000000 */   nop
/* 9C7B0 8009BBB0 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C7B4 8009BBB4 8D2C0004 */  lw         $t4, 4($t1)
/* 9C7B8 8009BBB8 AFAC0018 */  sw         $t4, 0x18($sp)
/* 9C7BC 8009BBBC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9C7C0 8009BBC0 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9C7C4 8009BBC4 8DAF0004 */  lw         $t7, 4($t5)
/* 9C7C8 8009BBC8 01F87021 */  addu       $t6, $t7, $t8
/* 9C7CC 8009BBCC ADAE0004 */  sw         $t6, 4($t5)
/* 9C7D0 8009BBD0 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9C7D4 8009BBD4 3C082073 */  lui        $t0, 0x2073
/* 9C7D8 8009BBD8 35086A73 */  ori        $t0, $t0, 0x6a73
/* 9C7DC 8009BBDC AD480000 */  sw         $t0, ($t2)
/* 9C7E0 8009BBE0 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9C7E4 8009BBE4 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9C7E8 8009BBE8 AD790004 */  sw         $t9, 4($t3)
/* 9C7EC 8009BBEC 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C7F0 8009BBF0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 9C7F4 8009BBF4 8D2C000C */  lw         $t4, 0xc($t1)
/* 9C7F8 8009BBF8 ADEC0010 */  sw         $t4, 0x10($t7)
/* 9C7FC 8009BBFC 8FB80020 */  lw         $t8, 0x20($sp)
/* 9C800 8009BC00 13000008 */  beqz       $t8, .L8009BC24
/* 9C804 8009BC04 00000000 */   nop
/* 9C808 8009BC08 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9C80C 8009BC0C 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9C810 8009BC10 ADAE0008 */  sw         $t6, 8($t5)
/* 9C814 8009BC14 8FA80024 */  lw         $t0, 0x24($sp)
/* 9C818 8009BC18 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9C81C 8009BC1C 10000007 */  b          .L8009BC3C
/* 9C820 8009BC20 AD48000C */   sw        $t0, 0xc($t2)
.L8009BC24:
/* 9C824 8009BC24 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9C828 8009BC28 3C19800F */  lui        $t9, %hi(D_800ED6E0)
/* 9C82C 8009BC2C 2739D6E0 */  addiu      $t9, $t9, %lo(D_800ED6E0)
/* 9C830 8009BC30 AD790008 */  sw         $t9, 8($t3)
/* 9C834 8009BC34 8FA90018 */  lw         $t1, 0x18($sp)
/* 9C838 8009BC38 AD20000C */  sw         $zero, 0xc($t1)
.L8009BC3C:
/* 9C83C 8009BC3C 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9C840 8009BC40 258F0020 */  addiu      $t7, $t4, 0x20
/* 9C844 8009BC44 10000005 */  b          .L8009BC5C
/* 9C848 8009BC48 AFAF0018 */   sw        $t7, 0x18($sp)
.L8009BC4C:
/* 9C84C 8009BC4C 2404007D */  addiu      $a0, $zero, 0x7d
/* 9C850 8009BC50 24050001 */  addiu      $a1, $zero, 1
/* 9C854 8009BC54 0C0297B4 */  jal        __osError
/* 9C858 8009BC58 8FA60030 */   lw        $a2, 0x30($sp)
.L8009BC5C:
/* 9C85C 8009BC5C 10000003 */  b          .L8009BC6C
/* 9C860 8009BC60 8FA20018 */   lw        $v0, 0x18($sp)
/* 9C864 8009BC64 10000001 */  b          .L8009BC6C
/* 9C868 8009BC68 00000000 */   nop
.L8009BC6C:
/* 9C86C 8009BC6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C870 8009BC70 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9C874 8009BC74 03E00008 */  jr         $ra
/* 9C878 8009BC78 00000000 */   nop
/* 9C87C 8009BC7C 00000000 */  nop
