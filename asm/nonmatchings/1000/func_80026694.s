glabel func_80026694
/* 27294 80026694 3087FFFF */  andi       $a3, $a0, 0xffff
/* 27298 80026698 00077080 */  sll        $t6, $a3, 2
/* 2729C 8002669C 3C08800D */  lui        $t0, %hi(D_800CEED0)
/* 272A0 800266A0 01C77023 */  subu       $t6, $t6, $a3
/* 272A4 800266A4 2508EED0 */  addiu      $t0, $t0, %lo(D_800CEED0)
/* 272A8 800266A8 000E7880 */  sll        $t7, $t6, 2
/* 272AC 800266AC 010F1021 */  addu       $v0, $t0, $t7
/* 272B0 800266B0 8C430008 */  lw         $v1, 8($v0)
/* 272B4 800266B4 8D180000 */  lw         $t8, ($t0)
/* 272B8 800266B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 272BC 800266BC 8C4A000C */  lw         $t2, 0xc($v0)
/* 272C0 800266C0 3C09004A */  lui        $t1, 0x4a
/* 272C4 800266C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 272C8 800266C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 272CC 800266CC 25291FC0 */  addiu      $t1, $t1, 0x1fc0
/* 272D0 800266D0 3C05801D */  lui        $a1, 0x801d
/* 272D4 800266D4 0078C823 */  subu       $t9, $v1, $t8
/* 272D8 800266D8 03292021 */  addu       $a0, $t9, $t1
/* 272DC 800266DC 34A54400 */  ori        $a1, $a1, 0x4400
/* 272E0 800266E0 0C00047C */  jal        func_800011F0
/* 272E4 800266E4 01433023 */   subu      $a2, $t2, $v1
/* 272E8 800266E8 3C04801D */  lui        $a0, 0x801d
/* 272EC 800266EC 3C05801C */  lui        $a1, 0x801c
/* 272F0 800266F0 34A54400 */  ori        $a1, $a1, 0x4400
/* 272F4 800266F4 0C001244 */  jal        func_80004910
/* 272F8 800266F8 34844400 */   ori       $a0, $a0, 0x4400
/* 272FC 800266FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27300 80026700 27BD0018 */  addiu      $sp, $sp, 0x18
/* 27304 80026704 03E00008 */  jr         $ra
/* 27308 80026708 00000000 */   nop
