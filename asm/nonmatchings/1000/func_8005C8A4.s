glabel func_8005C8A4
/* 5D4A4 8005C8A4 3C05800C */  lui        $a1, %hi(D_800BE590)
/* 5D4A8 8005C8A8 24A5E590 */  addiu      $a1, $a1, %lo(D_800BE590)
/* 5D4AC 8005C8AC 84A30000 */  lh         $v1, ($a1)
/* 5D4B0 8005C8B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D4B4 8005C8B4 14600005 */  bnez       $v1, .L8005C8CC
/* 5D4B8 8005C8B8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 5D4BC 8005C8BC 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D4C0 8005C8C0 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D4C4 8005C8C4 10000057 */  b          .L8005CA24
/* 5D4C8 8005C8C8 A4C00000 */   sh        $zero, ($a2)
.L8005C8CC:
/* 5D4CC 8005C8CC 306E0001 */  andi       $t6, $v1, 1
/* 5D4D0 8005C8D0 15C0000D */  bnez       $t6, .L8005C908
/* 5D4D4 8005C8D4 2468FFFF */   addiu     $t0, $v1, -1
/* 5D4D8 8005C8D8 3C07800C */  lui        $a3, %hi(D_800BE59C)
/* 5D4DC 8005C8DC 24E7E59C */  addiu      $a3, $a3, %lo(D_800BE59C)
/* 5D4E0 8005C8E0 8CE20000 */  lw         $v0, ($a3)
/* 5D4E4 8005C8E4 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D4E8 8005C8E8 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D4EC 8005C8EC 04410004 */  bgez       $v0, .L8005C900
/* 5D4F0 8005C8F0 00027C03 */   sra       $t7, $v0, 0x10
/* 5D4F4 8005C8F4 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D4F8 8005C8F8 00220821 */  addu       $at, $at, $v0
/* 5D4FC 8005C8FC 00017C03 */  sra        $t7, $at, 0x10
.L8005C900:
/* 5D500 8005C900 1000000D */  b          .L8005C938
/* 5D504 8005C904 A4CF0000 */   sh        $t7, ($a2)
.L8005C908:
/* 5D508 8005C908 3C07800C */  lui        $a3, %hi(D_800BE59C)
/* 5D50C 8005C90C 24E7E59C */  addiu      $a3, $a3, %lo(D_800BE59C)
/* 5D510 8005C910 8CE20000 */  lw         $v0, ($a3)
/* 5D514 8005C914 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D518 8005C918 0002C023 */  negu       $t8, $v0
/* 5D51C 8005C91C 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D520 8005C920 07010004 */  bgez       $t8, .L8005C934
/* 5D524 8005C924 0018CC03 */   sra       $t9, $t8, 0x10
/* 5D528 8005C928 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D52C 8005C92C 00380821 */  addu       $at, $at, $t8
/* 5D530 8005C930 0001CC03 */  sra        $t9, $at, 0x10
.L8005C934:
/* 5D534 8005C934 A4D90000 */  sh         $t9, ($a2)
.L8005C938:
/* 5D538 8005C938 A4A80000 */  sh         $t0, ($a1)
/* 5D53C 8005C93C 3C04800C */  lui        $a0, %hi(D_800BE598)
/* 5D540 8005C940 8484E598 */  lh         $a0, %lo(D_800BE598)($a0)
/* 5D544 8005C944 24010001 */  addiu      $at, $zero, 1
/* 5D548 8005C948 10810008 */  beq        $a0, $at, .L8005C96C
/* 5D54C 8005C94C 24010002 */   addiu     $at, $zero, 2
/* 5D550 8005C950 10810011 */  beq        $a0, $at, .L8005C998
/* 5D554 8005C954 3C09800C */   lui       $t1, %hi(D_800BE5A0)
/* 5D558 8005C958 8D29E5A0 */  lw         $t1, %lo(D_800BE5A0)($t1)
/* 5D55C 8005C95C 00000000 */  nop
/* 5D560 8005C960 00495023 */  subu       $t2, $v0, $t1
/* 5D564 8005C964 1000001B */  b          .L8005C9D4
/* 5D568 8005C968 ACEA0000 */   sw        $t2, ($a3)
.L8005C96C:
/* 5D56C 8005C96C 84AB0000 */  lh         $t3, ($a1)
/* 5D570 8005C970 3C0D800C */  lui        $t5, %hi(D_800BE5A0)
/* 5D574 8005C974 316C0001 */  andi       $t4, $t3, 1
/* 5D578 8005C978 15800016 */  bnez       $t4, .L8005C9D4
/* 5D57C 8005C97C 00000000 */   nop
/* 5D580 8005C980 8DADE5A0 */  lw         $t5, %lo(D_800BE5A0)($t5)
/* 5D584 8005C984 00000000 */  nop
/* 5D588 8005C988 000D7040 */  sll        $t6, $t5, 1
/* 5D58C 8005C98C 004E7823 */  subu       $t7, $v0, $t6
/* 5D590 8005C990 10000010 */  b          .L8005C9D4
/* 5D594 8005C994 ACEF0000 */   sw        $t7, ($a3)
.L8005C998:
/* 5D598 8005C998 84B80000 */  lh         $t8, ($a1)
/* 5D59C 8005C99C 00000000 */  nop
/* 5D5A0 8005C9A0 33190002 */  andi       $t9, $t8, 2
/* 5D5A4 8005C9A4 1720000B */  bnez       $t9, .L8005C9D4
/* 5D5A8 8005C9A8 00000000 */   nop
/* 5D5AC 8005C9AC 04410004 */  bgez       $v0, .L8005C9C0
/* 5D5B0 8005C9B0 00022403 */   sra       $a0, $v0, 0x10
/* 5D5B4 8005C9B4 3401FFFF */  ori        $at, $zero, 0xffff
/* 5D5B8 8005C9B8 00220821 */  addu       $at, $at, $v0
/* 5D5BC 8005C9BC 00012403 */  sra        $a0, $at, 0x10
.L8005C9C0:
/* 5D5C0 8005C9C0 0C0171C2 */  jal        func_8005C708
/* 5D5C4 8005C9C4 00000000 */   nop
/* 5D5C8 8005C9C8 3C06800C */  lui        $a2, %hi(D_800BE594)
/* 5D5CC 8005C9CC 24C6E594 */  addiu      $a2, $a2, %lo(D_800BE594)
/* 5D5D0 8005C9D0 A4C20000 */  sh         $v0, ($a2)
.L8005C9D4:
/* 5D5D4 8005C9D4 3C08800C */  lui        $t0, %hi(D_800BE5D0)
/* 5D5D8 8005C9D8 9509E5D0 */  lhu        $t1, %lo(D_800BE5D0)($t0)
/* 5D5DC 8005C9DC 3C02800D */  lui        $v0, %hi(D_800CCC78)
/* 5D5E0 8005C9E0 00095100 */  sll        $t2, $t1, 4
/* 5D5E4 8005C9E4 004A1021 */  addu       $v0, $v0, $t2
/* 5D5E8 8005C9E8 8442CC78 */  lh         $v0, %lo(D_800CCC78)($v0)
/* 5D5EC 8005C9EC 24010001 */  addiu      $at, $zero, 1
/* 5D5F0 8005C9F0 14410005 */  bne        $v0, $at, .L8005CA08
/* 5D5F4 8005C9F4 24010002 */   addiu     $at, $zero, 2
/* 5D5F8 8005C9F8 84CB0000 */  lh         $t3, ($a2)
/* 5D5FC 8005C9FC 00000000 */  nop
/* 5D600 8005CA00 05600007 */  bltz       $t3, .L8005CA20
/* 5D604 8005CA04 24010002 */   addiu     $at, $zero, 2
.L8005CA08:
/* 5D608 8005CA08 14410007 */  bne        $v0, $at, .L8005CA28
/* 5D60C 8005CA0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5D610 8005CA10 84CC0000 */  lh         $t4, ($a2)
/* 5D614 8005CA14 00000000 */  nop
/* 5D618 8005CA18 19800003 */  blez       $t4, .L8005CA28
/* 5D61C 8005CA1C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005CA20:
/* 5D620 8005CA20 A4C00000 */  sh         $zero, ($a2)
.L8005CA24:
/* 5D624 8005CA24 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005CA28:
/* 5D628 8005CA28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D62C 8005CA2C 03E00008 */  jr         $ra
/* 5D630 8005CA30 00000000 */   nop
