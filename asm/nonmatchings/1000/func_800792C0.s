glabel func_800792C0
/* 79EC0 800792C0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 79EC4 800792C4 000E7880 */  sll        $t7, $t6, 2
/* 79EC8 800792C8 01EE7823 */  subu       $t7, $t7, $t6
/* 79ECC 800792CC 000F7880 */  sll        $t7, $t7, 2
/* 79ED0 800792D0 01EE7821 */  addu       $t7, $t7, $t6
/* 79ED4 800792D4 000F7880 */  sll        $t7, $t7, 2
/* 79ED8 800792D8 01EE7823 */  subu       $t7, $t7, $t6
/* 79EDC 800792DC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 79EE0 800792E0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 79EE4 800792E4 000F78C0 */  sll        $t7, $t7, 3
/* 79EE8 800792E8 01F81821 */  addu       $v1, $t7, $t8
/* 79EEC 800792EC 8C790180 */  lw         $t9, 0x180($v1)
/* 79EF0 800792F0 8C680178 */  lw         $t0, 0x178($v1)
/* 79EF4 800792F4 8C6B0184 */  lw         $t3, 0x184($v1)
/* 79EF8 800792F8 8C6C017C */  lw         $t4, 0x17c($v1)
/* 79EFC 800792FC 03281023 */  subu       $v0, $t9, $t0
/* 79F00 80079300 00024C00 */  sll        $t1, $v0, 0x10
/* 79F04 80079304 00095403 */  sra        $t2, $t1, 0x10
/* 79F08 80079308 016C2823 */  subu       $a1, $t3, $t4
/* 79F0C 8007930C 00056C00 */  sll        $t5, $a1, 0x10
/* 79F10 80079310 29410008 */  slti       $at, $t2, 8
/* 79F14 80079314 AFA40000 */  sw         $a0, ($sp)
/* 79F18 80079318 1420000A */  bnez       $at, .L80079344
/* 79F1C 8007931C 000D7403 */   sra       $t6, $t5, 0x10
/* 79F20 80079320 2941FFF9 */  slti       $at, $t2, -7
/* 79F24 80079324 10200007 */  beqz       $at, .L80079344
/* 79F28 80079328 29C10008 */   slti      $at, $t6, 8
/* 79F2C 8007932C 14200005 */  bnez       $at, .L80079344
/* 79F30 80079330 29C1FFF9 */   slti      $at, $t6, -7
/* 79F34 80079334 10200003 */  beqz       $at, .L80079344
/* 79F38 80079338 00000000 */   nop
/* 79F3C 8007933C 03E00008 */  jr         $ra
/* 79F40 80079340 24020001 */   addiu     $v0, $zero, 1
.L80079344:
/* 79F44 80079344 8C620098 */  lw         $v0, 0x98($v1)
/* 79F48 80079348 00000000 */  nop
/* 79F4C 8007934C 304F000C */  andi       $t7, $v0, 0xc
/* 79F50 80079350 15E00005 */  bnez       $t7, .L80079368
/* 79F54 80079354 30580010 */   andi      $t8, $v0, 0x10
/* 79F58 80079358 17000003 */  bnez       $t8, .L80079368
/* 79F5C 8007935C 30590020 */   andi      $t9, $v0, 0x20
/* 79F60 80079360 13200003 */  beqz       $t9, .L80079370
/* 79F64 80079364 00001025 */   or        $v0, $zero, $zero
.L80079368:
/* 79F68 80079368 03E00008 */  jr         $ra
/* 79F6C 8007936C 24020001 */   addiu     $v0, $zero, 1
.L80079370:
/* 79F70 80079370 03E00008 */  jr         $ra
/* 79F74 80079374 00000000 */   nop
