glabel func_800406A4
/* 412A4 800406A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 412A8 800406A8 3C0F800D */  lui        $t7, %hi(D_800D5820)
/* 412AC 800406AC 95EF5820 */  lhu        $t7, %lo(D_800D5820)($t7)
/* 412B0 800406B0 AFB00018 */  sw         $s0, 0x18($sp)
/* 412B4 800406B4 00808025 */  or         $s0, $a0, $zero
/* 412B8 800406B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 412BC 800406BC AFA50024 */  sw         $a1, 0x24($sp)
/* 412C0 800406C0 AFA60028 */  sw         $a2, 0x28($sp)
/* 412C4 800406C4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 412C8 800406C8 15E0003D */  bnez       $t7, .L800407C0
/* 412CC 800406CC 30AEFFFF */   andi      $t6, $a1, 0xffff
/* 412D0 800406D0 3C188010 */  lui        $t8, %hi(D_800FD978)
/* 412D4 800406D4 8F18D978 */  lw         $t8, %lo(D_800FD978)($t8)
/* 412D8 800406D8 2408005D */  addiu      $t0, $zero, 0x5d
/* 412DC 800406DC 33190002 */  andi       $t9, $t8, 2
/* 412E0 800406E0 17200037 */  bnez       $t9, .L800407C0
/* 412E4 800406E4 3C018010 */   lui       $at, %hi(D_800FD9CA)
/* 412E8 800406E8 A428D9CA */  sh         $t0, %lo(D_800FD9CA)($at)
/* 412EC 800406EC 2404008F */  addiu      $a0, $zero, 0x8f
/* 412F0 800406F0 0C0078B4 */  jal        func_8001E2D0
/* 412F4 800406F4 A7AE0026 */   sh        $t6, 0x26($sp)
/* 412F8 800406F8 97A50026 */  lhu        $a1, 0x26($sp)
/* 412FC 800406FC 8FA90028 */  lw         $t1, 0x28($sp)
/* 41300 80040700 3C018010 */  lui        $at, %hi(D_800FD9CE)
/* 41304 80040704 A425D9CE */  sh         $a1, %lo(D_800FD9CE)($at)
/* 41308 80040708 8FAB002C */  lw         $t3, 0x2c($sp)
/* 4130C 8004070C 3C018010 */  lui        $at, %hi(D_800FD9FC)
/* 41310 80040710 00095400 */  sll        $t2, $t1, 0x10
/* 41314 80040714 AC2AD9FC */  sw         $t2, %lo(D_800FD9FC)($at)
/* 41318 80040718 8FAD0030 */  lw         $t5, 0x30($sp)
/* 4131C 8004071C 3C018010 */  lui        $at, %hi(D_800FDA00)
/* 41320 80040720 000B6400 */  sll        $t4, $t3, 0x10
/* 41324 80040724 AC2CDA00 */  sw         $t4, %lo(D_800FDA00)($at)
/* 41328 80040728 3C018010 */  lui        $at, %hi(D_800FDA04)
/* 4132C 8004072C 000D7400 */  sll        $t6, $t5, 0x10
/* 41330 80040730 AC2EDA04 */  sw         $t6, %lo(D_800FDA04)($at)
/* 41334 80040734 960F0000 */  lhu        $t7, ($s0)
/* 41338 80040738 00001025 */  or         $v0, $zero, $zero
/* 4133C 8004073C 31F88000 */  andi       $t8, $t7, 0x8000
/* 41340 80040740 17000010 */  bnez       $t8, .L80040784
/* 41344 80040744 00056880 */   sll       $t5, $a1, 2
/* 41348 80040748 3C048010 */  lui        $a0, %hi(D_800FD8F8)
/* 4134C 8004074C 2484D8F8 */  addiu      $a0, $a0, %lo(D_800FD8F8)
/* 41350 80040750 31E3FFFF */  andi       $v1, $t7, 0xffff
/* 41354 80040754 0002C880 */  sll        $t9, $v0, 2
.L80040758:
/* 41358 80040758 24420001 */  addiu      $v0, $v0, 1
/* 4135C 8004075C 3049FFFF */  andi       $t1, $v0, 0xffff
/* 41360 80040760 00095040 */  sll        $t2, $t1, 1
/* 41364 80040764 00994021 */  addu       $t0, $a0, $t9
/* 41368 80040768 020A5821 */  addu       $t3, $s0, $t2
/* 4136C 8004076C AD030150 */  sw         $v1, 0x150($t0)
/* 41370 80040770 95630000 */  lhu        $v1, ($t3)
/* 41374 80040774 01201025 */  or         $v0, $t1, $zero
/* 41378 80040778 306C8000 */  andi       $t4, $v1, 0x8000
/* 4137C 8004077C 1180FFF6 */  beqz       $t4, .L80040758
/* 41380 80040780 0002C880 */   sll       $t9, $v0, 2
.L80040784:
/* 41384 80040784 01A56823 */  subu       $t5, $t5, $a1
/* 41388 80040788 000D6880 */  sll        $t5, $t5, 2
/* 4138C 8004078C 01A56821 */  addu       $t5, $t5, $a1
/* 41390 80040790 000D6880 */  sll        $t5, $t5, 2
/* 41394 80040794 01A56823 */  subu       $t5, $t5, $a1
/* 41398 80040798 3C0E800F */  lui        $t6, %hi(D_800EF510)
/* 4139C 8004079C 25CEF510 */  addiu      $t6, $t6, %lo(D_800EF510)
/* 413A0 800407A0 000D68C0 */  sll        $t5, $t5, 3
/* 413A4 800407A4 01AE1821 */  addu       $v1, $t5, $t6
/* 413A8 800407A8 8C6F0098 */  lw         $t7, 0x98($v1)
/* 413AC 800407AC 3C010004 */  lui        $at, 4
/* 413B0 800407B0 01E1C025 */  or         $t8, $t7, $at
/* 413B4 800407B4 AC780098 */  sw         $t8, 0x98($v1)
/* 413B8 800407B8 10000002 */  b          .L800407C4
/* 413BC 800407BC 2402008F */   addiu     $v0, $zero, 0x8f
.L800407C0:
/* 413C0 800407C0 00001025 */  or         $v0, $zero, $zero
.L800407C4:
/* 413C4 800407C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 413C8 800407C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 413CC 800407CC 03E00008 */  jr         $ra
/* 413D0 800407D0 27BD0020 */   addiu     $sp, $sp, 0x20
