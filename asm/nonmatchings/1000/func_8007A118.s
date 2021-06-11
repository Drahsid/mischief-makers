glabel func_8007A118
/* 7AD18 8007A118 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 7AD1C 8007A11C 24060198 */  addiu      $a2, $zero, 0x198
/* 7AD20 8007A120 01E60019 */  multu      $t7, $a2
/* 7AD24 8007A124 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7AD28 8007A128 3C03800F */  lui        $v1, %hi(gActors)
/* 7AD2C 8007A12C 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 7AD30 8007A130 24192601 */  addiu      $t9, $zero, 0x2601
/* 7AD34 8007A134 3C0CFFFE */  lui        $t4, 0xfffe
/* 7AD38 8007A138 3C0D0001 */  lui        $t5, 1
/* 7AD3C 8007A13C AFA40000 */  sw         $a0, ($sp)
/* 7AD40 8007A140 AFA50004 */  sw         $a1, 4($sp)
/* 7AD44 8007A144 358C4000 */  ori        $t4, $t4, 0x4000
/* 7AD48 8007A148 35ADC000 */  ori        $t5, $t5, 0xc000
/* 7AD4C 8007A14C 0000C012 */  mflo       $t8
/* 7AD50 8007A150 00781021 */  addu       $v0, $v1, $t8
/* 7AD54 8007A154 A45900D2 */  sh         $t9, 0xd2($v0)
/* 7AD58 8007A158 01C60019 */  multu      $t6, $a2
/* 7AD5C 8007A15C 3C0EFFFE */  lui        $t6, 0xfffe
/* 7AD60 8007A160 00004012 */  mflo       $t0
/* 7AD64 8007A164 00684821 */  addu       $t1, $v1, $t0
/* 7AD68 8007A168 8D2A0080 */  lw         $t2, 0x80($t1)
/* 7AD6C 8007A16C 00000000 */  nop
/* 7AD70 8007A170 314B0020 */  andi       $t3, $t2, 0x20
/* 7AD74 8007A174 11600003 */  beqz       $t3, .L8007A184
/* 7AD78 8007A178 00000000 */   nop
/* 7AD7C 8007A17C 10000002 */  b          .L8007A188
/* 7AD80 8007A180 AC4C00EC */   sw        $t4, 0xec($v0)
.L8007A184:
/* 7AD84 8007A184 AC4D00EC */  sw         $t5, 0xec($v0)
.L8007A188:
/* 7AD88 8007A188 03E00008 */  jr         $ra
/* 7AD8C 8007A18C AC4E00F0 */   sw        $t6, 0xf0($v0)
