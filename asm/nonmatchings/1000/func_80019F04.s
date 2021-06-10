glabel func_80019F04
/* 1AB04 80019F04 3C0E800D */  lui        $t6, %hi(D_800C81E0)
/* 1AB08 80019F08 95CE81E0 */  lhu        $t6, %lo(D_800C81E0)($t6)
/* 1AB0C 80019F0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AB10 80019F10 3401FFFF */  ori        $at, $zero, 0xffff
/* 1AB14 80019F14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1AB18 80019F18 15C10022 */  bne        $t6, $at, .L80019FA4
/* 1AB1C 80019F1C AFA40018 */   sw        $a0, 0x18($sp)
/* 1AB20 80019F20 0C000CE0 */  jal        func_80003380
/* 1AB24 80019F24 240400A9 */   addiu     $a0, $zero, 0xa9
/* 1AB28 80019F28 97A3001A */  lhu        $v1, 0x1a($sp)
/* 1AB2C 80019F2C 3C01800D */  lui        $at, 0x800d
/* 1AB30 80019F30 00037840 */  sll        $t7, $v1, 1
/* 1AB34 80019F34 25E30039 */  addiu      $v1, $t7, 0x39
/* 1AB38 80019F38 3078FFFF */  andi       $t8, $v1, 0xffff
/* 1AB3C 80019F3C 0018C880 */  sll        $t9, $t8, 2
/* 1AB40 80019F40 0338C823 */  subu       $t9, $t9, $t8
/* 1AB44 80019F44 0019C880 */  sll        $t9, $t9, 2
/* 1AB48 80019F48 0338C821 */  addu       $t9, $t9, $t8
/* 1AB4C 80019F4C 0019C880 */  sll        $t9, $t9, 2
/* 1AB50 80019F50 0338C823 */  subu       $t9, $t9, $t8
/* 1AB54 80019F54 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 1AB58 80019F58 A42381E0 */  sh         $v1, -0x7e20($at)
/* 1AB5C 80019F5C 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 1AB60 80019F60 0019C8C0 */  sll        $t9, $t9, 3
/* 1AB64 80019F64 03281021 */  addu       $v0, $t9, $t0
/* 1AB68 80019F68 44800000 */  mtc1       $zero, $f0
/* 1AB6C 80019F6C 94490094 */  lhu        $t1, 0x94($v0)
/* 1AB70 80019F70 944B022C */  lhu        $t3, 0x22c($v0)
/* 1AB74 80019F74 3C014334 */  lui        $at, 0x4334
/* 1AB78 80019F78 44812000 */  mtc1       $at, $f4
/* 1AB7C 80019F7C 352A000E */  ori        $t2, $t1, 0xe
/* 1AB80 80019F80 356C000E */  ori        $t4, $t3, 0xe
/* 1AB84 80019F84 A44A0094 */  sh         $t2, 0x94($v0)
/* 1AB88 80019F88 A44C022C */  sh         $t4, 0x22c($v0)
/* 1AB8C 80019F8C E44000BC */  swc1       $f0, 0xbc($v0)
/* 1AB90 80019F90 E44000C4 */  swc1       $f0, 0xc4($v0)
/* 1AB94 80019F94 E4400254 */  swc1       $f0, 0x254($v0)
/* 1AB98 80019F98 E4400258 */  swc1       $f0, 0x258($v0)
/* 1AB9C 80019F9C E440025C */  swc1       $f0, 0x25c($v0)
/* 1ABA0 80019FA0 E44400C0 */  swc1       $f4, 0xc0($v0)
.L80019FA4:
/* 1ABA4 80019FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1ABA8 80019FA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1ABAC 80019FAC 03E00008 */  jr         $ra
/* 1ABB0 80019FB0 00000000 */   nop
