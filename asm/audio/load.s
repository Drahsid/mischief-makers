.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alAdpcmPull
/* B0110 800AF510 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B0114 800AF514 AFBF002C */  sw         $ra, 0x2c($sp)
/* B0118 800AF518 AFA40080 */  sw         $a0, 0x80($sp)
/* B011C 800AF51C AFA50084 */  sw         $a1, 0x84($sp)
/* B0120 800AF520 AFA60088 */  sw         $a2, 0x88($sp)
/* B0124 800AF524 AFA7008C */  sw         $a3, 0x8c($sp)
/* B0128 800AF528 AFB00028 */  sw         $s0, 0x28($sp)
/* B012C 800AF52C 8FAE0090 */  lw         $t6, 0x90($sp)
/* B0130 800AF530 AFAE007C */  sw         $t6, 0x7c($sp)
/* B0134 800AF534 AFA0004C */  sw         $zero, 0x4c($sp)
/* B0138 800AF538 AFA00048 */  sw         $zero, 0x48($sp)
/* B013C 800AF53C 8FAF0080 */  lw         $t7, 0x80($sp)
/* B0140 800AF540 AFAF0044 */  sw         $t7, 0x44($sp)
/* B0144 800AF544 8FB80088 */  lw         $t8, 0x88($sp)
/* B0148 800AF548 17000003 */  bnez       $t8, .L800AF558
/* B014C 800AF54C 00000000 */   nop
/* B0150 800AF550 10000194 */  b          .L800AFBA4
/* B0154 800AF554 8FA2007C */   lw        $v0, 0x7c($sp)
.L800AF558:
/* B0158 800AF558 A7A0007A */  sh         $zero, 0x7a($sp)
/* B015C 800AF55C 8FB9007C */  lw         $t9, 0x7c($sp)
/* B0160 800AF560 27280008 */  addiu      $t0, $t9, 8
/* B0164 800AF564 AFA8007C */  sw         $t0, 0x7c($sp)
/* B0168 800AF568 AFB90040 */  sw         $t9, 0x40($sp)
/* B016C 800AF56C 8FA90044 */  lw         $t1, 0x44($sp)
/* B0170 800AF570 3C0100FF */  lui        $at, 0xff
/* B0174 800AF574 3421FFFF */  ori        $at, $at, 0xffff
/* B0178 800AF578 8D2A002C */  lw         $t2, 0x2c($t1)
/* B017C 800AF57C 8FAD0040 */  lw         $t5, 0x40($sp)
/* B0180 800AF580 01415824 */  and        $t3, $t2, $at
/* B0184 800AF584 3C010B00 */  lui        $at, 0xb00
/* B0188 800AF588 01616025 */  or         $t4, $t3, $at
/* B018C 800AF58C ADAC0000 */  sw         $t4, ($t5)
/* B0190 800AF590 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0194 800AF594 8FA90040 */  lw         $t1, 0x40($sp)
/* B0198 800AF598 3C011FFF */  lui        $at, 0x1fff
/* B019C 800AF59C 8DCF0028 */  lw         $t7, 0x28($t6)
/* B01A0 800AF5A0 3421FFFF */  ori        $at, $at, 0xffff
/* B01A4 800AF5A4 8DF80010 */  lw         $t8, 0x10($t7)
/* B01A8 800AF5A8 27190008 */  addiu      $t9, $t8, 8
/* B01AC 800AF5AC 03214024 */  and        $t0, $t9, $at
/* B01B0 800AF5B0 AD280004 */  sw         $t0, 4($t1)
/* B01B4 800AF5B4 8FAA0044 */  lw         $t2, 0x44($sp)
/* B01B8 800AF5B8 8FAC0088 */  lw         $t4, 0x88($sp)
/* B01BC 800AF5BC 8D4B0038 */  lw         $t3, 0x38($t2)
/* B01C0 800AF5C0 8D4E0020 */  lw         $t6, 0x20($t2)
/* B01C4 800AF5C4 016C6821 */  addu       $t5, $t3, $t4
/* B01C8 800AF5C8 01CD802B */  sltu       $s0, $t6, $t5
/* B01CC 800AF5CC 12000004 */  beqz       $s0, .L800AF5E0
/* B01D0 800AF5D0 00000000 */   nop
/* B01D4 800AF5D4 8D500024 */  lw         $s0, 0x24($t2)
/* B01D8 800AF5D8 0010782B */  sltu       $t7, $zero, $s0
/* B01DC 800AF5DC 01E08025 */  or         $s0, $t7, $zero
.L800AF5E0:
/* B01E0 800AF5E0 AFB00048 */  sw         $s0, 0x48($sp)
/* B01E4 800AF5E4 8FB80048 */  lw         $t8, 0x48($sp)
/* B01E8 800AF5E8 13000007 */  beqz       $t8, .L800AF608
/* B01EC 800AF5EC 00000000 */   nop
/* B01F0 800AF5F0 8FB90044 */  lw         $t9, 0x44($sp)
/* B01F4 800AF5F4 8F280020 */  lw         $t0, 0x20($t9)
/* B01F8 800AF5F8 8F290038 */  lw         $t1, 0x38($t9)
/* B01FC 800AF5FC 01095823 */  subu       $t3, $t0, $t1
/* B0200 800AF600 10000003 */  b          .L800AF610
/* B0204 800AF604 AFAB005C */   sw        $t3, 0x5c($sp)
.L800AF608:
/* B0208 800AF608 8FAC0088 */  lw         $t4, 0x88($sp)
/* B020C 800AF60C AFAC005C */  sw         $t4, 0x5c($sp)
.L800AF610:
/* B0210 800AF610 8FAD0044 */  lw         $t5, 0x44($sp)
/* B0214 800AF614 8DAE003C */  lw         $t6, 0x3c($t5)
/* B0218 800AF618 11C00007 */  beqz       $t6, .L800AF638
/* B021C 800AF61C 00000000 */   nop
/* B0220 800AF620 8FAA0044 */  lw         $t2, 0x44($sp)
/* B0224 800AF624 24180010 */  addiu      $t8, $zero, 0x10
/* B0228 800AF628 8D4F003C */  lw         $t7, 0x3c($t2)
/* B022C 800AF62C 030FC823 */  subu       $t9, $t8, $t7
/* B0230 800AF630 10000002 */  b          .L800AF63C
/* B0234 800AF634 AFB90054 */   sw        $t9, 0x54($sp)
.L800AF638:
/* B0238 800AF638 AFA00054 */  sw         $zero, 0x54($sp)
.L800AF63C:
/* B023C 800AF63C 8FA8005C */  lw         $t0, 0x5c($sp)
/* B0240 800AF640 8FA90054 */  lw         $t1, 0x54($sp)
/* B0244 800AF644 01095823 */  subu       $t3, $t0, $t1
/* B0248 800AF648 AFAB0074 */  sw         $t3, 0x74($sp)
/* B024C 800AF64C 8FAC0074 */  lw         $t4, 0x74($sp)
/* B0250 800AF650 05810002 */  bgez       $t4, .L800AF65C
/* B0254 800AF654 00000000 */   nop
/* B0258 800AF658 AFA00074 */  sw         $zero, 0x74($sp)
.L800AF65C:
/* B025C 800AF65C 8FAD0074 */  lw         $t5, 0x74($sp)
/* B0260 800AF660 25AE000F */  addiu      $t6, $t5, 0xf
/* B0264 800AF664 000E5103 */  sra        $t2, $t6, 4
/* B0268 800AF668 AFAA0070 */  sw         $t2, 0x70($sp)
/* B026C 800AF66C 8FB80070 */  lw         $t8, 0x70($sp)
/* B0270 800AF670 001878C0 */  sll        $t7, $t8, 3
/* B0274 800AF674 01F87821 */  addu       $t7, $t7, $t8
/* B0278 800AF678 AFAF006C */  sw         $t7, 0x6c($sp)
/* B027C 800AF67C 8FB90048 */  lw         $t9, 0x48($sp)
/* B0280 800AF680 132000B5 */  beqz       $t9, .L800AF958
/* B0284 800AF684 00000000 */   nop
/* B0288 800AF688 8FA90084 */  lw         $t1, 0x84($sp)
/* B028C 800AF68C 87AC007A */  lh         $t4, 0x7a($sp)
/* B0290 800AF690 8FA80044 */  lw         $t0, 0x44($sp)
/* B0294 800AF694 852B0000 */  lh         $t3, ($t1)
/* B0298 800AF698 AFAC0014 */  sw         $t4, 0x14($sp)
/* B029C 800AF69C 8FA4007C */  lw         $a0, 0x7c($sp)
/* B02A0 800AF6A0 AFAB0010 */  sw         $t3, 0x10($sp)
/* B02A4 800AF6A4 8D0D0040 */  lw         $t5, 0x40($t0)
/* B02A8 800AF6A8 8FA60074 */  lw         $a2, 0x74($sp)
/* B02AC 800AF6AC 8FA7006C */  lw         $a3, 0x6c($sp)
/* B02B0 800AF6B0 01002825 */  or         $a1, $t0, $zero
/* B02B4 800AF6B4 0C02C141 */  jal        func_800B0504
/* B02B8 800AF6B8 AFAD0018 */   sw        $t5, 0x18($sp)
/* B02BC 800AF6BC AFA2007C */  sw         $v0, 0x7c($sp)
/* B02C0 800AF6C0 8FAE0044 */  lw         $t6, 0x44($sp)
/* B02C4 800AF6C4 8DCA003C */  lw         $t2, 0x3c($t6)
/* B02C8 800AF6C8 11400009 */  beqz       $t2, .L800AF6F0
/* B02CC 800AF6CC 00000000 */   nop
/* B02D0 800AF6D0 8FB90044 */  lw         $t9, 0x44($sp)
/* B02D4 800AF6D4 8FB80084 */  lw         $t8, 0x84($sp)
/* B02D8 800AF6D8 8F29003C */  lw         $t1, 0x3c($t9)
/* B02DC 800AF6DC 870F0000 */  lh         $t7, ($t8)
/* B02E0 800AF6E0 00095840 */  sll        $t3, $t1, 1
/* B02E4 800AF6E4 01EB6021 */  addu       $t4, $t7, $t3
/* B02E8 800AF6E8 10000005 */  b          .L800AF700
/* B02EC 800AF6EC A70C0000 */   sh        $t4, ($t8)
.L800AF6F0:
/* B02F0 800AF6F0 8FA80084 */  lw         $t0, 0x84($sp)
/* B02F4 800AF6F4 850D0000 */  lh         $t5, ($t0)
/* B02F8 800AF6F8 25AE0020 */  addiu      $t6, $t5, 0x20
/* B02FC 800AF6FC A50E0000 */  sh         $t6, ($t0)
.L800AF700:
/* B0300 800AF700 8FAA0044 */  lw         $t2, 0x44($sp)
/* B0304 800AF704 8D59001C */  lw         $t9, 0x1c($t2)
/* B0308 800AF708 3329000F */  andi       $t1, $t9, 0xf
/* B030C 800AF70C AD49003C */  sw         $t1, 0x3c($t2)
/* B0310 800AF710 8FAF0044 */  lw         $t7, 0x44($sp)
/* B0314 800AF714 8DEB0028 */  lw         $t3, 0x28($t7)
/* B0318 800AF718 8DF8001C */  lw         $t8, 0x1c($t7)
/* B031C 800AF71C 8D6C0000 */  lw         $t4, ($t3)
/* B0320 800AF720 00186902 */  srl        $t5, $t8, 4
/* B0324 800AF724 000D70C0 */  sll        $t6, $t5, 3
/* B0328 800AF728 01CD7021 */  addu       $t6, $t6, $t5
/* B032C 800AF72C 018E4021 */  addu       $t0, $t4, $t6
/* B0330 800AF730 25190009 */  addiu      $t9, $t0, 9
/* B0334 800AF734 ADF90044 */  sw         $t9, 0x44($t7)
/* B0338 800AF738 8FA90044 */  lw         $t1, 0x44($sp)
/* B033C 800AF73C 8D2A001C */  lw         $t2, 0x1c($t1)
/* B0340 800AF740 AD2A0038 */  sw         $t2, 0x38($t1)
/* B0344 800AF744 8FAB0084 */  lw         $t3, 0x84($sp)
/* B0348 800AF748 85780000 */  lh         $t8, ($t3)
/* B034C 800AF74C AFB80050 */  sw         $t8, 0x50($sp)
/* B0350 800AF750 8FAD0088 */  lw         $t5, 0x88($sp)
/* B0354 800AF754 8FAC005C */  lw         $t4, 0x5c($sp)
/* B0358 800AF758 018D082A */  slt        $at, $t4, $t5
/* B035C 800AF75C 1020006A */  beqz       $at, .L800AF908
/* B0360 800AF760 00000000 */   nop
.L800AF764:
/* B0364 800AF764 8FAE0088 */  lw         $t6, 0x88($sp)
/* B0368 800AF768 8FA8005C */  lw         $t0, 0x5c($sp)
/* B036C 800AF76C 01C8C823 */  subu       $t9, $t6, $t0
/* B0370 800AF770 AFB90088 */  sw         $t9, 0x88($sp)
/* B0374 800AF774 8FAF0070 */  lw         $t7, 0x70($sp)
/* B0378 800AF778 8FAB0050 */  lw         $t3, 0x50($sp)
/* B037C 800AF77C 2401FFE0 */  addiu      $at, $zero, -0x20
/* B0380 800AF780 25EA0001 */  addiu      $t2, $t7, 1
/* B0384 800AF784 000A4940 */  sll        $t1, $t2, 5
/* B0388 800AF788 012BC021 */  addu       $t8, $t1, $t3
/* B038C 800AF78C 03016824 */  and        $t5, $t8, $at
/* B0390 800AF790 AFAD0058 */  sw         $t5, 0x58($sp)
/* B0394 800AF794 8FAE005C */  lw         $t6, 0x5c($sp)
/* B0398 800AF798 8FAC0050 */  lw         $t4, 0x50($sp)
/* B039C 800AF79C 000E4040 */  sll        $t0, $t6, 1
/* B03A0 800AF7A0 0188C821 */  addu       $t9, $t4, $t0
/* B03A4 800AF7A4 AFB90050 */  sw         $t9, 0x50($sp)
/* B03A8 800AF7A8 8FAF0044 */  lw         $t7, 0x44($sp)
/* B03AC 800AF7AC 2401FFFF */  addiu      $at, $zero, -1
/* B03B0 800AF7B0 8DEA0024 */  lw         $t2, 0x24($t7)
/* B03B4 800AF7B4 11410007 */  beq        $t2, $at, .L800AF7D4
/* B03B8 800AF7B8 00000000 */   nop
/* B03BC 800AF7BC 11400005 */  beqz       $t2, .L800AF7D4
/* B03C0 800AF7C0 00000000 */   nop
/* B03C4 800AF7C4 8FA90044 */  lw         $t1, 0x44($sp)
/* B03C8 800AF7C8 8D2B0024 */  lw         $t3, 0x24($t1)
/* B03CC 800AF7CC 2578FFFF */  addiu      $t8, $t3, -1
/* B03D0 800AF7D0 AD380024 */  sw         $t8, 0x24($t1)
.L800AF7D4:
/* B03D4 800AF7D4 8FAE0044 */  lw         $t6, 0x44($sp)
/* B03D8 800AF7D8 8FAD0088 */  lw         $t5, 0x88($sp)
/* B03DC 800AF7DC 8DCC0020 */  lw         $t4, 0x20($t6)
/* B03E0 800AF7E0 8DC8001C */  lw         $t0, 0x1c($t6)
/* B03E4 800AF7E4 0188C823 */  subu       $t9, $t4, $t0
/* B03E8 800AF7E8 01B9082B */  sltu       $at, $t5, $t9
/* B03EC 800AF7EC 10200003 */  beqz       $at, .L800AF7FC
/* B03F0 800AF7F0 00000000 */   nop
/* B03F4 800AF7F4 10000006 */  b          .L800AF810
/* B03F8 800AF7F8 AFAD005C */   sw        $t5, 0x5c($sp)
.L800AF7FC:
/* B03FC 800AF7FC 8FAF0044 */  lw         $t7, 0x44($sp)
/* B0400 800AF800 8DEA0020 */  lw         $t2, 0x20($t7)
/* B0404 800AF804 8DEB001C */  lw         $t3, 0x1c($t7)
/* B0408 800AF808 014BC023 */  subu       $t8, $t2, $t3
/* B040C 800AF80C AFB8005C */  sw         $t8, 0x5c($sp)
.L800AF810:
/* B0410 800AF810 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0414 800AF814 8FA9005C */  lw         $t1, 0x5c($sp)
/* B0418 800AF818 8DCC003C */  lw         $t4, 0x3c($t6)
/* B041C 800AF81C 012C4021 */  addu       $t0, $t1, $t4
/* B0420 800AF820 2519FFF0 */  addiu      $t9, $t0, -0x10
/* B0424 800AF824 AFB90074 */  sw         $t9, 0x74($sp)
/* B0428 800AF828 8FAD0074 */  lw         $t5, 0x74($sp)
/* B042C 800AF82C 05A10002 */  bgez       $t5, .L800AF838
/* B0430 800AF830 00000000 */   nop
/* B0434 800AF834 AFA00074 */  sw         $zero, 0x74($sp)
.L800AF838:
/* B0438 800AF838 8FAF0074 */  lw         $t7, 0x74($sp)
/* B043C 800AF83C 25EA000F */  addiu      $t2, $t7, 0xf
/* B0440 800AF840 000A5903 */  sra        $t3, $t2, 4
/* B0444 800AF844 AFAB0070 */  sw         $t3, 0x70($sp)
/* B0448 800AF848 8FB80070 */  lw         $t8, 0x70($sp)
/* B044C 800AF84C 001870C0 */  sll        $t6, $t8, 3
/* B0450 800AF850 01D87021 */  addu       $t6, $t6, $t8
/* B0454 800AF854 AFAE006C */  sw         $t6, 0x6c($sp)
/* B0458 800AF858 8FAC0058 */  lw         $t4, 0x58($sp)
/* B045C 800AF85C 87A8007A */  lh         $t0, 0x7a($sp)
/* B0460 800AF860 8FA90044 */  lw         $t1, 0x44($sp)
/* B0464 800AF864 AFAC0010 */  sw         $t4, 0x10($sp)
/* B0468 800AF868 AFA80014 */  sw         $t0, 0x14($sp)
/* B046C 800AF86C 8D390040 */  lw         $t9, 0x40($t1)
/* B0470 800AF870 8FA4007C */  lw         $a0, 0x7c($sp)
/* B0474 800AF874 8FA60074 */  lw         $a2, 0x74($sp)
/* B0478 800AF878 372D0002 */  ori        $t5, $t9, 2
/* B047C 800AF87C AFAD0018 */  sw         $t5, 0x18($sp)
/* B0480 800AF880 8FA7006C */  lw         $a3, 0x6c($sp)
/* B0484 800AF884 0C02C141 */  jal        func_800B0504
/* B0488 800AF888 01202825 */   or        $a1, $t1, $zero
/* B048C 800AF88C AFA2007C */  sw         $v0, 0x7c($sp)
/* B0490 800AF890 8FAF007C */  lw         $t7, 0x7c($sp)
/* B0494 800AF894 25EA0008 */  addiu      $t2, $t7, 8
/* B0498 800AF898 AFAA007C */  sw         $t2, 0x7c($sp)
/* B049C 800AF89C AFAF003C */  sw         $t7, 0x3c($sp)
/* B04A0 800AF8A0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B04A4 800AF8A4 8FAC0058 */  lw         $t4, 0x58($sp)
/* B04A8 800AF8A8 3C0100FF */  lui        $at, 0xff
/* B04AC 800AF8AC 8D78003C */  lw         $t8, 0x3c($t3)
/* B04B0 800AF8B0 3421FFFF */  ori        $at, $at, 0xffff
/* B04B4 800AF8B4 8FAD003C */  lw         $t5, 0x3c($sp)
/* B04B8 800AF8B8 00187040 */  sll        $t6, $t8, 1
/* B04BC 800AF8BC 01CC4021 */  addu       $t0, $t6, $t4
/* B04C0 800AF8C0 01014824 */  and        $t1, $t0, $at
/* B04C4 800AF8C4 3C010A00 */  lui        $at, 0xa00
/* B04C8 800AF8C8 0121C825 */  or         $t9, $t1, $at
/* B04CC 800AF8CC ADB90000 */  sw         $t9, ($t5)
/* B04D0 800AF8D0 8FAF0050 */  lw         $t7, 0x50($sp)
/* B04D4 800AF8D4 8FB8005C */  lw         $t8, 0x5c($sp)
/* B04D8 800AF8D8 8FA9003C */  lw         $t1, 0x3c($sp)
/* B04DC 800AF8DC 31EAFFFF */  andi       $t2, $t7, 0xffff
/* B04E0 800AF8E0 00187040 */  sll        $t6, $t8, 1
/* B04E4 800AF8E4 31CCFFFF */  andi       $t4, $t6, 0xffff
/* B04E8 800AF8E8 000A5C00 */  sll        $t3, $t2, 0x10
/* B04EC 800AF8EC 016C4025 */  or         $t0, $t3, $t4
/* B04F0 800AF8F0 AD280004 */  sw         $t0, 4($t1)
/* B04F4 800AF8F4 8FB90088 */  lw         $t9, 0x88($sp)
/* B04F8 800AF8F8 8FAD005C */  lw         $t5, 0x5c($sp)
/* B04FC 800AF8FC 01B9082A */  slt        $at, $t5, $t9
/* B0500 800AF900 1420FF98 */  bnez       $at, .L800AF764
/* B0504 800AF904 00000000 */   nop
.L800AF908:
/* B0508 800AF908 8FAF0044 */  lw         $t7, 0x44($sp)
/* B050C 800AF90C 8FB80088 */  lw         $t8, 0x88($sp)
/* B0510 800AF910 8DEA003C */  lw         $t2, 0x3c($t7)
/* B0514 800AF914 01587021 */  addu       $t6, $t2, $t8
/* B0518 800AF918 31CB000F */  andi       $t3, $t6, 0xf
/* B051C 800AF91C ADEB003C */  sw         $t3, 0x3c($t7)
/* B0520 800AF920 8FAC0044 */  lw         $t4, 0x44($sp)
/* B0524 800AF924 8FA90088 */  lw         $t1, 0x88($sp)
/* B0528 800AF928 8D880038 */  lw         $t0, 0x38($t4)
/* B052C 800AF92C 0109C821 */  addu       $t9, $t0, $t1
/* B0530 800AF930 AD990038 */  sw         $t9, 0x38($t4)
/* B0534 800AF934 8FAD0044 */  lw         $t5, 0x44($sp)
/* B0538 800AF938 8FB80070 */  lw         $t8, 0x70($sp)
/* B053C 800AF93C 8DAA0044 */  lw         $t2, 0x44($t5)
/* B0540 800AF940 001870C0 */  sll        $t6, $t8, 3
/* B0544 800AF944 01D87021 */  addu       $t6, $t6, $t8
/* B0548 800AF948 014E5821 */  addu       $t3, $t2, $t6
/* B054C 800AF94C ADAB0044 */  sw         $t3, 0x44($t5)
/* B0550 800AF950 10000094 */  b          .L800AFBA4
/* B0554 800AF954 8FA2007C */   lw        $v0, 0x7c($sp)
.L800AF958:
/* B0558 800AF958 8FAF0070 */  lw         $t7, 0x70($sp)
/* B055C 800AF95C 000F4100 */  sll        $t0, $t7, 4
/* B0560 800AF960 AFA8005C */  sw         $t0, 0x5c($sp)
/* B0564 800AF964 8FA90044 */  lw         $t1, 0x44($sp)
/* B0568 800AF968 8FAC006C */  lw         $t4, 0x6c($sp)
/* B056C 800AF96C 8D2A0028 */  lw         $t2, 0x28($t1)
/* B0570 800AF970 8D390044 */  lw         $t9, 0x44($t1)
/* B0574 800AF974 8D4E0000 */  lw         $t6, ($t2)
/* B0578 800AF978 8D4B0004 */  lw         $t3, 4($t2)
/* B057C 800AF97C 032CC021 */  addu       $t8, $t9, $t4
/* B0580 800AF980 01CB6821 */  addu       $t5, $t6, $t3
/* B0584 800AF984 030D7823 */  subu       $t7, $t8, $t5
/* B0588 800AF988 AFAF0068 */  sw         $t7, 0x68($sp)
/* B058C 800AF98C 8FA80068 */  lw         $t0, 0x68($sp)
/* B0590 800AF990 05010002 */  bgez       $t0, .L800AF99C
/* B0594 800AF994 00000000 */   nop
/* B0598 800AF998 AFA00068 */  sw         $zero, 0x68($sp)
.L800AF99C:
/* B059C 800AF99C 8FB90068 */  lw         $t9, 0x68($sp)
/* B05A0 800AF9A0 24010009 */  addiu      $at, $zero, 9
/* B05A4 800AF9A4 0321001A */  div        $zero, $t9, $at
/* B05A8 800AF9A8 00006012 */  mflo       $t4
/* B05AC 800AF9AC 000C4900 */  sll        $t1, $t4, 4
/* B05B0 800AF9B0 AFA90060 */  sw         $t1, 0x60($sp)
/* B05B4 800AF9B4 8FAE005C */  lw         $t6, 0x5c($sp)
/* B05B8 800AF9B8 8FAB0054 */  lw         $t3, 0x54($sp)
/* B05BC 800AF9BC 8FAA0060 */  lw         $t2, 0x60($sp)
/* B05C0 800AF9C0 01CBC021 */  addu       $t8, $t6, $t3
/* B05C4 800AF9C4 030A082A */  slt        $at, $t8, $t2
/* B05C8 800AF9C8 10200005 */  beqz       $at, .L800AF9E0
/* B05CC 800AF9CC 00000000 */   nop
/* B05D0 800AF9D0 8FAD005C */  lw         $t5, 0x5c($sp)
/* B05D4 800AF9D4 8FAF0054 */  lw         $t7, 0x54($sp)
/* B05D8 800AF9D8 01AF4021 */  addu       $t0, $t5, $t7
/* B05DC 800AF9DC AFA80060 */  sw         $t0, 0x60($sp)
.L800AF9E0:
/* B05E0 800AF9E0 8FB9006C */  lw         $t9, 0x6c($sp)
/* B05E4 800AF9E4 8FAC0068 */  lw         $t4, 0x68($sp)
/* B05E8 800AF9E8 032C4823 */  subu       $t1, $t9, $t4
/* B05EC 800AF9EC AFA9006C */  sw         $t1, 0x6c($sp)
/* B05F0 800AF9F0 8FAE0060 */  lw         $t6, 0x60($sp)
/* B05F4 800AF9F4 8FB80088 */  lw         $t8, 0x88($sp)
/* B05F8 800AF9F8 31CB000F */  andi       $t3, $t6, 0xf
/* B05FC 800AF9FC 01CB5023 */  subu       $t2, $t6, $t3
/* B0600 800AFA00 0158082A */  slt        $at, $t2, $t8
/* B0604 800AFA04 10200036 */  beqz       $at, .L800AFAE0
/* B0608 800AFA08 00000000 */   nop
/* B060C 800AFA0C 240D0001 */  addiu      $t5, $zero, 1
/* B0610 800AFA10 AFAD004C */  sw         $t5, 0x4c($sp)
/* B0614 800AFA14 8FAC0084 */  lw         $t4, 0x84($sp)
/* B0618 800AFA18 87AE007A */  lh         $t6, 0x7a($sp)
/* B061C 800AFA1C 8FAF0044 */  lw         $t7, 0x44($sp)
/* B0620 800AFA20 85890000 */  lh         $t1, ($t4)
/* B0624 800AFA24 AFAE0014 */  sw         $t6, 0x14($sp)
/* B0628 800AFA28 8FA8005C */  lw         $t0, 0x5c($sp)
/* B062C 800AFA2C AFA90010 */  sw         $t1, 0x10($sp)
/* B0630 800AFA30 8FB90060 */  lw         $t9, 0x60($sp)
/* B0634 800AFA34 8DEB0040 */  lw         $t3, 0x40($t7)
/* B0638 800AFA38 8FA4007C */  lw         $a0, 0x7c($sp)
/* B063C 800AFA3C 8FA7006C */  lw         $a3, 0x6c($sp)
/* B0640 800AFA40 01E02825 */  or         $a1, $t7, $zero
/* B0644 800AFA44 01193023 */  subu       $a2, $t0, $t9
/* B0648 800AFA48 0C02C141 */  jal        func_800B0504
/* B064C 800AFA4C AFAB0018 */   sw        $t3, 0x18($sp)
/* B0650 800AFA50 AFA2007C */  sw         $v0, 0x7c($sp)
/* B0654 800AFA54 8FAA0044 */  lw         $t2, 0x44($sp)
/* B0658 800AFA58 8D58003C */  lw         $t8, 0x3c($t2)
/* B065C 800AFA5C 13000009 */  beqz       $t8, .L800AFA84
/* B0660 800AFA60 00000000 */   nop
/* B0664 800AFA64 8FB90044 */  lw         $t9, 0x44($sp)
/* B0668 800AFA68 8FAD0084 */  lw         $t5, 0x84($sp)
/* B066C 800AFA6C 8F2C003C */  lw         $t4, 0x3c($t9)
/* B0670 800AFA70 85A80000 */  lh         $t0, ($t5)
/* B0674 800AFA74 000C4840 */  sll        $t1, $t4, 1
/* B0678 800AFA78 01097021 */  addu       $t6, $t0, $t1
/* B067C 800AFA7C 10000005 */  b          .L800AFA94
/* B0680 800AFA80 A5AE0000 */   sh        $t6, ($t5)
.L800AFA84:
/* B0684 800AFA84 8FAF0084 */  lw         $t7, 0x84($sp)
/* B0688 800AFA88 85EB0000 */  lh         $t3, ($t7)
/* B068C 800AFA8C 256A0020 */  addiu      $t2, $t3, 0x20
/* B0690 800AFA90 A5EA0000 */  sh         $t2, ($t7)
.L800AFA94:
/* B0694 800AFA94 8FB80044 */  lw         $t8, 0x44($sp)
/* B0698 800AFA98 8FAC0088 */  lw         $t4, 0x88($sp)
/* B069C 800AFA9C 8F19003C */  lw         $t9, 0x3c($t8)
/* B06A0 800AFAA0 032C4021 */  addu       $t0, $t9, $t4
/* B06A4 800AFAA4 3109000F */  andi       $t1, $t0, 0xf
/* B06A8 800AFAA8 AF09003C */  sw         $t1, 0x3c($t8)
/* B06AC 800AFAAC 8FAE0044 */  lw         $t6, 0x44($sp)
/* B06B0 800AFAB0 8FAB0088 */  lw         $t3, 0x88($sp)
/* B06B4 800AFAB4 8DCD0038 */  lw         $t5, 0x38($t6)
/* B06B8 800AFAB8 01AB5021 */  addu       $t2, $t5, $t3
/* B06BC 800AFABC ADCA0038 */  sw         $t2, 0x38($t6)
/* B06C0 800AFAC0 8FAF0044 */  lw         $t7, 0x44($sp)
/* B06C4 800AFAC4 8FAC0070 */  lw         $t4, 0x70($sp)
/* B06C8 800AFAC8 8DF90044 */  lw         $t9, 0x44($t7)
/* B06CC 800AFACC 000C40C0 */  sll        $t0, $t4, 3
/* B06D0 800AFAD0 010C4021 */  addu       $t0, $t0, $t4
/* B06D4 800AFAD4 03284821 */  addu       $t1, $t9, $t0
/* B06D8 800AFAD8 1000000A */  b          .L800AFB04
/* B06DC 800AFADC ADE90044 */   sw        $t1, 0x44($t7)
.L800AFAE0:
/* B06E0 800AFAE0 8FB80044 */  lw         $t8, 0x44($sp)
/* B06E4 800AFAE4 AF00003C */  sw         $zero, 0x3c($t8)
/* B06E8 800AFAE8 8FAD0044 */  lw         $t5, 0x44($sp)
/* B06EC 800AFAEC 8FAA0070 */  lw         $t2, 0x70($sp)
/* B06F0 800AFAF0 8DAB0044 */  lw         $t3, 0x44($t5)
/* B06F4 800AFAF4 000A70C0 */  sll        $t6, $t2, 3
/* B06F8 800AFAF8 01CA7021 */  addu       $t6, $t6, $t2
/* B06FC 800AFAFC 016E6021 */  addu       $t4, $t3, $t6
/* B0700 800AFB00 ADAC0044 */  sw         $t4, 0x44($t5)
.L800AFB04:
/* B0704 800AFB04 8FB90060 */  lw         $t9, 0x60($sp)
/* B0708 800AFB08 13200022 */  beqz       $t9, .L800AFB94
/* B070C 800AFB0C 00000000 */   nop
/* B0710 800AFB10 8FA80044 */  lw         $t0, 0x44($sp)
/* B0714 800AFB14 AD00003C */  sw         $zero, 0x3c($t0)
/* B0718 800AFB18 8FA9004C */  lw         $t1, 0x4c($sp)
/* B071C 800AFB1C 11200009 */  beqz       $t1, .L800AFB44
/* B0720 800AFB20 00000000 */   nop
/* B0724 800AFB24 8FAF0054 */  lw         $t7, 0x54($sp)
/* B0728 800AFB28 8FB8005C */  lw         $t8, 0x5c($sp)
/* B072C 800AFB2C 8FAB0060 */  lw         $t3, 0x60($sp)
/* B0730 800AFB30 01F85021 */  addu       $t2, $t7, $t8
/* B0734 800AFB34 014B7023 */  subu       $t6, $t2, $t3
/* B0738 800AFB38 000E6040 */  sll        $t4, $t6, 1
/* B073C 800AFB3C 10000002 */  b          .L800AFB48
/* B0740 800AFB40 AFAC0064 */   sw        $t4, 0x64($sp)
.L800AFB44:
/* B0744 800AFB44 AFA00064 */  sw         $zero, 0x64($sp)
.L800AFB48:
/* B0748 800AFB48 8FAD007C */  lw         $t5, 0x7c($sp)
/* B074C 800AFB4C 25B90008 */  addiu      $t9, $t5, 8
/* B0750 800AFB50 AFB9007C */  sw         $t9, 0x7c($sp)
/* B0754 800AFB54 AFAD0038 */  sw         $t5, 0x38($sp)
/* B0758 800AFB58 8FA80084 */  lw         $t0, 0x84($sp)
/* B075C 800AFB5C 8FAF0064 */  lw         $t7, 0x64($sp)
/* B0760 800AFB60 3C0100FF */  lui        $at, 0xff
/* B0764 800AFB64 85090000 */  lh         $t1, ($t0)
/* B0768 800AFB68 3421FFFF */  ori        $at, $at, 0xffff
/* B076C 800AFB6C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B0770 800AFB70 012FC021 */  addu       $t8, $t1, $t7
/* B0774 800AFB74 03015024 */  and        $t2, $t8, $at
/* B0778 800AFB78 3C010200 */  lui        $at, 0x200
/* B077C 800AFB7C 01415825 */  or         $t3, $t2, $at
/* B0780 800AFB80 ADCB0000 */  sw         $t3, ($t6)
/* B0784 800AFB84 8FAC0060 */  lw         $t4, 0x60($sp)
/* B0788 800AFB88 8FB90038 */  lw         $t9, 0x38($sp)
/* B078C 800AFB8C 000C6840 */  sll        $t5, $t4, 1
/* B0790 800AFB90 AF2D0004 */  sw         $t5, 4($t9)
.L800AFB94:
/* B0794 800AFB94 10000003 */  b          .L800AFBA4
/* B0798 800AFB98 8FA2007C */   lw        $v0, 0x7c($sp)
/* B079C 800AFB9C 10000001 */  b          .L800AFBA4
/* B07A0 800AFBA0 00000000 */   nop
.L800AFBA4:
/* B07A4 800AFBA4 8FBF002C */  lw         $ra, 0x2c($sp)
/* B07A8 800AFBA8 8FB00028 */  lw         $s0, 0x28($sp)
/* B07AC 800AFBAC 27BD0080 */  addiu      $sp, $sp, 0x80
/* B07B0 800AFBB0 03E00008 */  jr         $ra
/* B07B4 800AFBB4 00000000 */   nop

