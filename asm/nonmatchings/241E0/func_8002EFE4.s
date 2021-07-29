glabel func_8002EFE4
/* 2FBE4 8002EFE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2FBE8 8002EFE8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 2FBEC 8002EFEC AFA60030 */  sw         $a2, 0x30($sp)
/* 2FBF0 8002EFF0 97A6002E */  lhu        $a2, 0x2e($sp)
/* 2FBF4 8002EFF4 24010002 */  addiu      $at, $zero, 2
/* 2FBF8 8002EFF8 30CE0003 */  andi       $t6, $a2, 3
/* 2FBFC 8002EFFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FC00 8002F000 15C1000C */  bne        $t6, $at, .L8002F034
/* 2FC04 8002F004 AFA40028 */   sw        $a0, 0x28($sp)
/* 2FC08 8002F008 3C048018 */  lui        $a0, %hi(gCurrentStage)
/* 2FC0C 8002F00C 94848162 */  lhu        $a0, %lo(gCurrentStage)($a0)
/* 2FC10 8002F010 0C0071FC */  jal        func_8001C7F0
/* 2FC14 8002F014 AFA60020 */   sw        $a2, 0x20($sp)
/* 2FC18 8002F018 8FA60020 */  lw         $a2, 0x20($sp)
/* 2FC1C 8002F01C 14400003 */  bnez       $v0, .L8002F02C
/* 2FC20 8002F020 00000000 */   nop
/* 2FC24 8002F024 10600004 */  beqz       $v1, .L8002F038
/* 2FC28 8002F028 2404007A */   addiu     $a0, $zero, 0x7a
.L8002F02C:
/* 2FC2C 8002F02C 10000045 */  b          .L8002F144
/* 2FC30 8002F030 00001025 */   or        $v0, $zero, $zero
.L8002F034:
/* 2FC34 8002F034 2404007A */  addiu      $a0, $zero, 0x7a
.L8002F038:
/* 2FC38 8002F038 24050082 */  addiu      $a1, $zero, 0x82
/* 2FC3C 8002F03C 0C00A12E */  jal        func_800284B8
/* 2FC40 8002F040 AFA60020 */   sw        $a2, 0x20($sp)
/* 2FC44 8002F044 8FA60020 */  lw         $a2, 0x20($sp)
/* 2FC48 8002F048 1040003D */  beqz       $v0, .L8002F140
/* 2FC4C 8002F04C 3047FFFF */   andi      $a3, $v0, 0xffff
/* 2FC50 8002F050 00077880 */  sll        $t7, $a3, 2
/* 2FC54 8002F054 01E77823 */  subu       $t7, $t7, $a3
/* 2FC58 8002F058 000F7880 */  sll        $t7, $t7, 2
/* 2FC5C 8002F05C 01E77821 */  addu       $t7, $t7, $a3
/* 2FC60 8002F060 000F7880 */  sll        $t7, $t7, 2
/* 2FC64 8002F064 01E77823 */  subu       $t7, $t7, $a3
/* 2FC68 8002F068 3C18800F */  lui        $t8, %hi(gActors)
/* 2FC6C 8002F06C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2FC70 8002F070 000F78C0 */  sll        $t7, $t7, 3
/* 2FC74 8002F074 01F81021 */  addu       $v0, $t7, $t8
/* 2FC78 8002F078 24190008 */  addiu      $t9, $zero, 8
/* 2FC7C 8002F07C A45900D2 */  sh         $t9, 0xd2($v0)
/* 2FC80 8002F080 AFA2001C */  sw         $v0, 0x1c($sp)
/* 2FC84 8002F084 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 2FC88 8002F088 AFA60020 */  sw         $a2, 0x20($sp)
/* 2FC8C 8002F08C 0C0078B4 */  jal        func_8001E2D0
/* 2FC90 8002F090 A7A70026 */   sh        $a3, 0x26($sp)
/* 2FC94 8002F094 97A9002E */  lhu        $t1, 0x2e($sp)
/* 2FC98 8002F098 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2FC9C 8002F09C 44892000 */  mtc1       $t1, $f4
/* 2FCA0 8002F0A0 8FA60020 */  lw         $a2, 0x20($sp)
/* 2FCA4 8002F0A4 97A70026 */  lhu        $a3, 0x26($sp)
/* 2FCA8 8002F0A8 24080002 */  addiu      $t0, $zero, 2
/* 2FCAC 8002F0AC AC480080 */  sw         $t0, 0x80($v0)
/* 2FCB0 8002F0B0 05210005 */  bgez       $t1, .L8002F0C8
/* 2FCB4 8002F0B4 468021A0 */   cvt.s.w   $f6, $f4
/* 2FCB8 8002F0B8 3C014F80 */  lui        $at, 0x4f80
/* 2FCBC 8002F0BC 44814000 */  mtc1       $at, $f8
/* 2FCC0 8002F0C0 00000000 */  nop
/* 2FCC4 8002F0C4 46083180 */  add.s      $f6, $f6, $f8
.L8002F0C8:
/* 2FCC8 8002F0C8 97AA002A */  lhu        $t2, 0x2a($sp)
/* 2FCCC 8002F0CC 3C0C800F */  lui        $t4, 0x800f
/* 2FCD0 8002F0D0 000A5880 */  sll        $t3, $t2, 2
/* 2FCD4 8002F0D4 016A5823 */  subu       $t3, $t3, $t2
/* 2FCD8 8002F0D8 000B5880 */  sll        $t3, $t3, 2
/* 2FCDC 8002F0DC 016A5821 */  addu       $t3, $t3, $t2
/* 2FCE0 8002F0E0 000B5880 */  sll        $t3, $t3, 2
/* 2FCE4 8002F0E4 016A5823 */  subu       $t3, $t3, $t2
/* 2FCE8 8002F0E8 000B58C0 */  sll        $t3, $t3, 3
/* 2FCEC 8002F0EC 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 2FCF0 8002F0F0 E4460110 */  swc1       $f6, 0x110($v0)
/* 2FCF4 8002F0F4 016C1821 */  addu       $v1, $t3, $t4
/* 2FCF8 8002F0F8 846D0088 */  lh         $t5, 0x88($v1)
/* 2FCFC 8002F0FC 30CF0010 */  andi       $t7, $a2, 0x10
/* 2FD00 8002F100 A44D0088 */  sh         $t5, 0x88($v0)
/* 2FD04 8002F104 846E008C */  lh         $t6, 0x8c($v1)
/* 2FD08 8002F108 11E00003 */  beqz       $t7, .L8002F118
/* 2FD0C 8002F10C A44E008C */   sh        $t6, 0x8c($v0)
/* 2FD10 8002F110 3C180004 */  lui        $t8, 4
/* 2FD14 8002F114 AC5800F0 */  sw         $t8, 0xf0($v0)
.L8002F118:
/* 2FD18 8002F118 30D90020 */  andi       $t9, $a2, 0x20
/* 2FD1C 8002F11C 13200003 */  beqz       $t9, .L8002F12C
/* 2FD20 8002F120 24040051 */   addiu     $a0, $zero, 0x51
/* 2FD24 8002F124 24080078 */  addiu      $t0, $zero, 0x78
/* 2FD28 8002F128 AC480150 */  sw         $t0, 0x150($v0)
.L8002F12C:
/* 2FD2C 8002F12C 97A5002A */  lhu        $a1, 0x2a($sp)
/* 2FD30 8002F130 0C000DB2 */  jal        func_800036C8
/* 2FD34 8002F134 A7A70026 */   sh        $a3, 0x26($sp)
/* 2FD38 8002F138 97A70026 */  lhu        $a3, 0x26($sp)
/* 2FD3C 8002F13C 00000000 */  nop
.L8002F140:
/* 2FD40 8002F140 00E01025 */  or         $v0, $a3, $zero
.L8002F144:
/* 2FD44 8002F144 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FD48 8002F148 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2FD4C 8002F14C 03E00008 */  jr         $ra
/* 2FD50 8002F150 00000000 */   nop
