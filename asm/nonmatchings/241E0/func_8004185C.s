glabel func_8004185C
/* 4245C 8004185C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 42460 80041860 000E7880 */  sll        $t7, $t6, 2
/* 42464 80041864 01EE7823 */  subu       $t7, $t7, $t6
/* 42468 80041868 000F7880 */  sll        $t7, $t7, 2
/* 4246C 8004186C 01EE7821 */  addu       $t7, $t7, $t6
/* 42470 80041870 000F7880 */  sll        $t7, $t7, 2
/* 42474 80041874 01EE7823 */  subu       $t7, $t7, $t6
/* 42478 80041878 000F78C0 */  sll        $t7, $t7, 3
/* 4247C 8004187C 3C18800F */  lui        $t8, %hi(D_800EF5E0)
/* 42480 80041880 030FC021 */  addu       $t8, $t8, $t7
/* 42484 80041884 9718F5E0 */  lhu        $t8, %lo(D_800EF5E0)($t8)
/* 42488 80041888 24010002 */  addiu      $at, $zero, 2
/* 4248C 8004188C 17010003 */  bne        $t8, $at, .L8004189C
/* 42490 80041890 AFA40000 */   sw        $a0, ($sp)
/* 42494 80041894 03E00008 */  jr         $ra
/* 42498 80041898 24020001 */   addiu     $v0, $zero, 1
.L8004189C:
/* 4249C 8004189C 00001025 */  or         $v0, $zero, $zero
/* 424A0 800418A0 03E00008 */  jr         $ra
/* 424A4 800418A4 00000000 */   nop