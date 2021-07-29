.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateViManager
/* 9A3C0 800997C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9A3C4 800997C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A3C8 800997C8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9A3CC 800997CC 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9A3D0 800997D0 05C00004 */  bltz       $t6, .L800997E4
/* 9A3D4 800997D4 00000000 */   nop
/* 9A3D8 800997D8 29C10100 */  slti       $at, $t6, 0x100
/* 9A3DC 800997DC 14200007 */  bnez       $at, .L800997FC
/* 9A3E0 800997E0 00000000 */   nop
.L800997E4:
/* 9A3E4 800997E4 24040031 */  addiu      $a0, $zero, 0x31
/* 9A3E8 800997E8 24050001 */  addiu      $a1, $zero, 1
/* 9A3EC 800997EC 0C0297B4 */  jal        __osError
/* 9A3F0 800997F0 8FA60030 */   lw        $a2, 0x30($sp)
/* 9A3F4 800997F4 1000006E */  b          .L800999B0
/* 9A3F8 800997F8 00000000 */   nop
.L800997FC:
/* 9A3FC 800997FC 3C0F800F */  lui        $t7, %hi(__osViDevMgr)
/* 9A400 80099800 8DEF9790 */  lw         $t7, %lo(__osViDevMgr)($t7)
/* 9A404 80099804 11E00003 */  beqz       $t7, .L80099814
/* 9A408 80099808 00000000 */   nop
/* 9A40C 8009980C 10000068 */  b          .L800999B0
/* 9A410 80099810 00000000 */   nop
.L80099814:
/* 9A414 80099814 0C029C98 */  jal        __osTimerServicesInit
/* 9A418 80099818 00000000 */   nop
/* 9A41C 8009981C 3C048018 */  lui        $a0, %hi(vimgr_bss_11B0)
/* 9A420 80099820 3C058018 */  lui        $a1, %hi(vimgr_bss_11C8)
/* 9A424 80099824 24A53898 */  addiu      $a1, $a1, %lo(vimgr_bss_11C8)
/* 9A428 80099828 24843880 */  addiu      $a0, $a0, %lo(vimgr_bss_11B0)
/* 9A42C 8009982C 0C026994 */  jal        osCreateMesgQueue
/* 9A430 80099830 24060005 */   addiu     $a2, $zero, 5
/* 9A434 80099834 2418000D */  addiu      $t8, $zero, 0xd
/* 9A438 80099838 3C018018 */  lui        $at, %hi(vimgr_bss_11E0)
/* 9A43C 8009983C A43838B0 */  sh         $t8, %lo(vimgr_bss_11E0)($at)
/* 9A440 80099840 3C018018 */  lui        $at, %hi(vimgr_bss_11E2)
/* 9A444 80099844 A02038B2 */  sb         $zero, %lo(vimgr_bss_11E2)($at)
/* 9A448 80099848 3C018018 */  lui        $at, %hi(vimgr_bss_11E4)
/* 9A44C 8009984C AC2038B4 */  sw         $zero, %lo(vimgr_bss_11E4)($at)
/* 9A450 80099850 2419000E */  addiu      $t9, $zero, 0xe
/* 9A454 80099854 3C018018 */  lui        $at, %hi(vimgr_bss_11F8)
/* 9A458 80099858 A43938C8 */  sh         $t9, %lo(vimgr_bss_11F8)($at)
/* 9A45C 8009985C 3C018018 */  lui        $at, %hi(vimgr_bss_11FA)
/* 9A460 80099860 A02038CA */  sb         $zero, %lo(vimgr_bss_11FA)($at)
/* 9A464 80099864 3C018018 */  lui        $at, %hi(vimgr_bss_11FC)
/* 9A468 80099868 AC2038CC */  sw         $zero, %lo(vimgr_bss_11FC)($at)
/* 9A46C 8009986C 3C058018 */  lui        $a1, %hi(vimgr_bss_11B0)
/* 9A470 80099870 3C068018 */  lui        $a2, %hi(vimgr_bss_11E0)
/* 9A474 80099874 24C638B0 */  addiu      $a2, $a2, %lo(vimgr_bss_11E0)
/* 9A478 80099878 24A53880 */  addiu      $a1, $a1, %lo(vimgr_bss_11B0)
/* 9A47C 8009987C 0C0269BC */  jal        osSetEventMesg
/* 9A480 80099880 24040007 */   addiu     $a0, $zero, 7
/* 9A484 80099884 3C058018 */  lui        $a1, %hi(vimgr_bss_11B0)
/* 9A488 80099888 3C068018 */  lui        $a2, %hi(vimgr_bss_11F8)
/* 9A48C 8009988C 24C638C8 */  addiu      $a2, $a2, %lo(vimgr_bss_11F8)
/* 9A490 80099890 24A53880 */  addiu      $a1, $a1, %lo(vimgr_bss_11B0)
/* 9A494 80099894 0C0269BC */  jal        osSetEventMesg
/* 9A498 80099898 24040003 */   addiu     $a0, $zero, 3
/* 9A49C 8009989C 2408FFFF */  addiu      $t0, $zero, -1
/* 9A4A0 800998A0 AFA80028 */  sw         $t0, 0x28($sp)
/* 9A4A4 800998A4 0C029E04 */  jal        osGetThreadPri
/* 9A4A8 800998A8 00002025 */   or        $a0, $zero, $zero
/* 9A4AC 800998AC AFA20024 */  sw         $v0, 0x24($sp)
/* 9A4B0 800998B0 8FA90024 */  lw         $t1, 0x24($sp)
/* 9A4B4 800998B4 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9A4B8 800998B8 012A082A */  slt        $at, $t1, $t2
/* 9A4BC 800998BC 10200006 */  beqz       $at, .L800998D8
/* 9A4C0 800998C0 00000000 */   nop
/* 9A4C4 800998C4 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9A4C8 800998C8 AFAB0028 */  sw         $t3, 0x28($sp)
/* 9A4CC 800998CC 00002025 */  or         $a0, $zero, $zero
/* 9A4D0 800998D0 0C026918 */  jal        osSetThreadPri
/* 9A4D4 800998D4 8FA50030 */   lw        $a1, 0x30($sp)
.L800998D8:
/* 9A4D8 800998D8 0C0297A4 */  jal        __osDisableInt
/* 9A4DC 800998DC 00000000 */   nop
/* 9A4E0 800998E0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 9A4E4 800998E4 240C0001 */  addiu      $t4, $zero, 1
/* 9A4E8 800998E8 3C01800F */  lui        $at, %hi(__osViDevMgr)
/* 9A4EC 800998EC AC2C9790 */  sw         $t4, %lo(__osViDevMgr)($at)
/* 9A4F0 800998F0 3C0D8018 */  lui        $t5, %hi(vimgr_bss_0000)
/* 9A4F4 800998F4 25AD26D0 */  addiu      $t5, $t5, %lo(vimgr_bss_0000)
/* 9A4F8 800998F8 3C01800F */  lui        $at, %hi(__osViDevMgr+0x4)
/* 9A4FC 800998FC AC2D9794 */  sw         $t5, %lo(__osViDevMgr+0x4)($at)
/* 9A500 80099900 3C0E8018 */  lui        $t6, %hi(vimgr_bss_11B0)
/* 9A504 80099904 25CE3880 */  addiu      $t6, $t6, %lo(vimgr_bss_11B0)
/* 9A508 80099908 3C01800F */  lui        $at, %hi(__osViDevMgr+0x8)
/* 9A50C 8009990C AC2E9798 */  sw         $t6, %lo(__osViDevMgr+0x8)($at)
/* 9A510 80099910 3C0F8018 */  lui        $t7, %hi(vimgr_bss_11B0)
/* 9A514 80099914 25EF3880 */  addiu      $t7, $t7, %lo(vimgr_bss_11B0)
/* 9A518 80099918 3C01800F */  lui        $at, %hi(__osViDevMgr+0xC)
/* 9A51C 8009991C AC2F979C */  sw         $t7, %lo(__osViDevMgr+0xC)($at)
/* 9A520 80099920 3C01800F */  lui        $at, %hi(__osViDevMgr+0x10)
/* 9A524 80099924 AC2097A0 */  sw         $zero, %lo(__osViDevMgr+0x10)($at)
/* 9A528 80099928 3C01800F */  lui        $at, %hi(__osViDevMgr+0x14)
/* 9A52C 8009992C AC2097A4 */  sw         $zero, %lo(__osViDevMgr+0x14)($at)
/* 9A530 80099930 3C01800F */  lui        $at, %hi(__osViDevMgr+0x18)
/* 9A534 80099934 AC2097A8 */  sw         $zero, %lo(__osViDevMgr+0x18)($at)
/* 9A538 80099938 3C188018 */  lui        $t8, %hi(vimgr_bss_01B0)
/* 9A53C 8009993C 8FA80030 */  lw         $t0, 0x30($sp)
/* 9A540 80099940 27182880 */  addiu      $t8, $t8, %lo(vimgr_bss_01B0)
/* 9A544 80099944 27191000 */  addiu      $t9, $t8, 0x1000
/* 9A548 80099948 3C048018 */  lui        $a0, %hi(vimgr_bss_0000)
/* 9A54C 8009994C 3C06800A */  lui        $a2, %hi(viMgrMain)
/* 9A550 80099950 3C07800F */  lui        $a3, %hi(__osViDevMgr)
/* 9A554 80099954 24E79790 */  addiu      $a3, $a3, %lo(__osViDevMgr)
/* 9A558 80099958 24C699C0 */  addiu      $a2, $a2, %lo(viMgrMain)
/* 9A55C 8009995C 248426D0 */  addiu      $a0, $a0, %lo(vimgr_bss_0000)
/* 9A560 80099960 AFB90010 */  sw         $t9, 0x10($sp)
/* 9A564 80099964 00002825 */  or         $a1, $zero, $zero
/* 9A568 80099968 0C02651C */  jal        osCreateThread
/* 9A56C 8009996C AFA80014 */   sw        $t0, 0x14($sp)
/* 9A570 80099970 0C02974C */  jal        __osViInit
/* 9A574 80099974 00000000 */   nop
/* 9A578 80099978 3C048018 */  lui        $a0, %hi(vimgr_bss_0000)
/* 9A57C 8009997C 0C026588 */  jal        osStartThread
/* 9A580 80099980 248426D0 */   addiu     $a0, $a0, %lo(vimgr_bss_0000)
/* 9A584 80099984 0C0297AC */  jal        __osRestoreInt
/* 9A588 80099988 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9A58C 8009998C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9A590 80099990 2401FFFF */  addiu      $at, $zero, -1
/* 9A594 80099994 11210004 */  beq        $t1, $at, .L800999A8
/* 9A598 80099998 00000000 */   nop
/* 9A59C 8009999C 00002025 */  or         $a0, $zero, $zero
/* 9A5A0 800999A0 0C026918 */  jal        osSetThreadPri
/* 9A5A4 800999A4 8FA50028 */   lw        $a1, 0x28($sp)
.L800999A8:
/* 9A5A8 800999A8 10000001 */  b          .L800999B0
/* 9A5AC 800999AC 00000000 */   nop
.L800999B0:
/* 9A5B0 800999B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A5B4 800999B4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9A5B8 800999B8 03E00008 */  jr         $ra
/* 9A5BC 800999BC 00000000 */   nop

