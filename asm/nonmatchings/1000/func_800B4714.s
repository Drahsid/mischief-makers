glabel func_800B4714
/* B5314 800B4714 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5318 800B4718 AFBF0014 */  sw         $ra, 0x14($sp)
/* B531C 800B471C AFA40028 */  sw         $a0, 0x28($sp)
/* B5320 800B4720 AFA5002C */  sw         $a1, 0x2c($sp)
/* B5324 800B4724 AFA00020 */  sw         $zero, 0x20($sp)
/* B5328 800B4728 3C0E800F */  lui        $t6, %hi(D_800EA640)
/* B532C 800B472C 8DCEA640 */  lw         $t6, %lo(D_800EA640)($t6)
/* B5330 800B4730 15C00005 */  bnez       $t6, .L800B4748
/* B5334 800B4734 00000000 */   nop
/* B5338 800B4738 0C02D1A7 */  jal        func_800B469C
/* B533C 800B473C 00000000 */   nop
/* B5340 800B4740 10000003 */  b          .L800B4750
/* B5344 800B4744 AFA0001C */   sw        $zero, 0x1c($sp)
.L800B4748:
/* B5348 800B4748 240F0001 */  addiu      $t7, $zero, 1
/* B534C 800B474C AFAF001C */  sw         $t7, 0x1c($sp)
.L800B4750:
/* B5350 800B4750 8FB8002C */  lw         $t8, 0x2c($sp)
/* B5354 800B4754 1300001E */  beqz       $t8, .L800B47D0
/* B5358 800B4758 00000000 */   nop
.L800B475C:
/* B535C 800B475C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5360 800B4760 2F210003 */  sltiu      $at, $t9, 3
/* B5364 800B4764 10200003 */  beqz       $at, .L800B4774
/* B5368 800B4768 00000000 */   nop
/* B536C 800B476C 10000003 */  b          .L800B477C
/* B5370 800B4770 AFB90024 */   sw        $t9, 0x24($sp)
.L800B4774:
/* B5374 800B4774 24080003 */  addiu      $t0, $zero, 3
/* B5378 800B4778 AFA80024 */  sw         $t0, 0x24($sp)
.L800B477C:
/* B537C 800B477C 8FA90028 */  lw         $t1, 0x28($sp)
/* B5380 800B4780 8FAA0020 */  lw         $t2, 0x20($sp)
/* B5384 800B4784 8FA50024 */  lw         $a1, 0x24($sp)
/* B5388 800B4788 0C02D188 */  jal        func_800B4620
/* B538C 800B478C 012A2021 */   addu      $a0, $t1, $t2
/* B5390 800B4790 8FAB002C */  lw         $t3, 0x2c($sp)
/* B5394 800B4794 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5398 800B4798 016C6823 */  subu       $t5, $t3, $t4
/* B539C 800B479C AFAD002C */  sw         $t5, 0x2c($sp)
/* B53A0 800B47A0 8FAE0020 */  lw         $t6, 0x20($sp)
/* B53A4 800B47A4 8FAF0024 */  lw         $t7, 0x24($sp)
/* B53A8 800B47A8 01CFC021 */  addu       $t8, $t6, $t7
/* B53AC 800B47AC AFB80020 */  sw         $t8, 0x20($sp)
/* B53B0 800B47B0 8FB9002C */  lw         $t9, 0x2c($sp)
/* B53B4 800B47B4 13200003 */  beqz       $t9, .L800B47C4
/* B53B8 800B47B8 00000000 */   nop
/* B53BC 800B47BC 0C02D1A7 */  jal        func_800B469C
/* B53C0 800B47C0 00000000 */   nop
.L800B47C4:
/* B53C4 800B47C4 8FA8002C */  lw         $t0, 0x2c($sp)
/* B53C8 800B47C8 1500FFE4 */  bnez       $t0, .L800B475C
/* B53CC 800B47CC 00000000 */   nop
.L800B47D0:
/* B53D0 800B47D0 8FA9001C */  lw         $t1, 0x1c($sp)
/* B53D4 800B47D4 11200003 */  beqz       $t1, .L800B47E4
/* B53D8 800B47D8 00000000 */   nop
/* B53DC 800B47DC 0C02D1A7 */  jal        func_800B469C
/* B53E0 800B47E0 00000000 */   nop
.L800B47E4:
/* B53E4 800B47E4 10000001 */  b          .L800B47EC
/* B53E8 800B47E8 00000000 */   nop
.L800B47EC:
/* B53EC 800B47EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B53F0 800B47F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B53F4 800B47F4 03E00008 */  jr         $ra
/* B53F8 800B47F8 00000000 */   nop
