.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel syncprintf_text_0000
/* A63F0 800A57F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A63F4 800A57F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A63F8 800A57F8 AFA40028 */  sw         $a0, 0x28($sp)
/* A63FC 800A57FC AFA5002C */  sw         $a1, 0x2c($sp)
/* A6400 800A5800 AFA60030 */  sw         $a2, 0x30($sp)
/* A6404 800A5804 AFB00018 */  sw         $s0, 0x18($sp)
/* A6408 800A5808 AFA00024 */  sw         $zero, 0x24($sp)
/* A640C 800A580C 8FAE0024 */  lw         $t6, 0x24($sp)
/* A6410 800A5810 8FAF0030 */  lw         $t7, 0x30($sp)
/* A6414 800A5814 01CF082B */  sltu       $at, $t6, $t7
/* A6418 800A5818 10200011 */  beqz       $at, .L800A5860
/* A641C 800A581C 00000000 */   nop
.L800A5820:
/* A6420 800A5820 8FB90024 */  lw         $t9, 0x24($sp)
/* A6424 800A5824 8FB8002C */  lw         $t8, 0x2c($sp)
/* A6428 800A5828 8FA80030 */  lw         $t0, 0x30($sp)
/* A642C 800A582C 24060001 */  addiu      $a2, $zero, 1
/* A6430 800A5830 03192021 */  addu       $a0, $t8, $t9
/* A6434 800A5834 0C02A254 */  jal        __osRdbSend
/* A6438 800A5838 01192823 */   subu      $a1, $t0, $t9
/* A643C 800A583C 8FA90024 */  lw         $t1, 0x24($sp)
/* A6440 800A5840 00408025 */  or         $s0, $v0, $zero
/* A6444 800A5844 01305021 */  addu       $t2, $t1, $s0
/* A6448 800A5848 AFAA0024 */  sw         $t2, 0x24($sp)
/* A644C 800A584C 8FAB0024 */  lw         $t3, 0x24($sp)
/* A6450 800A5850 8FAC0030 */  lw         $t4, 0x30($sp)
/* A6454 800A5854 016C082B */  sltu       $at, $t3, $t4
/* A6458 800A5858 1420FFF1 */  bnez       $at, .L800A5820
/* A645C 800A585C 00000000 */   nop
.L800A5860:
/* A6460 800A5860 10000003 */  b          .L800A5870
/* A6464 800A5864 24020001 */   addiu     $v0, $zero, 1
/* A6468 800A5868 10000001 */  b          .L800A5870
/* A646C 800A586C 00000000 */   nop
.L800A5870:
/* A6470 800A5870 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6474 800A5874 8FB00018 */  lw         $s0, 0x18($sp)
/* A6478 800A5878 27BD0028 */  addiu      $sp, $sp, 0x28
/* A647C 800A587C 03E00008 */  jr         $ra
/* A6480 800A5880 00000000 */   nop

glabel func_800A5884
/* A6484 800A5884 308400FF */  andi       $a0, $a0, 0xff
/* A6488 800A5888 3C0E800F */  lui        $t6, %hi(D_800EA568)
/* A648C 800A588C 8DCEA568 */  lw         $t6, %lo(D_800EA568)($t6)
/* A6490 800A5890 8DCF0000 */  lw         $t7, ($t6)
/* A6494 800A5894 31F80003 */  andi       $t8, $t7, 3
/* A6498 800A5898 13000007 */  beqz       $t8, .L800A58B8
/* A649C 800A589C 00000000 */   nop
.L800A58A0:
/* A64A0 800A58A0 3C19800F */  lui        $t9, %hi(D_800EA568)
/* A64A4 800A58A4 8F39A568 */  lw         $t9, %lo(D_800EA568)($t9)
/* A64A8 800A58A8 8F280000 */  lw         $t0, ($t9)
/* A64AC 800A58AC 31090003 */  andi       $t1, $t0, 3
/* A64B0 800A58B0 1520FFFB */  bnez       $t1, .L800A58A0
/* A64B4 800A58B4 00000000 */   nop
.L800A58B8:
/* A64B8 800A58B8 3C0A800F */  lui        $t2, %hi(D_800EA560)
/* A64BC 800A58BC 8D4AA560 */  lw         $t2, %lo(D_800EA560)($t2)
/* A64C0 800A58C0 8D4B0000 */  lw         $t3, ($t2)
/* A64C4 800A58C4 316C0004 */  andi       $t4, $t3, 4
/* A64C8 800A58C8 15800007 */  bnez       $t4, .L800A58E8
/* A64CC 800A58CC 00000000 */   nop
.L800A58D0:
/* A64D0 800A58D0 3C0D800F */  lui        $t5, %hi(D_800EA560)
/* A64D4 800A58D4 8DADA560 */  lw         $t5, %lo(D_800EA560)($t5)
/* A64D8 800A58D8 8DAE0000 */  lw         $t6, ($t5)
/* A64DC 800A58DC 31CF0004 */  andi       $t7, $t6, 4
/* A64E0 800A58E0 11E0FFFB */  beqz       $t7, .L800A58D0
/* A64E4 800A58E4 00000000 */   nop
.L800A58E8:
/* A64E8 800A58E8 3C18800F */  lui        $t8, %hi(D_800EA564)
/* A64EC 800A58EC 8F18A564 */  lw         $t8, %lo(D_800EA564)($t8)
/* A64F0 800A58F0 AF040000 */  sw         $a0, ($t8)
/* A64F4 800A58F4 03E00008 */  jr         $ra
/* A64F8 800A58F8 00000000 */   nop

