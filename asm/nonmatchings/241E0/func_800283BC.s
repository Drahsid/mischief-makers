glabel func_800283BC
/* 28FBC 800283BC 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 28FC0 800283C0 306F0FFF */  andi       $t7, $v1, 0xfff
/* 28FC4 800283C4 000FC080 */  sll        $t8, $t7, 2
/* 28FC8 800283C8 030FC023 */  subu       $t8, $t8, $t7
/* 28FCC 800283CC 0018C080 */  sll        $t8, $t8, 2
/* 28FD0 800283D0 030FC021 */  addu       $t8, $t8, $t7
/* 28FD4 800283D4 0018C080 */  sll        $t8, $t8, 2
/* 28FD8 800283D8 030FC023 */  subu       $t8, $t8, $t7
/* 28FDC 800283DC 0018C0C0 */  sll        $t8, $t8, 3
/* 28FE0 800283E0 3C19800F */  lui        $t9, %hi(D_800EF598)
/* 28FE4 800283E4 0338C821 */  addu       $t9, $t9, $t8
/* 28FE8 800283E8 8739F598 */  lh         $t9, %lo(D_800EF598)($t9)
/* 28FEC 800283EC 3C01800C */  lui        $at, %hi(gAtX)
/* 28FF0 800283F0 44992000 */  mtc1       $t9, $f4
/* 28FF4 800283F4 C428E5B4 */  lwc1       $f8, %lo(gAtX)($at)
/* 28FF8 800283F8 468021A0 */  cvt.s.w    $f6, $f4
/* 28FFC 800283FC 3C014000 */  lui        $at, 0x4000
/* 29000 80028400 44818000 */  mtc1       $at, $f16
/* 29004 80028404 46083281 */  sub.s      $f10, $f6, $f8
/* 29008 80028408 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2900C 8002840C 46105483 */  div.s      $f18, $f10, $f16
/* 29010 80028410 AFA5001C */  sw         $a1, 0x1c($sp)
/* 29014 80028414 AFBF0014 */  sw         $ra, 0x14($sp)
/* 29018 80028418 306B8000 */  andi       $t3, $v1, 0x8000
/* 2901C 8002841C 24050100 */  addiu      $a1, $zero, 0x100
/* 29020 80028420 4448F800 */  cfc1       $t0, $31
/* 29024 80028424 00000000 */  nop
/* 29028 80028428 35010003 */  ori        $at, $t0, 3
/* 2902C 8002842C 38210002 */  xori       $at, $at, 2
/* 29030 80028430 44C1F800 */  ctc1       $at, $31
/* 29034 80028434 00000000 */  nop
/* 29038 80028438 46009124 */  cvt.w.s    $f4, $f18
/* 2903C 8002843C 44022000 */  mfc1       $v0, $f4
/* 29040 80028440 44C8F800 */  ctc1       $t0, $31
/* 29044 80028444 00024C00 */  sll        $t1, $v0, 0x10
/* 29048 80028448 00091403 */  sra        $v0, $t1, 0x10
/* 2904C 8002844C 28410040 */  slti       $at, $v0, 0x40
/* 29050 80028450 14200004 */  bnez       $at, .L80028464
/* 29054 80028454 2841FFC0 */   slti      $at, $v0, -0x40
/* 29058 80028458 10000005 */  b          .L80028470
/* 2905C 8002845C 2402003F */   addiu     $v0, $zero, 0x3f
/* 29060 80028460 2841FFC0 */  slti       $at, $v0, -0x40
.L80028464:
/* 29064 80028464 10200002 */  beqz       $at, .L80028470
/* 29068 80028468 00000000 */   nop
/* 2906C 8002846C 2402FFC0 */  addiu      $v0, $zero, -0x40
.L80028470:
/* 29070 80028470 11600008 */  beqz       $t3, .L80028494
/* 29074 80028474 24460040 */   addiu     $a2, $v0, 0x40
/* 29078 80028478 24460040 */  addiu      $a2, $v0, 0x40
/* 2907C 8002847C 00066600 */  sll        $t4, $a2, 0x18
/* 29080 80028480 000C3603 */  sra        $a2, $t4, 0x18
/* 29084 80028484 0C000D1D */  jal        func_80003474
/* 29088 80028488 24050100 */   addiu     $a1, $zero, 0x100
/* 2908C 8002848C 10000005 */  b          .L800284A4
/* 29090 80028490 8FBF0014 */   lw        $ra, 0x14($sp)
.L80028494:
/* 29094 80028494 00067600 */  sll        $t6, $a2, 0x18
/* 29098 80028498 0C000D0C */  jal        func_80003430
/* 2909C 8002849C 000E3603 */   sra       $a2, $t6, 0x18
/* 290A0 800284A0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800284A4:
/* 290A4 800284A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 290A8 800284A8 03E00008 */  jr         $ra
/* 290AC 800284AC 00000000 */   nop