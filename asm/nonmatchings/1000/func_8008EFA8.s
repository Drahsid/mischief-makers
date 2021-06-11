glabel func_8008EFA8
/* 8FBA8 8008EFA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8FBAC 8008EFAC 000E7880 */  sll        $t7, $t6, 2
/* 8FBB0 8008EFB0 01EE7823 */  subu       $t7, $t7, $t6
/* 8FBB4 8008EFB4 000F7880 */  sll        $t7, $t7, 2
/* 8FBB8 8008EFB8 01EE7821 */  addu       $t7, $t7, $t6
/* 8FBBC 8008EFBC 000F7880 */  sll        $t7, $t7, 2
/* 8FBC0 8008EFC0 01EE7823 */  subu       $t7, $t7, $t6
/* 8FBC4 8008EFC4 3C18800F */  lui        $t8, %hi(gActors)
/* 8FBC8 8008EFC8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FBCC 8008EFCC 000F78C0 */  sll        $t7, $t7, 3
/* 8FBD0 8008EFD0 01F81821 */  addu       $v1, $t7, $t8
/* 8FBD4 8008EFD4 4459F800 */  cfc1       $t9, $31
/* 8FBD8 8008EFD8 24080001 */  addiu      $t0, $zero, 1
/* 8FBDC 8008EFDC 44C8F800 */  ctc1       $t0, $31
/* 8FBE0 8008EFE0 C4640110 */  lwc1       $f4, 0x110($v1)
/* 8FBE4 8008EFE4 AFA40000 */  sw         $a0, ($sp)
/* 8FBE8 8008EFE8 460021A4 */  cvt.w.s    $f6, $f4
/* 8FBEC 8008EFEC 3C014F00 */  lui        $at, 0x4f00
/* 8FBF0 8008EFF0 4448F800 */  cfc1       $t0, $31
/* 8FBF4 8008EFF4 00000000 */  nop
/* 8FBF8 8008EFF8 31080078 */  andi       $t0, $t0, 0x78
/* 8FBFC 8008EFFC 11000012 */  beqz       $t0, .L8008F048
/* 8FC00 8008F000 00000000 */   nop
/* 8FC04 8008F004 44813000 */  mtc1       $at, $f6
/* 8FC08 8008F008 24080001 */  addiu      $t0, $zero, 1
/* 8FC0C 8008F00C 46062181 */  sub.s      $f6, $f4, $f6
/* 8FC10 8008F010 3C018000 */  lui        $at, 0x8000
/* 8FC14 8008F014 44C8F800 */  ctc1       $t0, $31
/* 8FC18 8008F018 00000000 */  nop
/* 8FC1C 8008F01C 460031A4 */  cvt.w.s    $f6, $f6
/* 8FC20 8008F020 4448F800 */  cfc1       $t0, $31
/* 8FC24 8008F024 00000000 */  nop
/* 8FC28 8008F028 31080078 */  andi       $t0, $t0, 0x78
/* 8FC2C 8008F02C 15000004 */  bnez       $t0, .L8008F040
/* 8FC30 8008F030 00000000 */   nop
/* 8FC34 8008F034 44083000 */  mfc1       $t0, $f6
/* 8FC38 8008F038 10000007 */  b          .L8008F058
/* 8FC3C 8008F03C 01014025 */   or        $t0, $t0, $at
.L8008F040:
/* 8FC40 8008F040 10000005 */  b          .L8008F058
/* 8FC44 8008F044 2408FFFF */   addiu     $t0, $zero, -1
.L8008F048:
/* 8FC48 8008F048 44083000 */  mfc1       $t0, $f6
/* 8FC4C 8008F04C 00000000 */  nop
/* 8FC50 8008F050 0500FFFB */  bltz       $t0, .L8008F040
/* 8FC54 8008F054 00000000 */   nop
.L8008F058:
/* 8FC58 8008F058 44D9F800 */  ctc1       $t9, $31
/* 8FC5C 8008F05C 310A0080 */  andi       $t2, $t0, 0x80
/* 8FC60 8008F060 1540000A */  bnez       $t2, .L8008F08C
/* 8FC64 8008F064 00001025 */   or        $v0, $zero, $zero
/* 8FC68 8008F068 846B00E0 */  lh         $t3, 0xe0($v1)
/* 8FC6C 8008F06C 240C0250 */  addiu      $t4, $zero, 0x250
/* 8FC70 8008F070 15600005 */  bnez       $t3, .L8008F088
/* 8FC74 8008F074 240D2710 */   addiu     $t5, $zero, 0x2710
/* 8FC78 8008F078 A46C00D0 */  sh         $t4, 0xd0($v1)
/* 8FC7C 8008F07C A46D00D4 */  sh         $t5, 0xd4($v1)
/* 8FC80 8008F080 03E00008 */  jr         $ra
/* 8FC84 8008F084 24020001 */   addiu     $v0, $zero, 1
.L8008F088:
/* 8FC88 8008F088 00001025 */  or         $v0, $zero, $zero
.L8008F08C:
/* 8FC8C 8008F08C 03E00008 */  jr         $ra
/* 8FC90 8008F090 00000000 */   nop
