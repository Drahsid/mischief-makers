glabel func_800AF510
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
