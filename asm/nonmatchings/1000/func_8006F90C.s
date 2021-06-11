glabel func_8006F90C
/* 7050C 8006F90C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70510 8006F910 AFB10018 */  sw         $s1, 0x18($sp)
/* 70514 8006F914 3091FFFF */  andi       $s1, $a0, 0xffff
/* 70518 8006F918 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7051C 8006F91C AFA40020 */  sw         $a0, 0x20($sp)
/* 70520 8006F920 AFB00014 */  sw         $s0, 0x14($sp)
/* 70524 8006F924 0C010216 */  jal        func_80040858
/* 70528 8006F928 3224FFFF */   andi      $a0, $s1, 0xffff
/* 7052C 8006F92C 00117080 */  sll        $t6, $s1, 2
/* 70530 8006F930 01D17023 */  subu       $t6, $t6, $s1
/* 70534 8006F934 000E7080 */  sll        $t6, $t6, 2
/* 70538 8006F938 01D17021 */  addu       $t6, $t6, $s1
/* 7053C 8006F93C 000E7080 */  sll        $t6, $t6, 2
/* 70540 8006F940 01D17023 */  subu       $t6, $t6, $s1
/* 70544 8006F944 3C0F800F */  lui        $t7, %hi(gActors)
/* 70548 8006F948 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7054C 8006F94C 000E70C0 */  sll        $t6, $t6, 3
/* 70550 8006F950 01CF8021 */  addu       $s0, $t6, $t7
/* 70554 8006F954 960200D0 */  lhu        $v0, 0xd0($s0)
/* 70558 8006F958 240101C0 */  addiu      $at, $zero, 0x1c0
/* 7055C 8006F95C 14410021 */  bne        $v0, $at, .L8006F9E4
/* 70560 8006F960 24580001 */   addiu     $t8, $v0, 1
/* 70564 8006F964 8E090080 */  lw         $t1, 0x80($s0)
/* 70568 8006F968 3C01FFFF */  lui        $at, 0xffff
/* 7056C 8006F96C 3421607F */  ori        $at, $at, 0x607f
/* 70570 8006F970 01215024 */  and        $t2, $t1, $at
/* 70574 8006F974 3C010001 */  lui        $at, 1
/* 70578 8006F978 96190094 */  lhu        $t9, 0x94($s0)
/* 7057C 8006F97C 01416025 */  or         $t4, $t2, $at
/* 70580 8006F980 3C01FFFD */  lui        $at, 0xfffd
/* 70584 8006F984 3421FFFF */  ori        $at, $at, 0xffff
/* 70588 8006F988 3328FDFF */  andi       $t0, $t9, 0xfdff
/* 7058C 8006F98C 8E0F0098 */  lw         $t7, 0x98($s0)
/* 70590 8006F990 01817024 */  and        $t6, $t4, $at
/* 70594 8006F994 A61800D0 */  sh         $t8, 0xd0($s0)
/* 70598 8006F998 A6080094 */  sh         $t0, 0x94($s0)
/* 7059C 8006F99C AE0A0080 */  sw         $t2, 0x80($s0)
/* 705A0 8006F9A0 2401FFBF */  addiu      $at, $zero, -0x41
/* 705A4 8006F9A4 3C19800E */  lui        $t9, %hi(D_800E20C4)
/* 705A8 8006F9A8 AE0C0080 */  sw         $t4, 0x80($s0)
/* 705AC 8006F9AC 273920C4 */  addiu      $t9, $t9, %lo(D_800E20C4)
/* 705B0 8006F9B0 24080001 */  addiu      $t0, $zero, 1
/* 705B4 8006F9B4 01E1C024 */  and        $t8, $t7, $at
/* 705B8 8006F9B8 AE180098 */  sw         $t8, 0x98($s0)
/* 705BC 8006F9BC AE0E0080 */  sw         $t6, 0x80($s0)
/* 705C0 8006F9C0 A60800E6 */  sh         $t0, 0xe6($s0)
/* 705C4 8006F9C4 AE1900E8 */  sw         $t9, 0xe8($s0)
/* 705C8 8006F9C8 AE0000EC */  sw         $zero, 0xec($s0)
/* 705CC 8006F9CC AE0000F0 */  sw         $zero, 0xf0($s0)
/* 705D0 8006F9D0 0C01B2E2 */  jal        func_8006CB88
/* 705D4 8006F9D4 3224FFFF */   andi      $a0, $s1, 0xffff
/* 705D8 8006F9D8 2404003C */  addiu      $a0, $zero, 0x3c
/* 705DC 8006F9DC 0C000DB2 */  jal        func_800036C8
/* 705E0 8006F9E0 3225FFFF */   andi      $a1, $s1, 0xffff
.L8006F9E4:
/* 705E4 8006F9E4 9204009F */  lbu        $a0, 0x9f($s0)
/* 705E8 8006F9E8 00002825 */  or         $a1, $zero, $zero
/* 705EC 8006F9EC 0C00A607 */  jal        func_8002981C
/* 705F0 8006F9F0 24060004 */   addiu     $a2, $zero, 4
/* 705F4 8006F9F4 304900FF */  andi       $t1, $v0, 0xff
/* 705F8 8006F9F8 11200004 */  beqz       $t1, .L8006FA0C
/* 705FC 8006F9FC A202009F */   sb        $v0, 0x9f($s0)
/* 70600 8006FA00 860A00E6 */  lh         $t2, 0xe6($s0)
/* 70604 8006FA04 00000000 */  nop
/* 70608 8006FA08 15400006 */  bnez       $t2, .L8006FA24
.L8006FA0C:
/* 7060C 8006FA0C 3C0141C8 */   lui       $at, 0x41c8
/* 70610 8006FA10 44812000 */  mtc1       $at, $f4
/* 70614 8006FA14 AE000080 */  sw         $zero, 0x80($s0)
/* 70618 8006FA18 3224FFFF */  andi       $a0, $s1, 0xffff
/* 7061C 8006FA1C 0C01B3F7 */  jal        func_8006CFDC
/* 70620 8006FA20 E604013C */   swc1      $f4, 0x13c($s0)
.L8006FA24:
/* 70624 8006FA24 8FBF001C */  lw         $ra, 0x1c($sp)
/* 70628 8006FA28 8FB00014 */  lw         $s0, 0x14($sp)
/* 7062C 8006FA2C 8FB10018 */  lw         $s1, 0x18($sp)
/* 70630 8006FA30 03E00008 */  jr         $ra
/* 70634 8006FA34 27BD0020 */   addiu     $sp, $sp, 0x20
