glabel func_80006B9C
/* 779C 80006B9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 77A0 80006BA0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 77A4 80006BA4 AFA40020 */  sw         $a0, 0x20($sp)
/* 77A8 80006BA8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 77AC 80006BAC 01C02025 */  or         $a0, $t6, $zero
/* 77B0 80006BB0 A7AE0022 */  sh         $t6, 0x22($sp)
/* 77B4 80006BB4 AFA00010 */  sw         $zero, 0x10($sp)
/* 77B8 80006BB8 240500CA */  addiu      $a1, $zero, 0xca
/* 77BC 80006BBC 3406FF80 */  ori        $a2, $zero, 0xff80
/* 77C0 80006BC0 0C009CFF */  jal        func_800273FC
/* 77C4 80006BC4 24070030 */   addiu     $a3, $zero, 0x30
/* 77C8 80006BC8 97A40022 */  lhu        $a0, 0x22($sp)
/* 77CC 80006BCC 3C18800F */  lui        $t8, 0x800f
/* 77D0 80006BD0 00047880 */  sll        $t7, $a0, 2
/* 77D4 80006BD4 01E47823 */  subu       $t7, $t7, $a0
/* 77D8 80006BD8 000F7880 */  sll        $t7, $t7, 2
/* 77DC 80006BDC 01E47821 */  addu       $t7, $t7, $a0
/* 77E0 80006BE0 000F7880 */  sll        $t7, $t7, 2
/* 77E4 80006BE4 01E47823 */  subu       $t7, $t7, $a0
/* 77E8 80006BE8 000F78C0 */  sll        $t7, $t7, 3
/* 77EC 80006BEC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 77F0 80006BF0 01F81821 */  addu       $v1, $t7, $t8
/* 77F4 80006BF4 94790094 */  lhu        $t9, 0x94($v1)
/* 77F8 80006BF8 24090080 */  addiu      $t1, $zero, 0x80
/* 77FC 80006BFC 3728000F */  ori        $t0, $t9, 0xf
/* 7800 80006C00 A4680094 */  sh         $t0, 0x94($v1)
/* 7804 80006C04 A069009F */  sb         $t1, 0x9f($v1)
/* 7808 80006C08 3C01800F */  lui        $at, %hi(D_800EAF14)
/* 780C 80006C0C C424AF14 */  lwc1       $f4, %lo(D_800EAF14)($at)
/* 7810 80006C10 3C01800F */  lui        $at, %hi(D_800EAF18)
/* 7814 80006C14 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 7818 80006C18 C426AF18 */  lwc1       $f6, %lo(D_800EAF18)($at)
/* 781C 80006C1C 3C01800F */  lui        $at, %hi(D_800EAF1C)
/* 7820 80006C20 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 7824 80006C24 C428AF1C */  lwc1       $f8, %lo(D_800EAF1C)($at)
/* 7828 80006C28 24840001 */  addiu      $a0, $a0, 1
/* 782C 80006C2C 308AFFFF */  andi       $t2, $a0, 0xffff
/* 7830 80006C30 01402025 */  or         $a0, $t2, $zero
/* 7834 80006C34 A7AA0022 */  sh         $t2, 0x22($sp)
/* 7838 80006C38 240500CA */  addiu      $a1, $zero, 0xca
/* 783C 80006C3C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 7840 80006C40 24070030 */  addiu      $a3, $zero, 0x30
/* 7844 80006C44 AFA00010 */  sw         $zero, 0x10($sp)
/* 7848 80006C48 0C009CFF */  jal        func_800273FC
/* 784C 80006C4C E46800C4 */   swc1      $f8, 0xc4($v1)
/* 7850 80006C50 97A40022 */  lhu        $a0, 0x22($sp)
/* 7854 80006C54 3C0C800F */  lui        $t4, 0x800f
/* 7858 80006C58 00045880 */  sll        $t3, $a0, 2
/* 785C 80006C5C 01645823 */  subu       $t3, $t3, $a0
/* 7860 80006C60 000B5880 */  sll        $t3, $t3, 2
/* 7864 80006C64 01645821 */  addu       $t3, $t3, $a0
/* 7868 80006C68 000B5880 */  sll        $t3, $t3, 2
/* 786C 80006C6C 01645823 */  subu       $t3, $t3, $a0
/* 7870 80006C70 000B58C0 */  sll        $t3, $t3, 3
/* 7874 80006C74 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 7878 80006C78 016C1821 */  addu       $v1, $t3, $t4
/* 787C 80006C7C 946D0094 */  lhu        $t5, 0x94($v1)
/* 7880 80006C80 240F0080 */  addiu      $t7, $zero, 0x80
/* 7884 80006C84 35AE000F */  ori        $t6, $t5, 0xf
/* 7888 80006C88 A46E0094 */  sh         $t6, 0x94($v1)
/* 788C 80006C8C A06F009F */  sb         $t7, 0x9f($v1)
/* 7890 80006C90 3C01800F */  lui        $at, %hi(D_800EAF20)
/* 7894 80006C94 C42AAF20 */  lwc1       $f10, %lo(D_800EAF20)($at)
/* 7898 80006C98 3C01800F */  lui        $at, %hi(D_800EAF24)
/* 789C 80006C9C E46A00B4 */  swc1       $f10, 0xb4($v1)
/* 78A0 80006CA0 C430AF24 */  lwc1       $f16, %lo(D_800EAF24)($at)
/* 78A4 80006CA4 3C014234 */  lui        $at, 0x4234
/* 78A8 80006CA8 44819000 */  mtc1       $at, $f18
/* 78AC 80006CAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 78B0 80006CB0 24840001 */  addiu      $a0, $a0, 1
/* 78B4 80006CB4 3082FFFF */  andi       $v0, $a0, 0xffff
/* 78B8 80006CB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 78BC 80006CBC E47000B8 */  swc1       $f16, 0xb8($v1)
/* 78C0 80006CC0 03E00008 */  jr         $ra
/* 78C4 80006CC4 E47200C4 */   swc1      $f18, 0xc4($v1)