glabel alRaw16Pull
/* B07B8 800AFBB8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B07BC 800AFBBC AFBF0014 */  sw         $ra, 0x14($sp)
/* B07C0 800AFBC0 AFA40068 */  sw         $a0, 0x68($sp)
/* B07C4 800AFBC4 AFA5006C */  sw         $a1, 0x6c($sp)
/* B07C8 800AFBC8 AFA60070 */  sw         $a2, 0x70($sp)
/* B07CC 800AFBCC AFA70074 */  sw         $a3, 0x74($sp)
/* B07D0 800AFBD0 8FAE0078 */  lw         $t6, 0x78($sp)
/* B07D4 800AFBD4 AFAE0064 */  sw         $t6, 0x64($sp)
/* B07D8 800AFBD8 8FAF0068 */  lw         $t7, 0x68($sp)
/* B07DC 800AFBDC AFAF0040 */  sw         $t7, 0x40($sp)
/* B07E0 800AFBE0 8FB80068 */  lw         $t8, 0x68($sp)
/* B07E4 800AFBE4 AFB8003C */  sw         $t8, 0x3c($sp)
/* B07E8 800AFBE8 8FB90070 */  lw         $t9, 0x70($sp)
/* B07EC 800AFBEC 17200003 */  bnez       $t9, .L800AFBFC
/* B07F0 800AFBF0 00000000 */   nop
/* B07F4 800AFBF4 1000017B */  b          .L800B01E4
/* B07F8 800AFBF8 8FA20064 */   lw        $v0, 0x64($sp)
.L800AFBFC:
/* B07FC 800AFBFC 8FA80040 */  lw         $t0, 0x40($sp)
/* B0800 800AFC00 8FAA0070 */  lw         $t2, 0x70($sp)
/* B0804 800AFC04 8D090038 */  lw         $t1, 0x38($t0)
/* B0808 800AFC08 8D0C0020 */  lw         $t4, 0x20($t0)
/* B080C 800AFC0C 012A5821 */  addu       $t3, $t1, $t2
/* B0810 800AFC10 018B082B */  sltu       $at, $t4, $t3
/* B0814 800AFC14 102000E6 */  beqz       $at, .L800AFFB0
/* B0818 800AFC18 00000000 */   nop
/* B081C 800AFC1C 8D0D0024 */  lw         $t5, 0x24($t0)
/* B0820 800AFC20 11A000E3 */  beqz       $t5, .L800AFFB0
/* B0824 800AFC24 00000000 */   nop
/* B0828 800AFC28 8FAE0040 */  lw         $t6, 0x40($sp)
/* B082C 800AFC2C 8DCF0020 */  lw         $t7, 0x20($t6)
/* B0830 800AFC30 8DD80038 */  lw         $t8, 0x38($t6)
/* B0834 800AFC34 01F8C823 */  subu       $t9, $t7, $t8
/* B0838 800AFC38 AFB90048 */  sw         $t9, 0x48($sp)
/* B083C 800AFC3C 8FA90048 */  lw         $t1, 0x48($sp)
/* B0840 800AFC40 00095040 */  sll        $t2, $t1, 1
/* B0844 800AFC44 AFAA0060 */  sw         $t2, 0x60($sp)
/* B0848 800AFC48 8FAB0048 */  lw         $t3, 0x48($sp)
/* B084C 800AFC4C 19600030 */  blez       $t3, .L800AFD10
/* B0850 800AFC50 00000000 */   nop
/* B0854 800AFC54 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0858 800AFC58 8FA50060 */  lw         $a1, 0x60($sp)
/* B085C 800AFC5C 8D990030 */  lw         $t9, 0x30($t4)
/* B0860 800AFC60 8D840044 */  lw         $a0, 0x44($t4)
/* B0864 800AFC64 8D860034 */  lw         $a2, 0x34($t4)
/* B0868 800AFC68 0320F809 */  jalr       $t9
/* B086C 800AFC6C 00000000 */   nop
/* B0870 800AFC70 AFA2005C */  sw         $v0, 0x5c($sp)
/* B0874 800AFC74 8FA8005C */  lw         $t0, 0x5c($sp)
/* B0878 800AFC78 310D0007 */  andi       $t5, $t0, 7
/* B087C 800AFC7C AFAD0058 */  sw         $t5, 0x58($sp)
/* B0880 800AFC80 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0884 800AFC84 8FAF0058 */  lw         $t7, 0x58($sp)
/* B0888 800AFC88 01CFC021 */  addu       $t8, $t6, $t7
/* B088C 800AFC8C AFB80060 */  sw         $t8, 0x60($sp)
/* B0890 800AFC90 8FA90064 */  lw         $t1, 0x64($sp)
/* B0894 800AFC94 252A0008 */  addiu      $t2, $t1, 8
/* B0898 800AFC98 AFAA0064 */  sw         $t2, 0x64($sp)
/* B089C 800AFC9C AFA90038 */  sw         $t1, 0x38($sp)
/* B08A0 800AFCA0 8FAB006C */  lw         $t3, 0x6c($sp)
/* B08A4 800AFCA4 8FAD0038 */  lw         $t5, 0x38($sp)
/* B08A8 800AFCA8 3C010800 */  lui        $at, 0x800
/* B08AC 800AFCAC 856C0000 */  lh         $t4, ($t3)
/* B08B0 800AFCB0 3199FFFF */  andi       $t9, $t4, 0xffff
/* B08B4 800AFCB4 03214025 */  or         $t0, $t9, $at
/* B08B8 800AFCB8 ADA80000 */  sw         $t0, ($t5)
/* B08BC 800AFCBC 8FAE0060 */  lw         $t6, 0x60($sp)
/* B08C0 800AFCC0 8FAB0038 */  lw         $t3, 0x38($sp)
/* B08C4 800AFCC4 31CF0007 */  andi       $t7, $t6, 7
/* B08C8 800AFCC8 01CFC023 */  subu       $t8, $t6, $t7
/* B08CC 800AFCCC 27090008 */  addiu      $t1, $t8, 8
/* B08D0 800AFCD0 312AFFFF */  andi       $t2, $t1, 0xffff
/* B08D4 800AFCD4 AD6A0004 */  sw         $t2, 4($t3)
/* B08D8 800AFCD8 8FAC0064 */  lw         $t4, 0x64($sp)
/* B08DC 800AFCDC 25990008 */  addiu      $t9, $t4, 8
/* B08E0 800AFCE0 AFB90064 */  sw         $t9, 0x64($sp)
/* B08E4 800AFCE4 AFAC0034 */  sw         $t4, 0x34($sp)
/* B08E8 800AFCE8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B08EC 800AFCEC 3C080400 */  lui        $t0, 0x400
/* B08F0 800AFCF0 ADA80000 */  sw         $t0, ($t5)
/* B08F4 800AFCF4 8FAE005C */  lw         $t6, 0x5c($sp)
/* B08F8 800AFCF8 8FAF0058 */  lw         $t7, 0x58($sp)
/* B08FC 800AFCFC 8FA90034 */  lw         $t1, 0x34($sp)
/* B0900 800AFD00 01CFC023 */  subu       $t8, $t6, $t7
/* B0904 800AFD04 AD380004 */  sw         $t8, 4($t1)
/* B0908 800AFD08 10000002 */  b          .L800AFD14
/* B090C 800AFD0C 00000000 */   nop
.L800AFD10:
/* B0910 800AFD10 AFA00058 */  sw         $zero, 0x58($sp)
.L800AFD14:
/* B0914 800AFD14 8FAA006C */  lw         $t2, 0x6c($sp)
/* B0918 800AFD18 8FAC0058 */  lw         $t4, 0x58($sp)
/* B091C 800AFD1C 854B0000 */  lh         $t3, ($t2)
/* B0920 800AFD20 016CC821 */  addu       $t9, $t3, $t4
/* B0924 800AFD24 A5590000 */  sh         $t9, ($t2)
/* B0928 800AFD28 8FA80040 */  lw         $t0, 0x40($sp)
/* B092C 800AFD2C 8D0D0028 */  lw         $t5, 0x28($t0)
/* B0930 800AFD30 8D0F001C */  lw         $t7, 0x1c($t0)
/* B0934 800AFD34 8DAE0000 */  lw         $t6, ($t5)
/* B0938 800AFD38 000FC040 */  sll        $t8, $t7, 1
/* B093C 800AFD3C 01D84821 */  addu       $t1, $t6, $t8
/* B0940 800AFD40 AD090044 */  sw         $t1, 0x44($t0)
/* B0944 800AFD44 8FAB0040 */  lw         $t3, 0x40($sp)
/* B0948 800AFD48 8D6C001C */  lw         $t4, 0x1c($t3)
/* B094C 800AFD4C AD6C0038 */  sw         $t4, 0x38($t3)
/* B0950 800AFD50 8FB9006C */  lw         $t9, 0x6c($sp)
/* B0954 800AFD54 872A0000 */  lh         $t2, ($t9)
/* B0958 800AFD58 AFAA0044 */  sw         $t2, 0x44($sp)
/* B095C 800AFD5C 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0960 800AFD60 8FAF0048 */  lw         $t7, 0x48($sp)
/* B0964 800AFD64 01ED082A */  slt        $at, $t7, $t5
/* B0968 800AFD68 10200084 */  beqz       $at, .L800AFF7C
/* B096C 800AFD6C 00000000 */   nop
.L800AFD70:
/* B0970 800AFD70 8FB80048 */  lw         $t8, 0x48($sp)
/* B0974 800AFD74 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0978 800AFD78 00184840 */  sll        $t1, $t8, 1
/* B097C 800AFD7C 01C94021 */  addu       $t0, $t6, $t1
/* B0980 800AFD80 AFA80044 */  sw         $t0, 0x44($sp)
/* B0984 800AFD84 8FAC0070 */  lw         $t4, 0x70($sp)
/* B0988 800AFD88 8FAB0048 */  lw         $t3, 0x48($sp)
/* B098C 800AFD8C 018BC823 */  subu       $t9, $t4, $t3
/* B0990 800AFD90 AFB90070 */  sw         $t9, 0x70($sp)
/* B0994 800AFD94 8FAA0040 */  lw         $t2, 0x40($sp)
/* B0998 800AFD98 2401FFFF */  addiu      $at, $zero, -1
/* B099C 800AFD9C 8D4D0024 */  lw         $t5, 0x24($t2)
/* B09A0 800AFDA0 11A10007 */  beq        $t5, $at, .L800AFDC0
/* B09A4 800AFDA4 00000000 */   nop
/* B09A8 800AFDA8 11A00005 */  beqz       $t5, .L800AFDC0
/* B09AC 800AFDAC 00000000 */   nop
/* B09B0 800AFDB0 8FAF0040 */  lw         $t7, 0x40($sp)
/* B09B4 800AFDB4 8DF80024 */  lw         $t8, 0x24($t7)
/* B09B8 800AFDB8 270EFFFF */  addiu      $t6, $t8, -1
/* B09BC 800AFDBC ADEE0024 */  sw         $t6, 0x24($t7)
.L800AFDC0:
/* B09C0 800AFDC0 8FA80040 */  lw         $t0, 0x40($sp)
/* B09C4 800AFDC4 8FA90070 */  lw         $t1, 0x70($sp)
/* B09C8 800AFDC8 8D0C0020 */  lw         $t4, 0x20($t0)
/* B09CC 800AFDCC 8D0B001C */  lw         $t3, 0x1c($t0)
/* B09D0 800AFDD0 018BC823 */  subu       $t9, $t4, $t3
/* B09D4 800AFDD4 0139082B */  sltu       $at, $t1, $t9
/* B09D8 800AFDD8 10200003 */  beqz       $at, .L800AFDE8
/* B09DC 800AFDDC 00000000 */   nop
/* B09E0 800AFDE0 10000006 */  b          .L800AFDFC
/* B09E4 800AFDE4 AFA90048 */   sw        $t1, 0x48($sp)
.L800AFDE8:
/* B09E8 800AFDE8 8FAA0040 */  lw         $t2, 0x40($sp)
/* B09EC 800AFDEC 8D4D0020 */  lw         $t5, 0x20($t2)
/* B09F0 800AFDF0 8D58001C */  lw         $t8, 0x1c($t2)
/* B09F4 800AFDF4 01B87023 */  subu       $t6, $t5, $t8
/* B09F8 800AFDF8 AFAE0048 */  sw         $t6, 0x48($sp)
.L800AFDFC:
/* B09FC 800AFDFC 8FAF0048 */  lw         $t7, 0x48($sp)
/* B0A00 800AFE00 000F4040 */  sll        $t0, $t7, 1
/* B0A04 800AFE04 AFA80060 */  sw         $t0, 0x60($sp)
/* B0A08 800AFE08 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0A0C 800AFE0C 8FA50060 */  lw         $a1, 0x60($sp)
/* B0A10 800AFE10 8D990030 */  lw         $t9, 0x30($t4)
/* B0A14 800AFE14 8D840044 */  lw         $a0, 0x44($t4)
/* B0A18 800AFE18 8D860034 */  lw         $a2, 0x34($t4)
/* B0A1C 800AFE1C 0320F809 */  jalr       $t9
/* B0A20 800AFE20 00000000 */   nop
/* B0A24 800AFE24 AFA2005C */  sw         $v0, 0x5c($sp)
/* B0A28 800AFE28 8FAB005C */  lw         $t3, 0x5c($sp)
/* B0A2C 800AFE2C 31690007 */  andi       $t1, $t3, 7
/* B0A30 800AFE30 AFA90058 */  sw         $t1, 0x58($sp)
/* B0A34 800AFE34 8FAA0060 */  lw         $t2, 0x60($sp)
/* B0A38 800AFE38 8FAD0058 */  lw         $t5, 0x58($sp)
/* B0A3C 800AFE3C 014DC021 */  addu       $t8, $t2, $t5
/* B0A40 800AFE40 AFB80060 */  sw         $t8, 0x60($sp)
/* B0A44 800AFE44 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0A48 800AFE48 31CF0007 */  andi       $t7, $t6, 7
/* B0A4C 800AFE4C 11E00007 */  beqz       $t7, .L800AFE6C
/* B0A50 800AFE50 00000000 */   nop
/* B0A54 800AFE54 8FA80044 */  lw         $t0, 0x44($sp)
/* B0A58 800AFE58 24190008 */  addiu      $t9, $zero, 8
/* B0A5C 800AFE5C 310C0007 */  andi       $t4, $t0, 7
/* B0A60 800AFE60 032C5823 */  subu       $t3, $t9, $t4
/* B0A64 800AFE64 10000002 */  b          .L800AFE70
/* B0A68 800AFE68 AFAB0054 */   sw        $t3, 0x54($sp)
.L800AFE6C:
/* B0A6C 800AFE6C AFA00054 */  sw         $zero, 0x54($sp)
.L800AFE70:
/* B0A70 800AFE70 8FA90064 */  lw         $t1, 0x64($sp)
/* B0A74 800AFE74 252A0008 */  addiu      $t2, $t1, 8
/* B0A78 800AFE78 AFAA0064 */  sw         $t2, 0x64($sp)
/* B0A7C 800AFE7C AFA90030 */  sw         $t1, 0x30($sp)
/* B0A80 800AFE80 8FAD0044 */  lw         $t5, 0x44($sp)
/* B0A84 800AFE84 8FB80054 */  lw         $t8, 0x54($sp)
/* B0A88 800AFE88 8FB90030 */  lw         $t9, 0x30($sp)
/* B0A8C 800AFE8C 3C010800 */  lui        $at, 0x800
/* B0A90 800AFE90 01B87021 */  addu       $t6, $t5, $t8
/* B0A94 800AFE94 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B0A98 800AFE98 01E14025 */  or         $t0, $t7, $at
/* B0A9C 800AFE9C AF280000 */  sw         $t0, ($t9)
/* B0AA0 800AFEA0 8FAC0060 */  lw         $t4, 0x60($sp)
/* B0AA4 800AFEA4 8FB80030 */  lw         $t8, 0x30($sp)
/* B0AA8 800AFEA8 318B0007 */  andi       $t3, $t4, 7
/* B0AAC 800AFEAC 018B4823 */  subu       $t1, $t4, $t3
/* B0AB0 800AFEB0 252A0008 */  addiu      $t2, $t1, 8
/* B0AB4 800AFEB4 314DFFFF */  andi       $t5, $t2, 0xffff
/* B0AB8 800AFEB8 AF0D0004 */  sw         $t5, 4($t8)
/* B0ABC 800AFEBC 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0AC0 800AFEC0 25CF0008 */  addiu      $t7, $t6, 8
/* B0AC4 800AFEC4 AFAF0064 */  sw         $t7, 0x64($sp)
/* B0AC8 800AFEC8 AFAE002C */  sw         $t6, 0x2c($sp)
/* B0ACC 800AFECC 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0AD0 800AFED0 3C080400 */  lui        $t0, 0x400
/* B0AD4 800AFED4 AF280000 */  sw         $t0, ($t9)
/* B0AD8 800AFED8 8FAC005C */  lw         $t4, 0x5c($sp)
/* B0ADC 800AFEDC 8FAB0058 */  lw         $t3, 0x58($sp)
/* B0AE0 800AFEE0 8FAA002C */  lw         $t2, 0x2c($sp)
/* B0AE4 800AFEE4 018B4823 */  subu       $t1, $t4, $t3
/* B0AE8 800AFEE8 AD490004 */  sw         $t1, 4($t2)
/* B0AEC 800AFEEC 8FAD0058 */  lw         $t5, 0x58($sp)
/* B0AF0 800AFEF0 15A00004 */  bnez       $t5, .L800AFF04
/* B0AF4 800AFEF4 00000000 */   nop
/* B0AF8 800AFEF8 8FB80054 */  lw         $t8, 0x54($sp)
/* B0AFC 800AFEFC 1300001A */  beqz       $t8, .L800AFF68
/* B0B00 800AFF00 00000000 */   nop
.L800AFF04:
/* B0B04 800AFF04 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0B08 800AFF08 25CF0008 */  addiu      $t7, $t6, 8
/* B0B0C 800AFF0C AFAF0064 */  sw         $t7, 0x64($sp)
/* B0B10 800AFF10 AFAE0028 */  sw         $t6, 0x28($sp)
/* B0B14 800AFF14 8FA80044 */  lw         $t0, 0x44($sp)
/* B0B18 800AFF18 8FB90058 */  lw         $t9, 0x58($sp)
/* B0B1C 800AFF1C 8FAB0054 */  lw         $t3, 0x54($sp)
/* B0B20 800AFF20 3C0100FF */  lui        $at, 0xff
/* B0B24 800AFF24 01196021 */  addu       $t4, $t0, $t9
/* B0B28 800AFF28 3421FFFF */  ori        $at, $at, 0xffff
/* B0B2C 800AFF2C 018B4821 */  addu       $t1, $t4, $t3
/* B0B30 800AFF30 8FB80028 */  lw         $t8, 0x28($sp)
/* B0B34 800AFF34 01215024 */  and        $t2, $t1, $at
/* B0B38 800AFF38 3C010A00 */  lui        $at, 0xa00
/* B0B3C 800AFF3C 01416825 */  or         $t5, $t2, $at
/* B0B40 800AFF40 AF0D0000 */  sw         $t5, ($t8)
/* B0B44 800AFF44 8FAE0044 */  lw         $t6, 0x44($sp)
/* B0B48 800AFF48 8FB90048 */  lw         $t9, 0x48($sp)
/* B0B4C 800AFF4C 8FAA0028 */  lw         $t2, 0x28($sp)
/* B0B50 800AFF50 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B0B54 800AFF54 00196040 */  sll        $t4, $t9, 1
/* B0B58 800AFF58 318BFFFF */  andi       $t3, $t4, 0xffff
/* B0B5C 800AFF5C 000F4400 */  sll        $t0, $t7, 0x10
/* B0B60 800AFF60 010B4825 */  or         $t1, $t0, $t3
/* B0B64 800AFF64 AD490004 */  sw         $t1, 4($t2)
.L800AFF68:
/* B0B68 800AFF68 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0B6C 800AFF6C 8FB80048 */  lw         $t8, 0x48($sp)
/* B0B70 800AFF70 030D082A */  slt        $at, $t8, $t5
/* B0B74 800AFF74 1420FF7E */  bnez       $at, .L800AFD70
/* B0B78 800AFF78 00000000 */   nop
.L800AFF7C:
/* B0B7C 800AFF7C 8FAE0040 */  lw         $t6, 0x40($sp)
/* B0B80 800AFF80 8FB90070 */  lw         $t9, 0x70($sp)
/* B0B84 800AFF84 8DCF0038 */  lw         $t7, 0x38($t6)
/* B0B88 800AFF88 01F96021 */  addu       $t4, $t7, $t9
/* B0B8C 800AFF8C ADCC0038 */  sw         $t4, 0x38($t6)
/* B0B90 800AFF90 8FA80040 */  lw         $t0, 0x40($sp)
/* B0B94 800AFF94 8FA90070 */  lw         $t1, 0x70($sp)
/* B0B98 800AFF98 8D0B0044 */  lw         $t3, 0x44($t0)
/* B0B9C 800AFF9C 00095040 */  sll        $t2, $t1, 1
/* B0BA0 800AFFA0 016A6821 */  addu       $t5, $t3, $t2
/* B0BA4 800AFFA4 AD0D0044 */  sw         $t5, 0x44($t0)
/* B0BA8 800AFFA8 1000008E */  b          .L800B01E4
/* B0BAC 800AFFAC 8FA20064 */   lw        $v0, 0x64($sp)
.L800AFFB0:
/* B0BB0 800AFFB0 8FB80070 */  lw         $t8, 0x70($sp)
/* B0BB4 800AFFB4 00187840 */  sll        $t7, $t8, 1
/* B0BB8 800AFFB8 AFAF0060 */  sw         $t7, 0x60($sp)
/* B0BBC 800AFFBC 8FB90040 */  lw         $t9, 0x40($sp)
/* B0BC0 800AFFC0 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0BC4 800AFFC4 8F2B0028 */  lw         $t3, 0x28($t9)
/* B0BC8 800AFFC8 8F2C0044 */  lw         $t4, 0x44($t9)
/* B0BCC 800AFFCC 8D6A0000 */  lw         $t2, ($t3)
/* B0BD0 800AFFD0 8D6D0004 */  lw         $t5, 4($t3)
/* B0BD4 800AFFD4 018E4821 */  addu       $t1, $t4, $t6
/* B0BD8 800AFFD8 014D4021 */  addu       $t0, $t2, $t5
/* B0BDC 800AFFDC 0128C023 */  subu       $t8, $t1, $t0
/* B0BE0 800AFFE0 AFB80050 */  sw         $t8, 0x50($sp)
/* B0BE4 800AFFE4 8FAF0050 */  lw         $t7, 0x50($sp)
/* B0BE8 800AFFE8 05E10002 */  bgez       $t7, .L800AFFF4
/* B0BEC 800AFFEC 00000000 */   nop
/* B0BF0 800AFFF0 AFA00050 */  sw         $zero, 0x50($sp)
.L800AFFF4:
/* B0BF4 800AFFF4 8FAC0050 */  lw         $t4, 0x50($sp)
/* B0BF8 800AFFF8 8FAE0060 */  lw         $t6, 0x60($sp)
/* B0BFC 800AFFFC 01CC082A */  slt        $at, $t6, $t4
/* B0C00 800B0000 10200003 */  beqz       $at, .L800B0010
/* B0C04 800B0004 00000000 */   nop
/* B0C08 800B0008 8FB90060 */  lw         $t9, 0x60($sp)
/* B0C0C 800B000C AFB90050 */  sw         $t9, 0x50($sp)
.L800B0010:
/* B0C10 800B0010 8FAB0050 */  lw         $t3, 0x50($sp)
/* B0C14 800B0014 8FAA0060 */  lw         $t2, 0x60($sp)
/* B0C18 800B0018 016A082A */  slt        $at, $t3, $t2
/* B0C1C 800B001C 10200049 */  beqz       $at, .L800B0144
/* B0C20 800B0020 00000000 */   nop
/* B0C24 800B0024 8FAD0070 */  lw         $t5, 0x70($sp)
/* B0C28 800B0028 19A00034 */  blez       $t5, .L800B00FC
/* B0C2C 800B002C 00000000 */   nop
/* B0C30 800B0030 8FA90060 */  lw         $t1, 0x60($sp)
/* B0C34 800B0034 8FA80050 */  lw         $t0, 0x50($sp)
/* B0C38 800B0038 0128C023 */  subu       $t8, $t1, $t0
/* B0C3C 800B003C AFB80060 */  sw         $t8, 0x60($sp)
/* B0C40 800B0040 8FAF0040 */  lw         $t7, 0x40($sp)
/* B0C44 800B0044 8FA50060 */  lw         $a1, 0x60($sp)
/* B0C48 800B0048 8DF90030 */  lw         $t9, 0x30($t7)
/* B0C4C 800B004C 8DE40044 */  lw         $a0, 0x44($t7)
/* B0C50 800B0050 8DE60034 */  lw         $a2, 0x34($t7)
/* B0C54 800B0054 0320F809 */  jalr       $t9
/* B0C58 800B0058 00000000 */   nop
/* B0C5C 800B005C AFA2005C */  sw         $v0, 0x5c($sp)
/* B0C60 800B0060 8FAC005C */  lw         $t4, 0x5c($sp)
/* B0C64 800B0064 318E0007 */  andi       $t6, $t4, 7
/* B0C68 800B0068 AFAE0058 */  sw         $t6, 0x58($sp)
/* B0C6C 800B006C 8FAB0060 */  lw         $t3, 0x60($sp)
/* B0C70 800B0070 8FAA0058 */  lw         $t2, 0x58($sp)
/* B0C74 800B0074 016A6821 */  addu       $t5, $t3, $t2
/* B0C78 800B0078 AFAD0060 */  sw         $t5, 0x60($sp)
/* B0C7C 800B007C 8FA90064 */  lw         $t1, 0x64($sp)
/* B0C80 800B0080 25280008 */  addiu      $t0, $t1, 8
/* B0C84 800B0084 AFA80064 */  sw         $t0, 0x64($sp)
/* B0C88 800B0088 AFA90024 */  sw         $t1, 0x24($sp)
/* B0C8C 800B008C 8FB8006C */  lw         $t8, 0x6c($sp)
/* B0C90 800B0090 8FAE0024 */  lw         $t6, 0x24($sp)
/* B0C94 800B0094 3C010800 */  lui        $at, 0x800
/* B0C98 800B0098 870F0000 */  lh         $t7, ($t8)
/* B0C9C 800B009C 31F9FFFF */  andi       $t9, $t7, 0xffff
/* B0CA0 800B00A0 03216025 */  or         $t4, $t9, $at
/* B0CA4 800B00A4 ADCC0000 */  sw         $t4, ($t6)
/* B0CA8 800B00A8 8FAB0060 */  lw         $t3, 0x60($sp)
/* B0CAC 800B00AC 8FB80024 */  lw         $t8, 0x24($sp)
/* B0CB0 800B00B0 316A0007 */  andi       $t2, $t3, 7
/* B0CB4 800B00B4 016A6823 */  subu       $t5, $t3, $t2
/* B0CB8 800B00B8 25A90008 */  addiu      $t1, $t5, 8
/* B0CBC 800B00BC 3128FFFF */  andi       $t0, $t1, 0xffff
/* B0CC0 800B00C0 AF080004 */  sw         $t0, 4($t8)
/* B0CC4 800B00C4 8FAF0064 */  lw         $t7, 0x64($sp)
/* B0CC8 800B00C8 25F90008 */  addiu      $t9, $t7, 8
/* B0CCC 800B00CC AFB90064 */  sw         $t9, 0x64($sp)
/* B0CD0 800B00D0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B0CD4 800B00D4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B0CD8 800B00D8 3C0C0400 */  lui        $t4, 0x400
/* B0CDC 800B00DC ADCC0000 */  sw         $t4, ($t6)
/* B0CE0 800B00E0 8FAB005C */  lw         $t3, 0x5c($sp)
/* B0CE4 800B00E4 8FAA0058 */  lw         $t2, 0x58($sp)
/* B0CE8 800B00E8 8FA90020 */  lw         $t1, 0x20($sp)
/* B0CEC 800B00EC 016A6823 */  subu       $t5, $t3, $t2
/* B0CF0 800B00F0 AD2D0004 */  sw         $t5, 4($t1)
/* B0CF4 800B00F4 10000002 */  b          .L800B0100
/* B0CF8 800B00F8 00000000 */   nop
.L800B00FC:
/* B0CFC 800B00FC AFA00058 */  sw         $zero, 0x58($sp)
.L800B0100:
/* B0D00 800B0100 8FA8006C */  lw         $t0, 0x6c($sp)
/* B0D04 800B0104 8FAF0058 */  lw         $t7, 0x58($sp)
/* B0D08 800B0108 85180000 */  lh         $t8, ($t0)
/* B0D0C 800B010C 030FC821 */  addu       $t9, $t8, $t7
/* B0D10 800B0110 A5190000 */  sh         $t9, ($t0)
/* B0D14 800B0114 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0D18 800B0118 8FAB0070 */  lw         $t3, 0x70($sp)
/* B0D1C 800B011C 8D8E0038 */  lw         $t6, 0x38($t4)
/* B0D20 800B0120 01CB5021 */  addu       $t2, $t6, $t3
/* B0D24 800B0124 AD8A0038 */  sw         $t2, 0x38($t4)
/* B0D28 800B0128 8FAD0040 */  lw         $t5, 0x40($sp)
/* B0D2C 800B012C 8FB80070 */  lw         $t8, 0x70($sp)
/* B0D30 800B0130 8DA90044 */  lw         $t1, 0x44($t5)
/* B0D34 800B0134 00187840 */  sll        $t7, $t8, 1
/* B0D38 800B0138 012FC821 */  addu       $t9, $t1, $t7
/* B0D3C 800B013C 10000007 */  b          .L800B015C
/* B0D40 800B0140 ADB90044 */   sw        $t9, 0x44($t5)
.L800B0144:
/* B0D44 800B0144 8FA80040 */  lw         $t0, 0x40($sp)
/* B0D48 800B0148 8FAB0070 */  lw         $t3, 0x70($sp)
/* B0D4C 800B014C 8D0E0044 */  lw         $t6, 0x44($t0)
/* B0D50 800B0150 000B5040 */  sll        $t2, $t3, 1
/* B0D54 800B0154 01CA6021 */  addu       $t4, $t6, $t2
/* B0D58 800B0158 AD0C0044 */  sw         $t4, 0x44($t0)
.L800B015C:
/* B0D5C 800B015C 8FB80050 */  lw         $t8, 0x50($sp)
/* B0D60 800B0160 1300001C */  beqz       $t8, .L800B01D4
/* B0D64 800B0164 00000000 */   nop
/* B0D68 800B0168 8FA90070 */  lw         $t1, 0x70($sp)
/* B0D6C 800B016C 8FB90050 */  lw         $t9, 0x50($sp)
/* B0D70 800B0170 00097840 */  sll        $t7, $t1, 1
/* B0D74 800B0174 01F96823 */  subu       $t5, $t7, $t9
/* B0D78 800B0178 AFAD004C */  sw         $t5, 0x4c($sp)
/* B0D7C 800B017C 8FAB004C */  lw         $t3, 0x4c($sp)
/* B0D80 800B0180 05610002 */  bgez       $t3, .L800B018C
/* B0D84 800B0184 00000000 */   nop
/* B0D88 800B0188 AFA0004C */  sw         $zero, 0x4c($sp)
.L800B018C:
/* B0D8C 800B018C 8FAE0064 */  lw         $t6, 0x64($sp)
/* B0D90 800B0190 25CA0008 */  addiu      $t2, $t6, 8
/* B0D94 800B0194 AFAA0064 */  sw         $t2, 0x64($sp)
/* B0D98 800B0198 AFAE001C */  sw         $t6, 0x1c($sp)
/* B0D9C 800B019C 8FAC006C */  lw         $t4, 0x6c($sp)
/* B0DA0 800B01A0 8FB8004C */  lw         $t8, 0x4c($sp)
/* B0DA4 800B01A4 3C0100FF */  lui        $at, 0xff
/* B0DA8 800B01A8 85880000 */  lh         $t0, ($t4)
/* B0DAC 800B01AC 3421FFFF */  ori        $at, $at, 0xffff
/* B0DB0 800B01B0 8FAD001C */  lw         $t5, 0x1c($sp)
/* B0DB4 800B01B4 01184821 */  addu       $t1, $t0, $t8
/* B0DB8 800B01B8 01217824 */  and        $t7, $t1, $at
/* B0DBC 800B01BC 3C010200 */  lui        $at, 0x200
/* B0DC0 800B01C0 01E1C825 */  or         $t9, $t7, $at
/* B0DC4 800B01C4 ADB90000 */  sw         $t9, ($t5)
/* B0DC8 800B01C8 8FAB0050 */  lw         $t3, 0x50($sp)
/* B0DCC 800B01CC 8FAE001C */  lw         $t6, 0x1c($sp)
/* B0DD0 800B01D0 ADCB0004 */  sw         $t3, 4($t6)
.L800B01D4:
/* B0DD4 800B01D4 10000003 */  b          .L800B01E4
/* B0DD8 800B01D8 8FA20064 */   lw        $v0, 0x64($sp)
/* B0DDC 800B01DC 10000001 */  b          .L800B01E4
/* B0DE0 800B01E0 00000000 */   nop
.L800B01E4:
/* B0DE4 800B01E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0DE8 800B01E8 27BD0068 */  addiu      $sp, $sp, 0x68
/* B0DEC 800B01EC 03E00008 */  jr         $ra
/* B0DF0 800B01F0 00000000 */   nop

