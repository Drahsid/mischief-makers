glabel func_80058F54
/* 59B54 80058F54 308EFFFF */  andi       $t6, $a0, 0xffff
/* 59B58 80058F58 000E7880 */  sll        $t7, $t6, 2
/* 59B5C 80058F5C 01EE7823 */  subu       $t7, $t7, $t6
/* 59B60 80058F60 000F7880 */  sll        $t7, $t7, 2
/* 59B64 80058F64 01EE7821 */  addu       $t7, $t7, $t6
/* 59B68 80058F68 000F7880 */  sll        $t7, $t7, 2
/* 59B6C 80058F6C 01EE7823 */  subu       $t7, $t7, $t6
/* 59B70 80058F70 3C18800F */  lui        $t8, %hi(gActors)
/* 59B74 80058F74 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 59B78 80058F78 000F78C0 */  sll        $t7, $t7, 3
/* 59B7C 80058F7C 01F81021 */  addu       $v0, $t7, $t8
/* 59B80 80058F80 8C5900EC */  lw         $t9, 0xec($v0)
/* 59B84 80058F84 2408002A */  addiu      $t0, $zero, 0x2a
/* 59B88 80058F88 AFA40000 */  sw         $a0, ($sp)
/* 59B8C 80058F8C AFA50004 */  sw         $a1, 4($sp)
/* 59B90 80058F90 A44800D0 */  sh         $t0, 0xd0($v0)
/* 59B94 80058F94 03E00008 */  jr         $ra
/* 59B98 80058F98 AC5900F8 */   sw        $t9, 0xf8($v0)
