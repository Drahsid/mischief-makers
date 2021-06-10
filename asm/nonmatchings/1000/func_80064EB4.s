glabel func_80064EB4
/* 65AB4 80064EB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65AB8 80064EB8 AFA40018 */  sw         $a0, 0x18($sp)
/* 65ABC 80064EBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 65AC0 80064EC0 97A4001A */  lhu        $a0, 0x1a($sp)
/* 65AC4 80064EC4 0C01CCC8 */  jal        func_80073320
/* 65AC8 80064EC8 00000000 */   nop
/* 65ACC 80064ECC 304E8000 */  andi       $t6, $v0, 0x8000
/* 65AD0 80064ED0 15C0001B */  bnez       $t6, .L80064F40
/* 65AD4 80064ED4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 65AD8 80064ED8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 65ADC 80064EDC 0C019FA7 */  jal        func_80067E9C
/* 65AE0 80064EE0 00000000 */   nop
/* 65AE4 80064EE4 24040080 */  addiu      $a0, $zero, 0x80
/* 65AE8 80064EE8 24050050 */  addiu      $a1, $zero, 0x50
/* 65AEC 80064EEC 0C00A6C0 */  jal        func_80029B00
/* 65AF0 80064EF0 2406FFB0 */   addiu     $a2, $zero, -0x50
/* 65AF4 80064EF4 10400011 */  beqz       $v0, .L80064F3C
/* 65AF8 80064EF8 3C0F800E */   lui       $t7, %hi(D_800E3584)
/* 65AFC 80064EFC 8DEF3584 */  lw         $t7, %lo(D_800E3584)($t7)
/* 65B00 80064F00 3C01000C */  lui        $at, 0xc
/* 65B04 80064F04 01E1C024 */  and        $t8, $t7, $at
/* 65B08 80064F08 1300000C */  beqz       $t8, .L80064F3C
/* 65B0C 80064F0C 24190070 */   addiu     $t9, $zero, 0x70
/* 65B10 80064F10 97A8001A */  lhu        $t0, 0x1a($sp)
/* 65B14 80064F14 3C01800F */  lui        $at, 0x800f
/* 65B18 80064F18 00084880 */  sll        $t1, $t0, 2
/* 65B1C 80064F1C 01284823 */  subu       $t1, $t1, $t0
/* 65B20 80064F20 00094880 */  sll        $t1, $t1, 2
/* 65B24 80064F24 01284821 */  addu       $t1, $t1, $t0
/* 65B28 80064F28 00094880 */  sll        $t1, $t1, 2
/* 65B2C 80064F2C 01284823 */  subu       $t1, $t1, $t0
/* 65B30 80064F30 000948C0 */  sll        $t1, $t1, 3
/* 65B34 80064F34 00290821 */  addu       $at, $at, $t1
/* 65B38 80064F38 A439F5E0 */  sh         $t9, -0xa20($at)
.L80064F3C:
/* 65B3C 80064F3C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80064F40:
/* 65B40 80064F40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 65B44 80064F44 03E00008 */  jr         $ra
/* 65B48 80064F48 00000000 */   nop
