glabel func_8001D654
/* 1E254 8001D654 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1E258 8001D658 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1E25C 8001D65C 0C00730D */  jal        func_8001CC34
/* 1E260 8001D660 00000000 */   nop
/* 1E264 8001D664 3C03800C */  lui        $v1, %hi(gGameSubState)
/* 1E268 8001D668 9463E4F4 */  lhu        $v1, %lo(gGameSubState)($v1)
/* 1E26C 8001D66C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 1E270 8001D670 28610099 */  slti       $at, $v1, 0x99
/* 1E274 8001D674 14200007 */  bnez       $at, .L8001D694
/* 1E278 8001D678 24010099 */   addiu     $at, $zero, 0x99
/* 1E27C 8001D67C 10610104 */  beq        $v1, $at, L8001DA90_1E690
/* 1E280 8001D680 240100F0 */   addiu     $at, $zero, 0xf0
/* 1E284 8001D684 10610127 */  beq        $v1, $at, .L8001DB24
/* 1E288 8001D688 3C08800F */   lui       $t0, 0x800f
/* 1E28C 8001D68C 1000013E */  b          .L8001DB88
/* 1E290 8001D690 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001D694:
/* 1E294 8001D694 28610091 */  slti       $at, $v1, 0x91
/* 1E298 8001D698 14200005 */  bnez       $at, .L8001D6B0
/* 1E29C 8001D69C 24010098 */   addiu     $at, $zero, 0x98
/* 1E2A0 8001D6A0 106100E2 */  beq        $v1, $at, L8001DA2C_1E62C
/* 1E2A4 8001D6A4 00000000 */   nop
/* 1E2A8 8001D6A8 10000137 */  b          .L8001DB88
/* 1E2AC 8001D6AC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001D6B0:
/* 1E2B0 8001D6B0 28610022 */  slti       $at, $v1, 0x22
/* 1E2B4 8001D6B4 14200005 */  bnez       $at, .L8001D6CC
/* 1E2B8 8001D6B8 24010090 */   addiu     $at, $zero, 0x90
/* 1E2BC 8001D6BC 10610078 */  beq        $v1, $at, .L8001D8A0
/* 1E2C0 8001D6C0 00000000 */   nop
/* 1E2C4 8001D6C4 10000130 */  b          .L8001DB88
/* 1E2C8 8001D6C8 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001D6CC:
/* 1E2CC 8001D6CC 2C610022 */  sltiu      $at, $v1, 0x22
/* 1E2D0 8001D6D0 1020012C */  beqz       $at, L8001DB84_1E784
/* 1E2D4 8001D6D4 00037080 */   sll       $t6, $v1, 2
/* 1E2D8 8001D6D8 3C01800F */  lui        $at, %hi(jtbl_800EB500)
/* 1E2DC 8001D6DC 002E0821 */  addu       $at, $at, $t6
/* 1E2E0 8001D6E0 8C2EB500 */  lw         $t6, %lo(jtbl_800EB500)($at)
/* 1E2E4 8001D6E4 00000000 */  nop
/* 1E2E8 8001D6E8 01C00008 */  jr         $t6
/* 1E2EC 8001D6EC 00000000 */   nop
glabel L8001D6F0_1E2F0
/* 1E2F0 8001D6F0 0C020C43 */  jal        func_8008310C
/* 1E2F4 8001D6F4 00000000 */   nop
/* 1E2F8 8001D6F8 0C020D15 */  jal        func_80083454
/* 1E2FC 8001D6FC 00000000 */   nop
/* 1E300 8001D700 0C00660F */  jal        func_8001983C
/* 1E304 8001D704 00000000 */   nop
/* 1E308 8001D708 240F0002 */  addiu      $t7, $zero, 2
/* 1E30C 8001D70C AFAF0010 */  sw         $t7, 0x10($sp)
/* 1E310 8001D710 24040030 */  addiu      $a0, $zero, 0x30
/* 1E314 8001D714 24053002 */  addiu      $a1, $zero, 0x3002
/* 1E318 8001D718 00003025 */  or         $a2, $zero, $zero
/* 1E31C 8001D71C 0C009CFF */  jal        func_800273FC
/* 1E320 8001D720 2407004C */   addiu     $a3, $zero, 0x4c
/* 1E324 8001D724 24180002 */  addiu      $t8, $zero, 2
/* 1E328 8001D728 AFB80010 */  sw         $t8, 0x10($sp)
/* 1E32C 8001D72C 24040031 */  addiu      $a0, $zero, 0x31
/* 1E330 8001D730 24053002 */  addiu      $a1, $zero, 0x3002
/* 1E334 8001D734 00003025 */  or         $a2, $zero, $zero
/* 1E338 8001D738 0C009CFF */  jal        func_800273FC
/* 1E33C 8001D73C 3407FFB9 */   ori       $a3, $zero, 0xffb9
/* 1E340 8001D740 0C00720D */  jal        func_8001C834
/* 1E344 8001D744 00000000 */   nop
/* 1E348 8001D748 3C08800F */  lui        $t0, %hi(gActors)
/* 1E34C 8001D74C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E350 8001D750 24190002 */  addiu      $t9, $zero, 2
/* 1E354 8001D754 A51951D0 */  sh         $t9, 0x51d0($t0)
/* 1E358 8001D758 850951D0 */  lh         $t1, 0x51d0($t0)
/* 1E35C 8001D75C 240A0020 */  addiu      $t2, $zero, 0x20
/* 1E360 8001D760 240BFFE4 */  addiu      $t3, $zero, -0x1c
/* 1E364 8001D764 3C05800D */  lui        $a1, %hi(D_800C96B4)
/* 1E368 8001D768 240C0002 */  addiu      $t4, $zero, 2
/* 1E36C 8001D76C A50A503C */  sh         $t2, 0x503c($t0)
/* 1E370 8001D770 A50B51D4 */  sh         $t3, 0x51d4($t0)
/* 1E374 8001D774 AFAC0010 */  sw         $t4, 0x10($sp)
/* 1E378 8001D778 24A596B4 */  addiu      $a1, $a1, %lo(D_800C96B4)
/* 1E37C 8001D77C 24040034 */  addiu      $a0, $zero, 0x34
/* 1E380 8001D780 3406FFE8 */  ori        $a2, $zero, 0xffe8
/* 1E384 8001D784 2407004B */  addiu      $a3, $zero, 0x4b
/* 1E388 8001D788 0C00A007 */  jal        func_8002801C
/* 1E38C 8001D78C A5095038 */   sh        $t1, 0x5038($t0)
/* 1E390 8001D790 3C08800F */  lui        $t0, %hi(gActors)
/* 1E394 8001D794 28410035 */  slti       $at, $v0, 0x35
/* 1E398 8001D798 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E39C 8001D79C 3045FFFF */  andi       $a1, $v0, 0xffff
/* 1E3A0 8001D7A0 1420000E */  bnez       $at, .L8001D7DC
/* 1E3A4 8001D7A4 24030034 */   addiu     $v1, $zero, 0x34
/* 1E3A8 8001D7A8 3C02800D */  lui        $v0, %hi(D_800C9664)
/* 1E3AC 8001D7AC 00A02025 */  or         $a0, $a1, $zero
/* 1E3B0 8001D7B0 24050198 */  addiu      $a1, $zero, 0x198
/* 1E3B4 8001D7B4 24429664 */  addiu      $v0, $v0, %lo(D_800C9664)
.L8001D7B8:
/* 1E3B8 8001D7B8 00650019 */  multu      $v1, $a1
/* 1E3BC 8001D7BC 24630001 */  addiu      $v1, $v1, 1
/* 1E3C0 8001D7C0 306FFFFF */  andi       $t7, $v1, 0xffff
/* 1E3C4 8001D7C4 01E4082A */  slt        $at, $t7, $a0
/* 1E3C8 8001D7C8 01E01825 */  or         $v1, $t7, $zero
/* 1E3CC 8001D7CC 00006812 */  mflo       $t5
/* 1E3D0 8001D7D0 010D7021 */  addu       $t6, $t0, $t5
/* 1E3D4 8001D7D4 1420FFF8 */  bnez       $at, .L8001D7B8
/* 1E3D8 8001D7D8 ADC2018C */   sw        $v0, 0x18c($t6)
.L8001D7DC:
/* 1E3DC 8001D7DC 0C007490 */  jal        func_8001D240
/* 1E3E0 8001D7E0 00000000 */   nop
/* 1E3E4 8001D7E4 24180002 */  addiu      $t8, $zero, 2
/* 1E3E8 8001D7E8 3C018010 */  lui        $at, %hi(D_800FA8E4)
/* 1E3EC 8001D7EC AC38A8E4 */  sw         $t8, %lo(D_800FA8E4)($at)
/* 1E3F0 8001D7F0 0C00734C */  jal        func_8001CD30
/* 1E3F4 8001D7F4 24040002 */   addiu     $a0, $zero, 2
/* 1E3F8 8001D7F8 3C08800F */  lui        $t0, %hi(gActors)
/* 1E3FC 8001D7FC 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E400 8001D800 24050198 */  addiu      $a1, $zero, 0x198
/* 1E404 8001D804 24030030 */  addiu      $v1, $zero, 0x30
.L8001D808:
/* 1E408 8001D808 00650019 */  multu      $v1, $a1
/* 1E40C 8001D80C 24630001 */  addiu      $v1, $v1, 1
/* 1E410 8001D810 306BFFFF */  andi       $t3, $v1, 0xffff
/* 1E414 8001D814 2961004F */  slti       $at, $t3, 0x4f
/* 1E418 8001D818 01601825 */  or         $v1, $t3, $zero
/* 1E41C 8001D81C 0000C812 */  mflo       $t9
/* 1E420 8001D820 01191021 */  addu       $v0, $t0, $t9
/* 1E424 8001D824 84490088 */  lh         $t1, 0x88($v0)
/* 1E428 8001D828 00000000 */  nop
/* 1E42C 8001D82C 252AFEE0 */  addiu      $t2, $t1, -0x120
/* 1E430 8001D830 1420FFF5 */  bnez       $at, .L8001D808
/* 1E434 8001D834 A44A0088 */   sh        $t2, 0x88($v0)
/* 1E438 8001D838 240C0008 */  addiu      $t4, $zero, 8
/* 1E43C 8001D83C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E440 8001D840 100000D0 */  b          L8001DB84_1E784
/* 1E444 8001D844 A42CE4F4 */   sh        $t4, %lo(gGameSubState)($at)
glabel L8001D848_1E448
/* 1E448 8001D848 3C08800F */  lui        $t0, %hi(gActors)
/* 1E44C 8001D84C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E450 8001D850 24030030 */  addiu      $v1, $zero, 0x30
/* 1E454 8001D854 24050198 */  addiu      $a1, $zero, 0x198
.L8001D858:
/* 1E458 8001D858 00650019 */  multu      $v1, $a1
/* 1E45C 8001D85C 24630001 */  addiu      $v1, $v1, 1
/* 1E460 8001D860 3078FFFF */  andi       $t8, $v1, 0xffff
/* 1E464 8001D864 2B01004F */  slti       $at, $t8, 0x4f
/* 1E468 8001D868 03001825 */  or         $v1, $t8, $zero
/* 1E46C 8001D86C 00006812 */  mflo       $t5
/* 1E470 8001D870 010D1021 */  addu       $v0, $t0, $t5
/* 1E474 8001D874 844E0088 */  lh         $t6, 0x88($v0)
/* 1E478 8001D878 00000000 */  nop
/* 1E47C 8001D87C 25CF0020 */  addiu      $t7, $t6, 0x20
/* 1E480 8001D880 1420FFF5 */  bnez       $at, .L8001D858
/* 1E484 8001D884 A44F0088 */   sh        $t7, 0x88($v0)
/* 1E488 8001D888 85194D08 */  lh         $t9, 0x4d08($t0)
/* 1E48C 8001D88C 24090090 */  addiu      $t1, $zero, 0x90
/* 1E490 8001D890 172000BC */  bnez       $t9, L8001DB84_1E784
/* 1E494 8001D894 3C01800C */   lui       $at, %hi(gGameSubState)
/* 1E498 8001D898 100000BA */  b          L8001DB84_1E784
/* 1E49C 8001D89C A429E4F4 */   sh        $t1, %lo(gGameSubState)($at)
.L8001D8A0:
/* 1E4A0 8001D8A0 0C007323 */  jal        func_8001CC8C
/* 1E4A4 8001D8A4 A7A40024 */   sh        $a0, 0x24($sp)
/* 1E4A8 8001D8A8 97A40024 */  lhu        $a0, 0x24($sp)
/* 1E4AC 8001D8AC 240B0010 */  addiu      $t3, $zero, 0x10
/* 1E4B0 8001D8B0 0044082A */  slt        $at, $v0, $a0
/* 1E4B4 8001D8B4 1020000C */  beqz       $at, .L8001D8E8
/* 1E4B8 8001D8B8 3C048010 */   lui       $a0, %hi(D_800FA8E6)
/* 1E4BC 8001D8BC 9484A8E6 */  lhu        $a0, %lo(D_800FA8E6)($a0)
/* 1E4C0 8001D8C0 0C0072AA */  jal        func_8001CAA8
/* 1E4C4 8001D8C4 00000000 */   nop
/* 1E4C8 8001D8C8 0C007583 */  jal        func_8001D60C
/* 1E4CC 8001D8CC 24040004 */   addiu     $a0, $zero, 4
/* 1E4D0 8001D8D0 0C000CE0 */  jal        func_80003380
/* 1E4D4 8001D8D4 24040022 */   addiu     $a0, $zero, 0x22
/* 1E4D8 8001D8D8 240A0098 */  addiu      $t2, $zero, 0x98
/* 1E4DC 8001D8DC 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E4E0 8001D8E0 10000003 */  b          .L8001D8F0
/* 1E4E4 8001D8E4 A42AE4F4 */   sh        $t2, %lo(gGameSubState)($at)
.L8001D8E8:
/* 1E4E8 8001D8E8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E4EC 8001D8EC A42BE4F4 */  sh         $t3, %lo(gGameSubState)($at)
.L8001D8F0:
/* 1E4F0 8001D8F0 0C007381 */  jal        func_8001CE04
/* 1E4F4 8001D8F4 00000000 */   nop
/* 1E4F8 8001D8F8 100000A3 */  b          .L8001DB88
/* 1E4FC 8001D8FC 8FBF001C */   lw        $ra, 0x1c($sp)
glabel L8001D900_1E500
/* 1E500 8001D900 3C0C800C */  lui        $t4, %hi(buttonHold)
/* 1E504 8001D904 3C0D800C */  lui        $t5, %hi(D_800BE508)
/* 1E508 8001D908 95ADE508 */  lhu        $t5, %lo(D_800BE508)($t5)
/* 1E50C 8001D90C 958CE4F8 */  lhu        $t4, %lo(buttonHold)($t4)
/* 1E510 8001D910 00000000 */  nop
/* 1E514 8001D914 018D7024 */  and        $t6, $t4, $t5
/* 1E518 8001D918 11C00012 */  beqz       $t6, .L8001D964
/* 1E51C 8001D91C 00000000 */   nop
/* 1E520 8001D920 0C007323 */  jal        func_8001CC8C
/* 1E524 8001D924 A7A40024 */   sh        $a0, 0x24($sp)
/* 1E528 8001D928 97A40024 */  lhu        $a0, 0x24($sp)
/* 1E52C 8001D92C 00000000 */  nop
/* 1E530 8001D930 0044082A */  slt        $at, $v0, $a0
/* 1E534 8001D934 1020000B */  beqz       $at, .L8001D964
/* 1E538 8001D938 3C048010 */   lui       $a0, %hi(D_800FA8E6)
/* 1E53C 8001D93C 9484A8E6 */  lhu        $a0, %lo(D_800FA8E6)($a0)
/* 1E540 8001D940 0C0072AA */  jal        func_8001CAA8
/* 1E544 8001D944 00000000 */   nop
/* 1E548 8001D948 0C007583 */  jal        func_8001D60C
/* 1E54C 8001D94C 24040004 */   addiu     $a0, $zero, 4
/* 1E550 8001D950 0C000CE0 */  jal        func_80003380
/* 1E554 8001D954 24040022 */   addiu     $a0, $zero, 0x22
/* 1E558 8001D958 240F0018 */  addiu      $t7, $zero, 0x18
/* 1E55C 8001D95C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E560 8001D960 A42FE4F4 */  sh         $t7, %lo(gGameSubState)($at)
.L8001D964:
/* 1E564 8001D964 3C18800C */  lui        $t8, %hi(buttonHold)
/* 1E568 8001D968 3C19800C */  lui        $t9, %hi(D_800BE504)
/* 1E56C 8001D96C 9739E504 */  lhu        $t9, %lo(D_800BE504)($t9)
/* 1E570 8001D970 9718E4F8 */  lhu        $t8, %lo(buttonHold)($t8)
/* 1E574 8001D974 3C0A8010 */  lui        $t2, %hi(D_800FA8E4)
/* 1E578 8001D978 03194824 */  and        $t1, $t8, $t9
/* 1E57C 8001D97C 11200013 */  beqz       $t1, .L8001D9CC
/* 1E580 8001D980 00000000 */   nop
/* 1E584 8001D984 8D4AA8E4 */  lw         $t2, %lo(D_800FA8E4)($t2)
/* 1E588 8001D988 00000000 */  nop
/* 1E58C 8001D98C 29410003 */  slti       $at, $t2, 3
/* 1E590 8001D990 1420000E */  bnez       $at, .L8001D9CC
/* 1E594 8001D994 00000000 */   nop
/* 1E598 8001D998 0C007410 */  jal        func_8001D040
/* 1E59C 8001D99C 00000000 */   nop
/* 1E5A0 8001D9A0 3C048010 */  lui        $a0, %hi(D_800FA8E6)
/* 1E5A4 8001D9A4 9484A8E6 */  lhu        $a0, %lo(D_800FA8E6)($a0)
/* 1E5A8 8001D9A8 0C0072DB */  jal        func_8001CB6C
/* 1E5AC 8001D9AC 00000000 */   nop
/* 1E5B0 8001D9B0 0C007583 */  jal        func_8001D60C
/* 1E5B4 8001D9B4 24040010 */   addiu     $a0, $zero, 0x10
/* 1E5B8 8001D9B8 0C000CE0 */  jal        func_80003380
/* 1E5BC 8001D9BC 24040022 */   addiu     $a0, $zero, 0x22
/* 1E5C0 8001D9C0 240B0020 */  addiu      $t3, $zero, 0x20
/* 1E5C4 8001D9C4 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E5C8 8001D9C8 A42BE4F4 */  sh         $t3, %lo(gGameSubState)($at)
.L8001D9CC:
/* 1E5CC 8001D9CC 3C02800C */  lui        $v0, %hi(buttonPress)
/* 1E5D0 8001D9D0 3C0C800C */  lui        $t4, %hi(D_800BE514)
/* 1E5D4 8001D9D4 958CE514 */  lhu        $t4, %lo(D_800BE514)($t4)
/* 1E5D8 8001D9D8 9442E4FC */  lhu        $v0, %lo(buttonPress)($v0)
/* 1E5DC 8001D9DC 3C0E800C */  lui        $t6, %hi(D_800BE518)
/* 1E5E0 8001D9E0 004C6824 */  and        $t5, $v0, $t4
/* 1E5E4 8001D9E4 15A0000B */  bnez       $t5, .L8001DA14
/* 1E5E8 8001D9E8 00000000 */   nop
/* 1E5EC 8001D9EC 95CEE518 */  lhu        $t6, %lo(D_800BE518)($t6)
/* 1E5F0 8001D9F0 3C18800C */  lui        $t8, %hi(D_800BE500)
/* 1E5F4 8001D9F4 004E7824 */  and        $t7, $v0, $t6
/* 1E5F8 8001D9F8 15E00006 */  bnez       $t7, .L8001DA14
/* 1E5FC 8001D9FC 00000000 */   nop
/* 1E600 8001DA00 9718E500 */  lhu        $t8, %lo(D_800BE500)($t8)
/* 1E604 8001DA04 00000000 */  nop
/* 1E608 8001DA08 0058C824 */  and        $t9, $v0, $t8
/* 1E60C 8001DA0C 1320005E */  beqz       $t9, .L8001DB88
/* 1E610 8001DA10 8FBF001C */   lw        $ra, 0x1c($sp)
.L8001DA14:
/* 1E614 8001DA14 0C000CD3 */  jal        func_8000334C
/* 1E618 8001DA18 24040048 */   addiu     $a0, $zero, 0x48
/* 1E61C 8001DA1C 240900F0 */  addiu      $t1, $zero, 0xf0
/* 1E620 8001DA20 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E624 8001DA24 10000057 */  b          L8001DB84_1E784
/* 1E628 8001DA28 A429E4F4 */   sh        $t1, %lo(gGameSubState)($at)
glabel L8001DA2C_1E62C
/* 1E62C 8001DA2C 0C007583 */  jal        func_8001D60C
/* 1E630 8001DA30 24040004 */   addiu     $a0, $zero, 4
/* 1E634 8001DA34 3C08800F */  lui        $t0, %hi(gActors)
/* 1E638 8001DA38 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E63C 8001DA3C 850A503C */  lh         $t2, 0x503c($t0)
/* 1E640 8001DA40 24010030 */  addiu      $at, $zero, 0x30
/* 1E644 8001DA44 1541000E */  bne        $t2, $at, .L8001DA80
/* 1E648 8001DA48 00000000 */   nop
/* 1E64C 8001DA4C 0C0073F7 */  jal        func_8001CFDC
/* 1E650 8001DA50 00000000 */   nop
/* 1E654 8001DA54 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1E658 8001DA58 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1E65C 8001DA5C 944D0000 */  lhu        $t5, ($v0)
/* 1E660 8001DA60 3C08800F */  lui        $t0, %hi(gActors)
/* 1E664 8001DA64 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E668 8001DA68 240B001C */  addiu      $t3, $zero, 0x1c
/* 1E66C 8001DA6C 240CFFE0 */  addiu      $t4, $zero, -0x20
/* 1E670 8001DA70 25AE0001 */  addiu      $t6, $t5, 1
/* 1E674 8001DA74 A50B503C */  sh         $t3, 0x503c($t0)
/* 1E678 8001DA78 A50C51D4 */  sh         $t4, 0x51d4($t0)
/* 1E67C 8001DA7C A44E0000 */  sh         $t6, ($v0)
.L8001DA80:
/* 1E680 8001DA80 0C007381 */  jal        func_8001CE04
/* 1E684 8001DA84 00000000 */   nop
/* 1E688 8001DA88 1000003F */  b          .L8001DB88
/* 1E68C 8001DA8C 8FBF001C */   lw        $ra, 0x1c($sp)
glabel L8001DA90_1E690
/* 1E690 8001DA90 0C007583 */  jal        func_8001D60C
/* 1E694 8001DA94 24040004 */   addiu     $a0, $zero, 4
/* 1E698 8001DA98 3C048010 */  lui        $a0, %hi(D_800FA8E6)
/* 1E69C 8001DA9C 9484A8E6 */  lhu        $a0, %lo(D_800FA8E6)($a0)
/* 1E6A0 8001DAA0 0C00734C */  jal        func_8001CD30
/* 1E6A4 8001DAA4 00000000 */   nop
/* 1E6A8 8001DAA8 3C02800C */  lui        $v0, %hi(gGameSubState)
/* 1E6AC 8001DAAC 2442E4F4 */  addiu      $v0, $v0, %lo(gGameSubState)
/* 1E6B0 8001DAB0 944F0000 */  lhu        $t7, ($v0)
/* 1E6B4 8001DAB4 00000000 */  nop
/* 1E6B8 8001DAB8 25F8FFF7 */  addiu      $t8, $t7, -9
/* 1E6BC 8001DABC 0C007381 */  jal        func_8001CE04
/* 1E6C0 8001DAC0 A4580000 */   sh        $t8, ($v0)
/* 1E6C4 8001DAC4 10000030 */  b          .L8001DB88
/* 1E6C8 8001DAC8 8FBF001C */   lw        $ra, 0x1c($sp)
glabel L8001DACC_1E6CC
/* 1E6CC 8001DACC 0C007583 */  jal        func_8001D60C
/* 1E6D0 8001DAD0 2404FFFC */   addiu     $a0, $zero, -4
/* 1E6D4 8001DAD4 3C048010 */  lui        $a0, %hi(D_800FA8E6)
/* 1E6D8 8001DAD8 9484A8E6 */  lhu        $a0, %lo(D_800FA8E6)($a0)
/* 1E6DC 8001DADC 0C0073C5 */  jal        func_8001CF14
/* 1E6E0 8001DAE0 00000000 */   nop
/* 1E6E4 8001DAE4 24190021 */  addiu      $t9, $zero, 0x21
/* 1E6E8 8001DAE8 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E6EC 8001DAEC 10000025 */  b          L8001DB84_1E784
/* 1E6F0 8001DAF0 A439E4F4 */   sh        $t9, %lo(gGameSubState)($at)
glabel L8001DAF4_1E6F4
/* 1E6F4 8001DAF4 0C007583 */  jal        func_8001D60C
/* 1E6F8 8001DAF8 2404FFFC */   addiu     $a0, $zero, -4
/* 1E6FC 8001DAFC 3C08800F */  lui        $t0, %hi(gActors)
/* 1E700 8001DB00 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 1E704 8001DB04 8509503C */  lh         $t1, 0x503c($t0)
/* 1E708 8001DB08 24010020 */  addiu      $at, $zero, 0x20
/* 1E70C 8001DB0C 1521001D */  bne        $t1, $at, L8001DB84_1E784
/* 1E710 8001DB10 240A0010 */   addiu     $t2, $zero, 0x10
/* 1E714 8001DB14 AD007CD0 */  sw         $zero, 0x7cd0($t0)
/* 1E718 8001DB18 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E71C 8001DB1C 10000019 */  b          L8001DB84_1E784
/* 1E720 8001DB20 A42AE4F4 */   sh        $t2, %lo(gGameSubState)($at)
.L8001DB24:
/* 1E724 8001DB24 24030030 */  addiu      $v1, $zero, 0x30
/* 1E728 8001DB28 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 1E72C 8001DB2C 24050198 */  addiu      $a1, $zero, 0x198
.L8001DB30:
/* 1E730 8001DB30 00650019 */  multu      $v1, $a1
/* 1E734 8001DB34 24630001 */  addiu      $v1, $v1, 1
/* 1E738 8001DB38 306EFFFF */  andi       $t6, $v1, 0xffff
/* 1E73C 8001DB3C 29C1004F */  slti       $at, $t6, 0x4f
/* 1E740 8001DB40 01C01825 */  or         $v1, $t6, $zero
/* 1E744 8001DB44 00005812 */  mflo       $t3
/* 1E748 8001DB48 010B1021 */  addu       $v0, $t0, $t3
/* 1E74C 8001DB4C 844C0088 */  lh         $t4, 0x88($v0)
/* 1E750 8001DB50 00000000 */  nop
/* 1E754 8001DB54 258DFFE0 */  addiu      $t5, $t4, -0x20
/* 1E758 8001DB58 1420FFF5 */  bnez       $at, .L8001DB30
/* 1E75C 8001DB5C A44D0088 */   sh        $t5, 0x88($v0)
/* 1E760 8001DB60 850F4D08 */  lh         $t7, 0x4d08($t0)
/* 1E764 8001DB64 2418000C */  addiu      $t8, $zero, 0xc
/* 1E768 8001DB68 29E1FEE0 */  slti       $at, $t7, -0x120
/* 1E76C 8001DB6C 10200005 */  beqz       $at, L8001DB84_1E784
/* 1E770 8001DB70 24190023 */   addiu     $t9, $zero, 0x23
/* 1E774 8001DB74 3C01800C */  lui        $at, %hi(gGameState)
/* 1E778 8001DB78 A438E4F0 */  sh         $t8, %lo(gGameState)($at)
/* 1E77C 8001DB7C 3C01800C */  lui        $at, %hi(gGameSubState)
/* 1E780 8001DB80 A439E4F4 */  sh         $t9, %lo(gGameSubState)($at)
glabel L8001DB84_1E784
/* 1E784 8001DB84 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001DB88:
/* 1E788 8001DB88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1E78C 8001DB8C 03E00008 */  jr         $ra
/* 1E790 8001DB90 00000000 */   nop
/* 1E794 8001DB94 00000000 */  nop
/* 1E798 8001DB98 00000000 */  nop
/* 1E79C 8001DB9C 00000000 */  nop