glabel alLoadParam
/* B0DF4 800B01F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B0DF8 800B01F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B0DFC 800B01FC AFA40030 */  sw         $a0, 0x30($sp)
/* B0E00 800B0200 AFA50034 */  sw         $a1, 0x34($sp)
/* B0E04 800B0204 AFA60038 */  sw         $a2, 0x38($sp)
/* B0E08 800B0208 AFB00018 */  sw         $s0, 0x18($sp)
/* B0E0C 800B020C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B0E10 800B0210 AFAE002C */  sw         $t6, 0x2c($sp)
/* B0E14 800B0214 8FAF0030 */  lw         $t7, 0x30($sp)
/* B0E18 800B0218 AFAF0028 */  sw         $t7, 0x28($sp)
/* B0E1C 800B021C 8FB00034 */  lw         $s0, 0x34($sp)
/* B0E20 800B0220 24010004 */  addiu      $at, $zero, 4
/* B0E24 800B0224 1201007C */  beq        $s0, $at, .L800B0418
/* B0E28 800B0228 00000000 */   nop
/* B0E2C 800B022C 24010005 */  addiu      $at, $zero, 5
/* B0E30 800B0230 12010003 */  beq        $s0, $at, .L800B0240
/* B0E34 800B0234 00000000 */   nop
/* B0E38 800B0238 100000A9 */  b          .L800B04E0
/* B0E3C 800B023C 00000000 */   nop
.L800B0240:
/* B0E40 800B0240 8FB80038 */  lw         $t8, 0x38($sp)
/* B0E44 800B0244 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0E48 800B0248 AF380028 */  sw         $t8, 0x28($t9)
/* B0E4C 800B024C 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0E50 800B0250 8D090028 */  lw         $t1, 0x28($t0)
/* B0E54 800B0254 8D2A0000 */  lw         $t2, ($t1)
/* B0E58 800B0258 AD0A0044 */  sw         $t2, 0x44($t0)
/* B0E5C 800B025C 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0E60 800B0260 AD600038 */  sw         $zero, 0x38($t3)
/* B0E64 800B0264 8FAC002C */  lw         $t4, 0x2c($sp)
/* B0E68 800B0268 8D8D0028 */  lw         $t5, 0x28($t4)
/* B0E6C 800B026C 91B00008 */  lbu        $s0, 8($t5)
/* B0E70 800B0270 12000006 */  beqz       $s0, .L800B028C
/* B0E74 800B0274 00000000 */   nop
/* B0E78 800B0278 24010001 */  addiu      $at, $zero, 1
/* B0E7C 800B027C 12010040 */  beq        $s0, $at, .L800B0380
/* B0E80 800B0280 00000000 */   nop
/* B0E84 800B0284 10000060 */  b          .L800B0408
/* B0E88 800B0288 00000000 */   nop
.L800B028C:
/* B0E8C 800B028C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B0E90 800B0290 3C0E800B */  lui        $t6, %hi(alAdpcmPull)
/* B0E94 800B0294 25CEF510 */  addiu      $t6, $t6, %lo(alAdpcmPull)
/* B0E98 800B0298 ADEE0004 */  sw         $t6, 4($t7)
/* B0E9C 800B029C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B0EA0 800B02A0 24010009 */  addiu      $at, $zero, 9
/* B0EA4 800B02A4 8F190028 */  lw         $t9, 0x28($t8)
/* B0EA8 800B02A8 8F290004 */  lw         $t1, 4($t9)
/* B0EAC 800B02AC 0121001A */  div        $zero, $t1, $at
/* B0EB0 800B02B0 00005012 */  mflo       $t2
/* B0EB4 800B02B4 000A40C0 */  sll        $t0, $t2, 3
/* B0EB8 800B02B8 010A4021 */  addu       $t0, $t0, $t2
/* B0EBC 800B02BC AF280004 */  sw         $t0, 4($t9)
/* B0EC0 800B02C0 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0EC4 800B02C4 8D6C0028 */  lw         $t4, 0x28($t3)
/* B0EC8 800B02C8 8D8D0010 */  lw         $t5, 0x10($t4)
/* B0ECC 800B02CC 8DAE0000 */  lw         $t6, ($t5)
/* B0ED0 800B02D0 8DB80004 */  lw         $t8, 4($t5)
/* B0ED4 800B02D4 000E7840 */  sll        $t7, $t6, 1
/* B0ED8 800B02D8 01F80019 */  multu      $t7, $t8
/* B0EDC 800B02DC 00004812 */  mflo       $t1
/* B0EE0 800B02E0 000950C0 */  sll        $t2, $t1, 3
/* B0EE4 800B02E4 AD6A002C */  sw         $t2, 0x2c($t3)
/* B0EE8 800B02E8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0EEC 800B02EC 8D190028 */  lw         $t9, 0x28($t0)
/* B0EF0 800B02F0 8F2C000C */  lw         $t4, 0xc($t9)
/* B0EF4 800B02F4 11800019 */  beqz       $t4, .L800B035C
/* B0EF8 800B02F8 00000000 */   nop
/* B0EFC 800B02FC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0F00 800B0300 8DCD0028 */  lw         $t5, 0x28($t6)
/* B0F04 800B0304 8DAF000C */  lw         $t7, 0xc($t5)
/* B0F08 800B0308 8DF80000 */  lw         $t8, ($t7)
/* B0F0C 800B030C ADD8001C */  sw         $t8, 0x1c($t6)
/* B0F10 800B0310 8FA9002C */  lw         $t1, 0x2c($sp)
/* B0F14 800B0314 8D2A0028 */  lw         $t2, 0x28($t1)
/* B0F18 800B0318 8D4B000C */  lw         $t3, 0xc($t2)
/* B0F1C 800B031C 8D680004 */  lw         $t0, 4($t3)
/* B0F20 800B0320 AD280020 */  sw         $t0, 0x20($t1)
/* B0F24 800B0324 8FB9002C */  lw         $t9, 0x2c($sp)
/* B0F28 800B0328 8F2C0028 */  lw         $t4, 0x28($t9)
/* B0F2C 800B032C 8D8D000C */  lw         $t5, 0xc($t4)
/* B0F30 800B0330 8DAF0008 */  lw         $t7, 8($t5)
/* B0F34 800B0334 AF2F0024 */  sw         $t7, 0x24($t9)
/* B0F38 800B0338 8FB8002C */  lw         $t8, 0x2c($sp)
/* B0F3C 800B033C 24060020 */  addiu      $a2, $zero, 0x20
/* B0F40 800B0340 8F0E0028 */  lw         $t6, 0x28($t8)
/* B0F44 800B0344 8F050018 */  lw         $a1, 0x18($t8)
/* B0F48 800B0348 8DC4000C */  lw         $a0, 0xc($t6)
/* B0F4C 800B034C 0C02DF1C */  jal        alCopy
/* B0F50 800B0350 2484000C */   addiu     $a0, $a0, 0xc
/* B0F54 800B0354 10000008 */  b          .L800B0378
/* B0F58 800B0358 00000000 */   nop
.L800B035C:
/* B0F5C 800B035C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B0F60 800B0360 AD400024 */  sw         $zero, 0x24($t2)
/* B0F64 800B0364 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0F68 800B0368 8D700024 */  lw         $s0, 0x24($t3)
/* B0F6C 800B036C AD700020 */  sw         $s0, 0x20($t3)
/* B0F70 800B0370 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0F74 800B0374 AD10001C */  sw         $s0, 0x1c($t0)
.L800B0378:
/* B0F78 800B0378 10000025 */  b          .L800B0410
/* B0F7C 800B037C 00000000 */   nop
.L800B0380:
/* B0F80 800B0380 8FAC0028 */  lw         $t4, 0x28($sp)
/* B0F84 800B0384 3C09800B */  lui        $t1, %hi(alRaw16Pull)
/* B0F88 800B0388 2529FBB8 */  addiu      $t1, $t1, %lo(alRaw16Pull)
/* B0F8C 800B038C AD890004 */  sw         $t1, 4($t4)
/* B0F90 800B0390 8FAD002C */  lw         $t5, 0x2c($sp)
/* B0F94 800B0394 8DAF0028 */  lw         $t7, 0x28($t5)
/* B0F98 800B0398 8DF9000C */  lw         $t9, 0xc($t7)
/* B0F9C 800B039C 13200011 */  beqz       $t9, .L800B03E4
/* B0FA0 800B03A0 00000000 */   nop
/* B0FA4 800B03A4 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0FA8 800B03A8 8DD80028 */  lw         $t8, 0x28($t6)
/* B0FAC 800B03AC 8F0A000C */  lw         $t2, 0xc($t8)
/* B0FB0 800B03B0 8D4B0000 */  lw         $t3, ($t2)
/* B0FB4 800B03B4 ADCB001C */  sw         $t3, 0x1c($t6)
/* B0FB8 800B03B8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0FBC 800B03BC 8D090028 */  lw         $t1, 0x28($t0)
/* B0FC0 800B03C0 8D2C000C */  lw         $t4, 0xc($t1)
/* B0FC4 800B03C4 8D8D0004 */  lw         $t5, 4($t4)
/* B0FC8 800B03C8 AD0D0020 */  sw         $t5, 0x20($t0)
/* B0FCC 800B03CC 8FAF002C */  lw         $t7, 0x2c($sp)
/* B0FD0 800B03D0 8DF90028 */  lw         $t9, 0x28($t7)
/* B0FD4 800B03D4 8F38000C */  lw         $t8, 0xc($t9)
/* B0FD8 800B03D8 8F0A0008 */  lw         $t2, 8($t8)
/* B0FDC 800B03DC 10000008 */  b          .L800B0400
/* B0FE0 800B03E0 ADEA0024 */   sw        $t2, 0x24($t7)
.L800B03E4:
/* B0FE4 800B03E4 8FAB002C */  lw         $t3, 0x2c($sp)
/* B0FE8 800B03E8 AD600024 */  sw         $zero, 0x24($t3)
/* B0FEC 800B03EC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B0FF0 800B03F0 8DD00024 */  lw         $s0, 0x24($t6)
/* B0FF4 800B03F4 ADD00020 */  sw         $s0, 0x20($t6)
/* B0FF8 800B03F8 8FA9002C */  lw         $t1, 0x2c($sp)
/* B0FFC 800B03FC AD30001C */  sw         $s0, 0x1c($t1)
.L800B0400:
/* B1000 800B0400 10000003 */  b          .L800B0410
/* B1004 800B0404 00000000 */   nop
.L800B0408:
/* B1008 800B0408 10000001 */  b          .L800B0410
/* B100C 800B040C 00000000 */   nop
.L800B0410:
/* B1010 800B0410 10000035 */  b          .L800B04E8
/* B1014 800B0414 00000000 */   nop
.L800B0418:
/* B1018 800B0418 8FAC002C */  lw         $t4, 0x2c($sp)
/* B101C 800B041C AD80003C */  sw         $zero, 0x3c($t4)
/* B1020 800B0420 8FA8002C */  lw         $t0, 0x2c($sp)
/* B1024 800B0424 240D0001 */  addiu      $t5, $zero, 1
/* B1028 800B0428 AD0D0040 */  sw         $t5, 0x40($t0)
/* B102C 800B042C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B1030 800B0430 AF200038 */  sw         $zero, 0x38($t9)
/* B1034 800B0434 8FB8002C */  lw         $t8, 0x2c($sp)
/* B1038 800B0438 8F0A0028 */  lw         $t2, 0x28($t8)
/* B103C 800B043C 11400026 */  beqz       $t2, .L800B04D8
/* B1040 800B0440 00000000 */   nop
/* B1044 800B0444 8FAF002C */  lw         $t7, 0x2c($sp)
/* B1048 800B0448 8DEB0028 */  lw         $t3, 0x28($t7)
/* B104C 800B044C 8D6E0000 */  lw         $t6, ($t3)
/* B1050 800B0450 ADEE0044 */  sw         $t6, 0x44($t7)
/* B1054 800B0454 8FA9002C */  lw         $t1, 0x2c($sp)
/* B1058 800B0458 8D2C0028 */  lw         $t4, 0x28($t1)
/* B105C 800B045C 918D0008 */  lbu        $t5, 8($t4)
/* B1060 800B0460 15A0000D */  bnez       $t5, .L800B0498
/* B1064 800B0464 00000000 */   nop
/* B1068 800B0468 8FA8002C */  lw         $t0, 0x2c($sp)
/* B106C 800B046C 8D190028 */  lw         $t9, 0x28($t0)
/* B1070 800B0470 8F38000C */  lw         $t8, 0xc($t9)
/* B1074 800B0474 13000006 */  beqz       $t8, .L800B0490
/* B1078 800B0478 00000000 */   nop
/* B107C 800B047C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B1080 800B0480 8D4B0028 */  lw         $t3, 0x28($t2)
/* B1084 800B0484 8D6E000C */  lw         $t6, 0xc($t3)
/* B1088 800B0488 8DCF0008 */  lw         $t7, 8($t6)
/* B108C 800B048C AD4F0024 */  sw         $t7, 0x24($t2)
.L800B0490:
/* B1090 800B0490 10000011 */  b          .L800B04D8
/* B1094 800B0494 00000000 */   nop
.L800B0498:
/* B1098 800B0498 8FA9002C */  lw         $t1, 0x2c($sp)
/* B109C 800B049C 24010001 */  addiu      $at, $zero, 1
/* B10A0 800B04A0 8D2C0028 */  lw         $t4, 0x28($t1)
/* B10A4 800B04A4 918D0008 */  lbu        $t5, 8($t4)
/* B10A8 800B04A8 15A1000B */  bne        $t5, $at, .L800B04D8
/* B10AC 800B04AC 00000000 */   nop
/* B10B0 800B04B0 8FA8002C */  lw         $t0, 0x2c($sp)
/* B10B4 800B04B4 8D190028 */  lw         $t9, 0x28($t0)
/* B10B8 800B04B8 8F38000C */  lw         $t8, 0xc($t9)
/* B10BC 800B04BC 13000006 */  beqz       $t8, .L800B04D8
/* B10C0 800B04C0 00000000 */   nop
/* B10C4 800B04C4 8FAB002C */  lw         $t3, 0x2c($sp)
/* B10C8 800B04C8 8D6E0028 */  lw         $t6, 0x28($t3)
/* B10CC 800B04CC 8DCF000C */  lw         $t7, 0xc($t6)
/* B10D0 800B04D0 8DEA0008 */  lw         $t2, 8($t7)
/* B10D4 800B04D4 AD6A0024 */  sw         $t2, 0x24($t3)
.L800B04D8:
/* B10D8 800B04D8 10000003 */  b          .L800B04E8
/* B10DC 800B04DC 00000000 */   nop
.L800B04E0:
/* B10E0 800B04E0 10000001 */  b          .L800B04E8
/* B10E4 800B04E4 00000000 */   nop
.L800B04E8:
/* B10E8 800B04E8 10000001 */  b          .L800B04F0
/* B10EC 800B04EC 00000000 */   nop
.L800B04F0:
/* B10F0 800B04F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B10F4 800B04F4 8FB00018 */  lw         $s0, 0x18($sp)
/* B10F8 800B04F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B10FC 800B04FC 03E00008 */  jr         $ra
/* B1100 800B0500 00000000 */   nop

