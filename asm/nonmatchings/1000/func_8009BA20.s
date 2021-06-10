glabel func_8009BA20
/* 9C620 8009BA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C624 8009BA24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C628 8009BA28 AFA40018 */  sw         $a0, 0x18($sp)
/* 9C62C 8009BA2C AFA5001C */  sw         $a1, 0x1c($sp)
/* 9C630 8009BA30 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9C634 8009BA34 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9C638 8009BA38 15C00008 */  bnez       $t6, .L8009BA5C
/* 9C63C 8009BA3C 00000000 */   nop
/* 9C640 8009BA40 8FAF0018 */  lw         $t7, 0x18($sp)
/* 9C644 8009BA44 3C01800F */  lui        $at, %hi(D_800EA520)
/* 9C648 8009BA48 AC2FA520 */  sw         $t7, %lo(D_800EA520)($at)
/* 9C64C 8009BA4C 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 9C650 8009BA50 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* 9C654 8009BA54 0C027950 */  jal        func_8009E540
/* 9C658 8009BA58 8FA5001C */   lw        $a1, 0x1c($sp)
.L8009BA5C:
/* 9C65C 8009BA5C 10000001 */  b          .L8009BA64
/* 9C660 8009BA60 00000000 */   nop
.L8009BA64:
/* 9C664 8009BA64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C668 8009BA68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9C66C 8009BA6C 03E00008 */  jr         $ra
/* 9C670 8009BA70 00000000 */   nop
