glabel func_800A47C0
/* A53C0 800A47C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A53C4 800A47C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* A53C8 800A47C8 AFA40040 */  sw         $a0, 0x40($sp)
/* A53CC 800A47CC AFA50044 */  sw         $a1, 0x44($sp)
/* A53D0 800A47D0 AFA60048 */  sw         $a2, 0x48($sp)
/* A53D4 800A47D4 AFA7004C */  sw         $a3, 0x4c($sp)
/* A53D8 800A47D8 AFA0003C */  sw         $zero, 0x3c($sp)
/* A53DC 800A47DC 93AE0047 */  lbu        $t6, 0x47($sp)
/* A53E0 800A47E0 29C10041 */  slti       $at, $t6, 0x41
/* A53E4 800A47E4 14200003 */  bnez       $at, .L800A47F4
/* A53E8 800A47E8 00000000 */   nop
/* A53EC 800A47EC 10000043 */  b          .L800A48FC
/* A53F0 800A47F0 2402FFFF */   addiu     $v0, $zero, -1
.L800A47F4:
/* A53F4 800A47F4 8FAF004C */  lw         $t7, 0x4c($sp)
/* A53F8 800A47F8 19E0003C */  blez       $t7, .L800A48EC
/* A53FC 800A47FC 00000000 */   nop
.L800A4800:
/* A5400 800A4800 8FA40040 */  lw         $a0, 0x40($sp)
/* A5404 800A4804 93A50047 */  lbu        $a1, 0x47($sp)
/* A5408 800A4808 0C02C888 */  jal        func_800B2220
/* A540C 800A480C 8FA60048 */   lw        $a2, 0x48($sp)
/* A5410 800A4810 AFA2003C */  sw         $v0, 0x3c($sp)
/* A5414 800A4814 8FB8003C */  lw         $t8, 0x3c($sp)
/* A5418 800A4818 13000003 */  beqz       $t8, .L800A4828
/* A541C 800A481C 00000000 */   nop
/* A5420 800A4820 10000036 */  b          .L800A48FC
/* A5424 800A4824 8FA2003C */   lw        $v0, 0x3c($sp)
.L800A4828:
/* A5428 800A4828 8FB9004C */  lw         $t9, 0x4c($sp)
/* A542C 800A482C 2728FFF8 */  addiu      $t0, $t9, -8
/* A5430 800A4830 AFA8004C */  sw         $t0, 0x4c($sp)
/* A5434 800A4834 93A90047 */  lbu        $t1, 0x47($sp)
/* A5438 800A4838 252A0001 */  addiu      $t2, $t1, 1
/* A543C 800A483C A3AA0047 */  sb         $t2, 0x47($sp)
/* A5440 800A4840 8FAB0048 */  lw         $t3, 0x48($sp)
/* A5444 800A4844 256C0008 */  addiu      $t4, $t3, 8
/* A5448 800A4848 AFAC0048 */  sw         $t4, 0x48($sp)
/* A544C 800A484C 3C06800F */  lui        $a2, %hi(D_800E9770)
/* A5450 800A4850 3C07800F */  lui        $a3, %hi(D_800E9774)
/* A5454 800A4854 8CE79774 */  lw         $a3, %lo(D_800E9774)($a3)
/* A5458 800A4858 8CC69770 */  lw         $a2, %lo(D_800E9770)($a2)
/* A545C 800A485C 24040000 */  addiu      $a0, $zero, 0
/* A5460 800A4860 0C029112 */  jal        func_800A4448
/* A5464 800A4864 24052EE0 */   addiu     $a1, $zero, 0x2ee0
/* A5468 800A4868 AFA20028 */  sw         $v0, 0x28($sp)
/* A546C 800A486C AFA3002C */  sw         $v1, 0x2c($sp)
/* A5470 800A4870 3C07000F */  lui        $a3, 0xf
/* A5474 800A4874 34E74240 */  ori        $a3, $a3, 0x4240
/* A5478 800A4878 8FA5002C */  lw         $a1, 0x2c($sp)
/* A547C 800A487C 8FA40028 */  lw         $a0, 0x28($sp)
/* A5480 800A4880 0C0290C2 */  jal        func_800A4308
/* A5484 800A4884 24060000 */   addiu     $a2, $zero, 0
/* A5488 800A4888 3C0D8018 */  lui        $t5, %hi(D_80185698)
/* A548C 800A488C 3C188018 */  lui        $t8, %hi(D_801856B0)
/* A5490 800A4890 271856B0 */  addiu      $t8, $t8, %lo(D_801856B0)
/* A5494 800A4894 25AD5698 */  addiu      $t5, $t5, %lo(D_80185698)
/* A5498 800A4898 AFA20030 */  sw         $v0, 0x30($sp)
/* A549C 800A489C AFA30034 */  sw         $v1, 0x34($sp)
/* A54A0 800A48A0 3C048018 */  lui        $a0, %hi(D_80185678)
/* A54A4 800A48A4 240E0000 */  addiu      $t6, $zero, 0
/* A54A8 800A48A8 240F0000 */  addiu      $t7, $zero, 0
/* A54AC 800A48AC AFAF0014 */  sw         $t7, 0x14($sp)
/* A54B0 800A48B0 AFAE0010 */  sw         $t6, 0x10($sp)
/* A54B4 800A48B4 24845678 */  addiu      $a0, $a0, %lo(D_80185678)
/* A54B8 800A48B8 8FA70034 */  lw         $a3, 0x34($sp)
/* A54BC 800A48BC 8FA60030 */  lw         $a2, 0x30($sp)
/* A54C0 800A48C0 AFAD0018 */  sw         $t5, 0x18($sp)
/* A54C4 800A48C4 0C02ABD0 */  jal        func_800AAF40
/* A54C8 800A48C8 AFB8001C */   sw        $t8, 0x1c($sp)
/* A54CC 800A48CC 3C048018 */  lui        $a0, %hi(D_80185698)
/* A54D0 800A48D0 24845698 */  addiu      $a0, $a0, %lo(D_80185698)
/* A54D4 800A48D4 00002825 */  or         $a1, $zero, $zero
/* A54D8 800A48D8 0C026B44 */  jal        func_8009AD10
/* A54DC 800A48DC 24060001 */   addiu     $a2, $zero, 1
/* A54E0 800A48E0 8FB9004C */  lw         $t9, 0x4c($sp)
/* A54E4 800A48E4 1F20FFC6 */  bgtz       $t9, .L800A4800
/* A54E8 800A48E8 00000000 */   nop
.L800A48EC:
/* A54EC 800A48EC 10000003 */  b          .L800A48FC
/* A54F0 800A48F0 8FA2003C */   lw        $v0, 0x3c($sp)
/* A54F4 800A48F4 10000001 */  b          .L800A48FC
/* A54F8 800A48F8 00000000 */   nop
.L800A48FC:
/* A54FC 800A48FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* A5500 800A4900 27BD0040 */  addiu      $sp, $sp, 0x40
/* A5504 800A4904 03E00008 */  jr         $ra
/* A5508 800A4908 00000000 */   nop
/* A550C 800A490C 00000000 */  nop
