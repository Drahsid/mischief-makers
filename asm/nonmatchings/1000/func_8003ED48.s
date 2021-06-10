glabel func_8003ED48
/* 3F948 8003ED48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F94C 8003ED4C AFA60020 */  sw         $a2, 0x20($sp)
/* 3F950 8003ED50 AFA70024 */  sw         $a3, 0x24($sp)
/* 3F954 8003ED54 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3F958 8003ED58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F95C 8003ED5C AFA40018 */  sw         $a0, 0x18($sp)
/* 3F960 8003ED60 87A50022 */  lh         $a1, 0x22($sp)
/* 3F964 8003ED64 87A60026 */  lh         $a2, 0x26($sp)
/* 3F968 8003ED68 87A7002A */  lh         $a3, 0x2a($sp)
/* 3F96C 8003ED6C 0C00C4A1 */  jal        func_80031284
/* 3F970 8003ED70 24040168 */   addiu     $a0, $zero, 0x168
/* 3F974 8003ED74 1040001B */  beqz       $v0, .L8003EDE4
/* 3F978 8003ED78 3C01800F */   lui       $at, 0x800f
/* 3F97C 8003ED7C 00027080 */  sll        $t6, $v0, 2
/* 3F980 8003ED80 01C27023 */  subu       $t6, $t6, $v0
/* 3F984 8003ED84 000E7080 */  sll        $t6, $t6, 2
/* 3F988 8003ED88 01C27021 */  addu       $t6, $t6, $v0
/* 3F98C 8003ED8C 000E7080 */  sll        $t6, $t6, 2
/* 3F990 8003ED90 01C27023 */  subu       $t6, $t6, $v0
/* 3F994 8003ED94 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 3F998 8003ED98 C422BC08 */  lwc1       $f2, -0x43f8($at)
/* 3F99C 8003ED9C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 3F9A0 8003EDA0 000E70C0 */  sll        $t6, $t6, 3
/* 3F9A4 8003EDA4 01CF1821 */  addu       $v1, $t6, $t7
/* 3F9A8 8003EDA8 44800000 */  mtc1       $zero, $f0
/* 3F9AC 8003EDAC 3C014170 */  lui        $at, 0x4170
/* 3F9B0 8003EDB0 44812000 */  mtc1       $at, $f4
/* 3F9B4 8003EDB4 3C19800E */  lui        $t9, %hi(D_800D8628)
/* 3F9B8 8003EDB8 24180001 */  addiu      $t8, $zero, 1
/* 3F9BC 8003EDBC 27398628 */  addiu      $t9, $t9, %lo(D_800D8628)
/* 3F9C0 8003EDC0 2408FFEE */  addiu      $t0, $zero, -0x12
/* 3F9C4 8003EDC4 A4780094 */  sh         $t8, 0x94($v1)
/* 3F9C8 8003EDC8 AC79018C */  sw         $t9, 0x18c($v1)
/* 3F9CC 8003EDCC AC680154 */  sw         $t0, 0x154($v1)
/* 3F9D0 8003EDD0 E4620110 */  swc1       $f2, 0x110($v1)
/* 3F9D4 8003EDD4 E4620114 */  swc1       $f2, 0x114($v1)
/* 3F9D8 8003EDD8 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 3F9DC 8003EDDC E46000B8 */  swc1       $f0, 0xb8($v1)
/* 3F9E0 8003EDE0 E4640148 */  swc1       $f4, 0x148($v1)
.L8003EDE4:
/* 3F9E4 8003EDE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F9E8 8003EDE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3F9EC 8003EDEC 03E00008 */  jr         $ra
/* 3F9F0 8003EDF0 00000000 */   nop
