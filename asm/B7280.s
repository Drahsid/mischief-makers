.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6680
/* B7280 800B6680 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7284 800B6684 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7288 800B6688 AFB00018 */  sw         $s0, 0x18($sp)
/* B728C 800B668C 0C02DC7C */  jal        func_800B71F0
/* B7290 800B6690 00000000 */   nop
/* B7294 800B6694 00408025 */  or         $s0, $v0, $zero
/* B7298 800B6698 8E0E0004 */  lw         $t6, 4($s0)
/* B729C 800B669C 2401FFFF */  addiu      $at, $zero, -1
/* B72A0 800B66A0 11C10013 */  beq        $t6, $at, .L800B66F0
/* B72A4 800B66A4 00000000 */   nop
.L800B66A8:
/* B72A8 800B66A8 8E0F0004 */  lw         $t7, 4($s0)
/* B72AC 800B66AC 15E0000B */  bnez       $t7, .L800B66DC
/* B72B0 800B66B0 00000000 */   nop
/* B72B4 800B66B4 8E180118 */  lw         $t8, 0x118($s0)
/* B72B8 800B66B8 3C01FFFF */  lui        $at, 0xffff
/* B72BC 800B66BC 342100FE */  ori        $at, $at, 0xfe
/* B72C0 800B66C0 0301C824 */  and        $t9, $t8, $at
/* B72C4 800B66C4 AE190118 */  sw         $t9, 0x118($s0)
/* B72C8 800B66C8 8E080118 */  lw         $t0, 0x118($s0)
/* B72CC 800B66CC 35096C01 */  ori        $t1, $t0, 0x6c01
/* B72D0 800B66D0 AE090118 */  sw         $t1, 0x118($s0)
/* B72D4 800B66D4 10000006 */  b          .L800B66F0
/* B72D8 800B66D8 00000000 */   nop
.L800B66DC:
/* B72DC 800B66DC 8E10000C */  lw         $s0, 0xc($s0)
/* B72E0 800B66E0 8E0A0004 */  lw         $t2, 4($s0)
/* B72E4 800B66E4 2401FFFF */  addiu      $at, $zero, -1
/* B72E8 800B66E8 1541FFEF */  bne        $t2, $at, .L800B66A8
/* B72EC 800B66EC 00000000 */   nop
.L800B66F0:
/* B72F0 800B66F0 10000001 */  b          .L800B66F8
/* B72F4 800B66F4 00000000 */   nop
.L800B66F8:
/* B72F8 800B66F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B72FC 800B66FC 8FB00018 */  lw         $s0, 0x18($sp)
/* B7300 800B6700 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7304 800B6704 03E00008 */  jr         $ra
/* B7308 800B6708 00000000 */   nop

glabel func_800B670C
/* B730C 800B670C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7310 800B6710 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7314 800B6714 AFA40028 */  sw         $a0, 0x28($sp)
/* B7318 800B6718 AFB00018 */  sw         $s0, 0x18($sp)
/* B731C 800B671C 0C02DC7C */  jal        func_800B71F0
/* B7320 800B6720 00000000 */   nop
/* B7324 800B6724 00408025 */  or         $s0, $v0, $zero
/* B7328 800B6728 8FAE0028 */  lw         $t6, 0x28($sp)
/* B732C 800B672C 1DC00003 */  bgtz       $t6, .L800B673C
/* B7330 800B6730 00000000 */   nop
/* B7334 800B6734 10000014 */  b          .L800B6788
/* B7338 800B6738 00001025 */   or        $v0, $zero, $zero
.L800B673C:
/* B733C 800B673C 8E0F0004 */  lw         $t7, 4($s0)
/* B7340 800B6740 2401FFFF */  addiu      $at, $zero, -1
/* B7344 800B6744 11E1000C */  beq        $t7, $at, .L800B6778
/* B7348 800B6748 00000000 */   nop
.L800B674C:
/* B734C 800B674C 8E180014 */  lw         $t8, 0x14($s0)
/* B7350 800B6750 8FB90028 */  lw         $t9, 0x28($sp)
/* B7354 800B6754 17190003 */  bne        $t8, $t9, .L800B6764
/* B7358 800B6758 00000000 */   nop
/* B735C 800B675C 1000000A */  b          .L800B6788
/* B7360 800B6760 02001025 */   or        $v0, $s0, $zero
.L800B6764:
/* B7364 800B6764 8E10000C */  lw         $s0, 0xc($s0)
/* B7368 800B6768 8E080004 */  lw         $t0, 4($s0)
/* B736C 800B676C 2401FFFF */  addiu      $at, $zero, -1
/* B7370 800B6770 1501FFF6 */  bne        $t0, $at, .L800B674C
/* B7374 800B6774 00000000 */   nop
.L800B6778:
/* B7378 800B6778 10000003 */  b          .L800B6788
/* B737C 800B677C 00001025 */   or        $v0, $zero, $zero
/* B7380 800B6780 10000001 */  b          .L800B6788
/* B7384 800B6784 00000000 */   nop
.L800B6788:
/* B7388 800B6788 8FBF001C */  lw         $ra, 0x1c($sp)
/* B738C 800B678C 8FB00018 */  lw         $s0, 0x18($sp)
/* B7390 800B6790 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7394 800B6794 03E00008 */  jr         $ra
/* B7398 800B6798 00000000 */   nop

