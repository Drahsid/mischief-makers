glabel func_8008C710
/* 8D310 8008C710 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D314 8008C714 000E7880 */  sll        $t7, $t6, 2
/* 8D318 8008C718 01EE7823 */  subu       $t7, $t7, $t6
/* 8D31C 8008C71C 000F7880 */  sll        $t7, $t7, 2
/* 8D320 8008C720 01EE7821 */  addu       $t7, $t7, $t6
/* 8D324 8008C724 000F7880 */  sll        $t7, $t7, 2
/* 8D328 8008C728 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8D32C 8008C72C 01EE7823 */  subu       $t7, $t7, $t6
/* 8D330 8008C730 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8D334 8008C734 AFB00018 */  sw         $s0, 0x18($sp)
/* 8D338 8008C738 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8D33C 8008C73C 000F78C0 */  sll        $t7, $t7, 3
/* 8D340 8008C740 01F88021 */  addu       $s0, $t7, $t8
/* 8D344 8008C744 8E0502EC */  lw         $a1, 0x2ec($s0)
/* 8D348 8008C748 AFA40030 */  sw         $a0, 0x30($sp)
/* 8D34C 8008C74C 0005C823 */  negu       $t9, $a1
/* 8D350 8008C750 01C02025 */  or         $a0, $t6, $zero
/* 8D354 8008C754 AFB1001C */  sw         $s1, 0x1c($sp)
/* 8D358 8008C758 24091864 */  addiu      $t1, $zero, 0x1864
/* 8D35C 8008C75C AFBF002C */  sw         $ra, 0x2c($sp)
/* 8D360 8008C760 AFB40028 */  sw         $s4, 0x28($sp)
/* 8D364 8008C764 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D368 8008C768 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D36C 8008C76C 01C08825 */  or         $s1, $t6, $zero
/* 8D370 8008C770 07210004 */  bgez       $t9, .L8008C784
/* 8D374 8008C774 00194403 */   sra       $t0, $t9, 0x10
/* 8D378 8008C778 3401FFFF */  ori        $at, $zero, 0xffff
/* 8D37C 8008C77C 00390821 */  addu       $at, $at, $t9
/* 8D380 8008C780 00014403 */  sra        $t0, $at, 0x10
.L8008C784:
/* 8D384 8008C784 44882000 */  mtc1       $t0, $f4
/* 8D388 8008C788 3C030001 */  lui        $v1, 1
/* 8D38C 8008C78C 468021A0 */  cvt.s.w    $f6, $f4
/* 8D390 8008C790 A609021C */  sh         $t1, 0x21c($s0)
/* 8D394 8008C794 3C040003 */  lui        $a0, 3
/* 8D398 8008C798 E60602D0 */  swc1       $f6, 0x2d0($s0)
/* 8D39C 8008C79C 00001025 */  or         $v0, $zero, $zero
.L8008C7A0:
/* 8D3A0 8008C7A0 0065082A */  slt        $at, $v1, $a1
/* 8D3A4 8008C7A4 14200007 */  bnez       $at, .L8008C7C4
/* 8D3A8 8008C7A8 00641821 */   addu      $v1, $v1, $a0
/* 8D3AC 8008C7AC 00025040 */  sll        $t2, $v0, 1
/* 8D3B0 8008C7B0 3C0B800E */  lui        $t3, %hi(D_800E5A3C)
/* 8D3B4 8008C7B4 016A5821 */  addu       $t3, $t3, $t2
/* 8D3B8 8008C7B8 956B5A3C */  lhu        $t3, %lo(D_800E5A3C)($t3)
/* 8D3BC 8008C7BC 10000006 */  b          .L8008C7D8
/* 8D3C0 8008C7C0 A60B021C */   sh        $t3, 0x21c($s0)
.L8008C7C4:
/* 8D3C4 8008C7C4 24420001 */  addiu      $v0, $v0, 1
/* 8D3C8 8008C7C8 304CFFFF */  andi       $t4, $v0, 0xffff
/* 8D3CC 8008C7CC 29810004 */  slti       $at, $t4, 4
/* 8D3D0 8008C7D0 1420FFF3 */  bnez       $at, .L8008C7A0
/* 8D3D4 8008C7D4 01801025 */   or        $v0, $t4, $zero
.L8008C7D8:
/* 8D3D8 8008C7D8 960D021C */  lhu        $t5, 0x21c($s0)
/* 8D3DC 8008C7DC 24011810 */  addiu      $at, $zero, 0x1810
/* 8D3E0 8008C7E0 15A1000E */  bne        $t5, $at, .L8008C81C
/* 8D3E4 8008C7E4 2412FFEF */   addiu     $s2, $zero, -0x11
/* 8D3E8 8008C7E8 8E0E03B0 */  lw         $t6, 0x3b0($s0)
/* 8D3EC 8008C7EC 8E180548 */  lw         $t8, 0x548($s0)
/* 8D3F0 8008C7F0 8E081208 */  lw         $t0, 0x1208($s0)
/* 8D3F4 8008C7F4 8E0A3518 */  lw         $t2, 0x3518($s0)
/* 8D3F8 8008C7F8 35CF0001 */  ori        $t7, $t6, 1
/* 8D3FC 8008C7FC 37190001 */  ori        $t9, $t8, 1
/* 8D400 8008C800 35090001 */  ori        $t1, $t0, 1
/* 8D404 8008C804 354B0001 */  ori        $t3, $t2, 1
/* 8D408 8008C808 AE0F03B0 */  sw         $t7, 0x3b0($s0)
/* 8D40C 8008C80C AE190548 */  sw         $t9, 0x548($s0)
/* 8D410 8008C810 AE091208 */  sw         $t1, 0x1208($s0)
/* 8D414 8008C814 10000011 */  b          .L8008C85C
/* 8D418 8008C818 AE0B3518 */   sw        $t3, 0x3518($s0)
.L8008C81C:
/* 8D41C 8008C81C 2402FFFE */  addiu      $v0, $zero, -2
/* 8D420 8008C820 860C0224 */  lh         $t4, 0x224($s0)
/* 8D424 8008C824 8E0E03B0 */  lw         $t6, 0x3b0($s0)
/* 8D428 8008C828 8E180548 */  lw         $t8, 0x548($s0)
/* 8D42C 8008C82C 8E081208 */  lw         $t0, 0x1208($s0)
/* 8D430 8008C830 8E0A3518 */  lw         $t2, 0x3518($s0)
/* 8D434 8008C834 258D0004 */  addiu      $t5, $t4, 4
/* 8D438 8008C838 01C27824 */  and        $t7, $t6, $v0
/* 8D43C 8008C83C 0302C824 */  and        $t9, $t8, $v0
/* 8D440 8008C840 01024824 */  and        $t1, $t0, $v0
/* 8D444 8008C844 01425824 */  and        $t3, $t2, $v0
/* 8D448 8008C848 A60D0224 */  sh         $t5, 0x224($s0)
/* 8D44C 8008C84C AE0F03B0 */  sw         $t7, 0x3b0($s0)
/* 8D450 8008C850 AE190548 */  sw         $t9, 0x548($s0)
/* 8D454 8008C854 AE091208 */  sw         $t1, 0x1208($s0)
/* 8D458 8008C858 AE0B3518 */  sw         $t3, 0x3518($s0)
.L8008C85C:
/* 8D45C 8008C85C 960C021C */  lhu        $t4, 0x21c($s0)
/* 8D460 8008C860 24011864 */  addiu      $at, $zero, 0x1864
/* 8D464 8008C864 1581000A */  bne        $t4, $at, .L8008C890
/* 8D468 8008C868 26240001 */   addiu     $a0, $s1, 1
/* 8D46C 8008C86C 3C014160 */  lui        $at, 0x4160
/* 8D470 8008C870 44810000 */  mtc1       $at, $f0
/* 8D474 8008C874 3C014170 */  lui        $at, 0x4170
/* 8D478 8008C878 44814000 */  mtc1       $at, $f8
/* 8D47C 8008C87C E60015F4 */  swc1       $f0, 0x15f4($s0)
/* 8D480 8008C880 E6001C54 */  swc1       $f0, 0x1c54($s0)
/* 8D484 8008C884 E6001DEC */  swc1       $f0, 0x1dec($s0)
/* 8D488 8008C888 10000008 */  b          .L8008C8AC
/* 8D48C 8008C88C E6081924 */   swc1      $f8, 0x1924($s0)
.L8008C890:
/* 8D490 8008C890 44800000 */  mtc1       $zero, $f0
/* 8D494 8008C894 3C013F80 */  lui        $at, 0x3f80
/* 8D498 8008C898 44815000 */  mtc1       $at, $f10
/* 8D49C 8008C89C E60015F4 */  swc1       $f0, 0x15f4($s0)
/* 8D4A0 8008C8A0 E6001C54 */  swc1       $f0, 0x1c54($s0)
/* 8D4A4 8008C8A4 E6001DEC */  swc1       $f0, 0x1dec($s0)
/* 8D4A8 8008C8A8 E60A1924 */  swc1       $f10, 0x1924($s0)
.L8008C8AC:
/* 8D4AC 8008C8AC 960D022C */  lhu        $t5, 0x22c($s0)
/* 8D4B0 8008C8B0 308FFFFF */  andi       $t7, $a0, 0xffff
/* 8D4B4 8008C8B4 31AEFFEF */  andi       $t6, $t5, 0xffef
/* 8D4B8 8008C8B8 A60E022C */  sh         $t6, 0x22c($s0)
/* 8D4BC 8008C8BC 01E02025 */  or         $a0, $t7, $zero
/* 8D4C0 8008C8C0 0C00ABAD */  jal        func_8002AEB4
/* 8D4C4 8008C8C4 24050020 */   addiu     $a1, $zero, 0x20
/* 8D4C8 8008C8C8 9618352C */  lhu        $t8, 0x352c($s0)
/* 8D4CC 8008C8CC 26240021 */  addiu      $a0, $s1, 0x21
/* 8D4D0 8008C8D0 3088FFFF */  andi       $t0, $a0, 0xffff
/* 8D4D4 8008C8D4 0312C824 */  and        $t9, $t8, $s2
/* 8D4D8 8008C8D8 A619352C */  sh         $t9, 0x352c($s0)
/* 8D4DC 8008C8DC 01002025 */  or         $a0, $t0, $zero
/* 8D4E0 8008C8E0 0C00ABAD */  jal        func_8002AEB4
/* 8D4E4 8008C8E4 24050018 */   addiu     $a1, $zero, 0x18
/* 8D4E8 8008C8E8 9609121C */  lhu        $t1, 0x121c($s0)
/* 8D4EC 8008C8EC 2624000B */  addiu      $a0, $s1, 0xb
/* 8D4F0 8008C8F0 308BFFFF */  andi       $t3, $a0, 0xffff
/* 8D4F4 8008C8F4 352A0010 */  ori        $t2, $t1, 0x10
/* 8D4F8 8008C8F8 A60A121C */  sh         $t2, 0x121c($s0)
/* 8D4FC 8008C8FC 01602025 */  or         $a0, $t3, $zero
/* 8D500 8008C900 0C00ABAD */  jal        func_8002AEB4
/* 8D504 8008C904 24050020 */   addiu     $a1, $zero, 0x20
/* 8D508 8008C908 960C187C */  lhu        $t4, 0x187c($s0)
/* 8D50C 8008C90C 2624000F */  addiu      $a0, $s1, 0xf
/* 8D510 8008C910 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8D514 8008C914 358D0010 */  ori        $t5, $t4, 0x10
/* 8D518 8008C918 A60D187C */  sh         $t5, 0x187c($s0)
/* 8D51C 8008C91C 01C02025 */  or         $a0, $t6, $zero
/* 8D520 8008C920 0C00ABAD */  jal        func_8002AEB4
/* 8D524 8008C924 24050020 */   addiu     $a1, $zero, 0x20
/* 8D528 8008C928 960F1BAC */  lhu        $t7, 0x1bac($s0)
/* 8D52C 8008C92C 26240011 */  addiu      $a0, $s1, 0x11
/* 8D530 8008C930 3099FFFF */  andi       $t9, $a0, 0xffff
/* 8D534 8008C934 35F80010 */  ori        $t8, $t7, 0x10
/* 8D538 8008C938 A6181BAC */  sh         $t8, 0x1bac($s0)
/* 8D53C 8008C93C 03202025 */  or         $a0, $t9, $zero
/* 8D540 8008C940 0C00ABAD */  jal        func_8002AEB4
/* 8D544 8008C944 24050030 */   addiu     $a1, $zero, 0x30
/* 8D548 8008C948 96081D44 */  lhu        $t0, 0x1d44($s0)
/* 8D54C 8008C94C 26240012 */  addiu      $a0, $s1, 0x12
/* 8D550 8008C950 308AFFFF */  andi       $t2, $a0, 0xffff
/* 8D554 8008C954 35090010 */  ori        $t1, $t0, 0x10
/* 8D558 8008C958 A6091D44 */  sh         $t1, 0x1d44($s0)
/* 8D55C 8008C95C 01402025 */  or         $a0, $t2, $zero
/* 8D560 8008C960 0C00ABAD */  jal        func_8002AEB4
/* 8D564 8008C964 24050020 */   addiu     $a1, $zero, 0x20
/* 8D568 8008C968 960B0EEC */  lhu        $t3, 0xeec($s0)
/* 8D56C 8008C96C 26240009 */  addiu      $a0, $s1, 9
/* 8D570 8008C970 308DFFFF */  andi       $t5, $a0, 0xffff
/* 8D574 8008C974 356C0010 */  ori        $t4, $t3, 0x10
/* 8D578 8008C978 A60C0EEC */  sh         $t4, 0xeec($s0)
/* 8D57C 8008C97C 01A02025 */  or         $a0, $t5, $zero
/* 8D580 8008C980 0C00ABAD */  jal        func_8002AEB4
/* 8D584 8008C984 24050020 */   addiu     $a1, $zero, 0x20
/* 8D588 8008C988 960E2D34 */  lhu        $t6, 0x2d34($s0)
/* 8D58C 8008C98C 2624001C */  addiu      $a0, $s1, 0x1c
/* 8D590 8008C990 3098FFFF */  andi       $t8, $a0, 0xffff
/* 8D594 8008C994 35CF0010 */  ori        $t7, $t6, 0x10
/* 8D598 8008C998 A60F2D34 */  sh         $t7, 0x2d34($s0)
/* 8D59C 8008C99C 03002025 */  or         $a0, $t8, $zero
/* 8D5A0 8008C9A0 0C00ABAD */  jal        func_8002AEB4
/* 8D5A4 8008C9A4 24050030 */   addiu     $a1, $zero, 0x30
/* 8D5A8 8008C9A8 96193064 */  lhu        $t9, 0x3064($s0)
/* 8D5AC 8008C9AC 2624001E */  addiu      $a0, $s1, 0x1e
/* 8D5B0 8008C9B0 3089FFFF */  andi       $t1, $a0, 0xffff
/* 8D5B4 8008C9B4 37280010 */  ori        $t0, $t9, 0x10
/* 8D5B8 8008C9B8 A6083064 */  sh         $t0, 0x3064($s0)
/* 8D5BC 8008C9BC 01202025 */  or         $a0, $t1, $zero
/* 8D5C0 8008C9C0 0C00ABAD */  jal        func_8002AEB4
/* 8D5C4 8008C9C4 24050030 */   addiu     $a1, $zero, 0x30
/* 8D5C8 8008C9C8 0C0115B7 */  jal        func_800456DC
/* 8D5CC 8008C9CC 00000000 */   nop
/* 8D5D0 8008C9D0 3C13800E */  lui        $s3, %hi(D_800E5A44)
/* 8D5D4 8008C9D4 26735A44 */  addiu      $s3, $s3, %lo(D_800E5A44)
/* 8D5D8 8008C9D8 966C0000 */  lhu        $t4, ($s3)
/* 8D5DC 8008C9DC 04410003 */  bgez       $v0, .L8008C9EC
/* 8D5E0 8008C9E0 00029043 */   sra       $s2, $v0, 1
/* 8D5E4 8008C9E4 24410001 */  addiu      $at, $v0, 1
/* 8D5E8 8008C9E8 00019043 */  sra        $s2, $at, 1
.L8008C9EC:
/* 8D5EC 8008C9EC 00125400 */  sll        $t2, $s2, 0x10
/* 8D5F0 8008C9F0 1180001B */  beqz       $t4, .L8008CA60
/* 8D5F4 8008C9F4 000A9403 */   sra       $s2, $t2, 0x10
/* 8D5F8 8008C9F8 3C10800E */  lui        $s0, %hi(D_800E5A44)
/* 8D5FC 8008C9FC 3C148033 */  lui        $s4, 0x8033
/* 8D600 8008CA00 36945D58 */  ori        $s4, $s4, 0x5d58
/* 8D604 8008CA04 26105A44 */  addiu      $s0, $s0, %lo(D_800E5A44)
/* 8D608 8008CA08 00008825 */  or         $s1, $zero, $zero
/* 8D60C 8008CA0C 00122C00 */  sll        $a1, $s2, 0x10
.L8008CA10:
/* 8D610 8008CA10 00123400 */  sll        $a2, $s2, 0x10
/* 8D614 8008CA14 00067403 */  sra        $t6, $a2, 0x10
/* 8D618 8008CA18 00056C03 */  sra        $t5, $a1, 0x10
/* 8D61C 8008CA1C 96040002 */  lhu        $a0, 2($s0)
/* 8D620 8008CA20 01A02825 */  or         $a1, $t5, $zero
/* 8D624 8008CA24 01C03025 */  or         $a2, $t6, $zero
/* 8D628 8008CA28 0C00AD68 */  jal        func_8002B5A0
/* 8D62C 8008CA2C 00003825 */   or        $a3, $zero, $zero
/* 8D630 8008CA30 960F0000 */  lhu        $t7, ($s0)
/* 8D634 8008CA34 26230002 */  addiu      $v1, $s1, 2
/* 8D638 8008CA38 3071FFFF */  andi       $s1, $v1, 0xffff
/* 8D63C 8008CA3C 000FC040 */  sll        $t8, $t7, 1
/* 8D640 8008CA40 00114840 */  sll        $t1, $s1, 1
/* 8D644 8008CA44 0298C821 */  addu       $t9, $s4, $t8
/* 8D648 8008CA48 02698021 */  addu       $s0, $s3, $t1
/* 8D64C 8008CA4C A7220000 */  sh         $v0, ($t9)
/* 8D650 8008CA50 960A0000 */  lhu        $t2, ($s0)
/* 8D654 8008CA54 00000000 */  nop
/* 8D658 8008CA58 1540FFED */  bnez       $t2, .L8008CA10
/* 8D65C 8008CA5C 00122C00 */   sll       $a1, $s2, 0x10
.L8008CA60:
/* 8D660 8008CA60 3C148033 */  lui        $s4, 0x8033
/* 8D664 8008CA64 0C0115C7 */  jal        func_8004571C
/* 8D668 8008CA68 36945D58 */   ori       $s4, $s4, 0x5d58
/* 8D66C 8008CA6C A682017C */  sh         $v0, 0x17c($s4)
/* 8D670 8008CA70 8FBF002C */  lw         $ra, 0x2c($sp)
/* 8D674 8008CA74 8FB40028 */  lw         $s4, 0x28($sp)
/* 8D678 8008CA78 8FB30024 */  lw         $s3, 0x24($sp)
/* 8D67C 8008CA7C 8FB20020 */  lw         $s2, 0x20($sp)
/* 8D680 8008CA80 8FB1001C */  lw         $s1, 0x1c($sp)
/* 8D684 8008CA84 8FB00018 */  lw         $s0, 0x18($sp)
/* 8D688 8008CA88 03E00008 */  jr         $ra
/* 8D68C 8008CA8C 27BD0030 */   addiu     $sp, $sp, 0x30
