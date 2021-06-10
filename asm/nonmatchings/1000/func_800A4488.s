glabel func_800A4488
/* A5088 800A4488 AFA60008 */  sw         $a2, 8($sp)
/* A508C 800A448C AFA7000C */  sw         $a3, 0xc($sp)
/* A5090 800A4490 87AF0012 */  lh         $t7, 0x12($sp)
/* A5094 800A4494 DFAE0008 */  ld         $t6, 8($sp)
/* A5098 800A4498 01E0C025 */  or         $t8, $t7, $zero
/* A509C 800A449C 0300C825 */  or         $t9, $t8, $zero
/* A50A0 800A44A0 01D9001F */  ddivu      $zero, $t6, $t9
/* A50A4 800A44A4 17200002 */  bnez       $t9, .L800A44B0
/* A50A8 800A44A8 00000000 */   nop
/* A50AC 800A44AC 0007000D */  break      7
.L800A44B0:
/* A50B0 800A44B0 00004012 */   mflo      $t0
/* A50B4 800A44B4 FC880000 */  sd         $t0, ($a0)
/* A50B8 800A44B8 00000000 */  nop
/* A50BC 800A44BC 87AA0012 */  lh         $t2, 0x12($sp)
/* A50C0 800A44C0 DFA90008 */  ld         $t1, 8($sp)
/* A50C4 800A44C4 01405825 */  or         $t3, $t2, $zero
/* A50C8 800A44C8 01606025 */  or         $t4, $t3, $zero
/* A50CC 800A44CC 012C001F */  ddivu      $zero, $t1, $t4
/* A50D0 800A44D0 15800002 */  bnez       $t4, .L800A44DC
/* A50D4 800A44D4 00000000 */   nop
/* A50D8 800A44D8 0007000D */  break      7
.L800A44DC:
/* A50DC 800A44DC 00006810 */   mfhi      $t5
/* A50E0 800A44E0 FCAD0000 */  sd         $t5, ($a1)
/* A50E4 800A44E4 00000000 */  nop
/* A50E8 800A44E8 10000001 */  b          .L800A44F0
/* A50EC 800A44EC 00000000 */   nop
.L800A44F0:
/* A50F0 800A44F0 03E00008 */  jr         $ra
/* A50F4 800A44F4 00000000 */   nop