glabel func_800B679C
/* B739C 800B679C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B73A0 800B67A0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B73A4 800B67A4 AFA40028 */  sw         $a0, 0x28($sp)
/* B73A8 800B67A8 AFB10018 */  sw         $s1, 0x18($sp)
/* B73AC 800B67AC AFB00014 */  sw         $s0, 0x14($sp)
/* B73B0 800B67B0 00008025 */  or         $s0, $zero, $zero
/* B73B4 800B67B4 0C02DC7C */  jal        func_800B71F0
/* B73B8 800B67B8 00000000 */   nop
/* B73BC 800B67BC 00408825 */  or         $s1, $v0, $zero
/* B73C0 800B67C0 8FAE0028 */  lw         $t6, 0x28($sp)
/* B73C4 800B67C4 11C00026 */  beqz       $t6, .L800B6860
/* B73C8 800B67C8 00000000 */   nop
/* B73CC 800B67CC 8E2F0004 */  lw         $t7, 4($s1)
/* B73D0 800B67D0 2401FFFF */  addiu      $at, $zero, -1
/* B73D4 800B67D4 11E1000C */  beq        $t7, $at, .L800B6808
/* B73D8 800B67D8 00000000 */   nop
.L800B67DC:
/* B73DC 800B67DC 8E380014 */  lw         $t8, 0x14($s1)
/* B73E0 800B67E0 8FB90028 */  lw         $t9, 0x28($sp)
/* B73E4 800B67E4 17190003 */  bne        $t8, $t9, .L800B67F4
/* B73E8 800B67E8 00000000 */   nop
/* B73EC 800B67EC 10000006 */  b          .L800B6808
/* B73F0 800B67F0 00000000 */   nop
.L800B67F4:
/* B73F4 800B67F4 8E31000C */  lw         $s1, 0xc($s1)
/* B73F8 800B67F8 8E280004 */  lw         $t0, 4($s1)
/* B73FC 800B67FC 2401FFFF */  addiu      $at, $zero, -1
/* B7400 800B6800 1501FFF6 */  bne        $t0, $at, .L800B67DC
/* B7404 800B6804 00000000 */   nop
.L800B6808:
/* B7408 800B6808 8E290004 */  lw         $t1, 4($s1)
/* B740C 800B680C 2401FFFF */  addiu      $at, $zero, -1
/* B7410 800B6810 15210003 */  bne        $t1, $at, .L800B6820
/* B7414 800B6814 00000000 */   nop
/* B7418 800B6818 1000002C */  b          .L800B68CC
/* B741C 800B681C 00001025 */   or        $v0, $zero, $zero
.L800B6820:
/* B7420 800B6820 8E2A0004 */  lw         $t2, 4($s1)
/* B7424 800B6824 1940000C */  blez       $t2, .L800B6858
/* B7428 800B6828 00000000 */   nop
/* B742C 800B682C 8E2B0004 */  lw         $t3, 4($s1)
/* B7430 800B6830 29610080 */  slti       $at, $t3, 0x80
/* B7434 800B6834 10200008 */  beqz       $at, .L800B6858
/* B7438 800B6838 00000000 */   nop
/* B743C 800B683C 0C02E9C4 */  jal        func_800BA710
/* B7440 800B6840 02202025 */   or        $a0, $s1, $zero
/* B7444 800B6844 962C0010 */  lhu        $t4, 0x10($s1)
/* B7448 800B6848 24010001 */  addiu      $at, $zero, 1
/* B744C 800B684C 11810001 */  beq        $t4, $at, .L800B6854
/* B7450 800B6850 00000000 */   nop
.L800B6854:
/* B7454 800B6854 8FB00028 */  lw         $s0, 0x28($sp)
.L800B6858:
/* B7458 800B6858 10000018 */  b          .L800B68BC
/* B745C 800B685C 00000000 */   nop
.L800B6860:
/* B7460 800B6860 8E2D0004 */  lw         $t5, 4($s1)
/* B7464 800B6864 2401FFFF */  addiu      $at, $zero, -1
/* B7468 800B6868 11A10014 */  beq        $t5, $at, .L800B68BC
/* B746C 800B686C 00000000 */   nop
.L800B6870:
/* B7470 800B6870 8E2E0004 */  lw         $t6, 4($s1)
/* B7474 800B6874 19C0000C */  blez       $t6, .L800B68A8
/* B7478 800B6878 00000000 */   nop
/* B747C 800B687C 8E2F0004 */  lw         $t7, 4($s1)
/* B7480 800B6880 29E10080 */  slti       $at, $t7, 0x80
/* B7484 800B6884 10200008 */  beqz       $at, .L800B68A8
/* B7488 800B6888 00000000 */   nop
/* B748C 800B688C 0C02E9C4 */  jal        func_800BA710
/* B7490 800B6890 02202025 */   or        $a0, $s1, $zero
/* B7494 800B6894 96380010 */  lhu        $t8, 0x10($s1)
/* B7498 800B6898 24010001 */  addiu      $at, $zero, 1
/* B749C 800B689C 13010001 */  beq        $t8, $at, .L800B68A4
/* B74A0 800B68A0 00000000 */   nop
.L800B68A4:
/* B74A4 800B68A4 2410FFFF */  addiu      $s0, $zero, -1
.L800B68A8:
/* B74A8 800B68A8 8E31000C */  lw         $s1, 0xc($s1)
/* B74AC 800B68AC 8E390004 */  lw         $t9, 4($s1)
/* B74B0 800B68B0 2401FFFF */  addiu      $at, $zero, -1
/* B74B4 800B68B4 1721FFEE */  bne        $t9, $at, .L800B6870
/* B74B8 800B68B8 00000000 */   nop
.L800B68BC:
/* B74BC 800B68BC 10000003 */  b          .L800B68CC
/* B74C0 800B68C0 02001025 */   or        $v0, $s0, $zero
/* B74C4 800B68C4 10000001 */  b          .L800B68CC
/* B74C8 800B68C8 00000000 */   nop
.L800B68CC:
/* B74CC 800B68CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B74D0 800B68D0 8FB00014 */  lw         $s0, 0x14($sp)
/* B74D4 800B68D4 8FB10018 */  lw         $s1, 0x18($sp)
/* B74D8 800B68D8 03E00008 */  jr         $ra
/* B74DC 800B68DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800B68E0
/* B74E0 800B68E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B74E4 800B68E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B74E8 800B68E8 AFA40030 */  sw         $a0, 0x30($sp)
/* B74EC 800B68EC AFB10018 */  sw         $s1, 0x18($sp)
/* B74F0 800B68F0 AFB00014 */  sw         $s0, 0x14($sp)
/* B74F4 800B68F4 8FB00030 */  lw         $s0, 0x30($sp)
/* B74F8 800B68F8 3C0E8019 */  lui        $t6, %hi(D_8018A290)
/* B74FC 800B68FC 25CEA290 */  addiu      $t6, $t6, %lo(D_8018A290)
/* B7500 800B6900 AFAE0028 */  sw         $t6, 0x28($sp)
/* B7504 800B6904 8E0F000C */  lw         $t7, 0xc($s0)
/* B7508 800B6908 2401FFFF */  addiu      $at, $zero, -1
/* B750C 800B690C 15E10005 */  bne        $t7, $at, .L800B6924
/* B7510 800B6910 00000000 */   nop
/* B7514 800B6914 8FB90028 */  lw         $t9, 0x28($sp)
/* B7518 800B6918 241803EA */  addiu      $t8, $zero, 0x3ea
/* B751C 800B691C 10000004 */  b          .L800B6930
/* B7520 800B6920 AF38000C */   sw        $t8, 0xc($t9)
.L800B6924:
/* B7524 800B6924 8E08000C */  lw         $t0, 0xc($s0)
/* B7528 800B6928 8FA90028 */  lw         $t1, 0x28($sp)
/* B752C 800B692C AD28000C */  sw         $t0, 0xc($t1)
.L800B6930:
/* B7530 800B6930 8FAA0030 */  lw         $t2, 0x30($sp)
/* B7534 800B6934 24010001 */  addiu      $at, $zero, 1
/* B7538 800B6938 914B0009 */  lbu        $t3, 9($t2)
/* B753C 800B693C 15610008 */  bne        $t3, $at, .L800B6960
/* B7540 800B6940 00000000 */   nop
/* B7544 800B6944 8FAD0028 */  lw         $t5, 0x28($sp)
/* B7548 800B6948 240C0001 */  addiu      $t4, $zero, 1
/* B754C 800B694C A5AC0010 */  sh         $t4, 0x10($t5)
/* B7550 800B6950 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7554 800B6954 240E03E8 */  addiu      $t6, $zero, 0x3e8
/* B7558 800B6958 1000001C */  b          .L800B69CC
/* B755C 800B695C ADEE0014 */   sw        $t6, 0x14($t7)
.L800B6960:
/* B7560 800B6960 0C02DC7C */  jal        func_800B71F0
/* B7564 800B6964 00000000 */   nop
/* B7568 800B6968 00408825 */  or         $s1, $v0, $zero
/* B756C 800B696C 8FB80028 */  lw         $t8, 0x28($sp)
/* B7570 800B6970 A7000010 */  sh         $zero, 0x10($t8)
/* B7574 800B6974 8E390004 */  lw         $t9, 4($s1)
/* B7578 800B6978 2401FFFF */  addiu      $at, $zero, -1
/* B757C 800B697C 13210013 */  beq        $t9, $at, .L800B69CC
/* B7580 800B6980 00000000 */   nop
.L800B6984:
/* B7584 800B6984 8E280014 */  lw         $t0, 0x14($s1)
/* B7588 800B6988 1100000B */  beqz       $t0, .L800B69B8
/* B758C 800B698C 00000000 */   nop
/* B7590 800B6990 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7594 800B6994 8E290014 */  lw         $t1, 0x14($s1)
/* B7598 800B6998 954B0010 */  lhu        $t3, 0x10($t2)
/* B759C 800B699C 000B6080 */  sll        $t4, $t3, 2
/* B75A0 800B69A0 014C6821 */  addu       $t5, $t2, $t4
/* B75A4 800B69A4 ADA90014 */  sw         $t1, 0x14($t5)
/* B75A8 800B69A8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B75AC 800B69AC 95CF0010 */  lhu        $t7, 0x10($t6)
/* B75B0 800B69B0 25F80001 */  addiu      $t8, $t7, 1
/* B75B4 800B69B4 A5D80010 */  sh         $t8, 0x10($t6)
.L800B69B8:
/* B75B8 800B69B8 8E31000C */  lw         $s1, 0xc($s1)
/* B75BC 800B69BC 8E390004 */  lw         $t9, 4($s1)
/* B75C0 800B69C0 2401FFFF */  addiu      $at, $zero, -1
/* B75C4 800B69C4 1721FFEF */  bne        $t9, $at, .L800B6984
/* B75C8 800B69C8 00000000 */   nop
.L800B69CC:
/* B75CC 800B69CC 92080004 */  lbu        $t0, 4($s0)
/* B75D0 800B69D0 8FAB0028 */  lw         $t3, 0x28($sp)
/* B75D4 800B69D4 A1680004 */  sb         $t0, 4($t3)
/* B75D8 800B69D8 8FAA0028 */  lw         $t2, 0x28($sp)
/* B75DC 800B69DC A5400006 */  sh         $zero, 6($t2)
/* B75E0 800B69E0 8FAC0028 */  lw         $t4, 0x28($sp)
/* B75E4 800B69E4 24060001 */  addiu      $a2, $zero, 1
/* B75E8 800B69E8 95850010 */  lhu        $a1, 0x10($t4)
/* B75EC 800B69EC 01802025 */  or         $a0, $t4, $zero
/* B75F0 800B69F0 00054880 */  sll        $t1, $a1, 2
/* B75F4 800B69F4 01202825 */  or         $a1, $t1, $zero
/* B75F8 800B69F8 0C026833 */  jal        func_8009A0CC
/* B75FC 800B69FC 24A50014 */   addiu     $a1, $a1, 0x14
/* B7600 800B6A00 10000003 */  b          .L800B6A10
/* B7604 800B6A04 00001025 */   or        $v0, $zero, $zero
/* B7608 800B6A08 10000001 */  b          .L800B6A10
/* B760C 800B6A0C 00000000 */   nop
.L800B6A10:
/* B7610 800B6A10 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7614 800B6A14 8FB00014 */  lw         $s0, 0x14($sp)
/* B7618 800B6A18 8FB10018 */  lw         $s1, 0x18($sp)
/* B761C 800B6A1C 03E00008 */  jr         $ra
/* B7620 800B6A20 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800B6A24
/* B7624 800B6A24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7628 800B6A28 AFBF0014 */  sw         $ra, 0x14($sp)
/* B762C 800B6A2C AFA40020 */  sw         $a0, 0x20($sp)
/* B7630 800B6A30 AFA50024 */  sw         $a1, 0x24($sp)
/* B7634 800B6A34 AFA60028 */  sw         $a2, 0x28($sp)
/* B7638 800B6A38 8FAE0024 */  lw         $t6, 0x24($sp)
/* B763C 800B6A3C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7640 800B6A40 ADEE0014 */  sw         $t6, 0x14($t7)
/* B7644 800B6A44 8FB80020 */  lw         $t8, 0x20($sp)
/* B7648 800B6A48 24010001 */  addiu      $at, $zero, 1
/* B764C 800B6A4C 17010005 */  bne        $t8, $at, .L800B6A64
/* B7650 800B6A50 00000000 */   nop
/* B7654 800B6A54 8FA80028 */  lw         $t0, 0x28($sp)
/* B7658 800B6A58 241903E9 */  addiu      $t9, $zero, 0x3e9
/* B765C 800B6A5C 10000004 */  b          .L800B6A70
/* B7660 800B6A60 AD190018 */   sw        $t9, 0x18($t0)
.L800B6A64:
/* B7664 800B6A64 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7668 800B6A68 240903EA */  addiu      $t1, $zero, 0x3ea
/* B766C 800B6A6C AD490018 */  sw         $t1, 0x18($t2)
.L800B6A70:
/* B7670 800B6A70 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7674 800B6A74 240B0001 */  addiu      $t3, $zero, 1
/* B7678 800B6A78 A58B0010 */  sh         $t3, 0x10($t4)
/* B767C 800B6A7C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B7680 800B6A80 A5A00012 */  sh         $zero, 0x12($t5)
/* B7684 800B6A84 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7688 800B6A88 A5C00024 */  sh         $zero, 0x24($t6)
/* B768C 800B6A8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7690 800B6A90 A5E00026 */  sh         $zero, 0x26($t7)
/* B7694 800B6A94 8FB80028 */  lw         $t8, 0x28($sp)
/* B7698 800B6A98 AF000030 */  sw         $zero, 0x30($t8)
/* B769C 800B6A9C 8FB90020 */  lw         $t9, 0x20($sp)
/* B76A0 800B6AA0 24010001 */  addiu      $at, $zero, 1
/* B76A4 800B6AA4 1721003D */  bne        $t9, $at, .L800B6B9C
/* B76A8 800B6AA8 00000000 */   nop
/* B76AC 800B6AAC 8FA90028 */  lw         $t1, 0x28($sp)
/* B76B0 800B6AB0 3C080400 */  lui        $t0, 0x400
/* B76B4 800B6AB4 35081000 */  ori        $t0, $t0, 0x1000
/* B76B8 800B6AB8 AD28002C */  sw         $t0, 0x2c($t1)
/* B76BC 800B6ABC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B76C0 800B6AC0 240A002A */  addiu      $t2, $zero, 0x2a
/* B76C4 800B6AC4 AD6A0028 */  sw         $t2, 0x28($t3)
/* B76C8 800B6AC8 0C02E998 */  jal        func_800BA660
/* B76CC 800B6ACC 00000000 */   nop
/* B76D0 800B6AD0 10400009 */  beqz       $v0, .L800B6AF8
/* B76D4 800B6AD4 00000000 */   nop
/* B76D8 800B6AD8 8FAD0028 */  lw         $t5, 0x28($sp)
/* B76DC 800B6ADC 240C0004 */  addiu      $t4, $zero, 4
/* B76E0 800B6AE0 ADAC000C */  sw         $t4, 0xc($t5)
/* B76E4 800B6AE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B76E8 800B6AE8 ADC00020 */  sw         $zero, 0x20($t6)
/* B76EC 800B6AEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B76F0 800B6AF0 10000028 */  b          .L800B6B94
/* B76F4 800B6AF4 ADE0001C */   sw        $zero, 0x1c($t7)
.L800B6AF8:
/* B76F8 800B6AF8 8FB90028 */  lw         $t9, 0x28($sp)
/* B76FC 800B6AFC 24180001 */  addiu      $t8, $zero, 1
/* B7700 800B6B00 AF38000C */  sw         $t8, 0xc($t9)
/* B7704 800B6B04 0C02A45C */  jal        func_800A9170
/* B7708 800B6B08 3C040408 */   lui       $a0, 0x408
/* B770C 800B6B0C 8FA90028 */  lw         $t1, 0x28($sp)
/* B7710 800B6B10 3C010400 */  lui        $at, 0x400
/* B7714 800B6B14 34211000 */  ori        $at, $at, 0x1000
/* B7718 800B6B18 00414021 */  addu       $t0, $v0, $at
/* B771C 800B6B1C AD280020 */  sw         $t0, 0x20($t1)
/* B7720 800B6B20 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7724 800B6B24 0C02A45C */  jal        func_800A9170
/* B7728 800B6B28 8D440020 */   lw        $a0, 0x20($t2)
/* B772C 800B6B2C AFA2001C */  sw         $v0, 0x1c($sp)
/* B7730 800B6B30 8FAB001C */  lw         $t3, 0x1c($sp)
/* B7734 800B6B34 3C01FC00 */  lui        $at, 0xfc00
/* B7738 800B6B38 3421003F */  ori        $at, $at, 0x3f
/* B773C 800B6B3C 01616024 */  and        $t4, $t3, $at
/* B7740 800B6B40 2401000D */  addiu      $at, $zero, 0xd
/* B7744 800B6B44 15810003 */  bne        $t4, $at, .L800B6B54
/* B7748 800B6B48 00000000 */   nop
/* B774C 800B6B4C 240D000D */  addiu      $t5, $zero, 0xd
/* B7750 800B6B50 AFAD001C */  sw         $t5, 0x1c($sp)
.L800B6B54:
/* B7754 800B6B54 3C0E8019 */  lui        $t6, %hi(D_8018A390)
/* B7758 800B6B58 91CEA390 */  lbu        $t6, %lo(D_8018A390)($t6)
/* B775C 800B6B5C 11C0000A */  beqz       $t6, .L800B6B88
/* B7760 800B6B60 00000000 */   nop
/* B7764 800B6B64 8FB80028 */  lw         $t8, 0x28($sp)
/* B7768 800B6B68 240F0002 */  addiu      $t7, $zero, 2
/* B776C 800B6B6C A70F0010 */  sh         $t7, 0x10($t8)
/* B7770 800B6B70 8FA80028 */  lw         $t0, 0x28($sp)
/* B7774 800B6B74 24190002 */  addiu      $t9, $zero, 2
/* B7778 800B6B78 A5190024 */  sh         $t9, 0x24($t0)
/* B777C 800B6B7C 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7780 800B6B80 24090004 */  addiu      $t1, $zero, 4
/* B7784 800B6B84 A5490026 */  sh         $t1, 0x26($t2)
.L800B6B88:
/* B7788 800B6B88 8FAB001C */  lw         $t3, 0x1c($sp)
/* B778C 800B6B8C 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7790 800B6B90 AD8B001C */  sw         $t3, 0x1c($t4)
.L800B6B94:
/* B7794 800B6B94 10000061 */  b          .L800B6D1C
/* B7798 800B6B98 00000000 */   nop
.L800B6B9C:
/* B779C 800B6B9C 0C02DC7C */  jal        func_800B71F0
/* B77A0 800B6BA0 00000000 */   nop
/* B77A4 800B6BA4 AFA20018 */  sw         $v0, 0x18($sp)
/* B77A8 800B6BA8 8FAD0018 */  lw         $t5, 0x18($sp)
/* B77AC 800B6BAC 2401FFFF */  addiu      $at, $zero, -1
/* B77B0 800B6BB0 8DAE0004 */  lw         $t6, 4($t5)
/* B77B4 800B6BB4 11C10010 */  beq        $t6, $at, .L800B6BF8
/* B77B8 800B6BB8 00000000 */   nop
.L800B6BBC:
/* B77BC 800B6BBC 8FAF0018 */  lw         $t7, 0x18($sp)
/* B77C0 800B6BC0 8FB90024 */  lw         $t9, 0x24($sp)
/* B77C4 800B6BC4 8DF80014 */  lw         $t8, 0x14($t7)
/* B77C8 800B6BC8 17190003 */  bne        $t8, $t9, .L800B6BD8
/* B77CC 800B6BCC 00000000 */   nop
/* B77D0 800B6BD0 10000009 */  b          .L800B6BF8
/* B77D4 800B6BD4 00000000 */   nop
.L800B6BD8:
/* B77D8 800B6BD8 8FA80018 */  lw         $t0, 0x18($sp)
/* B77DC 800B6BDC 8D09000C */  lw         $t1, 0xc($t0)
/* B77E0 800B6BE0 AFA90018 */  sw         $t1, 0x18($sp)
/* B77E4 800B6BE4 8FAA0018 */  lw         $t2, 0x18($sp)
/* B77E8 800B6BE8 2401FFFF */  addiu      $at, $zero, -1
/* B77EC 800B6BEC 8D4B0004 */  lw         $t3, 4($t2)
/* B77F0 800B6BF0 1561FFF2 */  bne        $t3, $at, .L800B6BBC
/* B77F4 800B6BF4 00000000 */   nop
.L800B6BF8:
/* B77F8 800B6BF8 8FAC0018 */  lw         $t4, 0x18($sp)
/* B77FC 800B6BFC 2401FFFF */  addiu      $at, $zero, -1
/* B7800 800B6C00 8D8D0004 */  lw         $t5, 4($t4)
/* B7804 800B6C04 15A10003 */  bne        $t5, $at, .L800B6C14
/* B7808 800B6C08 00000000 */   nop
/* B780C 800B6C0C 10000047 */  b          .L800B6D2C
/* B7810 800B6C10 2402FFFE */   addiu     $v0, $zero, -2
.L800B6C14:
/* B7814 800B6C14 8FAE0018 */  lw         $t6, 0x18($sp)
/* B7818 800B6C18 8FB80028 */  lw         $t8, 0x28($sp)
/* B781C 800B6C1C 8DCF0004 */  lw         $t7, 4($t6)
/* B7820 800B6C20 AF0F0028 */  sw         $t7, 0x28($t8)
/* B7824 800B6C24 8FB90018 */  lw         $t9, 0x18($sp)
/* B7828 800B6C28 97280010 */  lhu        $t0, 0x10($t9)
/* B782C 800B6C2C 11000004 */  beqz       $t0, .L800B6C40
/* B7830 800B6C30 00000000 */   nop
/* B7834 800B6C34 8FA90028 */  lw         $t1, 0x28($sp)
/* B7838 800B6C38 10000004 */  b          .L800B6C4C
/* B783C 800B6C3C AD28000C */   sw        $t0, 0xc($t1)
.L800B6C40:
/* B7840 800B6C40 8FAB0028 */  lw         $t3, 0x28($sp)
/* B7844 800B6C44 240A0001 */  addiu      $t2, $zero, 1
/* B7848 800B6C48 AD6A000C */  sw         $t2, 0xc($t3)
.L800B6C4C:
/* B784C 800B6C4C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B7850 800B6C50 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7854 800B6C54 8D8D011C */  lw         $t5, 0x11c($t4)
/* B7858 800B6C58 ADCD0020 */  sw         $t5, 0x20($t6)
/* B785C 800B6C5C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B7860 800B6C60 8DF8011C */  lw         $t8, 0x11c($t7)
/* B7864 800B6C64 8F190000 */  lw         $t9, ($t8)
/* B7868 800B6C68 AFB9001C */  sw         $t9, 0x1c($sp)
/* B786C 800B6C6C 8FA8001C */  lw         $t0, 0x1c($sp)
/* B7870 800B6C70 3C01FC00 */  lui        $at, 0xfc00
/* B7874 800B6C74 3421003F */  ori        $at, $at, 0x3f
/* B7878 800B6C78 01014824 */  and        $t1, $t0, $at
/* B787C 800B6C7C 2401000D */  addiu      $at, $zero, 0xd
/* B7880 800B6C80 15210003 */  bne        $t1, $at, .L800B6C90
/* B7884 800B6C84 00000000 */   nop
/* B7888 800B6C88 240A000D */  addiu      $t2, $zero, 0xd
/* B788C 800B6C8C AFAA001C */  sw         $t2, 0x1c($sp)
.L800B6C90:
/* B7890 800B6C90 8FAB001C */  lw         $t3, 0x1c($sp)
/* B7894 800B6C94 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7898 800B6C98 AD8B001C */  sw         $t3, 0x1c($t4)
/* B789C 800B6C9C 8FAD0018 */  lw         $t5, 0x18($sp)
/* B78A0 800B6CA0 8FAE0028 */  lw         $t6, 0x28($sp)
/* B78A4 800B6CA4 ADCD002C */  sw         $t5, 0x2c($t6)
/* B78A8 800B6CA8 8FAF0018 */  lw         $t7, 0x18($sp)
/* B78AC 800B6CAC 95F80012 */  lhu        $t8, 0x12($t7)
/* B78B0 800B6CB0 33190001 */  andi       $t9, $t8, 1
/* B78B4 800B6CB4 1320000B */  beqz       $t9, .L800B6CE4
/* B78B8 800B6CB8 00000000 */   nop
/* B78BC 800B6CBC 8FA90028 */  lw         $t1, 0x28($sp)
/* B78C0 800B6CC0 24080002 */  addiu      $t0, $zero, 2
/* B78C4 800B6CC4 A5280010 */  sh         $t0, 0x10($t1)
/* B78C8 800B6CC8 8FAB0028 */  lw         $t3, 0x28($sp)
/* B78CC 800B6CCC 240A0002 */  addiu      $t2, $zero, 2
/* B78D0 800B6CD0 A56A0024 */  sh         $t2, 0x24($t3)
/* B78D4 800B6CD4 8FAD0028 */  lw         $t5, 0x28($sp)
/* B78D8 800B6CD8 240C0004 */  addiu      $t4, $zero, 4
/* B78DC 800B6CDC 1000000F */  b          .L800B6D1C
/* B78E0 800B6CE0 A5AC0026 */   sh        $t4, 0x26($t5)
.L800B6CE4:
/* B78E4 800B6CE4 8FAE0018 */  lw         $t6, 0x18($sp)
/* B78E8 800B6CE8 95CF0012 */  lhu        $t7, 0x12($t6)
/* B78EC 800B6CEC 31F80002 */  andi       $t8, $t7, 2
/* B78F0 800B6CF0 1300000A */  beqz       $t8, .L800B6D1C
/* B78F4 800B6CF4 00000000 */   nop
/* B78F8 800B6CF8 8FA80028 */  lw         $t0, 0x28($sp)
/* B78FC 800B6CFC 24190002 */  addiu      $t9, $zero, 2
/* B7900 800B6D00 A5190010 */  sh         $t9, 0x10($t0)
/* B7904 800B6D04 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7908 800B6D08 24090001 */  addiu      $t1, $zero, 1
/* B790C 800B6D0C A5490024 */  sh         $t1, 0x24($t2)
/* B7910 800B6D10 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7914 800B6D14 240B0002 */  addiu      $t3, $zero, 2
/* B7918 800B6D18 A58B0026 */  sh         $t3, 0x26($t4)
.L800B6D1C:
/* B791C 800B6D1C 10000003 */  b          .L800B6D2C
/* B7920 800B6D20 00001025 */   or        $v0, $zero, $zero
/* B7924 800B6D24 10000001 */  b          .L800B6D2C
/* B7928 800B6D28 00000000 */   nop
.L800B6D2C:
/* B792C 800B6D2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7930 800B6D30 27BD0020 */  addiu      $sp, $sp, 0x20
/* B7934 800B6D34 03E00008 */  jr         $ra
/* B7938 800B6D38 00000000 */   nop

