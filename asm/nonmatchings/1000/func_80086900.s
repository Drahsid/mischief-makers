glabel func_80086900
/* 87500 80086900 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 87504 80086904 AFB10018 */  sw         $s1, 0x18($sp)
/* 87508 80086908 3091FFFF */  andi       $s1, $a0, 0xffff
/* 8750C 8008690C AFBF001C */  sw         $ra, 0x1c($sp)
/* 87510 80086910 AFA40028 */  sw         $a0, 0x28($sp)
/* 87514 80086914 AFB00014 */  sw         $s0, 0x14($sp)
/* 87518 80086918 0C0217C2 */  jal        func_80085F08
/* 8751C 8008691C 3224FFFF */   andi      $a0, $s1, 0xffff
/* 87520 80086920 00117080 */  sll        $t6, $s1, 2
/* 87524 80086924 01D17023 */  subu       $t6, $t6, $s1
/* 87528 80086928 000E7080 */  sll        $t6, $t6, 2
/* 8752C 8008692C 01D17021 */  addu       $t6, $t6, $s1
/* 87530 80086930 000E7080 */  sll        $t6, $t6, 2
/* 87534 80086934 01D17023 */  subu       $t6, $t6, $s1
/* 87538 80086938 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8753C 8008693C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 87540 80086940 000E70C0 */  sll        $t6, $t6, 3
/* 87544 80086944 01CF1021 */  addu       $v0, $t6, $t7
/* 87548 80086948 AC400168 */  sw         $zero, 0x168($v0)
/* 8754C 8008694C AFA20020 */  sw         $v0, 0x20($sp)
/* 87550 80086950 0C0217DE */  jal        func_80085F78
/* 87554 80086954 3224FFFF */   andi      $a0, $s1, 0xffff
/* 87558 80086958 00008025 */  or         $s0, $zero, $zero
.L8008695C:
/* 8755C 8008695C 0C02196F */  jal        func_800865BC
/* 87560 80086960 3224FFFF */   andi      $a0, $s1, 0xffff
/* 87564 80086964 1440001C */  bnez       $v0, .L800869D8
/* 87568 80086968 26100001 */   addiu     $s0, $s0, 1
/* 8756C 8008696C 0C0217C2 */  jal        func_80085F08
/* 87570 80086970 3224FFFF */   andi      $a0, $s1, 0xffff
/* 87574 80086974 8FA70020 */  lw         $a3, 0x20($sp)
/* 87578 80086978 00001825 */  or         $v1, $zero, $zero
/* 8757C 8008697C 8CE6018C */  lw         $a2, 0x18c($a3)
/* 87580 80086980 00000000 */  nop
/* 87584 80086984 10C00022 */  beqz       $a2, .L80086A10
/* 87588 80086988 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8758C 8008698C 18C0000F */  blez       $a2, .L800869CC
/* 87590 80086990 00008025 */   or        $s0, $zero, $zero
/* 87594 80086994 3C058018 */  lui        $a1, %hi(D_80182120)
/* 87598 80086998 3C048018 */  lui        $a0, %hi(D_80182020)
/* 8759C 8008699C 24842020 */  addiu      $a0, $a0, %lo(D_80182020)
/* 875A0 800869A0 24A52120 */  addiu      $a1, $a1, %lo(D_80182120)
.L800869A4:
/* 875A4 800869A4 00031080 */  sll        $v0, $v1, 2
/* 875A8 800869A8 24630001 */  addiu      $v1, $v1, 1
/* 875AC 800869AC 00A2C021 */  addu       $t8, $a1, $v0
/* 875B0 800869B0 8F190000 */  lw         $t9, ($t8)
/* 875B4 800869B4 3069FFFF */  andi       $t1, $v1, 0xffff
/* 875B8 800869B8 0126082A */  slt        $at, $t1, $a2
/* 875BC 800869BC 00824021 */  addu       $t0, $a0, $v0
/* 875C0 800869C0 01201825 */  or         $v1, $t1, $zero
/* 875C4 800869C4 1420FFF7 */  bnez       $at, .L800869A4
/* 875C8 800869C8 AD190000 */   sw        $t9, ($t0)
.L800869CC:
/* 875CC 800869CC 10000007 */  b          .L800869EC
/* 875D0 800869D0 ACE60178 */   sw        $a2, 0x178($a3)
/* 875D4 800869D4 26100001 */  addiu      $s0, $s0, 1
.L800869D8:
/* 875D8 800869D8 320AFFFF */  andi       $t2, $s0, 0xffff
/* 875DC 800869DC 29410200 */  slti       $at, $t2, 0x200
/* 875E0 800869E0 1420FFDE */  bnez       $at, .L8008695C
/* 875E4 800869E4 01408025 */   or        $s0, $t2, $zero
/* 875E8 800869E8 00008025 */  or         $s0, $zero, $zero
.L800869EC:
/* 875EC 800869EC 0C02183F */  jal        func_800860FC
/* 875F0 800869F0 3224FFFF */   andi      $a0, $s1, 0xffff
/* 875F4 800869F4 10400005 */  beqz       $v0, .L80086A0C
/* 875F8 800869F8 26100001 */   addiu     $s0, $s0, 1
/* 875FC 800869FC 320BFFFF */  andi       $t3, $s0, 0xffff
/* 87600 80086A00 29610200 */  slti       $at, $t3, 0x200
/* 87604 80086A04 1420FFF9 */  bnez       $at, .L800869EC
/* 87608 80086A08 01608025 */   or        $s0, $t3, $zero
.L80086A0C:
/* 8760C 80086A0C 8FBF001C */  lw         $ra, 0x1c($sp)
.L80086A10:
/* 87610 80086A10 8FB00014 */  lw         $s0, 0x14($sp)
/* 87614 80086A14 8FB10018 */  lw         $s1, 0x18($sp)
/* 87618 80086A18 03E00008 */  jr         $ra
/* 8761C 80086A1C 27BD0028 */   addiu     $sp, $sp, 0x28
