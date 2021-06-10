glabel func_8006DBE4
/* 6E7E4 8006DBE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E7E8 8006DBE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E7EC 8006DBEC AFA40018 */  sw         $a0, 0x18($sp)
/* 6E7F0 8006DBF0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6E7F4 8006DBF4 01C02025 */  or         $a0, $t6, $zero
/* 6E7F8 8006DBF8 0C01B22E */  jal        func_8006C8B8
/* 6E7FC 8006DBFC A7AE001A */   sh        $t6, 0x1a($sp)
/* 6E800 8006DC00 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6E804 8006DC04 14400028 */  bnez       $v0, .L8006DCA8
/* 6E808 8006DC08 00047880 */   sll       $t7, $a0, 2
/* 6E80C 8006DC0C 01E47823 */  subu       $t7, $t7, $a0
/* 6E810 8006DC10 000F7880 */  sll        $t7, $t7, 2
/* 6E814 8006DC14 01E47821 */  addu       $t7, $t7, $a0
/* 6E818 8006DC18 000F7880 */  sll        $t7, $t7, 2
/* 6E81C 8006DC1C 01E47823 */  subu       $t7, $t7, $a0
/* 6E820 8006DC20 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6E824 8006DC24 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6E828 8006DC28 000F78C0 */  sll        $t7, $t7, 3
/* 6E82C 8006DC2C 01F81021 */  addu       $v0, $t7, $t8
/* 6E830 8006DC30 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E834 8006DC34 240100B0 */  addiu      $at, $zero, 0xb0
/* 6E838 8006DC38 14610016 */  bne        $v1, $at, .L8006DC94
/* 6E83C 8006DC3C 24790001 */   addiu     $t9, $v1, 1
/* 6E840 8006DC40 8C480080 */  lw         $t0, 0x80($v0)
/* 6E844 8006DC44 3C010001 */  lui        $at, 1
/* 6E848 8006DC48 01014825 */  or         $t1, $t0, $at
/* 6E84C 8006DC4C 3C01FFFD */  lui        $at, 0xfffd
/* 6E850 8006DC50 3421FFFF */  ori        $at, $at, 0xffff
/* 6E854 8006DC54 8C4C0098 */  lw         $t4, 0x98($v0)
/* 6E858 8006DC58 8C4F0150 */  lw         $t7, 0x150($v0)
/* 6E85C 8006DC5C 01215824 */  and        $t3, $t1, $at
/* 6E860 8006DC60 44802000 */  mtc1       $zero, $f4
/* 6E864 8006DC64 2401FFBF */  addiu      $at, $zero, -0x41
/* 6E868 8006DC68 AC490080 */  sw         $t1, 0x80($v0)
/* 6E86C 8006DC6C 240E689B */  addiu      $t6, $zero, 0x689b
/* 6E870 8006DC70 01816824 */  and        $t5, $t4, $at
/* 6E874 8006DC74 35F81800 */  ori        $t8, $t7, 0x1800
/* 6E878 8006DC78 A45900D0 */  sh         $t9, 0xd0($v0)
/* 6E87C 8006DC7C AC4D0098 */  sw         $t5, 0x98($v0)
/* 6E880 8006DC80 AC4B0080 */  sw         $t3, 0x80($v0)
/* 6E884 8006DC84 A44E0084 */  sh         $t6, 0x84($v0)
/* 6E888 8006DC88 A44000E6 */  sh         $zero, 0xe6($v0)
/* 6E88C 8006DC8C AC580150 */  sw         $t8, 0x150($v0)
/* 6E890 8006DC90 E4440144 */  swc1       $f4, 0x144($v0)
.L8006DC94:
/* 6E894 8006DC94 8C590080 */  lw         $t9, 0x80($v0)
/* 6E898 8006DC98 00000000 */  nop
/* 6E89C 8006DC9C 37280004 */  ori        $t0, $t9, 4
/* 6E8A0 8006DCA0 0C01A993 */  jal        func_8006A64C
/* 6E8A4 8006DCA4 AC480080 */   sw        $t0, 0x80($v0)
.L8006DCA8:
/* 6E8A8 8006DCA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E8AC 8006DCAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6E8B0 8006DCB0 03E00008 */  jr         $ra
/* 6E8B4 8006DCB4 00000000 */   nop
