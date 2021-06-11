glabel func_80078F54
/* 79B54 80078F54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 79B58 80078F58 000E7880 */  sll        $t7, $t6, 2
/* 79B5C 80078F5C 01EE7823 */  subu       $t7, $t7, $t6
/* 79B60 80078F60 000F7880 */  sll        $t7, $t7, 2
/* 79B64 80078F64 01EE7821 */  addu       $t7, $t7, $t6
/* 79B68 80078F68 000F7880 */  sll        $t7, $t7, 2
/* 79B6C 80078F6C 01EE7823 */  subu       $t7, $t7, $t6
/* 79B70 80078F70 3C18800F */  lui        $t8, %hi(gActors)
/* 79B74 80078F74 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 79B78 80078F78 000F78C0 */  sll        $t7, $t7, 3
/* 79B7C 80078F7C 01F81021 */  addu       $v0, $t7, $t8
/* 79B80 80078F80 8C430168 */  lw         $v1, 0x168($v0)
/* 79B84 80078F84 94590094 */  lhu        $t9, 0x94($v0)
/* 79B88 80078F88 8C4A0080 */  lw         $t2, 0x80($v0)
/* 79B8C 80078F8C AFA40000 */  sw         $a0, ($sp)
/* 79B90 80078F90 37280008 */  ori        $t0, $t9, 8
/* 79B94 80078F94 314B0020 */  andi       $t3, $t2, 0x20
/* 79B98 80078F98 01C02025 */  or         $a0, $t6, $zero
/* 79B9C 80078F9C A4480094 */  sh         $t0, 0x94($v0)
/* 79BA0 80078FA0 04610004 */  bgez       $v1, .L80078FB4
/* 79BA4 80078FA4 00034C03 */   sra       $t1, $v1, 0x10
/* 79BA8 80078FA8 3401FFFF */  ori        $at, $zero, 0xffff
/* 79BAC 80078FAC 00230821 */  addu       $at, $at, $v1
/* 79BB0 80078FB0 00014C03 */  sra        $t1, $at, 0x10
.L80078FB4:
/* 79BB4 80078FB4 11600004 */  beqz       $t3, .L80078FC8
/* 79BB8 80078FB8 01201825 */   or        $v1, $t1, $zero
/* 79BBC 80078FBC 25230200 */  addiu      $v1, $t1, 0x200
/* 79BC0 80078FC0 306C03FF */  andi       $t4, $v1, 0x3ff
/* 79BC4 80078FC4 01801825 */  or         $v1, $t4, $zero
.L80078FC8:
/* 79BC8 80078FC8 44832000 */  mtc1       $v1, $f4
/* 79BCC 80078FCC 3C01800F */  lui        $at, %hi(D_800ECD20)
/* 79BD0 80078FD0 468021A1 */  cvt.d.w    $f6, $f4
/* 79BD4 80078FD4 C429CD20 */  lwc1       $f9, %lo(D_800ECD20)($at)
/* 79BD8 80078FD8 C428CD24 */  lwc1       $f8, -0x32dc($at)
/* 79BDC 80078FDC 00000000 */  nop
/* 79BE0 80078FE0 46283282 */  mul.d      $f10, $f6, $f8
/* 79BE4 80078FE4 46205420 */  cvt.s.d    $f16, $f10
/* 79BE8 80078FE8 03E00008 */  jr         $ra
/* 79BEC 80078FEC E45000C4 */   swc1      $f16, 0xc4($v0)
