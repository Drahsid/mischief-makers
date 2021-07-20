glabel func_8003E52C
/* 3F12C 8003E52C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F130 8003E530 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F134 8003E534 AFA40020 */  sw         $a0, 0x20($sp)
/* 3F138 8003E538 AFA50024 */  sw         $a1, 0x24($sp)
/* 3F13C 8003E53C AFA60028 */  sw         $a2, 0x28($sp)
/* 3F140 8003E540 AFA7002C */  sw         $a3, 0x2c($sp)
/* 3F144 8003E544 240500C0 */  addiu      $a1, $zero, 0xc0
/* 3F148 8003E548 0C00A12E */  jal        func_800284B8
/* 3F14C 8003E54C 24040090 */   addiu     $a0, $zero, 0x90
/* 3F150 8003E550 10400037 */  beqz       $v0, .L8003E630
/* 3F154 8003E554 3045FFFF */   andi      $a1, $v0, 0xffff
/* 3F158 8003E558 00057080 */  sll        $t6, $a1, 2
/* 3F15C 8003E55C 01C57023 */  subu       $t6, $t6, $a1
/* 3F160 8003E560 000E7080 */  sll        $t6, $t6, 2
/* 3F164 8003E564 01C57021 */  addu       $t6, $t6, $a1
/* 3F168 8003E568 000E7080 */  sll        $t6, $t6, 2
/* 3F16C 8003E56C 01C57023 */  subu       $t6, $t6, $a1
/* 3F170 8003E570 3C0F800F */  lui        $t7, %hi(gActors)
/* 3F174 8003E574 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3F178 8003E578 000E70C0 */  sll        $t6, $t6, 3
/* 3F17C 8003E57C 01CF1821 */  addu       $v1, $t6, $t7
/* 3F180 8003E580 24180073 */  addiu      $t8, $zero, 0x73
/* 3F184 8003E584 A47800D2 */  sh         $t8, 0xd2($v1)
/* 3F188 8003E588 AFA30018 */  sw         $v1, 0x18($sp)
/* 3F18C 8003E58C 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 3F190 8003E590 0C0078B4 */  jal        func_8001E2D0
/* 3F194 8003E594 A7A5001E */   sh        $a1, 0x1e($sp)
/* 3F198 8003E598 8FA30018 */  lw         $v1, 0x18($sp)
/* 3F19C 8003E59C 87B90026 */  lh         $t9, 0x26($sp)
/* 3F1A0 8003E5A0 87A8002A */  lh         $t0, 0x2a($sp)
/* 3F1A4 8003E5A4 97A90022 */  lhu        $t1, 0x22($sp)
/* 3F1A8 8003E5A8 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 3F1AC 8003E5AC 97A5001E */  lhu        $a1, 0x1e($sp)
/* 3F1B0 8003E5B0 24040026 */  addiu      $a0, $zero, 0x26
/* 3F1B4 8003E5B4 AC790170 */  sw         $t9, 0x170($v1)
/* 3F1B8 8003E5B8 AC680174 */  sw         $t0, 0x174($v1)
/* 3F1BC 8003E5BC AC690150 */  sw         $t1, 0x150($v1)
/* 3F1C0 8003E5C0 0C000DB2 */  jal        func_800036C8
/* 3F1C4 8003E5C4 E4640110 */   swc1      $f4, 0x110($v1)
/* 3F1C8 8003E5C8 8FA30018 */  lw         $v1, 0x18($sp)
/* 3F1CC 8003E5CC 3C0141A0 */  lui        $at, 0x41a0
/* 3F1D0 8003E5D0 44813000 */  mtc1       $at, $f6
/* 3F1D4 8003E5D4 3C014180 */  lui        $at, 0x4180
/* 3F1D8 8003E5D8 44814000 */  mtc1       $at, $f8
/* 3F1DC 8003E5DC 3C0E800E */  lui        $t6, %hi(D_800D8588)
/* 3F1E0 8003E5E0 240A0B11 */  addiu      $t2, $zero, 0xb11
/* 3F1E4 8003E5E4 240B000B */  addiu      $t3, $zero, 0xb
/* 3F1E8 8003E5E8 240C02D0 */  addiu      $t4, $zero, 0x2d0
/* 3F1EC 8003E5EC 240D00F0 */  addiu      $t5, $zero, 0xf0
/* 3F1F0 8003E5F0 25CE8588 */  addiu      $t6, $t6, %lo(D_800D8588)
/* 3F1F4 8003E5F4 240F0080 */  addiu      $t7, $zero, 0x80
/* 3F1F8 8003E5F8 24180018 */  addiu      $t8, $zero, 0x18
/* 3F1FC 8003E5FC 24190050 */  addiu      $t9, $zero, 0x50
/* 3F200 8003E600 A46A0094 */  sh         $t2, 0x94($v1)
/* 3F204 8003E604 AC6B0080 */  sw         $t3, 0x80($v1)
/* 3F208 8003E608 A46C0084 */  sh         $t4, 0x84($v1)
/* 3F20C 8003E60C A4600088 */  sh         $zero, 0x88($v1)
/* 3F210 8003E610 A460008C */  sh         $zero, 0x8c($v1)
/* 3F214 8003E614 A46D0090 */  sh         $t5, 0x90($v1)
/* 3F218 8003E618 AC6E018C */  sw         $t6, 0x18c($v1)
/* 3F21C 8003E61C A06F009F */  sb         $t7, 0x9f($v1)
/* 3F220 8003E620 A078009D */  sb         $t8, 0x9d($v1)
/* 3F224 8003E624 A079009E */  sb         $t9, 0x9e($v1)
/* 3F228 8003E628 E46600B4 */  swc1       $f6, 0xb4($v1)
/* 3F22C 8003E62C E46800B8 */  swc1       $f8, 0xb8($v1)
.L8003E630:
/* 3F230 8003E630 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F234 8003E634 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F238 8003E638 03E00008 */  jr         $ra
/* 3F23C 8003E63C 00000000 */   nop
