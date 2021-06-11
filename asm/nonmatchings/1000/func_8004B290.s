glabel func_8004B290
/* 4BE90 8004B290 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4BE94 8004B294 000E7880 */  sll        $t7, $t6, 2
/* 4BE98 8004B298 01EE7823 */  subu       $t7, $t7, $t6
/* 4BE9C 8004B29C 000F7880 */  sll        $t7, $t7, 2
/* 4BEA0 8004B2A0 01EE7821 */  addu       $t7, $t7, $t6
/* 4BEA4 8004B2A4 000F7880 */  sll        $t7, $t7, 2
/* 4BEA8 8004B2A8 01EE7823 */  subu       $t7, $t7, $t6
/* 4BEAC 8004B2AC 3C18800F */  lui        $t8, %hi(gActors)
/* 4BEB0 8004B2B0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4BEB4 8004B2B4 000F78C0 */  sll        $t7, $t7, 3
/* 4BEB8 8004B2B8 01F81821 */  addu       $v1, $t7, $t8
/* 4BEBC 8004B2BC 906800D0 */  lbu        $t0, 0xd0($v1)
/* 4BEC0 8004B2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4BEC4 8004B2C4 24190007 */  addiu      $t9, $zero, 7
/* 4BEC8 8004B2C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BECC 8004B2CC AFA40020 */  sw         $a0, 0x20($sp)
/* 4BED0 8004B2D0 15000005 */  bnez       $t0, .L8004B2E8
/* 4BED4 8004B2D4 A479012C */   sh        $t9, 0x12c($v1)
/* 4BED8 8004B2D8 2409002D */  addiu      $t1, $zero, 0x2d
/* 4BEDC 8004B2DC 240A0001 */  addiu      $t2, $zero, 1
/* 4BEE0 8004B2E0 AC690170 */  sw         $t1, 0x170($v1)
/* 4BEE4 8004B2E4 A06A00D0 */  sb         $t2, 0xd0($v1)
.L8004B2E8:
/* 4BEE8 8004B2E8 00002025 */  or         $a0, $zero, $zero
/* 4BEEC 8004B2EC 0C012325 */  jal        func_80048C94
/* 4BEF0 8004B2F0 AFA30018 */   sw        $v1, 0x18($sp)
/* 4BEF4 8004B2F4 8FA30018 */  lw         $v1, 0x18($sp)
/* 4BEF8 8004B2F8 00002825 */  or         $a1, $zero, $zero
/* 4BEFC 8004B2FC 8C6400EC */  lw         $a0, 0xec($v1)
/* 4BF00 8004B300 0C00A607 */  jal        func_8002981C
/* 4BF04 8004B304 00023040 */   sll       $a2, $v0, 1
/* 4BF08 8004B308 8FA30018 */  lw         $v1, 0x18($sp)
/* 4BF0C 8004B30C 10400004 */  beqz       $v0, .L8004B320
/* 4BF10 8004B310 AC6200EC */   sw        $v0, 0xec($v1)
/* 4BF14 8004B314 240B0004 */  addiu      $t3, $zero, 4
/* 4BF18 8004B318 10000006 */  b          .L8004B334
/* 4BF1C 8004B31C A06B0183 */   sb        $t3, 0x183($v1)
.L8004B320:
/* 4BF20 8004B320 8C6C0080 */  lw         $t4, 0x80($v1)
/* 4BF24 8004B324 240E0003 */  addiu      $t6, $zero, 3
/* 4BF28 8004B328 358D4000 */  ori        $t5, $t4, 0x4000
/* 4BF2C 8004B32C AC6D0080 */  sw         $t5, 0x80($v1)
/* 4BF30 8004B330 A46E00D0 */  sh         $t6, 0xd0($v1)
.L8004B334:
/* 4BF34 8004B334 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BF38 8004B338 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4BF3C 8004B33C 03E00008 */  jr         $ra
/* 4BF40 8004B340 00000000 */   nop
