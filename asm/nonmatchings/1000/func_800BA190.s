glabel func_800BA190
/* BAD90 800BA190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BAD94 800BA194 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAD98 800BA198 AFA40018 */  sw         $a0, 0x18($sp)
/* BAD9C 800BA19C AFA5001C */  sw         $a1, 0x1c($sp)
/* BADA0 800BA1A0 AFA60020 */  sw         $a2, 0x20($sp)
/* BADA4 800BA1A4 8FAF0018 */  lw         $t7, 0x18($sp)
/* BADA8 800BA1A8 3C0E2073 */  lui        $t6, 0x2073
/* BADAC 800BA1AC 35CE6A73 */  ori        $t6, $t6, 0x6a73
/* BADB0 800BA1B0 ADEE0000 */  sw         $t6, ($t7)
/* BADB4 800BA1B4 8FB8001C */  lw         $t8, 0x1c($sp)
/* BADB8 800BA1B8 8FB90018 */  lw         $t9, 0x18($sp)
/* BADBC 800BA1BC AF380008 */  sw         $t8, 8($t9)
/* BADC0 800BA1C0 8FA80020 */  lw         $t0, 0x20($sp)
/* BADC4 800BA1C4 8FA90018 */  lw         $t1, 0x18($sp)
/* BADC8 800BA1C8 AD280004 */  sw         $t0, 4($t1)
/* BADCC 800BA1CC 0C029EF8 */  jal        func_800A7BE0
/* BADD0 800BA1D0 00000000 */   nop
/* BADD4 800BA1D4 8FAA0018 */  lw         $t2, 0x18($sp)
/* BADD8 800BA1D8 AD42000C */  sw         $v0, 0xc($t2)
/* BADDC 800BA1DC 8FAB0018 */  lw         $t3, 0x18($sp)
/* BADE0 800BA1E0 AD600010 */  sw         $zero, 0x10($t3)
/* BADE4 800BA1E4 10000001 */  b          .L800BA1EC
/* BADE8 800BA1E8 00000000 */   nop
.L800BA1EC:
/* BADEC 800BA1EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BADF0 800BA1F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* BADF4 800BA1F4 03E00008 */  jr         $ra
/* BADF8 800BA1F8 00000000 */   nop
