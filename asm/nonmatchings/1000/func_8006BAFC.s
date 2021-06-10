glabel func_8006BAFC
/* 6C6FC 8006BAFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6C700 8006BB00 AFA40020 */  sw         $a0, 0x20($sp)
/* 6C704 8006BB04 97AE0022 */  lhu        $t6, 0x22($sp)
/* 6C708 8006BB08 3C18800F */  lui        $t8, 0x800f
/* 6C70C 8006BB0C 000E7880 */  sll        $t7, $t6, 2
/* 6C710 8006BB10 01EE7823 */  subu       $t7, $t7, $t6
/* 6C714 8006BB14 000F7880 */  sll        $t7, $t7, 2
/* 6C718 8006BB18 01EE7821 */  addu       $t7, $t7, $t6
/* 6C71C 8006BB1C 000F7880 */  sll        $t7, $t7, 2
/* 6C720 8006BB20 01EE7823 */  subu       $t7, $t7, $t6
/* 6C724 8006BB24 000F78C0 */  sll        $t7, $t7, 3
/* 6C728 8006BB28 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 6C72C 8006BB2C AFA50024 */  sw         $a1, 0x24($sp)
/* 6C730 8006BB30 01F81021 */  addu       $v0, $t7, $t8
/* 6C734 8006BB34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6C738 8006BB38 84450088 */  lh         $a1, 0x88($v0)
/* 6C73C 8006BB3C 8446008C */  lh         $a2, 0x8c($v0)
/* 6C740 8006BB40 97A40026 */  lhu        $a0, 0x26($sp)
/* 6C744 8006BB44 AFA00010 */  sw         $zero, 0x10($sp)
/* 6C748 8006BB48 0C00BB52 */  jal        func_8002ED48
/* 6C74C 8006BB4C 00003825 */   or        $a3, $zero, $zero
/* 6C750 8006BB50 97A80026 */  lhu        $t0, 0x26($sp)
/* 6C754 8006BB54 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6C758 8006BB58 00084880 */  sll        $t1, $t0, 2
/* 6C75C 8006BB5C 01284823 */  subu       $t1, $t1, $t0
/* 6C760 8006BB60 00094880 */  sll        $t1, $t1, 2
/* 6C764 8006BB64 01284821 */  addu       $t1, $t1, $t0
/* 6C768 8006BB68 00094880 */  sll        $t1, $t1, 2
/* 6C76C 8006BB6C 01284823 */  subu       $t1, $t1, $t0
/* 6C770 8006BB70 000948C0 */  sll        $t1, $t1, 3
/* 6C774 8006BB74 3C01800F */  lui        $at, %hi(D_800EF608)
/* 6C778 8006BB78 00290821 */  addu       $at, $at, $t1
/* 6C77C 8006BB7C 2419FFFD */  addiu      $t9, $zero, -3
/* 6C780 8006BB80 AC39F608 */  sw         $t9, %lo(D_800EF608)($at)
/* 6C784 8006BB84 03E00008 */  jr         $ra
/* 6C788 8006BB88 27BD0020 */   addiu     $sp, $sp, 0x20
