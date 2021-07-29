glabel func_80047B68
/* 48768 80047B68 3C05800D */  lui        $a1, %hi(D_800D28E8)
/* 4876C 80047B6C 24A528E8 */  addiu      $a1, $a1, %lo(D_800D28E8)
/* 48770 80047B70 94A30000 */  lhu        $v1, ($a1)
/* 48774 80047B74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48778 80047B78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4877C 80047B7C 10600008 */  beqz       $v1, .L80047BA0
/* 48780 80047B80 00601025 */   or        $v0, $v1, $zero
/* 48784 80047B84 24010001 */  addiu      $at, $zero, 1
/* 48788 80047B88 1041000A */  beq        $v0, $at, .L80047BB4
/* 4878C 80047B8C 24010002 */   addiu     $at, $zero, 2
/* 48790 80047B90 10410012 */  beq        $v0, $at, .L80047BDC
/* 48794 80047B94 00000000 */   nop
/* 48798 80047B98 10000020 */  b          .L80047C1C
/* 4879C 80047B9C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80047BA0:
/* 487A0 80047BA0 246E0001 */  addiu      $t6, $v1, 1
/* 487A4 80047BA4 A4AE0000 */  sh         $t6, ($a1)
/* 487A8 80047BA8 240F0004 */  addiu      $t7, $zero, 4
/* 487AC 80047BAC 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 487B0 80047BB0 AC2FE5F4 */  sw         $t7, %lo(D_800BE5F4)($at)
.L80047BB4:
/* 487B4 80047BB4 0C011B57 */  jal        func_80046D5C
/* 487B8 80047BB8 00000000 */   nop
/* 487BC 80047BBC 3C05800D */  lui        $a1, %hi(D_800D28E8)
/* 487C0 80047BC0 10400006 */  beqz       $v0, .L80047BDC
/* 487C4 80047BC4 24A528E8 */   addiu     $a1, $a1, %lo(D_800D28E8)
/* 487C8 80047BC8 94B80000 */  lhu        $t8, ($a1)
/* 487CC 80047BCC 24040018 */  addiu      $a0, $zero, 0x18
/* 487D0 80047BD0 27190001 */  addiu      $t9, $t8, 1
/* 487D4 80047BD4 0C000AD4 */  jal        func_80002B50
/* 487D8 80047BD8 A4B90000 */   sh        $t9, ($a1)
.L80047BDC:
/* 487DC 80047BDC 3C02800D */  lui        $v0, %hi(D_800D28FC)
/* 487E0 80047BE0 244228FC */  addiu      $v0, $v0, %lo(D_800D28FC)
/* 487E4 80047BE4 8C480000 */  lw         $t0, ($v0)
/* 487E8 80047BE8 3C0A800C */  lui        $t2, %hi(gButtonPress)
/* 487EC 80047BEC 35090080 */  ori        $t1, $t0, 0x80
/* 487F0 80047BF0 AC490000 */  sw         $t1, ($v0)
/* 487F4 80047BF4 3C0B800C */  lui        $t3, %hi(gButton_B)
/* 487F8 80047BF8 956BE514 */  lhu        $t3, %lo(gButton_B)($t3)
/* 487FC 80047BFC 954AE4FC */  lhu        $t2, %lo(gButtonPress)($t2)
/* 48800 80047C00 00000000 */  nop
/* 48804 80047C04 014B6024 */  and        $t4, $t2, $t3
/* 48808 80047C08 11800004 */  beqz       $t4, .L80047C1C
/* 4880C 80047C0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 48810 80047C10 0C000AD4 */  jal        func_80002B50
/* 48814 80047C14 24040018 */   addiu     $a0, $zero, 0x18
/* 48818 80047C18 8FBF0014 */  lw         $ra, 0x14($sp)
.L80047C1C:
/* 4881C 80047C1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 48820 80047C20 03E00008 */  jr         $ra
/* 48824 80047C24 00000000 */   nop
