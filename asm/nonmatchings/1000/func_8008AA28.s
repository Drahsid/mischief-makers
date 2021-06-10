glabel func_8008AA28
/* 8B628 8008AA28 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8B62C 8008AA2C 000E7880 */  sll        $t7, $t6, 2
/* 8B630 8008AA30 01EE7823 */  subu       $t7, $t7, $t6
/* 8B634 8008AA34 000F7880 */  sll        $t7, $t7, 2
/* 8B638 8008AA38 01EE7821 */  addu       $t7, $t7, $t6
/* 8B63C 8008AA3C 000F7880 */  sll        $t7, $t7, 2
/* 8B640 8008AA40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8B644 8008AA44 01EE7823 */  subu       $t7, $t7, $t6
/* 8B648 8008AA48 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 8B64C 8008AA4C AFB00014 */  sw         $s0, 0x14($sp)
/* 8B650 8008AA50 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 8B654 8008AA54 000F78C0 */  sll        $t7, $t7, 3
/* 8B658 8008AA58 01F88021 */  addu       $s0, $t7, $t8
/* 8B65C 8008AA5C 961900D8 */  lhu        $t9, 0xd8($s0)
/* 8B660 8008AA60 24010001 */  addiu      $at, $zero, 1
/* 8B664 8008AA64 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8B668 8008AA68 AFB10018 */  sw         $s1, 0x18($sp)
/* 8B66C 8008AA6C 17210007 */  bne        $t9, $at, .L8008AA8C
/* 8B670 8008AA70 AFA40020 */   sw        $a0, 0x20($sp)
/* 8B674 8008AA74 86040088 */  lh         $a0, 0x88($s0)
/* 8B678 8008AA78 8605008C */  lh         $a1, 0x8c($s0)
/* 8B67C 8008AA7C 0C004AAD */  jal        func_80012AB4
/* 8B680 8008AA80 00000000 */   nop
/* 8B684 8008AA84 1000002F */  b          .L8008AB44
/* 8B688 8008AA88 3051FFFF */   andi      $s1, $v0, 0xffff
.L8008AA8C:
/* 8B68C 8008AA8C 86040088 */  lh         $a0, 0x88($s0)
/* 8B690 8008AA90 8605008C */  lh         $a1, 0x8c($s0)
/* 8B694 8008AA94 2484FFF8 */  addiu      $a0, $a0, -8
/* 8B698 8008AA98 24A50008 */  addiu      $a1, $a1, 8
/* 8B69C 8008AA9C 00055400 */  sll        $t2, $a1, 0x10
/* 8B6A0 8008AAA0 00044400 */  sll        $t0, $a0, 0x10
/* 8B6A4 8008AAA4 00082403 */  sra        $a0, $t0, 0x10
/* 8B6A8 8008AAA8 0C004AAD */  jal        func_80012AB4
/* 8B6AC 8008AAAC 000A2C03 */   sra       $a1, $t2, 0x10
/* 8B6B0 8008AAB0 86040088 */  lh         $a0, 0x88($s0)
/* 8B6B4 8008AAB4 8605008C */  lh         $a1, 0x8c($s0)
/* 8B6B8 8008AAB8 24840008 */  addiu      $a0, $a0, 8
/* 8B6BC 8008AABC 24A50008 */  addiu      $a1, $a1, 8
/* 8B6C0 8008AAC0 00057400 */  sll        $t6, $a1, 0x10
/* 8B6C4 8008AAC4 00046400 */  sll        $t4, $a0, 0x10
/* 8B6C8 8008AAC8 3051FFFF */  andi       $s1, $v0, 0xffff
/* 8B6CC 8008AACC 000C2403 */  sra        $a0, $t4, 0x10
/* 8B6D0 8008AAD0 0C004AAD */  jal        func_80012AB4
/* 8B6D4 8008AAD4 000E2C03 */   sra       $a1, $t6, 0x10
/* 8B6D8 8008AAD8 86040088 */  lh         $a0, 0x88($s0)
/* 8B6DC 8008AADC 8605008C */  lh         $a1, 0x8c($s0)
/* 8B6E0 8008AAE0 02228825 */  or         $s1, $s1, $v0
/* 8B6E4 8008AAE4 24840008 */  addiu      $a0, $a0, 8
/* 8B6E8 8008AAE8 24A5FFF8 */  addiu      $a1, $a1, -8
/* 8B6EC 8008AAEC 3238FFFF */  andi       $t8, $s1, 0xffff
/* 8B6F0 8008AAF0 00054C00 */  sll        $t1, $a1, 0x10
/* 8B6F4 8008AAF4 0004CC00 */  sll        $t9, $a0, 0x10
/* 8B6F8 8008AAF8 03008825 */  or         $s1, $t8, $zero
/* 8B6FC 8008AAFC 00192403 */  sra        $a0, $t9, 0x10
/* 8B700 8008AB00 0C004AAD */  jal        func_80012AB4
/* 8B704 8008AB04 00092C03 */   sra       $a1, $t1, 0x10
/* 8B708 8008AB08 86040088 */  lh         $a0, 0x88($s0)
/* 8B70C 8008AB0C 8605008C */  lh         $a1, 0x8c($s0)
/* 8B710 8008AB10 02228825 */  or         $s1, $s1, $v0
/* 8B714 8008AB14 2484FFF8 */  addiu      $a0, $a0, -8
/* 8B718 8008AB18 24A5FFF8 */  addiu      $a1, $a1, -8
/* 8B71C 8008AB1C 322BFFFF */  andi       $t3, $s1, 0xffff
/* 8B720 8008AB20 00057400 */  sll        $t6, $a1, 0x10
/* 8B724 8008AB24 00046400 */  sll        $t4, $a0, 0x10
/* 8B728 8008AB28 01608825 */  or         $s1, $t3, $zero
/* 8B72C 8008AB2C 000C2403 */  sra        $a0, $t4, 0x10
/* 8B730 8008AB30 0C004AAD */  jal        func_80012AB4
/* 8B734 8008AB34 000E2C03 */   sra       $a1, $t6, 0x10
/* 8B738 8008AB38 02228825 */  or         $s1, $s1, $v0
/* 8B73C 8008AB3C 3238FFFF */  andi       $t8, $s1, 0xffff
/* 8B740 8008AB40 03008825 */  or         $s1, $t8, $zero
.L8008AB44:
/* 8B744 8008AB44 16200003 */  bnez       $s1, .L8008AB54
/* 8B748 8008AB48 00001025 */   or        $v0, $zero, $zero
/* 8B74C 8008AB4C 10000001 */  b          .L8008AB54
/* 8B750 8008AB50 24020001 */   addiu     $v0, $zero, 1
.L8008AB54:
/* 8B754 8008AB54 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8B758 8008AB58 8FB00014 */  lw         $s0, 0x14($sp)
/* 8B75C 8008AB5C 8FB10018 */  lw         $s1, 0x18($sp)
/* 8B760 8008AB60 03E00008 */  jr         $ra
/* 8B764 8008AB64 27BD0020 */   addiu     $sp, $sp, 0x20
