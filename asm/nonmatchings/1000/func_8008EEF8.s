glabel func_8008EEF8
/* 8FAF8 8008EEF8 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8FAFC 8008EEFC 00057080 */  sll        $t6, $a1, 2
/* 8FB00 8008EF00 01C57023 */  subu       $t6, $t6, $a1
/* 8FB04 8008EF04 000E7080 */  sll        $t6, $t6, 2
/* 8FB08 8008EF08 01C57021 */  addu       $t6, $t6, $a1
/* 8FB0C 8008EF0C 000E7080 */  sll        $t6, $t6, 2
/* 8FB10 8008EF10 01C57023 */  subu       $t6, $t6, $a1
/* 8FB14 8008EF14 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8FB18 8008EF18 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 8FB1C 8008EF1C 000E70C0 */  sll        $t6, $t6, 3
/* 8FB20 8008EF20 01CF1821 */  addu       $v1, $t6, $t7
/* 8FB24 8008EF24 8C780098 */  lw         $t8, 0x98($v1)
/* 8FB28 8008EF28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8FB2C 8008EF2C 33190200 */  andi       $t9, $t8, 0x200
/* 8FB30 8008EF30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FB34 8008EF34 13200017 */  beqz       $t9, .L8008EF94
/* 8FB38 8008EF38 AFA40020 */   sw        $a0, 0x20($sp)
/* 8FB3C 8008EF3C 2404002F */  addiu      $a0, $zero, 0x2f
/* 8FB40 8008EF40 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8FB44 8008EF44 0C000DB2 */  jal        func_800036C8
/* 8FB48 8008EF48 A7A50022 */   sh        $a1, 0x22($sp)
/* 8FB4C 8008EF4C 97A40022 */  lhu        $a0, 0x22($sp)
/* 8FB50 8008EF50 0C023A93 */  jal        func_8008EA4C
/* 8FB54 8008EF54 00000000 */   nop
/* 8FB58 8008EF58 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8FB5C 8008EF5C 3C01FFFE */  lui        $at, 0xfffe
/* 8FB60 8008EF60 8C690080 */  lw         $t1, 0x80($v1)
/* 8FB64 8008EF64 3421FD7F */  ori        $at, $at, 0xfd7f
/* 8FB68 8008EF68 01215024 */  and        $t2, $t1, $at
/* 8FB6C 8008EF6C 3C010002 */  lui        $at, 2
/* 8FB70 8008EF70 240801B0 */  addiu      $t0, $zero, 0x1b0
/* 8FB74 8008EF74 01416025 */  or         $t4, $t2, $at
/* 8FB78 8008EF78 AC6A0080 */  sw         $t2, 0x80($v1)
/* 8FB7C 8008EF7C 24020001 */  addiu      $v0, $zero, 1
/* 8FB80 8008EF80 A46800D0 */  sh         $t0, 0xd0($v1)
/* 8FB84 8008EF84 AC6C0080 */  sw         $t4, 0x80($v1)
/* 8FB88 8008EF88 AC6000EC */  sw         $zero, 0xec($v1)
/* 8FB8C 8008EF8C 10000002 */  b          .L8008EF98
/* 8FB90 8008EF90 AC6000F0 */   sw        $zero, 0xf0($v1)
.L8008EF94:
/* 8FB94 8008EF94 00001025 */  or         $v0, $zero, $zero
.L8008EF98:
/* 8FB98 8008EF98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FB9C 8008EF9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8FBA0 8008EFA0 03E00008 */  jr         $ra
/* 8FBA4 8008EFA4 00000000 */   nop