glabel func_800B0504
/* B1104 800B0504 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B1108 800B0508 AFBF0014 */  sw         $ra, 0x14($sp)
/* B110C 800B050C AFA40038 */  sw         $a0, 0x38($sp)
/* B1110 800B0510 AFA5003C */  sw         $a1, 0x3c($sp)
/* B1114 800B0514 AFA60040 */  sw         $a2, 0x40($sp)
/* B1118 800B0518 AFA70044 */  sw         $a3, 0x44($sp)
/* B111C 800B051C 8FAE0044 */  lw         $t6, 0x44($sp)
/* B1120 800B0520 19C0002F */  blez       $t6, .L800B05E0
/* B1124 800B0524 00000000 */   nop
/* B1128 800B0528 8FAF003C */  lw         $t7, 0x3c($sp)
/* B112C 800B052C 8FA50044 */  lw         $a1, 0x44($sp)
/* B1130 800B0530 8DF90030 */  lw         $t9, 0x30($t7)
/* B1134 800B0534 8DE40044 */  lw         $a0, 0x44($t7)
/* B1138 800B0538 8DE60034 */  lw         $a2, 0x34($t7)
/* B113C 800B053C 0320F809 */  jalr       $t9
/* B1140 800B0540 00000000 */   nop
/* B1144 800B0544 AFA20030 */  sw         $v0, 0x30($sp)
/* B1148 800B0548 8FB80030 */  lw         $t8, 0x30($sp)
/* B114C 800B054C 33080007 */  andi       $t0, $t8, 7
/* B1150 800B0550 AFA80034 */  sw         $t0, 0x34($sp)
/* B1154 800B0554 8FA90044 */  lw         $t1, 0x44($sp)
/* B1158 800B0558 8FAA0034 */  lw         $t2, 0x34($sp)
/* B115C 800B055C 012A5821 */  addu       $t3, $t1, $t2
/* B1160 800B0560 AFAB0044 */  sw         $t3, 0x44($sp)
/* B1164 800B0564 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1168 800B0568 258D0008 */  addiu      $t5, $t4, 8
/* B116C 800B056C AFAD0038 */  sw         $t5, 0x38($sp)
/* B1170 800B0570 AFAC002C */  sw         $t4, 0x2c($sp)
/* B1174 800B0574 87AE004E */  lh         $t6, 0x4e($sp)
/* B1178 800B0578 8FB8002C */  lw         $t8, 0x2c($sp)
/* B117C 800B057C 3C010800 */  lui        $at, 0x800
/* B1180 800B0580 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B1184 800B0584 01E1C825 */  or         $t9, $t7, $at
/* B1188 800B0588 AF190000 */  sw         $t9, ($t8)
/* B118C 800B058C 8FA80044 */  lw         $t0, 0x44($sp)
/* B1190 800B0590 8FAD002C */  lw         $t5, 0x2c($sp)
/* B1194 800B0594 31090007 */  andi       $t1, $t0, 7
/* B1198 800B0598 01095023 */  subu       $t2, $t0, $t1
/* B119C 800B059C 254B0008 */  addiu      $t3, $t2, 8
/* B11A0 800B05A0 316CFFFF */  andi       $t4, $t3, 0xffff
/* B11A4 800B05A4 ADAC0004 */  sw         $t4, 4($t5)
/* B11A8 800B05A8 8FAE0038 */  lw         $t6, 0x38($sp)
/* B11AC 800B05AC 25CF0008 */  addiu      $t7, $t6, 8
/* B11B0 800B05B0 AFAF0038 */  sw         $t7, 0x38($sp)
/* B11B4 800B05B4 AFAE0028 */  sw         $t6, 0x28($sp)
/* B11B8 800B05B8 8FB80028 */  lw         $t8, 0x28($sp)
/* B11BC 800B05BC 3C190400 */  lui        $t9, 0x400
/* B11C0 800B05C0 AF190000 */  sw         $t9, ($t8)
/* B11C4 800B05C4 8FA80030 */  lw         $t0, 0x30($sp)
/* B11C8 800B05C8 8FA90034 */  lw         $t1, 0x34($sp)
/* B11CC 800B05CC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B11D0 800B05D0 01095023 */  subu       $t2, $t0, $t1
/* B11D4 800B05D4 AD6A0004 */  sw         $t2, 4($t3)
/* B11D8 800B05D8 10000002 */  b          .L800B05E4
/* B11DC 800B05DC 00000000 */   nop
.L800B05E0:
/* B11E0 800B05E0 AFA00034 */  sw         $zero, 0x34($sp)
.L800B05E4:
/* B11E4 800B05E4 8FAC0050 */  lw         $t4, 0x50($sp)
/* B11E8 800B05E8 318D0002 */  andi       $t5, $t4, 2
/* B11EC 800B05EC 11A0000F */  beqz       $t5, .L800B062C
/* B11F0 800B05F0 00000000 */   nop
/* B11F4 800B05F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* B11F8 800B05F8 25CF0008 */  addiu      $t7, $t6, 8
/* B11FC 800B05FC AFAF0038 */  sw         $t7, 0x38($sp)
/* B1200 800B0600 AFAE0024 */  sw         $t6, 0x24($sp)
/* B1204 800B0604 8FB80024 */  lw         $t8, 0x24($sp)
/* B1208 800B0608 3C190F00 */  lui        $t9, 0xf00
/* B120C 800B060C AF190000 */  sw         $t9, ($t8)
/* B1210 800B0610 8FA8003C */  lw         $t0, 0x3c($sp)
/* B1214 800B0614 8FAB0024 */  lw         $t3, 0x24($sp)
/* B1218 800B0618 3C011FFF */  lui        $at, 0x1fff
/* B121C 800B061C 8D090018 */  lw         $t1, 0x18($t0)
/* B1220 800B0620 3421FFFF */  ori        $at, $at, 0xffff
/* B1224 800B0624 01215024 */  and        $t2, $t1, $at
/* B1228 800B0628 AD6A0004 */  sw         $t2, 4($t3)
.L800B062C:
/* B122C 800B062C 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1230 800B0630 258D0008 */  addiu      $t5, $t4, 8
/* B1234 800B0634 AFAD0038 */  sw         $t5, 0x38($sp)
/* B1238 800B0638 AFAC0020 */  sw         $t4, 0x20($sp)
/* B123C 800B063C 87AE004E */  lh         $t6, 0x4e($sp)
/* B1240 800B0640 8FAF0034 */  lw         $t7, 0x34($sp)
/* B1244 800B0644 8FA90020 */  lw         $t1, 0x20($sp)
/* B1248 800B0648 3C010800 */  lui        $at, 0x800
/* B124C 800B064C 01CFC821 */  addu       $t9, $t6, $t7
/* B1250 800B0650 3338FFFF */  andi       $t8, $t9, 0xffff
/* B1254 800B0654 03014025 */  or         $t0, $t8, $at
/* B1258 800B0658 AD280000 */  sw         $t0, ($t1)
/* B125C 800B065C 87AA004A */  lh         $t2, 0x4a($sp)
/* B1260 800B0660 8FAD0040 */  lw         $t5, 0x40($sp)
/* B1264 800B0664 8FB80020 */  lw         $t8, 0x20($sp)
/* B1268 800B0668 314BFFFF */  andi       $t3, $t2, 0xffff
/* B126C 800B066C 000D7040 */  sll        $t6, $t5, 1
/* B1270 800B0670 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B1274 800B0674 000B6400 */  sll        $t4, $t3, 0x10
/* B1278 800B0678 018FC825 */  or         $t9, $t4, $t7
/* B127C 800B067C AF190004 */  sw         $t9, 4($t8)
/* B1280 800B0680 8FA80038 */  lw         $t0, 0x38($sp)
/* B1284 800B0684 25090008 */  addiu      $t1, $t0, 8
/* B1288 800B0688 AFA90038 */  sw         $t1, 0x38($sp)
/* B128C 800B068C AFA8001C */  sw         $t0, 0x1c($sp)
/* B1290 800B0690 8FAA0050 */  lw         $t2, 0x50($sp)
/* B1294 800B0694 8FAC001C */  lw         $t4, 0x1c($sp)
/* B1298 800B0698 3C010100 */  lui        $at, 0x100
/* B129C 800B069C 314B00FF */  andi       $t3, $t2, 0xff
/* B12A0 800B06A0 000B6C00 */  sll        $t5, $t3, 0x10
/* B12A4 800B06A4 01A17025 */  or         $t6, $t5, $at
/* B12A8 800B06A8 AD8E0000 */  sw         $t6, ($t4)
/* B12AC 800B06AC 8FAF003C */  lw         $t7, 0x3c($sp)
/* B12B0 800B06B0 8FA8001C */  lw         $t0, 0x1c($sp)
/* B12B4 800B06B4 3C011FFF */  lui        $at, 0x1fff
/* B12B8 800B06B8 8DF90014 */  lw         $t9, 0x14($t7)
/* B12BC 800B06BC 3421FFFF */  ori        $at, $at, 0xffff
/* B12C0 800B06C0 0321C024 */  and        $t8, $t9, $at
/* B12C4 800B06C4 AD180004 */  sw         $t8, 4($t0)
/* B12C8 800B06C8 8FA9003C */  lw         $t1, 0x3c($sp)
/* B12CC 800B06CC AD200040 */  sw         $zero, 0x40($t1)
/* B12D0 800B06D0 10000003 */  b          .L800B06E0
/* B12D4 800B06D4 8FA20038 */   lw        $v0, 0x38($sp)
/* B12D8 800B06D8 10000001 */  b          .L800B06E0
/* B12DC 800B06DC 00000000 */   nop
.L800B06E0:
/* B12E0 800B06E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B12E4 800B06E4 27BD0038 */  addiu      $sp, $sp, 0x38
/* B12E8 800B06E8 03E00008 */  jr         $ra
/* B12EC 800B06EC 00000000 */   nop

glabel alResamplePull
/* B12F0 800B06F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B12F4 800B06F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B12F8 800B06F8 AFA40048 */  sw         $a0, 0x48($sp)
/* B12FC 800B06FC AFA5004C */  sw         $a1, 0x4c($sp)
/* B1300 800B0700 AFA60050 */  sw         $a2, 0x50($sp)
/* B1304 800B0704 AFA70054 */  sw         $a3, 0x54($sp)
/* B1308 800B0708 8FAE0048 */  lw         $t6, 0x48($sp)
/* B130C 800B070C AFAE0044 */  sw         $t6, 0x44($sp)
/* B1310 800B0710 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1314 800B0714 AFAF0040 */  sw         $t7, 0x40($sp)
/* B1318 800B0718 8FB80044 */  lw         $t8, 0x44($sp)
/* B131C 800B071C 8F190000 */  lw         $t9, ($t8)
/* B1320 800B0720 AFB90034 */  sw         $t9, 0x34($sp)
/* B1324 800B0724 24080140 */  addiu      $t0, $zero, 0x140
/* B1328 800B0728 A7A8003E */  sh         $t0, 0x3e($sp)
/* B132C 800B072C 8FA90050 */  lw         $t1, 0x50($sp)
/* B1330 800B0730 15200003 */  bnez       $t1, .L800B0740
/* B1334 800B0734 00000000 */   nop
/* B1338 800B0738 1000009D */  b          .L800B09B0
/* B133C 800B073C 8FA20040 */   lw        $v0, 0x40($sp)
.L800B0740:
/* B1340 800B0740 8FAA0044 */  lw         $t2, 0x44($sp)
/* B1344 800B0744 8D4B001C */  lw         $t3, 0x1c($t2)
/* B1348 800B0748 11600023 */  beqz       $t3, .L800B07D8
/* B134C 800B074C 00000000 */   nop
/* B1350 800B0750 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1354 800B0754 8FAC0034 */  lw         $t4, 0x34($sp)
/* B1358 800B0758 27A5003E */  addiu      $a1, $sp, 0x3e
/* B135C 800B075C AFAD0010 */  sw         $t5, 0x10($sp)
/* B1360 800B0760 8D990004 */  lw         $t9, 4($t4)
/* B1364 800B0764 8FA60050 */  lw         $a2, 0x50($sp)
/* B1368 800B0768 8FA70054 */  lw         $a3, 0x54($sp)
/* B136C 800B076C 0320F809 */  jalr       $t9
/* B1370 800B0770 01802025 */   or        $a0, $t4, $zero
/* B1374 800B0774 AFA20040 */  sw         $v0, 0x40($sp)
/* B1378 800B0778 8FAE0040 */  lw         $t6, 0x40($sp)
/* B137C 800B077C 25CF0008 */  addiu      $t7, $t6, 8
/* B1380 800B0780 AFAF0040 */  sw         $t7, 0x40($sp)
/* B1384 800B0784 AFAE0028 */  sw         $t6, 0x28($sp)
/* B1388 800B0788 87B8003E */  lh         $t8, 0x3e($sp)
/* B138C 800B078C 3C0100FF */  lui        $at, 0xff
/* B1390 800B0790 3421FFFF */  ori        $at, $at, 0xffff
/* B1394 800B0794 8FAA0028 */  lw         $t2, 0x28($sp)
/* B1398 800B0798 03014024 */  and        $t0, $t8, $at
/* B139C 800B079C 3C010A00 */  lui        $at, 0xa00
/* B13A0 800B07A0 01014825 */  or         $t1, $t0, $at
/* B13A4 800B07A4 AD490000 */  sw         $t1, ($t2)
/* B13A8 800B07A8 8FAB004C */  lw         $t3, 0x4c($sp)
/* B13AC 800B07AC 8FAE0050 */  lw         $t6, 0x50($sp)
/* B13B0 800B07B0 8FA90028 */  lw         $t1, 0x28($sp)
/* B13B4 800B07B4 856D0000 */  lh         $t5, ($t3)
/* B13B8 800B07B8 000E7840 */  sll        $t7, $t6, 1
/* B13BC 800B07BC 31F8FFFF */  andi       $t8, $t7, 0xffff
/* B13C0 800B07C0 31ACFFFF */  andi       $t4, $t5, 0xffff
/* B13C4 800B07C4 000CCC00 */  sll        $t9, $t4, 0x10
/* B13C8 800B07C8 03384025 */  or         $t0, $t9, $t8
/* B13CC 800B07CC AD280004 */  sw         $t0, 4($t1)
/* B13D0 800B07D0 10000073 */  b          .L800B09A0
/* B13D4 800B07D4 00000000 */   nop
.L800B07D8:
/* B13D8 800B07D8 8FAA0044 */  lw         $t2, 0x44($sp)
/* B13DC 800B07DC 3C01800F */  lui        $at, %hi(D_800EE500)
/* B13E0 800B07E0 D428E500 */  ldc1       $f8, %lo(D_800EE500)($at)
/* B13E4 800B07E4 C5440018 */  lwc1       $f4, 0x18($t2)
/* B13E8 800B07E8 460021A1 */  cvt.d.s    $f6, $f4
/* B13EC 800B07EC 4626403C */  c.lt.d     $f8, $f6
/* B13F0 800B07F0 00000000 */  nop
/* B13F4 800B07F4 45000005 */  bc1f       .L800B080C
/* B13F8 800B07F8 00000000 */   nop
/* B13FC 800B07FC 3C01800F */  lui        $at, %hi(D_800EE508)
/* B1400 800B0800 C42AE508 */  lwc1       $f10, %lo(D_800EE508)($at)
/* B1404 800B0804 8FAB0044 */  lw         $t3, 0x44($sp)
/* B1408 800B0808 E56A0018 */  swc1       $f10, 0x18($t3)
.L800B080C:
/* B140C 800B080C 8FAD0044 */  lw         $t5, 0x44($sp)
/* B1410 800B0810 3C014700 */  lui        $at, 0x4700
/* B1414 800B0814 44819000 */  mtc1       $at, $f18
/* B1418 800B0818 C5B00018 */  lwc1       $f16, 0x18($t5)
/* B141C 800B081C 46128102 */  mul.s      $f4, $f16, $f18
/* B1420 800B0820 4600218D */  trunc.w.s  $f6, $f4
/* B1424 800B0824 440E3000 */  mfc1       $t6, $f6
/* B1428 800B0828 00000000 */  nop
/* B142C 800B082C 448E4000 */  mtc1       $t6, $f8
/* B1430 800B0830 00000000 */  nop
/* B1434 800B0834 468042A0 */  cvt.s.w    $f10, $f8
/* B1438 800B0838 E5AA0018 */  swc1       $f10, 0x18($t5)
/* B143C 800B083C 8FAF0044 */  lw         $t7, 0x44($sp)
/* B1440 800B0840 3C014700 */  lui        $at, 0x4700
/* B1444 800B0844 44819000 */  mtc1       $at, $f18
/* B1448 800B0848 C5F00018 */  lwc1       $f16, 0x18($t7)
/* B144C 800B084C 46128103 */  div.s      $f4, $f16, $f18
/* B1450 800B0850 E5E40018 */  swc1       $f4, 0x18($t7)
/* B1454 800B0854 8FB80050 */  lw         $t8, 0x50($sp)
/* B1458 800B0858 8FB90044 */  lw         $t9, 0x44($sp)
/* B145C 800B085C 44984000 */  mtc1       $t8, $f8
/* B1460 800B0860 C7260018 */  lwc1       $f6, 0x18($t9)
/* B1464 800B0864 C7320020 */  lwc1       $f18, 0x20($t9)
/* B1468 800B0868 468042A0 */  cvt.s.w    $f10, $f8
/* B146C 800B086C 460A3402 */  mul.s      $f16, $f6, $f10
/* B1470 800B0870 46109100 */  add.s      $f4, $f18, $f16
/* B1474 800B0874 E7A4002C */  swc1       $f4, 0x2c($sp)
/* B1478 800B0878 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* B147C 800B087C 4600418D */  trunc.w.s  $f6, $f8
/* B1480 800B0880 44093000 */  mfc1       $t1, $f6
/* B1484 800B0884 00000000 */  nop
/* B1488 800B0888 AFA90038 */  sw         $t1, 0x38($sp)
/* B148C 800B088C 8FAA0038 */  lw         $t2, 0x38($sp)
/* B1490 800B0890 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* B1494 800B0894 8FAB0044 */  lw         $t3, 0x44($sp)
/* B1498 800B0898 448A9000 */  mtc1       $t2, $f18
/* B149C 800B089C 00000000 */  nop
/* B14A0 800B08A0 46809420 */  cvt.s.w    $f16, $f18
/* B14A4 800B08A4 46105101 */  sub.s      $f4, $f10, $f16
/* B14A8 800B08A8 E5640020 */  swc1       $f4, 0x20($t3)
/* B14AC 800B08AC 8FAE0058 */  lw         $t6, 0x58($sp)
/* B14B0 800B08B0 8FAC0034 */  lw         $t4, 0x34($sp)
/* B14B4 800B08B4 27A5003E */  addiu      $a1, $sp, 0x3e
/* B14B8 800B08B8 AFAE0010 */  sw         $t6, 0x10($sp)
/* B14BC 800B08BC 8D990004 */  lw         $t9, 4($t4)
/* B14C0 800B08C0 8FA60038 */  lw         $a2, 0x38($sp)
/* B14C4 800B08C4 8FA70054 */  lw         $a3, 0x54($sp)
/* B14C8 800B08C8 0320F809 */  jalr       $t9
/* B14CC 800B08CC 01802025 */   or        $a0, $t4, $zero
/* B14D0 800B08D0 AFA20040 */  sw         $v0, 0x40($sp)
/* B14D4 800B08D4 8FAD0044 */  lw         $t5, 0x44($sp)
/* B14D8 800B08D8 3C014700 */  lui        $at, 0x4700
/* B14DC 800B08DC 44813000 */  mtc1       $at, $f6
/* B14E0 800B08E0 C5A80018 */  lwc1       $f8, 0x18($t5)
/* B14E4 800B08E4 46064482 */  mul.s      $f18, $f8, $f6
/* B14E8 800B08E8 4600928D */  trunc.w.s  $f10, $f18
/* B14EC 800B08EC 44185000 */  mfc1       $t8, $f10
/* B14F0 800B08F0 00000000 */  nop
/* B14F4 800B08F4 AFB80030 */  sw         $t8, 0x30($sp)
/* B14F8 800B08F8 8FA80040 */  lw         $t0, 0x40($sp)
/* B14FC 800B08FC 25090008 */  addiu      $t1, $t0, 8
/* B1500 800B0900 AFA90040 */  sw         $t1, 0x40($sp)
/* B1504 800B0904 AFA80024 */  sw         $t0, 0x24($sp)
/* B1508 800B0908 87AA003E */  lh         $t2, 0x3e($sp)
/* B150C 800B090C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B1510 800B0910 3C010800 */  lui        $at, 0x800
/* B1514 800B0914 314BFFFF */  andi       $t3, $t2, 0xffff
/* B1518 800B0918 01617025 */  or         $t6, $t3, $at
/* B151C 800B091C AD8E0000 */  sw         $t6, ($t4)
/* B1520 800B0920 8FB9004C */  lw         $t9, 0x4c($sp)
/* B1524 800B0924 8FA80050 */  lw         $t0, 0x50($sp)
/* B1528 800B0928 8FAE0024 */  lw         $t6, 0x24($sp)
/* B152C 800B092C 872D0000 */  lh         $t5, ($t9)
/* B1530 800B0930 00084840 */  sll        $t1, $t0, 1
/* B1534 800B0934 312AFFFF */  andi       $t2, $t1, 0xffff
/* B1538 800B0938 31AFFFFF */  andi       $t7, $t5, 0xffff
/* B153C 800B093C 000FC400 */  sll        $t8, $t7, 0x10
/* B1540 800B0940 030A5825 */  or         $t3, $t8, $t2
/* B1544 800B0944 ADCB0004 */  sw         $t3, 4($t6)
/* B1548 800B0948 8FAC0040 */  lw         $t4, 0x40($sp)
/* B154C 800B094C 25990008 */  addiu      $t9, $t4, 8
/* B1550 800B0950 AFB90040 */  sw         $t9, 0x40($sp)
/* B1554 800B0954 AFAC0020 */  sw         $t4, 0x20($sp)
/* B1558 800B0958 8FAD0044 */  lw         $t5, 0x44($sp)
/* B155C 800B095C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B1560 800B0960 8FAC0020 */  lw         $t4, 0x20($sp)
/* B1564 800B0964 8DAF0024 */  lw         $t7, 0x24($t5)
/* B1568 800B0968 3C010500 */  lui        $at, 0x500
/* B156C 800B096C 314BFFFF */  andi       $t3, $t2, 0xffff
/* B1570 800B0970 31E800FF */  andi       $t0, $t7, 0xff
/* B1574 800B0974 00084C00 */  sll        $t1, $t0, 0x10
/* B1578 800B0978 0121C025 */  or         $t8, $t1, $at
/* B157C 800B097C 030B7025 */  or         $t6, $t8, $t3
/* B1580 800B0980 AD8E0000 */  sw         $t6, ($t4)
/* B1584 800B0984 8FB90044 */  lw         $t9, 0x44($sp)
/* B1588 800B0988 0C026964 */  jal        osVirtualToPhysical
/* B158C 800B098C 8F240014 */   lw        $a0, 0x14($t9)
/* B1590 800B0990 8FAD0020 */  lw         $t5, 0x20($sp)
/* B1594 800B0994 ADA20004 */  sw         $v0, 4($t5)
/* B1598 800B0998 8FAF0044 */  lw         $t7, 0x44($sp)
/* B159C 800B099C ADE00024 */  sw         $zero, 0x24($t7)
.L800B09A0:
/* B15A0 800B09A0 10000003 */  b          .L800B09B0
/* B15A4 800B09A4 8FA20040 */   lw        $v0, 0x40($sp)
/* B15A8 800B09A8 10000001 */  b          .L800B09B0
/* B15AC 800B09AC 00000000 */   nop
.L800B09B0:
/* B15B0 800B09B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B15B4 800B09B4 27BD0048 */  addiu      $sp, $sp, 0x48
/* B15B8 800B09B8 03E00008 */  jr         $ra
/* B15BC 800B09BC 00000000 */   nop

