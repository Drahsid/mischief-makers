glabel func_800B2948
/* B3548 800B2948 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B354C 800B294C 308400FF */  andi       $a0, $a0, 0xff
/* B3550 800B2950 3C0E8019 */  lui        $t6, %hi(D_8018A4C0)
/* B3554 800B2954 25CEA4C0 */  addiu      $t6, $t6, %lo(D_8018A4C0)
/* B3558 800B2958 AFAE0014 */  sw         $t6, 0x14($sp)
/* B355C 800B295C AFA00004 */  sw         $zero, 4($sp)
.L800B2960:
/* B3560 800B2960 8FB80004 */  lw         $t8, 4($sp)
/* B3564 800B2964 3C018019 */  lui        $at, %hi(D_8018A4C0)
/* B3568 800B2968 240F00FF */  addiu      $t7, $zero, 0xff
/* B356C 800B296C 0018C880 */  sll        $t9, $t8, 2
/* B3570 800B2970 00390821 */  addu       $at, $at, $t9
/* B3574 800B2974 AC2FA4C0 */  sw         $t7, %lo(D_8018A4C0)($at)
/* B3578 800B2978 8FA80004 */  lw         $t0, 4($sp)
/* B357C 800B297C 25090001 */  addiu      $t1, $t0, 1
/* B3580 800B2980 29210010 */  slti       $at, $t1, 0x10
/* B3584 800B2984 1420FFF6 */  bnez       $at, .L800B2960
/* B3588 800B2988 AFA90004 */   sw        $t1, 4($sp)
/* B358C 800B298C 240A0001 */  addiu      $t2, $zero, 1
/* B3590 800B2990 3C018019 */  lui        $at, %hi(D_8018A4FC)
/* B3594 800B2994 AC2AA4FC */  sw         $t2, %lo(D_8018A4FC)($at)
/* B3598 800B2998 240B0002 */  addiu      $t3, $zero, 2
/* B359C 800B299C A3AB0008 */  sb         $t3, 8($sp)
/* B35A0 800B29A0 240C0008 */  addiu      $t4, $zero, 8
/* B35A4 800B29A4 A3AC0009 */  sb         $t4, 9($sp)
/* B35A8 800B29A8 240D0004 */  addiu      $t5, $zero, 4
/* B35AC 800B29AC A3AD000A */  sb         $t5, 0xa($sp)
/* B35B0 800B29B0 A3A4000B */  sb         $a0, 0xb($sp)
/* B35B4 800B29B4 AFA00004 */  sw         $zero, 4($sp)
.L800B29B8:
/* B35B8 800B29B8 8FAE0004 */  lw         $t6, 4($sp)
/* B35BC 800B29BC 03AEC021 */  addu       $t8, $sp, $t6
/* B35C0 800B29C0 A300000C */  sb         $zero, 0xc($t8)
/* B35C4 800B29C4 8FAF0004 */  lw         $t7, 4($sp)
/* B35C8 800B29C8 25F90001 */  addiu      $t9, $t7, 1
/* B35CC 800B29CC 2B210008 */  slti       $at, $t9, 8
/* B35D0 800B29D0 1420FFF9 */  bnez       $at, .L800B29B8
/* B35D4 800B29D4 AFB90004 */   sw        $t9, 4($sp)
/* B35D8 800B29D8 AFA00004 */  sw         $zero, 4($sp)
.L800B29DC:
/* B35DC 800B29DC 8FA80014 */  lw         $t0, 0x14($sp)
/* B35E0 800B29E0 A1000000 */  sb         $zero, ($t0)
/* B35E4 800B29E4 8FA90014 */  lw         $t1, 0x14($sp)
/* B35E8 800B29E8 252A0001 */  addiu      $t2, $t1, 1
/* B35EC 800B29EC AFAA0014 */  sw         $t2, 0x14($sp)
/* B35F0 800B29F0 8FAB0004 */  lw         $t3, 4($sp)
/* B35F4 800B29F4 256C0001 */  addiu      $t4, $t3, 1
/* B35F8 800B29F8 29810004 */  slti       $at, $t4, 4
/* B35FC 800B29FC 1420FFF7 */  bnez       $at, .L800B29DC
/* B3600 800B2A00 AFAC0004 */   sw        $t4, 4($sp)
/* B3604 800B2A04 27AE0008 */  addiu      $t6, $sp, 8
/* B3608 800B2A08 8DC10000 */  lw         $at, ($t6)
/* B360C 800B2A0C 8FAD0014 */  lw         $t5, 0x14($sp)
/* B3610 800B2A10 A9A10000 */  swl        $at, ($t5)
/* B3614 800B2A14 B9A10003 */  swr        $at, 3($t5)
/* B3618 800B2A18 8DCF0004 */  lw         $t7, 4($t6)
/* B361C 800B2A1C A9AF0004 */  swl        $t7, 4($t5)
/* B3620 800B2A20 B9AF0007 */  swr        $t7, 7($t5)
/* B3624 800B2A24 8DC10008 */  lw         $at, 8($t6)
/* B3628 800B2A28 A9A10008 */  swl        $at, 8($t5)
/* B362C 800B2A2C B9A1000B */  swr        $at, 0xb($t5)
/* B3630 800B2A30 8FB90014 */  lw         $t9, 0x14($sp)
/* B3634 800B2A34 2728000C */  addiu      $t0, $t9, 0xc
/* B3638 800B2A38 AFA80014 */  sw         $t0, 0x14($sp)
/* B363C 800B2A3C 8FAA0014 */  lw         $t2, 0x14($sp)
/* B3640 800B2A40 240900FE */  addiu      $t1, $zero, 0xfe
/* B3644 800B2A44 A1490000 */  sb         $t1, ($t2)
/* B3648 800B2A48 10000001 */  b          .L800B2A50
/* B364C 800B2A4C 00000000 */   nop
.L800B2A50:
/* B3650 800B2A50 03E00008 */  jr         $ra
/* B3654 800B2A54 27BD0018 */   addiu     $sp, $sp, 0x18
/* B3658 800B2A58 00000000 */  nop
/* B365C 800B2A5C 00000000 */  nop
