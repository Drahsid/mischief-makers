glabel func_800AD7DC
/* AE3DC 800AD7DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE3E0 800AD7E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE3E4 800AD7E4 AFA40028 */  sw         $a0, 0x28($sp)
/* AE3E8 800AD7E8 AFA5002C */  sw         $a1, 0x2c($sp)
/* AE3EC 800AD7EC 0C02B9A8 */  jal        func_800AE6A0
/* AE3F0 800AD7F0 24040001 */   addiu     $a0, $zero, 1
/* AE3F4 800AD7F4 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE3F8 800AD7F8 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE3FC 800AD7FC 8DCF0008 */  lw         $t7, 8($t6)
/* AE400 800AD800 AFAF0024 */  sw         $t7, 0x24($sp)
/* AE404 800AD804 8FB80024 */  lw         $t8, 0x24($sp)
/* AE408 800AD808 1300000F */  beqz       $t8, .L800AD848
/* AE40C 800AD80C 00000000 */   nop
/* AE410 800AD810 0C026EBB */  jal        func_8009BAEC
/* AE414 800AD814 8FA40024 */   lw        $a0, 0x24($sp)
/* AE418 800AD818 8FA40024 */  lw         $a0, 0x24($sp)
/* AE41C 800AD81C 8FA5002C */  lw         $a1, 0x2c($sp)
/* AE420 800AD820 24060010 */  addiu      $a2, $zero, 0x10
/* AE424 800AD824 0C02DF1C */  jal        func_800B7C70
/* AE428 800AD828 2484000C */   addiu     $a0, $a0, 0xc
/* AE42C 800AD82C 8FA40024 */  lw         $a0, 0x24($sp)
/* AE430 800AD830 0C026EAE */  jal        func_8009BAB8
/* AE434 800AD834 8FA50028 */   lw        $a1, 0x28($sp)
/* AE438 800AD838 8FB90024 */  lw         $t9, 0x24($sp)
/* AE43C 800AD83C 8F280008 */  lw         $t0, 8($t9)
/* AE440 800AD840 10000005 */  b          .L800AD858
/* AE444 800AD844 AFA80020 */   sw        $t0, 0x20($sp)
.L800AD848:
/* AE448 800AD848 8FAA002C */  lw         $t2, 0x2c($sp)
/* AE44C 800AD84C 2409FFFF */  addiu      $t1, $zero, -1
/* AE450 800AD850 A5490000 */  sh         $t1, ($t2)
/* AE454 800AD854 AFA00020 */  sw         $zero, 0x20($sp)
.L800AD858:
/* AE458 800AD858 0C02B9A8 */  jal        func_800AE6A0
/* AE45C 800AD85C 8FA4001C */   lw        $a0, 0x1c($sp)
/* AE460 800AD860 10000003 */  b          .L800AD870
/* AE464 800AD864 8FA20020 */   lw        $v0, 0x20($sp)
/* AE468 800AD868 10000001 */  b          .L800AD870
/* AE46C 800AD86C 00000000 */   nop
.L800AD870:
/* AE470 800AD870 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE474 800AD874 27BD0028 */  addiu      $sp, $sp, 0x28
/* AE478 800AD878 03E00008 */  jr         $ra
/* AE47C 800AD87C 00000000 */   nop