glabel func_800B6D3C
/* B793C 800B6D3C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B7940 800B6D40 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7944 800B6D44 AFA40068 */  sw         $a0, 0x68($sp)
/* B7948 800B6D48 8FAE0068 */  lw         $t6, 0x68($sp)
/* B794C 800B6D4C AFAE0064 */  sw         $t6, 0x64($sp)
/* B7950 800B6D50 8FAF0068 */  lw         $t7, 0x68($sp)
/* B7954 800B6D54 8FB80064 */  lw         $t8, 0x64($sp)
/* B7958 800B6D58 27A60018 */  addiu      $a2, $sp, 0x18
/* B795C 800B6D5C 91E40009 */  lbu        $a0, 9($t7)
/* B7960 800B6D60 0C02DA89 */  jal        func_800B6A24
/* B7964 800B6D64 8F05000C */   lw        $a1, 0xc($t8)
/* B7968 800B6D68 10400003 */  beqz       $v0, .L800B6D78
/* B796C 800B6D6C 00000000 */   nop
/* B7970 800B6D70 1000000D */  b          .L800B6DA8
/* B7974 800B6D74 2402FFFE */   addiu     $v0, $zero, -2
.L800B6D78:
/* B7978 800B6D78 8FB90064 */  lw         $t9, 0x64($sp)
/* B797C 800B6D7C 93280004 */  lbu        $t0, 4($t9)
/* B7980 800B6D80 A3A8001C */  sb         $t0, 0x1c($sp)
/* B7984 800B6D84 A7A0001E */  sh         $zero, 0x1e($sp)
/* B7988 800B6D88 27A40018 */  addiu      $a0, $sp, 0x18
/* B798C 800B6D8C 2405004C */  addiu      $a1, $zero, 0x4c
/* B7990 800B6D90 0C026833 */  jal        func_8009A0CC
/* B7994 800B6D94 24060001 */   addiu     $a2, $zero, 1
/* B7998 800B6D98 10000003 */  b          .L800B6DA8
/* B799C 800B6D9C 00001025 */   or        $v0, $zero, $zero
/* B79A0 800B6DA0 10000001 */  b          .L800B6DA8
/* B79A4 800B6DA4 00000000 */   nop
.L800B6DA8:
/* B79A8 800B6DA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B79AC 800B6DAC 27BD0068 */  addiu      $sp, $sp, 0x68
/* B79B0 800B6DB0 03E00008 */  jr         $ra
/* B79B4 800B6DB4 00000000 */   nop

