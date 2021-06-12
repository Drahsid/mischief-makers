glabel func_8002EBB8
/* 2F7B8 8002EBB8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2F7BC 8002EBBC 000E7880 */  sll        $t7, $t6, 2
/* 2F7C0 8002EBC0 01EE7823 */  subu       $t7, $t7, $t6
/* 2F7C4 8002EBC4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2F7C8 8002EBC8 000F7880 */  sll        $t7, $t7, 2
/* 2F7CC 8002EBCC 01EE7821 */  addu       $t7, $t7, $t6
/* 2F7D0 8002EBD0 000F7880 */  sll        $t7, $t7, 2
/* 2F7D4 8002EBD4 01EE7823 */  subu       $t7, $t7, $t6
/* 2F7D8 8002EBD8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2F7DC 8002EBDC AFB00018 */  sw         $s0, 0x18($sp)
/* 2F7E0 8002EBE0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2F7E4 8002EBE4 000F78C0 */  sll        $t7, $t7, 3
/* 2F7E8 8002EBE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2F7EC 8002EBEC AFA40020 */  sw         $a0, 0x20($sp)
/* 2F7F0 8002EBF0 01F88021 */  addu       $s0, $t7, $t8
/* 2F7F4 8002EBF4 24192602 */  addiu      $t9, $zero, 0x2602
/* 2F7F8 8002EBF8 01C02025 */  or         $a0, $t6, $zero
/* 2F7FC 8002EBFC AFA50024 */  sw         $a1, 0x24($sp)
/* 2F800 8002EC00 AFA60028 */  sw         $a2, 0x28($sp)
/* 2F804 8002EC04 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2F808 8002EC08 A61900D2 */  sh         $t9, 0xd2($s0)
/* 2F80C 8002EC0C 0C0078B4 */  jal        func_8001E2D0
/* 2F810 8002EC10 A7AE0022 */   sh        $t6, 0x22($sp)
/* 2F814 8002EC14 3C01800F */  lui        $at, %hi(D_800EB904)
/* 2F818 8002EC18 C420B904 */  lwc1       $f0, %lo(D_800EB904)($at)
/* 2F81C 8002EC1C 24020004 */  addiu      $v0, $zero, 4
/* 2F820 8002EC20 24080009 */  addiu      $t0, $zero, 9
/* 2F824 8002EC24 24090007 */  addiu      $t1, $zero, 7
/* 2F828 8002EC28 240A024A */  addiu      $t2, $zero, 0x24a
/* 2F82C 8002EC2C 240B0005 */  addiu      $t3, $zero, 5
/* 2F830 8002EC30 97A40022 */  lhu        $a0, 0x22($sp)
/* 2F834 8002EC34 A6080094 */  sh         $t0, 0x94($s0)
/* 2F838 8002EC38 AE090080 */  sw         $t1, 0x80($s0)
/* 2F83C 8002EC3C A60A0084 */  sh         $t2, 0x84($s0)
/* 2F840 8002EC40 A60B00CE */  sh         $t3, 0xce($s0)
/* 2F844 8002EC44 A20000DF */  sb         $zero, 0xdf($s0)
/* 2F848 8002EC48 A20200DA */  sb         $v0, 0xda($s0)
/* 2F84C 8002EC4C A20200DB */  sb         $v0, 0xdb($s0)
/* 2F850 8002EC50 24050004 */  addiu      $a1, $zero, 4
/* 2F854 8002EC54 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 2F858 8002EC58 0C00AAF9 */  jal        func_8002ABE4
/* 2F85C 8002EC5C E60000B8 */   swc1      $f0, 0xb8($s0)
/* 2F860 8002EC60 97A40022 */  lhu        $a0, 0x22($sp)
/* 2F864 8002EC64 0C00AB0C */  jal        func_8002AC30
/* 2F868 8002EC68 24050008 */   addiu     $a1, $zero, 8
/* 2F86C 8002EC6C 87AE0026 */  lh         $t6, 0x26($sp)
/* 2F870 8002EC70 87AF002A */  lh         $t7, 0x2a($sp)
/* 2F874 8002EC74 8FB8002C */  lw         $t8, 0x2c($sp)
/* 2F878 8002EC78 8FB90030 */  lw         $t9, 0x30($sp)
/* 2F87C 8002EC7C 240C0001 */  addiu      $t4, $zero, 1
/* 2F880 8002EC80 240D001E */  addiu      $t5, $zero, 0x1e
/* 2F884 8002EC84 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2F888 8002EC88 A60C00E0 */  sh         $t4, 0xe0($s0)
/* 2F88C 8002EC8C A60D00E4 */  sh         $t5, 0xe4($s0)
/* 2F890 8002EC90 A60E0088 */  sh         $t6, 0x88($s0)
/* 2F894 8002EC94 A60F008C */  sh         $t7, 0x8c($s0)
/* 2F898 8002EC98 AE1800EC */  sw         $t8, 0xec($s0)
/* 2F89C 8002EC9C AE1900F0 */  sw         $t9, 0xf0($s0)
/* 2F8A0 8002ECA0 8FB00018 */  lw         $s0, 0x18($sp)
/* 2F8A4 8002ECA4 03E00008 */  jr         $ra
/* 2F8A8 8002ECA8 27BD0020 */   addiu     $sp, $sp, 0x20
