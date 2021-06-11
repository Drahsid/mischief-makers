glabel func_80091C90
/* 92890 80091C90 308EFFFF */  andi       $t6, $a0, 0xffff
/* 92894 80091C94 000E7880 */  sll        $t7, $t6, 2
/* 92898 80091C98 01EE7823 */  subu       $t7, $t7, $t6
/* 9289C 80091C9C 000F7880 */  sll        $t7, $t7, 2
/* 928A0 80091CA0 01EE7821 */  addu       $t7, $t7, $t6
/* 928A4 80091CA4 000F7880 */  sll        $t7, $t7, 2
/* 928A8 80091CA8 01EE7823 */  subu       $t7, $t7, $t6
/* 928AC 80091CAC 3C18800F */  lui        $t8, %hi(gActors)
/* 928B0 80091CB0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 928B4 80091CB4 000F78C0 */  sll        $t7, $t7, 3
/* 928B8 80091CB8 01F81821 */  addu       $v1, $t7, $t8
/* 928BC 80091CBC 946600D0 */  lhu        $a2, 0xd0($v1)
/* 928C0 80091CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 928C4 80091CC4 AFA40018 */  sw         $a0, 0x18($sp)
/* 928C8 80091CC8 240101B0 */  addiu      $at, $zero, 0x1b0
/* 928CC 80091CCC 01C02025 */  or         $a0, $t6, $zero
/* 928D0 80091CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 928D4 80091CD4 10C10006 */  beq        $a2, $at, .L80091CF0
/* 928D8 80091CD8 00C01025 */   or        $v0, $a2, $zero
/* 928DC 80091CDC 240101B1 */  addiu      $at, $zero, 0x1b1
/* 928E0 80091CE0 1041000B */  beq        $v0, $at, .L80091D10
/* 928E4 80091CE4 00000000 */   nop
/* 928E8 80091CE8 1000000C */  b          .L80091D1C
/* 928EC 80091CEC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80091CF0:
/* 928F0 80091CF0 24D90001 */  addiu      $t9, $a2, 1
/* 928F4 80091CF4 3C05800F */  lui        $a1, %hi(D_800E8C08)
/* 928F8 80091CF8 A47900D0 */  sh         $t9, 0xd0($v1)
/* 928FC 80091CFC 24A58C08 */  addiu      $a1, $a1, %lo(D_800E8C08)
/* 92900 80091D00 0C0205E4 */  jal        func_80081790
/* 92904 80091D04 A7A4001A */   sh        $a0, 0x1a($sp)
/* 92908 80091D08 97A4001A */  lhu        $a0, 0x1a($sp)
/* 9290C 80091D0C 00000000 */  nop
.L80091D10:
/* 92910 80091D10 0C0246F7 */  jal        func_80091BDC
/* 92914 80091D14 00000000 */   nop
/* 92918 80091D18 8FBF0014 */  lw         $ra, 0x14($sp)
.L80091D1C:
/* 9291C 80091D1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 92920 80091D20 03E00008 */  jr         $ra
/* 92924 80091D24 00000000 */   nop
