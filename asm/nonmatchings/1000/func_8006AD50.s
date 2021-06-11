glabel func_8006AD50
/* 6B950 8006AD50 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6B954 8006AD54 000E7880 */  sll        $t7, $t6, 2
/* 6B958 8006AD58 01EE7823 */  subu       $t7, $t7, $t6
/* 6B95C 8006AD5C 000F7880 */  sll        $t7, $t7, 2
/* 6B960 8006AD60 01EE7821 */  addu       $t7, $t7, $t6
/* 6B964 8006AD64 000F7880 */  sll        $t7, $t7, 2
/* 6B968 8006AD68 01EE7823 */  subu       $t7, $t7, $t6
/* 6B96C 8006AD6C 3C18800F */  lui        $t8, %hi(gActors)
/* 6B970 8006AD70 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6B974 8006AD74 000F78C0 */  sll        $t7, $t7, 3
/* 6B978 8006AD78 01F81821 */  addu       $v1, $t7, $t8
/* 6B97C 8006AD7C 8C6500EC */  lw         $a1, 0xec($v1)
/* 6B980 8006AD80 AFA40000 */  sw         $a0, ($sp)
/* 6B984 8006AD84 04A1000C */  bgez       $a1, .L8006ADB8
/* 6B988 8006AD88 00000000 */   nop
/* 6B98C 8006AD8C 8C790098 */  lw         $t9, 0x98($v1)
/* 6B990 8006AD90 00054823 */  negu       $t1, $a1
/* 6B994 8006AD94 33280004 */  andi       $t0, $t9, 4
/* 6B998 8006AD98 11000007 */  beqz       $t0, .L8006ADB8
/* 6B99C 8006AD9C 24020002 */   addiu     $v0, $zero, 2
/* 6B9A0 8006ADA0 05210003 */  bgez       $t1, .L8006ADB0
/* 6B9A4 8006ADA4 00095043 */   sra       $t2, $t1, 1
/* 6B9A8 8006ADA8 25210001 */  addiu      $at, $t1, 1
/* 6B9AC 8006ADAC 00015043 */  sra        $t2, $at, 1
.L8006ADB0:
/* 6B9B0 8006ADB0 03E00008 */  jr         $ra
/* 6B9B4 8006ADB4 AC6A00EC */   sw        $t2, 0xec($v1)
.L8006ADB8:
/* 6B9B8 8006ADB8 18A0000D */  blez       $a1, .L8006ADF0
/* 6B9BC 8006ADBC 00001025 */   or        $v0, $zero, $zero
/* 6B9C0 8006ADC0 8C6B0098 */  lw         $t3, 0x98($v1)
/* 6B9C4 8006ADC4 00056823 */  negu       $t5, $a1
/* 6B9C8 8006ADC8 316C0008 */  andi       $t4, $t3, 8
/* 6B9CC 8006ADCC 11800007 */  beqz       $t4, .L8006ADEC
/* 6B9D0 8006ADD0 24020003 */   addiu     $v0, $zero, 3
/* 6B9D4 8006ADD4 05A10003 */  bgez       $t5, .L8006ADE4
/* 6B9D8 8006ADD8 000D7043 */   sra       $t6, $t5, 1
/* 6B9DC 8006ADDC 25A10001 */  addiu      $at, $t5, 1
/* 6B9E0 8006ADE0 00017043 */  sra        $t6, $at, 1
.L8006ADE4:
/* 6B9E4 8006ADE4 03E00008 */  jr         $ra
/* 6B9E8 8006ADE8 AC6E00EC */   sw        $t6, 0xec($v1)
.L8006ADEC:
/* 6B9EC 8006ADEC 00001025 */  or         $v0, $zero, $zero
.L8006ADF0:
/* 6B9F0 8006ADF0 03E00008 */  jr         $ra
/* 6B9F4 8006ADF4 00000000 */   nop
