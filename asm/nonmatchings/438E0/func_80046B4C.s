glabel func_80046B4C
/* 4774C 80046B4C 3C04800D */  lui        $a0, %hi(D_800D2938)
/* 47750 80046B50 24842938 */  addiu      $a0, $a0, %lo(D_800D2938)
/* 47754 80046B54 8C830000 */  lw         $v1, ($a0)
/* 47758 80046B58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4775C 80046B5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 47760 80046B60 1060000B */  beqz       $v1, .L80046B90
/* 47764 80046B64 00601025 */   or        $v0, $v1, $zero
/* 47768 80046B68 24010001 */  addiu      $at, $zero, 1
/* 4776C 80046B6C 10410019 */  beq        $v0, $at, .L80046BD4
/* 47770 80046B70 24010002 */   addiu     $at, $zero, 2
/* 47774 80046B74 10410043 */  beq        $v0, $at, .L80046C84
/* 47778 80046B78 3C078010 */   lui       $a3, 0x8010
/* 4777C 80046B7C 24010003 */  addiu      $at, $zero, 3
/* 47780 80046B80 10410068 */  beq        $v0, $at, .L80046D24
/* 47784 80046B84 00000000 */   nop
/* 47788 80046B88 10000070 */  b          .L80046D4C
/* 4778C 80046B8C 00001025 */   or        $v0, $zero, $zero
.L80046B90:
/* 47790 80046B90 3C02800D */  lui        $v0, %hi(D_800D293C)
/* 47794 80046B94 2442293C */  addiu      $v0, $v0, %lo(D_800D293C)
/* 47798 80046B98 246E0001 */  addiu      $t6, $v1, 1
/* 4779C 80046B9C 240F0014 */  addiu      $t7, $zero, 0x14
/* 477A0 80046BA0 AC8E0000 */  sw         $t6, ($a0)
/* 477A4 80046BA4 0C011A8C */  jal        func_80046A30
/* 477A8 80046BA8 AC4F0000 */   sw        $t7, ($v0)
/* 477AC 80046BAC 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 477B0 80046BB0 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 477B4 80046BB4 8C580000 */  lw         $t8, ($v0)
/* 477B8 80046BB8 2401FFF7 */  addiu      $at, $zero, -9
/* 477BC 80046BBC 37190004 */  ori        $t9, $t8, 4
/* 477C0 80046BC0 3C04800D */  lui        $a0, %hi(D_800D2938)
/* 477C4 80046BC4 AC590000 */  sw         $t9, ($v0)
/* 477C8 80046BC8 03217824 */  and        $t7, $t9, $at
/* 477CC 80046BCC 24842938 */  addiu      $a0, $a0, %lo(D_800D2938)
/* 477D0 80046BD0 AC4F0000 */  sw         $t7, ($v0)
.L80046BD4:
/* 477D4 80046BD4 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 477D8 80046BD8 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 477DC 80046BDC 8C580000 */  lw         $t8, ($v0)
/* 477E0 80046BE0 00001825 */  or         $v1, $zero, $zero
/* 477E4 80046BE4 33190004 */  andi       $t9, $t8, 4
/* 477E8 80046BE8 17200057 */  bnez       $t9, .L80046D48
/* 477EC 80046BEC 3C0D800E */   lui       $t5, 0x800e
/* 477F0 80046BF0 8C8E0000 */  lw         $t6, ($a0)
/* 477F4 80046BF4 3C0C800D */  lui        $t4, 0x800d
/* 477F8 80046BF8 3C078010 */  lui        $a3, %hi(D_80104098)
/* 477FC 80046BFC 25CF0001 */  addiu      $t7, $t6, 1
/* 47800 80046C00 44800000 */  mtc1       $zero, $f0
/* 47804 80046C04 AC8F0000 */  sw         $t7, ($a0)
/* 47808 80046C08 24E74098 */  addiu      $a3, $a3, %lo(D_80104098)
/* 4780C 80046C0C 258C38B8 */  addiu      $t4, $t4, 0x38b8
/* 47810 80046C10 25AD82DC */  addiu      $t5, $t5, -0x7d24
/* 47814 80046C14 00002825 */  or         $a1, $zero, $zero
/* 47818 80046C18 240B00FF */  addiu      $t3, $zero, 0xff
/* 4781C 80046C1C 240A02D0 */  addiu      $t2, $zero, 0x2d0
/* 47820 80046C20 24090203 */  addiu      $t1, $zero, 0x203
/* 47824 80046C24 24080023 */  addiu      $t0, $zero, 0x23
/* 47828 80046C28 240600A0 */  addiu      $a2, $zero, 0xa0
.L80046C2C:
/* 4782C 80046C2C 00660019 */  multu      $v1, $a2
/* 47830 80046C30 00057080 */  sll        $t6, $a1, 2
/* 47834 80046C34 018E2021 */  addu       $a0, $t4, $t6
/* 47838 80046C38 848F0000 */  lh         $t7, ($a0)
/* 4783C 80046C3C 24630001 */  addiu      $v1, $v1, 1
/* 47840 80046C40 3065FFFF */  andi       $a1, $v1, 0xffff
/* 47844 80046C44 00A01825 */  or         $v1, $a1, $zero
/* 47848 80046C48 0000C012 */  mflo       $t8
/* 4784C 80046C4C 00F81021 */  addu       $v0, $a3, $t8
/* 47850 80046C50 84980002 */  lh         $t8, 2($a0)
/* 47854 80046C54 A4490080 */  sh         $t1, 0x80($v0)
/* 47858 80046C58 27190002 */  addiu      $t9, $t8, 2
/* 4785C 80046C5C AC4D0098 */  sw         $t5, 0x98($v0)
/* 47860 80046C60 A44A0082 */  sh         $t2, 0x82($v0)
/* 47864 80046C64 A04B0094 */  sb         $t3, 0x94($v0)
/* 47868 80046C68 A4590088 */  sh         $t9, 0x88($v0)
/* 4786C 80046C6C E440008C */  swc1       $f0, 0x8c($v0)
/* 47870 80046C70 E4400090 */  swc1       $f0, 0x90($v0)
/* 47874 80046C74 1505FFED */  bne        $t0, $a1, .L80046C2C
/* 47878 80046C78 A44F0084 */   sh        $t7, 0x84($v0)
/* 4787C 80046C7C 10000033 */  b          .L80046D4C
/* 47880 80046C80 00001025 */   or        $v0, $zero, $zero
.L80046C84:
/* 47884 80046C84 24E74098 */  addiu      $a3, $a3, 0x4098
/* 47888 80046C88 3C014040 */  lui        $at, 0x4040
/* 4788C 80046C8C 44817000 */  mtc1       $at, $f14
/* 47890 80046C90 C4EC008C */  lwc1       $f12, 0x8c($a3)
/* 47894 80046C94 3C063E19 */  lui        $a2, 0x3e19
/* 47898 80046C98 0C00A618 */  jal        func_80029860
/* 4789C 80046C9C 34C6999A */   ori       $a2, $a2, 0x999a
/* 478A0 80046CA0 3C078010 */  lui        $a3, %hi(D_80104098)
/* 478A4 80046CA4 24E74098 */  addiu      $a3, $a3, %lo(D_80104098)
/* 478A8 80046CA8 3C04800D */  lui        $a0, %hi(D_800D2938)
/* 478AC 80046CAC 24842938 */  addiu      $a0, $a0, %lo(D_800D2938)
/* 478B0 80046CB0 E4E0008C */  swc1       $f0, 0x8c($a3)
/* 478B4 80046CB4 00001825 */  or         $v1, $zero, $zero
/* 478B8 80046CB8 24080023 */  addiu      $t0, $zero, 0x23
/* 478BC 80046CBC 240600A0 */  addiu      $a2, $zero, 0xa0
.L80046CC0:
/* 478C0 80046CC0 00660019 */  multu      $v1, $a2
/* 478C4 80046CC4 C4E4008C */  lwc1       $f4, 0x8c($a3)
/* 478C8 80046CC8 24630001 */  addiu      $v1, $v1, 1
/* 478CC 80046CCC 3078FFFF */  andi       $t8, $v1, 0xffff
/* 478D0 80046CD0 03001825 */  or         $v1, $t8, $zero
/* 478D4 80046CD4 00007812 */  mflo       $t7
/* 478D8 80046CD8 00EF1021 */  addu       $v0, $a3, $t7
/* 478DC 80046CDC E444008C */  swc1       $f4, 0x8c($v0)
/* 478E0 80046CE0 C4E6008C */  lwc1       $f6, 0x8c($a3)
/* 478E4 80046CE4 1518FFF6 */  bne        $t0, $t8, .L80046CC0
/* 478E8 80046CE8 E4460090 */   swc1      $f6, 0x90($v0)
/* 478EC 80046CEC C4E8008C */  lwc1       $f8, 0x8c($a3)
/* 478F0 80046CF0 3C014008 */  lui        $at, 0x4008
/* 478F4 80046CF4 44818800 */  mtc1       $at, $f17
/* 478F8 80046CF8 44808000 */  mtc1       $zero, $f16
/* 478FC 80046CFC 460042A1 */  cvt.d.s    $f10, $f8
/* 47900 80046D00 462A803E */  c.le.d     $f16, $f10
/* 47904 80046D04 00000000 */  nop
/* 47908 80046D08 45000010 */  bc1f       .L80046D4C
/* 4790C 80046D0C 00001025 */   or        $v0, $zero, $zero
/* 47910 80046D10 8C990000 */  lw         $t9, ($a0)
/* 47914 80046D14 00000000 */  nop
/* 47918 80046D18 272E0001 */  addiu      $t6, $t9, 1
/* 4791C 80046D1C 1000000A */  b          .L80046D48
/* 47920 80046D20 AC8E0000 */   sw        $t6, ($a0)
.L80046D24:
/* 47924 80046D24 3C02800D */  lui        $v0, %hi(D_800D293C)
/* 47928 80046D28 2442293C */  addiu      $v0, $v0, %lo(D_800D293C)
/* 4792C 80046D2C 8C4F0000 */  lw         $t7, ($v0)
/* 47930 80046D30 00000000 */  nop
/* 47934 80046D34 25F8FFFF */  addiu      $t8, $t7, -1
/* 47938 80046D38 07010003 */  bgez       $t8, .L80046D48
/* 4793C 80046D3C AC580000 */   sw        $t8, ($v0)
/* 47940 80046D40 10000002 */  b          .L80046D4C
/* 47944 80046D44 24020001 */   addiu     $v0, $zero, 1
.L80046D48:
/* 47948 80046D48 00001025 */  or         $v0, $zero, $zero
.L80046D4C:
/* 4794C 80046D4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47950 80046D50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 47954 80046D54 03E00008 */  jr         $ra
/* 47958 80046D58 00000000 */   nop