glabel func_800B6DB8
/* B79B8 800B6DB8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B79BC 800B6DBC AFBF001C */  sw         $ra, 0x1c($sp)
/* B79C0 800B6DC0 AFA40078 */  sw         $a0, 0x78($sp)
/* B79C4 800B6DC4 AFB00018 */  sw         $s0, 0x18($sp)
/* B79C8 800B6DC8 8FAE0078 */  lw         $t6, 0x78($sp)
/* B79CC 800B6DCC AFAE0074 */  sw         $t6, 0x74($sp)
/* B79D0 800B6DD0 8FAF0078 */  lw         $t7, 0x78($sp)
/* B79D4 800B6DD4 91F00009 */  lbu        $s0, 9($t7)
/* B79D8 800B6DD8 12000006 */  beqz       $s0, .L800B6DF4
/* B79DC 800B6DDC 00000000 */   nop
/* B79E0 800B6DE0 24010001 */  addiu      $at, $zero, 1
/* B79E4 800B6DE4 12010008 */  beq        $s0, $at, .L800B6E08
/* B79E8 800B6DE8 00000000 */   nop
/* B79EC 800B6DEC 10000025 */  b          .L800B6E84
/* B79F0 800B6DF0 00000000 */   nop
.L800B6DF4:
/* B79F4 800B6DF4 8FB80074 */  lw         $t8, 0x74($sp)
/* B79F8 800B6DF8 0C02D9E7 */  jal        func_800B679C
/* B79FC 800B6DFC 8F04000C */   lw        $a0, 0xc($t8)
/* B7A00 800B6E00 10000022 */  b          .L800B6E8C
/* B7A04 800B6E04 00000000 */   nop
.L800B6E08:
/* B7A08 800B6E08 0C02E998 */  jal        func_800BA660
/* B7A0C 800B6E0C 00000000 */   nop
/* B7A10 800B6E10 1040001A */  beqz       $v0, .L800B6E7C
/* B7A14 800B6E14 00000000 */   nop
/* B7A18 800B6E18 0C02E9A1 */  jal        func_800BA684
/* B7A1C 800B6E1C 00000000 */   nop
/* B7A20 800B6E20 0C02A45C */  jal        func_800A9170
/* B7A24 800B6E24 3C040408 */   lui       $a0, 0x408
/* B7A28 800B6E28 AFA20024 */  sw         $v0, 0x24($sp)
/* B7A2C 800B6E2C 8FB90024 */  lw         $t9, 0x24($sp)
/* B7A30 800B6E30 17200003 */  bnez       $t9, .L800B6E40
/* B7A34 800B6E34 00000000 */   nop
/* B7A38 800B6E38 10000014 */  b          .L800B6E8C
/* B7A3C 800B6E3C 00000000 */   nop
.L800B6E40:
/* B7A40 800B6E40 8FA80024 */  lw         $t0, 0x24($sp)
/* B7A44 800B6E44 2509FFFC */  addiu      $t1, $t0, -4
/* B7A48 800B6E48 AFA90024 */  sw         $t1, 0x24($sp)
/* B7A4C 800B6E4C 8FA60024 */  lw         $a2, 0x24($sp)
/* B7A50 800B6E50 3C010400 */  lui        $at, 0x400
/* B7A54 800B6E54 34211000 */  ori        $at, $at, 0x1000
/* B7A58 800B6E58 24040001 */  addiu      $a0, $zero, 1
/* B7A5C 800B6E5C 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B7A60 800B6E60 0C02A81F */  jal        func_800AA07C
/* B7A64 800B6E64 00C13021 */   addu      $a2, $a2, $at
/* B7A68 800B6E68 304A0003 */  andi       $t2, $v0, 3
/* B7A6C 800B6E6C 15400003 */  bnez       $t2, .L800B6E7C
/* B7A70 800B6E70 00000000 */   nop
/* B7A74 800B6E74 0C02E9B2 */  jal        func_800BA6C8
/* B7A78 800B6E78 00000000 */   nop
.L800B6E7C:
/* B7A7C 800B6E7C 10000003 */  b          .L800B6E8C
/* B7A80 800B6E80 00000000 */   nop
.L800B6E84:
/* B7A84 800B6E84 10000021 */  b          .L800B6F0C
/* B7A88 800B6E88 2402FFFC */   addiu     $v0, $zero, -4
.L800B6E8C:
/* B7A8C 800B6E8C 8FAB0078 */  lw         $t3, 0x78($sp)
/* B7A90 800B6E90 8FAC0074 */  lw         $t4, 0x74($sp)
/* B7A94 800B6E94 27A60028 */  addiu      $a2, $sp, 0x28
/* B7A98 800B6E98 91640009 */  lbu        $a0, 9($t3)
/* B7A9C 800B6E9C 0C02DA89 */  jal        func_800B6A24
/* B7AA0 800B6EA0 8D85000C */   lw        $a1, 0xc($t4)
/* B7AA4 800B6EA4 10400003 */  beqz       $v0, .L800B6EB4
/* B7AA8 800B6EA8 00000000 */   nop
/* B7AAC 800B6EAC 10000017 */  b          .L800B6F0C
/* B7AB0 800B6EB0 2402FFFE */   addiu     $v0, $zero, -2
.L800B6EB4:
/* B7AB4 800B6EB4 8FAD0074 */  lw         $t5, 0x74($sp)
/* B7AB8 800B6EB8 91AE0004 */  lbu        $t6, 4($t5)
/* B7ABC 800B6EBC A3AE002C */  sb         $t6, 0x2c($sp)
/* B7AC0 800B6EC0 A7A0002E */  sh         $zero, 0x2e($sp)
/* B7AC4 800B6EC4 27A40028 */  addiu      $a0, $sp, 0x28
/* B7AC8 800B6EC8 2405004C */  addiu      $a1, $zero, 0x4c
/* B7ACC 800B6ECC 0C026833 */  jal        func_8009A0CC
/* B7AD0 800B6ED0 24060001 */   addiu     $a2, $zero, 1
/* B7AD4 800B6ED4 8FAF0034 */  lw         $t7, 0x34($sp)
/* B7AD8 800B6ED8 24010001 */  addiu      $at, $zero, 1
/* B7ADC 800B6EDC 15E10007 */  bne        $t7, $at, .L800B6EFC
/* B7AE0 800B6EE0 00000000 */   nop
/* B7AE4 800B6EE4 24180004 */  addiu      $t8, $zero, 4
/* B7AE8 800B6EE8 A3B8002C */  sb         $t8, 0x2c($sp)
/* B7AEC 800B6EEC 27A40028 */  addiu      $a0, $sp, 0x28
/* B7AF0 800B6EF0 2405004C */  addiu      $a1, $zero, 0x4c
/* B7AF4 800B6EF4 0C026833 */  jal        func_8009A0CC
/* B7AF8 800B6EF8 24060002 */   addiu     $a2, $zero, 2
.L800B6EFC:
/* B7AFC 800B6EFC 10000003 */  b          .L800B6F0C
/* B7B00 800B6F00 00001025 */   or        $v0, $zero, $zero
/* B7B04 800B6F04 10000001 */  b          .L800B6F0C
/* B7B08 800B6F08 00000000 */   nop
.L800B6F0C:
/* B7B0C 800B6F0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7B10 800B6F10 8FB00018 */  lw         $s0, 0x18($sp)
/* B7B14 800B6F14 27BD0078 */  addiu      $sp, $sp, 0x78
/* B7B18 800B6F18 03E00008 */  jr         $ra
/* B7B1C 800B6F1C 00000000 */   nop

