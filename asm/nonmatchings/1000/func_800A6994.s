glabel func_800A6994
/* A7594 800A6994 03E09025 */  or         $s2, $ra, $zero
/* A7598 800A6998 3C0A8018 */  lui        $t2, %hi(D_80185530)
/* A759C 800A699C 254A5530 */  addiu      $t2, $t2, %lo(D_80185530)
/* A75A0 800A69A0 01445021 */  addu       $t2, $t2, $a0
/* A75A4 800A69A4 8D490000 */  lw         $t1, ($t2)
/* A75A8 800A69A8 11200029 */  beqz       $t1, .L800A6A50
/* A75AC 800A69AC 00000000 */   nop
/* A75B0 800A69B0 8D2B0008 */  lw         $t3, 8($t1)
/* A75B4 800A69B4 8D2C0010 */  lw         $t4, 0x10($t1)
/* A75B8 800A69B8 016C082A */  slt        $at, $t3, $t4
/* A75BC 800A69BC 10200024 */  beqz       $at, .L800A6A50
/* A75C0 800A69C0 00000000 */   nop
/* A75C4 800A69C4 8D2D000C */  lw         $t5, 0xc($t1)
/* A75C8 800A69C8 01AB6821 */  addu       $t5, $t5, $t3
/* A75CC 800A69CC 01AC001A */  div        $zero, $t5, $t4
/* A75D0 800A69D0 15800002 */  bnez       $t4, .L800A69DC
/* A75D4 800A69D4 00000000 */   nop
/* A75D8 800A69D8 0007000D */  break      7
.L800A69DC:
/* A75DC 800A69DC 2401FFFF */   addiu     $at, $zero, -1
/* A75E0 800A69E0 15810004 */  bne        $t4, $at, .L800A69F4
/* A75E4 800A69E4 3C018000 */   lui       $at, 0x8000
/* A75E8 800A69E8 15A10002 */  bne        $t5, $at, .L800A69F4
/* A75EC 800A69EC 00000000 */   nop
/* A75F0 800A69F0 0006000D */  break      6
.L800A69F4:
/* A75F4 800A69F4 00006810 */   mfhi      $t5
/* A75F8 800A69F8 00000000 */  nop
/* A75FC 800A69FC 00000000 */  nop
/* A7600 800A6A00 8D2C0014 */  lw         $t4, 0x14($t1)
/* A7604 800A6A04 000D6880 */  sll        $t5, $t5, 2
/* A7608 800A6A08 018D6021 */  addu       $t4, $t4, $t5
/* A760C 800A6A0C 8D4D0004 */  lw         $t5, 4($t2)
/* A7610 800A6A10 AD8D0000 */  sw         $t5, ($t4)
/* A7614 800A6A14 256A0001 */  addiu      $t2, $t3, 1
/* A7618 800A6A18 AD2A0008 */  sw         $t2, 8($t1)
/* A761C 800A6A1C 8D2A0000 */  lw         $t2, ($t1)
/* A7620 800A6A20 8D4B0000 */  lw         $t3, ($t2)
/* A7624 800A6A24 1160000A */  beqz       $t3, .L800A6A50
/* A7628 800A6A28 00000000 */   nop
/* A762C 800A6A2C 01202025 */  or         $a0, $t1, $zero
/* A7630 800A6A30 0C029AFA */  jal        func_800A6BE8
/* A7634 800A6A34 00000000 */   nop
/* A7638 800A6A38 00405025 */  or         $t2, $v0, $zero
/* A763C 800A6A3C 01402825 */  or         $a1, $t2, $zero
/* A7640 800A6A40 3C04800F */  lui        $a0, %hi(D_800EA608)
/* A7644 800A6A44 2484A608 */  addiu      $a0, $a0, %lo(D_800EA608)
/* A7648 800A6A48 0C029AE7 */  jal        func_800A6B9C
/* A764C 800A6A4C 00000000 */   nop
.L800A6A50:
/* A7650 800A6A50 02400008 */  jr         $s2
/* A7654 800A6A54 00000000 */   nop
.L800A6A58:
/* A7658 800A6A58 3C013000 */  lui        $at, 0x3000
/* A765C 800A6A5C 01014824 */  and        $t1, $t0, $at
/* A7660 800A6A60 00094F02 */  srl        $t1, $t1, 0x1c
/* A7664 800A6A64 240A0001 */  addiu      $t2, $zero, 1
/* A7668 800A6A68 152AFFBD */  bne        $t1, $t2, .L800A6960
/* A766C 800A6A6C 00000000 */   nop
/* A7670 800A6A70 24090001 */  addiu      $t1, $zero, 1
/* A7674 800A6A74 AF490018 */  sw         $t1, 0x18($k0)
/* A7678 800A6A78 8F5B0118 */  lw         $k1, 0x118($k0)
/* A767C 800A6A7C 3C012000 */  lui        $at, 0x2000
/* A7680 800A6A80 0361D825 */  or         $k1, $k1, $at
/* A7684 800A6A84 AF5B0118 */  sw         $k1, 0x118($k0)
/* A7688 800A6A88 1000FFAE */  b          .L800A6944
/* A768C 800A6A8C 00000000 */   nop
