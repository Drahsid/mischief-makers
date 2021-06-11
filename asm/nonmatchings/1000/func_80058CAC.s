glabel func_80058CAC
/* 598AC 80058CAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 598B0 80058CB0 000E7880 */  sll        $t7, $t6, 2
/* 598B4 80058CB4 01EE7823 */  subu       $t7, $t7, $t6
/* 598B8 80058CB8 000F7880 */  sll        $t7, $t7, 2
/* 598BC 80058CBC 01EE7821 */  addu       $t7, $t7, $t6
/* 598C0 80058CC0 000F7880 */  sll        $t7, $t7, 2
/* 598C4 80058CC4 01EE7823 */  subu       $t7, $t7, $t6
/* 598C8 80058CC8 3C18800F */  lui        $t8, %hi(gActors)
/* 598CC 80058CCC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 598D0 80058CD0 000F78C0 */  sll        $t7, $t7, 3
/* 598D4 80058CD4 01F81021 */  addu       $v0, $t7, $t8
/* 598D8 80058CD8 8C590080 */  lw         $t9, 0x80($v0)
/* 598DC 80058CDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 598E0 80058CE0 AFA40020 */  sw         $a0, 0x20($sp)
/* 598E4 80058CE4 00194180 */  sll        $t0, $t9, 6
/* 598E8 80058CE8 01C02025 */  or         $a0, $t6, $zero
/* 598EC 80058CEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 598F0 80058CF0 05010008 */  bgez       $t0, .L80058D14
/* 598F4 80058CF4 AFA50024 */   sw        $a1, 0x24($sp)
/* 598F8 80058CF8 944500D6 */  lhu        $a1, 0xd6($v0)
/* 598FC 80058CFC AFA2001C */  sw         $v0, 0x1c($sp)
/* 59900 80058D00 0C013D45 */  jal        func_8004F514
/* 59904 80058D04 A7AE0022 */   sh        $t6, 0x22($sp)
/* 59908 80058D08 8FA2001C */  lw         $v0, 0x1c($sp)
/* 5990C 80058D0C 97A40022 */  lhu        $a0, 0x22($sp)
/* 59910 80058D10 00000000 */  nop
.L80058D14:
/* 59914 80058D14 0C016249 */  jal        func_80058924
/* 59918 80058D18 AFA2001C */   sw        $v0, 0x1c($sp)
/* 5991C 80058D1C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 59920 80058D20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59924 80058D24 24090032 */  addiu      $t1, $zero, 0x32
/* 59928 80058D28 240A2000 */  addiu      $t2, $zero, 0x2000
/* 5992C 80058D2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 59930 80058D30 A44900D0 */  sh         $t1, 0xd0($v0)
/* 59934 80058D34 03E00008 */  jr         $ra
/* 59938 80058D38 AC4A0158 */   sw        $t2, 0x158($v0)
