glabel func_80053DC8
/* 549C8 80053DC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 549CC 80053DCC AFB10018 */  sw         $s1, 0x18($sp)
/* 549D0 80053DD0 3091FFFF */  andi       $s1, $a0, 0xffff
/* 549D4 80053DD4 00117080 */  sll        $t6, $s1, 2
/* 549D8 80053DD8 01D17023 */  subu       $t6, $t6, $s1
/* 549DC 80053DDC 000E7080 */  sll        $t6, $t6, 2
/* 549E0 80053DE0 01D17021 */  addu       $t6, $t6, $s1
/* 549E4 80053DE4 000E7080 */  sll        $t6, $t6, 2
/* 549E8 80053DE8 01D17023 */  subu       $t6, $t6, $s1
/* 549EC 80053DEC 3C0F800F */  lui        $t7, %hi(gActors)
/* 549F0 80053DF0 AFB00014 */  sw         $s0, 0x14($sp)
/* 549F4 80053DF4 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 549F8 80053DF8 000E70C0 */  sll        $t6, $t6, 3
/* 549FC 80053DFC 01CF8021 */  addu       $s0, $t6, $t7
/* 54A00 80053E00 9218012E */  lbu        $t8, 0x12e($s0)
/* 54A04 80053E04 920800D0 */  lbu        $t0, 0xd0($s0)
/* 54A08 80053E08 37190080 */  ori        $t9, $t8, 0x80
/* 54A0C 80053E0C AFBF001C */  sw         $ra, 0x1c($sp)
/* 54A10 80053E10 AFA40020 */  sw         $a0, 0x20($sp)
/* 54A14 80053E14 AFA50024 */  sw         $a1, 0x24($sp)
/* 54A18 80053E18 15000012 */  bnez       $t0, .L80053E64
/* 54A1C 80053E1C A219012E */   sb        $t9, 0x12e($s0)
/* 54A20 80053E20 8E0B0080 */  lw         $t3, 0x80($s0)
/* 54A24 80053E24 2401BFBF */  addiu      $at, $zero, -0x4041
/* 54A28 80053E28 01616024 */  and        $t4, $t3, $at
/* 54A2C 80053E2C 3C01FF3C */  lui        $at, 0xff3c
/* 54A30 80053E30 3421FFFF */  ori        $at, $at, 0xffff
/* 54A34 80053E34 01817024 */  and        $t6, $t4, $at
/* 54A38 80053E38 24090008 */  addiu      $t1, $zero, 8
/* 54A3C 80053E3C AE0C0080 */  sw         $t4, 0x80($s0)
/* 54A40 80053E40 3C010002 */  lui        $at, 2
/* 54A44 80053E44 312A00FF */  andi       $t2, $t1, 0xff
/* 54A48 80053E48 01C1C025 */  or         $t8, $t6, $at
/* 54A4C 80053E4C AE0E0080 */  sw         $t6, 0x80($s0)
/* 54A50 80053E50 24190001 */  addiu      $t9, $zero, 1
/* 54A54 80053E54 A60A0142 */  sh         $t2, 0x142($s0)
/* 54A58 80053E58 A2090140 */  sb         $t1, 0x140($s0)
/* 54A5C 80053E5C AE180080 */  sw         $t8, 0x80($s0)
/* 54A60 80053E60 A21900D0 */  sb         $t9, 0xd0($s0)
.L80053E64:
/* 54A64 80053E64 8E080080 */  lw         $t0, 0x80($s0)
/* 54A68 80053E68 00000000 */  nop
/* 54A6C 80053E6C 31094040 */  andi       $t1, $t0, 0x4040
/* 54A70 80053E70 11200009 */  beqz       $t1, .L80053E98
/* 54A74 80053E74 00000000 */   nop
/* 54A78 80053E78 0C017506 */  jal        func_8005D418
/* 54A7C 80053E7C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 54A80 80053E80 10400005 */  beqz       $v0, .L80053E98
/* 54A84 80053E84 00000000 */   nop
/* 54A88 80053E88 8E0A0080 */  lw         $t2, 0x80($s0)
/* 54A8C 80053E8C 2401BFBF */  addiu      $at, $zero, -0x4041
/* 54A90 80053E90 01415824 */  and        $t3, $t2, $at
/* 54A94 80053E94 AE0B0080 */  sw         $t3, 0x80($s0)
.L80053E98:
/* 54A98 80053E98 8E0C0080 */  lw         $t4, 0x80($s0)
/* 54A9C 80053E9C 3224FFFF */  andi       $a0, $s1, 0xffff
/* 54AA0 80053EA0 318D4040 */  andi       $t5, $t4, 0x4040
/* 54AA4 80053EA4 15A00004 */  bnez       $t5, .L80053EB8
/* 54AA8 80053EA8 97A50026 */   lhu       $a1, 0x26($sp)
/* 54AAC 80053EAC 0C0174DC */  jal        func_8005D370
/* 54AB0 80053EB0 24050044 */   addiu     $a1, $zero, 0x44
/* 54AB4 80053EB4 97A50026 */  lhu        $a1, 0x26($sp)
.L80053EB8:
/* 54AB8 80053EB8 0C014A9B */  jal        func_80052A6C
/* 54ABC 80053EBC 3224FFFF */   andi      $a0, $s1, 0xffff
/* 54AC0 80053EC0 97A50026 */  lhu        $a1, 0x26($sp)
/* 54AC4 80053EC4 0C014ECA */  jal        func_80053B28
/* 54AC8 80053EC8 3224FFFF */   andi      $a0, $s1, 0xffff
/* 54ACC 80053ECC 97A50026 */  lhu        $a1, 0x26($sp)
/* 54AD0 80053ED0 0C014C84 */  jal        func_80053210
/* 54AD4 80053ED4 3224FFFF */   andi      $a0, $s1, 0xffff
/* 54AD8 80053ED8 24010002 */  addiu      $at, $zero, 2
/* 54ADC 80053EDC 14410010 */  bne        $v0, $at, .L80053F20
/* 54AE0 80053EE0 3C028013 */   lui       $v0, %hi(D_801373D8)
/* 54AE4 80053EE4 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 54AE8 80053EE8 00000000 */  nop
/* 54AEC 80053EEC 304E0002 */  andi       $t6, $v0, 2
/* 54AF0 80053EF0 11C00005 */  beqz       $t6, .L80053F08
/* 54AF4 80053EF4 30590001 */   andi      $t9, $v0, 1
/* 54AF8 80053EF8 8E0F0080 */  lw         $t7, 0x80($s0)
/* 54AFC 80053EFC 00000000 */  nop
/* 54B00 80053F00 35F80020 */  ori        $t8, $t7, 0x20
/* 54B04 80053F04 AE180080 */  sw         $t8, 0x80($s0)
.L80053F08:
/* 54B08 80053F08 13200006 */  beqz       $t9, .L80053F24
/* 54B0C 80053F0C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 54B10 80053F10 8E080080 */  lw         $t0, 0x80($s0)
/* 54B14 80053F14 2401FFDF */  addiu      $at, $zero, -0x21
/* 54B18 80053F18 01014824 */  and        $t1, $t0, $at
/* 54B1C 80053F1C AE090080 */  sw         $t1, 0x80($s0)
.L80053F20:
/* 54B20 80053F20 8FBF001C */  lw         $ra, 0x1c($sp)
.L80053F24:
/* 54B24 80053F24 8FB00014 */  lw         $s0, 0x14($sp)
/* 54B28 80053F28 8FB10018 */  lw         $s1, 0x18($sp)
/* 54B2C 80053F2C 03E00008 */  jr         $ra
/* 54B30 80053F30 27BD0020 */   addiu     $sp, $sp, 0x20
