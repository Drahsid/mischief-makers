glabel func_80088B08
/* 89708 80088B08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8970C 80088B0C AFB00018 */  sw         $s0, 0x18($sp)
/* 89710 80088B10 3090FFFF */  andi       $s0, $a0, 0xffff
/* 89714 80088B14 00107080 */  sll        $t6, $s0, 2
/* 89718 80088B18 01D07023 */  subu       $t6, $t6, $s0
/* 8971C 80088B1C 000E7080 */  sll        $t6, $t6, 2
/* 89720 80088B20 01D07021 */  addu       $t6, $t6, $s0
/* 89724 80088B24 000E7080 */  sll        $t6, $t6, 2
/* 89728 80088B28 01D07023 */  subu       $t6, $t6, $s0
/* 8972C 80088B2C 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 89730 80088B30 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 89734 80088B34 000E70C0 */  sll        $t6, $t6, 3
/* 89738 80088B38 01CF1821 */  addu       $v1, $t6, $t7
/* 8973C 80088B3C 8C78015C */  lw         $t8, 0x15c($v1)
/* 89740 80088B40 8C790164 */  lw         $t9, 0x164($v1)
/* 89744 80088B44 3C0103FF */  lui        $at, 0x3ff
/* 89748 80088B48 03194021 */  addu       $t0, $t8, $t9
/* 8974C 80088B4C 8C6B0168 */  lw         $t3, 0x168($v1)
/* 89750 80088B50 3421FFFF */  ori        $at, $at, 0xffff
/* 89754 80088B54 AC68015C */  sw         $t0, 0x15c($v1)
/* 89758 80088B58 01015024 */  and        $t2, $t0, $at
/* 8975C 80088B5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 89760 80088B60 AFA40028 */  sw         $a0, 0x28($sp)
/* 89764 80088B64 11600007 */  beqz       $t3, .L80088B84
/* 89768 80088B68 AC6A015C */   sw        $t2, 0x15c($v1)
/* 8976C 80088B6C 3204FFFF */  andi       $a0, $s0, 0xffff
/* 89770 80088B70 0C022251 */  jal        func_80088944
/* 89774 80088B74 AFA30020 */   sw        $v1, 0x20($sp)
/* 89778 80088B78 8FA30020 */  lw         $v1, 0x20($sp)
/* 8977C 80088B7C 10000007 */  b          .L80088B9C
/* 89780 80088B80 3204FFFF */   andi      $a0, $s0, 0xffff
.L80088B84:
/* 89784 80088B84 3204FFFF */  andi       $a0, $s0, 0xffff
/* 89788 80088B88 0C02220D */  jal        func_80088834
/* 8978C 80088B8C AFA30020 */   sw        $v1, 0x20($sp)
/* 89790 80088B90 8FA30020 */  lw         $v1, 0x20($sp)
/* 89794 80088B94 00000000 */  nop
/* 89798 80088B98 3204FFFF */  andi       $a0, $s0, 0xffff
.L80088B9C:
/* 8979C 80088B9C 0C0221FC */  jal        func_800887F0
/* 897A0 80088BA0 AFA30020 */   sw        $v1, 0x20($sp)
/* 897A4 80088BA4 8FA30020 */  lw         $v1, 0x20($sp)
/* 897A8 80088BA8 3C010171 */  lui        $at, 0x171
/* 897AC 80088BAC 8C62015C */  lw         $v0, 0x15c($v1)
/* 897B0 80088BB0 34210001 */  ori        $at, $at, 1
/* 897B4 80088BB4 0041082A */  slt        $at, $v0, $at
/* 897B8 80088BB8 1420000A */  bnez       $at, .L80088BE4
/* 897BC 80088BBC 3C01028E */   lui       $at, 0x28e
/* 897C0 80088BC0 0041082A */  slt        $at, $v0, $at
/* 897C4 80088BC4 10200007 */  beqz       $at, .L80088BE4
/* 897C8 80088BC8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 897CC 80088BCC 0C0221EC */  jal        func_800887B0
/* 897D0 80088BD0 AFA30020 */   sw        $v1, 0x20($sp)
/* 897D4 80088BD4 8FA30020 */  lw         $v1, 0x20($sp)
/* 897D8 80088BD8 00000000 */  nop
/* 897DC 80088BDC 8C62015C */  lw         $v0, 0x15c($v1)
/* 897E0 80088BE0 00000000 */  nop
.L80088BE4:
/* 897E4 80088BE4 3C01008E */  lui        $at, 0x8e
/* 897E8 80088BE8 0041082A */  slt        $at, $v0, $at
/* 897EC 80088BEC 14200006 */  bnez       $at, .L80088C08
/* 897F0 80088BF0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 897F4 80088BF4 3C010371 */  lui        $at, 0x371
/* 897F8 80088BF8 34210001 */  ori        $at, $at, 1
/* 897FC 80088BFC 0041082A */  slt        $at, $v0, $at
/* 89800 80088C00 14200005 */  bnez       $at, .L80088C18
/* 89804 80088C04 00000000 */   nop
.L80088C08:
/* 89808 80088C08 0C0221EC */  jal        func_800887B0
/* 8980C 80088C0C AFA30020 */   sw        $v1, 0x20($sp)
/* 89810 80088C10 8FA30020 */  lw         $v1, 0x20($sp)
/* 89814 80088C14 00000000 */  nop
.L80088C18:
/* 89818 80088C18 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8981C 80088C1C 0C022295 */  jal        func_80088A54
/* 89820 80088C20 AFA30020 */   sw        $v1, 0x20($sp)
/* 89824 80088C24 8FA30020 */  lw         $v1, 0x20($sp)
/* 89828 80088C28 3C0103FF */  lui        $at, 0x3ff
/* 8982C 80088C2C 8C62015C */  lw         $v0, 0x15c($v1)
/* 89830 80088C30 240E0040 */  addiu      $t6, $zero, 0x40
/* 89834 80088C34 00416024 */  and        $t4, $v0, $at
/* 89838 80088C38 000C6D03 */  sra        $t5, $t4, 0x14
/* 8983C 80088C3C 29A10030 */  slti       $at, $t5, 0x30
/* 89840 80088C40 14200004 */  bnez       $at, .L80088C54
/* 89844 80088C44 01A01025 */   or        $v0, $t5, $zero
/* 89848 80088C48 01CD7823 */  subu       $t7, $t6, $t5
/* 8984C 80088C4C 1000000E */  b          .L80088C88
/* 89850 80088C50 A46F0090 */   sh        $t7, 0x90($v1)
.L80088C54:
/* 89854 80088C54 28410020 */  slti       $at, $v0, 0x20
/* 89858 80088C58 14200003 */  bnez       $at, .L80088C68
/* 8985C 80088C5C 2458FFE0 */   addiu     $t8, $v0, -0x20
/* 89860 80088C60 10000009 */  b          .L80088C88
/* 89864 80088C64 A4780090 */   sh        $t8, 0x90($v1)
.L80088C68:
/* 89868 80088C68 28410010 */  slti       $at, $v0, 0x10
/* 8986C 80088C6C 14200004 */  bnez       $at, .L80088C80
/* 89870 80088C70 2408FFF8 */   addiu     $t0, $zero, -8
/* 89874 80088C74 2459FFD8 */  addiu      $t9, $v0, -0x28
/* 89878 80088C78 10000003 */  b          .L80088C88
/* 8987C 80088C7C A4790090 */   sh        $t9, 0x90($v1)
.L80088C80:
/* 89880 80088C80 01024823 */  subu       $t1, $t0, $v0
/* 89884 80088C84 A4690090 */  sh         $t1, 0x90($v1)
.L80088C88:
/* 89888 80088C88 8C62016C */  lw         $v0, 0x16c($v1)
/* 8988C 80088C8C 00000000 */  nop
/* 89890 80088C90 10400004 */  beqz       $v0, .L80088CA4
/* 89894 80088C94 8FBF001C */   lw        $ra, 0x1c($sp)
/* 89898 80088C98 0040F809 */  jalr       $v0
/* 8989C 80088C9C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 898A0 80088CA0 8FBF001C */  lw         $ra, 0x1c($sp)
.L80088CA4:
/* 898A4 80088CA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 898A8 80088CA8 03E00008 */  jr         $ra
/* 898AC 80088CAC 27BD0028 */   addiu     $sp, $sp, 0x28