glabel alResampleParam
/* B15C0 800B09C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B15C4 800B09C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B15C8 800B09C8 AFA40028 */  sw         $a0, 0x28($sp)
/* B15CC 800B09CC AFA5002C */  sw         $a1, 0x2c($sp)
/* B15D0 800B09D0 AFA60030 */  sw         $a2, 0x30($sp)
/* B15D4 800B09D4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B15D8 800B09D8 AFAE0024 */  sw         $t6, 0x24($sp)
/* B15DC 800B09DC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B15E0 800B09E0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B15E4 800B09E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B15E8 800B09E8 2719FFFF */  addiu      $t9, $t8, -1
/* B15EC 800B09EC 2F210009 */  sltiu      $at, $t9, 9
/* B15F0 800B09F0 10200041 */  beqz       $at, .L800B0AF8
/* B15F4 800B09F4 00000000 */   nop
/* B15F8 800B09F8 0019C880 */  sll        $t9, $t9, 2
/* B15FC 800B09FC 3C01800F */  lui        $at, %hi(D_800EE50C)
/* B1600 800B0A00 00390821 */  addu       $at, $at, $t9
/* B1604 800B0A04 8C39E50C */  lw         $t9, %lo(D_800EE50C)($at)
/* B1608 800B0A08 03200008 */  jr         $t9
/* B160C 800B0A0C 00000000 */   nop
/* B1610 800B0A10 8FA80030 */  lw         $t0, 0x30($sp)
/* B1614 800B0A14 8FA90024 */  lw         $t1, 0x24($sp)
/* B1618 800B0A18 AD280000 */  sw         $t0, ($t1)
/* B161C 800B0A1C 10000044 */  b          .L800B0B30
/* B1620 800B0A20 00000000 */   nop
/* B1624 800B0A24 44802000 */  mtc1       $zero, $f4
/* B1628 800B0A28 8FAA0020 */  lw         $t2, 0x20($sp)
/* B162C 800B0A2C E5440020 */  swc1       $f4, 0x20($t2)
/* B1630 800B0A30 8FAC0020 */  lw         $t4, 0x20($sp)
/* B1634 800B0A34 240B0001 */  addiu      $t3, $zero, 1
/* B1638 800B0A38 AD8B0024 */  sw         $t3, 0x24($t4)
/* B163C 800B0A3C 8FAD0020 */  lw         $t5, 0x20($sp)
/* B1640 800B0A40 ADA00030 */  sw         $zero, 0x30($t5)
/* B1644 800B0A44 8FAE0020 */  lw         $t6, 0x20($sp)
/* B1648 800B0A48 ADC0001C */  sw         $zero, 0x1c($t6)
/* B164C 800B0A4C 8FAF0024 */  lw         $t7, 0x24($sp)
/* B1650 800B0A50 8DF80000 */  lw         $t8, ($t7)
/* B1654 800B0A54 13000009 */  beqz       $t8, .L800B0A7C
/* B1658 800B0A58 00000000 */   nop
/* B165C 800B0A5C 8FB90024 */  lw         $t9, 0x24($sp)
/* B1660 800B0A60 24050004 */  addiu      $a1, $zero, 4
/* B1664 800B0A64 00003025 */  or         $a2, $zero, $zero
/* B1668 800B0A68 8F280000 */  lw         $t0, ($t9)
/* B166C 800B0A6C 8D190008 */  lw         $t9, 8($t0)
/* B1670 800B0A70 01002025 */  or         $a0, $t0, $zero
/* B1674 800B0A74 0320F809 */  jalr       $t9
/* B1678 800B0A78 00000000 */   nop
.L800B0A7C:
/* B167C 800B0A7C 1000002C */  b          .L800B0B30
/* B1680 800B0A80 00000000 */   nop
/* B1684 800B0A84 8FAA0020 */  lw         $t2, 0x20($sp)
/* B1688 800B0A88 24090001 */  addiu      $t1, $zero, 1
/* B168C 800B0A8C AD490030 */  sw         $t1, 0x30($t2)
/* B1690 800B0A90 8FAB0024 */  lw         $t3, 0x24($sp)
/* B1694 800B0A94 8D6C0000 */  lw         $t4, ($t3)
/* B1698 800B0A98 11800009 */  beqz       $t4, .L800B0AC0
/* B169C 800B0A9C 00000000 */   nop
/* B16A0 800B0AA0 8FAD0024 */  lw         $t5, 0x24($sp)
/* B16A4 800B0AA4 24050009 */  addiu      $a1, $zero, 9
/* B16A8 800B0AA8 00003025 */  or         $a2, $zero, $zero
/* B16AC 800B0AAC 8DAE0000 */  lw         $t6, ($t5)
/* B16B0 800B0AB0 8DD90008 */  lw         $t9, 8($t6)
/* B16B4 800B0AB4 01C02025 */  or         $a0, $t6, $zero
/* B16B8 800B0AB8 0320F809 */  jalr       $t9
/* B16BC 800B0ABC 00000000 */   nop
.L800B0AC0:
/* B16C0 800B0AC0 1000001B */  b          .L800B0B30
/* B16C4 800B0AC4 00000000 */   nop
/* B16C8 800B0AC8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B16CC 800B0ACC AFAF001C */  sw         $t7, 0x1c($sp)
/* B16D0 800B0AD0 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* B16D4 800B0AD4 8FB80020 */  lw         $t8, 0x20($sp)
/* B16D8 800B0AD8 E7060018 */  swc1       $f6, 0x18($t8)
/* B16DC 800B0ADC 10000014 */  b          .L800B0B30
/* B16E0 800B0AE0 00000000 */   nop
/* B16E4 800B0AE4 8FA90020 */  lw         $t1, 0x20($sp)
/* B16E8 800B0AE8 24080001 */  addiu      $t0, $zero, 1
/* B16EC 800B0AEC AD28001C */  sw         $t0, 0x1c($t1)
/* B16F0 800B0AF0 1000000F */  b          .L800B0B30
/* B16F4 800B0AF4 00000000 */   nop
.L800B0AF8:
/* B16F8 800B0AF8 8FAA0024 */  lw         $t2, 0x24($sp)
/* B16FC 800B0AFC 8D4B0000 */  lw         $t3, ($t2)
/* B1700 800B0B00 11600009 */  beqz       $t3, .L800B0B28
/* B1704 800B0B04 00000000 */   nop
/* B1708 800B0B08 8FAC0024 */  lw         $t4, 0x24($sp)
/* B170C 800B0B0C 8FA5002C */  lw         $a1, 0x2c($sp)
/* B1710 800B0B10 8FA60030 */  lw         $a2, 0x30($sp)
/* B1714 800B0B14 8D8D0000 */  lw         $t5, ($t4)
/* B1718 800B0B18 8DB90008 */  lw         $t9, 8($t5)
/* B171C 800B0B1C 01A02025 */  or         $a0, $t5, $zero
/* B1720 800B0B20 0320F809 */  jalr       $t9
/* B1724 800B0B24 00000000 */   nop
.L800B0B28:
/* B1728 800B0B28 10000001 */  b          .L800B0B30
/* B172C 800B0B2C 00000000 */   nop
.L800B0B30:
/* B1730 800B0B30 10000003 */  b          .L800B0B40
/* B1734 800B0B34 00001025 */   or        $v0, $zero, $zero
/* B1738 800B0B38 10000001 */  b          .L800B0B40
/* B173C 800B0B3C 00000000 */   nop
.L800B0B40:
/* B1740 800B0B40 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1744 800B0B44 27BD0028 */  addiu      $sp, $sp, 0x28
/* B1748 800B0B48 03E00008 */  jr         $ra
/* B174C 800B0B4C 00000000 */   nop

glabel alEnvmixerPull
/* B1750 800B0B50 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B1754 800B0B54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B1758 800B0B58 AFA40060 */  sw         $a0, 0x60($sp)
/* B175C 800B0B5C AFA50064 */  sw         $a1, 0x64($sp)
/* B1760 800B0B60 AFA60068 */  sw         $a2, 0x68($sp)
/* B1764 800B0B64 AFA7006C */  sw         $a3, 0x6c($sp)
/* B1768 800B0B68 8FAE0070 */  lw         $t6, 0x70($sp)
/* B176C 800B0B6C AFAE005C */  sw         $t6, 0x5c($sp)
/* B1770 800B0B70 8FAF0060 */  lw         $t7, 0x60($sp)
/* B1774 800B0B74 AFAF0058 */  sw         $t7, 0x58($sp)
/* B1778 800B0B78 8FB8006C */  lw         $t8, 0x6c($sp)
/* B177C 800B0B7C AFB8004C */  sw         $t8, 0x4c($sp)
/* B1780 800B0B80 A7A00046 */  sh         $zero, 0x46($sp)
/* B1784 800B0B84 A7A00056 */  sh         $zero, 0x56($sp)
/* B1788 800B0B88 8FB90058 */  lw         $t9, 0x58($sp)
/* B178C 800B0B8C 8F28003C */  lw         $t0, 0x3c($t9)
/* B1790 800B0B90 110001B6 */  beqz       $t0, .L800B126C
/* B1794 800B0B94 00000000 */   nop
.L800B0B98:
/* B1798 800B0B98 8FA9004C */  lw         $t1, 0x4c($sp)
/* B179C 800B0B9C AFA90050 */  sw         $t1, 0x50($sp)
/* B17A0 800B0BA0 8FAA0058 */  lw         $t2, 0x58($sp)
/* B17A4 800B0BA4 8D4B003C */  lw         $t3, 0x3c($t2)
/* B17A8 800B0BA8 8D6C0004 */  lw         $t4, 4($t3)
/* B17AC 800B0BAC AFAC004C */  sw         $t4, 0x4c($sp)
/* B17B0 800B0BB0 8FAD004C */  lw         $t5, 0x4c($sp)
/* B17B4 800B0BB4 8FAE0050 */  lw         $t6, 0x50($sp)
/* B17B8 800B0BB8 01AE7823 */  subu       $t7, $t5, $t6
/* B17BC 800B0BBC AFAF0048 */  sw         $t7, 0x48($sp)
/* B17C0 800B0BC0 8FB80048 */  lw         $t8, 0x48($sp)
/* B17C4 800B0BC4 8FB90068 */  lw         $t9, 0x68($sp)
/* B17C8 800B0BC8 0338082A */  slt        $at, $t9, $t8
/* B17CC 800B0BCC 10200003 */  beqz       $at, .L800B0BDC
/* B17D0 800B0BD0 00000000 */   nop
/* B17D4 800B0BD4 100001A5 */  b          .L800B126C
/* B17D8 800B0BD8 00000000 */   nop
.L800B0BDC:
/* B17DC 800B0BDC 8FA80048 */  lw         $t0, 0x48($sp)
/* B17E0 800B0BE0 05000003 */  bltz       $t0, .L800B0BF0
/* B17E4 800B0BE4 00000000 */   nop
/* B17E8 800B0BE8 10000007 */  b          .L800B0C08
/* B17EC 800B0BEC 00000000 */   nop
.L800B0BF0:
/* B17F0 800B0BF0 3C04800F */  lui        $a0, %hi(D_800EE530)
/* B17F4 800B0BF4 3C05800F */  lui        $a1, %hi(D_800EE540)
/* B17F8 800B0BF8 24A5E540 */  addiu      $a1, $a1, %lo(D_800EE540)
/* B17FC 800B0BFC 2484E530 */  addiu      $a0, $a0, %lo(D_800EE530)
/* B1800 800B0C00 0C026E74 */  jal        __assert
/* B1804 800B0C04 24060069 */   addiu     $a2, $zero, 0x69
.L800B0C08:
/* B1808 800B0C08 8FA90048 */  lw         $t1, 0x48($sp)
/* B180C 800B0C0C 292100A1 */  slti       $at, $t1, 0xa1
/* B1810 800B0C10 10200003 */  beqz       $at, .L800B0C20
/* B1814 800B0C14 00000000 */   nop
/* B1818 800B0C18 10000007 */  b          .L800B0C38
/* B181C 800B0C1C 00000000 */   nop
.L800B0C20:
/* B1820 800B0C20 3C04800F */  lui        $a0, %hi(D_800EE550)
/* B1824 800B0C24 3C05800F */  lui        $a1, %hi(D_800EE570)
/* B1828 800B0C28 24A5E570 */  addiu      $a1, $a1, %lo(D_800EE570)
/* B182C 800B0C2C 2484E550 */  addiu      $a0, $a0, %lo(D_800EE550)
/* B1830 800B0C30 0C026E74 */  jal        __assert
/* B1834 800B0C34 2406006A */   addiu     $a2, $zero, 0x6a
.L800B0C38:
/* B1838 800B0C38 8FAA0058 */  lw         $t2, 0x58($sp)
/* B183C 800B0C3C 8D4B003C */  lw         $t3, 0x3c($t2)
/* B1840 800B0C40 956C0008 */  lhu        $t4, 8($t3)
/* B1844 800B0C44 2D810011 */  sltiu      $at, $t4, 0x11
/* B1848 800B0C48 10200158 */  beqz       $at, .L800B11AC
/* B184C 800B0C4C 00000000 */   nop
/* B1850 800B0C50 000C6080 */  sll        $t4, $t4, 2
/* B1854 800B0C54 3C01800F */  lui        $at, %hi(D_800EE598)
/* B1858 800B0C58 002C0821 */  addu       $at, $at, $t4
/* B185C 800B0C5C 8C2CE598 */  lw         $t4, %lo(D_800EE598)($at)
/* B1860 800B0C60 01800008 */  jr         $t4
/* B1864 800B0C64 00000000 */   nop
/* B1868 800B0C68 8FAD0058 */  lw         $t5, 0x58($sp)
/* B186C 800B0C6C 8DAE003C */  lw         $t6, 0x3c($t5)
/* B1870 800B0C70 AFAE0038 */  sw         $t6, 0x38($sp)
/* B1874 800B0C74 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1878 800B0C78 AFAF0034 */  sw         $t7, 0x34($sp)
/* B187C 800B0C7C 8FB80038 */  lw         $t8, 0x38($sp)
/* B1880 800B0C80 8719000A */  lh         $t9, 0xa($t8)
/* B1884 800B0C84 13200008 */  beqz       $t9, .L800B0CA8
/* B1888 800B0C88 00000000 */   nop
/* B188C 800B0C8C 8FA80058 */  lw         $t0, 0x58($sp)
/* B1890 800B0C90 24050008 */  addiu      $a1, $zero, 8
/* B1894 800B0C94 00003025 */  or         $a2, $zero, $zero
/* B1898 800B0C98 8D190008 */  lw         $t9, 8($t0)
/* B189C 800B0C9C 01002025 */  or         $a0, $t0, $zero
/* B18A0 800B0CA0 0320F809 */  jalr       $t9
/* B18A4 800B0CA4 00000000 */   nop
.L800B0CA8:
/* B18A8 800B0CA8 8FA90058 */  lw         $t1, 0x58($sp)
/* B18AC 800B0CAC 8FAA0038 */  lw         $t2, 0x38($sp)
/* B18B0 800B0CB0 24050005 */  addiu      $a1, $zero, 5
/* B18B4 800B0CB4 8D390008 */  lw         $t9, 8($t1)
/* B18B8 800B0CB8 01202025 */  or         $a0, $t1, $zero
/* B18BC 800B0CBC 8D460018 */  lw         $a2, 0x18($t2)
/* B18C0 800B0CC0 0320F809 */  jalr       $t9
/* B18C4 800B0CC4 00000000 */   nop
/* B18C8 800B0CC8 8FAB0058 */  lw         $t3, 0x58($sp)
/* B18CC 800B0CCC 24050009 */  addiu      $a1, $zero, 9
/* B18D0 800B0CD0 00003025 */  or         $a2, $zero, $zero
/* B18D4 800B0CD4 8D790008 */  lw         $t9, 8($t3)
/* B18D8 800B0CD8 01602025 */  or         $a0, $t3, $zero
/* B18DC 800B0CDC 0320F809 */  jalr       $t9
/* B18E0 800B0CE0 00000000 */   nop
/* B18E4 800B0CE4 8FAD0058 */  lw         $t5, 0x58($sp)
/* B18E8 800B0CE8 240C0001 */  addiu      $t4, $zero, 1
/* B18EC 800B0CEC ADAC0038 */  sw         $t4, 0x38($t5)
/* B18F0 800B0CF0 8FAE0058 */  lw         $t6, 0x58($sp)
/* B18F4 800B0CF4 ADC00030 */  sw         $zero, 0x30($t6)
/* B18F8 800B0CF8 8FAF0038 */  lw         $t7, 0x38($sp)
/* B18FC 800B0CFC 8FA80058 */  lw         $t0, 0x58($sp)
/* B1900 800B0D00 8DF80014 */  lw         $t8, 0x14($t7)
/* B1904 800B0D04 AD180034 */  sw         $t8, 0x34($t0)
/* B1908 800B0D08 8FAA0038 */  lw         $t2, 0x38($sp)
/* B190C 800B0D0C 85490010 */  lh         $t1, 0x10($t2)
/* B1910 800B0D10 01290019 */  multu      $t1, $t1
/* B1914 800B0D14 00005812 */  mflo       $t3
/* B1918 800B0D18 000BCBC3 */  sra        $t9, $t3, 0xf
/* B191C 800B0D1C AFB90030 */  sw         $t9, 0x30($sp)
/* B1920 800B0D20 8FAC0030 */  lw         $t4, 0x30($sp)
/* B1924 800B0D24 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1928 800B0D28 A5AC001A */  sh         $t4, 0x1a($t5)
/* B192C 800B0D2C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B1930 800B0D30 8FB80058 */  lw         $t8, 0x58($sp)
/* B1934 800B0D34 91CF0012 */  lbu        $t7, 0x12($t6)
/* B1938 800B0D38 A70F0018 */  sh         $t7, 0x18($t8)
/* B193C 800B0D3C 8FA80038 */  lw         $t0, 0x38($sp)
/* B1940 800B0D40 3C0B800F */  lui        $t3, %hi(env_data_0000)
/* B1944 800B0D44 8FB90058 */  lw         $t9, 0x58($sp)
/* B1948 800B0D48 910A0013 */  lbu        $t2, 0x13($t0)
/* B194C 800B0D4C 000A4840 */  sll        $t1, $t2, 1
/* B1950 800B0D50 01695821 */  addu       $t3, $t3, $t1
/* B1954 800B0D54 856BA7F0 */  lh         $t3, %lo(env_data_0000)($t3)
/* B1958 800B0D58 A72B0020 */  sh         $t3, 0x20($t9)
/* B195C 800B0D5C 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1960 800B0D60 3C18800F */  lui        $t8, 0x800f
/* B1964 800B0D64 8FA80058 */  lw         $t0, 0x58($sp)
/* B1968 800B0D68 918D0013 */  lbu        $t5, 0x13($t4)
/* B196C 800B0D6C 000D7023 */  negu       $t6, $t5
/* B1970 800B0D70 000E7840 */  sll        $t7, $t6, 1
/* B1974 800B0D74 030FC021 */  addu       $t8, $t8, $t7
/* B1978 800B0D78 8718A8EE */  lh         $t8, -0x5712($t8)
/* B197C 800B0D7C A5180022 */  sh         $t8, 0x22($t0)
/* B1980 800B0D80 8FAA0038 */  lw         $t2, 0x38($sp)
/* B1984 800B0D84 8D490014 */  lw         $t1, 0x14($t2)
/* B1988 800B0D88 11200008 */  beqz       $t1, .L800B0DAC
/* B198C 800B0D8C 00000000 */   nop
/* B1990 800B0D90 8FB90058 */  lw         $t9, 0x58($sp)
/* B1994 800B0D94 240B0001 */  addiu      $t3, $zero, 1
/* B1998 800B0D98 A72B001C */  sh         $t3, 0x1c($t9)
/* B199C 800B0D9C 8FAD0058 */  lw         $t5, 0x58($sp)
/* B19A0 800B0DA0 240C0001 */  addiu      $t4, $zero, 1
/* B19A4 800B0DA4 10000018 */  b          .L800B0E08
/* B19A8 800B0DA8 A5AC001E */   sh        $t4, 0x1e($t5)
.L800B0DAC:
/* B19AC 800B0DAC 8FAE0058 */  lw         $t6, 0x58($sp)
/* B19B0 800B0DB0 3C08800F */  lui        $t0, %hi(env_data_0000)
/* B19B4 800B0DB4 85CF0018 */  lh         $t7, 0x18($t6)
/* B19B8 800B0DB8 85CA001A */  lh         $t2, 0x1a($t6)
/* B19BC 800B0DBC 000FC040 */  sll        $t8, $t7, 1
/* B19C0 800B0DC0 01184021 */  addu       $t0, $t0, $t8
/* B19C4 800B0DC4 8508A7F0 */  lh         $t0, %lo(env_data_0000)($t0)
/* B19C8 800B0DC8 010A0019 */  multu      $t0, $t2
/* B19CC 800B0DCC 00004812 */  mflo       $t1
/* B19D0 800B0DD0 00095BC3 */  sra        $t3, $t1, 0xf
/* B19D4 800B0DD4 A5CB001C */  sh         $t3, 0x1c($t6)
/* B19D8 800B0DD8 8FB90058 */  lw         $t9, 0x58($sp)
/* B19DC 800B0DDC 3C18800F */  lui        $t8, 0x800f
/* B19E0 800B0DE0 872C0018 */  lh         $t4, 0x18($t9)
/* B19E4 800B0DE4 8728001A */  lh         $t0, 0x1a($t9)
/* B19E8 800B0DE8 000C6823 */  negu       $t5, $t4
/* B19EC 800B0DEC 000D7840 */  sll        $t7, $t5, 1
/* B19F0 800B0DF0 030FC021 */  addu       $t8, $t8, $t7
/* B19F4 800B0DF4 8718A8EE */  lh         $t8, -0x5712($t8)
/* B19F8 800B0DF8 03080019 */  multu      $t8, $t0
/* B19FC 800B0DFC 00005012 */  mflo       $t2
/* B1A00 800B0E00 000A4BC3 */  sra        $t1, $t2, 0xf
/* B1A04 800B0E04 A729001E */  sh         $t1, 0x1e($t9)
.L800B0E08:
/* B1A08 800B0E08 8FAB0034 */  lw         $t3, 0x34($sp)
/* B1A0C 800B0E0C 8D6E0000 */  lw         $t6, ($t3)
/* B1A10 800B0E10 11C0000C */  beqz       $t6, .L800B0E44
/* B1A14 800B0E14 00000000 */   nop
/* B1A18 800B0E18 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1A1C 800B0E1C C584000C */  lwc1       $f4, 0xc($t4)
/* B1A20 800B0E20 E7A4002C */  swc1       $f4, 0x2c($sp)
/* B1A24 800B0E24 8FAD0034 */  lw         $t5, 0x34($sp)
/* B1A28 800B0E28 24050007 */  addiu      $a1, $zero, 7
/* B1A2C 800B0E2C 8FA6002C */  lw         $a2, 0x2c($sp)
/* B1A30 800B0E30 8DAF0000 */  lw         $t7, ($t5)
/* B1A34 800B0E34 8DF90008 */  lw         $t9, 8($t7)
/* B1A38 800B0E38 01E02025 */  or         $a0, $t7, $zero
/* B1A3C 800B0E3C 0320F809 */  jalr       $t9
/* B1A40 800B0E40 00000000 */   nop
.L800B0E44:
/* B1A44 800B0E44 100000ED */  b          .L800B11FC
/* B1A48 800B0E48 00000000 */   nop
/* B1A4C 800B0E4C 8FB8006C */  lw         $t8, 0x6c($sp)
/* B1A50 800B0E50 8FA8005C */  lw         $t0, 0x5c($sp)
/* B1A54 800B0E54 8FA40058 */  lw         $a0, 0x58($sp)
/* B1A58 800B0E58 27A50056 */  addiu      $a1, $sp, 0x56
/* B1A5C 800B0E5C 27A60046 */  addiu      $a2, $sp, 0x46
/* B1A60 800B0E60 8FA70048 */  lw         $a3, 0x48($sp)
/* B1A64 800B0E64 AFB80010 */  sw         $t8, 0x10($sp)
/* B1A68 800B0E68 0C02C521 */  jal        _pullSubFrame
/* B1A6C 800B0E6C AFA80014 */   sw        $t0, 0x14($sp)
/* B1A70 800B0E70 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1A74 800B0E74 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1A78 800B0E78 8D490030 */  lw         $t1, 0x30($t2)
/* B1A7C 800B0E7C 8D4B0034 */  lw         $t3, 0x34($t2)
/* B1A80 800B0E80 012B082A */  slt        $at, $t1, $t3
/* B1A84 800B0E84 14200022 */  bnez       $at, .L800B0F10
/* B1A88 800B0E88 00000000 */   nop
/* B1A8C 800B0E8C 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1A90 800B0E90 3C0F800F */  lui        $t7, %hi(env_data_0000)
/* B1A94 800B0E94 85CC0018 */  lh         $t4, 0x18($t6)
/* B1A98 800B0E98 85D9001A */  lh         $t9, 0x1a($t6)
/* B1A9C 800B0E9C 000C6840 */  sll        $t5, $t4, 1
/* B1AA0 800B0EA0 01ED7821 */  addu       $t7, $t7, $t5
/* B1AA4 800B0EA4 85EFA7F0 */  lh         $t7, %lo(env_data_0000)($t7)
/* B1AA8 800B0EA8 01F90019 */  multu      $t7, $t9
/* B1AAC 800B0EAC 0000C012 */  mflo       $t8
/* B1AB0 800B0EB0 001843C3 */  sra        $t0, $t8, 0xf
/* B1AB4 800B0EB4 A5C80028 */  sh         $t0, 0x28($t6)
/* B1AB8 800B0EB8 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1ABC 800B0EBC 3C0D800F */  lui        $t5, 0x800f
/* B1AC0 800B0EC0 85490018 */  lh         $t1, 0x18($t2)
/* B1AC4 800B0EC4 854F001A */  lh         $t7, 0x1a($t2)
/* B1AC8 800B0EC8 00095823 */  negu       $t3, $t1
/* B1ACC 800B0ECC 000B6040 */  sll        $t4, $t3, 1
/* B1AD0 800B0ED0 01AC6821 */  addu       $t5, $t5, $t4
/* B1AD4 800B0ED4 85ADA8EE */  lh         $t5, -0x5712($t5)
/* B1AD8 800B0ED8 01AF0019 */  multu      $t5, $t7
/* B1ADC 800B0EDC 0000C812 */  mflo       $t9
/* B1AE0 800B0EE0 0019C3C3 */  sra        $t8, $t9, 0xf
/* B1AE4 800B0EE4 A558002E */  sh         $t8, 0x2e($t2)
/* B1AE8 800B0EE8 8FA80058 */  lw         $t0, 0x58($sp)
/* B1AEC 800B0EEC 8D0E0034 */  lw         $t6, 0x34($t0)
/* B1AF0 800B0EF0 AD0E0030 */  sw         $t6, 0x30($t0)
/* B1AF4 800B0EF4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1AF8 800B0EF8 852B0028 */  lh         $t3, 0x28($t1)
/* B1AFC 800B0EFC A52B001C */  sh         $t3, 0x1c($t1)
/* B1B00 800B0F00 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1B04 800B0F04 858D002E */  lh         $t5, 0x2e($t4)
/* B1B08 800B0F08 1000001B */  b          .L800B0F78
/* B1B0C 800B0F0C A58D001E */   sh        $t5, 0x1e($t4)
.L800B0F10:
/* B1B10 800B0F10 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1B14 800B0F14 85F9001C */  lh         $t9, 0x1c($t7)
/* B1B18 800B0F18 8DE50030 */  lw         $a1, 0x30($t7)
/* B1B1C 800B0F1C 85E60026 */  lh         $a2, 0x26($t7)
/* B1B20 800B0F20 44993000 */  mtc1       $t9, $f6
/* B1B24 800B0F24 95E70024 */  lhu        $a3, 0x24($t7)
/* B1B28 800B0F28 0C02C757 */  jal        func_800B1D5C
/* B1B2C 800B0F2C 46803320 */   cvt.s.w   $f12, $f6
/* B1B30 800B0F30 4600020D */  trunc.w.s  $f8, $f0
/* B1B34 800B0F34 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1B38 800B0F38 440A4000 */  mfc1       $t2, $f8
/* B1B3C 800B0F3C 00000000 */  nop
/* B1B40 800B0F40 A5CA001C */  sh         $t2, 0x1c($t6)
/* B1B44 800B0F44 8FA80058 */  lw         $t0, 0x58($sp)
/* B1B48 800B0F48 850B001E */  lh         $t3, 0x1e($t0)
/* B1B4C 800B0F4C 8D050030 */  lw         $a1, 0x30($t0)
/* B1B50 800B0F50 8506002C */  lh         $a2, 0x2c($t0)
/* B1B54 800B0F54 448B5000 */  mtc1       $t3, $f10
/* B1B58 800B0F58 9507002A */  lhu        $a3, 0x2a($t0)
/* B1B5C 800B0F5C 0C02C757 */  jal        func_800B1D5C
/* B1B60 800B0F60 46805320 */   cvt.s.w   $f12, $f10
/* B1B64 800B0F64 4600040D */  trunc.w.s  $f16, $f0
/* B1B68 800B0F68 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1B6C 800B0F6C 440D8000 */  mfc1       $t5, $f16
/* B1B70 800B0F70 00000000 */  nop
/* B1B74 800B0F74 A58D001E */  sh         $t5, 0x1e($t4)
.L800B0F78:
/* B1B78 800B0F78 8FB90058 */  lw         $t9, 0x58($sp)
/* B1B7C 800B0F7C 872F001C */  lh         $t7, 0x1c($t9)
/* B1B80 800B0F80 15E00004 */  bnez       $t7, .L800B0F94
/* B1B84 800B0F84 00000000 */   nop
/* B1B88 800B0F88 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1B8C 800B0F8C 24180001 */  addiu      $t8, $zero, 1
/* B1B90 800B0F90 A558001C */  sh         $t8, 0x1c($t2)
.L800B0F94:
/* B1B94 800B0F94 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1B98 800B0F98 85CB001E */  lh         $t3, 0x1e($t6)
/* B1B9C 800B0F9C 15600004 */  bnez       $t3, .L800B0FB0
/* B1BA0 800B0FA0 00000000 */   nop
/* B1BA4 800B0FA4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1BA8 800B0FA8 24080001 */  addiu      $t0, $zero, 1
/* B1BAC 800B0FAC A528001E */  sh         $t0, 0x1e($t1)
.L800B0FB0:
/* B1BB0 800B0FB0 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1BB4 800B0FB4 2401000C */  addiu      $at, $zero, 0xc
/* B1BB8 800B0FB8 8DAC003C */  lw         $t4, 0x3c($t5)
/* B1BBC 800B0FBC 85990008 */  lh         $t9, 8($t4)
/* B1BC0 800B0FC0 17210005 */  bne        $t9, $at, .L800B0FD8
/* B1BC4 800B0FC4 00000000 */   nop
/* B1BC8 800B0FC8 8FAF0058 */  lw         $t7, 0x58($sp)
/* B1BCC 800B0FCC 8DF8003C */  lw         $t8, 0x3c($t7)
/* B1BD0 800B0FD0 8F0A000C */  lw         $t2, 0xc($t8)
/* B1BD4 800B0FD4 A5EA0018 */  sh         $t2, 0x18($t7)
.L800B0FD8:
/* B1BD8 800B0FD8 8FAE0058 */  lw         $t6, 0x58($sp)
/* B1BDC 800B0FDC 2401000B */  addiu      $at, $zero, 0xb
/* B1BE0 800B0FE0 8DCB003C */  lw         $t3, 0x3c($t6)
/* B1BE4 800B0FE4 85680008 */  lh         $t0, 8($t3)
/* B1BE8 800B0FE8 15010013 */  bne        $t0, $at, .L800B1038
/* B1BEC 800B0FEC 00000000 */   nop
/* B1BF0 800B0FF0 8FA90058 */  lw         $t1, 0x58($sp)
/* B1BF4 800B0FF4 AD200030 */  sw         $zero, 0x30($t1)
/* B1BF8 800B0FF8 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1BFC 800B0FFC 8DAC003C */  lw         $t4, 0x3c($t5)
/* B1C00 800B1000 8D99000C */  lw         $t9, 0xc($t4)
/* B1C04 800B1004 AFB90040 */  sw         $t9, 0x40($sp)
/* B1C08 800B1008 8FB80040 */  lw         $t8, 0x40($sp)
/* B1C0C 800B100C 03180019 */  multu      $t8, $t8
/* B1C10 800B1010 00005012 */  mflo       $t2
/* B1C14 800B1014 000A7BC3 */  sra        $t7, $t2, 0xf
/* B1C18 800B1018 AFAF0040 */  sw         $t7, 0x40($sp)
/* B1C1C 800B101C 8FAE0040 */  lw         $t6, 0x40($sp)
/* B1C20 800B1020 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1C24 800B1024 A56E001A */  sh         $t6, 0x1a($t3)
/* B1C28 800B1028 8FA80058 */  lw         $t0, 0x58($sp)
/* B1C2C 800B102C 8D09003C */  lw         $t1, 0x3c($t0)
/* B1C30 800B1030 8D2D0010 */  lw         $t5, 0x10($t1)
/* B1C34 800B1034 AD0D0034 */  sw         $t5, 0x34($t0)
.L800B1038:
/* B1C38 800B1038 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1C3C 800B103C 24010010 */  addiu      $at, $zero, 0x10
/* B1C40 800B1040 8D99003C */  lw         $t9, 0x3c($t4)
/* B1C44 800B1044 87380008 */  lh         $t8, 8($t9)
/* B1C48 800B1048 17010012 */  bne        $t8, $at, .L800B1094
/* B1C4C 800B104C 00000000 */   nop
/* B1C50 800B1050 8FAA0058 */  lw         $t2, 0x58($sp)
/* B1C54 800B1054 3C09800F */  lui        $t1, %hi(env_data_0000)
/* B1C58 800B1058 8D4F003C */  lw         $t7, 0x3c($t2)
/* B1C5C 800B105C 8DEE000C */  lw         $t6, 0xc($t7)
/* B1C60 800B1060 000E5840 */  sll        $t3, $t6, 1
/* B1C64 800B1064 012B4821 */  addu       $t1, $t1, $t3
/* B1C68 800B1068 8529A7F0 */  lh         $t1, %lo(env_data_0000)($t1)
/* B1C6C 800B106C A5490020 */  sh         $t1, 0x20($t2)
/* B1C70 800B1070 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1C74 800B1074 3C0F800F */  lui        $t7, 0x800f
/* B1C78 800B1078 8DA8003C */  lw         $t0, 0x3c($t5)
/* B1C7C 800B107C 8D0C000C */  lw         $t4, 0xc($t0)
/* B1C80 800B1080 000CC823 */  negu       $t9, $t4
/* B1C84 800B1084 0019C040 */  sll        $t8, $t9, 1
/* B1C88 800B1088 01F87821 */  addu       $t7, $t7, $t8
/* B1C8C 800B108C 85EFA8EE */  lh         $t7, -0x5712($t7)
/* B1C90 800B1090 A5AF0022 */  sh         $t7, 0x22($t5)
.L800B1094:
/* B1C94 800B1094 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1C98 800B1098 240E0001 */  addiu      $t6, $zero, 1
/* B1C9C 800B109C AD6E0038 */  sw         $t6, 0x38($t3)
/* B1CA0 800B10A0 10000056 */  b          .L800B11FC
/* B1CA4 800B10A4 00000000 */   nop
/* B1CA8 800B10A8 8FA90058 */  lw         $t1, 0x58($sp)
/* B1CAC 800B10AC 8D2A003C */  lw         $t2, 0x3c($t1)
/* B1CB0 800B10B0 AFAA0028 */  sw         $t2, 0x28($sp)
/* B1CB4 800B10B4 8FA80028 */  lw         $t0, 0x28($sp)
/* B1CB8 800B10B8 850C000A */  lh         $t4, 0xa($t0)
/* B1CBC 800B10BC 11800008 */  beqz       $t4, .L800B10E0
/* B1CC0 800B10C0 00000000 */   nop
/* B1CC4 800B10C4 8FB90058 */  lw         $t9, 0x58($sp)
/* B1CC8 800B10C8 24050008 */  addiu      $a1, $zero, 8
/* B1CCC 800B10CC 00003025 */  or         $a2, $zero, $zero
/* B1CD0 800B10D0 03202025 */  or         $a0, $t9, $zero
/* B1CD4 800B10D4 8F390008 */  lw         $t9, 8($t9)
/* B1CD8 800B10D8 0320F809 */  jalr       $t9
/* B1CDC 800B10DC 00000000 */   nop
.L800B10E0:
/* B1CE0 800B10E0 8FB80058 */  lw         $t8, 0x58($sp)
/* B1CE4 800B10E4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1CE8 800B10E8 24050005 */  addiu      $a1, $zero, 5
/* B1CEC 800B10EC 8F190008 */  lw         $t9, 8($t8)
/* B1CF0 800B10F0 03002025 */  or         $a0, $t8, $zero
/* B1CF4 800B10F4 8DE6000C */  lw         $a2, 0xc($t7)
/* B1CF8 800B10F8 0320F809 */  jalr       $t9
/* B1CFC 800B10FC 00000000 */   nop
/* B1D00 800B1100 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1D04 800B1104 24050009 */  addiu      $a1, $zero, 9
/* B1D08 800B1108 00003025 */  or         $a2, $zero, $zero
/* B1D0C 800B110C 8DB90008 */  lw         $t9, 8($t5)
/* B1D10 800B1110 01A02025 */  or         $a0, $t5, $zero
/* B1D14 800B1114 0320F809 */  jalr       $t9
/* B1D18 800B1118 00000000 */   nop
/* B1D1C 800B111C 10000037 */  b          .L800B11FC
/* B1D20 800B1120 00000000 */   nop
/* B1D24 800B1124 8FAE006C */  lw         $t6, 0x6c($sp)
/* B1D28 800B1128 8FAB005C */  lw         $t3, 0x5c($sp)
/* B1D2C 800B112C 8FA40058 */  lw         $a0, 0x58($sp)
/* B1D30 800B1130 27A50056 */  addiu      $a1, $sp, 0x56
/* B1D34 800B1134 27A60046 */  addiu      $a2, $sp, 0x46
/* B1D38 800B1138 8FA70048 */  lw         $a3, 0x48($sp)
/* B1D3C 800B113C AFAE0010 */  sw         $t6, 0x10($sp)
/* B1D40 800B1140 0C02C521 */  jal        _pullSubFrame
/* B1D44 800B1144 AFAB0014 */   sw        $t3, 0x14($sp)
/* B1D48 800B1148 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1D4C 800B114C 8FA90058 */  lw         $t1, 0x58($sp)
/* B1D50 800B1150 24050004 */  addiu      $a1, $zero, 4
/* B1D54 800B1154 00003025 */  or         $a2, $zero, $zero
/* B1D58 800B1158 8D390008 */  lw         $t9, 8($t1)
/* B1D5C 800B115C 01202025 */  or         $a0, $t1, $zero
/* B1D60 800B1160 0320F809 */  jalr       $t9
/* B1D64 800B1164 00000000 */   nop
/* B1D68 800B1168 10000024 */  b          .L800B11FC
/* B1D6C 800B116C 00000000 */   nop
/* B1D70 800B1170 3C0A800F */  lui        $t2, %hi(alGlobals)
/* B1D74 800B1174 8D4AA520 */  lw         $t2, %lo(alGlobals)($t2)
/* B1D78 800B1178 AFAA0024 */  sw         $t2, 0x24($sp)
/* B1D7C 800B117C 8FA80058 */  lw         $t0, 0x58($sp)
/* B1D80 800B1180 8D0C003C */  lw         $t4, 0x3c($t0)
/* B1D84 800B1184 AFAC0020 */  sw         $t4, 0x20($sp)
/* B1D88 800B1188 8FAF0020 */  lw         $t7, 0x20($sp)
/* B1D8C 800B118C 8DF8000C */  lw         $t8, 0xc($t7)
/* B1D90 800B1190 AF0000D8 */  sw         $zero, 0xd8($t8)
/* B1D94 800B1194 8FAD0020 */  lw         $t5, 0x20($sp)
/* B1D98 800B1198 8FA40024 */  lw         $a0, 0x24($sp)
/* B1D9C 800B119C 0C027B26 */  jal        _freePVoice
/* B1DA0 800B11A0 8DA5000C */   lw        $a1, 0xc($t5)
/* B1DA4 800B11A4 10000015 */  b          .L800B11FC
/* B1DA8 800B11A8 00000000 */   nop
.L800B11AC:
/* B1DAC 800B11AC 8FAE006C */  lw         $t6, 0x6c($sp)
/* B1DB0 800B11B0 8FAB005C */  lw         $t3, 0x5c($sp)
/* B1DB4 800B11B4 8FA40058 */  lw         $a0, 0x58($sp)
/* B1DB8 800B11B8 27A50056 */  addiu      $a1, $sp, 0x56
/* B1DBC 800B11BC 27A60046 */  addiu      $a2, $sp, 0x46
/* B1DC0 800B11C0 8FA70048 */  lw         $a3, 0x48($sp)
/* B1DC4 800B11C4 AFAE0010 */  sw         $t6, 0x10($sp)
/* B1DC8 800B11C8 0C02C521 */  jal        _pullSubFrame
/* B1DCC 800B11CC AFAB0014 */   sw        $t3, 0x14($sp)
/* B1DD0 800B11D0 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1DD4 800B11D4 8FA90058 */  lw         $t1, 0x58($sp)
/* B1DD8 800B11D8 8D39003C */  lw         $t9, 0x3c($t1)
/* B1DDC 800B11DC 01202025 */  or         $a0, $t1, $zero
/* B1DE0 800B11E0 87250008 */  lh         $a1, 8($t9)
/* B1DE4 800B11E4 8F26000C */  lw         $a2, 0xc($t9)
/* B1DE8 800B11E8 8D390008 */  lw         $t9, 8($t1)
/* B1DEC 800B11EC 0320F809 */  jalr       $t9
/* B1DF0 800B11F0 00000000 */   nop
/* B1DF4 800B11F4 10000001 */  b          .L800B11FC
/* B1DF8 800B11F8 00000000 */   nop
.L800B11FC:
/* B1DFC 800B11FC 8FA80048 */  lw         $t0, 0x48($sp)
/* B1E00 800B1200 87AA0046 */  lh         $t2, 0x46($sp)
/* B1E04 800B1204 00086040 */  sll        $t4, $t0, 1
/* B1E08 800B1208 014C7821 */  addu       $t7, $t2, $t4
/* B1E0C 800B120C A7AF0046 */  sh         $t7, 0x46($sp)
/* B1E10 800B1210 8FB80068 */  lw         $t8, 0x68($sp)
/* B1E14 800B1214 8FAD0048 */  lw         $t5, 0x48($sp)
/* B1E18 800B1218 030D7023 */  subu       $t6, $t8, $t5
/* B1E1C 800B121C AFAE0068 */  sw         $t6, 0x68($sp)
/* B1E20 800B1220 8FAB0058 */  lw         $t3, 0x58($sp)
/* B1E24 800B1224 8D69003C */  lw         $t1, 0x3c($t3)
/* B1E28 800B1228 AFA9003C */  sw         $t1, 0x3c($sp)
/* B1E2C 800B122C 8FB90058 */  lw         $t9, 0x58($sp)
/* B1E30 800B1230 8F28003C */  lw         $t0, 0x3c($t9)
/* B1E34 800B1234 8D0A0000 */  lw         $t2, ($t0)
/* B1E38 800B1238 AF2A003C */  sw         $t2, 0x3c($t9)
/* B1E3C 800B123C 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1E40 800B1240 8D8F003C */  lw         $t7, 0x3c($t4)
/* B1E44 800B1244 15E00003 */  bnez       $t7, .L800B1254
/* B1E48 800B1248 00000000 */   nop
/* B1E4C 800B124C 8FB80058 */  lw         $t8, 0x58($sp)
/* B1E50 800B1250 AF000040 */  sw         $zero, 0x40($t8)
.L800B1254:
/* B1E54 800B1254 0C027B00 */  jal        __freeParam
/* B1E58 800B1258 8FA4003C */   lw        $a0, 0x3c($sp)
/* B1E5C 800B125C 8FAD0058 */  lw         $t5, 0x58($sp)
/* B1E60 800B1260 8DAE003C */  lw         $t6, 0x3c($t5)
/* B1E64 800B1264 15C0FE4C */  bnez       $t6, .L800B0B98
/* B1E68 800B1268 00000000 */   nop
.L800B126C:
/* B1E6C 800B126C 8FAB006C */  lw         $t3, 0x6c($sp)
/* B1E70 800B1270 8FA9005C */  lw         $t1, 0x5c($sp)
/* B1E74 800B1274 8FA40058 */  lw         $a0, 0x58($sp)
/* B1E78 800B1278 27A50056 */  addiu      $a1, $sp, 0x56
/* B1E7C 800B127C 27A60046 */  addiu      $a2, $sp, 0x46
/* B1E80 800B1280 8FA70068 */  lw         $a3, 0x68($sp)
/* B1E84 800B1284 AFAB0010 */  sw         $t3, 0x10($sp)
/* B1E88 800B1288 0C02C521 */  jal        _pullSubFrame
/* B1E8C 800B128C AFA90014 */   sw        $t1, 0x14($sp)
/* B1E90 800B1290 AFA2005C */  sw         $v0, 0x5c($sp)
/* B1E94 800B1294 8FA80058 */  lw         $t0, 0x58($sp)
/* B1E98 800B1298 8D0A0030 */  lw         $t2, 0x30($t0)
/* B1E9C 800B129C 8D190034 */  lw         $t9, 0x34($t0)
/* B1EA0 800B12A0 032A082A */  slt        $at, $t9, $t2
/* B1EA4 800B12A4 10200004 */  beqz       $at, .L800B12B8
/* B1EA8 800B12A8 00000000 */   nop
/* B1EAC 800B12AC 8FAC0058 */  lw         $t4, 0x58($sp)
/* B1EB0 800B12B0 8D8F0034 */  lw         $t7, 0x34($t4)
/* B1EB4 800B12B4 AD8F0030 */  sw         $t7, 0x30($t4)
.L800B12B8:
/* B1EB8 800B12B8 10000003 */  b          .L800B12C8
/* B1EBC 800B12BC 8FA2005C */   lw        $v0, 0x5c($sp)
/* B1EC0 800B12C0 10000001 */  b          .L800B12C8
/* B1EC4 800B12C4 00000000 */   nop
.L800B12C8:
/* B1EC8 800B12C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B1ECC 800B12CC 27BD0060 */  addiu      $sp, $sp, 0x60
/* B1ED0 800B12D0 03E00008 */  jr         $ra
/* B1ED4 800B12D4 00000000 */   nop

