glabel func_80028C80
/* 29880 80028C80 308EFFFF */  andi       $t6, $a0, 0xffff
/* 29884 80028C84 000E7880 */  sll        $t7, $t6, 2
/* 29888 80028C88 01EE7823 */  subu       $t7, $t7, $t6
/* 2988C 80028C8C 000F7880 */  sll        $t7, $t7, 2
/* 29890 80028C90 01EE7821 */  addu       $t7, $t7, $t6
/* 29894 80028C94 000F7880 */  sll        $t7, $t7, 2
/* 29898 80028C98 01EE7823 */  subu       $t7, $t7, $t6
/* 2989C 80028C9C 3C18800F */  lui        $t8, %hi(gActors)
/* 298A0 80028CA0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 298A4 80028CA4 000F78C0 */  sll        $t7, $t7, 3
/* 298A8 80028CA8 01F81821 */  addu       $v1, $t7, $t8
/* 298AC 80028CAC 8C790098 */  lw         $t9, 0x98($v1)
/* 298B0 80028CB0 AFA40000 */  sw         $a0, ($sp)
/* 298B4 80028CB4 33280200 */  andi       $t0, $t9, 0x200
/* 298B8 80028CB8 11000008 */  beqz       $t0, .L80028CDC
/* 298BC 80028CBC 00001025 */   or        $v0, $zero, $zero
/* 298C0 80028CC0 8C690104 */  lw         $t1, 0x104($v1)
/* 298C4 80028CC4 8C6A0108 */  lw         $t2, 0x108($v1)
/* 298C8 80028CC8 8C6B010C */  lw         $t3, 0x10c($v1)
/* 298CC 80028CCC AC690088 */  sw         $t1, 0x88($v1)
/* 298D0 80028CD0 AC6A008C */  sw         $t2, 0x8c($v1)
/* 298D4 80028CD4 03E00008 */  jr         $ra
/* 298D8 80028CD8 AC6B0090 */   sw        $t3, 0x90($v1)
.L80028CDC:
/* 298DC 80028CDC 24020001 */  addiu      $v0, $zero, 1
/* 298E0 80028CE0 03E00008 */  jr         $ra
/* 298E4 80028CE4 00000000 */   nop