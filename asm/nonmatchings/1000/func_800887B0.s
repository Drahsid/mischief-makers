glabel func_800887B0
/* 893B0 800887B0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 893B4 800887B4 000E7880 */  sll        $t7, $t6, 2
/* 893B8 800887B8 01EE7823 */  subu       $t7, $t7, $t6
/* 893BC 800887BC 000F7880 */  sll        $t7, $t7, 2
/* 893C0 800887C0 01EE7821 */  addu       $t7, $t7, $t6
/* 893C4 800887C4 000F7880 */  sll        $t7, $t7, 2
/* 893C8 800887C8 01EE7823 */  subu       $t7, $t7, $t6
/* 893CC 800887CC 3C18800F */  lui        $t8, %hi(gActors)
/* 893D0 800887D0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 893D4 800887D4 000F78C0 */  sll        $t7, $t7, 3
/* 893D8 800887D8 01F81021 */  addu       $v0, $t7, $t8
/* 893DC 800887DC 8C590080 */  lw         $t9, 0x80($v0)
/* 893E0 800887E0 AFA40000 */  sw         $a0, ($sp)
/* 893E4 800887E4 37281780 */  ori        $t0, $t9, 0x1780
/* 893E8 800887E8 03E00008 */  jr         $ra
/* 893EC 800887EC AC480080 */   sw        $t0, 0x80($v0)