glabel alEnvmixerParam
/* B1ED8 800B12D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B1EDC 800B12DC AFBF001C */  sw         $ra, 0x1c($sp)
/* B1EE0 800B12E0 AFA40030 */  sw         $a0, 0x30($sp)
/* B1EE4 800B12E4 AFA50034 */  sw         $a1, 0x34($sp)
/* B1EE8 800B12E8 AFA60038 */  sw         $a2, 0x38($sp)
/* B1EEC 800B12EC AFB00018 */  sw         $s0, 0x18($sp)
/* B1EF0 800B12F0 8FAE0030 */  lw         $t6, 0x30($sp)
/* B1EF4 800B12F4 AFAE002C */  sw         $t6, 0x2c($sp)
/* B1EF8 800B12F8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B1EFC 800B12FC AFAF0028 */  sw         $t7, 0x28($sp)
/* B1F00 800B1300 8FB00034 */  lw         $s0, 0x34($sp)
/* B1F04 800B1304 24010001 */  addiu      $at, $zero, 1
/* B1F08 800B1308 12010044 */  beq        $s0, $at, .L800B141C
/* B1F0C 800B130C 00000000 */   nop
/* B1F10 800B1310 24010003 */  addiu      $at, $zero, 3
/* B1F14 800B1314 12010009 */  beq        $s0, $at, .L800B133C
/* B1F18 800B1318 00000000 */   nop
/* B1F1C 800B131C 24010004 */  addiu      $at, $zero, 4
/* B1F20 800B1320 12010017 */  beq        $s0, $at, .L800B1380
/* B1F24 800B1324 00000000 */   nop
/* B1F28 800B1328 24010009 */  addiu      $at, $zero, 9
/* B1F2C 800B132C 1201002A */  beq        $s0, $at, .L800B13D8
/* B1F30 800B1330 00000000 */   nop
/* B1F34 800B1334 1000003E */  b          .L800B1430
/* B1F38 800B1338 00000000 */   nop
.L800B133C:
/* B1F3C 800B133C 8FB80028 */  lw         $t8, 0x28($sp)
/* B1F40 800B1340 8F190040 */  lw         $t9, 0x40($t8)
/* B1F44 800B1344 13200006 */  beqz       $t9, .L800B1360
/* B1F48 800B1348 00000000 */   nop
/* B1F4C 800B134C 8FA90028 */  lw         $t1, 0x28($sp)
/* B1F50 800B1350 8FA80038 */  lw         $t0, 0x38($sp)
/* B1F54 800B1354 8D2A0040 */  lw         $t2, 0x40($t1)
/* B1F58 800B1358 10000004 */  b          .L800B136C
/* B1F5C 800B135C AD480000 */   sw        $t0, ($t2)
.L800B1360:
/* B1F60 800B1360 8FAB0038 */  lw         $t3, 0x38($sp)
/* B1F64 800B1364 8FAC0028 */  lw         $t4, 0x28($sp)
/* B1F68 800B1368 AD8B003C */  sw         $t3, 0x3c($t4)
.L800B136C:
/* B1F6C 800B136C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B1F70 800B1370 8FAE0028 */  lw         $t6, 0x28($sp)
/* B1F74 800B1374 ADCD0040 */  sw         $t5, 0x40($t6)
/* B1F78 800B1378 10000039 */  b          .L800B1460
/* B1F7C 800B137C 00000000 */   nop
.L800B1380:
/* B1F80 800B1380 8FB80028 */  lw         $t8, 0x28($sp)
/* B1F84 800B1384 240F0001 */  addiu      $t7, $zero, 1
/* B1F88 800B1388 AF0F0038 */  sw         $t7, 0x38($t8)
/* B1F8C 800B138C 8FB90028 */  lw         $t9, 0x28($sp)
/* B1F90 800B1390 AF200048 */  sw         $zero, 0x48($t9)
/* B1F94 800B1394 8FA80028 */  lw         $t0, 0x28($sp)
/* B1F98 800B1398 24090001 */  addiu      $t1, $zero, 1
/* B1F9C 800B139C A509001A */  sh         $t1, 0x1a($t0)
/* B1FA0 800B13A0 8FAA002C */  lw         $t2, 0x2c($sp)
/* B1FA4 800B13A4 8D4B0000 */  lw         $t3, ($t2)
/* B1FA8 800B13A8 11600009 */  beqz       $t3, .L800B13D0
/* B1FAC 800B13AC 00000000 */   nop
/* B1FB0 800B13B0 8FAC002C */  lw         $t4, 0x2c($sp)
/* B1FB4 800B13B4 24050004 */  addiu      $a1, $zero, 4
/* B1FB8 800B13B8 8FA60038 */  lw         $a2, 0x38($sp)
/* B1FBC 800B13BC 8D8D0000 */  lw         $t5, ($t4)
/* B1FC0 800B13C0 8DB90008 */  lw         $t9, 8($t5)
/* B1FC4 800B13C4 01A02025 */  or         $a0, $t5, $zero
/* B1FC8 800B13C8 0320F809 */  jalr       $t9
/* B1FCC 800B13CC 00000000 */   nop
.L800B13D0:
/* B1FD0 800B13D0 10000023 */  b          .L800B1460
/* B1FD4 800B13D4 00000000 */   nop
.L800B13D8:
/* B1FD8 800B13D8 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1FDC 800B13DC 240E0001 */  addiu      $t6, $zero, 1
/* B1FE0 800B13E0 ADEE0048 */  sw         $t6, 0x48($t7)
/* B1FE4 800B13E4 8FB8002C */  lw         $t8, 0x2c($sp)
/* B1FE8 800B13E8 8F090000 */  lw         $t1, ($t8)
/* B1FEC 800B13EC 11200009 */  beqz       $t1, .L800B1414
/* B1FF0 800B13F0 00000000 */   nop
/* B1FF4 800B13F4 8FA8002C */  lw         $t0, 0x2c($sp)
/* B1FF8 800B13F8 24050009 */  addiu      $a1, $zero, 9
/* B1FFC 800B13FC 8FA60038 */  lw         $a2, 0x38($sp)
/* B2000 800B1400 8D0A0000 */  lw         $t2, ($t0)
/* B2004 800B1404 8D590008 */  lw         $t9, 8($t2)
/* B2008 800B1408 01402025 */  or         $a0, $t2, $zero
/* B200C 800B140C 0320F809 */  jalr       $t9
/* B2010 800B1410 00000000 */   nop
.L800B1414:
/* B2014 800B1414 10000012 */  b          .L800B1460
/* B2018 800B1418 00000000 */   nop
.L800B141C:
/* B201C 800B141C 8FAB0038 */  lw         $t3, 0x38($sp)
/* B2020 800B1420 8FAC002C */  lw         $t4, 0x2c($sp)
/* B2024 800B1424 AD8B0000 */  sw         $t3, ($t4)
/* B2028 800B1428 1000000D */  b          .L800B1460
/* B202C 800B142C 00000000 */   nop
.L800B1430:
/* B2030 800B1430 8FAD002C */  lw         $t5, 0x2c($sp)
/* B2034 800B1434 8DAE0000 */  lw         $t6, ($t5)
/* B2038 800B1438 11C00009 */  beqz       $t6, .L800B1460
/* B203C 800B143C 00000000 */   nop
/* B2040 800B1440 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2044 800B1444 8FA50034 */  lw         $a1, 0x34($sp)
/* B2048 800B1448 8FA60038 */  lw         $a2, 0x38($sp)
/* B204C 800B144C 8DF80000 */  lw         $t8, ($t7)
/* B2050 800B1450 8F190008 */  lw         $t9, 8($t8)
/* B2054 800B1454 03002025 */  or         $a0, $t8, $zero
/* B2058 800B1458 0320F809 */  jalr       $t9
/* B205C 800B145C 00000000 */   nop
.L800B1460:
/* B2060 800B1460 10000003 */  b          .L800B1470
/* B2064 800B1464 00001025 */   or        $v0, $zero, $zero
/* B2068 800B1468 10000001 */  b          .L800B1470
/* B206C 800B146C 00000000 */   nop
.L800B1470:
/* B2070 800B1470 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2074 800B1474 8FB00018 */  lw         $s0, 0x18($sp)
/* B2078 800B1478 27BD0030 */  addiu      $sp, $sp, 0x30
/* B207C 800B147C 03E00008 */  jr         $ra
/* B2080 800B1480 00000000 */   nop

