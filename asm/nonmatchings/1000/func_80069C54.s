glabel func_80069C54
/* 6A854 80069C54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6A858 80069C58 000E7880 */  sll        $t7, $t6, 2
/* 6A85C 80069C5C 01EE7823 */  subu       $t7, $t7, $t6
/* 6A860 80069C60 000F7880 */  sll        $t7, $t7, 2
/* 6A864 80069C64 01EE7821 */  addu       $t7, $t7, $t6
/* 6A868 80069C68 000F7880 */  sll        $t7, $t7, 2
/* 6A86C 80069C6C 01EE7823 */  subu       $t7, $t7, $t6
/* 6A870 80069C70 3C18800F */  lui        $t8, %hi(gActors)
/* 6A874 80069C74 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6A878 80069C78 000F78C0 */  sll        $t7, $t7, 3
/* 6A87C 80069C7C 01F81021 */  addu       $v0, $t7, $t8
/* 6A880 80069C80 8C590098 */  lw         $t9, 0x98($v0)
/* 6A884 80069C84 AFA40000 */  sw         $a0, ($sp)
/* 6A888 80069C88 33280040 */  andi       $t0, $t9, 0x40
/* 6A88C 80069C8C 11000010 */  beqz       $t0, .L80069CD0
/* 6A890 80069C90 3C01FFFF */   lui       $at, 0xffff
/* 6A894 80069C94 8C490080 */  lw         $t1, 0x80($v0)
/* 6A898 80069C98 8C4B0150 */  lw         $t3, 0x150($v0)
/* 6A89C 80069C9C 3421757F */  ori        $at, $at, 0x757f
/* 6A8A0 80069CA0 01215024 */  and        $t2, $t1, $at
/* 6A8A4 80069CA4 000B6100 */  sll        $t4, $t3, 4
/* 6A8A8 80069CA8 05810005 */  bgez       $t4, .L80069CC0
/* 6A8AC 80069CAC AC4A0080 */   sw        $t2, 0x80($v0)
/* 6A8B0 80069CB0 240D00F0 */  addiu      $t5, $zero, 0xf0
/* 6A8B4 80069CB4 A44D00D0 */  sh         $t5, 0xd0($v0)
/* 6A8B8 80069CB8 03E00008 */  jr         $ra
/* 6A8BC 80069CBC 24020001 */   addiu     $v0, $zero, 1
.L80069CC0:
/* 6A8C0 80069CC0 240E0100 */  addiu      $t6, $zero, 0x100
/* 6A8C4 80069CC4 A44E00D0 */  sh         $t6, 0xd0($v0)
/* 6A8C8 80069CC8 03E00008 */  jr         $ra
/* 6A8CC 80069CCC 24020001 */   addiu     $v0, $zero, 1
.L80069CD0:
/* 6A8D0 80069CD0 00001025 */  or         $v0, $zero, $zero
/* 6A8D4 80069CD4 03E00008 */  jr         $ra
/* 6A8D8 80069CD8 00000000 */   nop
