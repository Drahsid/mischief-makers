glabel func_8006DB18
/* 6E718 8006DB18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E71C 8006DB1C AFA40020 */  sw         $a0, 0x20($sp)
/* 6E720 8006DB20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E724 8006DB24 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E728 8006DB28 0C01B242 */  jal        func_8006C908
/* 6E72C 8006DB2C 00000000 */   nop
/* 6E730 8006DB30 14400028 */  bnez       $v0, .L8006DBD4
/* 6E734 8006DB34 3C18800F */   lui       $t8, %hi(D_800EF510)
/* 6E738 8006DB38 97AE0022 */  lhu        $t6, 0x22($sp)
/* 6E73C 8006DB3C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6E740 8006DB40 000E7880 */  sll        $t7, $t6, 2
/* 6E744 8006DB44 01EE7823 */  subu       $t7, $t7, $t6
/* 6E748 8006DB48 000F7880 */  sll        $t7, $t7, 2
/* 6E74C 8006DB4C 01EE7821 */  addu       $t7, $t7, $t6
/* 6E750 8006DB50 000F7880 */  sll        $t7, $t7, 2
/* 6E754 8006DB54 01EE7823 */  subu       $t7, $t7, $t6
/* 6E758 8006DB58 000F78C0 */  sll        $t7, $t7, 3
/* 6E75C 8006DB5C 01F81821 */  addu       $v1, $t7, $t8
/* 6E760 8006DB60 946200D0 */  lhu        $v0, 0xd0($v1)
/* 6E764 8006DB64 240100F0 */  addiu      $at, $zero, 0xf0
/* 6E768 8006DB68 1441000F */  bne        $v0, $at, .L8006DBA8
/* 6E76C 8006DB6C 00002825 */   or        $a1, $zero, $zero
/* 6E770 8006DB70 8C680080 */  lw         $t0, 0x80($v1)
/* 6E774 8006DB74 3C010002 */  lui        $at, 2
/* 6E778 8006DB78 01014825 */  or         $t1, $t0, $at
/* 6E77C 8006DB7C 3C01FFFE */  lui        $at, 0xfffe
/* 6E780 8006DB80 3421FFFF */  ori        $at, $at, 0xffff
/* 6E784 8006DB84 8C6C0098 */  lw         $t4, 0x98($v1)
/* 6E788 8006DB88 01215824 */  and        $t3, $t1, $at
/* 6E78C 8006DB8C 2401FFDF */  addiu      $at, $zero, -0x21
/* 6E790 8006DB90 24590001 */  addiu      $t9, $v0, 1
/* 6E794 8006DB94 AC690080 */  sw         $t1, 0x80($v1)
/* 6E798 8006DB98 01816824 */  and        $t5, $t4, $at
/* 6E79C 8006DB9C A47900D0 */  sh         $t9, 0xd0($v1)
/* 6E7A0 8006DBA0 AC6D0098 */  sw         $t5, 0x98($v1)
/* 6E7A4 8006DBA4 AC6B0080 */  sw         $t3, 0x80($v1)
.L8006DBA8:
/* 6E7A8 8006DBA8 8C6400EC */  lw         $a0, 0xec($v1)
/* 6E7AC 8006DBAC 24061000 */  addiu      $a2, $zero, 0x1000
/* 6E7B0 8006DBB0 0C00A607 */  jal        func_8002981C
/* 6E7B4 8006DBB4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 6E7B8 8006DBB8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6E7BC 8006DBBC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E7C0 8006DBC0 0C01A885 */  jal        func_8006A214
/* 6E7C4 8006DBC4 AC6200EC */   sw        $v0, 0xec($v1)
/* 6E7C8 8006DBC8 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E7CC 8006DBCC 0C01AAFB */  jal        func_8006ABEC
/* 6E7D0 8006DBD0 00002825 */   or        $a1, $zero, $zero
.L8006DBD4:
/* 6E7D4 8006DBD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E7D8 8006DBD8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6E7DC 8006DBDC 03E00008 */  jr         $ra
/* 6E7E0 8006DBE0 00000000 */   nop
