glabel func_8003E230
/* 3EE30 8003E230 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3EE34 8003E234 000E7880 */  sll        $t7, $t6, 2
/* 3EE38 8003E238 01EE7823 */  subu       $t7, $t7, $t6
/* 3EE3C 8003E23C 000F7880 */  sll        $t7, $t7, 2
/* 3EE40 8003E240 01EE7821 */  addu       $t7, $t7, $t6
/* 3EE44 8003E244 000F7880 */  sll        $t7, $t7, 2
/* 3EE48 8003E248 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3EE4C 8003E24C 01EE7823 */  subu       $t7, $t7, $t6
/* 3EE50 8003E250 3C18800F */  lui        $t8, %hi(gActors)
/* 3EE54 8003E254 AFB00018 */  sw         $s0, 0x18($sp)
/* 3EE58 8003E258 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 3EE5C 8003E25C 000F78C0 */  sll        $t7, $t7, 3
/* 3EE60 8003E260 01F88021 */  addu       $s0, $t7, $t8
/* 3EE64 8003E264 9202009F */  lbu        $v0, 0x9f($s0)
/* 3EE68 8003E268 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3EE6C 8003E26C 1040000B */  beqz       $v0, .L8003E29C
/* 3EE70 8003E270 AFA40038 */   sw        $a0, 0x38($sp)
/* 3EE74 8003E274 00402025 */  or         $a0, $v0, $zero
/* 3EE78 8003E278 00002825 */  or         $a1, $zero, $zero
/* 3EE7C 8003E27C 0C00A607 */  jal        func_8002981C
/* 3EE80 8003E280 24060004 */   addiu     $a2, $zero, 4
/* 3EE84 8003E284 305900FF */  andi       $t9, $v0, 0xff
/* 3EE88 8003E288 17200004 */  bnez       $t9, .L8003E29C
/* 3EE8C 8003E28C A202009F */   sb        $v0, 0x9f($s0)
/* 3EE90 8003E290 24090002 */  addiu      $t1, $zero, 2
/* 3EE94 8003E294 A6000094 */  sh         $zero, 0x94($s0)
/* 3EE98 8003E298 AE090080 */  sw         $t1, 0x80($s0)
.L8003E29C:
/* 3EE9C 8003E29C 8E0A0150 */  lw         $t2, 0x150($s0)
/* 3EEA0 8003E2A0 00004025 */  or         $t0, $zero, $zero
/* 3EEA4 8003E2A4 314B0001 */  andi       $t3, $t2, 1
/* 3EEA8 8003E2A8 11600002 */  beqz       $t3, .L8003E2B4
/* 3EEAC 8003E2AC 3C04800D */   lui       $a0, %hi(D_800D271C)
/* 3EEB0 8003E2B0 24080008 */  addiu      $t0, $zero, 8
.L8003E2B4:
/* 3EEB4 8003E2B4 8E030188 */  lw         $v1, 0x188($s0)
/* 3EEB8 8003E2B8 2401000A */  addiu      $at, $zero, 0xa
/* 3EEBC 8003E2BC 10600008 */  beqz       $v1, .L8003E2E0
/* 3EEC0 8003E2C0 2484271C */   addiu     $a0, $a0, %lo(D_800D271C)
/* 3EEC4 8003E2C4 1061004F */  beq        $v1, $at, .L8003E404
/* 3EEC8 8003E2C8 2404015E */   addiu     $a0, $zero, 0x15e
/* 3EECC 8003E2CC 2401003C */  addiu      $at, $zero, 0x3c
/* 3EED0 8003E2D0 1061008E */  beq        $v1, $at, .L8003E50C
/* 3EED4 8003E2D4 00000000 */   nop
/* 3EED8 8003E2D8 1000008F */  b          .L8003E518
/* 3EEDC 8003E2DC 246B0001 */   addiu     $t3, $v1, 1
.L8003E2E0:
/* 3EEE0 8003E2E0 86070090 */  lh         $a3, 0x90($s0)
/* 3EEE4 8003E2E4 8E050170 */  lw         $a1, 0x170($s0)
/* 3EEE8 8003E2E8 8E060174 */  lw         $a2, 0x174($s0)
/* 3EEEC 8003E2EC AFA80030 */  sw         $t0, 0x30($sp)
/* 3EEF0 8003E2F0 0C00C48F */  jal        func_8003123C
/* 3EEF4 8003E2F4 24E7FFFE */   addiu     $a3, $a3, -2
/* 3EEF8 8003E2F8 8FA80030 */  lw         $t0, 0x30($sp)
/* 3EEFC 8003E2FC 1040003E */  beqz       $v0, .L8003E3F8
/* 3EF00 8003E300 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3EF04 8003E304 00046080 */  sll        $t4, $a0, 2
/* 3EF08 8003E308 01846023 */  subu       $t4, $t4, $a0
/* 3EF0C 8003E30C 000C6080 */  sll        $t4, $t4, 2
/* 3EF10 8003E310 01846021 */  addu       $t4, $t4, $a0
/* 3EF14 8003E314 000C6080 */  sll        $t4, $t4, 2
/* 3EF18 8003E318 01846023 */  subu       $t4, $t4, $a0
/* 3EF1C 8003E31C 3C0D800F */  lui        $t5, %hi(gActors)
/* 3EF20 8003E320 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 3EF24 8003E324 000C60C0 */  sll        $t4, $t4, 3
/* 3EF28 8003E328 018D1021 */  addu       $v0, $t4, $t5
/* 3EF2C 8003E32C 3C188003 */  lui        $t8, %hi(func_80030B0C)
/* 3EF30 8003E330 240E0101 */  addiu      $t6, $zero, 0x101
/* 3EF34 8003E334 250F0003 */  addiu      $t7, $t0, 3
/* 3EF38 8003E338 27180B0C */  addiu      $t8, $t8, %lo(func_80030B0C)
/* 3EF3C 8003E33C 24190014 */  addiu      $t9, $zero, 0x14
/* 3EF40 8003E340 2409FFFC */  addiu      $t1, $zero, -4
/* 3EF44 8003E344 A44E0094 */  sh         $t6, 0x94($v0)
/* 3EF48 8003E348 AC4F0080 */  sw         $t7, 0x80($v0)
/* 3EF4C 8003E34C AC58017C */  sw         $t8, 0x17c($v0)
/* 3EF50 8003E350 AC590104 */  sw         $t9, 0x104($v0)
/* 3EF54 8003E354 AC490108 */  sw         $t1, 0x108($v0)
/* 3EF58 8003E358 C6040110 */  lwc1       $f4, 0x110($s0)
/* 3EF5C 8003E35C 3C014000 */  lui        $at, 0x4000
/* 3EF60 8003E360 460021A1 */  cvt.d.s    $f6, $f4
/* 3EF64 8003E364 46203220 */  cvt.s.d    $f8, $f6
/* 3EF68 8003E368 44819800 */  mtc1       $at, $f19
/* 3EF6C 8003E36C E44800B8 */  swc1       $f8, 0xb8($v0)
/* 3EF70 8003E370 C60A0110 */  lwc1       $f10, 0x110($s0)
/* 3EF74 8003E374 44809000 */  mtc1       $zero, $f18
/* 3EF78 8003E378 46005421 */  cvt.d.s    $f16, $f10
/* 3EF7C 8003E37C 46328102 */  mul.d      $f4, $f16, $f18
/* 3EF80 8003E380 3C01800F */  lui        $at, 0x800f
/* 3EF84 8003E384 AFA20020 */  sw         $v0, 0x20($sp)
/* 3EF88 8003E388 24050040 */  addiu      $a1, $zero, 0x40
/* 3EF8C 8003E38C 462021A0 */  cvt.s.d    $f6, $f4
/* 3EF90 8003E390 E44600B4 */  swc1       $f6, 0xb4($v0)
/* 3EF94 8003E394 C6080110 */  lwc1       $f8, 0x110($s0)
/* 3EF98 8003E398 C430BBE4 */  lwc1       $f16, -0x441c($at)
/* 3EF9C 8003E39C C431BBE0 */  lwc1       $f17, -0x4420($at)
/* 3EFA0 8003E3A0 460042A1 */  cvt.d.s    $f10, $f8
/* 3EFA4 8003E3A4 46305482 */  mul.d      $f18, $f10, $f16
/* 3EFA8 8003E3A8 3C01800F */  lui        $at, 0x800f
/* 3EFAC 8003E3AC 46209120 */  cvt.s.d    $f4, $f18
/* 3EFB0 8003E3B0 E4440110 */  swc1       $f4, 0x110($v0)
/* 3EFB4 8003E3B4 C4400110 */  lwc1       $f0, 0x110($v0)
/* 3EFB8 8003E3B8 00000000 */  nop
/* 3EFBC 8003E3BC E4400114 */  swc1       $f0, 0x114($v0)
/* 3EFC0 8003E3C0 C428BBEC */  lwc1       $f8, -0x4414($at)
/* 3EFC4 8003E3C4 C429BBE8 */  lwc1       $f9, -0x4418($at)
/* 3EFC8 8003E3C8 460001A1 */  cvt.d.s    $f6, $f0
/* 3EFCC 8003E3CC 46283282 */  mul.d      $f10, $f6, $f8
/* 3EFD0 8003E3D0 462050A0 */  cvt.s.d    $f2, $f10
/* 3EFD4 8003E3D4 E4420118 */  swc1       $f2, 0x118($v0)
/* 3EFD8 8003E3D8 0C00ABAD */  jal        func_8002AEB4
/* 3EFDC 8003E3DC E442011C */   swc1      $f2, 0x11c($v0)
/* 3EFE0 8003E3E0 8FA20020 */  lw         $v0, 0x20($sp)
/* 3EFE4 8003E3E4 3C0142C8 */  lui        $at, 0x42c8
/* 3EFE8 8003E3E8 44818000 */  mtc1       $at, $f16
/* 3EFEC 8003E3EC 240A007F */  addiu      $t2, $zero, 0x7f
/* 3EFF0 8003E3F0 A04A009D */  sb         $t2, 0x9d($v0)
/* 3EFF4 8003E3F4 E4500148 */  swc1       $f16, 0x148($v0)
.L8003E3F8:
/* 3EFF8 8003E3F8 8E030188 */  lw         $v1, 0x188($s0)
/* 3EFFC 8003E3FC 10000046 */  b          .L8003E518
/* 3F000 8003E400 246B0001 */   addiu     $t3, $v1, 1
.L8003E404:
/* 3F004 8003E404 86070090 */  lh         $a3, 0x90($s0)
/* 3F008 8003E408 8E050170 */  lw         $a1, 0x170($s0)
/* 3F00C 8003E40C 8E060174 */  lw         $a2, 0x174($s0)
/* 3F010 8003E410 AFA80030 */  sw         $t0, 0x30($sp)
/* 3F014 8003E414 0C00C4A1 */  jal        func_80031284
/* 3F018 8003E418 24E7FFFD */   addiu     $a3, $a3, -3
/* 3F01C 8003E41C 8FA80030 */  lw         $t0, 0x30($sp)
/* 3F020 8003E420 10400037 */  beqz       $v0, .L8003E500
/* 3F024 8003E424 304BFFFF */   andi      $t3, $v0, 0xffff
/* 3F028 8003E428 000B6080 */  sll        $t4, $t3, 2
/* 3F02C 8003E42C 018B6023 */  subu       $t4, $t4, $t3
/* 3F030 8003E430 000C6080 */  sll        $t4, $t4, 2
/* 3F034 8003E434 018B6021 */  addu       $t4, $t4, $t3
/* 3F038 8003E438 000C6080 */  sll        $t4, $t4, 2
/* 3F03C 8003E43C 018B6023 */  subu       $t4, $t4, $t3
/* 3F040 8003E440 3C0D800F */  lui        $t5, %hi(gActors)
/* 3F044 8003E444 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 3F048 8003E448 000C60C0 */  sll        $t4, $t4, 3
/* 3F04C 8003E44C 018D1821 */  addu       $v1, $t4, $t5
/* 3F050 8003E450 3C188003 */  lui        $t8, %hi(func_80030B0C)
/* 3F054 8003E454 240E0301 */  addiu      $t6, $zero, 0x301
/* 3F058 8003E458 250F0003 */  addiu      $t7, $t0, 3
/* 3F05C 8003E45C 27180B0C */  addiu      $t8, $t8, %lo(func_80030B0C)
/* 3F060 8003E460 24190014 */  addiu      $t9, $zero, 0x14
/* 3F064 8003E464 2409FFFC */  addiu      $t1, $zero, -4
/* 3F068 8003E468 A46E0094 */  sh         $t6, 0x94($v1)
/* 3F06C 8003E46C AC6F0080 */  sw         $t7, 0x80($v1)
/* 3F070 8003E470 AC78017C */  sw         $t8, 0x17c($v1)
/* 3F074 8003E474 AC790104 */  sw         $t9, 0x104($v1)
/* 3F078 8003E478 AC690108 */  sw         $t1, 0x108($v1)
/* 3F07C 8003E47C C6120110 */  lwc1       $f18, 0x110($s0)
/* 3F080 8003E480 3C01800F */  lui        $at, 0x800f
/* 3F084 8003E484 46009121 */  cvt.d.s    $f4, $f18
/* 3F088 8003E488 462021A0 */  cvt.s.d    $f6, $f4
/* 3F08C 8003E48C 3C0A800D */  lui        $t2, %hi(D_800D1A04)
/* 3F090 8003E490 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 3F094 8003E494 C6080110 */  lwc1       $f8, 0x110($s0)
/* 3F098 8003E498 254A1A04 */  addiu      $t2, $t2, %lo(D_800D1A04)
/* 3F09C 8003E49C 460042A1 */  cvt.d.s    $f10, $f8
/* 3F0A0 8003E4A0 46205420 */  cvt.s.d    $f16, $f10
/* 3F0A4 8003E4A4 E47000B4 */  swc1       $f16, 0xb4($v1)
/* 3F0A8 8003E4A8 C6120110 */  lwc1       $f18, 0x110($s0)
/* 3F0AC 8003E4AC C426BBF4 */  lwc1       $f6, -0x440c($at)
/* 3F0B0 8003E4B0 C427BBF0 */  lwc1       $f7, -0x4410($at)
/* 3F0B4 8003E4B4 46009121 */  cvt.d.s    $f4, $f18
/* 3F0B8 8003E4B8 46262202 */  mul.d      $f8, $f4, $f6
/* 3F0BC 8003E4BC 3C01800F */  lui        $at, 0x800f
/* 3F0C0 8003E4C0 462042A0 */  cvt.s.d    $f10, $f8
/* 3F0C4 8003E4C4 E46A0110 */  swc1       $f10, 0x110($v1)
/* 3F0C8 8003E4C8 C4600110 */  lwc1       $f0, 0x110($v1)
/* 3F0CC 8003E4CC 00000000 */  nop
/* 3F0D0 8003E4D0 E4600114 */  swc1       $f0, 0x114($v1)
/* 3F0D4 8003E4D4 C432BBFC */  lwc1       $f18, -0x4404($at)
/* 3F0D8 8003E4D8 C433BBF8 */  lwc1       $f19, -0x4408($at)
/* 3F0DC 8003E4DC 46000421 */  cvt.d.s    $f16, $f0
/* 3F0E0 8003E4E0 46328102 */  mul.d      $f4, $f16, $f18
/* 3F0E4 8003E4E4 3C0142C8 */  lui        $at, 0x42c8
/* 3F0E8 8003E4E8 44813000 */  mtc1       $at, $f6
/* 3F0EC 8003E4EC AC6A018C */  sw         $t2, 0x18c($v1)
/* 3F0F0 8003E4F0 E4660148 */  swc1       $f6, 0x148($v1)
/* 3F0F4 8003E4F4 462020A0 */  cvt.s.d    $f2, $f4
/* 3F0F8 8003E4F8 E4620118 */  swc1       $f2, 0x118($v1)
/* 3F0FC 8003E4FC E462011C */  swc1       $f2, 0x11c($v1)
.L8003E500:
/* 3F100 8003E500 8E030188 */  lw         $v1, 0x188($s0)
/* 3F104 8003E504 10000004 */  b          .L8003E518
/* 3F108 8003E508 246B0001 */   addiu     $t3, $v1, 1
.L8003E50C:
/* 3F10C 8003E50C 8E030188 */  lw         $v1, 0x188($s0)
/* 3F110 8003E510 AE000080 */  sw         $zero, 0x80($s0)
/* 3F114 8003E514 246B0001 */  addiu      $t3, $v1, 1
.L8003E518:
/* 3F118 8003E518 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3F11C 8003E51C AE0B0188 */  sw         $t3, 0x188($s0)
/* 3F120 8003E520 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F124 8003E524 03E00008 */  jr         $ra
/* 3F128 8003E528 27BD0038 */   addiu     $sp, $sp, 0x38
