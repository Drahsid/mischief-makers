glabel func_80079B28
/* 7A728 80079B28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7A72C 80079B2C AFA40028 */  sw         $a0, 0x28($sp)
/* 7A730 80079B30 97AE002A */  lhu        $t6, 0x2a($sp)
/* 7A734 80079B34 AFB10018 */  sw         $s1, 0x18($sp)
/* 7A738 80079B38 000E7880 */  sll        $t7, $t6, 2
/* 7A73C 80079B3C 01EE7823 */  subu       $t7, $t7, $t6
/* 7A740 80079B40 000F7880 */  sll        $t7, $t7, 2
/* 7A744 80079B44 01EE7821 */  addu       $t7, $t7, $t6
/* 7A748 80079B48 000F7880 */  sll        $t7, $t7, 2
/* 7A74C 80079B4C 3C11800F */  lui        $s1, %hi(gActors)
/* 7A750 80079B50 01EE7823 */  subu       $t7, $t7, $t6
/* 7A754 80079B54 2631F510 */  addiu      $s1, $s1, %lo(gActors)
/* 7A758 80079B58 AFB30020 */  sw         $s3, 0x20($sp)
/* 7A75C 80079B5C 000F78C0 */  sll        $t7, $t7, 3
/* 7A760 80079B60 022F9821 */  addu       $s3, $s1, $t7
/* 7A764 80079B64 8E790080 */  lw         $t9, 0x80($s3)
/* 7A768 80079B68 3C010002 */  lui        $at, 2
/* 7A76C 80079B6C 34218503 */  ori        $at, $at, 0x8503
/* 7A770 80079B70 33280020 */  andi       $t0, $t9, 0x20
/* 7A774 80079B74 01014821 */  addu       $t1, $t0, $at
/* 7A778 80079B78 8E6A0150 */  lw         $t2, 0x150($s3)
/* 7A77C 80079B7C 3C010030 */  lui        $at, 0x30
/* 7A780 80079B80 44802000 */  mtc1       $zero, $f4
/* 7A784 80079B84 34210040 */  ori        $at, $at, 0x40
/* 7A788 80079B88 24180060 */  addiu      $t8, $zero, 0x60
/* 7A78C 80079B8C 3C0C0100 */  lui        $t4, 0x100
/* 7A790 80079B90 01415825 */  or         $t3, $t2, $at
/* 7A794 80079B94 A67800D0 */  sh         $t8, 0xd0($s3)
/* 7A798 80079B98 AE690080 */  sw         $t1, 0x80($s3)
/* 7A79C 80079B9C AE6B0150 */  sw         $t3, 0x150($s3)
/* 7A7A0 80079BA0 AE6000EC */  sw         $zero, 0xec($s3)
/* 7A7A4 80079BA4 AE6000F0 */  sw         $zero, 0xf0($s3)
/* 7A7A8 80079BA8 AE6C0160 */  sw         $t4, 0x160($s3)
/* 7A7AC 80079BAC E6640118 */  swc1       $f4, 0x118($s3)
/* 7A7B0 80079BB0 862E008C */  lh         $t6, 0x8c($s1)
/* 7A7B4 80079BB4 866D00AE */  lh         $t5, 0xae($s3)
/* 7A7B8 80079BB8 AFB00014 */  sw         $s0, 0x14($sp)
/* 7A7BC 80079BBC 01AE8021 */  addu       $s0, $t5, $t6
/* 7A7C0 80079BC0 2610FFFF */  addiu      $s0, $s0, -1
/* 7A7C4 80079BC4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 7A7C8 80079BC8 00107C00 */  sll        $t7, $s0, 0x10
/* 7A7CC 80079BCC AFBF0024 */  sw         $ra, 0x24($sp)
/* 7A7D0 80079BD0 24120003 */  addiu      $s2, $zero, 3
/* 7A7D4 80079BD4 000F8403 */  sra        $s0, $t7, 0x10
.L80079BD8:
/* 7A7D8 80079BD8 86240088 */  lh         $a0, 0x88($s1)
/* 7A7DC 80079BDC 02002825 */  or         $a1, $s0, $zero
/* 7A7E0 80079BE0 0C004AAD */  jal        func_80012AB4
/* 7A7E4 80079BE4 2484FFF0 */   addiu     $a0, $a0, -0x10
/* 7A7E8 80079BE8 30590080 */  andi       $t9, $v0, 0x80
/* 7A7EC 80079BEC 17200007 */  bnez       $t9, .L80079C0C
/* 7A7F0 80079BF0 02002825 */   or        $a1, $s0, $zero
/* 7A7F4 80079BF4 86240088 */  lh         $a0, 0x88($s1)
/* 7A7F8 80079BF8 0C004AAD */  jal        func_80012AB4
/* 7A7FC 80079BFC 24840010 */   addiu     $a0, $a0, 0x10
/* 7A800 80079C00 30480080 */  andi       $t0, $v0, 0x80
/* 7A804 80079C04 11000009 */  beqz       $t0, .L80079C2C
/* 7A808 80079C08 00000000 */   nop
.L80079C0C:
/* 7A80C 80079C0C 8669008C */  lh         $t1, 0x8c($s3)
/* 7A810 80079C10 00000000 */  nop
/* 7A814 80079C14 252AFFF8 */  addiu      $t2, $t1, -8
/* 7A818 80079C18 A66A008C */  sh         $t2, 0x8c($s3)
/* 7A81C 80079C1C 862B008C */  lh         $t3, 0x8c($s1)
/* 7A820 80079C20 00000000 */  nop
/* 7A824 80079C24 256CFFF8 */  addiu      $t4, $t3, -8
/* 7A828 80079C28 A62C008C */  sh         $t4, 0x8c($s1)
.L80079C2C:
/* 7A82C 80079C2C 2652FFFF */  addiu      $s2, $s2, -1
/* 7A830 80079C30 00127C00 */  sll        $t7, $s2, 0x10
/* 7A834 80079C34 2610FFF8 */  addiu      $s0, $s0, -8
/* 7A838 80079C38 00106C00 */  sll        $t5, $s0, 0x10
/* 7A83C 80079C3C 000F9403 */  sra        $s2, $t7, 0x10
/* 7A840 80079C40 1E40FFE5 */  bgtz       $s2, .L80079BD8
/* 7A844 80079C44 000D8403 */   sra       $s0, $t5, 0x10
/* 7A848 80079C48 97A2002A */  lhu        $v0, 0x2a($sp)
/* 7A84C 80079C4C 2408001D */  addiu      $t0, $zero, 0x1d
/* 7A850 80079C50 0002C880 */  sll        $t9, $v0, 2
/* 7A854 80079C54 0322C823 */  subu       $t9, $t9, $v0
/* 7A858 80079C58 0019C880 */  sll        $t9, $t9, 2
/* 7A85C 80079C5C 0322C821 */  addu       $t9, $t9, $v0
/* 7A860 80079C60 0019C880 */  sll        $t9, $t9, 2
/* 7A864 80079C64 0322C823 */  subu       $t9, $t9, $v0
/* 7A868 80079C68 0019C8C0 */  sll        $t9, $t9, 3
/* 7A86C 80079C6C 24440001 */  addiu      $a0, $v0, 1
/* 7A870 80079C70 02398021 */  addu       $s0, $s1, $t9
/* 7A874 80079C74 3089FFFF */  andi       $t1, $a0, 0xffff
/* 7A878 80079C78 A608026A */  sh         $t0, 0x26a($s0)
/* 7A87C 80079C7C 0C0078B4 */  jal        func_8001E2D0
/* 7A880 80079C80 01202025 */   or        $a0, $t1, $zero
/* 7A884 80079C84 3C0A0002 */  lui        $t2, 2
/* 7A888 80079C88 354A8402 */  ori        $t2, $t2, 0x8402
/* 7A88C 80079C8C AE0A0218 */  sw         $t2, 0x218($s0)
/* 7A890 80079C90 866B0088 */  lh         $t3, 0x88($s3)
/* 7A894 80079C94 240D0064 */  addiu      $t5, $zero, 0x64
/* 7A898 80079C98 A60B0220 */  sh         $t3, 0x220($s0)
/* 7A89C 80079C9C 866C008C */  lh         $t4, 0x8c($s3)
/* 7A8A0 80079CA0 240E0030 */  addiu      $t6, $zero, 0x30
/* 7A8A4 80079CA4 240F0008 */  addiu      $t7, $zero, 8
/* 7A8A8 80079CA8 2418FFE8 */  addiu      $t8, $zero, -0x18
/* 7A8AC 80079CAC 24190018 */  addiu      $t9, $zero, 0x18
/* 7A8B0 80079CB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7A8B4 80079CB4 A60D0278 */  sh         $t5, 0x278($s0)
/* 7A8B8 80079CB8 A60F0248 */  sh         $t7, 0x248($s0)
/* 7A8BC 80079CBC A60E0246 */  sh         $t6, 0x246($s0)
/* 7A8C0 80079CC0 A6190244 */  sh         $t9, 0x244($s0)
/* 7A8C4 80079CC4 A6180242 */  sh         $t8, 0x242($s0)
/* 7A8C8 80079CC8 AE000230 */  sw         $zero, 0x230($s0)
/* 7A8CC 80079CCC A60C0224 */  sh         $t4, 0x224($s0)
/* 7A8D0 80079CD0 8FB00014 */  lw         $s0, 0x14($sp)
/* 7A8D4 80079CD4 8FB30020 */  lw         $s3, 0x20($sp)
/* 7A8D8 80079CD8 8FB10018 */  lw         $s1, 0x18($sp)
/* 7A8DC 80079CDC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 7A8E0 80079CE0 03E00008 */  jr         $ra
/* 7A8E4 80079CE4 27BD0028 */   addiu     $sp, $sp, 0x28
