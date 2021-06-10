glabel func_800AEF3C
/* AFB3C 800AEF3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AFB40 800AEF40 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFB44 800AEF44 AFA40028 */  sw         $a0, 0x28($sp)
/* AFB48 800AEF48 AFA5002C */  sw         $a1, 0x2c($sp)
/* AFB4C 800AEF4C AFA60030 */  sw         $a2, 0x30($sp)
/* AFB50 800AEF50 3C05800B */  lui        $a1, %hi(func_800AF510)
/* AFB54 800AEF54 3C06800B */  lui        $a2, %hi(func_800B01F4)
/* AFB58 800AEF58 24C601F4 */  addiu      $a2, $a2, %lo(func_800B01F4)
/* AFB5C 800AEF5C 24A5F510 */  addiu      $a1, $a1, %lo(func_800AF510)
/* AFB60 800AEF60 8FA40028 */  lw         $a0, 0x28($sp)
/* AFB64 800AEF64 0C02DF34 */  jal        func_800B7CD0
/* AFB68 800AEF68 00003825 */   or        $a3, $zero, $zero
/* AFB6C 800AEF6C 3C04800F */  lui        $a0, %hi(D_800EE49C)
/* AFB70 800AEF70 240E0020 */  addiu      $t6, $zero, 0x20
/* AFB74 800AEF74 AFAE0010 */  sw         $t6, 0x10($sp)
/* AFB78 800AEF78 2484E49C */  addiu      $a0, $a0, %lo(D_800EE49C)
/* AFB7C 800AEF7C 240500F0 */  addiu      $a1, $zero, 0xf0
/* AFB80 800AEF80 8FA60030 */  lw         $a2, 0x30($sp)
/* AFB84 800AEF84 0C026ECC */  jal        func_8009BB30
/* AFB88 800AEF88 24070001 */   addiu     $a3, $zero, 1
/* AFB8C 800AEF8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* AFB90 800AEF90 ADE20014 */  sw         $v0, 0x14($t7)
/* AFB94 800AEF94 3C04800F */  lui        $a0, %hi(D_800EE4B0)
/* AFB98 800AEF98 24180020 */  addiu      $t8, $zero, 0x20
/* AFB9C 800AEF9C AFB80010 */  sw         $t8, 0x10($sp)
/* AFBA0 800AEFA0 2484E4B0 */  addiu      $a0, $a0, %lo(D_800EE4B0)
/* AFBA4 800AEFA4 240500F1 */  addiu      $a1, $zero, 0xf1
/* AFBA8 800AEFA8 8FA60030 */  lw         $a2, 0x30($sp)
/* AFBAC 800AEFAC 0C026ECC */  jal        func_8009BB30
/* AFBB0 800AEFB0 24070001 */   addiu     $a3, $zero, 1
/* AFBB4 800AEFB4 8FB90028 */  lw         $t9, 0x28($sp)
/* AFBB8 800AEFB8 AF220018 */  sw         $v0, 0x18($t9)
/* AFBBC 800AEFBC 8FB9002C */  lw         $t9, 0x2c($sp)
/* AFBC0 800AEFC0 8FA40028 */  lw         $a0, 0x28($sp)
/* AFBC4 800AEFC4 0320F809 */  jalr       $t9
/* AFBC8 800AEFC8 24840034 */   addiu     $a0, $a0, 0x34
/* AFBCC 800AEFCC 8FA80028 */  lw         $t0, 0x28($sp)
/* AFBD0 800AEFD0 AD020030 */  sw         $v0, 0x30($t0)
/* AFBD4 800AEFD4 8FA90028 */  lw         $t1, 0x28($sp)
/* AFBD8 800AEFD8 AD20003C */  sw         $zero, 0x3c($t1)
/* AFBDC 800AEFDC 8FAB0028 */  lw         $t3, 0x28($sp)
/* AFBE0 800AEFE0 240A0001 */  addiu      $t2, $zero, 1
/* AFBE4 800AEFE4 AD6A0040 */  sw         $t2, 0x40($t3)
/* AFBE8 800AEFE8 8FAC0028 */  lw         $t4, 0x28($sp)
/* AFBEC 800AEFEC AD800044 */  sw         $zero, 0x44($t4)
/* AFBF0 800AEFF0 10000001 */  b          .L800AEFF8
/* AFBF4 800AEFF4 00000000 */   nop
.L800AEFF8:
/* AFBF8 800AEFF8 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFBFC 800AEFFC 27BD0028 */  addiu      $sp, $sp, 0x28
/* AFC00 800AF000 03E00008 */  jr         $ra
/* AFC04 800AF004 00000000 */   nop
