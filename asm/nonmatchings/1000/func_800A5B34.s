glabel func_800A5B34
/* A6734 800A5B34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6738 800A5B38 AFBF0014 */  sw         $ra, 0x14($sp)
/* A673C 800A5B3C AFA40020 */  sw         $a0, 0x20($sp)
/* A6740 800A5B40 AFA50024 */  sw         $a1, 0x24($sp)
/* A6744 800A5B44 AFA60028 */  sw         $a2, 0x28($sp)
/* A6748 800A5B48 AFA7002C */  sw         $a3, 0x2c($sp)
/* A674C 800A5B4C 27AE0020 */  addiu      $t6, $sp, 0x20
/* A6750 800A5B50 25CF0004 */  addiu      $t7, $t6, 4
/* A6754 800A5B54 AFAF0018 */  sw         $t7, 0x18($sp)
/* A6758 800A5B58 3C188018 */  lui        $t8, %hi(D_801826C0)
/* A675C 800A5B5C 8F1826C0 */  lw         $t8, %lo(D_801826C0)($t8)
/* A6760 800A5B60 13000009 */  beqz       $t8, .L800A5B88
/* A6764 800A5B64 00000000 */   nop
/* A6768 800A5B68 3C04800A */  lui        $a0, %hi(func_800A5904)
/* A676C 800A5B6C 24845904 */  addiu      $a0, $a0, %lo(func_800A5904)
/* A6770 800A5B70 00002825 */  or         $a1, $zero, $zero
/* A6774 800A5B74 8FA60020 */  lw         $a2, 0x20($sp)
/* A6778 800A5B78 0C02CCC4 */  jal        func_800B3310
/* A677C 800A5B7C 8FA70018 */   lw        $a3, 0x18($sp)
/* A6780 800A5B80 10000008 */  b          .L800A5BA4
/* A6784 800A5B84 AFA2001C */   sw        $v0, 0x1c($sp)
.L800A5B88:
/* A6788 800A5B88 3C04800A */  lui        $a0, %hi(func_800A57F0)
/* A678C 800A5B8C 248457F0 */  addiu      $a0, $a0, %lo(func_800A57F0)
/* A6790 800A5B90 00002825 */  or         $a1, $zero, $zero
/* A6794 800A5B94 8FA60020 */  lw         $a2, 0x20($sp)
/* A6798 800A5B98 0C02CCC4 */  jal        func_800B3310
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