glabel func_800B6F20
/* B7B20 800B6F20 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B7B24 800B6F24 AFBF0024 */  sw         $ra, 0x24($sp)
/* B7B28 800B6F28 AFA40098 */  sw         $a0, 0x98($sp)
/* B7B2C 800B6F2C AFB20020 */  sw         $s2, 0x20($sp)
/* B7B30 800B6F30 AFB1001C */  sw         $s1, 0x1c($sp)
/* B7B34 800B6F34 AFB00018 */  sw         $s0, 0x18($sp)
/* B7B38 800B6F38 8FAE0098 */  lw         $t6, 0x98($sp)
/* B7B3C 800B6F3C AFAE0094 */  sw         $t6, 0x94($sp)
/* B7B40 800B6F40 00008825 */  or         $s1, $zero, $zero
/* B7B44 800B6F44 8FAF0098 */  lw         $t7, 0x98($sp)
/* B7B48 800B6F48 91F20009 */  lbu        $s2, 9($t7)
/* B7B4C 800B6F4C 12400006 */  beqz       $s2, .L800B6F68
/* B7B50 800B6F50 00000000 */   nop
/* B7B54 800B6F54 24010001 */  addiu      $at, $zero, 1
/* B7B58 800B6F58 1241003E */  beq        $s2, $at, .L800B7054
/* B7B5C 800B6F5C 00000000 */   nop
/* B7B60 800B6F60 10000087 */  b          .L800B7180
/* B7B64 800B6F64 00000000 */   nop
.L800B6F68:
/* B7B68 800B6F68 0C02DC7C */  jal        func_800B71F0
/* B7B6C 800B6F6C 00000000 */   nop
/* B7B70 800B6F70 00408025 */  or         $s0, $v0, $zero
/* B7B74 800B6F74 8E180004 */  lw         $t8, 4($s0)
/* B7B78 800B6F78 2401FFFF */  addiu      $at, $zero, -1
/* B7B7C 800B6F7C 1301000D */  beq        $t8, $at, .L800B6FB4
/* B7B80 800B6F80 00000000 */   nop
.L800B6F84:
/* B7B84 800B6F84 8FA80094 */  lw         $t0, 0x94($sp)
/* B7B88 800B6F88 8E190014 */  lw         $t9, 0x14($s0)
/* B7B8C 800B6F8C 8D09000C */  lw         $t1, 0xc($t0)
/* B7B90 800B6F90 17290003 */  bne        $t9, $t1, .L800B6FA0
/* B7B94 800B6F94 00000000 */   nop
/* B7B98 800B6F98 10000006 */  b          .L800B6FB4
/* B7B9C 800B6F9C 00000000 */   nop
.L800B6FA0:
/* B7BA0 800B6FA0 8E10000C */  lw         $s0, 0xc($s0)
/* B7BA4 800B6FA4 8E0A0004 */  lw         $t2, 4($s0)
/* B7BA8 800B6FA8 2401FFFF */  addiu      $at, $zero, -1
/* B7BAC 800B6FAC 1541FFF5 */  bne        $t2, $at, .L800B6F84
/* B7BB0 800B6FB0 00000000 */   nop
.L800B6FB4:
/* B7BB4 800B6FB4 8E0B0004 */  lw         $t3, 4($s0)
/* B7BB8 800B6FB8 2401FFFF */  addiu      $at, $zero, -1
/* B7BBC 800B6FBC 15610003 */  bne        $t3, $at, .L800B6FCC
/* B7BC0 800B6FC0 00000000 */   nop
/* B7BC4 800B6FC4 10000083 */  b          .L800B71D4
/* B7BC8 800B6FC8 2402FFFE */   addiu     $v0, $zero, -2
.L800B6FCC:
/* B7BCC 800B6FCC 960C0010 */  lhu        $t4, 0x10($s0)
/* B7BD0 800B6FD0 24010001 */  addiu      $at, $zero, 1
/* B7BD4 800B6FD4 11810003 */  beq        $t4, $at, .L800B6FE4
/* B7BD8 800B6FD8 00000000 */   nop
/* B7BDC 800B6FDC 1000007D */  b          .L800B71D4
/* B7BE0 800B6FE0 2402FFFC */   addiu     $v0, $zero, -4
.L800B6FE4:
/* B7BE4 800B6FE4 960D0012 */  lhu        $t5, 0x12($s0)
/* B7BE8 800B6FE8 2401FFFC */  addiu      $at, $zero, -4
/* B7BEC 800B6FEC 01A17024 */  and        $t6, $t5, $at
/* B7BF0 800B6FF0 A60E0012 */  sh         $t6, 0x12($s0)
/* B7BF4 800B6FF4 8FAF0094 */  lw         $t7, 0x94($sp)
/* B7BF8 800B6FF8 8DF80010 */  lw         $t8, 0x10($t7)
/* B7BFC 800B6FFC 33080002 */  andi       $t0, $t8, 2
/* B7C00 800B7000 11000004 */  beqz       $t0, .L800B7014
/* B7C04 800B7004 00000000 */   nop
/* B7C08 800B7008 8FB90094 */  lw         $t9, 0x94($sp)
/* B7C0C 800B700C 8F290014 */  lw         $t1, 0x14($t9)
/* B7C10 800B7010 AE09011C */  sw         $t1, 0x11c($s0)
.L800B7014:
/* B7C14 800B7014 8FAA0094 */  lw         $t2, 0x94($sp)
/* B7C18 800B7018 8D4B0010 */  lw         $t3, 0x10($t2)
/* B7C1C 800B701C 316C0001 */  andi       $t4, $t3, 1
/* B7C20 800B7020 11800009 */  beqz       $t4, .L800B7048
/* B7C24 800B7024 00000000 */   nop
/* B7C28 800B7028 8FAD0094 */  lw         $t5, 0x94($sp)
/* B7C2C 800B702C 8E05011C */  lw         $a1, 0x11c($s0)
/* B7C30 800B7030 0C02A8ED */  jal        func_800AA3B4
/* B7C34 800B7034 8DA4000C */   lw        $a0, 0xc($t5)
/* B7C38 800B7038 14400003 */  bnez       $v0, .L800B7048
/* B7C3C 800B703C 00000000 */   nop
/* B7C40 800B7040 10000064 */  b          .L800B71D4
/* B7C44 800B7044 2402FFFC */   addiu     $v0, $zero, -4
.L800B7048:
/* B7C48 800B7048 24110001 */  addiu      $s1, $zero, 1
/* B7C4C 800B704C 1000004E */  b          .L800B7188
/* B7C50 800B7050 00000000 */   nop
.L800B7054:
/* B7C54 800B7054 0C02E998 */  jal        func_800BA660
/* B7C58 800B7058 00000000 */   nop
/* B7C5C 800B705C 10400003 */  beqz       $v0, .L800B706C
/* B7C60 800B7060 00000000 */   nop
/* B7C64 800B7064 1000005B */  b          .L800B71D4
/* B7C68 800B7068 2402FFFC */   addiu     $v0, $zero, -4
.L800B706C:
/* B7C6C 800B706C 8FAE0094 */  lw         $t6, 0x94($sp)
/* B7C70 800B7070 8DCF0010 */  lw         $t7, 0x10($t6)
/* B7C74 800B7074 31F80002 */  andi       $t8, $t7, 2
/* B7C78 800B7078 13000008 */  beqz       $t8, .L800B709C
/* B7C7C 800B707C 00000000 */   nop
/* B7C80 800B7080 8FA80094 */  lw         $t0, 0x94($sp)
/* B7C84 800B7084 3C01FBFF */  lui        $at, 0xfbff
/* B7C88 800B7088 3421F000 */  ori        $at, $at, 0xf000
/* B7C8C 800B708C 8D050014 */  lw         $a1, 0x14($t0)
/* B7C90 800B7090 3C040408 */  lui        $a0, 0x408
/* B7C94 800B7094 0C02A448 */  jal        func_800A9120
/* B7C98 800B7098 00A12821 */   addu      $a1, $a1, $at
.L800B709C:
/* B7C9C 800B709C 8FB90094 */  lw         $t9, 0x94($sp)
/* B7CA0 800B70A0 8F290010 */  lw         $t1, 0x10($t9)
/* B7CA4 800B70A4 312A0001 */  andi       $t2, $t1, 1
/* B7CA8 800B70A8 11400015 */  beqz       $t2, .L800B7100
/* B7CAC 800B70AC 00000000 */   nop
/* B7CB0 800B70B0 0C02A45C */  jal        func_800A9170
/* B7CB4 800B70B4 3C040408 */   lui       $a0, 0x408
/* B7CB8 800B70B8 3C010400 */  lui        $at, 0x400
/* B7CBC 800B70BC 34211000 */  ori        $at, $at, 0x1000
/* B7CC0 800B70C0 00409025 */  or         $s2, $v0, $zero
/* B7CC4 800B70C4 02413021 */  addu       $a2, $s2, $at
/* B7CC8 800B70C8 24040001 */  addiu      $a0, $zero, 1
/* B7CCC 800B70CC 0C02A81F */  jal        func_800AA07C
/* B7CD0 800B70D0 240503E8 */   addiu     $a1, $zero, 0x3e8
/* B7CD4 800B70D4 304B0003 */  andi       $t3, $v0, 3
/* B7CD8 800B70D8 15600003 */  bnez       $t3, .L800B70E8
/* B7CDC 800B70DC 00000000 */   nop
/* B7CE0 800B70E0 0C02E9B2 */  jal        func_800BA6C8
/* B7CE4 800B70E4 00000000 */   nop
.L800B70E8:
/* B7CE8 800B70E8 0C02E9B2 */  jal        func_800BA6C8
/* B7CEC 800B70EC 00000000 */   nop
/* B7CF0 800B70F0 240C0001 */  addiu      $t4, $zero, 1
/* B7CF4 800B70F4 3C018019 */  lui        $at, %hi(D_8018A390)
/* B7CF8 800B70F8 10000005 */  b          .L800B7110
/* B7CFC 800B70FC A02CA390 */   sb        $t4, %lo(D_8018A390)($at)
.L800B7100:
/* B7D00 800B7100 3C018019 */  lui        $at, %hi(D_8018A390)
/* B7D04 800B7104 A020A390 */  sb         $zero, %lo(D_8018A390)($at)
/* B7D08 800B7108 0C02E9B8 */  jal        func_800BA6E0
/* B7D0C 800B710C 00000000 */   nop
.L800B7110:
/* B7D10 800B7110 8FAD0094 */  lw         $t5, 0x94($sp)
/* B7D14 800B7114 91AE0004 */  lbu        $t6, 4($t5)
/* B7D18 800B7118 A3AE0088 */  sb         $t6, 0x88($sp)
/* B7D1C 800B711C A7A0008A */  sh         $zero, 0x8a($sp)
/* B7D20 800B7120 8FAF0094 */  lw         $t7, 0x94($sp)
/* B7D24 800B7124 8DF8000C */  lw         $t8, 0xc($t7)
/* B7D28 800B7128 AFB80090 */  sw         $t8, 0x90($sp)
/* B7D2C 800B712C 27A40084 */  addiu      $a0, $sp, 0x84
/* B7D30 800B7130 24050010 */  addiu      $a1, $zero, 0x10
/* B7D34 800B7134 0C026833 */  jal        func_8009A0CC
/* B7D38 800B7138 24060001 */   addiu     $a2, $zero, 1
/* B7D3C 800B713C 8FA80094 */  lw         $t0, 0x94($sp)
/* B7D40 800B7140 8D190010 */  lw         $t9, 0x10($t0)
/* B7D44 800B7144 33290001 */  andi       $t1, $t9, 1
/* B7D48 800B7148 1120000B */  beqz       $t1, .L800B7178
/* B7D4C 800B714C 00000000 */   nop
/* B7D50 800B7150 24040001 */  addiu      $a0, $zero, 1
/* B7D54 800B7154 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B7D58 800B7158 0C02DA89 */  jal        func_800B6A24
/* B7D5C 800B715C 27A60038 */   addiu     $a2, $sp, 0x38
/* B7D60 800B7160 0C02A923 */  jal        func_800AA48C
/* B7D64 800B7164 27A40038 */   addiu     $a0, $sp, 0x38
/* B7D68 800B7168 27A40038 */  addiu      $a0, $sp, 0x38
/* B7D6C 800B716C 2405004C */  addiu      $a1, $zero, 0x4c
/* B7D70 800B7170 0C026833 */  jal        func_8009A0CC
/* B7D74 800B7174 24060002 */   addiu     $a2, $zero, 2
.L800B7178:
/* B7D78 800B7178 10000016 */  b          .L800B71D4
/* B7D7C 800B717C 00001025 */   or        $v0, $zero, $zero
.L800B7180:
/* B7D80 800B7180 10000014 */  b          .L800B71D4
/* B7D84 800B7184 2402FFFC */   addiu     $v0, $zero, -4
.L800B7188:
/* B7D88 800B7188 8FAA0094 */  lw         $t2, 0x94($sp)
/* B7D8C 800B718C 914B0004 */  lbu        $t3, 4($t2)
/* B7D90 800B7190 A3AB0088 */  sb         $t3, 0x88($sp)
/* B7D94 800B7194 A7A0008A */  sh         $zero, 0x8a($sp)
/* B7D98 800B7198 8FAC0094 */  lw         $t4, 0x94($sp)
/* B7D9C 800B719C 8D8D000C */  lw         $t5, 0xc($t4)
/* B7DA0 800B71A0 AFAD0090 */  sw         $t5, 0x90($sp)
/* B7DA4 800B71A4 27A40084 */  addiu      $a0, $sp, 0x84
/* B7DA8 800B71A8 24050010 */  addiu      $a1, $zero, 0x10
/* B7DAC 800B71AC 0C026833 */  jal        func_8009A0CC
/* B7DB0 800B71B0 24060001 */   addiu     $a2, $zero, 1
/* B7DB4 800B71B4 12200003 */  beqz       $s1, .L800B71C4
/* B7DB8 800B71B8 00000000 */   nop
/* B7DBC 800B71BC 0C026588 */  jal        func_80099620
/* B7DC0 800B71C0 02002025 */   or        $a0, $s0, $zero
.L800B71C4:
/* B7DC4 800B71C4 10000003 */  b          .L800B71D4
/* B7DC8 800B71C8 24020001 */   addiu     $v0, $zero, 1
/* B7DCC 800B71CC 10000001 */  b          .L800B71D4
/* B7DD0 800B71D0 00000000 */   nop
.L800B71D4:
/* B7DD4 800B71D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7DD8 800B71D8 8FB00018 */  lw         $s0, 0x18($sp)
/* B7DDC 800B71DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* B7DE0 800B71E0 8FB20020 */  lw         $s2, 0x20($sp)
/* B7DE4 800B71E4 03E00008 */  jr         $ra
/* B7DE8 800B71E8 27BD0098 */   addiu     $sp, $sp, 0x98
/* B7DEC 800B71EC 00000000 */  nop
