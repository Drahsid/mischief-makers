glabel func_8004A960
/* 4B560 8004A960 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4B564 8004A964 000E7880 */  sll        $t7, $t6, 2
/* 4B568 8004A968 01EE7823 */  subu       $t7, $t7, $t6
/* 4B56C 8004A96C 000F7880 */  sll        $t7, $t7, 2
/* 4B570 8004A970 01EE7821 */  addu       $t7, $t7, $t6
/* 4B574 8004A974 000F7880 */  sll        $t7, $t7, 2
/* 4B578 8004A978 01EE7823 */  subu       $t7, $t7, $t6
/* 4B57C 8004A97C 3C18800F */  lui        $t8, %hi(gActors)
/* 4B580 8004A980 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4B584 8004A984 000F78C0 */  sll        $t7, $t7, 3
/* 4B588 8004A988 01F81021 */  addu       $v0, $t7, $t8
/* 4B58C 8004A98C 9059012E */  lbu        $t9, 0x12e($v0)
/* 4B590 8004A990 3C058013 */  lui        $a1, 0x8013
/* 4B594 8004A994 3C038013 */  lui        $v1, %hi(D_80137460)
/* 4B598 8004A998 37280041 */  ori        $t0, $t9, 0x41
/* 4B59C 8004A99C AFA40000 */  sw         $a0, ($sp)
/* 4B5A0 8004A9A0 A048012E */  sb         $t0, 0x12e($v0)
/* 4B5A4 8004A9A4 24637460 */  addiu      $v1, $v1, %lo(D_80137460)
/* 4B5A8 8004A9A8 24A573E0 */  addiu      $a1, $a1, 0x73e0
.L8004A9AC:
/* 4B5AC 8004A9AC 24A50010 */  addiu      $a1, $a1, 0x10
/* 4B5B0 8004A9B0 ACA0FFF4 */  sw         $zero, -0xc($a1)
/* 4B5B4 8004A9B4 ACA0FFF8 */  sw         $zero, -8($a1)
/* 4B5B8 8004A9B8 ACA0FFFC */  sw         $zero, -4($a1)
/* 4B5BC 8004A9BC 14A3FFFB */  bne        $a1, $v1, .L8004A9AC
/* 4B5C0 8004A9C0 ACA0FFF0 */   sw        $zero, -0x10($a1)
/* 4B5C4 8004A9C4 3C013F80 */  lui        $at, 0x3f80
/* 4B5C8 8004A9C8 44810000 */  mtc1       $at, $f0
/* 4B5CC 8004A9CC 8C4D0080 */  lw         $t5, 0x80($v0)
/* 4B5D0 8004A9D0 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 4B5D4 8004A9D4 3C010801 */  lui        $at, 0x801
/* 4B5D8 8004A9D8 944B0094 */  lhu        $t3, 0x94($v0)
/* 4B5DC 8004A9DC 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 4B5E0 8004A9E0 34211103 */  ori        $at, $at, 0x1103
/* 4B5E4 8004A9E4 31AE0020 */  andi       $t6, $t5, 0x20
/* 4B5E8 8004A9E8 24040001 */  addiu      $a0, $zero, 1
/* 4B5EC 8004A9EC 24090064 */  addiu      $t1, $zero, 0x64
/* 4B5F0 8004A9F0 3C0A800D */  lui        $t2, %hi(D_800D54EC)
/* 4B5F4 8004A9F4 01C1C025 */  or         $t8, $t6, $at
/* 4B5F8 8004A9F8 A0600013 */  sb         $zero, 0x13($v1)
/* 4B5FC 8004A9FC A0690012 */  sb         $t1, 0x12($v1)
/* 4B600 8004AA00 254A54EC */  addiu      $t2, $t2, %lo(D_800D54EC)
/* 4B604 8004AA04 AC4E0080 */  sw         $t6, 0x80($v0)
/* 4B608 8004AA08 356C0501 */  ori        $t4, $t3, 0x501
/* 4B60C 8004AA0C A4400142 */  sh         $zero, 0x142($v0)
/* 4B610 8004AA10 A0400141 */  sb         $zero, 0x141($v0)
/* 4B614 8004AA14 AC400180 */  sw         $zero, 0x180($v0)
/* 4B618 8004AA18 A040012F */  sb         $zero, 0x12f($v0)
/* 4B61C 8004AA1C AC4A00E8 */  sw         $t2, 0xe8($v0)
/* 4B620 8004AA20 AC4000F4 */  sw         $zero, 0xf4($v0)
/* 4B624 8004AA24 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 4B628 8004AA28 AC4000EC */  sw         $zero, 0xec($v0)
/* 4B62C 8004AA2C A44C0094 */  sh         $t4, 0x94($v0)
/* 4B630 8004AA30 AC580080 */  sw         $t8, 0x80($v0)
/* 4B634 8004AA34 A04400DE */  sb         $a0, 0xde($v0)
/* 4B638 8004AA38 A04400DF */  sb         $a0, 0xdf($v0)
/* 4B63C 8004AA3C AC40017C */  sw         $zero, 0x17c($v0)
/* 4B640 8004AA40 3C01800F */  lui        $at, %hi(gActors+0x120)
/* 4B644 8004AA44 E4400124 */  swc1       $f0, 0x124($v0)
/* 4B648 8004AA48 E4400128 */  swc1       $f0, 0x128($v0)
/* 4B64C 8004AA4C 24190001 */  addiu      $t9, $zero, 1
/* 4B650 8004AA50 24080003 */  addiu      $t0, $zero, 3
/* 4B654 8004AA54 E420F630 */  swc1       $f0, %lo(gActors+0x120)($at)
/* 4B658 8004AA58 AC590170 */  sw         $t9, 0x170($v0)
/* 4B65C 8004AA5C 03E00008 */  jr         $ra
/* 4B660 8004AA60 A44800D0 */   sh        $t0, 0xd0($v0)
