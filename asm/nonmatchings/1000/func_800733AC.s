glabel func_800733AC
/* 73FAC 800733AC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 73FB0 800733B0 000EC080 */  sll        $t8, $t6, 2
/* 73FB4 800733B4 030EC023 */  subu       $t8, $t8, $t6
/* 73FB8 800733B8 0018C080 */  sll        $t8, $t8, 2
/* 73FBC 800733BC 030EC021 */  addu       $t8, $t8, $t6
/* 73FC0 800733C0 0018C080 */  sll        $t8, $t8, 2
/* 73FC4 800733C4 030EC023 */  subu       $t8, $t8, $t6
/* 73FC8 800733C8 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 73FCC 800733CC 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 73FD0 800733D0 0018C0C0 */  sll        $t8, $t8, 3
/* 73FD4 800733D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73FD8 800733D8 03191021 */  addu       $v0, $t8, $t9
/* 73FDC 800733DC 84430184 */  lh         $v1, 0x184($v0)
/* 73FE0 800733E0 84480186 */  lh         $t0, 0x186($v0)
/* 73FE4 800733E4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 73FE8 800733E8 AFA40030 */  sw         $a0, 0x30($sp)
/* 73FEC 800733EC 240F0220 */  addiu      $t7, $zero, 0x220
/* 73FF0 800733F0 2469FFFC */  addiu      $t1, $v1, -4
/* 73FF4 800733F4 246A0004 */  addiu      $t2, $v1, 4
/* 73FF8 800733F8 250B0028 */  addiu      $t3, $t0, 0x28
/* 73FFC 800733FC 250CFFD8 */  addiu      $t4, $t0, -0x28
/* 74000 80073400 01C02025 */  or         $a0, $t6, $zero
/* 74004 80073404 AFAC0020 */  sw         $t4, 0x20($sp)
/* 74008 80073408 AFAB001C */  sw         $t3, 0x1c($sp)
/* 7400C 8007340C AFAA0018 */  sw         $t2, 0x18($sp)
/* 74010 80073410 AFA90014 */  sw         $t1, 0x14($sp)
/* 74014 80073414 AFAF0010 */  sw         $t7, 0x10($sp)
/* 74018 80073418 24050290 */  addiu      $a1, $zero, 0x290
/* 7401C 8007341C 24060290 */  addiu      $a2, $zero, 0x290
/* 74020 80073420 0C01A4C3 */  jal        func_8006930C
/* 74024 80073424 24070240 */   addiu     $a3, $zero, 0x240
/* 74028 80073428 8FBF002C */  lw         $ra, 0x2c($sp)
/* 7402C 8007342C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 74030 80073430 03E00008 */  jr         $ra
/* 74034 80073434 00000000 */   nop
