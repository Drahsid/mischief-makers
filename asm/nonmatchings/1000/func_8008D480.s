glabel func_8008D480
/* 8E080 8008D480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E084 8008D484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E088 8008D488 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E08C 8008D48C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8E090 8008D490 01C02025 */  or         $a0, $t6, $zero
/* 8E094 8008D494 0C0234E7 */  jal        func_8008D39C
/* 8E098 8008D498 A7AE001A */   sh        $t6, 0x1a($sp)
/* 8E09C 8008D49C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E0A0 8008D4A0 3C18800F */  lui        $t8, 0x800f
/* 8E0A4 8008D4A4 00047880 */  sll        $t7, $a0, 2
/* 8E0A8 8008D4A8 01E47823 */  subu       $t7, $t7, $a0
/* 8E0AC 8008D4AC 000F7880 */  sll        $t7, $t7, 2
/* 8E0B0 8008D4B0 01E47821 */  addu       $t7, $t7, $a0
/* 8E0B4 8008D4B4 000F7880 */  sll        $t7, $t7, 2
/* 8E0B8 8008D4B8 01E47823 */  subu       $t7, $t7, $a0
/* 8E0BC 8008D4BC 000F78C0 */  sll        $t7, $t7, 3
/* 8E0C0 8008D4C0 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8E0C4 8008D4C4 01F81021 */  addu       $v0, $t7, $t8
/* 8E0C8 8008D4C8 8C590188 */  lw         $t9, 0x188($v0)
/* 8E0CC 8008D4CC 00000000 */  nop
/* 8E0D0 8008D4D0 0721000A */  bgez       $t9, .L8008D4FC
/* 8E0D4 8008D4D4 00000000 */   nop
/* 8E0D8 8008D4D8 8C480098 */  lw         $t0, 0x98($v0)
/* 8E0DC 8008D4DC 00000000 */  nop
/* 8E0E0 8008D4E0 31090020 */  andi       $t1, $t0, 0x20
/* 8E0E4 8008D4E4 11200006 */  beqz       $t1, .L8008D500
/* 8E0E8 8008D4E8 00001025 */   or        $v0, $zero, $zero
/* 8E0EC 8008D4EC 0C0233F9 */  jal        func_8008CFE4
/* 8E0F0 8008D4F0 00000000 */   nop
/* 8E0F4 8008D4F4 10000002 */  b          .L8008D500
/* 8E0F8 8008D4F8 24020001 */   addiu     $v0, $zero, 1
.L8008D4FC:
/* 8E0FC 8008D4FC 00001025 */  or         $v0, $zero, $zero
.L8008D500:
/* 8E100 8008D500 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E104 8008D504 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E108 8008D508 03E00008 */  jr         $ra
/* 8E10C 8008D50C 00000000 */   nop
