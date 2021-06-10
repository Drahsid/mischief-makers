glabel func_8008C038
/* 8CC38 8008C038 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CC3C 8008C03C AFA50024 */  sw         $a1, 0x24($sp)
/* 8CC40 8008C040 AFA40020 */  sw         $a0, 0x20($sp)
/* 8CC44 8008C044 AFA60028 */  sw         $a2, 0x28($sp)
/* 8CC48 8008C048 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8CC4C 8008C04C AFB00018 */  sw         $s0, 0x18($sp)
/* 8CC50 8008C050 87A5002A */  lh         $a1, 0x2a($sp)
/* 8CC54 8008C054 87A40026 */  lh         $a0, 0x26($sp)
/* 8CC58 8008C058 0C004AAD */  jal        func_80012AB4
/* 8CC5C 8008C05C 00E08025 */   or        $s0, $a3, $zero
/* 8CC60 8008C060 240100F8 */  addiu      $at, $zero, 0xf8
/* 8CC64 8008C064 14410029 */  bne        $v0, $at, .L8008C10C
/* 8CC68 8008C068 3C0E800C */   lui       $t6, 0x800c
/* 8CC6C 8008C06C 97AA0022 */  lhu        $t2, 0x22($sp)
/* 8CC70 8008C070 3C0F800C */  lui        $t7, 0x800c
/* 8CC74 8008C074 000A5880 */  sll        $t3, $t2, 2
/* 8CC78 8008C078 016A5823 */  subu       $t3, $t3, $t2
/* 8CC7C 8008C07C 000B5880 */  sll        $t3, $t3, 2
/* 8CC80 8008C080 016A5821 */  addu       $t3, $t3, $t2
/* 8CC84 8008C084 87A40026 */  lh         $a0, 0x26($sp)
/* 8CC88 8008C088 85EFE558 */  lh         $t7, -0x1aa8($t7)
/* 8CC8C 8008C08C 000B5880 */  sll        $t3, $t3, 2
/* 8CC90 8008C090 016A5823 */  subu       $t3, $t3, $t2
/* 8CC94 8008C094 000B58C0 */  sll        $t3, $t3, 3
/* 8CC98 8008C098 3C0C800F */  lui        $t4, %hi(D_800EF664)
/* 8CC9C 8008C09C 008FC021 */  addu       $t8, $a0, $t7
/* 8CCA0 8008C0A0 018B6021 */  addu       $t4, $t4, $t3
/* 8CCA4 8008C0A4 8D8CF664 */  lw         $t4, %lo(D_800EF664)($t4)
/* 8CCA8 8008C0A8 8E0F0000 */  lw         $t7, ($s0)
/* 8CCAC 8008C0AC 85CEE55C */  lh         $t6, -0x1aa4($t6)
/* 8CCB0 8008C0B0 0018CC00 */  sll        $t9, $t8, 0x10
/* 8CCB4 8008C0B4 87A5002A */  lh         $a1, 0x2a($sp)
/* 8CCB8 8008C0B8 000C6A00 */  sll        $t5, $t4, 8
/* 8CCBC 8008C0BC 000FC080 */  sll        $t8, $t7, 2
/* 8CCC0 8008C0C0 01D94021 */  addu       $t0, $t6, $t9
/* 8CCC4 8008C0C4 01B87021 */  addu       $t6, $t5, $t8
/* 8CCC8 8008C0C8 3C018018 */  lui        $at, %hi(D_801822A0)
/* 8CCCC 8008C0CC 002E0821 */  addu       $at, $at, $t6
/* 8CCD0 8008C0D0 01054821 */  addu       $t1, $t0, $a1
/* 8CCD4 8008C0D4 AC2922A0 */  sw         $t1, %lo(D_801822A0)($at)
/* 8CCD8 8008C0D8 0C004811 */  jal        func_80012044
/* 8CCDC 8008C0DC 24060034 */   addiu     $a2, $zero, 0x34
/* 8CCE0 8008C0E0 87A40026 */  lh         $a0, 0x26($sp)
/* 8CCE4 8008C0E4 87A5002A */  lh         $a1, 0x2a($sp)
/* 8CCE8 8008C0E8 0C020FEC */  jal        func_80083FB0
/* 8CCEC 8008C0EC 00000000 */   nop
/* 8CCF0 8008C0F0 8E190000 */  lw         $t9, ($s0)
/* 8CCF4 8008C0F4 24020001 */  addiu      $v0, $zero, 1
/* 8CCF8 8008C0F8 27280001 */  addiu      $t0, $t9, 1
/* 8CCFC 8008C0FC AE080000 */  sw         $t0, ($s0)
/* 8CD00 8008C100 310B003F */  andi       $t3, $t0, 0x3f
/* 8CD04 8008C104 10000002 */  b          .L8008C110
/* 8CD08 8008C108 AE0B0000 */   sw        $t3, ($s0)
.L8008C10C:
/* 8CD0C 8008C10C 00001025 */  or         $v0, $zero, $zero
.L8008C110:
/* 8CD10 8008C110 8FBF001C */  lw         $ra, 0x1c($sp)
/* 8CD14 8008C114 8FB00018 */  lw         $s0, 0x18($sp)
/* 8CD18 8008C118 03E00008 */  jr         $ra
/* 8CD1C 8008C11C 27BD0020 */   addiu     $sp, $sp, 0x20
