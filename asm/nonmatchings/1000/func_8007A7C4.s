glabel func_8007A7C4
/* 7B3C4 8007A7C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B3C8 8007A7C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 7B3CC 8007A7CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B3D0 8007A7D0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 7B3D4 8007A7D4 0C01E9C8 */  jal        func_8007A720
/* 7B3D8 8007A7D8 00000000 */   nop
/* 7B3DC 8007A7DC 97AE001A */  lhu        $t6, 0x1a($sp)
/* 7B3E0 8007A7E0 3C18800F */  lui        $t8, 0x800f
/* 7B3E4 8007A7E4 000E7880 */  sll        $t7, $t6, 2
/* 7B3E8 8007A7E8 01EE7823 */  subu       $t7, $t7, $t6
/* 7B3EC 8007A7EC 000F7880 */  sll        $t7, $t7, 2
/* 7B3F0 8007A7F0 01EE7821 */  addu       $t7, $t7, $t6
/* 7B3F4 8007A7F4 000F7880 */  sll        $t7, $t7, 2
/* 7B3F8 8007A7F8 01EE7823 */  subu       $t7, $t7, $t6
/* 7B3FC 8007A7FC 000F78C0 */  sll        $t7, $t7, 3
/* 7B400 8007A800 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 7B404 8007A804 01F81021 */  addu       $v0, $t7, $t8
/* 7B408 8007A808 8C480080 */  lw         $t0, 0x80($v0)
/* 7B40C 8007A80C 3C010002 */  lui        $at, 2
/* 7B410 8007A810 01014825 */  or         $t1, $t0, $at
/* 7B414 8007A814 3C01FFFE */  lui        $at, 0xfffe
/* 7B418 8007A818 3421FFFF */  ori        $at, $at, 0xffff
/* 7B41C 8007A81C 8C4C0098 */  lw         $t4, 0x98($v0)
/* 7B420 8007A820 01215824 */  and        $t3, $t1, $at
/* 7B424 8007A824 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7B428 8007A828 2401FFDF */  addiu      $at, $zero, -0x21
/* 7B42C 8007A82C 24190400 */  addiu      $t9, $zero, 0x400
/* 7B430 8007A830 AC490080 */  sw         $t1, 0x80($v0)
/* 7B434 8007A834 01816824 */  and        $t5, $t4, $at
/* 7B438 8007A838 A45900D0 */  sh         $t9, 0xd0($v0)
/* 7B43C 8007A83C AC4D0098 */  sw         $t5, 0x98($v0)
/* 7B440 8007A840 AC4B0080 */  sw         $t3, 0x80($v0)
/* 7B444 8007A844 03E00008 */  jr         $ra
/* 7B448 8007A848 27BD0018 */   addiu     $sp, $sp, 0x18
