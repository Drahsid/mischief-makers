glabel func_8009BA74
/* 9C674 8009BA74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C678 8009BA78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C67C 8009BA7C AFA40018 */  sw         $a0, 0x18($sp)
/* 9C680 8009BA80 3C0E800F */  lui        $t6, %hi(D_800EA520)
/* 9C684 8009BA84 8DCEA520 */  lw         $t6, %lo(D_800EA520)($t6)
/* 9C688 8009BA88 11C00005 */  beqz       $t6, .L8009BAA0
/* 9C68C 8009BA8C 00000000 */   nop
/* 9C690 8009BA90 0C02AC8C */  jal        func_800AB230
/* 9C694 8009BA94 8FA40018 */   lw        $a0, 0x18($sp)
/* 9C698 8009BA98 3C01800F */  lui        $at, %hi(D_800EA520)
/* 9C69C 8009BA9C AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
.L8009BAA0:
/* 9C6A0 8009BAA0 10000001 */  b          .L8009BAA8
/* 9C6A4 8009BAA4 00000000 */   nop
.L8009BAA8:
/* 9C6A8 8009BAA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C6AC 8009BAAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9C6B0 8009BAB0 03E00008 */  jr         $ra
/* 9C6B4 8009BAB4 00000000 */   nop