glabel func_800A58FC
/* A64FC 800A58FC 03E00008 */  jr         $ra
/* A6500 800A5900 00000000 */   nop

glabel syncprintf_text_0114
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

glabel osSyncPrintf
/* A6734 800A5B34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6738 800A5B38 AFBF0014 */  sw         $ra, 0x14($sp)
/* A673C 800A5B3C AFA40020 */  sw         $a0, 0x20($sp)
/* A6740 800A5B40 AFA50024 */  sw         $a1, 0x24($sp)
/* A6744 800A5B44 AFA60028 */  sw         $a2, 0x28($sp)
/* A6748 800A5B48 AFA7002C */  sw         $a3, 0x2c($sp)
/* A674C 800A5B4C 27AE0020 */  addiu      $t6, $sp, 0x20
/* A6750 800A5B50 25CF0004 */  addiu      $t7, $t6, 4
/* A6754 800A5B54 AFAF0018 */  sw         $t7, 0x18($sp)
/* A6758 800A5B58 3C188018 */  lui        $t8, %hi(__kmc_pt_mode)
/* A675C 800A5B5C 8F1826C0 */  lw         $t8, %lo(__kmc_pt_mode)($t8)
/* A6760 800A5B60 13000009 */  beqz       $t8, .L800A5B88
/* A6764 800A5B64 00000000 */   nop
/* A6768 800A5B68 3C04800A */  lui        $a0, %hi(syncprintf_text_0114)
/* A676C 800A5B6C 24845904 */  addiu      $a0, $a0, %lo(syncprintf_text_0114)
/* A6770 800A5B70 00002825 */  or         $a1, $zero, $zero
/* A6774 800A5B74 8FA60020 */  lw         $a2, 0x20($sp)
/* A6778 800A5B78 0C02CCC4 */  jal        _Printf
/* A677C 800A5B7C 8FA70018 */   lw        $a3, 0x18($sp)
/* A6780 800A5B80 10000008 */  b          .L800A5BA4
/* A6784 800A5B84 AFA2001C */   sw        $v0, 0x1c($sp)
.L800A5B88:
/* A6788 800A5B88 3C04800A */  lui        $a0, %hi(syncprintf_text_0000)
/* A678C 800A5B8C 248457F0 */  addiu      $a0, $a0, %lo(syncprintf_text_0000)
/* A6790 800A5B90 00002825 */  or         $a1, $zero, $zero
/* A6794 800A5B94 8FA60020 */  lw         $a2, 0x20($sp)
/* A6798 800A5B98 0C02CCC4 */  jal        _Printf
/* A679C 800A5B9C 8FA70018 */   lw        $a3, 0x18($sp)
/* A67A0 800A5BA0 AFA2001C */  sw         $v0, 0x1c($sp)
.L800A5BA4:
/* A67A4 800A5BA4 10000001 */  b          .L800A5BAC
/* A67A8 800A5BA8 00000000 */   nop
.L800A5BAC:
/* A67AC 800A5BAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A67B0 800A5BB0 27BD0020 */  addiu      $sp, $sp, 0x20
/* A67B4 800A5BB4 03E00008 */  jr         $ra
/* A67B8 800A5BB8 00000000 */   nop

glabel rmonPrintf
/* A67BC 800A5BBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A67C0 800A5BC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A67C4 800A5BC4 AFA40020 */  sw         $a0, 0x20($sp)
/* A67C8 800A5BC8 AFA50024 */  sw         $a1, 0x24($sp)
/* A67CC 800A5BCC AFA60028 */  sw         $a2, 0x28($sp)
/* A67D0 800A5BD0 AFA7002C */  sw         $a3, 0x2c($sp)
/* A67D4 800A5BD4 27AE0020 */  addiu      $t6, $sp, 0x20
/* A67D8 800A5BD8 25CF0004 */  addiu      $t7, $t6, 4
/* A67DC 800A5BDC AFAF0018 */  sw         $t7, 0x18($sp)
/* A67E0 800A5BE0 3C188018 */  lui        $t8, %hi(__kmc_pt_mode)
/* A67E4 800A5BE4 8F1826C0 */  lw         $t8, %lo(__kmc_pt_mode)($t8)
/* A67E8 800A5BE8 13000008 */  beqz       $t8, .L800A5C0C
/* A67EC 800A5BEC 00000000 */   nop
/* A67F0 800A5BF0 3C04800A */  lui        $a0, %hi(syncprintf_text_0114)
/* A67F4 800A5BF4 24845904 */  addiu      $a0, $a0, %lo(syncprintf_text_0114)
/* A67F8 800A5BF8 00002825 */  or         $a1, $zero, $zero
/* A67FC 800A5BFC 8FA60020 */  lw         $a2, 0x20($sp)
/* A6800 800A5C00 0C02CCC4 */  jal        _Printf
/* A6804 800A5C04 8FA70018 */   lw        $a3, 0x18($sp)
/* A6808 800A5C08 AFA2001C */  sw         $v0, 0x1c($sp)
.L800A5C0C:
/* A680C 800A5C0C 10000001 */  b          .L800A5C14
/* A6810 800A5C10 00000000 */   nop
.L800A5C14:
/* A6814 800A5C14 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6818 800A5C18 27BD0020 */  addiu      $sp, $sp, 0x20
/* A681C 800A5C1C 03E00008 */  jr         $ra
/* A6820 800A5C20 00000000 */   nop
/* A6824 800A5C24 00000000 */  nop
/* A6828 800A5C28 00000000 */  nop
/* A682C 800A5C2C 00000000 */  nop
