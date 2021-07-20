glabel func_8002D670
/* 2E270 8002D670 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 2E274 8002D674 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 2E278 8002D678 24010014 */  addiu      $at, $zero, 0x14
/* 2E27C 8002D67C 01C1001A */  div        $zero, $t6, $at
/* 2E280 8002D680 3087FFFF */  andi       $a3, $a0, 0xffff
/* 2E284 8002D684 0007C880 */  sll        $t9, $a3, 2
/* 2E288 8002D688 00074080 */  sll        $t0, $a3, 2
/* 2E28C 8002D68C 0327C823 */  subu       $t9, $t9, $a3
/* 2E290 8002D690 01074023 */  subu       $t0, $t0, $a3
/* 2E294 8002D694 0019C880 */  sll        $t9, $t9, 2
/* 2E298 8002D698 00084080 */  sll        $t0, $t0, 2
/* 2E29C 8002D69C 0327C821 */  addu       $t9, $t9, $a3
/* 2E2A0 8002D6A0 01074021 */  addu       $t0, $t0, $a3
/* 2E2A4 8002D6A4 0019C880 */  sll        $t9, $t9, 2
/* 2E2A8 8002D6A8 00084080 */  sll        $t0, $t0, 2
/* 2E2AC 8002D6AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E2B0 8002D6B0 0327C823 */  subu       $t9, $t9, $a3
/* 2E2B4 8002D6B4 01074023 */  subu       $t0, $t0, $a3
/* 2E2B8 8002D6B8 3C09800F */  lui        $t1, %hi(gActors)
/* 2E2BC 8002D6BC AFB00018 */  sw         $s0, 0x18($sp)
/* 2E2C0 8002D6C0 0019C8C0 */  sll        $t9, $t9, 3
/* 2E2C4 8002D6C4 3C01800F */  lui        $at, 0x800f
/* 2E2C8 8002D6C8 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 2E2CC 8002D6CC 000840C0 */  sll        $t0, $t0, 3
/* 2E2D0 8002D6D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E2D4 8002D6D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 2E2D8 8002D6D8 00390821 */  addu       $at, $at, $t9
/* 2E2DC 8002D6DC 2418007F */  addiu      $t8, $zero, 0x7f
/* 2E2E0 8002D6E0 01098021 */  addu       $s0, $t0, $t1
/* 2E2E4 8002D6E4 00002825 */  or         $a1, $zero, $zero
/* 2E2E8 8002D6E8 24060020 */  addiu      $a2, $zero, 0x20
/* 2E2EC 8002D6EC 00007810 */  mfhi       $t7
/* 2E2F0 8002D6F0 15E00002 */  bnez       $t7, .L8002D6FC
/* 2E2F4 8002D6F4 00000000 */   nop
/* 2E2F8 8002D6F8 A038F5AC */  sb         $t8, -0xa54($at)
.L8002D6FC:
/* 2E2FC 8002D6FC 9204009C */  lbu        $a0, 0x9c($s0)
/* 2E300 8002D700 0C00A607 */  jal        func_8002981C
/* 2E304 8002D704 A7A70022 */   sh        $a3, 0x22($sp)
/* 2E308 8002D708 8E0C0188 */  lw         $t4, 0x188($s0)
/* 2E30C 8002D70C A202009C */  sb         $v0, 0x9c($s0)
/* 2E310 8002D710 A202009D */  sb         $v0, 0x9d($s0)
/* 2E314 8002D714 11800016 */  beqz       $t4, .L8002D770
/* 2E318 8002D718 A202009E */   sb        $v0, 0x9e($s0)
/* 2E31C 8002D71C 3C01800F */  lui        $at, %hi(D_800EB864)
/* 2E320 8002D720 C42EB864 */  lwc1       $f14, %lo(D_800EB864)($at)
/* 2E324 8002D724 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 2E328 8002D728 3C063DCC */  lui        $a2, 0x3dcc
/* 2E32C 8002D72C 0C00A618 */  jal        func_80029860
/* 2E330 8002D730 34C6CCCD */   ori       $a2, $a2, 0xcccd
/* 2E334 8002D734 3C013F80 */  lui        $at, 0x3f80
/* 2E338 8002D738 44813000 */  mtc1       $at, $f6
/* 2E33C 8002D73C C6040114 */  lwc1       $f4, 0x114($s0)
/* 2E340 8002D740 44808000 */  mtc1       $zero, $f16
/* 2E344 8002D744 46062201 */  sub.s      $f8, $f4, $f6
/* 2E348 8002D748 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 2E34C 8002D74C E6080114 */  swc1       $f8, 0x114($s0)
/* 2E350 8002D750 C60A0114 */  lwc1       $f10, 0x114($s0)
/* 2E354 8002D754 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E358 8002D758 4610503C */  c.lt.s     $f10, $f16
/* 2E35C 8002D75C 00000000 */  nop
/* 2E360 8002D760 45000003 */  bc1f       .L8002D770
/* 2E364 8002D764 00000000 */   nop
/* 2E368 8002D768 0C00B410 */  jal        func_8002D040
/* 2E36C 8002D76C 00002825 */   or        $a1, $zero, $zero
.L8002D770:
/* 2E370 8002D770 960300D0 */  lhu        $v1, 0xd0($s0)
/* 2E374 8002D774 240E0001 */  addiu      $t6, $zero, 1
/* 2E378 8002D778 10600009 */  beqz       $v1, .L8002D7A0
/* 2E37C 8002D77C 00601025 */   or        $v0, $v1, $zero
/* 2E380 8002D780 24010001 */  addiu      $at, $zero, 1
/* 2E384 8002D784 10410026 */  beq        $v0, $at, .L8002D820
/* 2E388 8002D788 24010002 */   addiu     $at, $zero, 2
/* 2E38C 8002D78C 10410041 */  beq        $v0, $at, .L8002D894
/* 2E390 8002D790 00000000 */   nop
/* 2E394 8002D794 8E020098 */  lw         $v0, 0x98($s0)
/* 2E398 8002D798 10000053 */  b          .L8002D8E8
/* 2E39C 8002D79C 3C01FFDF */   lui       $at, 0xffdf
.L8002D7A0:
/* 2E3A0 8002D7A0 3C013FC0 */  lui        $at, 0x3fc0
/* 2E3A4 8002D7A4 44819000 */  mtc1       $at, $f18
/* 2E3A8 8002D7A8 246D0001 */  addiu      $t5, $v1, 1
/* 2E3AC 8002D7AC 240F1283 */  addiu      $t7, $zero, 0x1283
/* 2E3B0 8002D7B0 241800B6 */  addiu      $t8, $zero, 0xb6
/* 2E3B4 8002D7B4 A60D00D0 */  sh         $t5, 0xd0($s0)
/* 2E3B8 8002D7B8 A60E0094 */  sh         $t6, 0x94($s0)
/* 2E3BC 8002D7BC AE0F0080 */  sw         $t7, 0x80($s0)
/* 2E3C0 8002D7C0 A6180084 */  sh         $t8, 0x84($s0)
/* 2E3C4 8002D7C4 3C01800F */  lui        $at, %hi(D_800EB868)
/* 2E3C8 8002D7C8 E61200B4 */  swc1       $f18, 0xb4($s0)
/* 2E3CC 8002D7CC C424B868 */  lwc1       $f4, %lo(D_800EB868)($at)
/* 2E3D0 8002D7D0 24190040 */  addiu      $t9, $zero, 0x40
/* 2E3D4 8002D7D4 24080017 */  addiu      $t0, $zero, 0x17
/* 2E3D8 8002D7D8 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E3DC 8002D7DC A21900DF */  sb         $t9, 0xdf($s0)
/* 2E3E0 8002D7E0 A20800DB */  sb         $t0, 0xdb($s0)
/* 2E3E4 8002D7E4 A60000E4 */  sh         $zero, 0xe4($s0)
/* 2E3E8 8002D7E8 24050004 */  addiu      $a1, $zero, 4
/* 2E3EC 8002D7EC 0C00AAF9 */  jal        func_8002ABE4
/* 2E3F0 8002D7F0 E60400B8 */   swc1      $f4, 0xb8($s0)
/* 2E3F4 8002D7F4 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E3F8 8002D7F8 0C00AB0C */  jal        func_8002AC30
/* 2E3FC 8002D7FC 24050002 */   addiu     $a1, $zero, 2
/* 2E400 8002D800 3C014180 */  lui        $at, 0x4180
/* 2E404 8002D804 44813000 */  mtc1       $at, $f6
/* 2E408 8002D808 C6080110 */  lwc1       $f8, 0x110($s0)
/* 2E40C 8002D80C 3C09800E */  lui        $t1, %hi(D_800D8A98)
/* 2E410 8002D810 46083280 */  add.s      $f10, $f6, $f8
/* 2E414 8002D814 25298A98 */  addiu      $t1, $t1, %lo(D_800D8A98)
/* 2E418 8002D818 E60A0114 */  swc1       $f10, 0x114($s0)
/* 2E41C 8002D81C AE09018C */  sw         $t1, 0x18c($s0)
.L8002D820:
/* 2E420 8002D820 8E020098 */  lw         $v0, 0x98($s0)
/* 2E424 8002D824 3C01FFFD */  lui        $at, 0xfffd
/* 2E428 8002D828 304A0200 */  andi       $t2, $v0, 0x200
/* 2E42C 8002D82C 1140000F */  beqz       $t2, .L8002D86C
/* 2E430 8002D830 304F0001 */   andi      $t7, $v0, 1
/* 2E434 8002D834 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 2E438 8002D838 8E0D0080 */  lw         $t5, 0x80($s0)
/* 2E43C 8002D83C 3421ED7F */  ori        $at, $at, 0xed7f
/* 2E440 8002D840 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E444 8002D844 256C0001 */  addiu      $t4, $t3, 1
/* 2E448 8002D848 01A17024 */  and        $t6, $t5, $at
/* 2E44C 8002D84C A60C00D0 */  sh         $t4, 0xd0($s0)
/* 2E450 8002D850 AE0E0080 */  sw         $t6, 0x80($s0)
/* 2E454 8002D854 AE0000EC */  sw         $zero, 0xec($s0)
/* 2E458 8002D858 0C00B579 */  jal        func_8002D5E4
/* 2E45C 8002D85C AE0000F0 */   sw        $zero, 0xf0($s0)
/* 2E460 8002D860 8E020098 */  lw         $v0, 0x98($s0)
/* 2E464 8002D864 10000020 */  b          .L8002D8E8
/* 2E468 8002D868 3C01FFDF */   lui       $at, 0xffdf
.L8002D86C:
/* 2E46C 8002D86C 11E0001D */  beqz       $t7, .L8002D8E4
/* 2E470 8002D870 2401FD7F */   addiu     $at, $zero, -0x281
/* 2E474 8002D874 8E180080 */  lw         $t8, 0x80($s0)
/* 2E478 8002D878 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E47C 8002D87C 0301C824 */  and        $t9, $t8, $at
/* 2E480 8002D880 0C00B579 */  jal        func_8002D5E4
/* 2E484 8002D884 AE190080 */   sw        $t9, 0x80($s0)
/* 2E488 8002D888 8E020098 */  lw         $v0, 0x98($s0)
/* 2E48C 8002D88C 10000016 */  b          .L8002D8E8
/* 2E490 8002D890 3C01FFDF */   lui       $at, 0xffdf
.L8002D894:
/* 2E494 8002D894 8E020098 */  lw         $v0, 0x98($s0)
/* 2E498 8002D898 240C0001 */  addiu      $t4, $zero, 1
/* 2E49C 8002D89C 30480200 */  andi       $t0, $v0, 0x200
/* 2E4A0 8002D8A0 11000009 */  beqz       $t0, .L8002D8C8
/* 2E4A4 8002D8A4 304D0400 */   andi      $t5, $v0, 0x400
/* 2E4A8 8002D8A8 8E090104 */  lw         $t1, 0x104($s0)
/* 2E4AC 8002D8AC 8E0A0108 */  lw         $t2, 0x108($s0)
/* 2E4B0 8002D8B0 8E0B010C */  lw         $t3, 0x10c($s0)
/* 2E4B4 8002D8B4 8E020098 */  lw         $v0, 0x98($s0)
/* 2E4B8 8002D8B8 AE090088 */  sw         $t1, 0x88($s0)
/* 2E4BC 8002D8BC AE0A008C */  sw         $t2, 0x8c($s0)
/* 2E4C0 8002D8C0 10000008 */  b          .L8002D8E4
/* 2E4C4 8002D8C4 AE0B0090 */   sw        $t3, 0x90($s0)
.L8002D8C8:
/* 2E4C8 8002D8C8 11A00006 */  beqz       $t5, .L8002D8E4
/* 2E4CC 8002D8CC A60C00D0 */   sh        $t4, 0xd0($s0)
/* 2E4D0 8002D8D0 8E0E00F8 */  lw         $t6, 0xf8($s0)
/* 2E4D4 8002D8D4 8E0F00FC */  lw         $t7, 0xfc($s0)
/* 2E4D8 8002D8D8 8E020098 */  lw         $v0, 0x98($s0)
/* 2E4DC 8002D8DC AE0E00EC */  sw         $t6, 0xec($s0)
/* 2E4E0 8002D8E0 AE0F00F0 */  sw         $t7, 0xf0($s0)
.L8002D8E4:
/* 2E4E4 8002D8E4 3C01FFDF */  lui        $at, 0xffdf
.L8002D8E8:
/* 2E4E8 8002D8E8 3421F9FF */  ori        $at, $at, 0xf9ff
/* 2E4EC 8002D8EC 0041C024 */  and        $t8, $v0, $at
/* 2E4F0 8002D8F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E4F4 8002D8F4 AE180098 */  sw         $t8, 0x98($s0)
/* 2E4F8 8002D8F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E4FC 8002D8FC 03E00008 */  jr         $ra
/* 2E500 8002D900 27BD0020 */   addiu     $sp, $sp, 0x20