glabel _pullSubFrame
/* B2084 800B1484 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B2088 800B1488 AFBF001C */  sw         $ra, 0x1c($sp)
/* B208C 800B148C AFA40050 */  sw         $a0, 0x50($sp)
/* B2090 800B1490 AFA50054 */  sw         $a1, 0x54($sp)
/* B2094 800B1494 AFA60058 */  sw         $a2, 0x58($sp)
/* B2098 800B1498 AFA7005C */  sw         $a3, 0x5c($sp)
/* B209C 800B149C 8FAE0064 */  lw         $t6, 0x64($sp)
/* B20A0 800B14A0 AFAE004C */  sw         $t6, 0x4c($sp)
/* B20A4 800B14A4 8FAF0050 */  lw         $t7, 0x50($sp)
/* B20A8 800B14A8 AFAF0048 */  sw         $t7, 0x48($sp)
/* B20AC 800B14AC 8FB80048 */  lw         $t8, 0x48($sp)
/* B20B0 800B14B0 8F190000 */  lw         $t9, ($t8)
/* B20B4 800B14B4 AFB90044 */  sw         $t9, 0x44($sp)
/* B20B8 800B14B8 8FA80048 */  lw         $t0, 0x48($sp)
/* B20BC 800B14BC 24010001 */  addiu      $at, $zero, 1
/* B20C0 800B14C0 8D090048 */  lw         $t1, 0x48($t0)
/* B20C4 800B14C4 15210004 */  bne        $t1, $at, .L800B14D8
/* B20C8 800B14C8 00000000 */   nop
/* B20CC 800B14CC 8FAA005C */  lw         $t2, 0x5c($sp)
/* B20D0 800B14D0 15400003 */  bnez       $t2, .L800B14E0
/* B20D4 800B14D4 00000000 */   nop
.L800B14D8:
/* B20D8 800B14D8 100000F6 */  b          .L800B18B4
/* B20DC 800B14DC 8FA2004C */   lw        $v0, 0x4c($sp)
.L800B14E0:
/* B20E0 800B14E0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B20E4 800B14E4 11600003 */  beqz       $t3, .L800B14F4
/* B20E8 800B14E8 00000000 */   nop
/* B20EC 800B14EC 10000007 */  b          .L800B150C
/* B20F0 800B14F0 00000000 */   nop
.L800B14F4:
/* B20F4 800B14F4 3C04800F */  lui        $a0, %hi(D_800EE580)
/* B20F8 800B14F8 3C05800F */  lui        $a1, %hi(D_800EE588)
/* B20FC 800B14FC 24A5E588 */  addiu      $a1, $a1, %lo(D_800EE588)
/* B2100 800B1500 2484E580 */  addiu      $a0, $a0, %lo(D_800EE580)
/* B2104 800B1504 0C026E74 */  jal        __assert
/* B2108 800B1508 24060170 */   addiu     $a2, $zero, 0x170
.L800B150C:
/* B210C 800B150C 8FAD0064 */  lw         $t5, 0x64($sp)
/* B2110 800B1510 8FAC0044 */  lw         $t4, 0x44($sp)
/* B2114 800B1514 8FA50054 */  lw         $a1, 0x54($sp)
/* B2118 800B1518 AFAD0010 */  sw         $t5, 0x10($sp)
/* B211C 800B151C 8D990004 */  lw         $t9, 4($t4)
/* B2120 800B1520 8FA6005C */  lw         $a2, 0x5c($sp)
/* B2124 800B1524 8FA70060 */  lw         $a3, 0x60($sp)
/* B2128 800B1528 0320F809 */  jalr       $t9
/* B212C 800B152C 01802025 */   or        $a0, $t4, $zero
/* B2130 800B1530 AFA2004C */  sw         $v0, 0x4c($sp)
/* B2134 800B1534 8FAE004C */  lw         $t6, 0x4c($sp)
/* B2138 800B1538 25CF0008 */  addiu      $t7, $t6, 8
/* B213C 800B153C AFAF004C */  sw         $t7, 0x4c($sp)
/* B2140 800B1540 AFAE0040 */  sw         $t6, 0x40($sp)
/* B2144 800B1544 8FB80054 */  lw         $t8, 0x54($sp)
/* B2148 800B1548 8FAB0040 */  lw         $t3, 0x40($sp)
/* B214C 800B154C 3C010800 */  lui        $at, 0x800
/* B2150 800B1550 87080000 */  lh         $t0, ($t8)
/* B2154 800B1554 3109FFFF */  andi       $t1, $t0, 0xffff
/* B2158 800B1558 01215025 */  or         $t2, $t1, $at
/* B215C 800B155C AD6A0000 */  sw         $t2, ($t3)
/* B2160 800B1560 8FAD0058 */  lw         $t5, 0x58($sp)
/* B2164 800B1564 8FB8005C */  lw         $t8, 0x5c($sp)
/* B2168 800B1568 8FAB0040 */  lw         $t3, 0x40($sp)
/* B216C 800B156C 85AC0000 */  lh         $t4, ($t5)
/* B2170 800B1570 00184040 */  sll        $t0, $t8, 1
/* B2174 800B1574 3109FFFF */  andi       $t1, $t0, 0xffff
/* B2178 800B1578 25990440 */  addiu      $t9, $t4, 0x440
/* B217C 800B157C 332EFFFF */  andi       $t6, $t9, 0xffff
/* B2180 800B1580 000E7C00 */  sll        $t7, $t6, 0x10
/* B2184 800B1584 01E95025 */  or         $t2, $t7, $t1
/* B2188 800B1588 AD6A0004 */  sw         $t2, 4($t3)
/* B218C 800B158C 8FAD004C */  lw         $t5, 0x4c($sp)
/* B2190 800B1590 25AC0008 */  addiu      $t4, $t5, 8
/* B2194 800B1594 AFAC004C */  sw         $t4, 0x4c($sp)
/* B2198 800B1598 AFAD003C */  sw         $t5, 0x3c($sp)
/* B219C 800B159C 8FB90058 */  lw         $t9, 0x58($sp)
/* B21A0 800B15A0 8FA9003C */  lw         $t1, 0x3c($sp)
/* B21A4 800B15A4 3C010808 */  lui        $at, 0x808
/* B21A8 800B15A8 872E0000 */  lh         $t6, ($t9)
/* B21AC 800B15AC 25D80580 */  addiu      $t8, $t6, 0x580
/* B21B0 800B15B0 3308FFFF */  andi       $t0, $t8, 0xffff
/* B21B4 800B15B4 01017825 */  or         $t7, $t0, $at
/* B21B8 800B15B8 AD2F0000 */  sw         $t7, ($t1)
/* B21BC 800B15BC 8FAA0058 */  lw         $t2, 0x58($sp)
/* B21C0 800B15C0 8FAF003C */  lw         $t7, 0x3c($sp)
/* B21C4 800B15C4 854B0000 */  lh         $t3, ($t2)
/* B21C8 800B15C8 257906C0 */  addiu      $t9, $t3, 0x6c0
/* B21CC 800B15CC 332EFFFF */  andi       $t6, $t9, 0xffff
/* B21D0 800B15D0 256D0800 */  addiu      $t5, $t3, 0x800
/* B21D4 800B15D4 31ACFFFF */  andi       $t4, $t5, 0xffff
/* B21D8 800B15D8 000EC400 */  sll        $t8, $t6, 0x10
/* B21DC 800B15DC 01984025 */  or         $t0, $t4, $t8
/* B21E0 800B15E0 ADE80004 */  sw         $t0, 4($t7)
/* B21E4 800B15E4 8FA90048 */  lw         $t1, 0x48($sp)
/* B21E8 800B15E8 8D2A0038 */  lw         $t2, 0x38($t1)
/* B21EC 800B15EC 11400096 */  beqz       $t2, .L800B1848
/* B21F0 800B15F0 00000000 */   nop
/* B21F4 800B15F4 8FAD0048 */  lw         $t5, 0x48($sp)
/* B21F8 800B15F8 ADA00038 */  sw         $zero, 0x38($t5)
/* B21FC 800B15FC 8FAB0048 */  lw         $t3, 0x48($sp)
/* B2200 800B1600 3C0C800F */  lui        $t4, %hi(env_data_0000)
/* B2204 800B1604 85790018 */  lh         $t9, 0x18($t3)
/* B2208 800B1608 8578001A */  lh         $t8, 0x1a($t3)
/* B220C 800B160C 00197040 */  sll        $t6, $t9, 1
/* B2210 800B1610 018E6021 */  addu       $t4, $t4, $t6
/* B2214 800B1614 858CA7F0 */  lh         $t4, %lo(env_data_0000)($t4)
/* B2218 800B1618 01980019 */  multu      $t4, $t8
/* B221C 800B161C 00004012 */  mflo       $t0
/* B2220 800B1620 00087BC3 */  sra        $t7, $t0, 0xf
/* B2224 800B1624 A56F0028 */  sh         $t7, 0x28($t3)
/* B2228 800B1628 8FA90048 */  lw         $t1, 0x48($sp)
/* B222C 800B162C 852A001C */  lh         $t2, 0x1c($t1)
/* B2230 800B1630 852D0028 */  lh         $t5, 0x28($t1)
/* B2234 800B1634 8D390034 */  lw         $t9, 0x34($t1)
/* B2238 800B1638 448A2000 */  mtc1       $t2, $f4
/* B223C 800B163C 448D3000 */  mtc1       $t5, $f6
/* B2240 800B1640 252E0024 */  addiu      $t6, $t1, 0x24
/* B2244 800B1644 AFAE0014 */  sw         $t6, 0x14($sp)
/* B2248 800B1648 AFB90010 */  sw         $t9, 0x10($sp)
/* B224C 800B164C 46802321 */  cvt.d.w    $f12, $f4
/* B2250 800B1650 0C02C699 */  jal        func_800B1A64
/* B2254 800B1654 468033A1 */   cvt.d.w   $f14, $f6
/* B2258 800B1658 8FAC0048 */  lw         $t4, 0x48($sp)
/* B225C 800B165C A5820026 */  sh         $v0, 0x26($t4)
/* B2260 800B1660 8FB80048 */  lw         $t8, 0x48($sp)
/* B2264 800B1664 3C0A800F */  lui        $t2, 0x800f
/* B2268 800B1668 87080018 */  lh         $t0, 0x18($t8)
/* B226C 800B166C 870D001A */  lh         $t5, 0x1a($t8)
/* B2270 800B1670 00087823 */  negu       $t7, $t0
/* B2274 800B1674 000F5840 */  sll        $t3, $t7, 1
/* B2278 800B1678 014B5021 */  addu       $t2, $t2, $t3
/* B227C 800B167C 854AA8EE */  lh         $t2, -0x5712($t2)
/* B2280 800B1680 014D0019 */  multu      $t2, $t5
/* B2284 800B1684 0000C812 */  mflo       $t9
/* B2288 800B1688 00194BC3 */  sra        $t1, $t9, 0xf
/* B228C 800B168C A709002E */  sh         $t1, 0x2e($t8)
/* B2290 800B1690 8FAE0048 */  lw         $t6, 0x48($sp)
/* B2294 800B1694 85CC001E */  lh         $t4, 0x1e($t6)
/* B2298 800B1698 85C8002E */  lh         $t0, 0x2e($t6)
/* B229C 800B169C 8DCF0034 */  lw         $t7, 0x34($t6)
/* B22A0 800B16A0 448C4000 */  mtc1       $t4, $f8
/* B22A4 800B16A4 44885000 */  mtc1       $t0, $f10
/* B22A8 800B16A8 25CB002A */  addiu      $t3, $t6, 0x2a
/* B22AC 800B16AC AFAB0014 */  sw         $t3, 0x14($sp)
/* B22B0 800B16B0 AFAF0010 */  sw         $t7, 0x10($sp)
/* B22B4 800B16B4 46804321 */  cvt.d.w    $f12, $f8
/* B22B8 800B16B8 0C02C699 */  jal        func_800B1A64
/* B22BC 800B16BC 468053A1 */   cvt.d.w   $f14, $f10
/* B22C0 800B16C0 8FAA0048 */  lw         $t2, 0x48($sp)
/* B22C4 800B16C4 A542002C */  sh         $v0, 0x2c($t2)
/* B22C8 800B16C8 8FAD004C */  lw         $t5, 0x4c($sp)
/* B22CC 800B16CC 25B90008 */  addiu      $t9, $t5, 8
/* B22D0 800B16D0 AFB9004C */  sw         $t9, 0x4c($sp)
/* B22D4 800B16D4 AFAD0038 */  sw         $t5, 0x38($sp)
/* B22D8 800B16D8 8FA90048 */  lw         $t1, 0x48($sp)
/* B22DC 800B16DC 8FAF0038 */  lw         $t7, 0x38($sp)
/* B22E0 800B16E0 3C010906 */  lui        $at, 0x906
/* B22E4 800B16E4 8538001C */  lh         $t8, 0x1c($t1)
/* B22E8 800B16E8 330CFFFF */  andi       $t4, $t8, 0xffff
/* B22EC 800B16EC 01814025 */  or         $t0, $t4, $at
/* B22F0 800B16F0 ADE80000 */  sw         $t0, ($t7)
/* B22F4 800B16F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* B22F8 800B16F8 ADC00004 */  sw         $zero, 4($t6)
/* B22FC 800B16FC 8FAB004C */  lw         $t3, 0x4c($sp)
/* B2300 800B1700 256A0008 */  addiu      $t2, $t3, 8
/* B2304 800B1704 AFAA004C */  sw         $t2, 0x4c($sp)
/* B2308 800B1708 AFAB0034 */  sw         $t3, 0x34($sp)
/* B230C 800B170C 8FAD0048 */  lw         $t5, 0x48($sp)
/* B2310 800B1710 8FAC0034 */  lw         $t4, 0x34($sp)
/* B2314 800B1714 3C010904 */  lui        $at, 0x904
/* B2318 800B1718 85B9001E */  lh         $t9, 0x1e($t5)
/* B231C 800B171C 3329FFFF */  andi       $t1, $t9, 0xffff
/* B2320 800B1720 0121C025 */  or         $t8, $t1, $at
/* B2324 800B1724 AD980000 */  sw         $t8, ($t4)
/* B2328 800B1728 8FA80034 */  lw         $t0, 0x34($sp)
/* B232C 800B172C AD000004 */  sw         $zero, 4($t0)
/* B2330 800B1730 8FAF004C */  lw         $t7, 0x4c($sp)
/* B2334 800B1734 25EE0008 */  addiu      $t6, $t7, 8
/* B2338 800B1738 AFAE004C */  sw         $t6, 0x4c($sp)
/* B233C 800B173C AFAF0030 */  sw         $t7, 0x30($sp)
/* B2340 800B1740 8FAB0048 */  lw         $t3, 0x48($sp)
/* B2344 800B1744 8FA90030 */  lw         $t1, 0x30($sp)
/* B2348 800B1748 3C010902 */  lui        $at, 0x902
/* B234C 800B174C 856A0028 */  lh         $t2, 0x28($t3)
/* B2350 800B1750 314DFFFF */  andi       $t5, $t2, 0xffff
/* B2354 800B1754 01A1C825 */  or         $t9, $t5, $at
/* B2358 800B1758 AD390000 */  sw         $t9, ($t1)
/* B235C 800B175C 8FB80048 */  lw         $t8, 0x48($sp)
/* B2360 800B1760 8FAD0030 */  lw         $t5, 0x30($sp)
/* B2364 800B1764 870C0026 */  lh         $t4, 0x26($t8)
/* B2368 800B1768 970E0024 */  lhu        $t6, 0x24($t8)
/* B236C 800B176C 3188FFFF */  andi       $t0, $t4, 0xffff
/* B2370 800B1770 00087C00 */  sll        $t7, $t0, 0x10
/* B2374 800B1774 31CBFFFF */  andi       $t3, $t6, 0xffff
/* B2378 800B1778 01EB5025 */  or         $t2, $t7, $t3
/* B237C 800B177C ADAA0004 */  sw         $t2, 4($t5)
/* B2380 800B1780 8FB9004C */  lw         $t9, 0x4c($sp)
/* B2384 800B1784 27290008 */  addiu      $t1, $t9, 8
/* B2388 800B1788 AFA9004C */  sw         $t1, 0x4c($sp)
/* B238C 800B178C AFB9002C */  sw         $t9, 0x2c($sp)
/* B2390 800B1790 8FAC0048 */  lw         $t4, 0x48($sp)
/* B2394 800B1794 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2398 800B1798 3C010900 */  lui        $at, 0x900
/* B239C 800B179C 8588002E */  lh         $t0, 0x2e($t4)
/* B23A0 800B17A0 3118FFFF */  andi       $t8, $t0, 0xffff
/* B23A4 800B17A4 03017025 */  or         $t6, $t8, $at
/* B23A8 800B17A8 ADEE0000 */  sw         $t6, ($t7)
/* B23AC 800B17AC 8FAB0048 */  lw         $t3, 0x48($sp)
/* B23B0 800B17B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* B23B4 800B17B4 856A002C */  lh         $t2, 0x2c($t3)
/* B23B8 800B17B8 9569002A */  lhu        $t1, 0x2a($t3)
/* B23BC 800B17BC 314DFFFF */  andi       $t5, $t2, 0xffff
/* B23C0 800B17C0 000DCC00 */  sll        $t9, $t5, 0x10
/* B23C4 800B17C4 312CFFFF */  andi       $t4, $t1, 0xffff
/* B23C8 800B17C8 032C4025 */  or         $t0, $t9, $t4
/* B23CC 800B17CC AF080004 */  sw         $t0, 4($t8)
/* B23D0 800B17D0 8FAE004C */  lw         $t6, 0x4c($sp)
/* B23D4 800B17D4 25CF0008 */  addiu      $t7, $t6, 8
/* B23D8 800B17D8 AFAF004C */  sw         $t7, 0x4c($sp)
/* B23DC 800B17DC AFAE0028 */  sw         $t6, 0x28($sp)
/* B23E0 800B17E0 8FAA0048 */  lw         $t2, 0x48($sp)
/* B23E4 800B17E4 8FB90028 */  lw         $t9, 0x28($sp)
/* B23E8 800B17E8 3C010908 */  lui        $at, 0x908
/* B23EC 800B17EC 854D0020 */  lh         $t5, 0x20($t2)
/* B23F0 800B17F0 31ABFFFF */  andi       $t3, $t5, 0xffff
/* B23F4 800B17F4 01614825 */  or         $t1, $t3, $at
/* B23F8 800B17F8 AF290000 */  sw         $t1, ($t9)
/* B23FC 800B17FC 8FAC0048 */  lw         $t4, 0x48($sp)
/* B2400 800B1800 8FAE0028 */  lw         $t6, 0x28($sp)
/* B2404 800B1804 85880022 */  lh         $t0, 0x22($t4)
/* B2408 800B1808 3118FFFF */  andi       $t8, $t0, 0xffff
/* B240C 800B180C ADD80004 */  sw         $t8, 4($t6)
/* B2410 800B1810 8FAF004C */  lw         $t7, 0x4c($sp)
/* B2414 800B1814 25EA0008 */  addiu      $t2, $t7, 8
/* B2418 800B1818 AFAA004C */  sw         $t2, 0x4c($sp)
/* B241C 800B181C AFAF0024 */  sw         $t7, 0x24($sp)
/* B2420 800B1820 8FAB0024 */  lw         $t3, 0x24($sp)
/* B2424 800B1824 3C0D0309 */  lui        $t5, 0x309
/* B2428 800B1828 AD6D0000 */  sw         $t5, ($t3)
/* B242C 800B182C 8FA90048 */  lw         $t1, 0x48($sp)
/* B2430 800B1830 0C026964 */  jal        osVirtualToPhysical
/* B2434 800B1834 8D240014 */   lw        $a0, 0x14($t1)
/* B2438 800B1838 8FB90024 */  lw         $t9, 0x24($sp)
/* B243C 800B183C AF220004 */  sw         $v0, 4($t9)
/* B2440 800B1840 1000000D */  b          .L800B1878
/* B2444 800B1844 00000000 */   nop
.L800B1848:
/* B2448 800B1848 8FAC004C */  lw         $t4, 0x4c($sp)
/* B244C 800B184C 25880008 */  addiu      $t0, $t4, 8
/* B2450 800B1850 AFA8004C */  sw         $t0, 0x4c($sp)
/* B2454 800B1854 AFAC0020 */  sw         $t4, 0x20($sp)
/* B2458 800B1858 8FAE0020 */  lw         $t6, 0x20($sp)
/* B245C 800B185C 3C180308 */  lui        $t8, 0x308
/* B2460 800B1860 ADD80000 */  sw         $t8, ($t6)
/* B2464 800B1864 8FAF0048 */  lw         $t7, 0x48($sp)
/* B2468 800B1868 0C026964 */  jal        osVirtualToPhysical
/* B246C 800B186C 8DE40014 */   lw        $a0, 0x14($t7)
/* B2470 800B1870 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2474 800B1874 AD420004 */  sw         $v0, 4($t2)
.L800B1878:
/* B2478 800B1878 8FAD0054 */  lw         $t5, 0x54($sp)
/* B247C 800B187C 8FA9005C */  lw         $t1, 0x5c($sp)
/* B2480 800B1880 85AB0000 */  lh         $t3, ($t5)
/* B2484 800B1884 0009C840 */  sll        $t9, $t1, 1
/* B2488 800B1888 01796021 */  addu       $t4, $t3, $t9
/* B248C 800B188C A5AC0000 */  sh         $t4, ($t5)
/* B2490 800B1890 8FA80048 */  lw         $t0, 0x48($sp)
/* B2494 800B1894 8FAE005C */  lw         $t6, 0x5c($sp)
/* B2498 800B1898 8D180030 */  lw         $t8, 0x30($t0)
/* B249C 800B189C 030E7821 */  addu       $t7, $t8, $t6
/* B24A0 800B18A0 AD0F0030 */  sw         $t7, 0x30($t0)
/* B24A4 800B18A4 10000003 */  b          .L800B18B4
/* B24A8 800B18A8 8FA2004C */   lw        $v0, 0x4c($sp)
/* B24AC 800B18AC 10000001 */  b          .L800B18B4
/* B24B0 800B18B0 00000000 */   nop
.L800B18B4:
/* B24B4 800B18B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B24B8 800B18B8 27BD0050 */  addiu      $sp, $sp, 0x50
/* B24BC 800B18BC 03E00008 */  jr         $ra
/* B24C0 800B18C0 00000000 */   nop

glabel _frexpf
/* B24C4 800B18C4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B24C8 800B18C8 ACC00000 */  sw         $zero, ($a2)
/* B24CC 800B18CC 44802800 */  mtc1       $zero, $f5
/* B24D0 800B18D0 44802000 */  mtc1       $zero, $f4
/* B24D4 800B18D4 00000000 */  nop
/* B24D8 800B18D8 46246032 */  c.eq.d     $f12, $f4
/* B24DC 800B18DC 00000000 */  nop
/* B24E0 800B18E0 45000003 */  bc1f       .L800B18F0
/* B24E4 800B18E4 00000000 */   nop
/* B24E8 800B18E8 1000004A */  b          .L800B1A14
/* B24EC 800B18EC 46206006 */   mov.d     $f0, $f12
.L800B18F0:
/* B24F0 800B18F0 44803800 */  mtc1       $zero, $f7
/* B24F4 800B18F4 44803000 */  mtc1       $zero, $f6
/* B24F8 800B18F8 00000000 */  nop
/* B24FC 800B18FC 462C303C */  c.lt.d     $f6, $f12
/* B2500 800B1900 00000000 */  nop
/* B2504 800B1904 45000003 */  bc1f       .L800B1914
/* B2508 800B1908 00000000 */   nop
/* B250C 800B190C 10000003 */  b          .L800B191C
/* B2510 800B1910 F7AC0008 */   sdc1      $f12, 8($sp)
.L800B1914:
/* B2514 800B1914 46206207 */  neg.d      $f8, $f12
/* B2518 800B1918 F7A80008 */  sdc1       $f8, 8($sp)
.L800B191C:
/* B251C 800B191C 3C013FF0 */  lui        $at, 0x3ff0
/* B2520 800B1920 44818800 */  mtc1       $at, $f17
/* B2524 800B1924 D7AA0008 */  ldc1       $f10, 8($sp)
/* B2528 800B1928 44808000 */  mtc1       $zero, $f16
/* B252C 800B192C 00000000 */  nop
/* B2530 800B1930 462A803E */  c.le.d     $f16, $f10
/* B2534 800B1934 00000000 */  nop
/* B2538 800B1938 45000011 */  bc1f       .L800B1980
/* B253C 800B193C 00000000 */   nop
.L800B1940:
/* B2540 800B1940 8CCE0000 */  lw         $t6, ($a2)
/* B2544 800B1944 25CF0001 */  addiu      $t7, $t6, 1
/* B2548 800B1948 ACCF0000 */  sw         $t7, ($a2)
/* B254C 800B194C 3C013FE0 */  lui        $at, 0x3fe0
/* B2550 800B1950 44812800 */  mtc1       $at, $f5
/* B2554 800B1954 D7B20008 */  ldc1       $f18, 8($sp)
/* B2558 800B1958 44802000 */  mtc1       $zero, $f4
/* B255C 800B195C 3C013FF0 */  lui        $at, 0x3ff0
/* B2560 800B1960 44814800 */  mtc1       $at, $f9
/* B2564 800B1964 46249182 */  mul.d      $f6, $f18, $f4
/* B2568 800B1968 44804000 */  mtc1       $zero, $f8
/* B256C 800B196C 00000000 */  nop
/* B2570 800B1970 4626403E */  c.le.d     $f8, $f6
/* B2574 800B1974 F7A60008 */  sdc1       $f6, 8($sp)
/* B2578 800B1978 4501FFF1 */  bc1t       .L800B1940
/* B257C 800B197C 00000000 */   nop
.L800B1980:
/* B2580 800B1980 3C013FE0 */  lui        $at, 0x3fe0
/* B2584 800B1984 44818800 */  mtc1       $at, $f17
/* B2588 800B1988 D7AA0008 */  ldc1       $f10, 8($sp)
/* B258C 800B198C 44808000 */  mtc1       $zero, $f16
/* B2590 800B1990 00000000 */  nop
/* B2594 800B1994 4630503C */  c.lt.d     $f10, $f16
/* B2598 800B1998 00000000 */  nop
/* B259C 800B199C 4500000E */  bc1f       .L800B19D8
/* B25A0 800B19A0 00000000 */   nop
.L800B19A4:
/* B25A4 800B19A4 8CD80000 */  lw         $t8, ($a2)
/* B25A8 800B19A8 2719FFFF */  addiu      $t9, $t8, -1
/* B25AC 800B19AC ACD90000 */  sw         $t9, ($a2)
/* B25B0 800B19B0 D7B20008 */  ldc1       $f18, 8($sp)
/* B25B4 800B19B4 3C013FE0 */  lui        $at, 0x3fe0
/* B25B8 800B19B8 44813800 */  mtc1       $at, $f7
/* B25BC 800B19BC 46329100 */  add.d      $f4, $f18, $f18
/* B25C0 800B19C0 44803000 */  mtc1       $zero, $f6
/* B25C4 800B19C4 00000000 */  nop
/* B25C8 800B19C8 4626203C */  c.lt.d     $f4, $f6
/* B25CC 800B19CC F7A40008 */  sdc1       $f4, 8($sp)
/* B25D0 800B19D0 4501FFF4 */  bc1t       .L800B19A4
/* B25D4 800B19D4 00000000 */   nop
.L800B19D8:
/* B25D8 800B19D8 44804800 */  mtc1       $zero, $f9
/* B25DC 800B19DC 44804000 */  mtc1       $zero, $f8
/* B25E0 800B19E0 00000000 */  nop
/* B25E4 800B19E4 462C403C */  c.lt.d     $f8, $f12
/* B25E8 800B19E8 00000000 */  nop
/* B25EC 800B19EC 45000003 */  bc1f       .L800B19FC
/* B25F0 800B19F0 00000000 */   nop
/* B25F4 800B19F4 10000003 */  b          .L800B1A04
/* B25F8 800B19F8 D7AE0008 */   ldc1      $f14, 8($sp)
.L800B19FC:
/* B25FC 800B19FC D7AE0008 */  ldc1       $f14, 8($sp)
/* B2600 800B1A00 46207387 */  neg.d      $f14, $f14
.L800B1A04:
/* B2604 800B1A04 10000003 */  b          .L800B1A14
/* B2608 800B1A08 46207006 */   mov.d     $f0, $f14
/* B260C 800B1A0C 10000001 */  b          .L800B1A14
/* B2610 800B1A10 00000000 */   nop
.L800B1A14:
/* B2614 800B1A14 03E00008 */  jr         $ra
/* B2618 800B1A18 27BD0010 */   addiu     $sp, $sp, 0x10

