glabel func_800A94BC
/* AA0BC 800A94BC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AA0C0 800A94C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* AA0C4 800A94C4 AFA40048 */  sw         $a0, 0x48($sp)
/* AA0C8 800A94C8 AFB10018 */  sw         $s1, 0x18($sp)
/* AA0CC 800A94CC AFB00014 */  sw         $s0, 0x14($sp)
/* AA0D0 800A94D0 8FB00048 */  lw         $s0, 0x48($sp)
/* AA0D4 800A94D4 8FAE0048 */  lw         $t6, 0x48($sp)
/* AA0D8 800A94D8 91CF0009 */  lbu        $t7, 9($t6)
/* AA0DC 800A94DC 15E00008 */  bnez       $t7, .L800A9500
/* AA0E0 800A94E0 00000000 */   nop
/* AA0E4 800A94E4 0C026964 */  jal        func_8009A590
/* AA0E8 800A94E8 8E040010 */   lw        $a0, 0x10($s0)
/* AA0EC 800A94EC 2401FFFF */  addiu      $at, $zero, -1
/* AA0F0 800A94F0 14410003 */  bne        $v0, $at, .L800A9500
/* AA0F4 800A94F4 00000000 */   nop
/* AA0F8 800A94F8 10000081 */  b          .L800A9700
/* AA0FC 800A94FC 2402FFFB */   addiu     $v0, $zero, -5
.L800A9500:
/* AA100 800A9500 8E180014 */  lw         $t8, 0x14($s0)
/* AA104 800A9504 2F010401 */  sltiu      $at, $t8, 0x401
/* AA108 800A9508 14200003 */  bnez       $at, .L800A9518
/* AA10C 800A950C 00000000 */   nop
/* AA110 800A9510 1000007B */  b          .L800A9700
/* AA114 800A9514 2402FFF8 */   addiu     $v0, $zero, -8
.L800A9518:
/* AA118 800A9518 8E190010 */  lw         $t9, 0x10($s0)
/* AA11C 800A951C 3C010400 */  lui        $at, 0x400
/* AA120 800A9520 0321082B */  sltu       $at, $t9, $at
/* AA124 800A9524 14200008 */  bnez       $at, .L800A9548
/* AA128 800A9528 00000000 */   nop
/* AA12C 800A952C 8E080010 */  lw         $t0, 0x10($s0)
/* AA130 800A9530 8E090014 */  lw         $t1, 0x14($s0)
/* AA134 800A9534 3C010500 */  lui        $at, 0x500
/* AA138 800A9538 01095021 */  addu       $t2, $t0, $t1
/* AA13C 800A953C 0141082B */  sltu       $at, $t2, $at
/* AA140 800A9540 14200003 */  bnez       $at, .L800A9550
/* AA144 800A9544 00000000 */   nop
.L800A9548:
/* AA148 800A9548 10000002 */  b          .L800A9554
/* AA14C 800A954C 00008825 */   or        $s1, $zero, $zero
.L800A9550:
/* AA150 800A9550 24110001 */  addiu      $s1, $zero, 1
.L800A9554:
/* AA154 800A9554 12200059 */  beqz       $s1, .L800A96BC
/* AA158 800A9558 00000000 */   nop
/* AA15C 800A955C 8E0B0010 */  lw         $t3, 0x10($s0)
/* AA160 800A9560 316C0003 */  andi       $t4, $t3, 3
/* AA164 800A9564 11800035 */  beqz       $t4, .L800A963C
/* AA168 800A9568 AFAC0030 */   sw        $t4, 0x30($sp)
/* AA16C 800A956C 8E0D0014 */  lw         $t5, 0x14($s0)
/* AA170 800A9570 24010001 */  addiu      $at, $zero, 1
/* AA174 800A9574 11A10003 */  beq        $t5, $at, .L800A9584
/* AA178 800A9578 00000000 */   nop
/* AA17C 800A957C 10000060 */  b          .L800A9700
/* AA180 800A9580 2402FFFB */   addiu     $v0, $zero, -5
.L800A9584:
/* AA184 800A9584 8E040010 */  lw         $a0, 0x10($s0)
/* AA188 800A9588 2401FFFC */  addiu      $at, $zero, -4
/* AA18C 800A958C 00817024 */  and        $t6, $a0, $at
/* AA190 800A9590 0C02A45C */  jal        func_800A9170
/* AA194 800A9594 01C02025 */   or        $a0, $t6, $zero
/* AA198 800A9598 AFA2002C */  sw         $v0, 0x2c($sp)
/* AA19C 800A959C 8FAF0030 */  lw         $t7, 0x30($sp)
/* AA1A0 800A95A0 24010001 */  addiu      $at, $zero, 1
/* AA1A4 800A95A4 15E1000A */  bne        $t7, $at, .L800A95D0
/* AA1A8 800A95A8 00000000 */   nop
/* AA1AC 800A95AC 92180018 */  lbu        $t8, 0x18($s0)
/* AA1B0 800A95B0 8FA8002C */  lw         $t0, 0x2c($sp)
/* AA1B4 800A95B4 3C01FF00 */  lui        $at, 0xff00
/* AA1B8 800A95B8 3421FFFF */  ori        $at, $at, 0xffff
/* AA1BC 800A95BC 0018CC00 */  sll        $t9, $t8, 0x10
/* AA1C0 800A95C0 01014824 */  and        $t1, $t0, $at
/* AA1C4 800A95C4 03295025 */  or         $t2, $t9, $t1
/* AA1C8 800A95C8 10000014 */  b          .L800A961C
/* AA1CC 800A95CC AFAA002C */   sw        $t2, 0x2c($sp)
.L800A95D0:
/* AA1D0 800A95D0 8FAB0030 */  lw         $t3, 0x30($sp)
/* AA1D4 800A95D4 24010002 */  addiu      $at, $zero, 2
/* AA1D8 800A95D8 1561000A */  bne        $t3, $at, .L800A9604
/* AA1DC 800A95DC 00000000 */   nop
/* AA1E0 800A95E0 920C0018 */  lbu        $t4, 0x18($s0)
/* AA1E4 800A95E4 8FAE002C */  lw         $t6, 0x2c($sp)
/* AA1E8 800A95E8 3C01FFFF */  lui        $at, 0xffff
/* AA1EC 800A95EC 342100FF */  ori        $at, $at, 0xff
/* AA1F0 800A95F0 000C6A00 */  sll        $t5, $t4, 8
/* AA1F4 800A95F4 01C17824 */  and        $t7, $t6, $at
/* AA1F8 800A95F8 01AFC025 */  or         $t8, $t5, $t7
/* AA1FC 800A95FC 10000007 */  b          .L800A961C
/* AA200 800A9600 AFB8002C */   sw        $t8, 0x2c($sp)
.L800A9604:
/* AA204 800A9604 8FB9002C */  lw         $t9, 0x2c($sp)
/* AA208 800A9608 92080018 */  lbu        $t0, 0x18($s0)
/* AA20C 800A960C 2401FF00 */  addiu      $at, $zero, -0x100
/* AA210 800A9610 03214824 */  and        $t1, $t9, $at
/* AA214 800A9614 01095025 */  or         $t2, $t0, $t1
/* AA218 800A9618 AFAA002C */  sw         $t2, 0x2c($sp)
.L800A961C:
/* AA21C 800A961C 8E040010 */  lw         $a0, 0x10($s0)
/* AA220 800A9620 2401FFFC */  addiu      $at, $zero, -4
/* AA224 800A9624 8FA5002C */  lw         $a1, 0x2c($sp)
/* AA228 800A9628 00815824 */  and        $t3, $a0, $at
/* AA22C 800A962C 0C02A448 */  jal        func_800A9120
/* AA230 800A9630 01602025 */   or        $a0, $t3, $zero
/* AA234 800A9634 1000001F */  b          .L800A96B4
/* AA238 800A9638 00000000 */   nop
.L800A963C:
/* AA23C 800A963C 8E0C0014 */  lw         $t4, 0x14($s0)
/* AA240 800A9640 000C7082 */  srl        $t6, $t4, 2
/* AA244 800A9644 AFAE0028 */  sw         $t6, 0x28($sp)
/* AA248 800A9648 260D0018 */  addiu      $t5, $s0, 0x18
/* AA24C 800A964C AFAD0024 */  sw         $t5, 0x24($sp)
/* AA250 800A9650 8E0F0014 */  lw         $t7, 0x14($s0)
/* AA254 800A9654 31F80003 */  andi       $t8, $t7, 3
/* AA258 800A9658 13000003 */  beqz       $t8, .L800A9668
/* AA25C 800A965C 00000000 */   nop
/* AA260 800A9660 10000027 */  b          .L800A9700
/* AA264 800A9664 2402FFFB */   addiu     $v0, $zero, -5
.L800A9668:
/* AA268 800A9668 8FB90028 */  lw         $t9, 0x28($sp)
/* AA26C 800A966C 03208825 */  or         $s1, $t9, $zero
/* AA270 800A9670 2728FFFF */  addiu      $t0, $t9, -1
/* AA274 800A9674 1220000F */  beqz       $s1, .L800A96B4
/* AA278 800A9678 AFA80028 */   sw        $t0, 0x28($sp)
.L800A967C:
/* AA27C 800A967C 8FA90024 */  lw         $t1, 0x24($sp)
/* AA280 800A9680 8E040010 */  lw         $a0, 0x10($s0)
/* AA284 800A9684 8D250000 */  lw         $a1, ($t1)
/* AA288 800A9688 252A0004 */  addiu      $t2, $t1, 4
/* AA28C 800A968C 0C02A448 */  jal        func_800A9120
/* AA290 800A9690 AFAA0024 */   sw        $t2, 0x24($sp)
/* AA294 800A9694 8E0B0010 */  lw         $t3, 0x10($s0)
/* AA298 800A9698 256C0004 */  addiu      $t4, $t3, 4
/* AA29C 800A969C AE0C0010 */  sw         $t4, 0x10($s0)
/* AA2A0 800A96A0 8FAE0028 */  lw         $t6, 0x28($sp)
/* AA2A4 800A96A4 01C08825 */  or         $s1, $t6, $zero
/* AA2A8 800A96A8 25CDFFFF */  addiu      $t5, $t6, -1
/* AA2AC 800A96AC 1620FFF3 */  bnez       $s1, .L800A967C
/* AA2B0 800A96B0 AFAD0028 */   sw        $t5, 0x28($sp)
.L800A96B4:
/* AA2B4 800A96B4 10000005 */  b          .L800A96CC
/* AA2B8 800A96B8 00000000 */   nop
.L800A96BC:
/* AA2BC 800A96BC 8E040010 */  lw         $a0, 0x10($s0)
/* AA2C0 800A96C0 26050018 */  addiu      $a1, $s0, 0x18
/* AA2C4 800A96C4 0C02A475 */  jal        func_800A91D4
/* AA2C8 800A96C8 8E060014 */   lw        $a2, 0x14($s0)
.L800A96CC:
/* AA2CC 800A96CC 920F0004 */  lbu        $t7, 4($s0)
/* AA2D0 800A96D0 A3AF0038 */  sb         $t7, 0x38($sp)
/* AA2D4 800A96D4 A7A0003A */  sh         $zero, 0x3a($sp)
/* AA2D8 800A96D8 8E18000C */  lw         $t8, 0xc($s0)
/* AA2DC 800A96DC AFB80040 */  sw         $t8, 0x40($sp)
/* AA2E0 800A96E0 27A40034 */  addiu      $a0, $sp, 0x34
/* AA2E4 800A96E4 24050010 */  addiu      $a1, $zero, 0x10
/* AA2E8 800A96E8 0C026833 */  jal        func_8009A0CC
/* AA2EC 800A96EC 24060001 */   addiu     $a2, $zero, 1
/* AA2F0 800A96F0 10000003 */  b          .L800A9700
/* AA2F4 800A96F4 00001025 */   or        $v0, $zero, $zero
/* AA2F8 800A96F8 10000001 */  b          .L800A9700
/* AA2FC 800A96FC 00000000 */   nop
.L800A9700:
/* AA300 800A9700 8FBF001C */  lw         $ra, 0x1c($sp)
/* AA304 800A9704 8FB00014 */  lw         $s0, 0x14($sp)
/* AA308 800A9708 8FB10018 */  lw         $s1, 0x18($sp)
/* AA30C 800A970C 03E00008 */  jr         $ra
/* AA310 800A9710 27BD0048 */   addiu     $sp, $sp, 0x48
