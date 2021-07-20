glabel func_800047B0
/* 53B0 800047B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53B4 800047B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 53B8 800047B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53BC 800047BC 3C04800C */  lui        $a0, %hi(D_800C4E5C)
/* 53C0 800047C0 24844E5C */  addiu      $a0, $a0, %lo(D_800C4E5C)
/* 53C4 800047C4 0C02905C */  jal        func_800A4170
/* 53C8 800047C8 3405FFFF */   ori       $a1, $zero, 0xffff
/* 53CC 800047CC 8FAE0018 */  lw         $t6, 0x18($sp)
/* 53D0 800047D0 3C04800C */  lui        $a0, %hi(D_800C4E5C)
/* 53D4 800047D4 11C00005 */  beqz       $t6, .L800047EC
/* 53D8 800047D8 24844E5C */   addiu     $a0, $a0, %lo(D_800C4E5C)
/* 53DC 800047DC 0C029064 */  jal        func_800A4190
/* 53E0 800047E0 24050001 */   addiu     $a1, $zero, 1
/* 53E4 800047E4 10000004 */  b          .L800047F8
/* 53E8 800047E8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800047EC:
/* 53EC 800047EC 0C02905C */  jal        func_800A4170
/* 53F0 800047F0 24050001 */   addiu     $a1, $zero, 1
/* 53F4 800047F4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800047F8:
/* 53F8 800047F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 53FC 800047FC 03E00008 */  jr         $ra
/* 5400 80004800 00000000 */   nop
