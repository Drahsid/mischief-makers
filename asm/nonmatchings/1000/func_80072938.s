glabel func_80072938
/* 73538 80072938 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7353C 8007293C AFB00020 */  sw         $s0, 0x20($sp)
/* 73540 80072940 3090FFFF */  andi       $s0, $a0, 0xffff
/* 73544 80072944 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73548 80072948 AFA40030 */  sw         $a0, 0x30($sp)
/* 7354C 8007294C 0C01B22E */  jal        func_8006C8B8
/* 73550 80072950 3204FFFF */   andi      $a0, $s0, 0xffff
/* 73554 80072954 14400030 */  bnez       $v0, .L80072A18
/* 73558 80072958 00107080 */   sll       $t6, $s0, 2
/* 7355C 8007295C 01D07023 */  subu       $t6, $t6, $s0
/* 73560 80072960 000E7080 */  sll        $t6, $t6, 2
/* 73564 80072964 01D07021 */  addu       $t6, $t6, $s0
/* 73568 80072968 000E7080 */  sll        $t6, $t6, 2
/* 7356C 8007296C 01D07023 */  subu       $t6, $t6, $s0
/* 73570 80072970 3C0F800F */  lui        $t7, %hi(gActors)
/* 73574 80072974 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 73578 80072978 000E70C0 */  sll        $t6, $t6, 3
/* 7357C 8007297C 01CF1021 */  addu       $v0, $t6, $t7
/* 73580 80072980 944400D0 */  lhu        $a0, 0xd0($v0)
/* 73584 80072984 24010460 */  addiu      $at, $zero, 0x460
/* 73588 80072988 10810006 */  beq        $a0, $at, .L800729A4
/* 7358C 8007298C 00801825 */   or        $v1, $a0, $zero
/* 73590 80072990 24010461 */  addiu      $at, $zero, 0x461
/* 73594 80072994 1061000C */  beq        $v1, $at, .L800729C8
/* 73598 80072998 3C013F80 */   lui       $at, 0x3f80
/* 7359C 8007299C 10000017 */  b          .L800729FC
/* 735A0 800729A0 8C430158 */   lw        $v1, 0x158($v0)
.L800729A4:
/* 735A4 800729A4 3C19800E */  lui        $t9, %hi(D_800E2450)
/* 735A8 800729A8 24980001 */  addiu      $t8, $a0, 1
/* 735AC 800729AC 27392450 */  addiu      $t9, $t9, %lo(D_800E2450)
/* 735B0 800729B0 24080001 */  addiu      $t0, $zero, 1
/* 735B4 800729B4 A45800D0 */  sh         $t8, 0xd0($v0)
/* 735B8 800729B8 A44800E6 */  sh         $t0, 0xe6($v0)
/* 735BC 800729BC AC5900E8 */  sw         $t9, 0xe8($v0)
/* 735C0 800729C0 AC400158 */  sw         $zero, 0x158($v0)
/* 735C4 800729C4 3C013F80 */  lui        $at, 0x3f80
.L800729C8:
/* 735C8 800729C8 44812000 */  mtc1       $at, $f4
/* 735CC 800729CC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 735D0 800729D0 3C053F00 */  lui        $a1, 0x3f00
/* 735D4 800729D4 24060000 */  addiu      $a2, $zero, 0
/* 735D8 800729D8 3C0740E0 */  lui        $a3, 0x40e0
/* 735DC 800729DC AFA20028 */  sw         $v0, 0x28($sp)
/* 735E0 800729E0 0C0199E3 */  jal        func_8006678C
/* 735E4 800729E4 E7A40010 */   swc1      $f4, 0x10($sp)
/* 735E8 800729E8 0C01A6E5 */  jal        func_80069B94
/* 735EC 800729EC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 735F0 800729F0 8FA20028 */  lw         $v0, 0x28($sp)
/* 735F4 800729F4 00000000 */  nop
/* 735F8 800729F8 8C430158 */  lw         $v1, 0x158($v0)
.L800729FC:
/* 735FC 800729FC 00000000 */  nop
/* 73600 80072A00 28614000 */  slti       $at, $v1, 0x4000
/* 73604 80072A04 10200002 */  beqz       $at, .L80072A10
/* 73608 80072A08 24690001 */   addiu     $t1, $v1, 1
/* 7360C 80072A0C AC490158 */  sw         $t1, 0x158($v0)
.L80072A10:
/* 73610 80072A10 0C01A6E5 */  jal        func_80069B94
/* 73614 80072A14 3204FFFF */   andi      $a0, $s0, 0xffff
.L80072A18:
/* 73618 80072A18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7361C 80072A1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 73620 80072A20 03E00008 */  jr         $ra
/* 73624 80072A24 27BD0030 */   addiu     $sp, $sp, 0x30
