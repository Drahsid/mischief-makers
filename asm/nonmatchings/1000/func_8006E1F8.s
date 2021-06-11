glabel func_8006E1F8
/* 6EDF8 8006E1F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EDFC 8006E1FC AFA40020 */  sw         $a0, 0x20($sp)
/* 6EE00 8006E200 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EE04 8006E204 97A40022 */  lhu        $a0, 0x22($sp)
/* 6EE08 8006E208 0C01B242 */  jal        func_8006C908
/* 6EE0C 8006E20C 00000000 */   nop
/* 6EE10 8006E210 1440006E */  bnez       $v0, .L8006E3CC
/* 6EE14 8006E214 3C0F800F */   lui       $t7, %hi(gActors)
/* 6EE18 8006E218 97A40022 */  lhu        $a0, 0x22($sp)
/* 6EE1C 8006E21C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6EE20 8006E220 00047080 */  sll        $t6, $a0, 2
/* 6EE24 8006E224 01C47023 */  subu       $t6, $t6, $a0
/* 6EE28 8006E228 000E7080 */  sll        $t6, $t6, 2
/* 6EE2C 8006E22C 01C47021 */  addu       $t6, $t6, $a0
/* 6EE30 8006E230 000E7080 */  sll        $t6, $t6, 2
/* 6EE34 8006E234 01C47023 */  subu       $t6, $t6, $a0
/* 6EE38 8006E238 000E70C0 */  sll        $t6, $t6, 3
/* 6EE3C 8006E23C 01CF1821 */  addu       $v1, $t6, $t7
/* 6EE40 8006E240 946200D0 */  lhu        $v0, 0xd0($v1)
/* 6EE44 8006E244 24010250 */  addiu      $at, $zero, 0x250
/* 6EE48 8006E248 1441001A */  bne        $v0, $at, .L8006E2B4
/* 6EE4C 8006E24C 24580001 */   addiu     $t8, $v0, 1
/* 6EE50 8006E250 8C790080 */  lw         $t9, 0x80($v1)
/* 6EE54 8006E254 3C010002 */  lui        $at, 2
/* 6EE58 8006E258 03214025 */  or         $t0, $t9, $at
/* 6EE5C 8006E25C 3C01FFFE */  lui        $at, 0xfffe
/* 6EE60 8006E260 3421FFFF */  ori        $at, $at, 0xffff
/* 6EE64 8006E264 8C6B0098 */  lw         $t3, 0x98($v1)
/* 6EE68 8006E268 01015024 */  and        $t2, $t0, $at
/* 6EE6C 8006E26C 2401FFDF */  addiu      $at, $zero, -0x21
/* 6EE70 8006E270 01616024 */  and        $t4, $t3, $at
/* 6EE74 8006E274 444DF800 */  cfc1       $t5, $31
/* 6EE78 8006E278 3C014100 */  lui        $at, 0x4100
/* 6EE7C 8006E27C 44812000 */  mtc1       $at, $f4
/* 6EE80 8006E280 35A10003 */  ori        $at, $t5, 3
/* 6EE84 8006E284 38210002 */  xori       $at, $at, 2
/* 6EE88 8006E288 44C1F800 */  ctc1       $at, $31
/* 6EE8C 8006E28C C466011C */  lwc1       $f6, 0x11c($v1)
/* 6EE90 8006E290 AC680080 */  sw         $t0, 0x80($v1)
/* 6EE94 8006E294 46003224 */  cvt.w.s    $f8, $f6
/* 6EE98 8006E298 A47800D0 */  sh         $t8, 0xd0($v1)
/* 6EE9C 8006E29C 440E4000 */  mfc1       $t6, $f8
/* 6EEA0 8006E2A0 44CDF800 */  ctc1       $t5, $31
/* 6EEA4 8006E2A4 AC6A0080 */  sw         $t2, 0x80($v1)
/* 6EEA8 8006E2A8 AC6C0098 */  sw         $t4, 0x98($v1)
/* 6EEAC 8006E2AC E4640144 */  swc1       $f4, 0x144($v1)
/* 6EEB0 8006E2B0 AC6E00F0 */  sw         $t6, 0xf0($v1)
.L8006E2B4:
/* 6EEB4 8006E2B4 444FF800 */  cfc1       $t7, $31
/* 6EEB8 8006E2B8 C46A0118 */  lwc1       $f10, 0x118($v1)
/* 6EEBC 8006E2BC 35E10003 */  ori        $at, $t7, 3
/* 6EEC0 8006E2C0 38210002 */  xori       $at, $at, 2
/* 6EEC4 8006E2C4 44C1F800 */  ctc1       $at, $31
/* 6EEC8 8006E2C8 00000000 */  nop
/* 6EECC 8006E2CC 46005424 */  cvt.w.s    $f16, $f10
/* 6EED0 8006E2D0 44028000 */  mfc1       $v0, $f16
/* 6EED4 8006E2D4 44CFF800 */  ctc1       $t7, $31
/* 6EED8 8006E2D8 18400006 */  blez       $v0, .L8006E2F4
/* 6EEDC 8006E2DC AC6200EC */   sw        $v0, 0xec($v1)
/* 6EEE0 8006E2E0 8C780098 */  lw         $t8, 0x98($v1)
/* 6EEE4 8006E2E4 00000000 */  nop
/* 6EEE8 8006E2E8 33190008 */  andi       $t9, $t8, 8
/* 6EEEC 8006E2EC 1720000A */  bnez       $t9, .L8006E318
/* 6EEF0 8006E2F0 00000000 */   nop
.L8006E2F4:
/* 6EEF4 8006E2F4 8C6800EC */  lw         $t0, 0xec($v1)
/* 6EEF8 8006E2F8 00000000 */  nop
/* 6EEFC 8006E2FC 05010007 */  bgez       $t0, .L8006E31C
/* 6EF00 8006E300 00000000 */   nop
/* 6EF04 8006E304 8C690098 */  lw         $t1, 0x98($v1)
/* 6EF08 8006E308 00000000 */  nop
/* 6EF0C 8006E30C 312A0004 */  andi       $t2, $t1, 4
/* 6EF10 8006E310 11400002 */  beqz       $t2, .L8006E31C
/* 6EF14 8006E314 00000000 */   nop
.L8006E318:
/* 6EF18 8006E318 AC6000EC */  sw         $zero, 0xec($v1)
.L8006E31C:
/* 6EF1C 8006E31C 0C01A76A */  jal        func_80069DA8
/* 6EF20 8006E320 AFA3001C */   sw        $v1, 0x1c($sp)
/* 6EF24 8006E324 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EF28 8006E328 00000000 */  nop
/* 6EF2C 8006E32C 8C6B00F0 */  lw         $t3, 0xf0($v1)
/* 6EF30 8006E330 00000000 */  nop
/* 6EF34 8006E334 05610017 */  bgez       $t3, .L8006E394
/* 6EF38 8006E338 00000000 */   nop
/* 6EF3C 8006E33C 8C6C0098 */  lw         $t4, 0x98($v1)
/* 6EF40 8006E340 240E0200 */  addiu      $t6, $zero, 0x200
/* 6EF44 8006E344 318D0020 */  andi       $t5, $t4, 0x20
/* 6EF48 8006E348 11A00018 */  beqz       $t5, .L8006E3AC
/* 6EF4C 8006E34C 2401FFF7 */   addiu     $at, $zero, -9
/* 6EF50 8006E350 8C7900EC */  lw         $t9, 0xec($v1)
/* 6EF54 8006E354 946F0094 */  lhu        $t7, 0x94($v1)
/* 6EF58 8006E358 97A40022 */  lhu        $a0, 0x22($sp)
/* 6EF5C 8006E35C 31F8FFF7 */  andi       $t8, $t7, 0xfff7
/* 6EF60 8006E360 A46E00D0 */  sh         $t6, 0xd0($v1)
/* 6EF64 8006E364 A4780094 */  sh         $t8, 0x94($v1)
/* 6EF68 8006E368 07210003 */  bgez       $t9, .L8006E378
/* 6EF6C 8006E36C 00194043 */   sra       $t0, $t9, 1
/* 6EF70 8006E370 27210001 */  addiu      $at, $t9, 1
/* 6EF74 8006E374 00014043 */  sra        $t0, $at, 1
.L8006E378:
/* 6EF78 8006E378 AC6800EC */  sw         $t0, 0xec($v1)
/* 6EF7C 8006E37C AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6EF80 8006E380 0C019636 */  jal        func_800658D8
/* 6EF84 8006E384 AFA3001C */   sw        $v1, 0x1c($sp)
/* 6EF88 8006E388 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EF8C 8006E38C 10000008 */  b          .L8006E3B0
/* 6EF90 8006E390 8C650158 */   lw        $a1, 0x158($v1)
.L8006E394:
/* 6EF94 8006E394 8C690098 */  lw         $t1, 0x98($v1)
/* 6EF98 8006E398 00000000 */  nop
/* 6EF9C 8006E39C 312A0010 */  andi       $t2, $t1, 0x10
/* 6EFA0 8006E3A0 11400002 */  beqz       $t2, .L8006E3AC
/* 6EFA4 8006E3A4 00000000 */   nop
/* 6EFA8 8006E3A8 AC6000F0 */  sw         $zero, 0xf0($v1)
.L8006E3AC:
/* 6EFAC 8006E3AC 8C650158 */  lw         $a1, 0x158($v1)
.L8006E3B0:
/* 6EFB0 8006E3B0 00002025 */  or         $a0, $zero, $zero
/* 6EFB4 8006E3B4 3C060020 */  lui        $a2, 0x20
/* 6EFB8 8006E3B8 0C00A634 */  jal        func_800298D0
/* 6EFBC 8006E3BC AFA3001C */   sw        $v1, 0x1c($sp)
/* 6EFC0 8006E3C0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6EFC4 8006E3C4 00000000 */  nop
/* 6EFC8 8006E3C8 AC620158 */  sw         $v0, 0x158($v1)
.L8006E3CC:
/* 6EFCC 8006E3CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6EFD0 8006E3D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6EFD4 8006E3D4 03E00008 */  jr         $ra
/* 6EFD8 8006E3D8 00000000 */   nop