glabel _ldexpf
/* B261C 800B1A1C 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2620 800B1A20 10C0000A */  beqz       $a2, .L800B1A4C
/* B2624 800B1A24 00000000 */   nop
/* B2628 800B1A28 240E0001 */  addiu      $t6, $zero, 1
/* B262C 800B1A2C 00CE7804 */  sllv       $t7, $t6, $a2
/* B2630 800B1A30 AFAF0004 */  sw         $t7, 4($sp)
/* B2634 800B1A34 8FB80004 */  lw         $t8, 4($sp)
/* B2638 800B1A38 44982000 */  mtc1       $t8, $f4
/* B263C 800B1A3C 00000000 */  nop
/* B2640 800B1A40 468021A1 */  cvt.d.w    $f6, $f4
/* B2644 800B1A44 46266302 */  mul.d      $f12, $f12, $f6
/* B2648 800B1A48 00000000 */  nop
.L800B1A4C:
/* B264C 800B1A4C 10000003 */  b          .L800B1A5C
/* B2650 800B1A50 46206006 */   mov.d     $f0, $f12
/* B2654 800B1A54 10000001 */  b          .L800B1A5C
/* B2658 800B1A58 00000000 */   nop
.L800B1A5C:
/* B265C 800B1A5C 03E00008 */  jr         $ra
/* B2660 800B1A60 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B1A64
/* B2664 800B1A64 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* B2668 800B1A68 AFBF0024 */  sw         $ra, 0x24($sp)
/* B266C 800B1A6C F7AC00B8 */  sdc1       $f12, 0xb8($sp)
/* B2670 800B1A70 F7AE00C0 */  sdc1       $f14, 0xc0($sp)
/* B2674 800B1A74 F7B60018 */  sdc1       $f22, 0x18($sp)
/* B2678 800B1A78 F7B40010 */  sdc1       $f20, 0x10($sp)
/* B267C 800B1A7C 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* B2680 800B1A80 3C013FF0 */  lui        $at, 0x3ff0
/* B2684 800B1A84 44812800 */  mtc1       $at, $f5
/* B2688 800B1A88 448E3000 */  mtc1       $t6, $f6
/* B268C 800B1A8C 44802000 */  mtc1       $zero, $f4
/* B2690 800B1A90 46803221 */  cvt.d.w    $f8, $f6
/* B2694 800B1A94 46282283 */  div.d      $f10, $f4, $f8
/* B2698 800B1A98 F7AA00A8 */  sdc1       $f10, 0xa8($sp)
/* B269C 800B1A9C 8FAF00C8 */  lw         $t7, 0xc8($sp)
/* B26A0 800B1AA0 15E00012 */  bnez       $t7, .L800B1AEC
/* B26A4 800B1AA4 00000000 */   nop
/* B26A8 800B1AA8 D7B000C0 */  ldc1       $f16, 0xc0($sp)
/* B26AC 800B1AAC D7B200B8 */  ldc1       $f18, 0xb8($sp)
/* B26B0 800B1AB0 4630903E */  c.le.d     $f18, $f16
/* B26B4 800B1AB4 00000000 */  nop
/* B26B8 800B1AB8 45000008 */  bc1f       .L800B1ADC
/* B26BC 800B1ABC 00000000 */   nop
/* B26C0 800B1AC0 8FB900CC */  lw         $t9, 0xcc($sp)
/* B26C4 800B1AC4 3418FFFF */  ori        $t8, $zero, 0xffff
/* B26C8 800B1AC8 A7380000 */  sh         $t8, ($t9)
/* B26CC 800B1ACC 1000009E */  b          .L800B1D48
/* B26D0 800B1AD0 24027FFF */   addiu     $v0, $zero, 0x7fff
/* B26D4 800B1AD4 10000005 */  b          .L800B1AEC
/* B26D8 800B1AD8 00000000 */   nop
.L800B1ADC:
/* B26DC 800B1ADC 8FA800CC */  lw         $t0, 0xcc($sp)
/* B26E0 800B1AE0 A5000000 */  sh         $zero, ($t0)
/* B26E4 800B1AE4 10000098 */  b          .L800B1D48
/* B26E8 800B1AE8 00001025 */   or        $v0, $zero, $zero
.L800B1AEC:
/* B26EC 800B1AEC 3C013FF0 */  lui        $at, 0x3ff0
/* B26F0 800B1AF0 44812800 */  mtc1       $at, $f5
/* B26F4 800B1AF4 D7A600C0 */  ldc1       $f6, 0xc0($sp)
/* B26F8 800B1AF8 44802000 */  mtc1       $zero, $f4
/* B26FC 800B1AFC 00000000 */  nop
/* B2700 800B1B00 4624303C */  c.lt.d     $f6, $f4
/* B2704 800B1B04 00000000 */  nop
/* B2708 800B1B08 45000006 */  bc1f       .L800B1B24
/* B270C 800B1B0C 00000000 */   nop
/* B2710 800B1B10 3C013FF0 */  lui        $at, 0x3ff0
/* B2714 800B1B14 44814800 */  mtc1       $at, $f9
/* B2718 800B1B18 44804000 */  mtc1       $zero, $f8
/* B271C 800B1B1C 00000000 */  nop
/* B2720 800B1B20 F7A800C0 */  sdc1       $f8, 0xc0($sp)
.L800B1B24:
/* B2724 800B1B24 D7AA00B8 */  ldc1       $f10, 0xb8($sp)
/* B2728 800B1B28 44808800 */  mtc1       $zero, $f17
/* B272C 800B1B2C 44808000 */  mtc1       $zero, $f16
/* B2730 800B1B30 00000000 */  nop
/* B2734 800B1B34 4630503E */  c.le.d     $f10, $f16
/* B2738 800B1B38 00000000 */  nop
/* B273C 800B1B3C 45000006 */  bc1f       .L800B1B58
/* B2740 800B1B40 00000000 */   nop
/* B2744 800B1B44 3C013FF0 */  lui        $at, 0x3ff0
/* B2748 800B1B48 44819800 */  mtc1       $at, $f19
/* B274C 800B1B4C 44809000 */  mtc1       $zero, $f18
/* B2750 800B1B50 00000000 */  nop
/* B2754 800B1B54 F7B200B8 */  sdc1       $f18, 0xb8($sp)
.L800B1B58:
/* B2758 800B1B58 3C0A800F */  lui        $t2, %hi(D_800EA8F0)
/* B275C 800B1B5C 254AA8F0 */  addiu      $t2, $t2, %lo(D_800EA8F0)
/* B2760 800B1B60 254C003C */  addiu      $t4, $t2, 0x3c
/* B2764 800B1B64 27A90038 */  addiu      $t1, $sp, 0x38
.L800B1B68:
/* B2768 800B1B68 8D410000 */  lw         $at, ($t2)
/* B276C 800B1B6C 254A000C */  addiu      $t2, $t2, 0xc
/* B2770 800B1B70 2529000C */  addiu      $t1, $t1, 0xc
/* B2774 800B1B74 AD21FFF4 */  sw         $at, -0xc($t1)
/* B2778 800B1B78 8D41FFF8 */  lw         $at, -8($t2)
/* B277C 800B1B7C AD21FFF8 */  sw         $at, -8($t1)
/* B2780 800B1B80 8D41FFFC */  lw         $at, -4($t2)
/* B2784 800B1B84 154CFFF8 */  bne        $t2, $t4, .L800B1B68
/* B2788 800B1B88 AD21FFFC */   sw        $at, -4($t1)
/* B278C 800B1B8C 8D410000 */  lw         $at, ($t2)
/* B2790 800B1B90 AD210000 */  sw         $at, ($t1)
/* B2794 800B1B94 D7AC00A8 */  ldc1       $f12, 0xa8($sp)
/* B2798 800B1B98 0C02C687 */  jal        _ldexpf
/* B279C 800B1B9C 2406001E */   addiu     $a2, $zero, 0x1e
/* B27A0 800B1BA0 4620018D */  trunc.w.d  $f6, $f0
/* B27A4 800B1BA4 E7A60084 */  swc1       $f6, 0x84($sp)
/* B27A8 800B1BA8 D7A400C0 */  ldc1       $f4, 0xc0($sp)
/* B27AC 800B1BAC D7A800B8 */  ldc1       $f8, 0xb8($sp)
/* B27B0 800B1BB0 27A60080 */  addiu      $a2, $sp, 0x80
/* B27B4 800B1BB4 0C02C631 */  jal        _frexpf
/* B27B8 800B1BB8 46282303 */   div.d     $f12, $f4, $f8
/* B27BC 800B1BBC F7A00088 */  sdc1       $f0, 0x88($sp)
/* B27C0 800B1BC0 D7AC0088 */  ldc1       $f12, 0x88($sp)
/* B27C4 800B1BC4 0C02C687 */  jal        _ldexpf
/* B27C8 800B1BC8 24060004 */   addiu     $a2, $zero, 4
/* B27CC 800B1BCC 4620028D */  trunc.w.d  $f10, $f0
/* B27D0 800B1BD0 E7AA007C */  swc1       $f10, 0x7c($sp)
/* B27D4 800B1BD4 8FA80080 */  lw         $t0, 0x80($sp)
/* B27D8 800B1BD8 8FAF007C */  lw         $t7, 0x7c($sp)
/* B27DC 800B1BDC 3C01800F */  lui        $at, 0x800f
/* B27E0 800B1BE0 44889000 */  mtc1       $t0, $f18
/* B27E4 800B1BE4 000FC0C0 */  sll        $t8, $t7, 3
/* B27E8 800B1BE8 03B8C821 */  addu       $t9, $sp, $t8
/* B27EC 800B1BEC 468091A1 */  cvt.d.w    $f6, $f18
/* B27F0 800B1BF0 D730FFF8 */  ldc1       $f16, -8($t9)
/* B27F4 800B1BF4 D428E5E0 */  ldc1       $f8, -0x1a20($at)
/* B27F8 800B1BF8 46268100 */  add.d      $f4, $f16, $f6
/* B27FC 800B1BFC 46282282 */  mul.d      $f10, $f4, $f8
/* B2800 800B1C00 F7AA00A0 */  sdc1       $f10, 0xa0($sp)
/* B2804 800B1C04 3C013FF0 */  lui        $at, 0x3ff0
/* B2808 800B1C08 44816800 */  mtc1       $at, $f13
/* B280C 800B1C0C 44806000 */  mtc1       $zero, $f12
/* B2810 800B1C10 0C02C687 */  jal        _ldexpf
/* B2814 800B1C14 2406001E */   addiu     $a2, $zero, 0x1e
/* B2818 800B1C18 D7B200A0 */  ldc1       $f18, 0xa0($sp)
/* B281C 800B1C1C 46200506 */  mov.d      $f20, $f0
/* B2820 800B1C20 46349403 */  div.d      $f16, $f18, $f20
/* B2824 800B1C24 F7B000A0 */  sdc1       $f16, 0xa0($sp)
/* B2828 800B1C28 3C013FF0 */  lui        $at, 0x3ff0
/* B282C 800B1C2C 44813800 */  mtc1       $at, $f7
/* B2830 800B1C30 44803000 */  mtc1       $zero, $f6
/* B2834 800B1C34 D7A400A0 */  ldc1       $f4, 0xa0($sp)
/* B2838 800B1C38 46243200 */  add.d      $f8, $f6, $f4
/* B283C 800B1C3C F7A80090 */  sdc1       $f8, 0x90($sp)
/* B2840 800B1C40 3C013FF0 */  lui        $at, 0x3ff0
/* B2844 800B1C44 44815800 */  mtc1       $at, $f11
/* B2848 800B1C48 44805000 */  mtc1       $zero, $f10
/* B284C 800B1C4C 00000000 */  nop
/* B2850 800B1C50 F7AA0098 */  sdc1       $f10, 0x98($sp)
/* B2854 800B1C54 8FAB0084 */  lw         $t3, 0x84($sp)
/* B2858 800B1C58 11600012 */  beqz       $t3, .L800B1CA4
/* B285C 800B1C5C 00000000 */   nop
.L800B1C60:
/* B2860 800B1C60 8FAC0084 */  lw         $t4, 0x84($sp)
/* B2864 800B1C64 318A0001 */  andi       $t2, $t4, 1
/* B2868 800B1C68 11400005 */  beqz       $t2, .L800B1C80
/* B286C 800B1C6C 00000000 */   nop
/* B2870 800B1C70 D7B20098 */  ldc1       $f18, 0x98($sp)
/* B2874 800B1C74 D7B00090 */  ldc1       $f16, 0x90($sp)
/* B2878 800B1C78 46309182 */  mul.d      $f6, $f18, $f16
/* B287C 800B1C7C F7A60098 */  sdc1       $f6, 0x98($sp)
.L800B1C80:
/* B2880 800B1C80 D7A40090 */  ldc1       $f4, 0x90($sp)
/* B2884 800B1C84 46242202 */  mul.d      $f8, $f4, $f4
/* B2888 800B1C88 F7A80090 */  sdc1       $f8, 0x90($sp)
/* B288C 800B1C8C 8FA90084 */  lw         $t1, 0x84($sp)
/* B2890 800B1C90 00096843 */  sra        $t5, $t1, 1
/* B2894 800B1C94 AFAD0084 */  sw         $t5, 0x84($sp)
/* B2898 800B1C98 8FAE0084 */  lw         $t6, 0x84($sp)
/* B289C 800B1C9C 15C0FFF0 */  bnez       $t6, .L800B1C60
/* B28A0 800B1CA0 00000000 */   nop
.L800B1CA4:
/* B28A4 800B1CA4 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B28A8 800B1CA8 462A5582 */  mul.d      $f22, $f10, $f10
/* B28AC 800B1CAC F7B60098 */  sdc1       $f22, 0x98($sp)
/* B28B0 800B1CB0 D7B20098 */  ldc1       $f18, 0x98($sp)
/* B28B4 800B1CB4 46369502 */  mul.d      $f20, $f18, $f22
/* B28B8 800B1CB8 F7B40098 */  sdc1       $f20, 0x98($sp)
/* B28BC 800B1CBC D7B00098 */  ldc1       $f16, 0x98($sp)
/* B28C0 800B1CC0 46348182 */  mul.d      $f6, $f16, $f20
/* B28C4 800B1CC4 F7A60098 */  sdc1       $f6, 0x98($sp)
/* B28C8 800B1CC8 D7A40098 */  ldc1       $f4, 0x98($sp)
/* B28CC 800B1CCC 4620220D */  trunc.w.d  $f8, $f4
/* B28D0 800B1CD0 44184000 */  mfc1       $t8, $f8
/* B28D4 800B1CD4 00000000 */  nop
/* B28D8 800B1CD8 A7B800B6 */  sh         $t8, 0xb6($sp)
/* B28DC 800B1CDC 87B900B6 */  lh         $t9, 0xb6($sp)
/* B28E0 800B1CE0 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B28E4 800B1CE4 3C01800F */  lui        $at, %hi(D_800EE5E8)
/* B28E8 800B1CE8 44999000 */  mtc1       $t9, $f18
/* B28EC 800B1CEC D428E5E8 */  ldc1       $f8, %lo(D_800EE5E8)($at)
/* B28F0 800B1CF0 8FA900CC */  lw         $t1, 0xcc($sp)
/* B28F4 800B1CF4 46809420 */  cvt.s.w    $f16, $f18
/* B28F8 800B1CF8 460081A1 */  cvt.d.s    $f6, $f16
/* B28FC 800B1CFC 46265101 */  sub.d      $f4, $f10, $f6
/* B2900 800B1D00 46282482 */  mul.d      $f18, $f4, $f8
/* B2904 800B1D04 4620940D */  trunc.w.d  $f16, $f18
/* B2908 800B1D08 440B8000 */  mfc1       $t3, $f16
/* B290C 800B1D0C 00000000 */  nop
/* B2910 800B1D10 000B6400 */  sll        $t4, $t3, 0x10
/* B2914 800B1D14 000C5403 */  sra        $t2, $t4, 0x10
/* B2918 800B1D18 A52A0000 */  sh         $t2, ($t1)
/* B291C 800B1D1C D7AA0098 */  ldc1       $f10, 0x98($sp)
/* B2920 800B1D20 4620518D */  trunc.w.d  $f6, $f10
/* B2924 800B1D24 44023000 */  mfc1       $v0, $f6
/* B2928 800B1D28 00000000 */  nop
/* B292C 800B1D2C 00027400 */  sll        $t6, $v0, 0x10
/* B2930 800B1D30 01C01025 */  or         $v0, $t6, $zero
/* B2934 800B1D34 00027C03 */  sra        $t7, $v0, 0x10
/* B2938 800B1D38 10000003 */  b          .L800B1D48
/* B293C 800B1D3C 01E01025 */   or        $v0, $t7, $zero
/* B2940 800B1D40 10000001 */  b          .L800B1D48
/* B2944 800B1D44 00000000 */   nop
.L800B1D48:
/* B2948 800B1D48 8FBF0024 */  lw         $ra, 0x24($sp)
/* B294C 800B1D4C D7B40010 */  ldc1       $f20, 0x10($sp)
/* B2950 800B1D50 D7B60018 */  ldc1       $f22, 0x18($sp)
/* B2954 800B1D54 03E00008 */  jr         $ra
/* B2958 800B1D58 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800B1D5C
/* B295C 800B1D5C 00063400 */  sll        $a2, $a2, 0x10
/* B2960 800B1D60 00063403 */  sra        $a2, $a2, 0x10
/* B2964 800B1D64 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B2968 800B1D68 30E7FFFF */  andi       $a3, $a3, 0xffff
/* B296C 800B1D6C 000570C3 */  sra        $t6, $a1, 3
/* B2970 800B1D70 01C02825 */  or         $a1, $t6, $zero
/* B2974 800B1D74 14A00003 */  bnez       $a1, .L800B1D84
/* B2978 800B1D78 00000000 */   nop
/* B297C 800B1D7C 10000032 */  b          .L800B1E48
/* B2980 800B1D80 46006006 */   mov.s     $f0, $f12
.L800B1D84:
/* B2984 800B1D84 00067C00 */  sll        $t7, $a2, 0x10
/* B2988 800B1D88 448F2000 */  mtc1       $t7, $f4
/* B298C 800B1D8C 44874000 */  mtc1       $a3, $f8
/* B2990 800B1D90 468021A0 */  cvt.s.w    $f6, $f4
/* B2994 800B1D94 04E10005 */  bgez       $a3, .L800B1DAC
/* B2998 800B1D98 468042A0 */   cvt.s.w   $f10, $f8
/* B299C 800B1D9C 3C014F80 */  lui        $at, 0x4f80
/* B29A0 800B1DA0 44818000 */  mtc1       $at, $f16
/* B29A4 800B1DA4 00000000 */  nop
/* B29A8 800B1DA8 46105280 */  add.s      $f10, $f10, $f16
.L800B1DAC:
/* B29AC 800B1DAC 460A3480 */  add.s      $f18, $f6, $f10
/* B29B0 800B1DB0 3C014780 */  lui        $at, 0x4780
/* B29B4 800B1DB4 44812000 */  mtc1       $at, $f4
/* B29B8 800B1DB8 00000000 */  nop
/* B29BC 800B1DBC 46049203 */  div.s      $f8, $f18, $f4
/* B29C0 800B1DC0 E7A8000C */  swc1       $f8, 0xc($sp)
/* B29C4 800B1DC4 3C013F80 */  lui        $at, 0x3f80
/* B29C8 800B1DC8 44818000 */  mtc1       $at, $f16
/* B29CC 800B1DCC 00000000 */  nop
/* B29D0 800B1DD0 E7B00008 */  swc1       $f16, 8($sp)
/* B29D4 800B1DD4 AFA00004 */  sw         $zero, 4($sp)
.L800B1DD8:
/* B29D8 800B1DD8 30B80001 */  andi       $t8, $a1, 1
/* B29DC 800B1DDC 13000005 */  beqz       $t8, .L800B1DF4
/* B29E0 800B1DE0 00000000 */   nop
/* B29E4 800B1DE4 C7A60008 */  lwc1       $f6, 8($sp)
/* B29E8 800B1DE8 C7AA000C */  lwc1       $f10, 0xc($sp)
/* B29EC 800B1DEC 460A3482 */  mul.s      $f18, $f6, $f10
/* B29F0 800B1DF0 E7B20008 */  swc1       $f18, 8($sp)
.L800B1DF4:
/* B29F4 800B1DF4 0005C843 */  sra        $t9, $a1, 1
/* B29F8 800B1DF8 03202825 */  or         $a1, $t9, $zero
/* B29FC 800B1DFC 14A00003 */  bnez       $a1, .L800B1E0C
/* B2A00 800B1E00 00000000 */   nop
/* B2A04 800B1E04 10000009 */  b          .L800B1E2C
/* B2A08 800B1E08 00000000 */   nop
.L800B1E0C:
/* B2A0C 800B1E0C C7A4000C */  lwc1       $f4, 0xc($sp)
/* B2A10 800B1E10 46042202 */  mul.s      $f8, $f4, $f4
/* B2A14 800B1E14 E7A8000C */  swc1       $f8, 0xc($sp)
/* B2A18 800B1E18 8FA80004 */  lw         $t0, 4($sp)
/* B2A1C 800B1E1C 25090001 */  addiu      $t1, $t0, 1
/* B2A20 800B1E20 29210020 */  slti       $at, $t1, 0x20
/* B2A24 800B1E24 1420FFEC */  bnez       $at, .L800B1DD8
/* B2A28 800B1E28 AFA90004 */   sw        $t1, 4($sp)
.L800B1E2C:
/* B2A2C 800B1E2C C7B00008 */  lwc1       $f16, 8($sp)
/* B2A30 800B1E30 46106302 */  mul.s      $f12, $f12, $f16
/* B2A34 800B1E34 00000000 */  nop
/* B2A38 800B1E38 10000003 */  b          .L800B1E48
/* B2A3C 800B1E3C 46006006 */   mov.s     $f0, $f12
/* B2A40 800B1E40 10000001 */  b          .L800B1E48
/* B2A44 800B1E44 00000000 */   nop
.L800B1E48:
/* B2A48 800B1E48 03E00008 */  jr         $ra
/* B2A4C 800B1E4C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel alAuxBusPull
/* B2A50 800B1E50 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B2A54 800B1E54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2A58 800B1E58 AFA40038 */  sw         $a0, 0x38($sp)
/* B2A5C 800B1E5C AFA5003C */  sw         $a1, 0x3c($sp)
/* B2A60 800B1E60 AFA60040 */  sw         $a2, 0x40($sp)
/* B2A64 800B1E64 AFA70044 */  sw         $a3, 0x44($sp)
/* B2A68 800B1E68 8FAE0048 */  lw         $t6, 0x48($sp)
/* B2A6C 800B1E6C AFAE0034 */  sw         $t6, 0x34($sp)
/* B2A70 800B1E70 8FAF0038 */  lw         $t7, 0x38($sp)
/* B2A74 800B1E74 AFAF0030 */  sw         $t7, 0x30($sp)
/* B2A78 800B1E78 8FB80030 */  lw         $t8, 0x30($sp)
/* B2A7C 800B1E7C 8F19001C */  lw         $t9, 0x1c($t8)
/* B2A80 800B1E80 AFB9002C */  sw         $t9, 0x2c($sp)
/* B2A84 800B1E84 8FA80034 */  lw         $t0, 0x34($sp)
/* B2A88 800B1E88 25090008 */  addiu      $t1, $t0, 8
/* B2A8C 800B1E8C AFA90034 */  sw         $t1, 0x34($sp)
/* B2A90 800B1E90 AFA80024 */  sw         $t0, 0x24($sp)
/* B2A94 800B1E94 8FAB0024 */  lw         $t3, 0x24($sp)
/* B2A98 800B1E98 3C0A0200 */  lui        $t2, 0x200
/* B2A9C 800B1E9C 354A06C0 */  ori        $t2, $t2, 0x6c0
/* B2AA0 800B1EA0 AD6A0000 */  sw         $t2, ($t3)
/* B2AA4 800B1EA4 8FAC0040 */  lw         $t4, 0x40($sp)
/* B2AA8 800B1EA8 8FAE0024 */  lw         $t6, 0x24($sp)
/* B2AAC 800B1EAC 000C6840 */  sll        $t5, $t4, 1
/* B2AB0 800B1EB0 ADCD0004 */  sw         $t5, 4($t6)
/* B2AB4 800B1EB4 8FAF0034 */  lw         $t7, 0x34($sp)
/* B2AB8 800B1EB8 25F80008 */  addiu      $t8, $t7, 8
/* B2ABC 800B1EBC AFB80034 */  sw         $t8, 0x34($sp)
/* B2AC0 800B1EC0 AFAF0020 */  sw         $t7, 0x20($sp)
/* B2AC4 800B1EC4 8FA80020 */  lw         $t0, 0x20($sp)
/* B2AC8 800B1EC8 3C190200 */  lui        $t9, 0x200
/* B2ACC 800B1ECC 37390800 */  ori        $t9, $t9, 0x800
/* B2AD0 800B1ED0 AD190000 */  sw         $t9, ($t0)
/* B2AD4 800B1ED4 8FA90040 */  lw         $t1, 0x40($sp)
/* B2AD8 800B1ED8 8FAB0020 */  lw         $t3, 0x20($sp)
/* B2ADC 800B1EDC 00095040 */  sll        $t2, $t1, 1
/* B2AE0 800B1EE0 AD6A0004 */  sw         $t2, 4($t3)
/* B2AE4 800B1EE4 8FAC0030 */  lw         $t4, 0x30($sp)
/* B2AE8 800B1EE8 AFA00028 */  sw         $zero, 0x28($sp)
/* B2AEC 800B1EEC 8D8D0014 */  lw         $t5, 0x14($t4)
/* B2AF0 800B1EF0 19A00017 */  blez       $t5, .L800B1F50
/* B2AF4 800B1EF4 00000000 */   nop
.L800B1EF8:
/* B2AF8 800B1EF8 8FAF0028 */  lw         $t7, 0x28($sp)
/* B2AFC 800B1EFC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B2B00 800B1F00 8FA90034 */  lw         $t1, 0x34($sp)
/* B2B04 800B1F04 000FC080 */  sll        $t8, $t7, 2
/* B2B08 800B1F08 01D8C821 */  addu       $t9, $t6, $t8
/* B2B0C 800B1F0C 8F280000 */  lw         $t0, ($t9)
/* B2B10 800B1F10 AFA90010 */  sw         $t1, 0x10($sp)
/* B2B14 800B1F14 8FA5003C */  lw         $a1, 0x3c($sp)
/* B2B18 800B1F18 8D190004 */  lw         $t9, 4($t0)
/* B2B1C 800B1F1C 8FA60040 */  lw         $a2, 0x40($sp)
/* B2B20 800B1F20 8FA70044 */  lw         $a3, 0x44($sp)
/* B2B24 800B1F24 0320F809 */  jalr       $t9
/* B2B28 800B1F28 01002025 */   or        $a0, $t0, $zero
/* B2B2C 800B1F2C AFA20034 */  sw         $v0, 0x34($sp)
/* B2B30 800B1F30 8FAA0028 */  lw         $t2, 0x28($sp)
/* B2B34 800B1F34 8FAC0030 */  lw         $t4, 0x30($sp)
/* B2B38 800B1F38 254B0001 */  addiu      $t3, $t2, 1
/* B2B3C 800B1F3C AFAB0028 */  sw         $t3, 0x28($sp)
/* B2B40 800B1F40 8D8D0014 */  lw         $t5, 0x14($t4)
/* B2B44 800B1F44 016D082A */  slt        $at, $t3, $t5
/* B2B48 800B1F48 1420FFEB */  bnez       $at, .L800B1EF8
/* B2B4C 800B1F4C 00000000 */   nop
.L800B1F50:
/* B2B50 800B1F50 10000003 */  b          .L800B1F60
/* B2B54 800B1F54 8FA20034 */   lw        $v0, 0x34($sp)
/* B2B58 800B1F58 10000001 */  b          .L800B1F60
/* B2B5C 800B1F5C 00000000 */   nop
.L800B1F60:
/* B2B60 800B1F60 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2B64 800B1F64 27BD0038 */  addiu      $sp, $sp, 0x38
/* B2B68 800B1F68 03E00008 */  jr         $ra
/* B2B6C 800B1F6C 00000000 */   nop

glabel func_800B1F70
/* B2B70 800B1F70 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2B74 800B1F74 AFA40004 */  sw         $a0, 4($sp)
/* B2B78 800B1F78 8FAE0004 */  lw         $t6, 4($sp)
/* B2B7C 800B1F7C 8DCF001C */  lw         $t7, 0x1c($t6)
/* B2B80 800B1F80 AFAF0000 */  sw         $t7, ($sp)
/* B2B84 800B1F84 24010002 */  addiu      $at, $zero, 2
/* B2B88 800B1F88 14A1000F */  bne        $a1, $at, .L800B1FC8
/* B2B8C 800B1F8C 00000000 */   nop
/* B2B90 800B1F90 10000001 */  b          .L800B1F98
/* B2B94 800B1F94 00000000 */   nop
.L800B1F98:
/* B2B98 800B1F98 8FB90004 */  lw         $t9, 4($sp)
/* B2B9C 800B1F9C 8FB80000 */  lw         $t8, ($sp)
/* B2BA0 800B1FA0 8F280014 */  lw         $t0, 0x14($t9)
/* B2BA4 800B1FA4 00084880 */  sll        $t1, $t0, 2
/* B2BA8 800B1FA8 03095021 */  addu       $t2, $t8, $t1
/* B2BAC 800B1FAC AD460000 */  sw         $a2, ($t2)
/* B2BB0 800B1FB0 8FAB0004 */  lw         $t3, 4($sp)
/* B2BB4 800B1FB4 8D6C0014 */  lw         $t4, 0x14($t3)
/* B2BB8 800B1FB8 258D0001 */  addiu      $t5, $t4, 1
/* B2BBC 800B1FBC AD6D0014 */  sw         $t5, 0x14($t3)
/* B2BC0 800B1FC0 10000003 */  b          .L800B1FD0
/* B2BC4 800B1FC4 00000000 */   nop
.L800B1FC8:
/* B2BC8 800B1FC8 10000001 */  b          .L800B1FD0
/* B2BCC 800B1FCC 00000000 */   nop
.L800B1FD0:
/* B2BD0 800B1FD0 10000003 */  b          .L800B1FE0
/* B2BD4 800B1FD4 00001025 */   or        $v0, $zero, $zero
/* B2BD8 800B1FD8 10000001 */  b          .L800B1FE0
/* B2BDC 800B1FDC 00000000 */   nop
.L800B1FE0:
/* B2BE0 800B1FE0 03E00008 */  jr         $ra
/* B2BE4 800B1FE4 27BD0008 */   addiu     $sp, $sp, 8
/* B2BE8 800B1FE8 00000000 */  nop
/* B2BEC 800B1FEC 00000000 */  nop
