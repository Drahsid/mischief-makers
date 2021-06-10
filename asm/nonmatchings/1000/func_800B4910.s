glabel func_800B4910
/* B5510 800B4910 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B5514 800B4914 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5518 800B4918 AFA40030 */  sw         $a0, 0x30($sp)
/* B551C 800B491C AFA50034 */  sw         $a1, 0x34($sp)
/* B5520 800B4920 AFB00018 */  sw         $s0, 0x18($sp)
/* B5524 800B4924 AFA00028 */  sw         $zero, 0x28($sp)
/* B5528 800B4928 3C0E800F */  lui        $t6, %hi(D_800EAAA0)
/* B552C 800B492C 8DCEAAA0 */  lw         $t6, %lo(D_800EAAA0)($t6)
/* B5530 800B4930 15C0000F */  bnez       $t6, .L800B4970
/* B5534 800B4934 00000000 */   nop
/* B5538 800B4938 3C048019 */  lui        $a0, %hi(D_8018A710)
/* B553C 800B493C 3C058019 */  lui        $a1, %hi(D_8018A728)
/* B5540 800B4940 24A5A728 */  addiu      $a1, $a1, %lo(D_8018A728)
/* B5544 800B4944 2484A710 */  addiu      $a0, $a0, %lo(D_8018A710)
/* B5548 800B4948 0C026994 */  jal        func_8009A650
/* B554C 800B494C 24060001 */   addiu     $a2, $zero, 1
/* B5550 800B4950 3C058019 */  lui        $a1, %hi(D_8018A710)
/* B5554 800B4954 24A5A710 */  addiu      $a1, $a1, %lo(D_8018A710)
/* B5558 800B4958 2404000F */  addiu      $a0, $zero, 0xf
/* B555C 800B495C 0C0269BC */  jal        func_8009A6F0
/* B5560 800B4960 00003025 */   or        $a2, $zero, $zero
/* B5564 800B4964 240F0001 */  addiu      $t7, $zero, 1
/* B5568 800B4968 3C01800F */  lui        $at, %hi(D_800EAAA0)
/* B556C 800B496C AC2FAAA0 */  sw         $t7, %lo(D_800EAAA0)($at)
.L800B4970:
/* B5570 800B4970 8FB80030 */  lw         $t8, 0x30($sp)
/* B5574 800B4974 3C018019 */  lui        $at, %hi(D_8018A72C)
/* B5578 800B4978 AC38A72C */  sw         $t8, %lo(D_8018A72C)($at)
/* B557C 800B497C 8FB90034 */  lw         $t9, 0x34($sp)
/* B5580 800B4980 3C018019 */  lui        $at, %hi(D_8018A730)
/* B5584 800B4984 AC39A730 */  sw         $t9, %lo(D_8018A730)($at)
/* B5588 800B4988 8FA80028 */  lw         $t0, 0x28($sp)
/* B558C 800B498C 1500000C */  bnez       $t0, .L800B49C0
/* B5590 800B4990 00000000 */   nop
.L800B4994:
/* B5594 800B4994 27A4002C */  addiu      $a0, $sp, 0x2c
/* B5598 800B4998 24050001 */  addiu      $a1, $zero, 1
/* B559C 800B499C 0C02A254 */  jal        func_800A8950
/* B55A0 800B49A0 24060005 */   addiu     $a2, $zero, 5
/* B55A4 800B49A4 8FA90028 */  lw         $t1, 0x28($sp)
/* B55A8 800B49A8 00408025 */  or         $s0, $v0, $zero
/* B55AC 800B49AC 01305021 */  addu       $t2, $t1, $s0
/* B55B0 800B49B0 AFAA0028 */  sw         $t2, 0x28($sp)
/* B55B4 800B49B4 8FAB0028 */  lw         $t3, 0x28($sp)
/* B55B8 800B49B8 1160FFF6 */  beqz       $t3, .L800B4994
/* B55BC 800B49BC 00000000 */   nop
.L800B49C0:
/* B55C0 800B49C0 3C048019 */  lui        $a0, %hi(D_8018A710)
/* B55C4 800B49C4 2484A710 */  addiu      $a0, $a0, %lo(D_8018A710)
/* B55C8 800B49C8 00002825 */  or         $a1, $zero, $zero
/* B55CC 800B49CC 0C026B44 */  jal        func_8009AD10
/* B55D0 800B49D0 24060001 */   addiu     $a2, $zero, 1
/* B55D4 800B49D4 10000003 */  b          .L800B49E4
/* B55D8 800B49D8 00000000 */   nop
/* B55DC 800B49DC 10000001 */  b          .L800B49E4
/* B55E0 800B49E0 00000000 */   nop
.L800B49E4:
/* B55E4 800B49E4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B55E8 800B49E8 8FB00018 */  lw         $s0, 0x18($sp)
/* B55EC 800B49EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B55F0 800B49F0 03E00008 */  jr         $ra
/* B55F4 800B49F4 00000000 */   nop
/* B55F8 800B49F8 00000000 */  nop
/* B55FC 800B49FC 00000000 */  nop
