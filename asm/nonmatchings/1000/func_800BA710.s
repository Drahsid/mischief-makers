glabel func_800BA710
/* BB310 800BA710 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BB314 800BA714 AFBF0024 */  sw         $ra, 0x24($sp)
/* BB318 800BA718 AFA40038 */  sw         $a0, 0x38($sp)
/* BB31C 800BA71C AFB20020 */  sw         $s2, 0x20($sp)
/* BB320 800BA720 AFB1001C */  sw         $s1, 0x1c($sp)
/* BB324 800BA724 AFB00018 */  sw         $s0, 0x18($sp)
/* BB328 800BA728 0C0297A4 */  jal        func_800A5E90
/* BB32C 800BA72C 00000000 */   nop
/* BB330 800BA730 00408025 */  or         $s0, $v0, $zero
/* BB334 800BA734 8FAE0038 */  lw         $t6, 0x38($sp)
/* BB338 800BA738 15C00003 */  bnez       $t6, .L800BA748
/* BB33C 800BA73C 00000000 */   nop
/* BB340 800BA740 10000003 */  b          .L800BA750
/* BB344 800BA744 24110004 */   addiu     $s1, $zero, 4
.L800BA748:
/* BB348 800BA748 8FAF0038 */  lw         $t7, 0x38($sp)
/* BB34C 800BA74C 95F10010 */  lhu        $s1, 0x10($t7)
.L800BA750:
/* BB350 800BA750 02209025 */  or         $s2, $s1, $zero
/* BB354 800BA754 24010002 */  addiu      $at, $zero, 2
/* BB358 800BA758 12410011 */  beq        $s2, $at, .L800BA7A0
/* BB35C 800BA75C 00000000 */   nop
/* BB360 800BA760 24010004 */  addiu      $at, $zero, 4
/* BB364 800BA764 12410006 */  beq        $s2, $at, .L800BA780
/* BB368 800BA768 00000000 */   nop
/* BB36C 800BA76C 24010008 */  addiu      $at, $zero, 8
/* BB370 800BA770 1241000B */  beq        $s2, $at, .L800BA7A0
/* BB374 800BA774 00000000 */   nop
/* BB378 800BA778 10000012 */  b          .L800BA7C4
/* BB37C 800BA77C 00000000 */   nop
.L800BA780:
/* BB380 800BA780 3C19800F */  lui        $t9, %hi(D_800EA610)
/* BB384 800BA784 8F39A610 */  lw         $t9, %lo(D_800EA610)($t9)
/* BB388 800BA788 24180001 */  addiu      $t8, $zero, 1
/* BB38C 800BA78C A7380010 */  sh         $t8, 0x10($t9)
/* BB390 800BA790 0C029AA4 */  jal        func_800A6A90
/* BB394 800BA794 00002025 */   or        $a0, $zero, $zero
/* BB398 800BA798 1000000A */  b          .L800BA7C4
/* BB39C 800BA79C 00000000 */   nop
.L800BA7A0:
/* BB3A0 800BA7A0 8FA90038 */  lw         $t1, 0x38($sp)
/* BB3A4 800BA7A4 24080001 */  addiu      $t0, $zero, 1
/* BB3A8 800BA7A8 A5280010 */  sh         $t0, 0x10($t1)
/* BB3AC 800BA7AC 8FAA0038 */  lw         $t2, 0x38($sp)
/* BB3B0 800BA7B0 8D440008 */  lw         $a0, 8($t2)
/* BB3B4 800BA7B4 0C029C84 */  jal        func_800A7210
/* BB3B8 800BA7B8 01402825 */   or        $a1, $t2, $zero
/* BB3BC 800BA7BC 10000001 */  b          .L800BA7C4
/* BB3C0 800BA7C0 00000000 */   nop
.L800BA7C4:
/* BB3C4 800BA7C4 0C0297AC */  jal        func_800A5EB0
/* BB3C8 800BA7C8 02002025 */   or        $a0, $s0, $zero
/* BB3CC 800BA7CC 10000001 */  b          .L800BA7D4
/* BB3D0 800BA7D0 00000000 */   nop
.L800BA7D4:
/* BB3D4 800BA7D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* BB3D8 800BA7D8 8FB00018 */  lw         $s0, 0x18($sp)
/* BB3DC 800BA7DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* BB3E0 800BA7E0 8FB20020 */  lw         $s2, 0x20($sp)
/* BB3E4 800BA7E4 03E00008 */  jr         $ra
/* BB3E8 800BA7E8 27BD0038 */   addiu     $sp, $sp, 0x38
/* BB3EC 800BA7EC 00000000 */  nop
