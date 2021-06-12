glabel func_8001E814
/* 1F414 8001E814 308EFFFF */  andi       $t6, $a0, 0xffff
/* 1F418 8001E818 24080198 */  addiu      $t0, $zero, 0x198
/* 1F41C 8001E81C 01C80019 */  multu      $t6, $t0
/* 1F420 8001E820 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 1F424 8001E824 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 1F428 8001E828 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F42C 8001E82C AFA40020 */  sw         $a0, 0x20($sp)
/* 1F430 8001E830 AFA50024 */  sw         $a1, 0x24($sp)
/* 1F434 8001E834 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 1F438 8001E838 01E02825 */  or         $a1, $t7, $zero
/* 1F43C 8001E83C 01C02025 */  or         $a0, $t6, $zero
/* 1F440 8001E840 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F444 8001E844 0000C012 */  mflo       $t8
/* 1F448 8001E848 00F81021 */  addu       $v0, $a3, $t8
/* 1F44C 8001E84C 8C4600EC */  lw         $a2, 0xec($v0)
/* 1F450 8001E850 00000000 */  nop
/* 1F454 8001E854 14C00005 */  bnez       $a2, .L8001E86C
/* 1F458 8001E858 00000000 */   nop
/* 1F45C 8001E85C 8C5900F0 */  lw         $t9, 0xf0($v0)
/* 1F460 8001E860 00000000 */  nop
/* 1F464 8001E864 13200008 */  beqz       $t9, .L8001E888
/* 1F468 8001E868 00000000 */   nop
.L8001E86C:
/* 1F46C 8001E86C 00A80019 */  multu      $a1, $t0
/* 1F470 8001E870 00004812 */  mflo       $t1
/* 1F474 8001E874 00E91821 */  addu       $v1, $a3, $t1
/* 1F478 8001E878 AC6600F8 */  sw         $a2, 0xf8($v1)
/* 1F47C 8001E87C 8C4A00F0 */  lw         $t2, 0xf0($v0)
/* 1F480 8001E880 10000014 */  b          .L8001E8D4
/* 1F484 8001E884 AC6A00FC */   sw        $t2, 0xfc($v1)
.L8001E888:
/* 1F488 8001E888 24062000 */  addiu      $a2, $zero, 0x2000
/* 1F48C 8001E88C A7A40022 */  sh         $a0, 0x22($sp)
/* 1F490 8001E890 0C007978 */  jal        func_8001E5E0
/* 1F494 8001E894 A7A50026 */   sh        $a1, 0x26($sp)
/* 1F498 8001E898 97A50026 */  lhu        $a1, 0x26($sp)
/* 1F49C 8001E89C 24080198 */  addiu      $t0, $zero, 0x198
/* 1F4A0 8001E8A0 00A80019 */  multu      $a1, $t0
/* 1F4A4 8001E8A4 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 1F4A8 8001E8A8 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 1F4AC 8001E8AC 97A40022 */  lhu        $a0, 0x22($sp)
/* 1F4B0 8001E8B0 24062000 */  addiu      $a2, $zero, 0x2000
/* 1F4B4 8001E8B4 00005812 */  mflo       $t3
/* 1F4B8 8001E8B8 00EB1821 */  addu       $v1, $a3, $t3
/* 1F4BC 8001E8BC AC6200F8 */  sw         $v0, 0xf8($v1)
/* 1F4C0 8001E8C0 0C0079BD */  jal        func_8001E6F4
/* 1F4C4 8001E8C4 AFA3001C */   sw        $v1, 0x1c($sp)
/* 1F4C8 8001E8C8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 1F4CC 8001E8CC 00000000 */  nop
/* 1F4D0 8001E8D0 AC6200FC */  sw         $v0, 0xfc($v1)
.L8001E8D4:
/* 1F4D4 8001E8D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F4D8 8001E8D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F4DC 8001E8DC 03E00008 */  jr         $ra
/* 1F4E0 8001E8E0 00000000 */   nop
