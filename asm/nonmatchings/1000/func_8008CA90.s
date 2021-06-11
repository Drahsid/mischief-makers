glabel func_8008CA90
/* 8D690 8008CA90 3C02800D */  lui        $v0, %hi(D_800D294C)
/* 8D694 8008CA94 9442294C */  lhu        $v0, %lo(D_800D294C)($v0)
/* 8D698 8008CA98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D69C 8008CA9C 10400054 */  beqz       $v0, .L8008CBF0
/* 8D6A0 8008CAA0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 8D6A4 8008CAA4 304E8000 */  andi       $t6, $v0, 0x8000
/* 8D6A8 8008CAA8 15C00051 */  bnez       $t6, .L8008CBF0
/* 8D6AC 8008CAAC 240F0072 */   addiu     $t7, $zero, 0x72
/* 8D6B0 8008CAB0 3C01800F */  lui        $at, %hi(D_800F0F62)
/* 8D6B4 8008CAB4 A42F0F62 */  sh         $t7, %lo(D_800F0F62)($at)
/* 8D6B8 8008CAB8 0C0078B4 */  jal        func_8001E2D0
/* 8D6BC 8008CABC 24040010 */   addiu     $a0, $zero, 0x10
/* 8D6C0 8008CAC0 34188030 */  ori        $t8, $zero, 0x8030
/* 8D6C4 8008CAC4 44982000 */  mtc1       $t8, $f4
/* 8D6C8 8008CAC8 3C01800F */  lui        $at, %hi(D_800F0FA0)
/* 8D6CC 8008CACC 468021A0 */  cvt.s.w    $f6, $f4
/* 8D6D0 8008CAD0 3C05800F */  lui        $a1, 0x800f
/* 8D6D4 8008CAD4 24190004 */  addiu      $t9, $zero, 4
/* 8D6D8 8008CAD8 E4260FA0 */  swc1       $f6, %lo(D_800F0FA0)($at)
/* 8D6DC 8008CADC 3C01800F */  lui        $at, %hi(D_800F0F68)
/* 8D6E0 8008CAE0 A4200F68 */  sh         $zero, %lo(D_800F0F68)($at)
/* 8D6E4 8008CAE4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 8D6E8 8008CAE8 24A5F510 */  addiu      $a1, $a1, -0xaf0
/* 8D6EC 8008CAEC AC39E5F4 */  sw         $t9, %lo(D_800BE5F4)($at)
/* 8D6F0 8008CAF0 84A80088 */  lh         $t0, 0x88($a1)
/* 8D6F4 8008CAF4 3C01800F */  lui        $at, %hi(D_800F0F18)
/* 8D6F8 8008CAF8 A4280F18 */  sh         $t0, %lo(D_800F0F18)($at)
/* 8D6FC 8008CAFC 84A9008C */  lh         $t1, 0x8c($a1)
/* 8D700 8008CB00 3C01800F */  lui        $at, %hi(D_800F0F1C)
/* 8D704 8008CB04 A4290F1C */  sh         $t1, %lo(D_800F0F1C)($at)
/* 8D708 8008CB08 84AA00E0 */  lh         $t2, 0xe0($a1)
/* 8D70C 8008CB0C 3C01800F */  lui        $at, %hi(D_800F0F70)
/* 8D710 8008CB10 A42A0F70 */  sh         $t2, %lo(D_800F0F70)($at)
/* 8D714 8008CB14 3C01800F */  lui        $at, %hi(D_800F0F60)
/* 8D718 8008CB18 A4200F60 */  sh         $zero, %lo(D_800F0F60)($at)
/* 8D71C 8008CB1C 0C0237C8 */  jal        func_8008DF20
/* 8D720 8008CB20 24040010 */   addiu     $a0, $zero, 0x10
/* 8D724 8008CB24 3C0B800F */  lui        $t3, %hi(D_800F0F10)
/* 8D728 8008CB28 8D6B0F10 */  lw         $t3, %lo(D_800F0F10)($t3)
/* 8D72C 8008CB2C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8D730 8008CB30 01616024 */  and        $t4, $t3, $at
/* 8D734 8008CB34 3C05800F */  lui        $a1, %hi(gActors)
/* 8D738 8008CB38 3C01800F */  lui        $at, %hi(D_800F0F10)
/* 8D73C 8008CB3C 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 8D740 8008CB40 AC2C0F10 */  sw         $t4, %lo(D_800F0F10)($at)
/* 8D744 8008CB44 8CAD0080 */  lw         $t5, 0x80($a1)
/* 8D748 8008CB48 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D74C 8008CB4C 31AE0020 */  andi       $t6, $t5, 0x20
/* 8D750 8008CB50 018E7825 */  or         $t7, $t4, $t6
/* 8D754 8008CB54 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D758 8008CB58 AC2F0F10 */  sw         $t7, 0xf10($at)
/* 8D75C 8008CB5C 24010001 */  addiu      $at, $zero, 1
/* 8D760 8008CB60 10610009 */  beq        $v1, $at, .L8008CB88
/* 8D764 8008CB64 24010002 */   addiu     $at, $zero, 2
/* 8D768 8008CB68 1061000D */  beq        $v1, $at, .L8008CBA0
/* 8D76C 8008CB6C 24010003 */   addiu     $at, $zero, 3
/* 8D770 8008CB70 10610011 */  beq        $v1, $at, .L8008CBB8
/* 8D774 8008CB74 24010004 */   addiu     $at, $zero, 4
/* 8D778 8008CB78 10610015 */  beq        $v1, $at, .L8008CBD0
/* 8D77C 8008CB7C 00000000 */   nop
/* 8D780 8008CB80 10000019 */  b          .L8008CBE8
/* 8D784 8008CB84 34788000 */   ori       $t8, $v1, 0x8000
.L8008CB88:
/* 8D788 8008CB88 0C0233D8 */  jal        func_8008CF60
/* 8D78C 8008CB8C 24040010 */   addiu     $a0, $zero, 0x10
/* 8D790 8008CB90 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D794 8008CB94 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D798 8008CB98 10000013 */  b          .L8008CBE8
/* 8D79C 8008CB9C 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBA0:
/* 8D7A0 8008CBA0 0C02347A */  jal        func_8008D1E8
/* 8D7A4 8008CBA4 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7A8 8008CBA8 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7AC 8008CBAC 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7B0 8008CBB0 1000000D */  b          .L8008CBE8
/* 8D7B4 8008CBB4 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBB8:
/* 8D7B8 8008CBB8 0C0234AC */  jal        func_8008D2B0
/* 8D7BC 8008CBBC 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7C0 8008CBC0 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7C4 8008CBC4 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7C8 8008CBC8 10000007 */  b          .L8008CBE8
/* 8D7CC 8008CBCC 34788000 */   ori       $t8, $v1, 0x8000
.L8008CBD0:
/* 8D7D0 8008CBD0 0C0234C8 */  jal        func_8008D320
/* 8D7D4 8008CBD4 24040010 */   addiu     $a0, $zero, 0x10
/* 8D7D8 8008CBD8 3C03800D */  lui        $v1, %hi(D_800D294C)
/* 8D7DC 8008CBDC 9463294C */  lhu        $v1, %lo(D_800D294C)($v1)
/* 8D7E0 8008CBE0 00000000 */  nop
/* 8D7E4 8008CBE4 34788000 */  ori        $t8, $v1, 0x8000
.L8008CBE8:
/* 8D7E8 8008CBE8 3C01800D */  lui        $at, %hi(D_800D294C)
/* 8D7EC 8008CBEC A438294C */  sh         $t8, %lo(D_800D294C)($at)
.L8008CBF0:
/* 8D7F0 8008CBF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8D7F4 8008CBF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8D7F8 8008CBF8 03E00008 */  jr         $ra
/* 8D7FC 8008CBFC 00000000 */   nop
