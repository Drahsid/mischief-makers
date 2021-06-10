glabel func_8005D1E8
/* 5DDE8 8005D1E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5DDEC 8005D1EC 000E7880 */  sll        $t7, $t6, 2
/* 5DDF0 8005D1F0 01EE7823 */  subu       $t7, $t7, $t6
/* 5DDF4 8005D1F4 000F7880 */  sll        $t7, $t7, 2
/* 5DDF8 8005D1F8 01EE7821 */  addu       $t7, $t7, $t6
/* 5DDFC 8005D1FC 000F7880 */  sll        $t7, $t7, 2
/* 5DE00 8005D200 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 5DE04 8005D204 01EE7823 */  subu       $t7, $t7, $t6
/* 5DE08 8005D208 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 5DE0C 8005D20C 000F78C0 */  sll        $t7, $t7, 3
/* 5DE10 8005D210 010F1021 */  addu       $v0, $t0, $t7
/* 5DE14 8005D214 84430088 */  lh         $v1, 0x88($v0)
/* 5DE18 8005D218 845800A4 */  lh         $t8, 0xa4($v0)
/* 5DE1C 8005D21C 85060088 */  lh         $a2, 0x88($t0)
/* 5DE20 8005D220 851900AA */  lh         $t9, 0xaa($t0)
/* 5DE24 8005D224 03032821 */  addu       $a1, $t8, $v1
/* 5DE28 8005D228 00D94821 */  addu       $t1, $a2, $t9
/* 5DE2C 8005D22C 00A9082A */  slt        $at, $a1, $t1
/* 5DE30 8005D230 1420001A */  bnez       $at, .L8005D29C
/* 5DE34 8005D234 AFA40000 */   sw        $a0, ($sp)
/* 5DE38 8005D238 850A00AC */  lh         $t2, 0xac($t0)
/* 5DE3C 8005D23C 844C00A2 */  lh         $t4, 0xa2($v0)
/* 5DE40 8005D240 00CA5821 */  addu       $t3, $a2, $t2
/* 5DE44 8005D244 01836821 */  addu       $t5, $t4, $v1
/* 5DE48 8005D248 016D082A */  slt        $at, $t3, $t5
/* 5DE4C 8005D24C 14200013 */  bnez       $at, .L8005D29C
/* 5DE50 8005D250 00000000 */   nop
/* 5DE54 8005D254 8504008C */  lh         $a0, 0x8c($t0)
/* 5DE58 8005D258 8447008C */  lh         $a3, 0x8c($v0)
/* 5DE5C 8005D25C 850E00AE */  lh         $t6, 0xae($t0)
/* 5DE60 8005D260 845800A8 */  lh         $t8, 0xa8($v0)
/* 5DE64 8005D264 008E7821 */  addu       $t7, $a0, $t6
/* 5DE68 8005D268 0307C821 */  addu       $t9, $t8, $a3
/* 5DE6C 8005D26C 01F9082A */  slt        $at, $t7, $t9
/* 5DE70 8005D270 1420000A */  bnez       $at, .L8005D29C
/* 5DE74 8005D274 00000000 */   nop
/* 5DE78 8005D278 844900A6 */  lh         $t1, 0xa6($v0)
/* 5DE7C 8005D27C 850C00B0 */  lh         $t4, 0xb0($t0)
/* 5DE80 8005D280 01275021 */  addu       $t2, $t1, $a3
/* 5DE84 8005D284 008C5821 */  addu       $t3, $a0, $t4
/* 5DE88 8005D288 014B082A */  slt        $at, $t2, $t3
/* 5DE8C 8005D28C 14200003 */  bnez       $at, .L8005D29C
/* 5DE90 8005D290 00000000 */   nop
/* 5DE94 8005D294 03E00008 */  jr         $ra
/* 5DE98 8005D298 24020001 */   addiu     $v0, $zero, 1
.L8005D29C:
/* 5DE9C 8005D29C 8D0D0080 */  lw         $t5, 0x80($t0)
/* 5DEA0 8005D2A0 00000000 */  nop
/* 5DEA4 8005D2A4 31AE0800 */  andi       $t6, $t5, 0x800
/* 5DEA8 8005D2A8 11C00020 */  beqz       $t6, .L8005D32C
/* 5DEAC 8005D2AC 00000000 */   nop
/* 5DEB0 8005D2B0 851800A2 */  lh         $t8, 0xa2($t0)
/* 5DEB4 8005D2B4 00000000 */  nop
/* 5DEB8 8005D2B8 00D87821 */  addu       $t7, $a2, $t8
/* 5DEBC 8005D2BC 00AF082A */  slt        $at, $a1, $t7
/* 5DEC0 8005D2C0 1420001A */  bnez       $at, .L8005D32C
/* 5DEC4 8005D2C4 00000000 */   nop
/* 5DEC8 8005D2C8 851900A4 */  lh         $t9, 0xa4($t0)
/* 5DECC 8005D2CC 844C00A2 */  lh         $t4, 0xa2($v0)
/* 5DED0 8005D2D0 00D94821 */  addu       $t1, $a2, $t9
/* 5DED4 8005D2D4 01835021 */  addu       $t2, $t4, $v1
/* 5DED8 8005D2D8 012A082A */  slt        $at, $t1, $t2
/* 5DEDC 8005D2DC 14200013 */  bnez       $at, .L8005D32C
/* 5DEE0 8005D2E0 00000000 */   nop
/* 5DEE4 8005D2E4 8504008C */  lh         $a0, 0x8c($t0)
/* 5DEE8 8005D2E8 8447008C */  lh         $a3, 0x8c($v0)
/* 5DEEC 8005D2EC 850B00A6 */  lh         $t3, 0xa6($t0)
/* 5DEF0 8005D2F0 844E00A8 */  lh         $t6, 0xa8($v0)
/* 5DEF4 8005D2F4 008B6821 */  addu       $t5, $a0, $t3
/* 5DEF8 8005D2F8 01C7C021 */  addu       $t8, $t6, $a3
/* 5DEFC 8005D2FC 01B8082A */  slt        $at, $t5, $t8
/* 5DF00 8005D300 1420000A */  bnez       $at, .L8005D32C
/* 5DF04 8005D304 00000000 */   nop
/* 5DF08 8005D308 844F00A6 */  lh         $t7, 0xa6($v0)
/* 5DF0C 8005D30C 850C00A8 */  lh         $t4, 0xa8($t0)
/* 5DF10 8005D310 01E7C821 */  addu       $t9, $t7, $a3
/* 5DF14 8005D314 008C4821 */  addu       $t1, $a0, $t4
/* 5DF18 8005D318 0329082A */  slt        $at, $t9, $t1
/* 5DF1C 8005D31C 14200004 */  bnez       $at, .L8005D330
/* 5DF20 8005D320 00001025 */   or        $v0, $zero, $zero
/* 5DF24 8005D324 03E00008 */  jr         $ra
/* 5DF28 8005D328 24020002 */   addiu     $v0, $zero, 2
.L8005D32C:
/* 5DF2C 8005D32C 00001025 */  or         $v0, $zero, $zero
.L8005D330:
/* 5DF30 8005D330 03E00008 */  jr         $ra
/* 5DF34 8005D334 00000000 */   nop
