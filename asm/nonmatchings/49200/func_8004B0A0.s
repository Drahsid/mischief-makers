glabel func_8004B0A0
/* 4BCA0 8004B0A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4BCA4 8004B0A4 AFA40020 */  sw         $a0, 0x20($sp)
/* 4BCA8 8004B0A8 97AE0022 */  lhu        $t6, 0x22($sp)
/* 4BCAC 8004B0AC 3C18800F */  lui        $t8, 0x800f
/* 4BCB0 8004B0B0 000E7880 */  sll        $t7, $t6, 2
/* 4BCB4 8004B0B4 01EE7823 */  subu       $t7, $t7, $t6
/* 4BCB8 8004B0B8 000F7880 */  sll        $t7, $t7, 2
/* 4BCBC 8004B0BC 01EE7821 */  addu       $t7, $t7, $t6
/* 4BCC0 8004B0C0 000F7880 */  sll        $t7, $t7, 2
/* 4BCC4 8004B0C4 01EE7823 */  subu       $t7, $t7, $t6
/* 4BCC8 8004B0C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 4BCCC 8004B0CC 000F78C0 */  sll        $t7, $t7, 3
/* 4BCD0 8004B0D0 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 4BCD4 8004B0D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4BCD8 8004B0D8 01F88021 */  addu       $s0, $t7, $t8
/* 4BCDC 8004B0DC 24190007 */  addiu      $t9, $zero, 7
/* 4BCE0 8004B0E0 A619012C */  sh         $t9, 0x12c($s0)
/* 4BCE4 8004B0E4 0C012325 */  jal        func_80048C94
/* 4BCE8 8004B0E8 00002025 */   or        $a0, $zero, $zero
/* 4BCEC 8004B0EC 8E0400EC */  lw         $a0, 0xec($s0)
/* 4BCF0 8004B0F0 00002825 */  or         $a1, $zero, $zero
/* 4BCF4 8004B0F4 0C00A607 */  jal        func_8002981C
/* 4BCF8 8004B0F8 00403025 */   or        $a2, $v0, $zero
/* 4BCFC 8004B0FC 920800D0 */  lbu        $t0, 0xd0($s0)
/* 4BD00 8004B100 AE0200EC */  sw         $v0, 0xec($s0)
/* 4BD04 8004B104 1500000B */  bnez       $t0, .L8004B134
/* 4BD08 8004B108 00000000 */   nop
/* 4BD0C 8004B10C 97A40022 */  lhu        $a0, 0x22($sp)
/* 4BD10 8004B110 0C01692C */  jal        func_8005A4B0
/* 4BD14 8004B114 3C053F80 */   lui       $a1, 0x3f80
/* 4BD18 8004B118 0C000CD3 */  jal        func_8000334C
/* 4BD1C 8004B11C 24040025 */   addiu     $a0, $zero, 0x25
/* 4BD20 8004B120 920A00D0 */  lbu        $t2, 0xd0($s0)
/* 4BD24 8004B124 2409002A */  addiu      $t1, $zero, 0x2a
/* 4BD28 8004B128 254B0001 */  addiu      $t3, $t2, 1
/* 4BD2C 8004B12C AE090170 */  sw         $t1, 0x170($s0)
/* 4BD30 8004B130 A20B00D0 */  sb         $t3, 0xd0($s0)
.L8004B134:
/* 4BD34 8004B134 820C0171 */  lb         $t4, 0x171($s0)
/* 4BD38 8004B138 24010001 */  addiu      $at, $zero, 1
/* 4BD3C 8004B13C 1581000A */  bne        $t4, $at, .L8004B168
/* 4BD40 8004B140 97A40022 */   lhu       $a0, 0x22($sp)
/* 4BD44 8004B144 8E020150 */  lw         $v0, 0x150($s0)
/* 4BD48 8004B148 A2000170 */  sb         $zero, 0x170($s0)
/* 4BD4C 8004B14C 14400004 */  bnez       $v0, .L8004B160
/* 4BD50 8004B150 244EFFFF */   addiu     $t6, $v0, -1
/* 4BD54 8004B154 240D0002 */  addiu      $t5, $zero, 2
/* 4BD58 8004B158 10000002 */  b          .L8004B164
/* 4BD5C 8004B15C A20D0171 */   sb        $t5, 0x171($s0)
.L8004B160:
/* 4BD60 8004B160 AE0E0150 */  sw         $t6, 0x150($s0)
.L8004B164:
/* 4BD64 8004B164 97A40022 */  lhu        $a0, 0x22($sp)
.L8004B168:
/* 4BD68 8004B168 0C017506 */  jal        func_8005D418
/* 4BD6C 8004B16C 00000000 */   nop
/* 4BD70 8004B170 10400002 */  beqz       $v0, .L8004B17C
/* 4BD74 8004B174 240F0003 */   addiu     $t7, $zero, 3
/* 4BD78 8004B178 A60F00D0 */  sh         $t7, 0xd0($s0)
.L8004B17C:
/* 4BD7C 8004B17C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4BD80 8004B180 8FB00018 */  lw         $s0, 0x18($sp)
/* 4BD84 8004B184 03E00008 */  jr         $ra
/* 4BD88 8004B188 27BD0020 */   addiu     $sp, $sp, 0x20
