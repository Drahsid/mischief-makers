glabel func_8002FEF8
/* 30AF8 8002FEF8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 30AFC 8002FEFC 000E7880 */  sll        $t7, $t6, 2
/* 30B00 8002FF00 01EE7823 */  subu       $t7, $t7, $t6
/* 30B04 8002FF04 000F7880 */  sll        $t7, $t7, 2
/* 30B08 8002FF08 01EE7821 */  addu       $t7, $t7, $t6
/* 30B0C 8002FF0C 000F7880 */  sll        $t7, $t7, 2
/* 30B10 8002FF10 01EE7823 */  subu       $t7, $t7, $t6
/* 30B14 8002FF14 3C18800F */  lui        $t8, %hi(gActors)
/* 30B18 8002FF18 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 30B1C 8002FF1C 000F78C0 */  sll        $t7, $t7, 3
/* 30B20 8002FF20 01F81021 */  addu       $v0, $t7, $t8
/* 30B24 8002FF24 945900D0 */  lhu        $t9, 0xd0($v0)
/* 30B28 8002FF28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30B2C 8002FF2C AFA40018 */  sw         $a0, 0x18($sp)
/* 30B30 8002FF30 01C02025 */  or         $a0, $t6, $zero
/* 30B34 8002FF34 1720002E */  bnez       $t9, .L8002FFF0
/* 30B38 8002FF38 AFBF0014 */   sw        $ra, 0x14($sp)
/* 30B3C 8002FF3C 444AF800 */  cfc1       $t2, $31
/* 30B40 8002FF40 240B0001 */  addiu      $t3, $zero, 1
/* 30B44 8002FF44 44CBF800 */  ctc1       $t3, $31
/* 30B48 8002FF48 C4440110 */  lwc1       $f4, 0x110($v0)
/* 30B4C 8002FF4C 3C08800E */  lui        $t0, %hi(D_800E164C)
/* 30B50 8002FF50 460021A4 */  cvt.w.s    $f6, $f4
/* 30B54 8002FF54 2508164C */  addiu      $t0, $t0, %lo(D_800E164C)
/* 30B58 8002FF58 444BF800 */  cfc1       $t3, $31
/* 30B5C 8002FF5C 24090001 */  addiu      $t1, $zero, 1
/* 30B60 8002FF60 316B0078 */  andi       $t3, $t3, 0x78
/* 30B64 8002FF64 A44900E6 */  sh         $t1, 0xe6($v0)
/* 30B68 8002FF68 11600013 */  beqz       $t3, .L8002FFB8
/* 30B6C 8002FF6C AC4800E8 */   sw        $t0, 0xe8($v0)
/* 30B70 8002FF70 3C014F00 */  lui        $at, 0x4f00
/* 30B74 8002FF74 44813000 */  mtc1       $at, $f6
/* 30B78 8002FF78 240B0001 */  addiu      $t3, $zero, 1
/* 30B7C 8002FF7C 46062181 */  sub.s      $f6, $f4, $f6
/* 30B80 8002FF80 3C018000 */  lui        $at, 0x8000
/* 30B84 8002FF84 44CBF800 */  ctc1       $t3, $31
/* 30B88 8002FF88 00000000 */  nop
/* 30B8C 8002FF8C 460031A4 */  cvt.w.s    $f6, $f6
/* 30B90 8002FF90 444BF800 */  cfc1       $t3, $31
/* 30B94 8002FF94 00000000 */  nop
/* 30B98 8002FF98 316B0078 */  andi       $t3, $t3, 0x78
/* 30B9C 8002FF9C 15600004 */  bnez       $t3, .L8002FFB0
/* 30BA0 8002FFA0 00000000 */   nop
/* 30BA4 8002FFA4 440B3000 */  mfc1       $t3, $f6
/* 30BA8 8002FFA8 10000007 */  b          .L8002FFC8
/* 30BAC 8002FFAC 01615825 */   or        $t3, $t3, $at
.L8002FFB0:
/* 30BB0 8002FFB0 10000005 */  b          .L8002FFC8
/* 30BB4 8002FFB4 240BFFFF */   addiu     $t3, $zero, -1
.L8002FFB8:
/* 30BB8 8002FFB8 440B3000 */  mfc1       $t3, $f6
/* 30BBC 8002FFBC 00000000 */  nop
/* 30BC0 8002FFC0 0560FFFB */  bltz       $t3, .L8002FFB0
/* 30BC4 8002FFC4 00000000 */   nop
.L8002FFC8:
/* 30BC8 8002FFC8 316D0003 */  andi       $t5, $t3, 3
/* 30BCC 8002FFCC 000D7080 */  sll        $t6, $t5, 2
/* 30BD0 8002FFD0 3C0F800D */  lui        $t7, %hi(D_800D1958)
/* 30BD4 8002FFD4 01EE7821 */  addu       $t7, $t7, $t6
/* 30BD8 8002FFD8 8DEF1958 */  lw         $t7, %lo(D_800D1958)($t7)
/* 30BDC 8002FFDC 44CAF800 */  ctc1       $t2, $31
/* 30BE0 8002FFE0 0C00D637 */  jal        func_800358DC
/* 30BE4 8002FFE4 AC4F018C */   sw        $t7, 0x18c($v0)
/* 30BE8 8002FFE8 10000004 */  b          .L8002FFFC
/* 30BEC 8002FFEC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002FFF0:
/* 30BF0 8002FFF0 0C00D688 */  jal        func_80035A20
/* 30BF4 8002FFF4 00000000 */   nop
/* 30BF8 8002FFF8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002FFFC:
/* 30BFC 8002FFFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 30C00 80030000 03E00008 */  jr         $ra
/* 30C04 80030004 00000000 */   nop
