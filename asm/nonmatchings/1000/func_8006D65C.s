glabel func_8006D65C
/* 6E25C 8006D65C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6E260 8006D660 AFA40020 */  sw         $a0, 0x20($sp)
/* 6E264 8006D664 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E268 8006D668 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E26C 8006D66C 0C01B22E */  jal        func_8006C8B8
/* 6E270 8006D670 00000000 */   nop
/* 6E274 8006D674 1440002F */  bnez       $v0, .L8006D734
/* 6E278 8006D678 3C0F800F */   lui       $t7, %hi(gActors)
/* 6E27C 8006D67C 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E280 8006D680 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 6E284 8006D684 00047080 */  sll        $t6, $a0, 2
/* 6E288 8006D688 01C47023 */  subu       $t6, $t6, $a0
/* 6E28C 8006D68C 000E7080 */  sll        $t6, $t6, 2
/* 6E290 8006D690 01C47021 */  addu       $t6, $t6, $a0
/* 6E294 8006D694 000E7080 */  sll        $t6, $t6, 2
/* 6E298 8006D698 01C47023 */  subu       $t6, $t6, $a0
/* 6E29C 8006D69C 000E70C0 */  sll        $t6, $t6, 3
/* 6E2A0 8006D6A0 01CF1021 */  addu       $v0, $t6, $t7
/* 6E2A4 8006D6A4 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E2A8 8006D6A8 24010060 */  addiu      $at, $zero, 0x60
/* 6E2AC 8006D6AC 14610016 */  bne        $v1, $at, .L8006D708
/* 6E2B0 8006D6B0 24780001 */   addiu     $t8, $v1, 1
/* 6E2B4 8006D6B4 8C590080 */  lw         $t9, 0x80($v0)
/* 6E2B8 8006D6B8 3C010001 */  lui        $at, 1
/* 6E2BC 8006D6BC 03214025 */  or         $t0, $t9, $at
/* 6E2C0 8006D6C0 3C01FFFD */  lui        $at, 0xfffd
/* 6E2C4 8006D6C4 3421FFFF */  ori        $at, $at, 0xffff
/* 6E2C8 8006D6C8 8C4B0098 */  lw         $t3, 0x98($v0)
/* 6E2CC 8006D6CC 01015024 */  and        $t2, $t0, $at
/* 6E2D0 8006D6D0 44802000 */  mtc1       $zero, $f4
/* 6E2D4 8006D6D4 2401FFBF */  addiu      $at, $zero, -0x41
/* 6E2D8 8006D6D8 AC480080 */  sw         $t0, 0x80($v0)
/* 6E2DC 8006D6DC 01616024 */  and        $t4, $t3, $at
/* 6E2E0 8006D6E0 A45800D0 */  sh         $t8, 0xd0($v0)
/* 6E2E4 8006D6E4 AC4C0098 */  sw         $t4, 0x98($v0)
/* 6E2E8 8006D6E8 AC4A0080 */  sw         $t2, 0x80($v0)
/* 6E2EC 8006D6EC AC400158 */  sw         $zero, 0x158($v0)
/* 6E2F0 8006D6F0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6E2F4 8006D6F4 0C01B1BC */  jal        func_8006C6F0
/* 6E2F8 8006D6F8 E4440144 */   swc1      $f4, 0x144($v0)
/* 6E2FC 8006D6FC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 6E300 8006D700 97A40022 */  lhu        $a0, 0x22($sp)
/* 6E304 8006D704 00000000 */  nop
.L8006D708:
/* 6E308 8006D708 8C430158 */  lw         $v1, 0x158($v0)
/* 6E30C 8006D70C 44803000 */  mtc1       $zero, $f6
/* 6E310 8006D710 306D8000 */  andi       $t5, $v1, 0x8000
/* 6E314 8006D714 11A00003 */  beqz       $t5, .L8006D724
/* 6E318 8006D718 E4460144 */   swc1      $f6, 0x144($v0)
/* 6E31C 8006D71C 10000003 */  b          .L8006D72C
/* 6E320 8006D720 AC400158 */   sw        $zero, 0x158($v0)
.L8006D724:
/* 6E324 8006D724 246E0001 */  addiu      $t6, $v1, 1
/* 6E328 8006D728 AC4E0158 */  sw         $t6, 0x158($v0)
.L8006D72C:
/* 6E32C 8006D72C 0C01A6E5 */  jal        func_80069B94
/* 6E330 8006D730 00000000 */   nop
.L8006D734:
/* 6E334 8006D734 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E338 8006D738 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6E33C 8006D73C 03E00008 */  jr         $ra
/* 6E340 8006D740 00000000 */   nop
