glabel func_80069A18
/* 6A618 80069A18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6A61C 80069A1C AFA40028 */  sw         $a0, 0x28($sp)
/* 6A620 80069A20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6A624 80069A24 97A4002A */  lhu        $a0, 0x2a($sp)
/* 6A628 80069A28 0C00AD00 */  jal        func_8002B400
/* 6A62C 80069A2C 00000000 */   nop
/* 6A630 80069A30 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 6A634 80069A34 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 6A638 80069A38 00000000 */  nop
/* 6A63C 80069A3C 31CF0003 */  andi       $t7, $t6, 3
/* 6A640 80069A40 15E00051 */  bnez       $t7, .L80069B88
/* 6A644 80069A44 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6A648 80069A48 0C0005E3 */  jal        func_8000178C
/* 6A64C 80069A4C 00000000 */   nop
/* 6A650 80069A50 0C0005E3 */  jal        func_8000178C
/* 6A654 80069A54 A7A20022 */   sh        $v0, 0x22($sp)
/* 6A658 80069A58 97B8002A */  lhu        $t8, 0x2a($sp)
/* 6A65C 80069A5C 3C09800F */  lui        $t1, 0x800f
/* 6A660 80069A60 0018C880 */  sll        $t9, $t8, 2
/* 6A664 80069A64 0338C823 */  subu       $t9, $t9, $t8
/* 6A668 80069A68 0019C880 */  sll        $t9, $t9, 2
/* 6A66C 80069A6C 0338C821 */  addu       $t9, $t9, $t8
/* 6A670 80069A70 0019C880 */  sll        $t9, $t9, 2
/* 6A674 80069A74 0338C823 */  subu       $t9, $t9, $t8
/* 6A678 80069A78 0019C8C0 */  sll        $t9, $t9, 3
/* 6A67C 80069A7C 2529F510 */  addiu      $t1, $t1, -0xaf0
/* 6A680 80069A80 03291821 */  addu       $v1, $t9, $t1
/* 6A684 80069A84 97AA0022 */  lhu        $t2, 0x22($sp)
/* 6A688 80069A88 24080010 */  addiu      $t0, $zero, 0x10
/* 6A68C 80069A8C 846D0088 */  lh         $t5, 0x88($v1)
/* 6A690 80069A90 8478008C */  lh         $t8, 0x8c($v1)
/* 6A694 80069A94 84670090 */  lh         $a3, 0x90($v1)
/* 6A698 80069A98 304E001F */  andi       $t6, $v0, 0x1f
/* 6A69C 80069A9C 314B001F */  andi       $t3, $t2, 0x1f
/* 6A6A0 80069AA0 010B6023 */  subu       $t4, $t0, $t3
/* 6A6A4 80069AA4 010E7823 */  subu       $t7, $t0, $t6
/* 6A6A8 80069AA8 3C04800E */  lui        $a0, %hi(D_800E1540)
/* 6A6AC 80069AAC 24841540 */  addiu      $a0, $a0, %lo(D_800E1540)
/* 6A6B0 80069AB0 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6A6B4 80069AB4 018D2821 */  addu       $a1, $t4, $t5
/* 6A6B8 80069AB8 01F83021 */  addu       $a2, $t7, $t8
/* 6A6BC 80069ABC 0C00C48F */  jal        func_8003123C
/* 6A6C0 80069AC0 24E7FFFF */   addiu     $a3, $a3, -1
/* 6A6C4 80069AC4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6A6C8 80069AC8 1040002E */  beqz       $v0, .L80069B84
/* 6A6CC 80069ACC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 6A6D0 80069AD0 0004C880 */  sll        $t9, $a0, 2
/* 6A6D4 80069AD4 0324C823 */  subu       $t9, $t9, $a0
/* 6A6D8 80069AD8 0019C880 */  sll        $t9, $t9, 2
/* 6A6DC 80069ADC 0324C821 */  addu       $t9, $t9, $a0
/* 6A6E0 80069AE0 0019C880 */  sll        $t9, $t9, 2
/* 6A6E4 80069AE4 0324C823 */  subu       $t9, $t9, $a0
/* 6A6E8 80069AE8 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 6A6EC 80069AEC 3C01800F */  lui        $at, %hi(D_800EC598)
/* 6A6F0 80069AF0 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 6A6F4 80069AF4 0019C8C0 */  sll        $t9, $t9, 3
/* 6A6F8 80069AF8 C420C598 */  lwc1       $f0, %lo(D_800EC598)($at)
/* 6A6FC 80069AFC 03291021 */  addu       $v0, $t9, $t1
/* 6A700 80069B00 240A0001 */  addiu      $t2, $zero, 1
/* 6A704 80069B04 240B0003 */  addiu      $t3, $zero, 3
/* 6A708 80069B08 A44A0094 */  sh         $t2, 0x94($v0)
/* 6A70C 80069B0C AC4B0080 */  sw         $t3, 0x80($v0)
/* 6A710 80069B10 E4400110 */  swc1       $f0, 0x110($v0)
/* 6A714 80069B14 E4400114 */  swc1       $f0, 0x114($v0)
/* 6A718 80069B18 8C6C00EC */  lw         $t4, 0xec($v1)
/* 6A71C 80069B1C 24091000 */  addiu      $t1, $zero, 0x1000
/* 6A720 80069B20 000C6823 */  negu       $t5, $t4
/* 6A724 80069B24 05A10003 */  bgez       $t5, .L80069B34
/* 6A728 80069B28 000D7043 */   sra       $t6, $t5, 1
/* 6A72C 80069B2C 25A10001 */  addiu      $at, $t5, 1
/* 6A730 80069B30 00017043 */  sra        $t6, $at, 1
.L80069B34:
/* 6A734 80069B34 AC4E00EC */  sw         $t6, 0xec($v0)
/* 6A738 80069B38 8C6F00F0 */  lw         $t7, 0xf0($v1)
/* 6A73C 80069B3C 240AFFEE */  addiu      $t2, $zero, -0x12
/* 6A740 80069B40 000FC023 */  negu       $t8, $t7
/* 6A744 80069B44 07010003 */  bgez       $t8, .L80069B54
/* 6A748 80069B48 0018C843 */   sra       $t9, $t8, 1
/* 6A74C 80069B4C 27010001 */  addiu      $at, $t8, 1
/* 6A750 80069B50 0001C843 */  sra        $t9, $at, 1
.L80069B54:
/* 6A754 80069B54 AC5900F0 */  sw         $t9, 0xf0($v0)
/* 6A758 80069B58 AC49015C */  sw         $t1, 0x15c($v0)
/* 6A75C 80069B5C AC4A0154 */  sw         $t2, 0x154($v0)
/* 6A760 80069B60 AFA20018 */  sw         $v0, 0x18($sp)
/* 6A764 80069B64 0C00ABAD */  jal        func_8002AEB4
/* 6A768 80069B68 2405007F */   addiu     $a1, $zero, 0x7f
/* 6A76C 80069B6C 8FA20018 */  lw         $v0, 0x18($sp)
/* 6A770 80069B70 3C0C8003 */  lui        $t4, %hi(func_80030A24)
/* 6A774 80069B74 240BFFE0 */  addiu      $t3, $zero, -0x20
/* 6A778 80069B78 258C0A24 */  addiu      $t4, $t4, %lo(func_80030A24)
/* 6A77C 80069B7C AC4B0104 */  sw         $t3, 0x104($v0)
/* 6A780 80069B80 AC4C017C */  sw         $t4, 0x17c($v0)
.L80069B84:
/* 6A784 80069B84 8FBF0014 */  lw         $ra, 0x14($sp)
.L80069B88:
/* 6A788 80069B88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6A78C 80069B8C 03E00008 */  jr         $ra
/* 6A790 80069B90 00000000 */   nop
