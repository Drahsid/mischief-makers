glabel func_800B6A24
/* B7624 800B6A24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7628 800B6A28 AFBF0014 */  sw         $ra, 0x14($sp)
/* B762C 800B6A2C AFA40020 */  sw         $a0, 0x20($sp)
/* B7630 800B6A30 AFA50024 */  sw         $a1, 0x24($sp)
/* B7634 800B6A34 AFA60028 */  sw         $a2, 0x28($sp)
/* B7638 800B6A38 8FAE0024 */  lw         $t6, 0x24($sp)
/* B763C 800B6A3C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7640 800B6A40 ADEE0014 */  sw         $t6, 0x14($t7)
/* B7644 800B6A44 8FB80020 */  lw         $t8, 0x20($sp)
/* B7648 800B6A48 24010001 */  addiu      $at, $zero, 1
/* B764C 800B6A4C 17010005 */  bne        $t8, $at, .L800B6A64
/* B7650 800B6A50 00000000 */   nop
/* B7654 800B6A54 8FA80028 */  lw         $t0, 0x28($sp)
/* B7658 800B6A58 241903E9 */  addiu      $t9, $zero, 0x3e9
/* B765C 800B6A5C 10000004 */  b          .L800B6A70
/* B7660 800B6A60 AD190018 */   sw        $t9, 0x18($t0)
.L800B6A64:
/* B7664 800B6A64 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7668 800B6A68 240903EA */  addiu      $t1, $zero, 0x3ea
/* B766C 800B6A6C AD490018 */  sw         $t1, 0x18($t2)
.L800B6A70:
/* B7670 800B6A70 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7674 800B6A74 240B0001 */  addiu      $t3, $zero, 1
/* B7678 800B6A78 A58B0010 */  sh         $t3, 0x10($t4)
/* B767C 800B6A7C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B7680 800B6A80 A5A00012 */  sh         $zero, 0x12($t5)
/* B7684 800B6A84 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7688 800B6A88 A5C00024 */  sh         $zero, 0x24($t6)
/* B768C 800B6A8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7690 800B6A90 A5E00026 */  sh         $zero, 0x26($t7)
/* B7694 800B6A94 8FB80028 */  lw         $t8, 0x28($sp)
/* B7698 800B6A98 AF000030 */  sw         $zero, 0x30($t8)
/* B769C 800B6A9C 8FB90020 */  lw         $t9, 0x20($sp)
/* B76A0 800B6AA0 24010001 */  addiu      $at, $zero, 1
/* B76A4 800B6AA4 1721003D */  bne        $t9, $at, .L800B6B9C
/* B76A8 800B6AA8 00000000 */   nop
/* B76AC 800B6AAC 8FA90028 */  lw         $t1, 0x28($sp)
/* B76B0 800B6AB0 3C080400 */  lui        $t0, 0x400
/* B76B4 800B6AB4 35081000 */  ori        $t0, $t0, 0x1000
/* B76B8 800B6AB8 AD28002C */  sw         $t0, 0x2c($t1)
/* B76BC 800B6ABC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B76C0 800B6AC0 240A002A */  addiu      $t2, $zero, 0x2a
/* B76C4 800B6AC4 AD6A0028 */  sw         $t2, 0x28($t3)
/* B76C8 800B6AC8 0C02E998 */  jal        func_800BA660
/* B76CC 800B6ACC 00000000 */   nop
/* B76D0 800B6AD0 10400009 */  beqz       $v0, .L800B6AF8
/* B76D4 800B6AD4 00000000 */   nop
/* B76D8 800B6AD8 8FAD0028 */  lw         $t5, 0x28($sp)
/* B76DC 800B6ADC 240C0004 */  addiu      $t4, $zero, 4
/* B76E0 800B6AE0 ADAC000C */  sw         $t4, 0xc($t5)
/* B76E4 800B6AE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B76E8 800B6AE8 ADC00020 */  sw         $zero, 0x20($t6)
/* B76EC 800B6AEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B76F0 800B6AF0 10000028 */  b          .L800B6B94
/* B76F4 800B6AF4 ADE0001C */   sw        $zero, 0x1c($t7)
.L800B6AF8:
/* B76F8 800B6AF8 8FB90028 */  lw         $t9, 0x28($sp)
/* B76FC 800B6AFC 24180001 */  addiu      $t8, $zero, 1
/* B7700 800B6B00 AF38000C */  sw         $t8, 0xc($t9)
/* B7704 800B6B04 0C02A45C */  jal        func_800A9170
/* B7708 800B6B08 3C040408 */   lui       $a0, 0x408
/* B770C 800B6B0C 8FA90028 */  lw         $t1, 0x28($sp)
/* B7710 800B6B10 3C010400 */  lui        $at, 0x400
/* B7714 800B6B14 34211000 */  ori        $at, $at, 0x1000
/* B7718 800B6B18 00414021 */  addu       $t0, $v0, $at
/* B771C 800B6B1C AD280020 */  sw         $t0, 0x20($t1)
/* B7720 800B6B20 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7724 800B6B24 0C02A45C */  jal        func_800A9170
/* B7728 800B6B28 8D440020 */   lw        $a0, 0x20($t2)
/* B772C 800B6B2C AFA2001C */  sw         $v0, 0x1c($sp)
/* B7730 800B6B30 8FAB001C */  lw         $t3, 0x1c($sp)
/* B7734 800B6B34 3C01FC00 */  lui        $at, 0xfc00
/* B7738 800B6B38 3421003F */  ori        $at, $at, 0x3f
/* B773C 800B6B3C 01616024 */  and        $t4, $t3, $at
/* B7740 800B6B40 2401000D */  addiu      $at, $zero, 0xd
/* B7744 800B6B44 15810003 */  bne        $t4, $at, .L800B6B54
/* B7748 800B6B48 00000000 */   nop
/* B774C 800B6B4C 240D000D */  addiu      $t5, $zero, 0xd
/* B7750 800B6B50 AFAD001C */  sw         $t5, 0x1c($sp)
.L800B6B54:
/* B7754 800B6B54 3C0E8019 */  lui        $t6, %hi(D_8018A390)
/* B7758 800B6B58 91CEA390 */  lbu        $t6, %lo(D_8018A390)($t6)
/* B775C 800B6B5C 11C0000A */  beqz       $t6, .L800B6B88
/* B7760 800B6B60 00000000 */   nop
/* B7764 800B6B64 8FB80028 */  lw         $t8, 0x28($sp)
/* B7768 800B6B68 240F0002 */  addiu      $t7, $zero, 2
/* B776C 800B6B6C A70F0010 */  sh         $t7, 0x10($t8)
/* B7770 800B6B70 8FA80028 */  lw         $t0, 0x28($sp)
/* B7774 800B6B74 24190002 */  addiu      $t9, $zero, 2
/* B7778 800B6B78 A5190024 */  sh         $t9, 0x24($t0)
/* B777C 800B6B7C 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7780 800B6B80 24090004 */  addiu      $t1, $zero, 4
/* B7784 800B6B84 A5490026 */  sh         $t1, 0x26($t2)
.L800B6B88:
/* B7788 800B6B88 8FAB001C */  lw         $t3, 0x1c($sp)
/* B778C 800B6B8C 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7790 800B6B90 AD8B001C */  sw         $t3, 0x1c($t4)
.L800B6B94:
/* B7794 800B6B94 10000061 */  b          .L800B6D1C
/* B7798 800B6B98 00000000 */   nop
.L800B6B9C:
/* B779C 800B6B9C 0C02DC7C */  jal        func_800B71F0
/* B77A0 800B6BA0 00000000 */   nop
/* B77A4 800B6BA4 AFA20018 */  sw         $v0, 0x18($sp)
/* B77A8 800B6BA8 8FAD0018 */  lw         $t5, 0x18($sp)
/* B77AC 800B6BAC 2401FFFF */  addiu      $at, $zero, -1
/* B77B0 800B6BB0 8DAE0004 */  lw         $t6, 4($t5)
/* B77B4 800B6BB4 11C10010 */  beq        $t6, $at, .L800B6BF8
/* B77B8 800B6BB8 00000000 */   nop
.L800B6BBC:
/* B77BC 800B6BBC 8FAF0018 */  lw         $t7, 0x18($sp)
/* B77C0 800B6BC0 8FB90024 */  lw         $t9, 0x24($sp)
/* B77C4 800B6BC4 8DF80014 */  lw         $t8, 0x14($t7)
/* B77C8 800B6BC8 17190003 */  bne        $t8, $t9, .L800B6BD8
/* B77CC 800B6BCC 00000000 */   nop
/* B77D0 800B6BD0 10000009 */  b          .L800B6BF8
/* B77D4 800B6BD4 00000000 */   nop
.L800B6BD8:
/* B77D8 800B6BD8 8FA80018 */  lw         $t0, 0x18($sp)
/* B77DC 800B6BDC 8D09000C */  lw         $t1, 0xc($t0)
/* B77E0 800B6BE0 AFA90018 */  sw         $t1, 0x18($sp)
/* B77E4 800B6BE4 8FAA0018 */  lw         $t2, 0x18($sp)
/* B77E8 800B6BE8 2401FFFF */  addiu      $at, $zero, -1
/* B77EC 800B6BEC 8D4B0004 */  lw         $t3, 4($t2)
/* B77F0 800B6BF0 1561FFF2 */  bne        $t3, $at, .L800B6BBC
/* B77F4 800B6BF4 00000000 */   nop
.L800B6BF8:
/* B77F8 800B6BF8 8FAC0018 */  lw         $t4, 0x18($sp)
/* B77FC 800B6BFC 2401FFFF */  addiu      $at, $zero, -1
/* B7800 800B6C00 8D8D0004 */  lw         $t5, 4($t4)
/* B7804 800B6C04 15A10003 */  bne        $t5, $at, .L800B6C14
/* B7808 800B6C08 00000000 */   nop
/* B780C 800B6C0C 10000047 */  b          .L800B6D2C
/* B7810 800B6C10 2402FFFE */   addiu     $v0, $zero, -2
.L800B6C14:
/* B7814 800B6C14 8FAE0018 */  lw         $t6, 0x18($sp)
/* B7818 800B6C18 8FB80028 */  lw         $t8, 0x28($sp)
/* B781C 800B6C1C 8DCF0004 */  lw         $t7, 4($t6)
/* B7820 800B6C20 AF0F0028 */  sw         $t7, 0x28($t8)
/* B7824 800B6C24 8FB90018 */  lw         $t9, 0x18($sp)
/* B7828 800B6C28 97280010 */  lhu        $t0, 0x10($t9)
/* B782C 800B6C2C 11000004 */  beqz       $t0, .L800B6C40
/* B7830 800B6C30 00000000 */   nop
/* B7834 800B6C34 8FA90028 */  lw         $t1, 0x28($sp)
/* B7838 800B6C38 10000004 */  b          .L800B6C4C
/* B783C 800B6C3C AD28000C */   sw        $t0, 0xc($t1)
.L800B6C40:
/* B7840 800B6C40 8FAB0028 */  lw         $t3, 0x28($sp)
/* B7844 800B6C44 240A0001 */  addiu      $t2, $zero, 1
/* B7848 800B6C48 AD6A000C */  sw         $t2, 0xc($t3)
.L800B6C4C:
/* B784C 800B6C4C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B7850 800B6C50 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7854 800B6C54 8D8D011C */  lw         $t5, 0x11c($t4)
/* B7858 800B6C58 ADCD0020 */  sw         $t5, 0x20($t6)
/* B785C 800B6C5C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B7860 800B6C60 8DF8011C */  lw         $t8, 0x11c($t7)
/* B7864 800B6C64 8F190000 */  lw         $t9, ($t8)
/* B7868 800B6C68 AFB9001C */  sw         $t9, 0x1c($sp)
/* B786C 800B6C6C 8FA8001C */  lw         $t0, 0x1c($sp)
/* B7870 800B6C70 3C01FC00 */  lui        $at, 0xfc00
/* B7874 800B6C74 3421003F */  ori        $at, $at, 0x3f
/* B7878 800B6C78 01014824 */  and        $t1, $t0, $at
/* B787C 800B6C7C 2401000D */  addiu      $at, $zero, 0xd
/* B7880 800B6C80 15210003 */  bne        $t1, $at, .L800B6C90
/* B7884 800B6C84 00000000 */   nop
/* B7888 800B6C88 240A000D */  addiu      $t2, $zero, 0xd
/* B788C 800B6C8C AFAA001C */  sw         $t2, 0x1c($sp)
.L800B6C90:
/* B7890 800B6C90 8FAB001C */  lw         $t3, 0x1c($sp)
/* B7894 800B6C94 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7898 800B6C98 AD8B001C */  sw         $t3, 0x1c($t4)
/* B789C 800B6C9C 8FAD0018 */  lw         $t5, 0x18($sp)
/* B78A0 800B6CA0 8FAE0028 */  lw         $t6, 0x28($sp)
/* B78A4 800B6CA4 ADCD002C */  sw         $t5, 0x2c($t6)
/* B78A8 800B6CA8 8FAF0018 */  lw         $t7, 0x18($sp)
/* B78AC 800B6CAC 95F80012 */  lhu        $t8, 0x12($t7)
/* B78B0 800B6CB0 33190001 */  andi       $t9, $t8, 1
/* B78B4 800B6CB4 1320000B */  beqz       $t9, .L800B6CE4
/* B78B8 800B6CB8 00000000 */   nop
/* B78BC 800B6CBC 8FA90028 */  lw         $t1, 0x28($sp)
/* B78C0 800B6CC0 24080002 */  addiu      $t0, $zero, 2
/* B78C4 800B6CC4 A5280010 */  sh         $t0, 0x10($t1)
/* B78C8 800B6CC8 8FAB0028 */  lw         $t3, 0x28($sp)
/* B78CC 800B6CCC 240A0002 */  addiu      $t2, $zero, 2
/* B78D0 800B6CD0 A56A0024 */  sh         $t2, 0x24($t3)
/* B78D4 800B6CD4 8FAD0028 */  lw         $t5, 0x28($sp)
/* B78D8 800B6CD8 240C0004 */  addiu      $t4, $zero, 4
/* B78DC 800B6CDC 1000000F */  b          .L800B6D1C
/* B78E0 800B6CE0 A5AC0026 */   sh        $t4, 0x26($t5)
.L800B6CE4:
/* B78E4 800B6CE4 8FAE0018 */  lw         $t6, 0x18($sp)
/* B78E8 800B6CE8 95CF0012 */  lhu        $t7, 0x12($t6)
/* B78EC 800B6CEC 31F80002 */  andi       $t8, $t7, 2
/* B78F0 800B6CF0 1300000A */  beqz       $t8, .L800B6D1C
/* B78F4 800B6CF4 00000000 */   nop
/* B78F8 800B6CF8 8FA80028 */  lw         $t0, 0x28($sp)
/* B78FC 800B6CFC 24190002 */  addiu      $t9, $zero, 2
/* B7900 800B6D00 A5190010 */  sh         $t9, 0x10($t0)
/* B7904 800B6D04 8FAA0028 */  lw         $t2, 0x28($sp)
/* B7908 800B6D08 24090001 */  addiu      $t1, $zero, 1
/* B790C 800B6D0C A5490024 */  sh         $t1, 0x24($t2)
/* B7910 800B6D10 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7914 800B6D14 240B0002 */  addiu      $t3, $zero, 2
/* B7918 800B6D18 A58B0026 */  sh         $t3, 0x26($t4)
.L800B6D1C:
/* B791C 800B6D1C 10000003 */  b          .L800B6D2C
/* B7920 800B6D20 00001025 */   or        $v0, $zero, $zero
/* B7924 800B6D24 10000001 */  b          .L800B6D2C
/* B7928 800B6D28 00000000 */   nop
.L800B6D2C:
/* B792C 800B6D2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7930 800B6D30 27BD0020 */  addiu      $sp, $sp, 0x20
/* B7934 800B6D34 03E00008 */  jr         $ra
/* B7938 800B6D38 00000000 */   nop
