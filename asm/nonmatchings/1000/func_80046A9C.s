glabel func_80046A9C
/* 4769C 80046A9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 476A0 80046AA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 476A4 80046AA4 3C01800D */  lui        $at, %hi(D_800D2938)
/* 476A8 80046AA8 0C011A8C */  jal        func_80046A30
/* 476AC 80046AAC AC202938 */   sw        $zero, %lo(D_800D2938)($at)
/* 476B0 80046AB0 3C014040 */  lui        $at, 0x4040
/* 476B4 80046AB4 3C0D800E */  lui        $t5, 0x800e
/* 476B8 80046AB8 3C0B800D */  lui        $t3, %hi(D_800D38B8)
/* 476BC 80046ABC 3C068010 */  lui        $a2, %hi(D_80104098)
/* 476C0 80046AC0 44810000 */  mtc1       $at, $f0
/* 476C4 80046AC4 24C64098 */  addiu      $a2, $a2, %lo(D_80104098)
/* 476C8 80046AC8 256B38B8 */  addiu      $t3, $t3, %lo(D_800D38B8)
/* 476CC 80046ACC 25AD82DC */  addiu      $t5, $t5, -0x7d24
/* 476D0 80046AD0 00002025 */  or         $a0, $zero, $zero
/* 476D4 80046AD4 00002825 */  or         $a1, $zero, $zero
/* 476D8 80046AD8 240C0023 */  addiu      $t4, $zero, 0x23
/* 476DC 80046ADC 240A00FF */  addiu      $t2, $zero, 0xff
/* 476E0 80046AE0 240902D0 */  addiu      $t1, $zero, 0x2d0
/* 476E4 80046AE4 24080203 */  addiu      $t0, $zero, 0x203
/* 476E8 80046AE8 240700A0 */  addiu      $a3, $zero, 0xa0
.L80046AEC:
/* 476EC 80046AEC 00870019 */  multu      $a0, $a3
/* 476F0 80046AF0 0005C080 */  sll        $t8, $a1, 2
/* 476F4 80046AF4 01781821 */  addu       $v1, $t3, $t8
/* 476F8 80046AF8 84790000 */  lh         $t9, ($v1)
/* 476FC 80046AFC 24840001 */  addiu      $a0, $a0, 1
/* 47700 80046B00 3085FFFF */  andi       $a1, $a0, 0xffff
/* 47704 80046B04 00A02025 */  or         $a0, $a1, $zero
/* 47708 80046B08 00007012 */  mflo       $t6
/* 4770C 80046B0C 00CE1021 */  addu       $v0, $a2, $t6
/* 47710 80046B10 846E0002 */  lh         $t6, 2($v1)
/* 47714 80046B14 A4480080 */  sh         $t0, 0x80($v0)
/* 47718 80046B18 25CF0002 */  addiu      $t7, $t6, 2
/* 4771C 80046B1C AC4D0098 */  sw         $t5, 0x98($v0)
/* 47720 80046B20 A4490082 */  sh         $t1, 0x82($v0)
/* 47724 80046B24 A04A0094 */  sb         $t2, 0x94($v0)
/* 47728 80046B28 A44F0088 */  sh         $t7, 0x88($v0)
/* 4772C 80046B2C E440008C */  swc1       $f0, 0x8c($v0)
/* 47730 80046B30 E4400090 */  swc1       $f0, 0x90($v0)
/* 47734 80046B34 1585FFED */  bne        $t4, $a1, .L80046AEC
/* 47738 80046B38 A4590084 */   sh        $t9, 0x84($v0)
/* 4773C 80046B3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47740 80046B40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 47744 80046B44 03E00008 */  jr         $ra
/* 47748 80046B48 00000000 */   nop
