glabel func_80061624
/* 62224 80061624 308EFFFF */  andi       $t6, $a0, 0xffff
/* 62228 80061628 000E7880 */  sll        $t7, $t6, 2
/* 6222C 8006162C 01EE7823 */  subu       $t7, $t7, $t6
/* 62230 80061630 000F7880 */  sll        $t7, $t7, 2
/* 62234 80061634 01EE7821 */  addu       $t7, $t7, $t6
/* 62238 80061638 000F7880 */  sll        $t7, $t7, 2
/* 6223C 8006163C 01EE7823 */  subu       $t7, $t7, $t6
/* 62240 80061640 3C18800F */  lui        $t8, %hi(gActors)
/* 62244 80061644 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 62248 80061648 000F78C0 */  sll        $t7, $t7, 3
/* 6224C 8006164C 01F83821 */  addu       $a3, $t7, $t8
/* 62250 80061650 94F900D0 */  lhu        $t9, 0xd0($a3)
/* 62254 80061654 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 62258 80061658 AFA40038 */  sw         $a0, 0x38($sp)
/* 6225C 8006165C 2F210073 */  sltiu      $at, $t9, 0x73
/* 62260 80061660 01C02025 */  or         $a0, $t6, $zero
/* 62264 80061664 10200208 */  beqz       $at, .L80061E88
/* 62268 80061668 AFBF0014 */   sw        $ra, 0x14($sp)
/* 6226C 8006166C 0019C880 */  sll        $t9, $t9, 2
/* 62270 80061670 3C01800F */  lui        $at, %hi(D_800EC184)
/* 62274 80061674 00390821 */  addu       $at, $at, $t9
/* 62278 80061678 8C39C184 */  lw         $t9, %lo(D_800EC184)($at)
/* 6227C 8006167C 00000000 */  nop
/* 62280 80061680 03200008 */  jr         $t9
/* 62284 80061684 00000000 */   nop
/* 62288 80061688 444BF800 */  cfc1       $t3, $31
/* 6228C 8006168C C4E40110 */  lwc1       $f4, 0x110($a3)
/* 62290 80061690 35610003 */  ori        $at, $t3, 3
/* 62294 80061694 38210002 */  xori       $at, $at, 2
/* 62298 80061698 44C1F800 */  ctc1       $at, $31
/* 6229C 8006169C A4E000E6 */  sh         $zero, 0xe6($a3)
/* 622A0 800616A0 460021A4 */  cvt.w.s    $f6, $f4
/* 622A4 800616A4 44023000 */  mfc1       $v0, $f6
/* 622A8 800616A8 44CBF800 */  ctc1       $t3, $31
/* 622AC 800616AC 304300FF */  andi       $v1, $v0, 0xff
/* 622B0 800616B0 2C610009 */  sltiu      $at, $v1, 9
/* 622B4 800616B4 304CFF00 */  andi       $t4, $v0, 0xff00
/* 622B8 800616B8 ACEC0150 */  sw         $t4, 0x150($a3)
/* 622BC 800616BC 10200016 */  beqz       $at, .L80061718
/* 622C0 800616C0 ACE30154 */   sw        $v1, 0x154($a3)
/* 622C4 800616C4 00036880 */  sll        $t5, $v1, 2
/* 622C8 800616C8 3C01800F */  lui        $at, %hi(D_800EC350)
/* 622CC 800616CC 002D0821 */  addu       $at, $at, $t5
/* 622D0 800616D0 8C2DC350 */  lw         $t5, %lo(D_800EC350)($at)
/* 622D4 800616D4 00000000 */  nop
/* 622D8 800616D8 01A00008 */  jr         $t5
/* 622DC 800616DC 00000000 */   nop
/* 622E0 800616E0 8CE20150 */  lw         $v0, 0x150($a3)
/* 622E4 800616E4 00000000 */  nop
/* 622E8 800616E8 04410003 */  bgez       $v0, .L800616F8
/* 622EC 800616EC 000271C3 */   sra       $t6, $v0, 7
/* 622F0 800616F0 2441007F */  addiu      $at, $v0, 0x7f
/* 622F4 800616F4 000171C3 */  sra        $t6, $at, 7
.L800616F8:
/* 622F8 800616F8 05C10004 */  bgez       $t6, .L8006170C
/* 622FC 800616FC 31CF0007 */   andi      $t7, $t6, 7
/* 62300 80061700 11E00002 */  beqz       $t7, .L8006170C
/* 62304 80061704 00000000 */   nop
/* 62308 80061708 25EFFFF8 */  addiu      $t7, $t7, -8
.L8006170C:
/* 6230C 8006170C 25F82000 */  addiu      $t8, $t7, 0x2000
/* 62310 80061710 100000ED */  b          .L80061AC8
/* 62314 80061714 A4F80084 */   sh        $t8, 0x84($a3)
.L80061718:
/* 62318 80061718 8CEB0080 */  lw         $t3, 0x80($a3)
/* 6231C 8006171C 24190900 */  addiu      $t9, $zero, 0x900
/* 62320 80061720 A4F90094 */  sh         $t9, 0x94($a3)
/* 62324 80061724 240DFE00 */  addiu      $t5, $zero, -0x200
/* 62328 80061728 240E2002 */  addiu      $t6, $zero, 0x2002
/* 6232C 8006172C 240F0010 */  addiu      $t7, $zero, 0x10
/* 62330 80061730 356C0018 */  ori        $t4, $t3, 0x18
/* 62334 80061734 ACEC0080 */  sw         $t4, 0x80($a3)
/* 62338 80061738 ACE00188 */  sw         $zero, 0x188($a3)
/* 6233C 8006173C A4ED0090 */  sh         $t5, 0x90($a3)
/* 62340 80061740 A4EE0084 */  sh         $t6, 0x84($a3)
/* 62344 80061744 A4EF00D0 */  sh         $t7, 0xd0($a3)
/* 62348 80061748 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 6234C 8006174C 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 62350 80061750 8CF80150 */  lw         $t8, 0x150($a3)
/* 62354 80061754 00000000 */  nop
/* 62358 80061758 03195823 */  subu       $t3, $t8, $t9
/* 6235C 8006175C 316C03FF */  andi       $t4, $t3, 0x3ff
/* 62360 80061760 258DFE20 */  addiu      $t5, $t4, -0x1e0
/* 62364 80061764 A4ED0088 */  sh         $t5, 0x88($a3)
/* 62368 80061768 3C0F800C */  lui        $t7, %hi(D_800BE73C)
/* 6236C 8006176C 8DEFE73C */  lw         $t7, %lo(D_800BE73C)($t7)
/* 62370 80061770 8CEE0088 */  lw         $t6, 0x88($a3)
/* 62374 80061774 00000000 */  nop
/* 62378 80061778 01CFC023 */  subu       $t8, $t6, $t7
/* 6237C 8006177C ACF80088 */  sw         $t8, 0x88($a3)
/* 62380 80061780 84F90088 */  lh         $t9, 0x88($a3)
/* 62384 80061784 3C0E800C */  lui        $t6, %hi(D_800BE55C)
/* 62388 80061788 272B01E0 */  addiu      $t3, $t9, 0x1e0
/* 6238C 8006178C 316C03FF */  andi       $t4, $t3, 0x3ff
/* 62390 80061790 258DFE20 */  addiu      $t5, $t4, -0x1e0
/* 62394 80061794 A4ED0088 */  sh         $t5, 0x88($a3)
/* 62398 80061798 85CEE55C */  lh         $t6, %lo(D_800BE55C)($t6)
/* 6239C 8006179C 240F0253 */  addiu      $t7, $zero, 0x253
/* 623A0 800617A0 01EEC023 */  subu       $t8, $t7, $t6
/* 623A4 800617A4 100001B8 */  b          .L80061E88
/* 623A8 800617A8 A4F8008C */   sh        $t8, 0x8c($a3)
/* 623AC 800617AC 8CEB0080 */  lw         $t3, 0x80($a3)
/* 623B0 800617B0 24020080 */  addiu      $v0, $zero, 0x80
/* 623B4 800617B4 24190900 */  addiu      $t9, $zero, 0x900
/* 623B8 800617B8 240DFF00 */  addiu      $t5, $zero, -0x100
/* 623BC 800617BC 240F2000 */  addiu      $t7, $zero, 0x2000
/* 623C0 800617C0 240E0020 */  addiu      $t6, $zero, 0x20
/* 623C4 800617C4 356C0008 */  ori        $t4, $t3, 8
/* 623C8 800617C8 A4F90094 */  sh         $t9, 0x94($a3)
/* 623CC 800617CC ACEC0080 */  sw         $t4, 0x80($a3)
/* 623D0 800617D0 ACE00188 */  sw         $zero, 0x188($a3)
/* 623D4 800617D4 A4ED0090 */  sh         $t5, 0x90($a3)
/* 623D8 800617D8 A4EF0084 */  sh         $t7, 0x84($a3)
/* 623DC 800617DC A4EE00D0 */  sh         $t6, 0xd0($a3)
/* 623E0 800617E0 ACE00158 */  sw         $zero, 0x158($a3)
/* 623E4 800617E4 A0E2009F */  sb         $v0, 0x9f($a3)
/* 623E8 800617E8 24180002 */  addiu      $t8, $zero, 2
/* 623EC 800617EC 3C018018 */  lui        $at, %hi(D_80178450)
/* 623F0 800617F0 3C098018 */  lui        $t1, %hi(D_80178452)
/* 623F4 800617F4 3C0A8018 */  lui        $t2, %hi(D_80178454)
/* 623F8 800617F8 A4388450 */  sh         $t8, %lo(D_80178450)($at)
/* 623FC 800617FC 254A8454 */  addiu      $t2, $t2, %lo(D_80178454)
/* 62400 80061800 25298452 */  addiu      $t1, $t1, %lo(D_80178452)
/* 62404 80061804 241900A5 */  addiu      $t9, $zero, 0xa5
/* 62408 80061808 240B000D */  addiu      $t3, $zero, 0xd
/* 6240C 8006180C A5390000 */  sh         $t9, ($t1)
/* 62410 80061810 A54B0000 */  sh         $t3, ($t2)
/* 62414 80061814 3C0C800C */  lui        $t4, %hi(D_800BE55C)
/* 62418 80061818 858CE55C */  lh         $t4, %lo(D_800BE55C)($t4)
/* 6241C 8006181C 240E0116 */  addiu      $t6, $zero, 0x116
/* 62420 80061820 000C68C0 */  sll        $t5, $t4, 3
/* 62424 80061824 01AC6823 */  subu       $t5, $t5, $t4
/* 62428 80061828 3C0B800C */  lui        $t3, 0x800c
/* 6242C 8006182C 8CF90150 */  lw         $t9, 0x150($a3)
/* 62430 80061830 3C098018 */  lui        $t1, %hi(D_80178452)
/* 62434 80061834 3C0A8018 */  lui        $t2, %hi(D_80178454)
/* 62438 80061838 254A8454 */  addiu      $t2, $t2, %lo(D_80178454)
/* 6243C 8006183C 25298452 */  addiu      $t1, $t1, %lo(D_80178452)
/* 62440 80061840 05A10003 */  bgez       $t5, .L80061850
/* 62444 80061844 000D78C3 */   sra       $t7, $t5, 3
/* 62448 80061848 25A10007 */  addiu      $at, $t5, 7
/* 6244C 8006184C 000178C3 */  sra        $t7, $at, 3
.L80061850:
/* 62450 80061850 01CFC023 */  subu       $t8, $t6, $t7
/* 62454 80061854 A4F8008C */  sh         $t8, 0x8c($a3)
/* 62458 80061858 856BE558 */  lh         $t3, -0x1aa8($t3)
/* 6245C 8006185C 24010090 */  addiu      $at, $zero, 0x90
/* 62460 80061860 032B6023 */  subu       $t4, $t9, $t3
/* 62464 80061864 318D03FF */  andi       $t5, $t4, 0x3ff
/* 62468 80061868 25AEFE00 */  addiu      $t6, $t5, -0x200
/* 6246C 8006186C 10810186 */  beq        $a0, $at, .L80061E88
/* 62470 80061870 A4EE0088 */   sh        $t6, 0x88($a3)
/* 62474 80061874 3C188018 */  lui        $t8, %hi(D_80178450)
/* 62478 80061878 97188450 */  lhu        $t8, %lo(D_80178450)($t8)
/* 6247C 8006187C 8CEF0158 */  lw         $t7, 0x158($a3)
/* 62480 80061880 3C08800C */  lui        $t0, %hi(D_800BCCD0)
/* 62484 80061884 01F8C821 */  addu       $t9, $t7, $t8
/* 62488 80061888 ACF90158 */  sw         $t9, 0x158($a3)
/* 6248C 8006188C 2508CCD0 */  addiu      $t0, $t0, %lo(D_800BCCD0)
/* 62490 80061890 00002825 */  or         $a1, $zero, $zero
.L80061894:
/* 62494 80061894 952C0000 */  lhu        $t4, ($t1)
/* 62498 80061898 8CEB0158 */  lw         $t3, 0x158($a3)
/* 6249C 8006189C 00AC0019 */  multu      $a1, $t4
/* 624A0 800618A0 44853000 */  mtc1       $a1, $f6
/* 624A4 800618A4 3C014F80 */  lui        $at, 0x4f80
/* 624A8 800618A8 00006812 */  mflo       $t5
/* 624AC 800618AC 016D7021 */  addu       $t6, $t3, $t5
/* 624B0 800618B0 954B0000 */  lhu        $t3, ($t2)
/* 624B4 800618B4 25CFFF00 */  addiu      $t7, $t6, -0x100
/* 624B8 800618B8 31F803FF */  andi       $t8, $t7, 0x3ff
/* 624BC 800618BC 448B5000 */  mtc1       $t3, $f10
/* 624C0 800618C0 0018C880 */  sll        $t9, $t8, 2
/* 624C4 800618C4 01196021 */  addu       $t4, $t0, $t9
/* 624C8 800618C8 C5880000 */  lwc1       $f8, ($t4)
/* 624CC 800618CC 46805420 */  cvt.s.w    $f16, $f10
/* 624D0 800618D0 05610004 */  bgez       $t3, .L800618E4
/* 624D4 800618D4 468032A0 */   cvt.s.w   $f10, $f6
/* 624D8 800618D8 44819000 */  mtc1       $at, $f18
/* 624DC 800618DC 00000000 */  nop
/* 624E0 800618E0 46128400 */  add.s      $f16, $f16, $f18
.L800618E4:
/* 624E4 800618E4 46104102 */  mul.s      $f4, $f8, $f16
/* 624E8 800618E8 00051940 */  sll        $v1, $a1, 5
/* 624EC 800618EC 24A50001 */  addiu      $a1, $a1, 1
/* 624F0 800618F0 00001025 */  or         $v0, $zero, $zero
/* 624F4 800618F4 460A2480 */  add.s      $f18, $f4, $f10
/* 624F8 800618F8 444DF800 */  cfc1       $t5, $31
/* 624FC 800618FC 00000000 */  nop
/* 62500 80061900 35A10003 */  ori        $at, $t5, 3
/* 62504 80061904 38210002 */  xori       $at, $at, 2
/* 62508 80061908 44C1F800 */  ctc1       $at, $31
/* 6250C 8006190C 3C018034 */  lui        $at, 0x8034
/* 62510 80061910 46009224 */  cvt.w.s    $f8, $f18
/* 62514 80061914 342102D0 */  ori        $at, $at, 0x2d0
/* 62518 80061918 440F4000 */  mfc1       $t7, $f8
/* 6251C 8006191C 00611821 */  addu       $v1, $v1, $at
/* 62520 80061920 31F8001F */  andi       $t8, $t7, 0x1f
/* 62524 80061924 0018CC00 */  sll        $t9, $t8, 0x10
/* 62528 80061928 00196403 */  sra        $t4, $t9, 0x10
/* 6252C 8006192C 3C018034 */  lui        $at, 0x8034
/* 62530 80061930 44CDF800 */  ctc1       $t5, $31
/* 62534 80061934 342106D0 */  ori        $at, $at, 0x6d0
/* 62538 80061938 000C2140 */  sll        $a0, $t4, 5
/* 6253C 8006193C 00812021 */  addu       $a0, $a0, $at
.L80061940:
/* 62540 80061940 00825821 */  addu       $t3, $a0, $v0
/* 62544 80061944 00627021 */  addu       $t6, $v1, $v0
/* 62548 80061948 24420001 */  addiu      $v0, $v0, 1
/* 6254C 8006194C 00027C00 */  sll        $t7, $v0, 0x10
/* 62550 80061950 916D0000 */  lbu        $t5, ($t3)
/* 62554 80061954 000F1403 */  sra        $v0, $t7, 0x10
/* 62558 80061958 28410020 */  slti       $at, $v0, 0x20
/* 6255C 8006195C 1420FFF8 */  bnez       $at, .L80061940
/* 62560 80061960 A1CD0000 */   sb        $t5, ($t6)
/* 62564 80061964 0005CC00 */  sll        $t9, $a1, 0x10
/* 62568 80061968 00192C03 */  sra        $a1, $t9, 0x10
/* 6256C 8006196C 28A10020 */  slti       $at, $a1, 0x20
/* 62570 80061970 1420FFC8 */  bnez       $at, .L80061894
/* 62574 80061974 00000000 */   nop
/* 62578 80061978 10000144 */  b          .L80061E8C
/* 6257C 8006197C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 62580 80061980 A7A4003A */  sh         $a0, 0x3a($sp)
/* 62584 80061984 0C018514 */  jal        func_80061450
/* 62588 80061988 AFA70018 */   sw        $a3, 0x18($sp)
/* 6258C 8006198C 8FA70018 */  lw         $a3, 0x18($sp)
/* 62590 80061990 240DFF00 */  addiu      $t5, $zero, -0x100
/* 62594 80061994 8CEB0150 */  lw         $t3, 0x150($a3)
/* 62598 80061998 240E0030 */  addiu      $t6, $zero, 0x30
/* 6259C 8006199C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 625A0 800619A0 A4ED0090 */  sh         $t5, 0x90($a3)
/* 625A4 800619A4 A4EE00D0 */  sh         $t6, 0xd0($a3)
/* 625A8 800619A8 A4EB0088 */  sh         $t3, 0x88($a3)
/* 625AC 800619AC 0C0184B6 */  jal        func_800612D8
/* 625B0 800619B0 A7A4003A */   sh        $a0, 0x3a($sp)
/* 625B4 800619B4 97A4003A */  lhu        $a0, 0x3a($sp)
/* 625B8 800619B8 0C018535 */  jal        func_800614D4
/* 625BC 800619BC 00000000 */   nop
/* 625C0 800619C0 10000132 */  b          .L80061E8C
/* 625C4 800619C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 625C8 800619C8 0C0184B6 */  jal        func_800612D8
/* 625CC 800619CC A7A4003A */   sh        $a0, 0x3a($sp)
/* 625D0 800619D0 97A4003A */  lhu        $a0, 0x3a($sp)
/* 625D4 800619D4 0C018555 */  jal        func_80061554
/* 625D8 800619D8 00000000 */   nop
/* 625DC 800619DC 1000012B */  b          .L80061E8C
/* 625E0 800619E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 625E4 800619E4 0C0184B6 */  jal        func_800612D8
/* 625E8 800619E8 A7A4003A */   sh        $a0, 0x3a($sp)
/* 625EC 800619EC 97A4003A */  lhu        $a0, 0x3a($sp)
/* 625F0 800619F0 0C01856F */  jal        func_800615BC
/* 625F4 800619F4 00000000 */   nop
/* 625F8 800619F8 10000124 */  b          .L80061E8C
/* 625FC 800619FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 62600 80061A00 A7A4003A */  sh         $a0, 0x3a($sp)
/* 62604 80061A04 0C018514 */  jal        func_80061450
/* 62608 80061A08 AFA70018 */   sw        $a3, 0x18($sp)
/* 6260C 80061A0C 8FA70018 */  lw         $a3, 0x18($sp)
/* 62610 80061A10 240FFF40 */  addiu      $t7, $zero, -0xc0
/* 62614 80061A14 24180040 */  addiu      $t8, $zero, 0x40
/* 62618 80061A18 97A4003A */  lhu        $a0, 0x3a($sp)
/* 6261C 80061A1C A4EF0090 */  sh         $t7, 0x90($a3)
/* 62620 80061A20 A4F800D0 */  sh         $t8, 0xd0($a3)
/* 62624 80061A24 3C0C800C */  lui        $t4, %hi(D_800BE55C)
/* 62628 80061A28 858CE55C */  lh         $t4, %lo(D_800BE55C)($t4)
/* 6262C 80061A2C 8CF90150 */  lw         $t9, 0x150($a3)
/* 62630 80061A30 00000000 */  nop
/* 62634 80061A34 032C5823 */  subu       $t3, $t9, $t4
/* 62638 80061A38 316D07FF */  andi       $t5, $t3, 0x7ff
/* 6263C 80061A3C 25AEFC00 */  addiu      $t6, $t5, -0x400
/* 62640 80061A40 0C018535 */  jal        func_800614D4
/* 62644 80061A44 A4EE008C */   sh        $t6, 0x8c($a3)
/* 62648 80061A48 10000110 */  b          .L80061E8C
/* 6264C 80061A4C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 62650 80061A50 3C18800C */  lui        $t8, %hi(D_800BE55C)
/* 62654 80061A54 8718E55C */  lh         $t8, %lo(D_800BE55C)($t8)
/* 62658 80061A58 8CEF0150 */  lw         $t7, 0x150($a3)
/* 6265C 80061A5C 00000000 */  nop
/* 62660 80061A60 01F8C823 */  subu       $t9, $t7, $t8
/* 62664 80061A64 332C07FF */  andi       $t4, $t9, 0x7ff
/* 62668 80061A68 258BFC00 */  addiu      $t3, $t4, -0x400
/* 6266C 80061A6C 0C018555 */  jal        func_80061554
/* 62670 80061A70 A4EB008C */   sh        $t3, 0x8c($a3)
/* 62674 80061A74 10000105 */  b          .L80061E8C
/* 62678 80061A78 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6267C 80061A7C 3C0E800C */  lui        $t6, %hi(D_800BE55C)
/* 62680 80061A80 85CEE55C */  lh         $t6, %lo(D_800BE55C)($t6)
/* 62684 80061A84 8CED0150 */  lw         $t5, 0x150($a3)
/* 62688 80061A88 00000000 */  nop
/* 6268C 80061A8C 01AE7823 */  subu       $t7, $t5, $t6
/* 62690 80061A90 31F807FF */  andi       $t8, $t7, 0x7ff
/* 62694 80061A94 2719FC00 */  addiu      $t9, $t8, -0x400
/* 62698 80061A98 0C01856F */  jal        func_800615BC
/* 6269C 80061A9C A4F9008C */   sh        $t9, 0x8c($a3)
/* 626A0 80061AA0 100000FA */  b          .L80061E8C
/* 626A4 80061AA4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 626A8 80061AA8 8CE20150 */  lw         $v0, 0x150($a3)
/* 626AC 80061AAC 00000000 */  nop
/* 626B0 80061AB0 04410003 */  bgez       $v0, .L80061AC0
/* 626B4 80061AB4 000261C3 */   sra       $t4, $v0, 7
/* 626B8 80061AB8 2441007F */  addiu      $at, $v0, 0x7f
/* 626BC 80061ABC 000161C3 */  sra        $t4, $at, 7
.L80061AC0:
/* 626C0 80061AC0 258B200A */  addiu      $t3, $t4, 0x200a
/* 626C4 80061AC4 A4EB0084 */  sh         $t3, 0x84($a3)
.L80061AC8:
/* 626C8 80061AC8 240D0900 */  addiu      $t5, $zero, 0x900
/* 626CC 80061ACC 240EFE10 */  addiu      $t6, $zero, -0x1f0
/* 626D0 80061AD0 24180050 */  addiu      $t8, $zero, 0x50
/* 626D4 80061AD4 A4ED0094 */  sh         $t5, 0x94($a3)
/* 626D8 80061AD8 ACE00188 */  sw         $zero, 0x188($a3)
/* 626DC 80061ADC A4EE0090 */  sh         $t6, 0x90($a3)
/* 626E0 80061AE0 04410003 */  bgez       $v0, .L80061AF0
/* 626E4 80061AE4 00027843 */   sra       $t7, $v0, 1
/* 626E8 80061AE8 24410001 */  addiu      $at, $v0, 1
/* 626EC 80061AEC 00017843 */  sra        $t7, $at, 1
.L80061AF0:
/* 626F0 80061AF0 ACEF0150 */  sw         $t7, 0x150($a3)
/* 626F4 80061AF4 A4F800D0 */  sh         $t8, 0xd0($a3)
/* 626F8 80061AF8 3C19800C */  lui        $t9, %hi(D_800BE55C)
/* 626FC 80061AFC 8739E55C */  lh         $t9, %lo(D_800BE55C)($t9)
/* 62700 80061B00 240C0120 */  addiu      $t4, $zero, 0x120
/* 62704 80061B04 01995823 */  subu       $t3, $t4, $t9
/* 62708 80061B08 A4EB008C */  sh         $t3, 0x8c($a3)
/* 6270C 80061B0C 3C0D800C */  lui        $t5, %hi(D_800BE5D0)
/* 62710 80061B10 95ADE5D0 */  lhu        $t5, %lo(D_800BE5D0)($t5)
/* 62714 80061B14 24010006 */  addiu      $at, $zero, 6
/* 62718 80061B18 15A10027 */  bne        $t5, $at, .L80061BB8
/* 6271C 80061B1C 3C0B800C */   lui       $t3, 0x800c
/* 62720 80061B20 3C0F800C */  lui        $t7, %hi(D_800BE558)
/* 62724 80061B24 85EFE558 */  lh         $t7, %lo(D_800BE558)($t7)
/* 62728 80061B28 8CEE0150 */  lw         $t6, 0x150($a3)
/* 6272C 80061B2C 3C0143E0 */  lui        $at, 0x43e0
/* 62730 80061B30 01CFC023 */  subu       $t8, $t6, $t7
/* 62734 80061B34 330C03FF */  andi       $t4, $t8, 0x3ff
/* 62738 80061B38 44818000 */  mtc1       $at, $f16
/* 6273C 80061B3C 2599FE00 */  addiu      $t9, $t4, -0x200
/* 62740 80061B40 A4F90088 */  sh         $t9, 0x88($a3)
/* 62744 80061B44 3C01800C */  lui        $at, %hi(D_800BE5B0)
/* 62748 80061B48 C426E5B0 */  lwc1       $f6, %lo(D_800BE5B0)($at)
/* 6274C 80061B4C 00000000 */  nop
/* 62750 80061B50 46068032 */  c.eq.s     $f16, $f6
/* 62754 80061B54 00000000 */  nop
/* 62758 80061B58 45000012 */  bc1f       .L80061BA4
/* 6275C 80061B5C 00000000 */   nop
/* 62760 80061B60 84E20088 */  lh         $v0, 0x88($a3)
/* 62764 80061B64 00000000 */  nop
/* 62768 80061B68 2841FF00 */  slti       $at, $v0, -0x100
/* 6276C 80061B6C 14200003 */  bnez       $at, .L80061B7C
/* 62770 80061B70 28410101 */   slti      $at, $v0, 0x101
/* 62774 80061B74 14200006 */  bnez       $at, .L80061B90
/* 62778 80061B78 00000000 */   nop
.L80061B7C:
/* 6277C 80061B7C 8CEB0080 */  lw         $t3, 0x80($a3)
/* 62780 80061B80 2401FFFE */  addiu      $at, $zero, -2
/* 62784 80061B84 01616824 */  and        $t5, $t3, $at
/* 62788 80061B88 100000BF */  b          .L80061E88
/* 6278C 80061B8C ACED0080 */   sw        $t5, 0x80($a3)
.L80061B90:
/* 62790 80061B90 8CEE0080 */  lw         $t6, 0x80($a3)
/* 62794 80061B94 00000000 */  nop
/* 62798 80061B98 35CF0001 */  ori        $t7, $t6, 1
/* 6279C 80061B9C 100000BA */  b          .L80061E88
/* 627A0 80061BA0 ACEF0080 */   sw        $t7, 0x80($a3)
.L80061BA4:
/* 627A4 80061BA4 8CF80080 */  lw         $t8, 0x80($a3)
/* 627A8 80061BA8 00000000 */  nop
/* 627AC 80061BAC 370C0001 */  ori        $t4, $t8, 1
/* 627B0 80061BB0 100000B5 */  b          .L80061E88
/* 627B4 80061BB4 ACEC0080 */   sw        $t4, 0x80($a3)
.L80061BB8:
/* 627B8 80061BB8 8CF90150 */  lw         $t9, 0x150($a3)
/* 627BC 80061BBC 856BE558 */  lh         $t3, -0x1aa8($t3)
/* 627C0 80061BC0 00000000 */  nop
/* 627C4 80061BC4 032B6823 */  subu       $t5, $t9, $t3
/* 627C8 80061BC8 31AE01FF */  andi       $t6, $t5, 0x1ff
/* 627CC 80061BCC 25CFFF00 */  addiu      $t7, $t6, -0x100
/* 627D0 80061BD0 100000AD */  b          .L80061E88
/* 627D4 80061BD4 A4EF0088 */   sh        $t7, 0x88($a3)
/* 627D8 80061BD8 8CEC0080 */  lw         $t4, 0x80($a3)
/* 627DC 80061BDC 24020080 */  addiu      $v0, $zero, 0x80
/* 627E0 80061BE0 24180910 */  addiu      $t8, $zero, 0x910
/* 627E4 80061BE4 240BFEE0 */  addiu      $t3, $zero, -0x120
/* 627E8 80061BE8 240D2002 */  addiu      $t5, $zero, 0x2002
/* 627EC 80061BEC 240E00C0 */  addiu      $t6, $zero, 0xc0
/* 627F0 80061BF0 35990008 */  ori        $t9, $t4, 8
/* 627F4 80061BF4 A4F80094 */  sh         $t8, 0x94($a3)
/* 627F8 80061BF8 ACF90080 */  sw         $t9, 0x80($a3)
/* 627FC 80061BFC ACE00188 */  sw         $zero, 0x188($a3)
/* 62800 80061C00 A4EB0090 */  sh         $t3, 0x90($a3)
/* 62804 80061C04 A4ED0084 */  sh         $t5, 0x84($a3)
/* 62808 80061C08 ACE00158 */  sw         $zero, 0x158($a3)
/* 6280C 80061C0C A0EE009F */  sb         $t6, 0x9f($a3)
/* 62810 80061C10 A0E2009C */  sb         $v0, 0x9c($a3)
/* 62814 80061C14 A0E2009D */  sb         $v0, 0x9d($a3)
/* 62818 80061C18 240F0002 */  addiu      $t7, $zero, 2
/* 6281C 80061C1C 3C018018 */  lui        $at, %hi(D_80178450)
/* 62820 80061C20 A42F8450 */  sh         $t7, %lo(D_80178450)($at)
/* 62824 80061C24 3C098018 */  lui        $t1, %hi(D_80178452)
/* 62828 80061C28 3C0A8018 */  lui        $t2, %hi(D_80178454)
/* 6282C 80061C2C 254A8454 */  addiu      $t2, $t2, %lo(D_80178454)
/* 62830 80061C30 25298452 */  addiu      $t1, $t1, %lo(D_80178452)
/* 62834 80061C34 241800A5 */  addiu      $t8, $zero, 0xa5
/* 62838 80061C38 240C000D */  addiu      $t4, $zero, 0xd
/* 6283C 80061C3C 24190060 */  addiu      $t9, $zero, 0x60
/* 62840 80061C40 A5380000 */  sh         $t8, ($t1)
/* 62844 80061C44 A54C0000 */  sh         $t4, ($t2)
/* 62848 80061C48 A4F900D0 */  sh         $t9, 0xd0($a3)
/* 6284C 80061C4C 3C0B800C */  lui        $t3, %hi(D_800BE55C)
/* 62850 80061C50 856BE55C */  lh         $t3, %lo(D_800BE55C)($t3)
/* 62854 80061C54 240F0116 */  addiu      $t7, $zero, 0x116
/* 62858 80061C58 000B68C0 */  sll        $t5, $t3, 3
/* 6285C 80061C5C 01AB6823 */  subu       $t5, $t5, $t3
/* 62860 80061C60 3C19800C */  lui        $t9, 0x800c
/* 62864 80061C64 8CEC0150 */  lw         $t4, 0x150($a3)
/* 62868 80061C68 3C098018 */  lui        $t1, %hi(D_80178452)
/* 6286C 80061C6C 3C0A8018 */  lui        $t2, %hi(D_80178454)
/* 62870 80061C70 254A8454 */  addiu      $t2, $t2, %lo(D_80178454)
/* 62874 80061C74 25298452 */  addiu      $t1, $t1, %lo(D_80178452)
/* 62878 80061C78 05A10003 */  bgez       $t5, .L80061C88
/* 6287C 80061C7C 000D70C3 */   sra       $t6, $t5, 3
/* 62880 80061C80 25A10007 */  addiu      $at, $t5, 7
/* 62884 80061C84 000170C3 */  sra        $t6, $at, 3
.L80061C88:
/* 62888 80061C88 01EEC023 */  subu       $t8, $t7, $t6
/* 6288C 80061C8C A4F8008C */  sh         $t8, 0x8c($a3)
/* 62890 80061C90 8739E558 */  lh         $t9, -0x1aa8($t9)
/* 62894 80061C94 24010092 */  addiu      $at, $zero, 0x92
/* 62898 80061C98 01995823 */  subu       $t3, $t4, $t9
/* 6289C 80061C9C 316D03FF */  andi       $t5, $t3, 0x3ff
/* 628A0 80061CA0 25AFFE00 */  addiu      $t7, $t5, -0x200
/* 628A4 80061CA4 10810078 */  beq        $a0, $at, .L80061E88
/* 628A8 80061CA8 A4EF0088 */   sh        $t7, 0x88($a3)
/* 628AC 80061CAC 3C188018 */  lui        $t8, %hi(D_80178450)
/* 628B0 80061CB0 97188450 */  lhu        $t8, %lo(D_80178450)($t8)
/* 628B4 80061CB4 8CEE0158 */  lw         $t6, 0x158($a3)
/* 628B8 80061CB8 3C08800C */  lui        $t0, %hi(D_800BCCD0)
/* 628BC 80061CBC 01D86021 */  addu       $t4, $t6, $t8
/* 628C0 80061CC0 ACEC0158 */  sw         $t4, 0x158($a3)
/* 628C4 80061CC4 2508CCD0 */  addiu      $t0, $t0, %lo(D_800BCCD0)
/* 628C8 80061CC8 00002825 */  or         $a1, $zero, $zero
.L80061CCC:
/* 628CC 80061CCC 952B0000 */  lhu        $t3, ($t1)
/* 628D0 80061CD0 8CF90158 */  lw         $t9, 0x158($a3)
/* 628D4 80061CD4 00AB0019 */  multu      $a1, $t3
/* 628D8 80061CD8 44853000 */  mtc1       $a1, $f6
/* 628DC 80061CDC 3C014F80 */  lui        $at, 0x4f80
/* 628E0 80061CE0 00006812 */  mflo       $t5
/* 628E4 80061CE4 032D7821 */  addu       $t7, $t9, $t5
/* 628E8 80061CE8 95590000 */  lhu        $t9, ($t2)
/* 628EC 80061CEC 25EEFF00 */  addiu      $t6, $t7, -0x100
/* 628F0 80061CF0 31D803FF */  andi       $t8, $t6, 0x3ff
/* 628F4 80061CF4 44995000 */  mtc1       $t9, $f10
/* 628F8 80061CF8 00186080 */  sll        $t4, $t8, 2
/* 628FC 80061CFC 010C5821 */  addu       $t3, $t0, $t4
/* 62900 80061D00 C5640000 */  lwc1       $f4, ($t3)
/* 62904 80061D04 468054A0 */  cvt.s.w    $f18, $f10
/* 62908 80061D08 07210004 */  bgez       $t9, .L80061D1C
/* 6290C 80061D0C 468032A0 */   cvt.s.w   $f10, $f6
/* 62910 80061D10 44814000 */  mtc1       $at, $f8
/* 62914 80061D14 00000000 */  nop
/* 62918 80061D18 46089480 */  add.s      $f18, $f18, $f8
.L80061D1C:
/* 6291C 80061D1C 46122402 */  mul.s      $f16, $f4, $f18
/* 62920 80061D20 00051940 */  sll        $v1, $a1, 5
/* 62924 80061D24 24A50001 */  addiu      $a1, $a1, 1
/* 62928 80061D28 00001025 */  or         $v0, $zero, $zero
/* 6292C 80061D2C 460A8200 */  add.s      $f8, $f16, $f10
/* 62930 80061D30 444DF800 */  cfc1       $t5, $31
/* 62934 80061D34 00000000 */  nop
/* 62938 80061D38 35A10003 */  ori        $at, $t5, 3
/* 6293C 80061D3C 38210002 */  xori       $at, $at, 2
/* 62940 80061D40 44C1F800 */  ctc1       $at, $31
/* 62944 80061D44 3C018034 */  lui        $at, 0x8034
/* 62948 80061D48 46004124 */  cvt.w.s    $f4, $f8
/* 6294C 80061D4C 34210DE0 */  ori        $at, $at, 0xde0
/* 62950 80061D50 440E2000 */  mfc1       $t6, $f4
/* 62954 80061D54 00611821 */  addu       $v1, $v1, $at
/* 62958 80061D58 31D8001F */  andi       $t8, $t6, 0x1f
/* 6295C 80061D5C 00186400 */  sll        $t4, $t8, 0x10
/* 62960 80061D60 000C5C03 */  sra        $t3, $t4, 0x10
/* 62964 80061D64 3C018034 */  lui        $at, 0x8034
/* 62968 80061D68 44CDF800 */  ctc1       $t5, $31
/* 6296C 80061D6C 342109E0 */  ori        $at, $at, 0x9e0
/* 62970 80061D70 000B2140 */  sll        $a0, $t3, 5
/* 62974 80061D74 00812021 */  addu       $a0, $a0, $at
.L80061D78:
/* 62978 80061D78 0082C821 */  addu       $t9, $a0, $v0
/* 6297C 80061D7C 00627821 */  addu       $t7, $v1, $v0
/* 62980 80061D80 24420001 */  addiu      $v0, $v0, 1
/* 62984 80061D84 00027400 */  sll        $t6, $v0, 0x10
/* 62988 80061D88 932D0000 */  lbu        $t5, ($t9)
/* 6298C 80061D8C 000E1403 */  sra        $v0, $t6, 0x10
/* 62990 80061D90 28410020 */  slti       $at, $v0, 0x20
/* 62994 80061D94 1420FFF8 */  bnez       $at, .L80061D78
/* 62998 80061D98 A1ED0000 */   sb        $t5, ($t7)
/* 6299C 80061D9C 00056400 */  sll        $t4, $a1, 0x10
/* 629A0 80061DA0 000C2C03 */  sra        $a1, $t4, 0x10
/* 629A4 80061DA4 28A10020 */  slti       $at, $a1, 0x20
/* 629A8 80061DA8 1420FFC8 */  bnez       $at, .L80061CCC
/* 629AC 80061DAC 00000000 */   nop
/* 629B0 80061DB0 10000036 */  b          .L80061E8C
/* 629B4 80061DB4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 629B8 80061DB8 24190001 */  addiu      $t9, $zero, 1
/* 629BC 80061DBC ACF90164 */  sw         $t9, 0x164($a3)
/* 629C0 80061DC0 A7A4003A */  sh         $a0, 0x3a($sp)
/* 629C4 80061DC4 0C018514 */  jal        func_80061450
/* 629C8 80061DC8 AFA70018 */   sw        $a3, 0x18($sp)
/* 629CC 80061DCC 8FA70018 */  lw         $a3, 0x18($sp)
/* 629D0 80061DD0 240FFF00 */  addiu      $t7, $zero, -0x100
/* 629D4 80061DD4 8CED0150 */  lw         $t5, 0x150($a3)
/* 629D8 80061DD8 240E0070 */  addiu      $t6, $zero, 0x70
/* 629DC 80061DDC 97A4003A */  lhu        $a0, 0x3a($sp)
/* 629E0 80061DE0 A4EF0090 */  sh         $t7, 0x90($a3)
/* 629E4 80061DE4 A4EE00D0 */  sh         $t6, 0xd0($a3)
/* 629E8 80061DE8 A4ED0088 */  sh         $t5, 0x88($a3)
/* 629EC 80061DEC 0C0184B6 */  jal        func_800612D8
/* 629F0 80061DF0 A7A4003A */   sh        $a0, 0x3a($sp)
/* 629F4 80061DF4 97A4003A */  lhu        $a0, 0x3a($sp)
/* 629F8 80061DF8 0C0184D4 */  jal        func_80061350
/* 629FC 80061DFC 00000000 */   nop
/* 62A00 80061E00 10000022 */  b          .L80061E8C
/* 62A04 80061E04 8FBF0014 */   lw        $ra, 0x14($sp)
/* 62A08 80061E08 A7A4003A */  sh         $a0, 0x3a($sp)
/* 62A0C 80061E0C 0C0184B6 */  jal        func_800612D8
/* 62A10 80061E10 AFA70018 */   sw        $a3, 0x18($sp)
/* 62A14 80061E14 8FA70018 */  lw         $a3, 0x18($sp)
/* 62A18 80061E18 97A4003A */  lhu        $a0, 0x3a($sp)
/* 62A1C 80061E1C 8CF8015C */  lw         $t8, 0x15c($a3)
/* 62A20 80061E20 00000000 */  nop
/* 62A24 80061E24 13000005 */  beqz       $t8, .L80061E3C
/* 62A28 80061E28 00000000 */   nop
/* 62A2C 80061E2C 0C0184D4 */  jal        func_80061350
/* 62A30 80061E30 A7A4003A */   sh        $a0, 0x3a($sp)
/* 62A34 80061E34 97A4003A */  lhu        $a0, 0x3a($sp)
/* 62A38 80061E38 00000000 */  nop
.L80061E3C:
/* 62A3C 80061E3C 0C018555 */  jal        func_80061554
/* 62A40 80061E40 00000000 */   nop
/* 62A44 80061E44 10000011 */  b          .L80061E8C
/* 62A48 80061E48 8FBF0014 */   lw        $ra, 0x14($sp)
/* 62A4C 80061E4C A7A4003A */  sh         $a0, 0x3a($sp)
/* 62A50 80061E50 0C0184B6 */  jal        func_800612D8
/* 62A54 80061E54 AFA70018 */   sw        $a3, 0x18($sp)
/* 62A58 80061E58 8FA70018 */  lw         $a3, 0x18($sp)
/* 62A5C 80061E5C 97A4003A */  lhu        $a0, 0x3a($sp)
/* 62A60 80061E60 8CEC015C */  lw         $t4, 0x15c($a3)
/* 62A64 80061E64 00000000 */  nop
/* 62A68 80061E68 11800005 */  beqz       $t4, .L80061E80
/* 62A6C 80061E6C 00000000 */   nop
/* 62A70 80061E70 0C0184D4 */  jal        func_80061350
/* 62A74 80061E74 A7A4003A */   sh        $a0, 0x3a($sp)
/* 62A78 80061E78 97A4003A */  lhu        $a0, 0x3a($sp)
/* 62A7C 80061E7C 00000000 */  nop
.L80061E80:
/* 62A80 80061E80 0C01856F */  jal        func_800615BC
/* 62A84 80061E84 00000000 */   nop
.L80061E88:
/* 62A88 80061E88 8FBF0014 */  lw         $ra, 0x14($sp)
.L80061E8C:
/* 62A8C 80061E8C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 62A90 80061E90 03E00008 */  jr         $ra
/* 62A94 80061E94 00000000 */   nop
