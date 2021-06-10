glabel func_80055188
/* 55D88 80055188 308EFFFF */  andi       $t6, $a0, 0xffff
/* 55D8C 8005518C 24030198 */  addiu      $v1, $zero, 0x198
/* 55D90 80055190 01C30019 */  multu      $t6, $v1
/* 55D94 80055194 3C02800F */  lui        $v0, %hi(D_800EF510)
/* 55D98 80055198 2442F510 */  addiu      $v0, $v0, %lo(D_800EF510)
/* 55D9C 8005519C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 55DA0 800551A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 55DA4 800551A4 AFA40018 */  sw         $a0, 0x18($sp)
/* 55DA8 800551A8 01C02025 */  or         $a0, $t6, $zero
/* 55DAC 800551AC 00007812 */  mflo       $t7
/* 55DB0 800551B0 004FC021 */  addu       $t8, $v0, $t7
/* 55DB4 800551B4 970500D6 */  lhu        $a1, 0xd6($t8)
/* 55DB8 800551B8 00000000 */  nop
/* 55DBC 800551BC 00A30019 */  multu      $a1, $v1
/* 55DC0 800551C0 0000C812 */  mflo       $t9
/* 55DC4 800551C4 00594021 */  addu       $t0, $v0, $t9
/* 55DC8 800551C8 910900DE */  lbu        $t1, 0xde($t0)
/* 55DCC 800551CC 3C19800D */  lui        $t9, %hi(D_800D3EB0)
/* 55DD0 800551D0 00095080 */  sll        $t2, $t1, 2
/* 55DD4 800551D4 032AC821 */  addu       $t9, $t9, $t2
/* 55DD8 800551D8 8F393EB0 */  lw         $t9, %lo(D_800D3EB0)($t9)
/* 55DDC 800551DC 00000000 */  nop
/* 55DE0 800551E0 0320F809 */  jalr       $t9
/* 55DE4 800551E4 00000000 */   nop
/* 55DE8 800551E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 55DEC 800551EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 55DF0 800551F0 03E00008 */  jr         $ra
/* 55DF4 800551F4 00000000 */   nop
