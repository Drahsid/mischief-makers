glabel func_800152C8
/* 15EC8 800152C8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 15ECC 800152CC 000E7880 */  sll        $t7, $t6, 2
/* 15ED0 800152D0 01EE7823 */  subu       $t7, $t7, $t6
/* 15ED4 800152D4 000F7880 */  sll        $t7, $t7, 2
/* 15ED8 800152D8 01EE7821 */  addu       $t7, $t7, $t6
/* 15EDC 800152DC 000F7880 */  sll        $t7, $t7, 2
/* 15EE0 800152E0 01EE7823 */  subu       $t7, $t7, $t6
/* 15EE4 800152E4 000F78C0 */  sll        $t7, $t7, 3
/* 15EE8 800152E8 3C18800F */  lui        $t8, %hi(FB_BGCOLOR)
/* 15EEC 800152EC 030FC021 */  addu       $t8, $t8, $t7
/* 15EF0 800152F0 3C19800C */  lui        $t9, %hi(D_800BE558)
/* 15EF4 800152F4 8739E558 */  lh         $t9, %lo(D_800BE558)($t9)
/* 15EF8 800152F8 8718F598 */  lh         $t8, %lo(FB_BGCOLOR)($t8)
/* 15EFC 800152FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15F00 80015300 03194021 */  addu       $t0, $t8, $t9
/* 15F04 80015304 3109000F */  andi       $t1, $t0, 0xf
/* 15F08 80015308 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15F0C 8001530C AFA40018 */  sw         $a0, 0x18($sp)
/* 15F10 80015310 240A000F */  addiu      $t2, $zero, 0xf
/* 15F14 80015314 01492823 */  subu       $a1, $t2, $t1
/* 15F18 80015318 0C0053F4 */  jal        func_80014FD0
/* 15F1C 8001531C 01C02025 */   or        $a0, $t6, $zero
/* 15F20 80015320 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15F24 80015324 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15F28 80015328 03E00008 */  jr         $ra
/* 15F2C 8001532C 00000000 */   nop
