glabel func_80031CAC
/* 328AC 80031CAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 328B0 80031CB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 328B4 80031CB4 AFA40020 */  sw         $a0, 0x20($sp)
/* 328B8 80031CB8 AFA50024 */  sw         $a1, 0x24($sp)
/* 328BC 80031CBC AFA60028 */  sw         $a2, 0x28($sp)
/* 328C0 80031CC0 0C00A14A */  jal        func_80028528
/* 328C4 80031CC4 AFA7002C */   sw        $a3, 0x2c($sp)
/* 328C8 80031CC8 1040001F */  beqz       $v0, .L80031D48
/* 328CC 80031CCC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 328D0 80031CD0 00047080 */  sll        $t6, $a0, 2
/* 328D4 80031CD4 01C47023 */  subu       $t6, $t6, $a0
/* 328D8 80031CD8 000E7080 */  sll        $t6, $t6, 2
/* 328DC 80031CDC 01C47021 */  addu       $t6, $t6, $a0
/* 328E0 80031CE0 000E7080 */  sll        $t6, $t6, 2
/* 328E4 80031CE4 01C47023 */  subu       $t6, $t6, $a0
/* 328E8 80031CE8 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 328EC 80031CEC 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 328F0 80031CF0 000E70C0 */  sll        $t6, $t6, 3
/* 328F4 80031CF4 01CF1021 */  addu       $v0, $t6, $t7
/* 328F8 80031CF8 24180034 */  addiu      $t8, $zero, 0x34
/* 328FC 80031CFC A45800D2 */  sh         $t8, 0xd2($v0)
/* 32900 80031D00 AFA20018 */  sw         $v0, 0x18($sp)
/* 32904 80031D04 0C0078B4 */  jal        func_8001E2D0
/* 32908 80031D08 A7A4001E */   sh        $a0, 0x1e($sp)
/* 3290C 80031D0C 8FA20018 */  lw         $v0, 0x18($sp)
/* 32910 80031D10 3C013F80 */  lui        $at, 0x3f80
/* 32914 80031D14 97A80022 */  lhu        $t0, 0x22($sp)
/* 32918 80031D18 8FA90024 */  lw         $t1, 0x24($sp)
/* 3291C 80031D1C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 32920 80031D20 8FAB002C */  lw         $t3, 0x2c($sp)
/* 32924 80031D24 44812000 */  mtc1       $at, $f4
/* 32928 80031D28 24190003 */  addiu      $t9, $zero, 3
/* 3292C 80031D2C 97A4001E */  lhu        $a0, 0x1e($sp)
/* 32930 80031D30 AC590080 */  sw         $t9, 0x80($v0)
/* 32934 80031D34 A4480084 */  sh         $t0, 0x84($v0)
/* 32938 80031D38 AC490088 */  sw         $t1, 0x88($v0)
/* 3293C 80031D3C AC4A008C */  sw         $t2, 0x8c($v0)
/* 32940 80031D40 AC4B0090 */  sw         $t3, 0x90($v0)
/* 32944 80031D44 E4440148 */  swc1       $f4, 0x148($v0)
.L80031D48:
/* 32948 80031D48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3294C 80031D4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 32950 80031D50 03E00008 */  jr         $ra
/* 32954 80031D54 00801025 */   or        $v0, $a0, $zero
