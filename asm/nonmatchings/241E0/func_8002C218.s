glabel func_8002C218
/* 2CE18 8002C218 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2CE1C 8002C21C 000E7880 */  sll        $t7, $t6, 2
/* 2CE20 8002C220 01EE7823 */  subu       $t7, $t7, $t6
/* 2CE24 8002C224 000F7880 */  sll        $t7, $t7, 2
/* 2CE28 8002C228 01EE7821 */  addu       $t7, $t7, $t6
/* 2CE2C 8002C22C 000F7880 */  sll        $t7, $t7, 2
/* 2CE30 8002C230 01EE7823 */  subu       $t7, $t7, $t6
/* 2CE34 8002C234 3C18800F */  lui        $t8, %hi(gActors)
/* 2CE38 8002C238 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2CE3C 8002C23C 000F78C0 */  sll        $t7, $t7, 3
/* 2CE40 8002C240 01F81021 */  addu       $v0, $t7, $t8
/* 2CE44 8002C244 8C4300EC */  lw         $v1, 0xec($v0)
/* 2CE48 8002C248 8C4500F0 */  lw         $a1, 0xf0($v0)
/* 2CE4C 8002C24C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2CE50 8002C250 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CE54 8002C254 AFA40028 */  sw         $a0, 0x28($sp)
/* 2CE58 8002C258 01C02025 */  or         $a0, $t6, $zero
/* 2CE5C 8002C25C 04610003 */  bgez       $v1, .L8002C26C
/* 2CE60 8002C260 0003CB83 */   sra       $t9, $v1, 0xe
/* 2CE64 8002C264 24613FFF */  addiu      $at, $v1, 0x3fff
/* 2CE68 8002C268 0001CB83 */  sra        $t9, $at, 0xe
.L8002C26C:
/* 2CE6C 8002C26C 03201825 */  or         $v1, $t9, $zero
/* 2CE70 8002C270 00630019 */  multu      $v1, $v1
/* 2CE74 8002C274 AFA20018 */  sw         $v0, 0x18($sp)
/* 2CE78 8002C278 04A10003 */  bgez       $a1, .L8002C288
/* 2CE7C 8002C27C 00054383 */   sra       $t0, $a1, 0xe
/* 2CE80 8002C280 24A13FFF */  addiu      $at, $a1, 0x3fff
/* 2CE84 8002C284 00014383 */  sra        $t0, $at, 0xe
.L8002C288:
/* 2CE88 8002C288 00004812 */  mflo       $t1
/* 2CE8C 8002C28C 00000000 */  nop
/* 2CE90 8002C290 00000000 */  nop
/* 2CE94 8002C294 01080019 */  multu      $t0, $t0
/* 2CE98 8002C298 00005012 */  mflo       $t2
/* 2CE9C 8002C29C 012A5821 */  addu       $t3, $t1, $t2
/* 2CEA0 8002C2A0 448B2000 */  mtc1       $t3, $f4
/* 2CEA4 8002C2A4 0C0295C4 */  jal        sqrtf
/* 2CEA8 8002C2A8 46802320 */   cvt.s.w   $f12, $f4
/* 2CEAC 8002C2AC 8FA20018 */  lw         $v0, 0x18($sp)
/* 2CEB0 8002C2B0 00000000 */  nop
/* 2CEB4 8002C2B4 8C4300EC */  lw         $v1, 0xec($v0)
/* 2CEB8 8002C2B8 00000000 */  nop
/* 2CEBC 8002C2BC 1460000B */  bnez       $v1, .L8002C2EC
/* 2CEC0 8002C2C0 00000000 */   nop
/* 2CEC4 8002C2C4 8C4C0080 */  lw         $t4, 0x80($v0)
/* 2CEC8 8002C2C8 00000000 */  nop
/* 2CECC 8002C2CC 318D0020 */  andi       $t5, $t4, 0x20
/* 2CED0 8002C2D0 11A00006 */  beqz       $t5, .L8002C2EC
/* 2CED4 8002C2D4 00000000 */   nop
/* 2CED8 8002C2D8 C44600C4 */  lwc1       $f6, 0xc4($v0)
/* 2CEDC 8002C2DC 00000000 */  nop
/* 2CEE0 8002C2E0 46003201 */  sub.s      $f8, $f6, $f0
/* 2CEE4 8002C2E4 1000000C */  b          .L8002C318
/* 2CEE8 8002C2E8 E44800C4 */   swc1      $f8, 0xc4($v0)
.L8002C2EC:
/* 2CEEC 8002C2EC 04610006 */  bgez       $v1, .L8002C308
/* 2CEF0 8002C2F0 00000000 */   nop
/* 2CEF4 8002C2F4 C44A00C4 */  lwc1       $f10, 0xc4($v0)
/* 2CEF8 8002C2F8 00000000 */  nop
/* 2CEFC 8002C2FC 46005400 */  add.s      $f16, $f10, $f0
/* 2CF00 8002C300 10000005 */  b          .L8002C318
/* 2CF04 8002C304 E45000C4 */   swc1      $f16, 0xc4($v0)
.L8002C308:
/* 2CF08 8002C308 C45200C4 */  lwc1       $f18, 0xc4($v0)
/* 2CF0C 8002C30C 00000000 */  nop
/* 2CF10 8002C310 46009101 */  sub.s      $f4, $f18, $f0
/* 2CF14 8002C314 E44400C4 */  swc1       $f4, 0xc4($v0)
.L8002C318:
/* 2CF18 8002C318 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CF1C 8002C31C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2CF20 8002C320 03E00008 */  jr         $ra
/* 2CF24 8002C324 00000000 */   nop
