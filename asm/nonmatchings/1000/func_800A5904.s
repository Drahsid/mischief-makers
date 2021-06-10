glabel func_800A5904
/* A6504 800A5904 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* A6508 800A5908 AFBF001C */  sw         $ra, 0x1c($sp)
/* A650C 800A590C AFA400B8 */  sw         $a0, 0xb8($sp)
/* A6510 800A5910 AFA500BC */  sw         $a1, 0xbc($sp)
/* A6514 800A5914 AFA600C0 */  sw         $a2, 0xc0($sp)
/* A6518 800A5918 AFB00018 */  sw         $s0, 0x18($sp)
/* A651C 800A591C 27AE0028 */  addiu      $t6, $sp, 0x28
/* A6520 800A5920 AFAE00AC */  sw         $t6, 0xac($sp)
/* A6524 800A5924 8FAF00C0 */  lw         $t7, 0xc0($sp)
/* A6528 800A5928 AFA000B4 */  sw         $zero, 0xb4($sp)
/* A652C 800A592C 19E00060 */  blez       $t7, .L800A5AB0
/* A6530 800A5930 00000000 */   nop
.L800A5934:
/* A6534 800A5934 8FB800BC */  lw         $t8, 0xbc($sp)
/* A6538 800A5938 93190000 */  lbu        $t9, ($t8)
/* A653C 800A593C 27080001 */  addiu      $t0, $t8, 1
/* A6540 800A5940 AFA800BC */  sw         $t0, 0xbc($sp)
/* A6544 800A5944 A3B900B3 */  sb         $t9, 0xb3($sp)
/* A6548 800A5948 93B000B3 */  lbu        $s0, 0xb3($sp)
/* A654C 800A594C 24010009 */  addiu      $at, $zero, 9
/* A6550 800A5950 12010010 */  beq        $s0, $at, .L800A5994
/* A6554 800A5954 00000000 */   nop
/* A6558 800A5958 2401000A */  addiu      $at, $zero, 0xa
/* A655C 800A595C 12010003 */  beq        $s0, $at, .L800A596C
/* A6560 800A5960 00000000 */   nop
/* A6564 800A5964 1000001F */  b          .L800A59E4
/* A6568 800A5968 00000000 */   nop
.L800A596C:
/* A656C 800A596C 8FAA00AC */  lw         $t2, 0xac($sp)
/* A6570 800A5970 2409000A */  addiu      $t1, $zero, 0xa
/* A6574 800A5974 A1490000 */  sb         $t1, ($t2)
/* A6578 800A5978 8FAB00AC */  lw         $t3, 0xac($sp)
/* A657C 800A597C 256C0001 */  addiu      $t4, $t3, 1
/* A6580 800A5980 AFAC00AC */  sw         $t4, 0xac($sp)
/* A6584 800A5984 3C01800F */  lui        $at, %hi(D_800EA56C)
/* A6588 800A5988 AC20A56C */  sw         $zero, %lo(D_800EA56C)($at)
/* A658C 800A598C 10000022 */  b          .L800A5A18
/* A6590 800A5990 00000000 */   nop
.L800A5994:
/* A6594 800A5994 8FAE00AC */  lw         $t6, 0xac($sp)
/* A6598 800A5998 240D0020 */  addiu      $t5, $zero, 0x20
/* A659C 800A599C A1CD0000 */  sb         $t5, ($t6)
/* A65A0 800A59A0 8FAF00AC */  lw         $t7, 0xac($sp)
/* A65A4 800A59A4 25F90001 */  addiu      $t9, $t7, 1
/* A65A8 800A59A8 AFB900AC */  sw         $t9, 0xac($sp)
/* A65AC 800A59AC 3C18800F */  lui        $t8, %hi(D_800EA56C)
/* A65B0 800A59B0 8F18A56C */  lw         $t8, %lo(D_800EA56C)($t8)
/* A65B4 800A59B4 3C01800F */  lui        $at, %hi(D_800EA56C)
/* A65B8 800A59B8 27080001 */  addiu      $t0, $t8, 1
/* A65BC 800A59BC AC28A56C */  sw         $t0, %lo(D_800EA56C)($at)
/* A65C0 800A59C0 05010004 */  bgez       $t0, .L800A59D4
/* A65C4 800A59C4 31090007 */   andi      $t1, $t0, 7
/* A65C8 800A59C8 11200002 */  beqz       $t1, .L800A59D4
/* A65CC 800A59CC 00000000 */   nop
/* A65D0 800A59D0 2529FFF8 */  addiu      $t1, $t1, -8
.L800A59D4:
/* A65D4 800A59D4 1520FFEF */  bnez       $t1, .L800A5994
/* A65D8 800A59D8 00000000 */   nop
/* A65DC 800A59DC 1000000E */  b          .L800A5A18
/* A65E0 800A59E0 00000000 */   nop
.L800A59E4:
/* A65E4 800A59E4 3C0A800F */  lui        $t2, %hi(D_800EA56C)
/* A65E8 800A59E8 8D4AA56C */  lw         $t2, %lo(D_800EA56C)($t2)
/* A65EC 800A59EC 3C01800F */  lui        $at, %hi(D_800EA56C)
/* A65F0 800A59F0 254B0001 */  addiu      $t3, $t2, 1
/* A65F4 800A59F4 AC2BA56C */  sw         $t3, %lo(D_800EA56C)($at)
/* A65F8 800A59F8 93AC00B3 */  lbu        $t4, 0xb3($sp)
/* A65FC 800A59FC 8FAD00AC */  lw         $t5, 0xac($sp)
/* A6600 800A5A00 A1AC0000 */  sb         $t4, ($t5)
/* A6604 800A5A04 8FAE00AC */  lw         $t6, 0xac($sp)
/* A6608 800A5A08 25CF0001 */  addiu      $t7, $t6, 1
/* A660C 800A5A0C AFAF00AC */  sw         $t7, 0xac($sp)
/* A6610 800A5A10 10000001 */  b          .L800A5A18
/* A6614 800A5A14 00000000 */   nop
.L800A5A18:
/* A6618 800A5A18 93B900B3 */  lbu        $t9, 0xb3($sp)
/* A661C 800A5A1C 2401000A */  addiu      $at, $zero, 0xa
/* A6620 800A5A20 13210007 */  beq        $t9, $at, .L800A5A40
/* A6624 800A5A24 00000000 */   nop
/* A6628 800A5A28 8FB800AC */  lw         $t8, 0xac($sp)
/* A662C 800A5A2C 27A80028 */  addiu      $t0, $sp, 0x28
/* A6630 800A5A30 03084823 */  subu       $t1, $t8, $t0
/* A6634 800A5A34 29210065 */  slti       $at, $t1, 0x65
/* A6638 800A5A38 14200017 */  bnez       $at, .L800A5A98
/* A663C 800A5A3C 00000000 */   nop
.L800A5A40:
/* A6640 800A5A40 8FAA00AC */  lw         $t2, 0xac($sp)
/* A6644 800A5A44 27AB0028 */  addiu      $t3, $sp, 0x28
/* A6648 800A5A48 014B2023 */  subu       $a0, $t2, $t3
/* A664C 800A5A4C 0C029621 */  jal        func_800A5884
/* A6650 800A5A50 2484FFFF */   addiu     $a0, $a0, -1
/* A6654 800A5A54 27AC0028 */  addiu      $t4, $sp, 0x28
/* A6658 800A5A58 AFAC00A8 */  sw         $t4, 0xa8($sp)
/* A665C 800A5A5C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* A6660 800A5A60 8FAE00AC */  lw         $t6, 0xac($sp)
/* A6664 800A5A64 11AE000A */  beq        $t5, $t6, .L800A5A90
/* A6668 800A5A68 00000000 */   nop
.L800A5A6C:
/* A666C 800A5A6C 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* A6670 800A5A70 91E40000 */  lbu        $a0, ($t7)
/* A6674 800A5A74 25F90001 */  addiu      $t9, $t7, 1
/* A6678 800A5A78 0C029621 */  jal        func_800A5884
/* A667C 800A5A7C AFB900A8 */   sw        $t9, 0xa8($sp)
/* A6680 800A5A80 8FB800A8 */  lw         $t8, 0xa8($sp)
/* A6684 800A5A84 8FA800AC */  lw         $t0, 0xac($sp)
/* A6688 800A5A88 1708FFF8 */  bne        $t8, $t0, .L800A5A6C
/* A668C 800A5A8C 00000000 */   nop
.L800A5A90:
/* A6690 800A5A90 27A90028 */  addiu      $t1, $sp, 0x28
/* A6694 800A5A94 AFA900AC */  sw         $t1, 0xac($sp)
.L800A5A98:
/* A6698 800A5A98 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* A669C 800A5A9C 8FAC00C0 */  lw         $t4, 0xc0($sp)
/* A66A0 800A5AA0 254B0001 */  addiu      $t3, $t2, 1
/* A66A4 800A5AA4 016C082A */  slt        $at, $t3, $t4
/* A66A8 800A5AA8 1420FFA2 */  bnez       $at, .L800A5934
/* A66AC 800A5AAC AFAB00B4 */   sw        $t3, 0xb4($sp)
.L800A5AB0:
/* A66B0 800A5AB0 8FAE00AC */  lw         $t6, 0xac($sp)
/* A66B4 800A5AB4 27AD0028 */  addiu      $t5, $sp, 0x28
/* A66B8 800A5AB8 11AE0015 */  beq        $t5, $t6, .L800A5B10
/* A66BC 800A5ABC 00000000 */   nop
/* A66C0 800A5AC0 8FAF00AC */  lw         $t7, 0xac($sp)
/* A66C4 800A5AC4 27B90028 */  addiu      $t9, $sp, 0x28
/* A66C8 800A5AC8 01F92023 */  subu       $a0, $t7, $t9
/* A66CC 800A5ACC 0C029621 */  jal        func_800A5884
/* A66D0 800A5AD0 2484FFFF */   addiu     $a0, $a0, -1
/* A66D4 800A5AD4 27B80028 */  addiu      $t8, $sp, 0x28
/* A66D8 800A5AD8 AFB800A8 */  sw         $t8, 0xa8($sp)
/* A66DC 800A5ADC 8FA800A8 */  lw         $t0, 0xa8($sp)
/* A66E0 800A5AE0 8FA900AC */  lw         $t1, 0xac($sp)
/* A66E4 800A5AE4 1109000A */  beq        $t0, $t1, .L800A5B10
/* A66E8 800A5AE8 00000000 */   nop
.L800A5AEC:
/* A66EC 800A5AEC 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* A66F0 800A5AF0 91440000 */  lbu        $a0, ($t2)
/* A66F4 800A5AF4 254B0001 */  addiu      $t3, $t2, 1
/* A66F8 800A5AF8 0C029621 */  jal        func_800A5884
/* A66FC 800A5AFC AFAB00A8 */   sw        $t3, 0xa8($sp)
/* A6700 800A5B00 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* A6704 800A5B04 8FAD00AC */  lw         $t5, 0xac($sp)
/* A6708 800A5B08 158DFFF8 */  bne        $t4, $t5, .L800A5AEC
/* A670C 800A5B0C 00000000 */   nop
.L800A5B10:
/* A6710 800A5B10 10000003 */  b          .L800A5B20
/* A6714 800A5B14 24020001 */   addiu     $v0, $zero, 1
/* A6718 800A5B18 10000001 */  b          .L800A5B20
/* A671C 800A5B1C 00000000 */   nop
.L800A5B20:
/* A6720 800A5B20 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6724 800A5B24 8FB00018 */  lw         $s0, 0x18($sp)
/* A6728 800A5B28 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* A672C 800A5B2C 03E00008 */  jr         $ra
/* A6730 800A5B30 00000000 */   nop
