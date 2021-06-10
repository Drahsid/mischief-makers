glabel func_8008FB20
/* 90720 8008FB20 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 90724 8008FB24 AFB10028 */  sw         $s1, 0x28($sp)
/* 90728 8008FB28 3091FFFF */  andi       $s1, $a0, 0xffff
/* 9072C 8008FB2C 00117080 */  sll        $t6, $s1, 2
/* 90730 8008FB30 01D17023 */  subu       $t6, $t6, $s1
/* 90734 8008FB34 000E7080 */  sll        $t6, $t6, 2
/* 90738 8008FB38 01D17021 */  addu       $t6, $t6, $s1
/* 9073C 8008FB3C 000E7080 */  sll        $t6, $t6, 2
/* 90740 8008FB40 01D17023 */  subu       $t6, $t6, $s1
/* 90744 8008FB44 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 90748 8008FB48 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 9074C 8008FB4C 000E70C0 */  sll        $t6, $t6, 3
/* 90750 8008FB50 01CF1821 */  addu       $v1, $t6, $t7
/* 90754 8008FB54 8C780168 */  lw         $t8, 0x168($v1)
/* 90758 8008FB58 3C01800F */  lui        $at, %hi(D_800ED350)
/* 9075C 8008FB5C 44982000 */  mtc1       $t8, $f4
/* 90760 8008FB60 C428D350 */  lwc1       $f8, %lo(D_800ED350)($at)
/* 90764 8008FB64 468021A0 */  cvt.s.w    $f6, $f4
/* 90768 8008FB68 3C014040 */  lui        $at, 0x4040
/* 9076C 8008FB6C 44815000 */  mtc1       $at, $f10
/* 90770 8008FB70 46083003 */  div.s      $f0, $f6, $f8
/* 90774 8008FB74 3C01800F */  lui        $at, %hi(D_800ED358)
/* 90778 8008FB78 C425D358 */  lwc1       $f5, %lo(D_800ED358)($at)
/* 9077C 8008FB7C C424D35C */  lwc1       $f4, -0x2ca4($at)
/* 90780 8008FB80 AFA40048 */  sw         $a0, 0x48($sp)
/* 90784 8008FB84 26240008 */  addiu      $a0, $s1, 8
/* 90788 8008FB88 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9078C 8008FB8C AFB00024 */  sw         $s0, 0x24($sp)
/* 90790 8008FB90 3099FFFF */  andi       $t9, $a0, 0xffff
/* 90794 8008FB94 2408FFFF */  addiu      $t0, $zero, -1
/* 90798 8008FB98 AFA80010 */  sw         $t0, 0x10($sp)
/* 9079C 8008FB9C 03202025 */  or         $a0, $t9, $zero
/* 907A0 8008FBA0 46005402 */  mul.s      $f16, $f10, $f0
/* 907A4 8008FBA4 460004A1 */  cvt.d.s    $f18, $f0
/* 907A8 8008FBA8 AFB90034 */  sw         $t9, 0x34($sp)
/* 907AC 8008FBAC 02208025 */  or         $s0, $s1, $zero
/* 907B0 8008FBB0 46249182 */  mul.d      $f6, $f18, $f4
/* 907B4 8008FBB4 44078000 */  mfc1       $a3, $f16
/* 907B8 8008FBB8 AFA3003C */  sw         $v1, 0x3c($sp)
/* 907BC 8008FBBC 2405182A */  addiu      $a1, $zero, 0x182a
/* 907C0 8008FBC0 24060300 */  addiu      $a2, $zero, 0x300
/* 907C4 8008FBC4 462030A0 */  cvt.s.d    $f2, $f6
/* 907C8 8008FBC8 E7A20014 */  swc1       $f2, 0x14($sp)
/* 907CC 8008FBCC 0C00CB98 */  jal        func_80032E60
/* 907D0 8008FBD0 E7A20018 */   swc1      $f2, 0x18($sp)
/* 907D4 8008FBD4 8FA3003C */  lw         $v1, 0x3c($sp)
/* 907D8 8008FBD8 24060018 */  addiu      $a2, $zero, 0x18
/* 907DC 8008FBDC 8FA40034 */  lw         $a0, 0x34($sp)
/* 907E0 8008FBE0 00002825 */  or         $a1, $zero, $zero
/* 907E4 8008FBE4 A066009C */  sb         $a2, 0x9c($v1)
/* 907E8 8008FBE8 A066009D */  sb         $a2, 0x9d($v1)
/* 907EC 8008FBEC 0C00ABAD */  jal        func_8002AEB4
/* 907F0 8008FBF0 A066009E */   sb        $a2, 0x9e($v1)
/* 907F4 8008FBF4 2604000B */  addiu      $a0, $s0, 0xb
/* 907F8 8008FBF8 3089FFFF */  andi       $t1, $a0, 0xffff
/* 907FC 8008FBFC 01202025 */  or         $a0, $t1, $zero
/* 90800 8008FC00 AFA9003C */  sw         $t1, 0x3c($sp)
/* 90804 8008FC04 0C00ABAD */  jal        func_8002AEB4
/* 90808 8008FC08 00002825 */   or        $a1, $zero, $zero
/* 9080C 8008FC0C 26040013 */  addiu      $a0, $s0, 0x13
/* 90810 8008FC10 308AFFFF */  andi       $t2, $a0, 0xffff
/* 90814 8008FC14 01402025 */  or         $a0, $t2, $zero
/* 90818 8008FC18 0C00ABAD */  jal        func_8002AEB4
/* 9081C 8008FC1C 00002825 */   or        $a1, $zero, $zero
/* 90820 8008FC20 26040015 */  addiu      $a0, $s0, 0x15
/* 90824 8008FC24 308BFFFF */  andi       $t3, $a0, 0xffff
/* 90828 8008FC28 01602025 */  or         $a0, $t3, $zero
/* 9082C 8008FC2C 0C00ABAD */  jal        func_8002AEB4
/* 90830 8008FC30 00002825 */   or        $a1, $zero, $zero
/* 90834 8008FC34 26040017 */  addiu      $a0, $s0, 0x17
/* 90838 8008FC38 308CFFFF */  andi       $t4, $a0, 0xffff
/* 9083C 8008FC3C 01802025 */  or         $a0, $t4, $zero
/* 90840 8008FC40 0C00ABAD */  jal        func_8002AEB4
/* 90844 8008FC44 00002825 */   or        $a1, $zero, $zero
/* 90848 8008FC48 26050003 */  addiu      $a1, $s0, 3
/* 9084C 8008FC4C 30ADFFFF */  andi       $t5, $a1, 0xffff
/* 90850 8008FC50 3C06800F */  lui        $a2, %hi(D_800E9210)
/* 90854 8008FC54 24C69210 */  addiu      $a2, $a2, %lo(D_800E9210)
/* 90858 8008FC58 01A02825 */  or         $a1, $t5, $zero
/* 9085C 8008FC5C 0C023E94 */  jal        func_8008FA50
/* 90860 8008FC60 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90864 8008FC64 26050007 */  addiu      $a1, $s0, 7
/* 90868 8008FC68 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 9086C 8008FC6C 3C06800F */  lui        $a2, %hi(D_800E921C)
/* 90870 8008FC70 24C6921C */  addiu      $a2, $a2, %lo(D_800E921C)
/* 90874 8008FC74 01C02825 */  or         $a1, $t6, $zero
/* 90878 8008FC78 0C023E94 */  jal        func_8008FA50
/* 9087C 8008FC7C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90880 8008FC80 97A5003E */  lhu        $a1, 0x3e($sp)
/* 90884 8008FC84 3C06800F */  lui        $a2, %hi(D_800E9224)
/* 90888 8008FC88 24C69224 */  addiu      $a2, $a2, %lo(D_800E9224)
/* 9088C 8008FC8C 0C023E94 */  jal        func_8008FA50
/* 90890 8008FC90 3224FFFF */   andi      $a0, $s1, 0xffff
/* 90894 8008FC94 0C0115C7 */  jal        func_8004571C
/* 90898 8008FC98 00000000 */   nop
/* 9089C 8008FC9C 0010C080 */  sll        $t8, $s0, 2
/* 908A0 8008FCA0 0310C023 */  subu       $t8, $t8, $s0
/* 908A4 8008FCA4 0018C080 */  sll        $t8, $t8, 2
/* 908A8 8008FCA8 0310C021 */  addu       $t8, $t8, $s0
/* 908AC 8008FCAC 0018C080 */  sll        $t8, $t8, 2
/* 908B0 8008FCB0 0310C023 */  subu       $t8, $t8, $s0
/* 908B4 8008FCB4 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 908B8 8008FCB8 3C0F8033 */  lui        $t7, %hi(D_80335ED4)
/* 908BC 8008FCBC 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 908C0 8008FCC0 0018C0C0 */  sll        $t8, $t8, 3
/* 908C4 8008FCC4 A5E25ED4 */  sh         $v0, %lo(D_80335ED4)($t7)
/* 908C8 8008FCC8 03191821 */  addu       $v1, $t8, $t9
/* 908CC 8008FCCC 8C68061C */  lw         $t0, 0x61c($v1)
/* 908D0 8008FCD0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 908D4 8008FCD4 00084823 */  negu       $t1, $t0
/* 908D8 8008FCD8 05210004 */  bgez       $t1, .L8008FCEC
/* 908DC 8008FCDC 00095403 */   sra       $t2, $t1, 0x10
/* 908E0 8008FCE0 3401FFFF */  ori        $at, $zero, 0xffff
/* 908E4 8008FCE4 00290821 */  addu       $at, $at, $t1
/* 908E8 8008FCE8 00015403 */  sra        $t2, $at, 0x10
.L8008FCEC:
/* 908EC 8008FCEC 448A4000 */  mtc1       $t2, $f8
/* 908F0 8008FCF0 8FB10028 */  lw         $s1, 0x28($sp)
/* 908F4 8008FCF4 468042A0 */  cvt.s.w    $f10, $f8
/* 908F8 8008FCF8 8FB00024 */  lw         $s0, 0x24($sp)
/* 908FC 8008FCFC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 90900 8008FD00 03E00008 */  jr         $ra
/* 90904 8008FD04 E46A0600 */   swc1      $f10, 0x600($v1)
