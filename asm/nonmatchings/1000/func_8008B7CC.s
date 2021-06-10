glabel func_8008B7CC
/* 8C3CC 8008B7CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8C3D0 8008B7D0 000E7880 */  sll        $t7, $t6, 2
/* 8C3D4 8008B7D4 01EE7823 */  subu       $t7, $t7, $t6
/* 8C3D8 8008B7D8 000F7880 */  sll        $t7, $t7, 2
/* 8C3DC 8008B7DC 01EE7821 */  addu       $t7, $t7, $t6
/* 8C3E0 8008B7E0 000F7880 */  sll        $t7, $t7, 2
/* 8C3E4 8008B7E4 01EE7823 */  subu       $t7, $t7, $t6
/* 8C3E8 8008B7E8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8C3EC 8008B7EC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8C3F0 8008B7F0 000F78C0 */  sll        $t7, $t7, 3
/* 8C3F4 8008B7F4 01F81021 */  addu       $v0, $t7, $t8
/* 8C3F8 8008B7F8 3C08800C */  lui        $t0, %hi(D_800BE4E0)
/* 8C3FC 8008B7FC 9508E4E0 */  lhu        $t0, %lo(D_800BE4E0)($t0)
/* 8C400 8008B800 8C590164 */  lw         $t9, 0x164($v0)
/* 8C404 8008B804 AFA40000 */  sw         $a0, ($sp)
/* 8C408 8008B808 03284824 */  and        $t1, $t9, $t0
/* 8C40C 8008B80C 15200006 */  bnez       $t1, .L8008B828
/* 8C410 8008B810 00000000 */   nop
/* 8C414 8008B814 8C4A016C */  lw         $t2, 0x16c($v0)
/* 8C418 8008B818 240B0001 */  addiu      $t3, $zero, 1
/* 8C41C 8008B81C 15400002 */  bnez       $t2, .L8008B828
/* 8C420 8008B820 00000000 */   nop
/* 8C424 8008B824 AC4B016C */  sw         $t3, 0x16c($v0)
.L8008B828:
/* 8C428 8008B828 03E00008 */  jr         $ra
/* 8C42C 8008B82C 00000000 */   nop
