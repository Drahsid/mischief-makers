glabel func_8002B330
/* 2BF30 8002B330 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 2BF34 8002B334 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 2BF38 8002B338 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BF3C 8002B33C AFA40020 */  sw         $a0, 0x20($sp)
/* 2BF40 8002B340 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BF44 8002B344 31F80004 */  andi       $t8, $t7, 4
/* 2BF48 8002B348 01C02025 */  or         $a0, $t6, $zero
/* 2BF4C 8002B34C 13000015 */  beqz       $t8, .L8002B3A4
/* 2BF50 8002B350 AFBF0014 */   sw        $ra, 0x14($sp)
/* 2BF54 8002B354 000EC880 */  sll        $t9, $t6, 2
/* 2BF58 8002B358 032EC823 */  subu       $t9, $t9, $t6
/* 2BF5C 8002B35C 0019C880 */  sll        $t9, $t9, 2
/* 2BF60 8002B360 032EC821 */  addu       $t9, $t9, $t6
/* 2BF64 8002B364 0019C880 */  sll        $t9, $t9, 2
/* 2BF68 8002B368 032EC823 */  subu       $t9, $t9, $t6
/* 2BF6C 8002B36C 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 2BF70 8002B370 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 2BF74 8002B374 0019C8C0 */  sll        $t9, $t9, 3
/* 2BF78 8002B378 03281821 */  addu       $v1, $t9, $t0
/* 2BF7C 8002B37C 9065009C */  lbu        $a1, 0x9c($v1)
/* 2BF80 8002B380 AFA3001C */  sw         $v1, 0x1c($sp)
/* 2BF84 8002B384 0C00AC04 */  jal        func_8002B010
/* 2BF88 8002B388 24060040 */   addiu     $a2, $zero, 0x40
/* 2BF8C 8002B38C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2BF90 8002B390 00000000 */  nop
/* 2BF94 8002B394 A062009C */  sb         $v0, 0x9c($v1)
/* 2BF98 8002B398 A062009D */  sb         $v0, 0x9d($v1)
/* 2BF9C 8002B39C 10000014 */  b          .L8002B3F0
/* 2BFA0 8002B3A0 A062009E */   sb        $v0, 0x9e($v1)
.L8002B3A4:
/* 2BFA4 8002B3A4 00044880 */  sll        $t1, $a0, 2
/* 2BFA8 8002B3A8 01244823 */  subu       $t1, $t1, $a0
/* 2BFAC 8002B3AC 00094880 */  sll        $t1, $t1, 2
/* 2BFB0 8002B3B0 01244821 */  addu       $t1, $t1, $a0
/* 2BFB4 8002B3B4 00094880 */  sll        $t1, $t1, 2
/* 2BFB8 8002B3B8 01244823 */  subu       $t1, $t1, $a0
/* 2BFBC 8002B3BC 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 2BFC0 8002B3C0 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 2BFC4 8002B3C4 000948C0 */  sll        $t1, $t1, 3
/* 2BFC8 8002B3C8 012A1821 */  addu       $v1, $t1, $t2
/* 2BFCC 8002B3CC 9065009C */  lbu        $a1, 0x9c($v1)
/* 2BFD0 8002B3D0 AFA3001C */  sw         $v1, 0x1c($sp)
/* 2BFD4 8002B3D4 0C00AC04 */  jal        func_8002B010
/* 2BFD8 8002B3D8 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 2BFDC 8002B3DC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 2BFE0 8002B3E0 00000000 */  nop
/* 2BFE4 8002B3E4 A062009C */  sb         $v0, 0x9c($v1)
/* 2BFE8 8002B3E8 A062009D */  sb         $v0, 0x9d($v1)
/* 2BFEC 8002B3EC A062009E */  sb         $v0, 0x9e($v1)
.L8002B3F0:
/* 2BFF0 8002B3F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2BFF4 8002B3F4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2BFF8 8002B3F8 03E00008 */  jr         $ra
/* 2BFFC 8002B3FC 00000000 */   nop
