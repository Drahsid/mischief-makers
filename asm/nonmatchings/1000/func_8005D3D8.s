glabel func_8005D3D8
/* 5DFD8 8005D3D8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DFDC 8005D3DC 000E7880 */  sll        $t7, $t6, 2
/* 5DFE0 8005D3E0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFE4 8005D3E4 000F7880 */  sll        $t7, $t7, 2
/* 5DFE8 8005D3E8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DFEC 8005D3EC 000F7880 */  sll        $t7, $t7, 2
/* 5DFF0 8005D3F0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DFF4 8005D3F4 3C18800F */  lui        $t8, %hi(gActors)
/* 5DFF8 8005D3F8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5DFFC 8005D3FC 000F78C0 */  sll        $t7, $t7, 3
/* 5E000 8005D400 01F81021 */  addu       $v0, $t7, $t8
/* 5E004 8005D404 94590172 */  lhu        $t9, 0x172($v0)
/* 5E008 8005D408 AFA40000 */  sw         $a0, ($sp)
/* 5E00C 8005D40C 33281FFF */  andi       $t0, $t9, 0x1fff
/* 5E010 8005D410 03E00008 */  jr         $ra
/* 5E014 8005D414 A4480172 */   sh        $t0, 0x172($v0)
