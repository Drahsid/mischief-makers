glabel func_8004D6CC
/* 4E2CC 8004D6CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4E2D0 8004D6D0 000E7880 */  sll        $t7, $t6, 2
/* 4E2D4 8004D6D4 01EE7823 */  subu       $t7, $t7, $t6
/* 4E2D8 8004D6D8 000F7880 */  sll        $t7, $t7, 2
/* 4E2DC 8004D6DC 01EE7821 */  addu       $t7, $t7, $t6
/* 4E2E0 8004D6E0 000F7880 */  sll        $t7, $t7, 2
/* 4E2E4 8004D6E4 01EE7823 */  subu       $t7, $t7, $t6
/* 4E2E8 8004D6E8 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 4E2EC 8004D6EC 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 4E2F0 8004D6F0 000F78C0 */  sll        $t7, $t7, 3
/* 4E2F4 8004D6F4 01F81821 */  addu       $v1, $t7, $t8
/* 4E2F8 8004D6F8 9079012E */  lbu        $t9, 0x12e($v1)
/* 4E2FC 8004D6FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4E300 8004D700 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4E304 8004D704 AFA40020 */  sw         $a0, 0x20($sp)
/* 4E308 8004D708 37280040 */  ori        $t0, $t9, 0x40
/* 4E30C 8004D70C 01C02025 */  or         $a0, $t6, $zero
/* 4E310 8004D710 A068012E */  sb         $t0, 0x12e($v1)
/* 4E314 8004D714 A7AE0022 */  sh         $t6, 0x22($sp)
/* 4E318 8004D718 AFA3001C */  sw         $v1, 0x1c($sp)
/* 4E31C 8004D71C 0C017154 */  jal        func_8005C550
/* 4E320 8004D720 24050001 */   addiu     $a1, $zero, 1
/* 4E324 8004D724 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4E328 8004D728 97A40022 */  lhu        $a0, 0x22($sp)
/* 4E32C 8004D72C 906500D0 */  lbu        $a1, 0xd0($v1)
/* 4E330 8004D730 240B00A9 */  addiu      $t3, $zero, 0xa9
/* 4E334 8004D734 14A0000C */  bnez       $a1, .L8004D768
/* 4E338 8004D738 24010001 */   addiu     $at, $zero, 1
/* 4E33C 8004D73C 8C690080 */  lw         $t1, 0x80($v1)
/* 4E340 8004D740 3C01FF3C */  lui        $at, 0xff3c
/* 4E344 8004D744 3421FFFF */  ori        $at, $at, 0xffff
/* 4E348 8004D748 3C0CFFFF */  lui        $t4, 0xffff
/* 4E34C 8004D74C 240D0001 */  addiu      $t5, $zero, 1
/* 4E350 8004D750 01215024 */  and        $t2, $t1, $at
/* 4E354 8004D754 AC6A0080 */  sw         $t2, 0x80($v1)
/* 4E358 8004D758 AC6B0170 */  sw         $t3, 0x170($v1)
/* 4E35C 8004D75C AC6C00F0 */  sw         $t4, 0xf0($v1)
/* 4E360 8004D760 10000012 */  b          .L8004D7AC
/* 4E364 8004D764 A06D00D0 */   sb        $t5, 0xd0($v1)
.L8004D768:
/* 4E368 8004D768 14A10011 */  bne        $a1, $at, .L8004D7B0
/* 4E36C 8004D76C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4E370 8004D770 0C017506 */  jal        func_8005D418
/* 4E374 8004D774 AFA3001C */   sw        $v1, 0x1c($sp)
/* 4E378 8004D778 8FA3001C */  lw         $v1, 0x1c($sp)
/* 4E37C 8004D77C 1040000B */  beqz       $v0, .L8004D7AC
/* 4E380 8004D780 3C01FF3C */   lui       $at, 0xff3c
/* 4E384 8004D784 8C6E0080 */  lw         $t6, 0x80($v1)
/* 4E388 8004D788 3421FFFF */  ori        $at, $at, 0xffff
/* 4E38C 8004D78C 01C17824 */  and        $t7, $t6, $at
/* 4E390 8004D790 3C010002 */  lui        $at, 2
/* 4E394 8004D794 01E1C825 */  or         $t9, $t7, $at
/* 4E398 8004D798 AC6F0080 */  sw         $t7, 0x80($v1)
/* 4E39C 8004D79C 24080016 */  addiu      $t0, $zero, 0x16
/* 4E3A0 8004D7A0 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 4E3A4 8004D7A4 AC790080 */  sw         $t9, 0x80($v1)
/* 4E3A8 8004D7A8 A46800D0 */  sh         $t0, 0xd0($v1)
.L8004D7AC:
/* 4E3AC 8004D7AC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004D7B0:
/* 4E3B0 8004D7B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4E3B4 8004D7B4 03E00008 */  jr         $ra
/* 4E3B8 8004D7B8 00000000 */   nop
