glabel func_80045610
/* 46210 80045610 308EFFFF */  andi       $t6, $a0, 0xffff
/* 46214 80045614 30A3FFFF */  andi       $v1, $a1, 0xffff
/* 46218 80045618 AFA40000 */  sw         $a0, ($sp)
/* 4621C 8004561C 01C3082A */  slt        $at, $t6, $v1
/* 46220 80045620 01C02025 */  or         $a0, $t6, $zero
/* 46224 80045624 AFA50004 */  sw         $a1, 4($sp)
/* 46228 80045628 1020001E */  beqz       $at, .L800456A4
/* 4622C 8004562C 00001025 */   or        $v0, $zero, $zero
/* 46230 80045630 3C09800D */  lui        $t1, %hi(D_800D36FC)
/* 46234 80045634 3C07800F */  lui        $a3, %hi(gActors)
/* 46238 80045638 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 4623C 8004563C 252936FC */  addiu      $t1, $t1, %lo(D_800D36FC)
/* 46240 80045640 24080198 */  addiu      $t0, $zero, 0x198
.L80045644:
/* 46244 80045644 00880019 */  multu      $a0, $t0
/* 46248 80045648 0000C012 */  mflo       $t8
/* 4624C 8004564C 00F82821 */  addu       $a1, $a3, $t8
/* 46250 80045650 8CA60080 */  lw         $a2, 0x80($a1)
/* 46254 80045654 00000000 */  nop
/* 46258 80045658 30D90002 */  andi       $t9, $a2, 2
/* 4625C 8004565C 1320000C */  beqz       $t9, .L80045690
/* 46260 80045660 00000000 */   nop
/* 46264 80045664 84AA00E0 */  lh         $t2, 0xe0($a1)
/* 46268 80045668 30CB0400 */  andi       $t3, $a2, 0x400
/* 4626C 8004566C 11400008 */  beqz       $t2, .L80045690
/* 46270 80045670 00000000 */   nop
/* 46274 80045674 11600006 */  beqz       $t3, .L80045690
/* 46278 80045678 00026040 */   sll       $t4, $v0, 1
/* 4627C 8004567C 24420001 */  addiu      $v0, $v0, 1
/* 46280 80045680 012C6821 */  addu       $t5, $t1, $t4
/* 46284 80045684 304EFFFF */  andi       $t6, $v0, 0xffff
/* 46288 80045688 A5A40000 */  sh         $a0, ($t5)
/* 4628C 8004568C 01C01025 */  or         $v0, $t6, $zero
.L80045690:
/* 46290 80045690 24840001 */  addiu      $a0, $a0, 1
/* 46294 80045694 308FFFFF */  andi       $t7, $a0, 0xffff
/* 46298 80045698 01E3082A */  slt        $at, $t7, $v1
/* 4629C 8004569C 1420FFE9 */  bnez       $at, .L80045644
/* 462A0 800456A0 01E02025 */   or        $a0, $t7, $zero
.L800456A4:
/* 462A4 800456A4 3C09800D */  lui        $t1, %hi(D_800D36FC)
/* 462A8 800456A8 28410010 */  slti       $at, $v0, 0x10
/* 462AC 800456AC 10200009 */  beqz       $at, .L800456D4
/* 462B0 800456B0 252936FC */   addiu     $t1, $t1, %lo(D_800D36FC)
.L800456B4:
/* 462B4 800456B4 0002C040 */  sll        $t8, $v0, 1
/* 462B8 800456B8 24420001 */  addiu      $v0, $v0, 1
/* 462BC 800456BC 304AFFFF */  andi       $t2, $v0, 0xffff
/* 462C0 800456C0 29410010 */  slti       $at, $t2, 0x10
/* 462C4 800456C4 0138C821 */  addu       $t9, $t1, $t8
/* 462C8 800456C8 01401025 */  or         $v0, $t2, $zero
/* 462CC 800456CC 1420FFF9 */  bnez       $at, .L800456B4
/* 462D0 800456D0 A7200000 */   sh        $zero, ($t9)
.L800456D4:
/* 462D4 800456D4 03E00008 */  jr         $ra
/* 462D8 800456D8 00000000 */   nop
