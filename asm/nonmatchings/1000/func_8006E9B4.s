glabel func_8006E9B4
/* 6F5B4 8006E9B4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6F5B8 8006E9B8 000E7880 */  sll        $t7, $t6, 2
/* 6F5BC 8006E9BC 01EE7823 */  subu       $t7, $t7, $t6
/* 6F5C0 8006E9C0 000F7880 */  sll        $t7, $t7, 2
/* 6F5C4 8006E9C4 01EE7821 */  addu       $t7, $t7, $t6
/* 6F5C8 8006E9C8 000F7880 */  sll        $t7, $t7, 2
/* 6F5CC 8006E9CC 01EE7823 */  subu       $t7, $t7, $t6
/* 6F5D0 8006E9D0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6F5D4 8006E9D4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6F5D8 8006E9D8 000F78C0 */  sll        $t7, $t7, 3
/* 6F5DC 8006E9DC 01F81021 */  addu       $v0, $t7, $t8
/* 6F5E0 8006E9E0 8C4300EC */  lw         $v1, 0xec($v0)
/* 6F5E4 8006E9E4 AFA40000 */  sw         $a0, ($sp)
/* 6F5E8 8006E9E8 18600008 */  blez       $v1, .L8006EA0C
/* 6F5EC 8006E9EC 00000000 */   nop
/* 6F5F0 8006E9F0 8C590098 */  lw         $t9, 0x98($v0)
/* 6F5F4 8006E9F4 00000000 */  nop
/* 6F5F8 8006E9F8 33280008 */  andi       $t0, $t9, 8
/* 6F5FC 8006E9FC 11000003 */  beqz       $t0, .L8006EA0C
/* 6F600 8006EA00 00000000 */   nop
/* 6F604 8006EA04 03E00008 */  jr         $ra
/* 6F608 8006EA08 24020002 */   addiu     $v0, $zero, 2
.L8006EA0C:
/* 6F60C 8006EA0C 04610008 */  bgez       $v1, .L8006EA30
/* 6F610 8006EA10 00000000 */   nop
/* 6F614 8006EA14 8C490098 */  lw         $t1, 0x98($v0)
/* 6F618 8006EA18 00000000 */  nop
/* 6F61C 8006EA1C 312A0004 */  andi       $t2, $t1, 4
/* 6F620 8006EA20 11400004 */  beqz       $t2, .L8006EA34
/* 6F624 8006EA24 00001025 */   or        $v0, $zero, $zero
/* 6F628 8006EA28 03E00008 */  jr         $ra
/* 6F62C 8006EA2C 24020003 */   addiu     $v0, $zero, 3
.L8006EA30:
/* 6F630 8006EA30 00001025 */  or         $v0, $zero, $zero
.L8006EA34:
/* 6F634 8006EA34 03E00008 */  jr         $ra
/* 6F638 8006EA38 00000000 */   nop
