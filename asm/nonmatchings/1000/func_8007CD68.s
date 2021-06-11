glabel func_8007CD68
/* 7D968 8007CD68 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7D96C 8007CD6C 000E7880 */  sll        $t7, $t6, 2
/* 7D970 8007CD70 01EE7823 */  subu       $t7, $t7, $t6
/* 7D974 8007CD74 000F7880 */  sll        $t7, $t7, 2
/* 7D978 8007CD78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D97C 8007CD7C 01EE7821 */  addu       $t7, $t7, $t6
/* 7D980 8007CD80 000F7880 */  sll        $t7, $t7, 2
/* 7D984 8007CD84 01EE7823 */  subu       $t7, $t7, $t6
/* 7D988 8007CD88 3C18800F */  lui        $t8, %hi(gActors)
/* 7D98C 8007CD8C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 7D990 8007CD90 000F78C0 */  sll        $t7, $t7, 3
/* 7D994 8007CD94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7D998 8007CD98 AFA40020 */  sw         $a0, 0x20($sp)
/* 7D99C 8007CD9C 01F81021 */  addu       $v0, $t7, $t8
/* 7D9A0 8007CDA0 24190029 */  addiu      $t9, $zero, 0x29
/* 7D9A4 8007CDA4 01C02025 */  or         $a0, $t6, $zero
/* 7D9A8 8007CDA8 AFA50024 */  sw         $a1, 0x24($sp)
/* 7D9AC 8007CDAC AFA60028 */  sw         $a2, 0x28($sp)
/* 7D9B0 8007CDB0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 7D9B4 8007CDB4 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7D9B8 8007CDB8 0C0078B4 */  jal        func_8001E2D0
/* 7D9BC 8007CDBC AFA2001C */   sw        $v0, 0x1c($sp)
/* 7D9C0 8007CDC0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 7D9C4 8007CDC4 97AE0036 */  lhu        $t6, 0x36($sp)
/* 7D9C8 8007CDC8 87A9002A */  lh         $t1, 0x2a($sp)
/* 7D9CC 8007CDCC 87AA002E */  lh         $t2, 0x2e($sp)
/* 7D9D0 8007CDD0 97AB0032 */  lhu        $t3, 0x32($sp)
/* 7D9D4 8007CDD4 97AC0026 */  lhu        $t4, 0x26($sp)
/* 7D9D8 8007CDD8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 7D9DC 8007CDDC 448E2000 */  mtc1       $t6, $f4
/* 7D9E0 8007CDE0 2408000A */  addiu      $t0, $zero, 0xa
/* 7D9E4 8007CDE4 AC480080 */  sw         $t0, 0x80($v0)
/* 7D9E8 8007CDE8 A4490088 */  sh         $t1, 0x88($v0)
/* 7D9EC 8007CDEC A44A008C */  sh         $t2, 0x8c($v0)
/* 7D9F0 8007CDF0 AC4B0150 */  sw         $t3, 0x150($v0)
/* 7D9F4 8007CDF4 AC4C0154 */  sw         $t4, 0x154($v0)
/* 7D9F8 8007CDF8 AC4D015C */  sw         $t5, 0x15c($v0)
/* 7D9FC 8007CDFC 05C10005 */  bgez       $t6, .L8007CE14
/* 7DA00 8007CE00 468021A0 */   cvt.s.w   $f6, $f4
/* 7DA04 8007CE04 3C014F80 */  lui        $at, 0x4f80
/* 7DA08 8007CE08 44814000 */  mtc1       $at, $f8
/* 7DA0C 8007CE0C 00000000 */  nop
/* 7DA10 8007CE10 46083180 */  add.s      $f6, $f6, $f8
.L8007CE14:
/* 7DA14 8007CE14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7DA18 8007CE18 E446014C */  swc1       $f6, 0x14c($v0)
/* 7DA1C 8007CE1C 03E00008 */  jr         $ra
/* 7DA20 8007CE20 27BD0020 */   addiu     $sp, $sp, 0x20
