glabel func_80019FB4
/* 1ABB4 80019FB4 3C188018 */  lui        $t8, %hi(D_8017815C)
/* 1ABB8 80019FB8 9718815C */  lhu        $t8, %lo(D_8017815C)($t8)
/* 1ABBC 80019FBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1ABC0 80019FC0 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1ABC4 80019FC4 97AF002E */  lhu        $t7, 0x2e($sp)
/* 1ABC8 80019FC8 3C08800D */  lui        $t0, %hi(D_800C8E58)
/* 1ABCC 80019FCC 0018C880 */  sll        $t9, $t8, 2
/* 1ABD0 80019FD0 01194021 */  addu       $t0, $t0, $t9
/* 1ABD4 80019FD4 8D088E58 */  lw         $t0, %lo(D_800C8E58)($t0)
/* 1ABD8 80019FD8 000F1040 */  sll        $v0, $t7, 1
/* 1ABDC 80019FDC 3C06800D */  lui        $a2, 0x800d
/* 1ABE0 80019FE0 3C07800D */  lui        $a3, 0x800d
/* 1ABE4 80019FE4 000F1880 */  sll        $v1, $t7, 2
/* 1ABE8 80019FE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1ABEC 80019FEC AFA40028 */  sw         $a0, 0x28($sp)
/* 1ABF0 80019FF0 00E23821 */  addu       $a3, $a3, $v0
/* 1ABF4 80019FF4 00C23021 */  addu       $a2, $a2, $v0
/* 1ABF8 80019FF8 01034821 */  addu       $t1, $t0, $v1
/* 1ABFC 80019FFC 84C695F4 */  lh         $a2, -0x6a0c($a2)
/* 1AC00 8001A000 84E79610 */  lh         $a3, -0x69f0($a3)
/* 1AC04 8001A004 8D250000 */  lw         $a1, ($t1)
/* 1AC08 8001A008 3C0D800D */  lui        $t5, 0x800d
/* 1AC0C 8001A00C 24C6FFF7 */  addiu      $a2, $a2, -9
/* 1AC10 8001A010 24E7FFF9 */  addiu      $a3, $a3, -7
/* 1AC14 8001A014 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1AC18 8001A018 30EBFFFF */  andi       $t3, $a3, 0xffff
/* 1AC1C 8001A01C 30CAFFFF */  andi       $t2, $a2, 0xffff
/* 1AC20 8001A020 25AD1788 */  addiu      $t5, $t5, 0x1788
/* 1AC24 8001A024 240C0001 */  addiu      $t4, $zero, 1
/* 1AC28 8001A028 01C02025 */  or         $a0, $t6, $zero
/* 1AC2C 8001A02C AFAC0010 */  sw         $t4, 0x10($sp)
/* 1AC30 8001A030 AFAD0014 */  sw         $t5, 0x14($sp)
/* 1AC34 8001A034 01403025 */  or         $a2, $t2, $zero
/* 1AC38 8001A038 01603825 */  or         $a3, $t3, $zero
/* 1AC3C 8001A03C A7AE002A */  sh         $t6, 0x2a($sp)
/* 1AC40 8001A040 0C009DB7 */  jal        func_800276DC
/* 1AC44 8001A044 AFA30020 */   sw        $v1, 0x20($sp)
/* 1AC48 8001A048 3C188018 */  lui        $t8, %hi(D_8017815C)
/* 1AC4C 8001A04C 9718815C */  lhu        $t8, %lo(D_8017815C)($t8)
/* 1AC50 8001A050 3C08800D */  lui        $t0, %hi(D_800C8E58)
/* 1AC54 8001A054 0018C880 */  sll        $t9, $t8, 2
/* 1AC58 8001A058 01194021 */  addu       $t0, $t0, $t9
/* 1AC5C 8001A05C 8FA30020 */  lw         $v1, 0x20($sp)
/* 1AC60 8001A060 8D088E58 */  lw         $t0, %lo(D_800C8E58)($t0)
/* 1AC64 8001A064 97A4002A */  lhu        $a0, 0x2a($sp)
/* 1AC68 8001A068 01034821 */  addu       $t1, $t0, $v1
/* 1AC6C 8001A06C 8D2F0000 */  lw         $t7, ($t1)
/* 1AC70 8001A070 3C0E800D */  lui        $t6, %hi(D_800C85E0)
/* 1AC74 8001A074 25CE85E0 */  addiu      $t6, $t6, %lo(D_800C85E0)
/* 1AC78 8001A078 15CF001D */  bne        $t6, $t7, .L8001A0F0
/* 1AC7C 8001A07C 00045080 */   sll       $t2, $a0, 2
/* 1AC80 8001A080 01445023 */  subu       $t2, $t2, $a0
/* 1AC84 8001A084 000A5080 */  sll        $t2, $t2, 2
/* 1AC88 8001A088 01445021 */  addu       $t2, $t2, $a0
/* 1AC8C 8001A08C 000A5080 */  sll        $t2, $t2, 2
/* 1AC90 8001A090 01445023 */  subu       $t2, $t2, $a0
/* 1AC94 8001A094 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 1AC98 8001A098 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 1AC9C 8001A09C 000A50C0 */  sll        $t2, $t2, 3
/* 1ACA0 8001A0A0 014B1021 */  addu       $v0, $t2, $t3
/* 1ACA4 8001A0A4 240AFFFF */  addiu      $t2, $zero, -1
/* 1ACA8 8001A0A8 A44A0554 */  sh         $t2, 0x554($v0)
/* 1ACAC 8001A0AC 84430554 */  lh         $v1, 0x554($v0)
/* 1ACB0 8001A0B0 844C0088 */  lh         $t4, 0x88($v0)
/* 1ACB4 8001A0B4 84580220 */  lh         $t8, 0x220($v0)
/* 1ACB8 8001A0B8 844803B8 */  lh         $t0, 0x3b8($v0)
/* 1ACBC 8001A0BC 844E0550 */  lh         $t6, 0x550($v0)
/* 1ACC0 8001A0C0 258D001F */  addiu      $t5, $t4, 0x1f
/* 1ACC4 8001A0C4 2719001D */  addiu      $t9, $t8, 0x1d
/* 1ACC8 8001A0C8 2509001A */  addiu      $t1, $t0, 0x1a
/* 1ACCC 8001A0CC 25CF0018 */  addiu      $t7, $t6, 0x18
/* 1ACD0 8001A0D0 A44D0088 */  sh         $t5, 0x88($v0)
/* 1ACD4 8001A0D4 A4590220 */  sh         $t9, 0x220($v0)
/* 1ACD8 8001A0D8 A44903B8 */  sh         $t1, 0x3b8($v0)
/* 1ACDC 8001A0DC A44F0550 */  sh         $t7, 0x550($v0)
/* 1ACE0 8001A0E0 A44303BC */  sh         $v1, 0x3bc($v0)
/* 1ACE4 8001A0E4 A4430224 */  sh         $v1, 0x224($v0)
/* 1ACE8 8001A0E8 10000018 */  b          .L8001A14C
/* 1ACEC 8001A0EC A443008C */   sh        $v1, 0x8c($v0)
.L8001A0F0:
/* 1ACF0 8001A0F0 97AB002E */  lhu        $t3, 0x2e($sp)
/* 1ACF4 8001A0F4 00000000 */  nop
/* 1ACF8 8001A0F8 29610009 */  slti       $at, $t3, 9
/* 1ACFC 8001A0FC 14200013 */  bnez       $at, .L8001A14C
/* 1AD00 8001A100 00046080 */   sll       $t4, $a0, 2
/* 1AD04 8001A104 01846023 */  subu       $t4, $t4, $a0
/* 1AD08 8001A108 000C6080 */  sll        $t4, $t4, 2
/* 1AD0C 8001A10C 01846021 */  addu       $t4, $t4, $a0
/* 1AD10 8001A110 000C6080 */  sll        $t4, $t4, 2
/* 1AD14 8001A114 01846023 */  subu       $t4, $t4, $a0
/* 1AD18 8001A118 3C0D800F */  lui        $t5, %hi(D_800EF510)
/* 1AD1C 8001A11C 25ADF510 */  addiu      $t5, $t5, %lo(D_800EF510)
/* 1AD20 8001A120 000C60C0 */  sll        $t4, $t4, 3
/* 1AD24 8001A124 018D1021 */  addu       $v0, $t4, $t5
/* 1AD28 8001A128 84580220 */  lh         $t8, 0x220($v0)
/* 1AD2C 8001A12C 844803B8 */  lh         $t0, 0x3b8($v0)
/* 1AD30 8001A130 844E0550 */  lh         $t6, 0x550($v0)
/* 1AD34 8001A134 2719FFFE */  addiu      $t9, $t8, -2
/* 1AD38 8001A138 2509FFFA */  addiu      $t1, $t0, -6
/* 1AD3C 8001A13C 25CFFFF8 */  addiu      $t7, $t6, -8
/* 1AD40 8001A140 A4590220 */  sh         $t9, 0x220($v0)
/* 1AD44 8001A144 A44903B8 */  sh         $t1, 0x3b8($v0)
/* 1AD48 8001A148 A44F0550 */  sh         $t7, 0x550($v0)
.L8001A14C:
/* 1AD4C 8001A14C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1AD50 8001A150 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1AD54 8001A154 03E00008 */  jr         $ra
/* 1AD58 8001A158 00000000 */   nop
