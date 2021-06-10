glabel func_800AA3B4
/* AAFB4 800AA3B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAFB8 800AA3B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* AAFBC 800AA3BC AFA40020 */  sw         $a0, 0x20($sp)
/* AAFC0 800AA3C0 AFA50024 */  sw         $a1, 0x24($sp)
/* AAFC4 800AA3C4 00002025 */  or         $a0, $zero, $zero
/* AAFC8 800AA3C8 8FA50020 */  lw         $a1, 0x20($sp)
/* AAFCC 800AA3CC 0C02A81F */  jal        func_800AA07C
/* AAFD0 800AA3D0 8FA60024 */   lw        $a2, 0x24($sp)
/* AAFD4 800AA3D4 AFA2001C */  sw         $v0, 0x1c($sp)
/* AAFD8 800AA3D8 8FAE001C */  lw         $t6, 0x1c($sp)
/* AAFDC 800AA3DC 31CF0003 */  andi       $t7, $t6, 3
/* AAFE0 800AA3E0 11E00007 */  beqz       $t7, .L800AA400
/* AAFE4 800AA3E4 00000000 */   nop
/* AAFE8 800AA3E8 8FA40024 */  lw         $a0, 0x24($sp)
/* AAFEC 800AA3EC 00002825 */  or         $a1, $zero, $zero
/* AAFF0 800AA3F0 0C02A6C0 */  jal        func_800A9B00
/* AAFF4 800AA3F4 24840004 */   addiu     $a0, $a0, 4
/* AAFF8 800AA3F8 1000001C */  b          .L800AA46C
/* AAFFC 800AA3FC 00000000 */   nop
.L800AA400:
/* AB000 800AA400 8FB80024 */  lw         $t8, 0x24($sp)
/* AB004 800AA404 8FB9001C */  lw         $t9, 0x1c($sp)
/* AB008 800AA408 17190005 */  bne        $t8, $t9, .L800AA420
/* AB00C 800AA40C 00000000 */   nop
/* AB010 800AA410 1000001A */  b          .L800AA47C
/* AB014 800AA414 00001025 */   or        $v0, $zero, $zero
/* AB018 800AA418 10000014 */  b          .L800AA46C
/* AB01C 800AA41C 00000000 */   nop
.L800AA420:
/* AB020 800AA420 8FA80024 */  lw         $t0, 0x24($sp)
/* AB024 800AA424 0C02A8C1 */  jal        func_800AA304
/* AB028 800AA428 8D040000 */   lw        $a0, ($t0)
/* AB02C 800AA42C 14400006 */  bnez       $v0, .L800AA448
/* AB030 800AA430 00000000 */   nop
/* AB034 800AA434 8FA90024 */  lw         $t1, 0x24($sp)
/* AB038 800AA438 8FAB001C */  lw         $t3, 0x1c($sp)
/* AB03C 800AA43C 252A0008 */  addiu      $t2, $t1, 8
/* AB040 800AA440 154B0006 */  bne        $t2, $t3, .L800AA45C
/* AB044 800AA444 00000000 */   nop
.L800AA448:
/* AB048 800AA448 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB04C 800AA44C 0C02A6C0 */  jal        func_800A9B00
/* AB050 800AA450 00002825 */   or        $a1, $zero, $zero
/* AB054 800AA454 10000005 */  b          .L800AA46C
/* AB058 800AA458 00000000 */   nop
.L800AA45C:
/* AB05C 800AA45C 8FA50024 */  lw         $a1, 0x24($sp)
/* AB060 800AA460 8FA4001C */  lw         $a0, 0x1c($sp)
/* AB064 800AA464 0C02A6C0 */  jal        func_800A9B00
/* AB068 800AA468 24A50008 */   addiu     $a1, $a1, 8
.L800AA46C:
/* AB06C 800AA46C 10000003 */  b          .L800AA47C
/* AB070 800AA470 24020001 */   addiu     $v0, $zero, 1
/* AB074 800AA474 10000001 */  b          .L800AA47C
/* AB078 800AA478 00000000 */   nop
.L800AA47C:
/* AB07C 800AA47C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB080 800AA480 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB084 800AA484 03E00008 */  jr         $ra
/* AB088 800AA488 00000000 */   nop
