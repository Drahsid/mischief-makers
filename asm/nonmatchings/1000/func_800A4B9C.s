glabel func_800A4B9C
/* A579C 800A4B9C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A57A0 800A4BA0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A57A4 800A4BA4 AFA40068 */  sw         $a0, 0x68($sp)
/* A57A8 800A4BA8 AFA5006C */  sw         $a1, 0x6c($sp)
/* A57AC 800A4BAC AFA60070 */  sw         $a2, 0x70($sp)
/* A57B0 800A4BB0 AFA70074 */  sw         $a3, 0x74($sp)
/* A57B4 800A4BB4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* A57B8 800A4BB8 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* A57BC 800A4BBC C7A80080 */  lwc1       $f8, 0x80($sp)
/* A57C0 800A4BC0 27A40028 */  addiu      $a0, $sp, 0x28
/* A57C4 800A4BC4 8FA5006C */  lw         $a1, 0x6c($sp)
/* A57C8 800A4BC8 8FA60070 */  lw         $a2, 0x70($sp)
/* A57CC 800A4BCC 8FA70074 */  lw         $a3, 0x74($sp)
/* A57D0 800A4BD0 E7A40010 */  swc1       $f4, 0x10($sp)
/* A57D4 800A4BD4 E7A60014 */  swc1       $f6, 0x14($sp)
/* A57D8 800A4BD8 0C029244 */  jal        func_800A4910
/* A57DC 800A4BDC E7A80018 */   swc1      $f8, 0x18($sp)
/* A57E0 800A4BE0 27A40028 */  addiu      $a0, $sp, 0x28
/* A57E4 800A4BE4 0C02CA98 */  jal        func_800B2A60
/* A57E8 800A4BE8 8FA50068 */   lw        $a1, 0x68($sp)
/* A57EC 800A4BEC 10000001 */  b          .L800A4BF4
/* A57F0 800A4BF0 00000000 */   nop
.L800A4BF4:
/* A57F4 800A4BF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* A57F8 800A4BF8 27BD0068 */  addiu      $sp, $sp, 0x68
/* A57FC 800A4BFC 03E00008 */  jr         $ra
/* A5800 800A4C00 00000000 */   nop
/* A5804 800A4C04 00000000 */  nop
/* A5808 800A4C08 00000000 */  nop
/* A580C 800A4C0C 00000000 */  nop
