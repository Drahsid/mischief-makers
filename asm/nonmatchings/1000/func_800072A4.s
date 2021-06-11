glabel func_800072A4
/* 7EA4 800072A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7EA8 800072A8 3C04800C */  lui        $a0, %hi(D_800C4FE8)
/* 7EAC 800072AC AFBF001C */  sw         $ra, 0x1c($sp)
/* 7EB0 800072B0 24844FE8 */  addiu      $a0, $a0, %lo(D_800C4FE8)
/* 7EB4 800072B4 00001825 */  or         $v1, $zero, $zero
/* 7EB8 800072B8 00001025 */  or         $v0, $zero, $zero
.L800072BC:
/* 7EBC 800072BC 00027040 */  sll        $t6, $v0, 1
/* 7EC0 800072C0 008E7821 */  addu       $t7, $a0, $t6
/* 7EC4 800072C4 95F80000 */  lhu        $t8, ($t7)
/* 7EC8 800072C8 24420001 */  addiu      $v0, $v0, 1
/* 7ECC 800072CC 13000004 */  beqz       $t8, .L800072E0
/* 7ED0 800072D0 3049FFFF */   andi      $t1, $v0, 0xffff
/* 7ED4 800072D4 24630001 */  addiu      $v1, $v1, 1
/* 7ED8 800072D8 3079FFFF */  andi       $t9, $v1, 0xffff
/* 7EDC 800072DC 03201825 */  or         $v1, $t9, $zero
.L800072E0:
/* 7EE0 800072E0 2921000A */  slti       $at, $t1, 0xa
/* 7EE4 800072E4 1420FFF5 */  bnez       $at, .L800072BC
/* 7EE8 800072E8 01201025 */   or        $v0, $t1, $zero
/* 7EEC 800072EC 10600031 */  beqz       $v1, .L800073B4
/* 7EF0 800072F0 3C088010 */   lui       $t0, %hi(D_800FF510)
/* 7EF4 800072F4 2508F510 */  addiu      $t0, $t0, %lo(D_800FF510)
/* 7EF8 800072F8 910A2448 */  lbu        $t2, 0x2448($t0)
/* 7EFC 800072FC 3C03800F */  lui        $v1, 0x800f
/* 7F00 80007300 000A5880 */  sll        $t3, $t2, 2
/* 7F04 80007304 016A5823 */  subu       $t3, $t3, $t2
/* 7F08 80007308 000B5880 */  sll        $t3, $t3, 2
/* 7F0C 8000730C 016A5821 */  addu       $t3, $t3, $t2
/* 7F10 80007310 000B5880 */  sll        $t3, $t3, 2
/* 7F14 80007314 016A5823 */  subu       $t3, $t3, $t2
/* 7F18 80007318 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 7F1C 8000731C 000B58C0 */  sll        $t3, $t3, 3
/* 7F20 80007320 006B1021 */  addu       $v0, $v1, $t3
/* 7F24 80007324 8C4CFEE8 */  lw         $t4, -0x118($v0)
/* 7F28 80007328 2401FFFE */  addiu      $at, $zero, -2
/* 7F2C 8000732C 01816824 */  and        $t5, $t4, $at
/* 7F30 80007330 AC4DFEE8 */  sw         $t5, -0x118($v0)
/* 7F34 80007334 91042448 */  lbu        $a0, 0x2448($t0)
/* 7F38 80007338 3C05800C */  lui        $a1, %hi(D_800C526C)
/* 7F3C 8000733C 2484000A */  addiu      $a0, $a0, 0xa
/* 7F40 80007340 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7F44 80007344 01C02025 */  or         $a0, $t6, $zero
/* 7F48 80007348 24A5526C */  addiu      $a1, $a1, %lo(D_800C526C)
/* 7F4C 8000734C 3406FFA0 */  ori        $a2, $zero, 0xffa0
/* 7F50 80007350 3407FFB0 */  ori        $a3, $zero, 0xffb0
/* 7F54 80007354 0C009ECA */  jal        func_80027B28
/* 7F58 80007358 AFA00010 */   sw        $zero, 0x10($sp)
/* 7F5C 8000735C 3C03800F */  lui        $v1, %hi(gActors)
/* 7F60 80007360 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 7F64 80007364 240F002E */  addiu      $t7, $zero, 0x2e
/* 7F68 80007368 2419FFB0 */  addiu      $t9, $zero, -0x50
/* 7F6C 8000736C A46F03B8 */  sh         $t7, 0x3b8($v1)
/* 7F70 80007370 A47903BC */  sh         $t9, 0x3bc($v1)
/* 7F74 80007374 847803B8 */  lh         $t8, 0x3b8($v1)
/* 7F78 80007378 846903BC */  lh         $t1, 0x3bc($v1)
/* 7F7C 8000737C 240A0001 */  addiu      $t2, $zero, 1
/* 7F80 80007380 3C018010 */  lui        $at, %hi(D_80101E20)
/* 7F84 80007384 A4780220 */  sh         $t8, 0x220($v1)
/* 7F88 80007388 A4690224 */  sh         $t1, 0x224($v1)
/* 7F8C 8000738C A02A1E20 */  sb         $t2, %lo(D_80101E20)($at)
/* 7F90 80007390 0C000CD3 */  jal        func_8000334C
/* 7F94 80007394 24040023 */   addiu     $a0, $zero, 0x23
/* 7F98 80007398 3C02800C */  lui        $v0, %hi(D_800BE4F4)
/* 7F9C 8000739C 2442E4F4 */  addiu      $v0, $v0, %lo(D_800BE4F4)
/* 7FA0 800073A0 944B0000 */  lhu        $t3, ($v0)
/* 7FA4 800073A4 00000000 */  nop
/* 7FA8 800073A8 256C0001 */  addiu      $t4, $t3, 1
/* 7FAC 800073AC 10000003 */  b          .L800073BC
/* 7FB0 800073B0 A44C0000 */   sh        $t4, ($v0)
.L800073B4:
/* 7FB4 800073B4 0C000CD3 */  jal        func_8000334C
/* 7FB8 800073B8 24040134 */   addiu     $a0, $zero, 0x134
.L800073BC:
/* 7FBC 800073BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7FC0 800073C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7FC4 800073C4 03E00008 */  jr         $ra
/* 7FC8 800073C8 00000000 */   nop
