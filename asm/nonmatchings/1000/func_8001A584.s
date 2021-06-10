glabel func_8001A584
/* 1B184 8001A584 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1B188 8001A588 3C028018 */  lui        $v0, %hi(D_8017815E)
/* 1B18C 8001A58C 3C038018 */  lui        $v1, %hi(D_8017815C)
/* 1B190 8001A590 9463815C */  lhu        $v1, %lo(D_8017815C)($v1)
/* 1B194 8001A594 9442815E */  lhu        $v0, %lo(D_8017815E)($v0)
/* 1B198 8001A598 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1B19C 8001A59C 0043082A */  slt        $at, $v0, $v1
/* 1B1A0 8001A5A0 AFB70030 */  sw         $s7, 0x30($sp)
/* 1B1A4 8001A5A4 AFB6002C */  sw         $s6, 0x2c($sp)
/* 1B1A8 8001A5A8 AFB50028 */  sw         $s5, 0x28($sp)
/* 1B1AC 8001A5AC AFB40024 */  sw         $s4, 0x24($sp)
/* 1B1B0 8001A5B0 AFB30020 */  sw         $s3, 0x20($sp)
/* 1B1B4 8001A5B4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1B1B8 8001A5B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 1B1BC 8001A5BC AFB00014 */  sw         $s0, 0x14($sp)
/* 1B1C0 8001A5C0 10200003 */  beqz       $at, .L8001A5D0
/* 1B1C4 8001A5C4 00602025 */   or        $a0, $v1, $zero
/* 1B1C8 8001A5C8 1000001E */  b          .L8001A644
/* 1B1CC 8001A5CC 00001025 */   or        $v0, $zero, $zero
.L8001A5D0:
/* 1B1D0 8001A5D0 14440018 */  bne        $v0, $a0, .L8001A634
/* 1B1D4 8001A5D4 00034840 */   sll       $t1, $v1, 1
/* 1B1D8 8001A5D8 3C028018 */  lui        $v0, %hi(D_80178158)
/* 1B1DC 8001A5DC 94428158 */  lhu        $v0, %lo(D_80178158)($v0)
/* 1B1E0 8001A5E0 3C0F8018 */  lui        $t7, %hi(D_80178152)
/* 1B1E4 8001A5E4 95EF8152 */  lhu        $t7, %lo(D_80178152)($t7)
/* 1B1E8 8001A5E8 24420001 */  addiu      $v0, $v0, 1
/* 1B1EC 8001A5EC 304EFFFF */  andi       $t6, $v0, 0xffff
/* 1B1F0 8001A5F0 11E00014 */  beqz       $t7, .L8001A644
/* 1B1F4 8001A5F4 01C01025 */   or        $v0, $t6, $zero
/* 1B1F8 8001A5F8 3C188018 */  lui        $t8, %hi(D_80178156)
/* 1B1FC 8001A5FC 97188156 */  lhu        $t8, %lo(D_80178156)($t8)
/* 1B200 8001A600 3C198017 */  lui        $t9, %hi(D_80171B18)
/* 1B204 8001A604 17000003 */  bnez       $t8, .L8001A614
/* 1B208 8001A608 00000000 */   nop
/* 1B20C 8001A60C 1000000D */  b          .L8001A644
/* 1B210 8001A610 00001025 */   or        $v0, $zero, $zero
.L8001A614:
/* 1B214 8001A614 93391B18 */  lbu        $t9, %lo(D_80171B18)($t9)
/* 1B218 8001A618 24010038 */  addiu      $at, $zero, 0x38
/* 1B21C 8001A61C 1721000A */  bne        $t9, $at, .L8001A648
/* 1B220 8001A620 00008025 */   or        $s0, $zero, $zero
/* 1B224 8001A624 2442FFFF */  addiu      $v0, $v0, -1
/* 1B228 8001A628 3048FFFF */  andi       $t0, $v0, 0xffff
/* 1B22C 8001A62C 10000005 */  b          .L8001A644
/* 1B230 8001A630 01001025 */   or        $v0, $t0, $zero
.L8001A634:
/* 1B234 8001A634 3C02800D */  lui        $v0, %hi(D_800C8C04)
/* 1B238 8001A638 00491021 */  addu       $v0, $v0, $t1
/* 1B23C 8001A63C 94428C04 */  lhu        $v0, %lo(D_800C8C04)($v0)
/* 1B240 8001A640 00000000 */  nop
.L8001A644:
/* 1B244 8001A644 00008025 */  or         $s0, $zero, $zero
.L8001A648:
/* 1B248 8001A648 1840001E */  blez       $v0, .L8001A6C4
/* 1B24C 8001A64C 00409825 */   or        $s3, $v0, $zero
/* 1B250 8001A650 3C17800D */  lui        $s7, %hi(D_800C95DC)
/* 1B254 8001A654 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1B258 8001A658 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1B25C 8001A65C 26F795DC */  addiu      $s7, $s7, %lo(D_800C95DC)
/* 1B260 8001A660 00008825 */  or         $s1, $zero, $zero
/* 1B264 8001A664 2416FFF1 */  addiu      $s6, $zero, -0xf
/* 1B268 8001A668 24150001 */  addiu      $s5, $zero, 1
/* 1B26C 8001A66C 24140198 */  addiu      $s4, $zero, 0x198
.L8001A670:
/* 1B270 8001A670 00115040 */  sll        $t2, $s1, 1
/* 1B274 8001A674 254B0039 */  addiu      $t3, $t2, 0x39
/* 1B278 8001A678 316CFFFF */  andi       $t4, $t3, 0xffff
/* 1B27C 8001A67C 01940019 */  multu      $t4, $s4
/* 1B280 8001A680 0010C040 */  sll        $t8, $s0, 1
/* 1B284 8001A684 02F8C821 */  addu       $t9, $s7, $t8
/* 1B288 8001A688 97240000 */  lhu        $a0, ($t9)
/* 1B28C 8001A68C 3205FFFF */  andi       $a1, $s0, 0xffff
/* 1B290 8001A690 00006812 */  mflo       $t5
/* 1B294 8001A694 024D1021 */  addu       $v0, $s2, $t5
/* 1B298 8001A698 944E0094 */  lhu        $t6, 0x94($v0)
/* 1B29C 8001A69C A4550090 */  sh         $s5, 0x90($v0)
/* 1B2A0 8001A6A0 01D67824 */  and        $t7, $t6, $s6
/* 1B2A4 8001A6A4 A44F0094 */  sh         $t7, 0x94($v0)
/* 1B2A8 8001A6A8 0C0067ED */  jal        func_80019FB4
/* 1B2AC 8001A6AC AC400218 */   sw        $zero, 0x218($v0)
/* 1B2B0 8001A6B0 26100001 */  addiu      $s0, $s0, 1
/* 1B2B4 8001A6B4 3211FFFF */  andi       $s1, $s0, 0xffff
/* 1B2B8 8001A6B8 0233082A */  slt        $at, $s1, $s3
/* 1B2BC 8001A6BC 1420FFEC */  bnez       $at, .L8001A670
/* 1B2C0 8001A6C0 02208025 */   or        $s0, $s1, $zero
.L8001A6C4:
/* 1B2C4 8001A6C4 3C058018 */  lui        $a1, %hi(D_80178156)
/* 1B2C8 8001A6C8 94A58156 */  lhu        $a1, %lo(D_80178156)($a1)
/* 1B2CC 8001A6CC 3C0B800D */  lui        $t3, %hi(D_800C95F4)
/* 1B2D0 8001A6D0 00055040 */  sll        $t2, $a1, 1
/* 1B2D4 8001A6D4 3409FFFF */  ori        $t1, $zero, 0xffff
/* 1B2D8 8001A6D8 3C01800D */  lui        $at, %hi(D_800C81E0)
/* 1B2DC 8001A6DC 016A5821 */  addu       $t3, $t3, $t2
/* 1B2E0 8001A6E0 856B95F4 */  lh         $t3, %lo(D_800C95F4)($t3)
/* 1B2E4 8001A6E4 A42981E0 */  sh         $t1, %lo(D_800C81E0)($at)
/* 1B2E8 8001A6E8 3C12800F */  lui        $s2, %hi(D_800EF510)
/* 1B2EC 8001A6EC 3C018010 */  lui        $at, %hi(D_800FB4D8)
/* 1B2F0 8001A6F0 2652F510 */  addiu      $s2, $s2, %lo(D_800EF510)
/* 1B2F4 8001A6F4 2404008C */  addiu      $a0, $zero, 0x8c
/* 1B2F8 8001A6F8 24020198 */  addiu      $v0, $zero, 0x198
/* 1B2FC 8001A6FC A42BB4D8 */  sh         $t3, %lo(D_800FB4D8)($at)
.L8001A700:
/* 1B300 8001A700 00820019 */  multu      $a0, $v0
/* 1B304 8001A704 24840001 */  addiu      $a0, $a0, 1
/* 1B308 8001A708 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1B30C 8001A70C 29C1009B */  slti       $at, $t6, 0x9b
/* 1B310 8001A710 01C02025 */  or         $a0, $t6, $zero
/* 1B314 8001A714 00006012 */  mflo       $t4
/* 1B318 8001A718 024C6821 */  addu       $t5, $s2, $t4
/* 1B31C 8001A71C 1420FFF8 */  bnez       $at, .L8001A700
/* 1B320 8001A720 ADA00080 */   sw        $zero, 0x80($t5)
/* 1B324 8001A724 0C006677 */  jal        func_800199DC
/* 1B328 8001A728 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 1B32C 8001A72C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1B330 8001A730 8FB00014 */  lw         $s0, 0x14($sp)
/* 1B334 8001A734 8FB10018 */  lw         $s1, 0x18($sp)
/* 1B338 8001A738 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1B33C 8001A73C 8FB30020 */  lw         $s3, 0x20($sp)
/* 1B340 8001A740 8FB40024 */  lw         $s4, 0x24($sp)
/* 1B344 8001A744 8FB50028 */  lw         $s5, 0x28($sp)
/* 1B348 8001A748 8FB6002C */  lw         $s6, 0x2c($sp)
/* 1B34C 8001A74C 8FB70030 */  lw         $s7, 0x30($sp)
/* 1B350 8001A750 03E00008 */  jr         $ra
/* 1B354 8001A754 27BD0038 */   addiu     $sp, $sp, 0x38
