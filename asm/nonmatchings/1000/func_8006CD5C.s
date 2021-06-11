glabel func_8006CD5C
/* 6D95C 8006CD5C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6D960 8006CD60 000E7880 */  sll        $t7, $t6, 2
/* 6D964 8006CD64 01EE7823 */  subu       $t7, $t7, $t6
/* 6D968 8006CD68 000F7880 */  sll        $t7, $t7, 2
/* 6D96C 8006CD6C 01EE7821 */  addu       $t7, $t7, $t6
/* 6D970 8006CD70 000F7880 */  sll        $t7, $t7, 2
/* 6D974 8006CD74 01EE7823 */  subu       $t7, $t7, $t6
/* 6D978 8006CD78 3C18800F */  lui        $t8, %hi(gActors)
/* 6D97C 8006CD7C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6D980 8006CD80 000F78C0 */  sll        $t7, $t7, 3
/* 6D984 8006CD84 01F81821 */  addu       $v1, $t7, $t8
/* 6D988 8006CD88 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6D98C 8006CD8C AFA40000 */  sw         $a0, ($sp)
/* 6D990 8006CD90 30A20030 */  andi       $v0, $a1, 0x30
/* 6D994 8006CD94 1040000A */  beqz       $v0, .L8006CDC0
/* 6D998 8006CD98 24190001 */   addiu     $t9, $zero, 1
/* 6D99C 8006CD9C 24010010 */  addiu      $at, $zero, 0x10
/* 6D9A0 8006CDA0 1041000A */  beq        $v0, $at, .L8006CDCC
/* 6D9A4 8006CDA4 24010020 */   addiu     $at, $zero, 0x20
/* 6D9A8 8006CDA8 10410011 */  beq        $v0, $at, .L8006CDF0
/* 6D9AC 8006CDAC 24010030 */   addiu     $at, $zero, 0x30
/* 6D9B0 8006CDB0 10410018 */  beq        $v0, $at, .L8006CE14
/* 6D9B4 8006CDB4 240E0002 */   addiu     $t6, $zero, 2
/* 6D9B8 8006CDB8 1000001F */  b          .L8006CE38
/* 6D9BC 8006CDBC 946F0094 */   lhu       $t7, 0x94($v1)
.L8006CDC0:
/* 6D9C0 8006CDC0 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6D9C4 8006CDC4 1000001B */  b          .L8006CE34
/* 6D9C8 8006CDC8 A07900DF */   sb        $t9, 0xdf($v1)
.L8006CDCC:
/* 6D9CC 8006CDCC 94680094 */  lhu        $t0, 0x94($v1)
/* 6D9D0 8006CDD0 3C01800F */  lui        $at, %hi(D_800EC5C0)
/* 6D9D4 8006CDD4 35090001 */  ori        $t1, $t0, 1
/* 6D9D8 8006CDD8 A4690094 */  sh         $t1, 0x94($v1)
/* 6D9DC 8006CDDC C424C5C0 */  lwc1       $f4, %lo(D_800EC5C0)($at)
/* 6D9E0 8006CDE0 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6D9E4 8006CDE4 A06000DF */  sb         $zero, 0xdf($v1)
/* 6D9E8 8006CDE8 10000012 */  b          .L8006CE34
/* 6D9EC 8006CDEC E46400B4 */   swc1      $f4, 0xb4($v1)
.L8006CDF0:
/* 6D9F0 8006CDF0 946A0094 */  lhu        $t2, 0x94($v1)
/* 6D9F4 8006CDF4 3C01800F */  lui        $at, %hi(D_800EC5C4)
/* 6D9F8 8006CDF8 354B0001 */  ori        $t3, $t2, 1
/* 6D9FC 8006CDFC A46B0094 */  sh         $t3, 0x94($v1)
/* 6DA00 8006CE00 C426C5C4 */  lwc1       $f6, %lo(D_800EC5C4)($at)
/* 6DA04 8006CE04 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6DA08 8006CE08 A06000DF */  sb         $zero, 0xdf($v1)
/* 6DA0C 8006CE0C 10000009 */  b          .L8006CE34
/* 6DA10 8006CE10 E46600B4 */   swc1      $f6, 0xb4($v1)
.L8006CE14:
/* 6DA14 8006CE14 946C0094 */  lhu        $t4, 0x94($v1)
/* 6DA18 8006CE18 3C01800F */  lui        $at, %hi(D_800EC5C8)
/* 6DA1C 8006CE1C 358D0001 */  ori        $t5, $t4, 1
/* 6DA20 8006CE20 A46D0094 */  sh         $t5, 0x94($v1)
/* 6DA24 8006CE24 C428C5C8 */  lwc1       $f8, %lo(D_800EC5C8)($at)
/* 6DA28 8006CE28 946500D8 */  lhu        $a1, 0xd8($v1)
/* 6DA2C 8006CE2C A06E00DF */  sb         $t6, 0xdf($v1)
/* 6DA30 8006CE30 E46800B4 */  swc1       $f8, 0xb4($v1)
.L8006CE34:
/* 6DA34 8006CE34 946F0094 */  lhu        $t7, 0x94($v1)
.L8006CE38:
/* 6DA38 8006CE38 30B97000 */  andi       $t9, $a1, 0x7000
/* 6DA3C 8006CE3C C46A00B4 */  lwc1       $f10, 0xb4($v1)
/* 6DA40 8006CE40 3C0A800D */  lui        $t2, 0x800d
/* 6DA44 8006CE44 35F80200 */  ori        $t8, $t7, 0x200
/* 6DA48 8006CE48 A4780094 */  sh         $t8, 0x94($v1)
/* 6DA4C 8006CE4C E46A00B8 */  swc1       $f10, 0xb8($v1)
/* 6DA50 8006CE50 07210003 */  bgez       $t9, .L8006CE60
/* 6DA54 8006CE54 00194303 */   sra       $t0, $t9, 0xc
/* 6DA58 8006CE58 27210FFF */  addiu      $at, $t9, 0xfff
/* 6DA5C 8006CE5C 00014303 */  sra        $t0, $at, 0xc
.L8006CE60:
/* 6DA60 8006CE60 00084880 */  sll        $t1, $t0, 2
/* 6DA64 8006CE64 01495021 */  addu       $t2, $t2, $t1
/* 6DA68 8006CE68 8D4A18A4 */  lw         $t2, 0x18a4($t2)
/* 6DA6C 8006CE6C 03E00008 */  jr         $ra
/* 6DA70 8006CE70 AC6A018C */   sw        $t2, 0x18c($v1)
