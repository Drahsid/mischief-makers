glabel func_800313CC
/* 31FCC 800313CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 31FD0 800313D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31FD4 800313D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 31FD8 800313D8 AFA50024 */  sw         $a1, 0x24($sp)
/* 31FDC 800313DC AFA60028 */  sw         $a2, 0x28($sp)
/* 31FE0 800313E0 0C00A14A */  jal        func_80028528
/* 31FE4 800313E4 AFA7002C */   sw        $a3, 0x2c($sp)
/* 31FE8 800313E8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 31FEC 800313EC 34448000 */  ori        $a0, $v0, 0x8000
/* 31FF0 800313F0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 31FF4 800313F4 97A50022 */  lhu        $a1, 0x22($sp)
/* 31FF8 800313F8 8FA60024 */  lw         $a2, 0x24($sp)
/* 31FFC 800313FC 8FA70028 */  lw         $a3, 0x28($sp)
/* 32000 80031400 01C02025 */  or         $a0, $t6, $zero
/* 32004 80031404 0C00C429 */  jal        func_800310A4
/* 32008 80031408 AFAF0010 */   sw        $t7, 0x10($sp)
/* 3200C 8003140C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 32010 80031410 27BD0020 */  addiu      $sp, $sp, 0x20
/* 32014 80031414 03E00008 */  jr         $ra
/* 32018 80031418 00000000 */   nop
