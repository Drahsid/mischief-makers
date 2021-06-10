glabel func_8002BB04
/* 2C704 8002BB04 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C708 8002BB08 AFB00014 */  sw         $s0, 0x14($sp)
/* 2C70C 8002BB0C 3090FFFF */  andi       $s0, $a0, 0xffff
/* 2C710 8002BB10 00107080 */  sll        $t6, $s0, 2
/* 2C714 8002BB14 01D07023 */  subu       $t6, $t6, $s0
/* 2C718 8002BB18 000E7080 */  sll        $t6, $t6, 2
/* 2C71C 8002BB1C 01D07021 */  addu       $t6, $t6, $s0
/* 2C720 8002BB20 000E7080 */  sll        $t6, $t6, 2
/* 2C724 8002BB24 01D07023 */  subu       $t6, $t6, $s0
/* 2C728 8002BB28 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 2C72C 8002BB2C AFB10018 */  sw         $s1, 0x18($sp)
/* 2C730 8002BB30 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 2C734 8002BB34 000E70C0 */  sll        $t6, $t6, 3
/* 2C738 8002BB38 01CF8821 */  addu       $s1, $t6, $t7
/* 2C73C 8002BB3C 86250088 */  lh         $a1, 0x88($s1)
/* 2C740 8002BB40 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C744 8002BB44 AFA40020 */  sw         $a0, 0x20($sp)
/* 2C748 8002BB48 8626008C */  lh         $a2, 0x8c($s1)
/* 2C74C 8002BB4C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C750 8002BB50 0C007F28 */  jal        func_8001FCA0
/* 2C754 8002BB54 24A5FFFC */   addiu     $a1, $a1, -4
/* 2C758 8002BB58 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C75C 8002BB5C 0C00AEB3 */  jal        func_8002BACC
/* 2C760 8002BB60 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C764 8002BB64 10400003 */  beqz       $v0, .L8002BB74
/* 2C768 8002BB68 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C76C 8002BB6C 10000023 */  b          .L8002BBFC
/* 2C770 8002BB70 24020001 */   addiu     $v0, $zero, 1
.L8002BB74:
/* 2C774 8002BB74 86250088 */  lh         $a1, 0x88($s1)
/* 2C778 8002BB78 8626008C */  lh         $a2, 0x8c($s1)
/* 2C77C 8002BB7C 0C007F28 */  jal        func_8001FCA0
/* 2C780 8002BB80 24A50004 */   addiu     $a1, $a1, 4
/* 2C784 8002BB84 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C788 8002BB88 0C00AEB3 */  jal        func_8002BACC
/* 2C78C 8002BB8C 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C790 8002BB90 10400003 */  beqz       $v0, .L8002BBA0
/* 2C794 8002BB94 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C798 8002BB98 10000018 */  b          .L8002BBFC
/* 2C79C 8002BB9C 24020001 */   addiu     $v0, $zero, 1
.L8002BBA0:
/* 2C7A0 8002BBA0 8626008C */  lh         $a2, 0x8c($s1)
/* 2C7A4 8002BBA4 86250088 */  lh         $a1, 0x88($s1)
/* 2C7A8 8002BBA8 0C007F28 */  jal        func_8001FCA0
/* 2C7AC 8002BBAC 24C6FFFC */   addiu     $a2, $a2, -4
/* 2C7B0 8002BBB0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C7B4 8002BBB4 0C00AEB3 */  jal        func_8002BACC
/* 2C7B8 8002BBB8 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C7BC 8002BBBC 10400003 */  beqz       $v0, .L8002BBCC
/* 2C7C0 8002BBC0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 2C7C4 8002BBC4 1000000D */  b          .L8002BBFC
/* 2C7C8 8002BBC8 24020001 */   addiu     $v0, $zero, 1
.L8002BBCC:
/* 2C7CC 8002BBCC 8626008C */  lh         $a2, 0x8c($s1)
/* 2C7D0 8002BBD0 86250088 */  lh         $a1, 0x88($s1)
/* 2C7D4 8002BBD4 0C007F28 */  jal        func_8001FCA0
/* 2C7D8 8002BBD8 24C60004 */   addiu     $a2, $a2, 4
/* 2C7DC 8002BBDC 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2C7E0 8002BBE0 0C00AEB3 */  jal        func_8002BACC
/* 2C7E4 8002BBE4 3045FFFF */   andi      $a1, $v0, 0xffff
/* 2C7E8 8002BBE8 10400004 */  beqz       $v0, .L8002BBFC
/* 2C7EC 8002BBEC 00001025 */   or        $v0, $zero, $zero
/* 2C7F0 8002BBF0 10000002 */  b          .L8002BBFC
/* 2C7F4 8002BBF4 24020001 */   addiu     $v0, $zero, 1
/* 2C7F8 8002BBF8 00001025 */  or         $v0, $zero, $zero
.L8002BBFC:
/* 2C7FC 8002BBFC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C800 8002BC00 8FB00014 */  lw         $s0, 0x14($sp)
/* 2C804 8002BC04 8FB10018 */  lw         $s1, 0x18($sp)
/* 2C808 8002BC08 03E00008 */  jr         $ra
/* 2C80C 8002BC0C 27BD0020 */   addiu     $sp, $sp, 0x20
