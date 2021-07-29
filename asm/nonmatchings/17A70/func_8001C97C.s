glabel func_8001C97C
/* 1D57C 8001C97C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D580 8001C980 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D584 8001C984 AFA40028 */  sw         $a0, 0x28($sp)
/* 1D588 8001C988 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1D58C 8001C98C 0C0071FC */  jal        func_8001C7F0
/* 1D590 8001C990 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 1D594 8001C994 97A8002A */  lhu        $t0, 0x2a($sp)
/* 1D598 8001C998 14400002 */  bnez       $v0, .L8001C9A4
/* 1D59C 8001C99C 25040048 */   addiu     $a0, $t0, 0x48
/* 1D5A0 8001C9A0 10600023 */  beqz       $v1, .L8001CA30
.L8001C9A4:
/* 1D5A4 8001C9A4 0008C080 */   sll       $t8, $t0, 2
/* 1D5A8 8001C9A8 0308C021 */  addu       $t8, $t8, $t0
/* 1D5AC 8001C9AC 0018C080 */  sll        $t8, $t8, 2
/* 1D5B0 8001C9B0 24190034 */  addiu      $t9, $zero, 0x34
/* 1D5B4 8001C9B4 03383823 */  subu       $a3, $t9, $t8
/* 1D5B8 8001C9B8 30E9FFFF */  andi       $t1, $a3, 0xffff
/* 1D5BC 8001C9BC 308FFFFF */  andi       $t7, $a0, 0xffff
/* 1D5C0 8001C9C0 3C05800E */  lui        $a1, %hi(D_800E13DC)
/* 1D5C4 8001C9C4 340AFFFF */  ori        $t2, $zero, 0xffff
/* 1D5C8 8001C9C8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D5CC 8001C9CC 24A513DC */  addiu      $a1, $a1, %lo(D_800E13DC)
/* 1D5D0 8001C9D0 01E02025 */  or         $a0, $t7, $zero
/* 1D5D4 8001C9D4 01203825 */  or         $a3, $t1, $zero
/* 1D5D8 8001C9D8 01001825 */  or         $v1, $t0, $zero
/* 1D5DC 8001C9DC 2406006C */  addiu      $a2, $zero, 0x6c
/* 1D5E0 8001C9E0 0C009D44 */  jal        func_80027510
/* 1D5E4 8001C9E4 AFA80024 */   sw        $t0, 0x24($sp)
/* 1D5E8 8001C9E8 8FA30024 */  lw         $v1, 0x24($sp)
/* 1D5EC 8001C9EC 3C0C800F */  lui        $t4, 0x800f
/* 1D5F0 8001C9F0 00035880 */  sll        $t3, $v1, 2
/* 1D5F4 8001C9F4 01635823 */  subu       $t3, $t3, $v1
/* 1D5F8 8001C9F8 000B5880 */  sll        $t3, $t3, 2
/* 1D5FC 8001C9FC 01635821 */  addu       $t3, $t3, $v1
/* 1D600 8001CA00 000B5880 */  sll        $t3, $t3, 2
/* 1D604 8001CA04 01635823 */  subu       $t3, $t3, $v1
/* 1D608 8001CA08 000B58C0 */  sll        $t3, $t3, 3
/* 1D60C 8001CA0C 258CF510 */  addiu      $t4, $t4, -0xaf0
/* 1D610 8001CA10 016C1021 */  addu       $v0, $t3, $t4
/* 1D614 8001CA14 944D7354 */  lhu        $t5, 0x7354($v0)
/* 1D618 8001CA18 3C0F800E */  lui        $t7, %hi(D_800D8C78)
/* 1D61C 8001CA1C 25EF8C78 */  addiu      $t7, $t7, %lo(D_800D8C78)
/* 1D620 8001CA20 35AE0240 */  ori        $t6, $t5, 0x240
/* 1D624 8001CA24 A44E7354 */  sh         $t6, 0x7354($v0)
/* 1D628 8001CA28 1000000B */  b          .L8001CA58
/* 1D62C 8001CA2C AC4F744C */   sw        $t7, 0x744c($v0)
.L8001CA30:
/* 1D630 8001CA30 0008C880 */  sll        $t9, $t0, 2
/* 1D634 8001CA34 0328C823 */  subu       $t9, $t9, $t0
/* 1D638 8001CA38 0019C880 */  sll        $t9, $t9, 2
/* 1D63C 8001CA3C 0328C821 */  addu       $t9, $t9, $t0
/* 1D640 8001CA40 0019C880 */  sll        $t9, $t9, 2
/* 1D644 8001CA44 0328C823 */  subu       $t9, $t9, $t0
/* 1D648 8001CA48 0019C8C0 */  sll        $t9, $t9, 3
/* 1D64C 8001CA4C 3C01800F */  lui        $at, %hi(D_800F6850)
/* 1D650 8001CA50 00390821 */  addu       $at, $at, $t9
/* 1D654 8001CA54 AC206850 */  sw         $zero, %lo(D_800F6850)($at)
.L8001CA58:
/* 1D658 8001CA58 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1D65C 8001CA5C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1D660 8001CA60 03E00008 */  jr         $ra
/* 1D664 8001CA64 00000000 */   nop
