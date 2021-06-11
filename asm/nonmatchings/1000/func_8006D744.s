glabel func_8006D744
/* 6E344 8006D744 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6E348 8006D748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E34C 8006D74C AFA40018 */  sw         $a0, 0x18($sp)
/* 6E350 8006D750 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6E354 8006D754 01C02025 */  or         $a0, $t6, $zero
/* 6E358 8006D758 0C01B22E */  jal        func_8006C8B8
/* 6E35C 8006D75C A7AE001A */   sh        $t6, 0x1a($sp)
/* 6E360 8006D760 97A4001A */  lhu        $a0, 0x1a($sp)
/* 6E364 8006D764 14400020 */  bnez       $v0, .L8006D7E8
/* 6E368 8006D768 00047880 */   sll       $t7, $a0, 2
/* 6E36C 8006D76C 01E47823 */  subu       $t7, $t7, $a0
/* 6E370 8006D770 000F7880 */  sll        $t7, $t7, 2
/* 6E374 8006D774 01E47821 */  addu       $t7, $t7, $a0
/* 6E378 8006D778 000F7880 */  sll        $t7, $t7, 2
/* 6E37C 8006D77C 01E47823 */  subu       $t7, $t7, $a0
/* 6E380 8006D780 3C18800F */  lui        $t8, %hi(gActors)
/* 6E384 8006D784 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6E388 8006D788 000F78C0 */  sll        $t7, $t7, 3
/* 6E38C 8006D78C 01F81021 */  addu       $v0, $t7, $t8
/* 6E390 8006D790 944300D0 */  lhu        $v1, 0xd0($v0)
/* 6E394 8006D794 24010070 */  addiu      $at, $zero, 0x70
/* 6E398 8006D798 1461000A */  bne        $v1, $at, .L8006D7C4
/* 6E39C 8006D79C 24790001 */   addiu     $t9, $v1, 1
/* 6E3A0 8006D7A0 3C0140C0 */  lui        $at, 0x40c0
/* 6E3A4 8006D7A4 44812000 */  mtc1       $at, $f4
/* 6E3A8 8006D7A8 3C08800E */  lui        $t0, %hi(D_800E19C0)
/* 6E3AC 8006D7AC 250819C0 */  addiu      $t0, $t0, %lo(D_800E19C0)
/* 6E3B0 8006D7B0 24090001 */  addiu      $t1, $zero, 1
/* 6E3B4 8006D7B4 A45900D0 */  sh         $t9, 0xd0($v0)
/* 6E3B8 8006D7B8 A44900E6 */  sh         $t1, 0xe6($v0)
/* 6E3BC 8006D7BC AC4800E8 */  sw         $t0, 0xe8($v0)
/* 6E3C0 8006D7C0 E4440118 */  swc1       $f4, 0x118($v0)
.L8006D7C4:
/* 6E3C4 8006D7C4 844A00E6 */  lh         $t2, 0xe6($v0)
/* 6E3C8 8006D7C8 240B0060 */  addiu      $t3, $zero, 0x60
/* 6E3CC 8006D7CC 15400004 */  bnez       $t2, .L8006D7E0
/* 6E3D0 8006D7D0 3C013F80 */   lui       $at, 0x3f80
/* 6E3D4 8006D7D4 44813000 */  mtc1       $at, $f6
/* 6E3D8 8006D7D8 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 6E3DC 8006D7DC E446013C */  swc1       $f6, 0x13c($v0)
.L8006D7E0:
/* 6E3E0 8006D7E0 0C01A786 */  jal        func_80069E18
/* 6E3E4 8006D7E4 00000000 */   nop
.L8006D7E8:
/* 6E3E8 8006D7E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E3EC 8006D7EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6E3F0 8006D7F0 03E00008 */  jr         $ra
/* 6E3F4 8006D7F4 00000000 */   nop
