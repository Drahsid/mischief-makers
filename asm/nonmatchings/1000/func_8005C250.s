glabel func_8005C250
/* 5CE50 8005C250 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5CE54 8005C254 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5CE58 8005C258 AFA40020 */  sw         $a0, 0x20($sp)
/* 5CE5C 8005C25C 24040010 */  addiu      $a0, $zero, 0x10
/* 5CE60 8005C260 0C00A12E */  jal        func_800284B8
/* 5CE64 8005C264 2405002D */   addiu     $a1, $zero, 0x2d
/* 5CE68 8005C268 14400003 */  bnez       $v0, .L8005C278
/* 5CE6C 8005C26C 3045FFFF */   andi      $a1, $v0, 0xffff
/* 5CE70 8005C270 10000051 */  b          .L8005C3B8
/* 5CE74 8005C274 00A01025 */   or        $v0, $a1, $zero
.L8005C278:
/* 5CE78 8005C278 00057080 */  sll        $t6, $a1, 2
/* 5CE7C 8005C27C 01C57023 */  subu       $t6, $t6, $a1
/* 5CE80 8005C280 000E7080 */  sll        $t6, $t6, 2
/* 5CE84 8005C284 01C57021 */  addu       $t6, $t6, $a1
/* 5CE88 8005C288 000E7080 */  sll        $t6, $t6, 2
/* 5CE8C 8005C28C 01C57023 */  subu       $t6, $t6, $a1
/* 5CE90 8005C290 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 5CE94 8005C294 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 5CE98 8005C298 000E70C0 */  sll        $t6, $t6, 3
/* 5CE9C 8005C29C 01CF1821 */  addu       $v1, $t6, $t7
/* 5CEA0 8005C2A0 2418002E */  addiu      $t8, $zero, 0x2e
/* 5CEA4 8005C2A4 A47800D2 */  sh         $t8, 0xd2($v1)
/* 5CEA8 8005C2A8 AFA30018 */  sw         $v1, 0x18($sp)
/* 5CEAC 8005C2AC 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 5CEB0 8005C2B0 0C0078B4 */  jal        func_8001E2D0
/* 5CEB4 8005C2B4 A7A5001E */   sh        $a1, 0x1e($sp)
/* 5CEB8 8005C2B8 97A70022 */  lhu        $a3, 0x22($sp)
/* 5CEBC 8005C2BC 3C08800F */  lui        $t0, 0x800f
/* 5CEC0 8005C2C0 0007C880 */  sll        $t9, $a3, 2
/* 5CEC4 8005C2C4 0327C823 */  subu       $t9, $t9, $a3
/* 5CEC8 8005C2C8 0019C880 */  sll        $t9, $t9, 2
/* 5CECC 8005C2CC 0327C821 */  addu       $t9, $t9, $a3
/* 5CED0 8005C2D0 0019C880 */  sll        $t9, $t9, 2
/* 5CED4 8005C2D4 0327C823 */  subu       $t9, $t9, $a3
/* 5CED8 8005C2D8 0019C8C0 */  sll        $t9, $t9, 3
/* 5CEDC 8005C2DC 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 5CEE0 8005C2E0 8FA30018 */  lw         $v1, 0x18($sp)
/* 5CEE4 8005C2E4 03282021 */  addu       $a0, $t9, $t0
/* 5CEE8 8005C2E8 948A0094 */  lhu        $t2, 0x94($a0)
/* 5CEEC 8005C2EC 94690094 */  lhu        $t1, 0x94($v1)
/* 5CEF0 8005C2F0 314B0160 */  andi       $t3, $t2, 0x160
/* 5CEF4 8005C2F4 012B6025 */  or         $t4, $t1, $t3
/* 5CEF8 8005C2F8 358D0800 */  ori        $t5, $t4, 0x800
/* 5CEFC 8005C2FC A46D0094 */  sh         $t5, 0x94($v1)
/* 5CF00 8005C300 8C8F0080 */  lw         $t7, 0x80($a0)
/* 5CF04 8005C304 8C6E0080 */  lw         $t6, 0x80($v1)
/* 5CF08 8005C308 31F80028 */  andi       $t8, $t7, 0x28
/* 5CF0C 8005C30C 3C010008 */  lui        $at, 8
/* 5CF10 8005C310 01D8C825 */  or         $t9, $t6, $t8
/* 5CF14 8005C314 03214025 */  or         $t0, $t9, $at
/* 5CF18 8005C318 3C010800 */  lui        $at, 0x800
/* 5CF1C 8005C31C 01015025 */  or         $t2, $t0, $at
/* 5CF20 8005C320 AC6A0080 */  sw         $t2, 0x80($v1)
/* 5CF24 8005C324 3C0C800C */  lui        $t4, %hi(D_800BE700)
/* 5CF28 8005C328 3C09800C */  lui        $t1, %hi(D_800BE6A4)
/* 5CF2C 8005C32C 952BE6A4 */  lhu        $t3, %lo(D_800BE6A4)($t1)
/* 5CF30 8005C330 958CE700 */  lhu        $t4, %lo(D_800BE700)($t4)
/* 5CF34 8005C334 3C01FFFE */  lui        $at, 0xfffe
/* 5CF38 8005C338 016C6821 */  addu       $t5, $t3, $t4
/* 5CF3C 8005C33C 000D7840 */  sll        $t7, $t5, 1
/* 5CF40 8005C340 25EE0002 */  addiu      $t6, $t7, 2
/* 5CF44 8005C344 A46E0084 */  sh         $t6, 0x84($v1)
/* 5CF48 8005C348 8C980088 */  lw         $t8, 0x88($a0)
/* 5CF4C 8005C34C 946B0094 */  lhu        $t3, 0x94($v1)
/* 5CF50 8005C350 AC780088 */  sw         $t8, 0x88($v1)
/* 5CF54 8005C354 8C99008C */  lw         $t9, 0x8c($a0)
/* 5CF58 8005C358 44872000 */  mtc1       $a3, $f4
/* 5CF5C 8005C35C AC79008C */  sw         $t9, 0x8c($v1)
/* 5CF60 8005C360 8C880090 */  lw         $t0, 0x90($a0)
/* 5CF64 8005C364 34218000 */  ori        $at, $at, 0x8000
/* 5CF68 8005C368 97A5001E */  lhu        $a1, 0x1e($sp)
/* 5CF6C 8005C36C 2406007F */  addiu      $a2, $zero, 0x7f
/* 5CF70 8005C370 2409000F */  addiu      $t1, $zero, 0xf
/* 5CF74 8005C374 356C0010 */  ori        $t4, $t3, 0x10
/* 5CF78 8005C378 01015021 */  addu       $t2, $t0, $at
/* 5CF7C 8005C37C AC6A0090 */  sw         $t2, 0x90($v1)
/* 5CF80 8005C380 AC690150 */  sw         $t1, 0x150($v1)
/* 5CF84 8005C384 A46C0094 */  sh         $t4, 0x94($v1)
/* 5CF88 8005C388 A066009C */  sb         $a2, 0x9c($v1)
/* 5CF8C 8005C38C A066009D */  sb         $a2, 0x9d($v1)
/* 5CF90 8005C390 04E10005 */  bgez       $a3, .L8005C3A8
/* 5CF94 8005C394 468021A0 */   cvt.s.w   $f6, $f4
/* 5CF98 8005C398 3C014F80 */  lui        $at, 0x4f80
/* 5CF9C 8005C39C 44814000 */  mtc1       $at, $f8
/* 5CFA0 8005C3A0 00000000 */  nop
/* 5CFA4 8005C3A4 46083180 */  add.s      $f6, $f6, $f8
.L8005C3A8:
/* 5CFA8 8005C3A8 240D0001 */  addiu      $t5, $zero, 1
/* 5CFAC 8005C3AC E466014C */  swc1       $f6, 0x14c($v1)
/* 5CFB0 8005C3B0 A46D00D0 */  sh         $t5, 0xd0($v1)
/* 5CFB4 8005C3B4 00A01025 */  or         $v0, $a1, $zero
.L8005C3B8:
/* 5CFB8 8005C3B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5CFBC 8005C3BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5CFC0 8005C3C0 03E00008 */  jr         $ra
/* 5CFC4 8005C3C4 00000000 */   nop
