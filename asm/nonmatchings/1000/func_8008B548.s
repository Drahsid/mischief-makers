glabel func_8008B548
/* 8C148 8008B548 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C14C 8008B54C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C150 8008B550 AFA40020 */  sw         $a0, 0x20($sp)
/* 8C154 8008B554 24040070 */  addiu      $a0, $zero, 0x70
/* 8C158 8008B558 0C00A12E */  jal        func_800284B8
/* 8C15C 8008B55C 2405007A */   addiu     $a1, $zero, 0x7a
/* 8C160 8008B560 10400038 */  beqz       $v0, .L8008B644
/* 8C164 8008B564 3044FFFF */   andi      $a0, $v0, 0xffff
/* 8C168 8008B568 00047080 */  sll        $t6, $a0, 2
/* 8C16C 8008B56C 01C47023 */  subu       $t6, $t6, $a0
/* 8C170 8008B570 000E7080 */  sll        $t6, $t6, 2
/* 8C174 8008B574 01C47021 */  addu       $t6, $t6, $a0
/* 8C178 8008B578 000E7080 */  sll        $t6, $t6, 2
/* 8C17C 8008B57C 01C47023 */  subu       $t6, $t6, $a0
/* 8C180 8008B580 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8C184 8008B584 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 8C188 8008B588 000E70C0 */  sll        $t6, $t6, 3
/* 8C18C 8008B58C 01CF1021 */  addu       $v0, $t6, $t7
/* 8C190 8008B590 24180059 */  addiu      $t8, $zero, 0x59
/* 8C194 8008B594 A45800D2 */  sh         $t8, 0xd2($v0)
/* 8C198 8008B598 0C0078B4 */  jal        func_8001E2D0
/* 8C19C 8008B59C AFA20018 */   sw        $v0, 0x18($sp)
/* 8C1A0 8008B5A0 97B90022 */  lhu        $t9, 0x22($sp)
/* 8C1A4 8008B5A4 3C09800F */  lui        $t1, 0x800f
/* 8C1A8 8008B5A8 00194080 */  sll        $t0, $t9, 2
/* 8C1AC 8008B5AC 01194023 */  subu       $t0, $t0, $t9
/* 8C1B0 8008B5B0 00084080 */  sll        $t0, $t0, 2
/* 8C1B4 8008B5B4 01194021 */  addu       $t0, $t0, $t9
/* 8C1B8 8008B5B8 00084080 */  sll        $t0, $t0, 2
/* 8C1BC 8008B5BC 01194023 */  subu       $t0, $t0, $t9
/* 8C1C0 8008B5C0 000840C0 */  sll        $t0, $t0, 3
/* 8C1C4 8008B5C4 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 8C1C8 8008B5C8 01092021 */  addu       $a0, $t0, $t1
/* 8C1CC 8008B5CC 8C8A0150 */  lw         $t2, 0x150($a0)
/* 8C1D0 8008B5D0 8FA20018 */  lw         $v0, 0x18($sp)
/* 8C1D4 8008B5D4 314B0100 */  andi       $t3, $t2, 0x100
/* 8C1D8 8008B5D8 11600003 */  beqz       $t3, .L8008B5E8
/* 8C1DC 8008B5DC 3C014040 */   lui       $at, 0x4040
/* 8C1E0 8008B5E0 10000002 */  b          .L8008B5EC
/* 8C1E4 8008B5E4 2403FFF8 */   addiu     $v1, $zero, -8
.L8008B5E8:
/* 8C1E8 8008B5E8 24030008 */  addiu      $v1, $zero, 8
.L8008B5EC:
/* 8C1EC 8008B5EC 848C0088 */  lh         $t4, 0x88($a0)
/* 8C1F0 8008B5F0 44812000 */  mtc1       $at, $f4
/* 8C1F4 8008B5F4 006C7021 */  addu       $t6, $v1, $t4
/* 8C1F8 8008B5F8 A44E0088 */  sh         $t6, 0x88($v0)
/* 8C1FC 8008B5FC 848F008C */  lh         $t7, 0x8c($a0)
/* 8C200 8008B600 00000000 */  nop
/* 8C204 8008B604 A44F008C */  sh         $t7, 0x8c($v0)
/* 8C208 8008B608 8C980150 */  lw         $t8, 0x150($a0)
/* 8C20C 8008B60C 00000000 */  nop
/* 8C210 8008B610 33190100 */  andi       $t9, $t8, 0x100
/* 8C214 8008B614 13200006 */  beqz       $t9, .L8008B630
/* 8C218 8008B618 00000000 */   nop
/* 8C21C 8008B61C 8C880154 */  lw         $t0, 0x154($a0)
/* 8C220 8008B620 00000000 */  nop
/* 8C224 8008B624 00084823 */  negu       $t1, $t0
/* 8C228 8008B628 10000004 */  b          .L8008B63C
/* 8C22C 8008B62C AC4900EC */   sw        $t1, 0xec($v0)
.L8008B630:
/* 8C230 8008B630 8C8A0154 */  lw         $t2, 0x154($a0)
/* 8C234 8008B634 00000000 */  nop
/* 8C238 8008B638 AC4A00EC */  sw         $t2, 0xec($v0)
.L8008B63C:
/* 8C23C 8008B63C E4440110 */  swc1       $f4, 0x110($v0)
/* 8C240 8008B640 A44000D8 */  sh         $zero, 0xd8($v0)
.L8008B644:
/* 8C244 8008B644 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C248 8008B648 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8C24C 8008B64C 03E00008 */  jr         $ra
/* 8C250 8008B650 00000000 */   nop