glabel viMgrMain
/* 9A5C0 800999C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A5C4 800999C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A5C8 800999C8 AFA40038 */  sw         $a0, 0x38($sp)
/* 9A5CC 800999CC AFB00018 */  sw         $s0, 0x18($sp)
/* 9A5D0 800999D0 AFA0002C */  sw         $zero, 0x2c($sp)
/* 9A5D4 800999D4 AFA00028 */  sw         $zero, 0x28($sp)
/* 9A5D8 800999D8 0C029E10 */  jal        __osViGetCurrentContext
/* 9A5DC 800999DC 00000000 */   nop
/* 9A5E0 800999E0 AFA20034 */  sw         $v0, 0x34($sp)
/* 9A5E4 800999E4 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9A5E8 800999E8 3C018018 */  lui        $at, %hi(D_801838E0)
/* 9A5EC 800999EC 95CF0002 */  lhu        $t7, 2($t6)
/* 9A5F0 800999F0 A42F38E0 */  sh         $t7, %lo(D_801838E0)($at)
/* 9A5F4 800999F4 3C188018 */  lui        $t8, %hi(D_801838E0)
/* 9A5F8 800999F8 971838E0 */  lhu        $t8, %lo(D_801838E0)($t8)
/* 9A5FC 800999FC 17000004 */  bnez       $t8, .L80099A10
/* 9A600 80099A00 00000000 */   nop
/* 9A604 80099A04 24190001 */  addiu      $t9, $zero, 1
/* 9A608 80099A08 3C018018 */  lui        $at, %hi(D_801838E0)
/* 9A60C 80099A0C A43938E0 */  sh         $t9, %lo(D_801838E0)($at)
.L80099A10:
/* 9A610 80099A10 8FA80038 */  lw         $t0, 0x38($sp)
/* 9A614 80099A14 AFA80030 */  sw         $t0, 0x30($sp)
.L80099A18:
/* 9A618 80099A18 8FA90030 */  lw         $t1, 0x30($sp)
/* 9A61C 80099A1C 27A5002C */  addiu      $a1, $sp, 0x2c
/* 9A620 80099A20 24060001 */  addiu      $a2, $zero, 1
/* 9A624 80099A24 0C026B44 */  jal        osRecvMesg
/* 9A628 80099A28 8D24000C */   lw        $a0, 0xc($t1)
/* 9A62C 80099A2C 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9A630 80099A30 2401000D */  addiu      $at, $zero, 0xd
/* 9A634 80099A34 95500000 */  lhu        $s0, ($t2)
/* 9A638 80099A38 12010006 */  beq        $s0, $at, .L80099A54
/* 9A63C 80099A3C 00000000 */   nop
/* 9A640 80099A40 2401000E */  addiu      $at, $zero, 0xe
/* 9A644 80099A44 1201004E */  beq        $s0, $at, .L80099B80
/* 9A648 80099A48 00000000 */   nop
/* 9A64C 80099A4C 10000050 */  b          .L80099B90
/* 9A650 80099A50 00000000 */   nop
.L80099A54:
/* 9A654 80099A54 0C029E18 */  jal        __osViSwapContext
/* 9A658 80099A58 00000000 */   nop
/* 9A65C 80099A5C 3C0B8018 */  lui        $t3, %hi(D_801838E0)
/* 9A660 80099A60 956B38E0 */  lhu        $t3, %lo(D_801838E0)($t3)
/* 9A664 80099A64 3C018018 */  lui        $at, %hi(D_801838E0)
/* 9A668 80099A68 256CFFFF */  addiu      $t4, $t3, -1
/* 9A66C 80099A6C A42C38E0 */  sh         $t4, %lo(D_801838E0)($at)
/* 9A670 80099A70 3C0D8018 */  lui        $t5, %hi(D_801838E0)
/* 9A674 80099A74 95AD38E0 */  lhu        $t5, %lo(D_801838E0)($t5)
/* 9A678 80099A78 15A00011 */  bnez       $t5, .L80099AC0
/* 9A67C 80099A7C 00000000 */   nop
/* 9A680 80099A80 0C029E10 */  jal        __osViGetCurrentContext
/* 9A684 80099A84 00000000 */   nop
/* 9A688 80099A88 AFA20034 */  sw         $v0, 0x34($sp)
/* 9A68C 80099A8C 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9A690 80099A90 8DCF0010 */  lw         $t7, 0x10($t6)
/* 9A694 80099A94 11E00006 */  beqz       $t7, .L80099AB0
/* 9A698 80099A98 00000000 */   nop
/* 9A69C 80099A9C 8FB80034 */  lw         $t8, 0x34($sp)
/* 9A6A0 80099AA0 00003025 */  or         $a2, $zero, $zero
/* 9A6A4 80099AA4 8F040010 */  lw         $a0, 0x10($t8)
/* 9A6A8 80099AA8 0C0278BC */  jal        osSendMesg
/* 9A6AC 80099AAC 8F050014 */   lw        $a1, 0x14($t8)
.L80099AB0:
/* 9A6B0 80099AB0 8FB90034 */  lw         $t9, 0x34($sp)
/* 9A6B4 80099AB4 3C018018 */  lui        $at, %hi(D_801838E0)
/* 9A6B8 80099AB8 97280002 */  lhu        $t0, 2($t9)
/* 9A6BC 80099ABC A42838E0 */  sh         $t0, %lo(D_801838E0)($at)
.L80099AC0:
/* 9A6C0 80099AC0 3C098018 */  lui        $t1, %hi(__osViIntrCount)
/* 9A6C4 80099AC4 8D2956FC */  lw         $t1, %lo(__osViIntrCount)($t1)
/* 9A6C8 80099AC8 3C018018 */  lui        $at, %hi(__osViIntrCount)
/* 9A6CC 80099ACC 252A0001 */  addiu      $t2, $t1, 1
/* 9A6D0 80099AD0 AC2A56FC */  sw         $t2, %lo(__osViIntrCount)($at)
/* 9A6D4 80099AD4 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9A6D8 80099AD8 1160000C */  beqz       $t3, .L80099B0C
/* 9A6DC 80099ADC 00000000 */   nop
/* 9A6E0 80099AE0 0C029EF8 */  jal        osGetCount
/* 9A6E4 80099AE4 00000000 */   nop
/* 9A6E8 80099AE8 AFA20024 */  sw         $v0, 0x24($sp)
/* 9A6EC 80099AEC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9A6F0 80099AF0 240E0000 */  addiu      $t6, $zero, 0
/* 9A6F4 80099AF4 3C018018 */  lui        $at, %hi(D_801856F0)
/* 9A6F8 80099AF8 AC2E56F0 */  sw         $t6, %lo(D_801856F0)($at)
/* 9A6FC 80099AFC 3C018018 */  lui        $at, %hi(D_801856F4)
/* 9A700 80099B00 01807825 */  or         $t7, $t4, $zero
/* 9A704 80099B04 AC2F56F4 */  sw         $t7, %lo(D_801856F4)($at)
/* 9A708 80099B08 AFA00028 */  sw         $zero, 0x28($sp)
.L80099B0C:
/* 9A70C 80099B0C 3C0D8018 */  lui        $t5, %hi(__osBaseCounter)
/* 9A710 80099B10 8DAD56F8 */  lw         $t5, %lo(__osBaseCounter)($t5)
/* 9A714 80099B14 AFAD0024 */  sw         $t5, 0x24($sp)
/* 9A718 80099B18 0C029EF8 */  jal        osGetCount
/* 9A71C 80099B1C 00000000 */   nop
/* 9A720 80099B20 3C018018 */  lui        $at, %hi(__osBaseCounter)
/* 9A724 80099B24 AC2256F8 */  sw         $v0, %lo(__osBaseCounter)($at)
/* 9A728 80099B28 3C188018 */  lui        $t8, %hi(__osBaseCounter)
/* 9A72C 80099B2C 8F1856F8 */  lw         $t8, %lo(__osBaseCounter)($t8)
/* 9A730 80099B30 8FB90024 */  lw         $t9, 0x24($sp)
/* 9A734 80099B34 03194023 */  subu       $t0, $t8, $t9
/* 9A738 80099B38 AFA80024 */  sw         $t0, 0x24($sp)
/* 9A73C 80099B3C 8FA90024 */  lw         $t1, 0x24($sp)
/* 9A740 80099B40 3C0D8018 */  lui        $t5, %hi(D_801856F4)
/* 9A744 80099B44 8DAD56F4 */  lw         $t5, %lo(D_801856F4)($t5)
/* 9A748 80099B48 01205825 */  or         $t3, $t1, $zero
/* 9A74C 80099B4C 3C0C8018 */  lui        $t4, %hi(D_801856F0)
/* 9A750 80099B50 016D7821 */  addu       $t7, $t3, $t5
/* 9A754 80099B54 8D8C56F0 */  lw         $t4, %lo(D_801856F0)($t4)
/* 9A758 80099B58 240A0000 */  addiu      $t2, $zero, 0
/* 9A75C 80099B5C 01ED082B */  sltu       $at, $t7, $t5
/* 9A760 80099B60 002A7021 */  addu       $t6, $at, $t2
/* 9A764 80099B64 3C018018 */  lui        $at, %hi(D_801856F0)
/* 9A768 80099B68 01CC7021 */  addu       $t6, $t6, $t4
/* 9A76C 80099B6C AC2E56F0 */  sw         $t6, %lo(D_801856F0)($at)
/* 9A770 80099B70 3C018018 */  lui        $at, %hi(D_801856F4)
/* 9A774 80099B74 AC2F56F4 */  sw         $t7, %lo(D_801856F4)($at)
/* 9A778 80099B78 10000007 */  b          .L80099B98
/* 9A77C 80099B7C 00000000 */   nop
.L80099B80:
/* 9A780 80099B80 0C029CBE */  jal        __osTimerInterrupt
/* 9A784 80099B84 00000000 */   nop
/* 9A788 80099B88 10000003 */  b          .L80099B98
/* 9A78C 80099B8C 00000000 */   nop
.L80099B90:
/* 9A790 80099B90 10000001 */  b          .L80099B98
/* 9A794 80099B94 00000000 */   nop
.L80099B98:
/* 9A798 80099B98 1000FF9F */  b          .L80099A18
/* 9A79C 80099B9C 00000000 */   nop
/* 9A7A0 80099BA0 10000001 */  b          .L80099BA8
/* 9A7A4 80099BA4 00000000 */   nop
.L80099BA8:
/* 9A7A8 80099BA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9A7AC 80099BAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A7B0 80099BB0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9A7B4 80099BB4 03E00008 */  jr         $ra
/* 9A7B8 80099BB8 00000000 */   nop
/* 9A7BC 80099BBC 00000000 */  nop
/* 9A7C0 80099BC0 00000000 */  nop
/* 9A7C4 80099BC4 00000000 */  nop
/* 9A7C8 80099BC8 00000000 */  nop
/* 9A7CC 80099BCC 00000000 */  nop
/* 9A7D0 80099BD0 00000000 */  nop
/* 9A7D4 80099BD4 00000000 */  nop
/* 9A7D8 80099BD8 00000000 */  nop
/* 9A7DC 80099BDC 00000000 */  nop
/* 9A7E0 80099BE0 00000000 */  nop
/* 9A7E4 80099BE4 00000000 */  nop
/* 9A7E8 80099BE8 00000000 */  nop
/* 9A7EC 80099BEC 00000000 */  nop
/* 9A7F0 80099BF0 00000000 */  nop
/* 9A7F4 80099BF4 00000000 */  nop
/* 9A7F8 80099BF8 00000000 */  nop
/* 9A7FC 80099BFC 00000000 */  nop
/* 9A800 80099C00 00000000 */  nop
/* 9A804 80099C04 00000000 */  nop
/* 9A808 80099C08 00000000 */  nop
/* 9A80C 80099C0C 00000000 */  nop
/* 9A810 80099C10 00000000 */  nop
/* 9A814 80099C14 00000000 */  nop
/* 9A818 80099C18 00000000 */  nop
/* 9A81C 80099C1C 00000000 */  nop
