glabel func_800853C8
/* 85FC8 800853C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 85FCC 800853CC AFB10020 */  sw         $s1, 0x20($sp)
/* 85FD0 800853D0 3091FFFF */  andi       $s1, $a0, 0xffff
/* 85FD4 800853D4 00117080 */  sll        $t6, $s1, 2
/* 85FD8 800853D8 01D17023 */  subu       $t6, $t6, $s1
/* 85FDC 800853DC 000E7080 */  sll        $t6, $t6, 2
/* 85FE0 800853E0 01D17021 */  addu       $t6, $t6, $s1
/* 85FE4 800853E4 000E7080 */  sll        $t6, $t6, 2
/* 85FE8 800853E8 01D17023 */  subu       $t6, $t6, $s1
/* 85FEC 800853EC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 85FF0 800853F0 AFB0001C */  sw         $s0, 0x1c($sp)
/* 85FF4 800853F4 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 85FF8 800853F8 000E70C0 */  sll        $t6, $t6, 3
/* 85FFC 800853FC 01CF8021 */  addu       $s0, $t6, $t7
/* 86000 80085400 96180084 */  lhu        $t8, 0x84($s0)
/* 86004 80085404 AFBF0024 */  sw         $ra, 0x24($sp)
/* 86008 80085408 AFA40030 */  sw         $a0, 0x30($sp)
/* 8600C 8008540C 3224FFFF */  andi       $a0, $s1, 0xffff
/* 86010 80085410 00002825 */  or         $a1, $zero, $zero
/* 86014 80085414 00003025 */  or         $a2, $zero, $zero
/* 86018 80085418 00003825 */  or         $a3, $zero, $zero
/* 8601C 8008541C 0C00D49B */  jal        func_8003526C
/* 86020 80085420 AFB80010 */   sw        $t8, 0x10($sp)
/* 86024 80085424 04400005 */  bltz       $v0, .L8008543C
/* 86028 80085428 24030001 */   addiu     $v1, $zero, 1
/* 8602C 8008542C 2419000A */  addiu      $t9, $zero, 0xa
/* 86030 80085430 24080002 */  addiu      $t0, $zero, 2
/* 86034 80085434 A61900D0 */  sh         $t9, 0xd0($s0)
/* 86038 80085438 AE080080 */  sw         $t0, 0x80($s0)
.L8008543C:
/* 8603C 8008543C 4449F800 */  cfc1       $t1, $31
/* 86040 80085440 44C3F800 */  ctc1       $v1, $31
/* 86044 80085444 C6000110 */  lwc1       $f0, 0x110($s0)
/* 86048 80085448 3C014F00 */  lui        $at, 0x4f00
/* 8604C 8008544C 46000124 */  cvt.w.s    $f4, $f0
/* 86050 80085450 3C0B0001 */  lui        $t3, 1
/* 86054 80085454 4443F800 */  cfc1       $v1, $31
/* 86058 80085458 00000000 */  nop
/* 8605C 8008545C 30630078 */  andi       $v1, $v1, 0x78
/* 86060 80085460 10600012 */  beqz       $v1, .L800854AC
/* 86064 80085464 00000000 */   nop
/* 86068 80085468 44812000 */  mtc1       $at, $f4
/* 8606C 8008546C 24030001 */  addiu      $v1, $zero, 1
/* 86070 80085470 46040101 */  sub.s      $f4, $f0, $f4
/* 86074 80085474 3C018000 */  lui        $at, 0x8000
/* 86078 80085478 44C3F800 */  ctc1       $v1, $31
/* 8607C 8008547C 00000000 */  nop
/* 86080 80085480 46002124 */  cvt.w.s    $f4, $f4
/* 86084 80085484 4443F800 */  cfc1       $v1, $31
/* 86088 80085488 00000000 */  nop
/* 8608C 8008548C 30630078 */  andi       $v1, $v1, 0x78
/* 86090 80085490 14600004 */  bnez       $v1, .L800854A4
/* 86094 80085494 00000000 */   nop
/* 86098 80085498 44032000 */  mfc1       $v1, $f4
/* 8609C 8008549C 10000007 */  b          .L800854BC
/* 860A0 800854A0 00611825 */   or        $v1, $v1, $at
.L800854A4:
/* 860A4 800854A4 10000005 */  b          .L800854BC
/* 860A8 800854A8 2403FFFF */   addiu     $v1, $zero, -1
.L800854AC:
/* 860AC 800854AC 44032000 */  mfc1       $v1, $f4
/* 860B0 800854B0 00000000 */  nop
/* 860B4 800854B4 0460FFFB */  bltz       $v1, .L800854A4
/* 860B8 800854B8 00000000 */   nop
.L800854BC:
/* 860BC 800854BC 960200D0 */  lhu        $v0, 0xd0($s0)
/* 860C0 800854C0 44C9F800 */  ctc1       $t1, $31
/* 860C4 800854C4 306AFFFF */  andi       $t2, $v1, 0xffff
/* 860C8 800854C8 2C41000B */  sltiu      $at, $v0, 0xb
/* 860CC 800854CC 01401825 */  or         $v1, $t2, $zero
/* 860D0 800854D0 102000D0 */  beqz       $at, .L80085814
/* 860D4 800854D4 AE0B0090 */   sw        $t3, 0x90($s0)
/* 860D8 800854D8 00026080 */  sll        $t4, $v0, 2
/* 860DC 800854DC 3C01800F */  lui        $at, %hi(D_800ED16C)
/* 860E0 800854E0 002C0821 */  addu       $at, $at, $t4
/* 860E4 800854E4 8C2CD16C */  lw         $t4, %lo(D_800ED16C)($at)
/* 860E8 800854E8 00000000 */  nop
/* 860EC 800854EC 01800008 */  jr         $t4
/* 860F0 800854F0 00000000 */   nop
/* 860F4 800854F4 44803000 */  mtc1       $zero, $f6
/* 860F8 800854F8 3C060002 */  lui        $a2, 2
/* 860FC 800854FC 4600303E */  c.le.s     $f6, $f0
/* 86100 80085500 34C61003 */  ori        $a2, $a2, 0x1003
/* 86104 80085504 244D0001 */  addiu      $t5, $v0, 1
/* 86108 80085508 240E0008 */  addiu      $t6, $zero, 8
/* 8610C 8008550C A60D00D0 */  sh         $t5, 0xd0($s0)
/* 86110 80085510 A60E0094 */  sh         $t6, 0x94($s0)
/* 86114 80085514 45000008 */  bc1f       .L80085538
/* 86118 80085518 AE060080 */   sw        $a2, 0x80($s0)
/* 8611C 8008551C 306F000F */  andi       $t7, $v1, 0xf
/* 86120 80085520 000FC040 */  sll        $t8, $t7, 1
/* 86124 80085524 3C19800E */  lui        $t9, %hi(D_800E3D4C)
/* 86128 80085528 0338C821 */  addu       $t9, $t9, $t8
/* 8612C 8008552C 97393D4C */  lhu        $t9, %lo(D_800E3D4C)($t9)
/* 86130 80085530 00000000 */  nop
/* 86134 80085534 A6190084 */  sh         $t9, 0x84($s0)
.L80085538:
/* 86138 80085538 960800D8 */  lhu        $t0, 0xd8($s0)
/* 8613C 8008553C 240A0040 */  addiu      $t2, $zero, 0x40
/* 86140 80085540 31090001 */  andi       $t1, $t0, 1
/* 86144 80085544 AE090178 */  sw         $t1, 0x178($s0)
/* 86148 80085548 A20A00DF */  sb         $t2, 0xdf($s0)
/* 8614C 8008554C 0C021346 */  jal        func_80084D18
/* 86150 80085550 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86154 80085554 0C0214C0 */  jal        func_80085300
/* 86158 80085558 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8615C 8008555C 44804000 */  mtc1       $zero, $f8
/* 86160 80085560 3224FFFF */  andi       $a0, $s1, 0xffff
/* 86164 80085564 0C0211AA */  jal        func_800846A8
/* 86168 80085568 E60800C4 */   swc1      $f8, 0xc4($s0)
/* 8616C 8008556C 14400002 */  bnez       $v0, .L80085578
/* 86170 80085570 240B0006 */   addiu     $t3, $zero, 6
/* 86174 80085574 A60B00D0 */  sh         $t3, 0xd0($s0)
.L80085578:
/* 86178 80085578 0C0214D4 */  jal        func_80085350
/* 8617C 8008557C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86180 80085580 100000A5 */  b          .L80085818
/* 86184 80085584 8E0C0098 */   lw        $t4, 0x98($s0)
/* 86188 80085588 3C060002 */  lui        $a2, 2
/* 8618C 8008558C 34C61003 */  ori        $a2, $a2, 0x1003
/* 86190 80085590 AFA60010 */  sw         $a2, 0x10($sp)
/* 86194 80085594 3224FFFF */  andi       $a0, $s1, 0xffff
/* 86198 80085598 24050003 */  addiu      $a1, $zero, 3
/* 8619C 8008559C 0C00A46B */  jal        func_800291AC
/* 861A0 800855A0 24070006 */   addiu     $a3, $zero, 6
/* 861A4 800855A4 24010002 */  addiu      $at, $zero, 2
/* 861A8 800855A8 1441002C */  bne        $v0, $at, .L8008565C
/* 861AC 800855AC 3043FFFF */   andi      $v1, $v0, 0xffff
/* 861B0 800855B0 8E0C00F8 */  lw         $t4, 0xf8($s0)
/* 861B4 800855B4 24020018 */  addiu      $v0, $zero, 0x18
/* 861B8 800855B8 0182001A */  div        $zero, $t4, $v0
/* 861BC 800855BC 8E0E00FC */  lw         $t6, 0xfc($s0)
/* 861C0 800855C0 3C0141A0 */  lui        $at, 0x41a0
/* 861C4 800855C4 44815000 */  mtc1       $at, $f10
/* 861C8 800855C8 8E0800EC */  lw         $t0, 0xec($s0)
/* 861CC 800855CC 24090001 */  addiu      $t1, $zero, 1
/* 861D0 800855D0 3224FFFF */  andi       $a0, $s1, 0xffff
/* 861D4 800855D4 E60A0114 */  swc1       $f10, 0x114($s0)
/* 861D8 800855D8 14400002 */  bnez       $v0, .L800855E4
/* 861DC 800855DC 00000000 */   nop
/* 861E0 800855E0 0007000D */  break      7
.L800855E4:
/* 861E4 800855E4 2401FFFF */   addiu     $at, $zero, -1
/* 861E8 800855E8 14410004 */  bne        $v0, $at, .L800855FC
/* 861EC 800855EC 3C018000 */   lui       $at, 0x8000
/* 861F0 800855F0 15810002 */  bne        $t4, $at, .L800855FC
/* 861F4 800855F4 00000000 */   nop
/* 861F8 800855F8 0006000D */  break      6
.L800855FC:
/* 861FC 800855FC 00006812 */   mflo      $t5
/* 86200 80085600 AE0D00F8 */  sw         $t5, 0xf8($s0)
/* 86204 80085604 00000000 */  nop
/* 86208 80085608 01C2001A */  div        $zero, $t6, $v0
/* 8620C 8008560C 14400002 */  bnez       $v0, .L80085618
/* 86210 80085610 00000000 */   nop
/* 86214 80085614 0007000D */  break      7
.L80085618:
/* 86218 80085618 2401FFFF */   addiu     $at, $zero, -1
/* 8621C 8008561C 14410004 */  bne        $v0, $at, .L80085630
/* 86220 80085620 3C018000 */   lui       $at, 0x8000
/* 86224 80085624 15C10002 */  bne        $t6, $at, .L80085630
/* 86228 80085628 00000000 */   nop
/* 8622C 8008562C 0006000D */  break      6
.L80085630:
/* 86230 80085630 00007812 */   mflo      $t7
/* 86234 80085634 AE0F00FC */  sw         $t7, 0xfc($s0)
/* 86238 80085638 25F9F800 */  addiu      $t9, $t7, -0x800
/* 8623C 8008563C AE1900FC */  sw         $t9, 0xfc($s0)
/* 86240 80085640 05010002 */  bgez       $t0, .L8008564C
/* 86244 80085644 01E0C025 */   or        $t8, $t7, $zero
/* 86248 80085648 AE090154 */  sw         $t1, 0x154($s0)
.L8008564C:
/* 8624C 8008564C 0C0214C0 */  jal        func_80085300
/* 86250 80085650 A7A3002E */   sh        $v1, 0x2e($sp)
/* 86254 80085654 97A3002E */  lhu        $v1, 0x2e($sp)
/* 86258 80085658 00000000 */  nop
.L8008565C:
/* 8625C 8008565C 24010003 */  addiu      $at, $zero, 3
/* 86260 80085660 1461006C */  bne        $v1, $at, .L80085814
/* 86264 80085664 00000000 */   nop
/* 86268 80085668 0C0214C0 */  jal        func_80085300
/* 8626C 8008566C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86270 80085670 10000069 */  b          .L80085818
/* 86274 80085674 8E0C0098 */   lw        $t4, 0x98($s0)
/* 86278 80085678 3C013F80 */  lui        $at, 0x3f80
/* 8627C 8008567C 44819000 */  mtc1       $at, $f18
/* 86280 80085680 C6100114 */  lwc1       $f16, 0x114($s0)
/* 86284 80085684 44804000 */  mtc1       $zero, $f8
/* 86288 80085688 46128101 */  sub.s      $f4, $f16, $f18
/* 8628C 8008568C 8E0A00EC */  lw         $t2, 0xec($s0)
/* 86290 80085690 E6040114 */  swc1       $f4, 0x114($s0)
/* 86294 80085694 C6060114 */  lwc1       $f6, 0x114($s0)
/* 86298 80085698 8E0B00F8 */  lw         $t3, 0xf8($s0)
/* 8629C 8008569C 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 862A0 800856A0 8E0E00FC */  lw         $t6, 0xfc($s0)
/* 862A4 800856A4 4608303C */  c.lt.s     $f6, $f8
/* 862A8 800856A8 014B6023 */  subu       $t4, $t2, $t3
/* 862AC 800856AC 01AE7823 */  subu       $t7, $t5, $t6
/* 862B0 800856B0 AE0C00EC */  sw         $t4, 0xec($s0)
/* 862B4 800856B4 45000005 */  bc1f       .L800856CC
/* 862B8 800856B8 AE0F00F0 */   sw        $t7, 0xf0($s0)
/* 862BC 800856BC 961800D0 */  lhu        $t8, 0xd0($s0)
/* 862C0 800856C0 00000000 */  nop
/* 862C4 800856C4 27190003 */  addiu      $t9, $t8, 3
/* 862C8 800856C8 A61900D0 */  sh         $t9, 0xd0($s0)
.L800856CC:
/* 862CC 800856CC 0C0214B3 */  jal        func_800852CC
/* 862D0 800856D0 3224FFFF */   andi      $a0, $s1, 0xffff
/* 862D4 800856D4 0C0214D4 */  jal        func_80085350
/* 862D8 800856D8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 862DC 800856DC 1000004E */  b          .L80085818
/* 862E0 800856E0 8E0C0098 */   lw        $t4, 0x98($s0)
/* 862E4 800856E4 8E0800F0 */  lw         $t0, 0xf0($s0)
/* 862E8 800856E8 3C01FFFE */  lui        $at, 0xfffe
/* 862EC 800856EC 34218000 */  ori        $at, $at, 0x8000
/* 862F0 800856F0 2509F600 */  addiu      $t1, $t0, -0xa00
/* 862F4 800856F4 0121082A */  slt        $at, $t1, $at
/* 862F8 800856F8 10200005 */  beqz       $at, .L80085710
/* 862FC 800856FC AE0900F0 */   sw        $t1, 0xf0($s0)
/* 86300 80085700 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 86304 80085704 00000000 */  nop
/* 86308 80085708 256C0001 */  addiu      $t4, $t3, 1
/* 8630C 8008570C A60C00D0 */  sh         $t4, 0xd0($s0)
.L80085710:
/* 86310 80085710 8E0D0154 */  lw         $t5, 0x154($s0)
/* 86314 80085714 00000000 */  nop
/* 86318 80085718 11A00006 */  beqz       $t5, .L80085734
/* 8631C 8008571C 00000000 */   nop
/* 86320 80085720 8E0E00EC */  lw         $t6, 0xec($s0)
/* 86324 80085724 00000000 */  nop
/* 86328 80085728 25CFFB00 */  addiu      $t7, $t6, -0x500
/* 8632C 8008572C 10000005 */  b          .L80085744
/* 86330 80085730 AE0F00EC */   sw        $t7, 0xec($s0)
.L80085734:
/* 86334 80085734 8E1800EC */  lw         $t8, 0xec($s0)
/* 86338 80085738 00000000 */  nop
/* 8633C 8008573C 27190500 */  addiu      $t9, $t8, 0x500
/* 86340 80085740 AE1900EC */  sw         $t9, 0xec($s0)
.L80085744:
/* 86344 80085744 0C0214B3 */  jal        func_800852CC
/* 86348 80085748 3224FFFF */   andi      $a0, $s1, 0xffff
/* 8634C 8008574C 0C0214D4 */  jal        func_80085350
/* 86350 80085750 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86354 80085754 10000030 */  b          .L80085818
/* 86358 80085758 8E0C0098 */   lw        $t4, 0x98($s0)
/* 8635C 8008575C 8E0800F0 */  lw         $t0, 0xf0($s0)
/* 86360 80085760 00000000 */  nop
/* 86364 80085764 25090A00 */  addiu      $t1, $t0, 0xa00
/* 86368 80085768 19200007 */  blez       $t1, .L80085788
/* 8636C 8008576C AE0900F0 */   sw        $t1, 0xf0($s0)
/* 86370 80085770 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 86374 80085774 8E0D0154 */  lw         $t5, 0x154($s0)
/* 86378 80085778 256CFFFF */  addiu      $t4, $t3, -1
/* 8637C 8008577C 39AE0001 */  xori       $t6, $t5, 1
/* 86380 80085780 A60C00D0 */  sh         $t4, 0xd0($s0)
/* 86384 80085784 AE0E0154 */  sw         $t6, 0x154($s0)
.L80085788:
/* 86388 80085788 8E0F0154 */  lw         $t7, 0x154($s0)
/* 8638C 8008578C 00000000 */  nop
/* 86390 80085790 11E00006 */  beqz       $t7, .L800857AC
/* 86394 80085794 00000000 */   nop
/* 86398 80085798 8E1800EC */  lw         $t8, 0xec($s0)
/* 8639C 8008579C 00000000 */  nop
/* 863A0 800857A0 27190500 */  addiu      $t9, $t8, 0x500
/* 863A4 800857A4 10000005 */  b          .L800857BC
/* 863A8 800857A8 AE1900EC */   sw        $t9, 0xec($s0)
.L800857AC:
/* 863AC 800857AC 8E0800EC */  lw         $t0, 0xec($s0)
/* 863B0 800857B0 00000000 */  nop
/* 863B4 800857B4 2509FB00 */  addiu      $t1, $t0, -0x500
/* 863B8 800857B8 AE0900EC */  sw         $t1, 0xec($s0)
.L800857BC:
/* 863BC 800857BC 0C0214B3 */  jal        func_800852CC
/* 863C0 800857C0 3224FFFF */   andi      $a0, $s1, 0xffff
/* 863C4 800857C4 0C0214D4 */  jal        func_80085350
/* 863C8 800857C8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 863CC 800857CC 10000012 */  b          .L80085818
/* 863D0 800857D0 8E0C0098 */   lw        $t4, 0x98($s0)
/* 863D4 800857D4 0C02139F */  jal        func_80084E7C
/* 863D8 800857D8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 863DC 800857DC 960A00D0 */  lhu        $t2, 0xd0($s0)
/* 863E0 800857E0 00000000 */  nop
/* 863E4 800857E4 254B0001 */  addiu      $t3, $t2, 1
/* 863E8 800857E8 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 863EC 800857EC 0C0213CE */  jal        func_80084F38
/* 863F0 800857F0 3224FFFF */   andi      $a0, $s1, 0xffff
/* 863F4 800857F4 0C0214D4 */  jal        func_80085350
/* 863F8 800857F8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 863FC 800857FC 0C0214B3 */  jal        func_800852CC
/* 86400 80085800 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86404 80085804 10000004 */  b          .L80085818
/* 86408 80085808 8E0C0098 */   lw        $t4, 0x98($s0)
/* 8640C 8008580C 0C0214D4 */  jal        func_80085350
/* 86410 80085810 3224FFFF */   andi      $a0, $s1, 0xffff
.L80085814:
/* 86414 80085814 8E0C0098 */  lw         $t4, 0x98($s0)
.L80085818:
/* 86418 80085818 3C01FFDF */  lui        $at, 0xffdf
/* 8641C 8008581C 3421F9FF */  ori        $at, $at, 0xf9ff
/* 86420 80085820 01816824 */  and        $t5, $t4, $at
/* 86424 80085824 AE0D0098 */  sw         $t5, 0x98($s0)
/* 86428 80085828 0C021029 */  jal        func_800840A4
/* 8642C 8008582C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 86430 80085830 8FBF0024 */  lw         $ra, 0x24($sp)
/* 86434 80085834 8FB0001C */  lw         $s0, 0x1c($sp)
/* 86438 80085838 8FB10020 */  lw         $s1, 0x20($sp)
/* 8643C 8008583C 03E00008 */  jr         $ra
/* 86440 80085840 27BD0030 */   addiu     $sp, $sp, 0x30
