glabel func_8001FA78
/* 20678 8001FA78 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 2067C 8001FA7C AFA40010 */  sw         $a0, 0x10($sp)
/* 20680 8001FA80 97A70012 */  lhu        $a3, 0x12($sp)
/* 20684 8001FA84 AFA60018 */  sw         $a2, 0x18($sp)
/* 20688 8001FA88 00077880 */  sll        $t7, $a3, 2
/* 2068C 8001FA8C 01E77823 */  subu       $t7, $t7, $a3
/* 20690 8001FA90 000F7880 */  sll        $t7, $t7, 2
/* 20694 8001FA94 0006C400 */  sll        $t8, $a2, 0x10
/* 20698 8001FA98 01E77821 */  addu       $t7, $t7, $a3
/* 2069C 8001FA9C 00183403 */  sra        $a2, $t8, 0x10
/* 206A0 8001FAA0 000F7880 */  sll        $t7, $t7, 2
/* 206A4 8001FAA4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 206A8 8001FAA8 01E77823 */  subu       $t7, $t7, $a3
/* 206AC 8001FAAC 000F78C0 */  sll        $t7, $t7, 3
/* 206B0 8001FAB0 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 206B4 8001FAB4 01F81021 */  addu       $v0, $t7, $t8
/* 206B8 8001FAB8 8C590080 */  lw         $t9, 0x80($v0)
/* 206BC 8001FABC AFA50014 */  sw         $a1, 0x14($sp)
/* 206C0 8001FAC0 00057400 */  sll        $t6, $a1, 0x10
/* 206C4 8001FAC4 000E2C03 */  sra        $a1, $t6, 0x10
/* 206C8 8001FAC8 00197180 */  sll        $t6, $t9, 6
/* 206CC 8001FACC AFB1000C */  sw         $s1, 0xc($sp)
/* 206D0 8001FAD0 05C00006 */  bltz       $t6, .L8001FAEC
/* 206D4 8001FAD4 AFB00008 */   sw        $s0, 8($sp)
/* 206D8 8001FAD8 8C4F0098 */  lw         $t7, 0x98($v0)
/* 206DC 8001FADC 00000000 */  nop
/* 206E0 8001FAE0 31F80600 */  andi       $t8, $t7, 0x600
/* 206E4 8001FAE4 13000003 */  beqz       $t8, .L8001FAF4
/* 206E8 8001FAE8 00000000 */   nop
.L8001FAEC:
/* 206EC 8001FAEC 944700D6 */  lhu        $a3, 0xd6($v0)
/* 206F0 8001FAF0 00000000 */  nop
.L8001FAF4:
/* 206F4 8001FAF4 3C08800C */  lui        $t0, %hi(D_800BE4D0)
/* 206F8 8001FAF8 9508E4D0 */  lhu        $t0, %lo(D_800BE4D0)($t0)
/* 206FC 8001FAFC 97A40012 */  lhu        $a0, 0x12($sp)
/* 20700 8001FB00 1900002F */  blez       $t0, .L8001FBC0
/* 20704 8001FB04 00001825 */   or        $v1, $zero, $zero
/* 20708 8001FB08 3C118012 */  lui        $s1, 0x8012
/* 2070C 8001FB0C 3C108012 */  lui        $s0, 0x8012
/* 20710 8001FB10 3C0D8012 */  lui        $t5, %hi(D_8011D3D0)
/* 20714 8001FB14 3C0C8012 */  lui        $t4, %hi(D_8011D170)
/* 20718 8001FB18 3C0B8012 */  lui        $t3, %hi(D_8011CF20)
/* 2071C 8001FB1C 256BCF20 */  addiu      $t3, $t3, %lo(D_8011CF20)
/* 20720 8001FB20 258CD170 */  addiu      $t4, $t4, %lo(D_8011D170)
/* 20724 8001FB24 25ADD3D0 */  addiu      $t5, $t5, %lo(D_8011D3D0)
/* 20728 8001FB28 2610D610 */  addiu      $s0, $s0, -0x29f0
/* 2072C 8001FB2C 2631D850 */  addiu      $s1, $s1, -0x27b0
.L8001FB30:
/* 20730 8001FB30 00031040 */  sll        $v0, $v1, 1
/* 20734 8001FB34 0162C821 */  addu       $t9, $t3, $v0
/* 20738 8001FB38 97290000 */  lhu        $t1, ($t9)
/* 2073C 8001FB3C 24630001 */  addiu      $v1, $v1, 1
/* 20740 8001FB40 1089001B */  beq        $a0, $t1, .L8001FBB0
/* 20744 8001FB44 306EFFFF */   andi      $t6, $v1, 0xffff
/* 20748 8001FB48 10E90018 */  beq        $a3, $t1, .L8001FBAC
/* 2074C 8001FB4C 01827021 */   addu      $t6, $t4, $v0
/* 20750 8001FB50 85CF0000 */  lh         $t7, ($t6)
/* 20754 8001FB54 01A2C021 */  addu       $t8, $t5, $v0
/* 20758 8001FB58 01E5082A */  slt        $at, $t7, $a1
/* 2075C 8001FB5C 14200014 */  bnez       $at, .L8001FBB0
/* 20760 8001FB60 306EFFFF */   andi      $t6, $v1, 0xffff
/* 20764 8001FB64 87190000 */  lh         $t9, ($t8)
/* 20768 8001FB68 02027021 */  addu       $t6, $s0, $v0
/* 2076C 8001FB6C 00B9082A */  slt        $at, $a1, $t9
/* 20770 8001FB70 1420000E */  bnez       $at, .L8001FBAC
/* 20774 8001FB74 00000000 */   nop
/* 20778 8001FB78 85CF0000 */  lh         $t7, ($t6)
/* 2077C 8001FB7C 0222C021 */  addu       $t8, $s1, $v0
/* 20780 8001FB80 01E6082A */  slt        $at, $t7, $a2
/* 20784 8001FB84 1420000A */  bnez       $at, .L8001FBB0
/* 20788 8001FB88 306EFFFF */   andi      $t6, $v1, 0xffff
/* 2078C 8001FB8C 87190000 */  lh         $t9, ($t8)
/* 20790 8001FB90 00000000 */  nop
/* 20794 8001FB94 00D9082A */  slt        $at, $a2, $t9
/* 20798 8001FB98 14200004 */  bnez       $at, .L8001FBAC
/* 2079C 8001FB9C 3C01800C */   lui       $at, %hi(D_800BE4DC)
/* 207A0 8001FBA0 A429E4DC */  sh         $t1, %lo(D_800BE4DC)($at)
/* 207A4 8001FBA4 1000003A */  b          .L8001FC90
/* 207A8 8001FBA8 240200C0 */   addiu     $v0, $zero, 0xc0
.L8001FBAC:
/* 207AC 8001FBAC 306EFFFF */  andi       $t6, $v1, 0xffff
.L8001FBB0:
/* 207B0 8001FBB0 01C8082A */  slt        $at, $t6, $t0
/* 207B4 8001FBB4 1420FFDE */  bnez       $at, .L8001FB30
/* 207B8 8001FBB8 01C01825 */   or        $v1, $t6, $zero
/* 207BC 8001FBBC 00001825 */  or         $v1, $zero, $zero
.L8001FBC0:
/* 207C0 8001FBC0 3C08800C */  lui        $t0, %hi(D_800BE4D4)
/* 207C4 8001FBC4 9508E4D4 */  lhu        $t0, %lo(D_800BE4D4)($t0)
/* 207C8 8001FBC8 97A40012 */  lhu        $a0, 0x12($sp)
/* 207CC 8001FBCC 1900002D */  blez       $t0, .L8001FC84
/* 207D0 8001FBD0 3C118012 */   lui       $s1, 0x8012
/* 207D4 8001FBD4 3C108012 */  lui        $s0, 0x8012
/* 207D8 8001FBD8 3C0D8012 */  lui        $t5, %hi(D_8011D290)
/* 207DC 8001FBDC 3C0C8012 */  lui        $t4, %hi(D_8011D048)
/* 207E0 8001FBE0 3C0B8012 */  lui        $t3, %hi(D_8011CDF8)
/* 207E4 8001FBE4 256BCDF8 */  addiu      $t3, $t3, %lo(D_8011CDF8)
/* 207E8 8001FBE8 258CD048 */  addiu      $t4, $t4, %lo(D_8011D048)
/* 207EC 8001FBEC 25ADD290 */  addiu      $t5, $t5, %lo(D_8011D290)
/* 207F0 8001FBF0 2610D4F0 */  addiu      $s0, $s0, -0x2b10
/* 207F4 8001FBF4 2631D730 */  addiu      $s1, $s1, -0x28d0
.L8001FBF8:
/* 207F8 8001FBF8 00031040 */  sll        $v0, $v1, 1
/* 207FC 8001FBFC 01627821 */  addu       $t7, $t3, $v0
/* 20800 8001FC00 95E90000 */  lhu        $t1, ($t7)
/* 20804 8001FC04 24630001 */  addiu      $v1, $v1, 1
/* 20808 8001FC08 1089001B */  beq        $a0, $t1, .L8001FC78
/* 2080C 8001FC0C 3078FFFF */   andi      $t8, $v1, 0xffff
/* 20810 8001FC10 10E90018 */  beq        $a3, $t1, .L8001FC74
/* 20814 8001FC14 0182C021 */   addu      $t8, $t4, $v0
/* 20818 8001FC18 87190000 */  lh         $t9, ($t8)
/* 2081C 8001FC1C 01A27021 */  addu       $t6, $t5, $v0
/* 20820 8001FC20 0325082A */  slt        $at, $t9, $a1
/* 20824 8001FC24 14200014 */  bnez       $at, .L8001FC78
/* 20828 8001FC28 3078FFFF */   andi      $t8, $v1, 0xffff
/* 2082C 8001FC2C 85CF0000 */  lh         $t7, ($t6)
/* 20830 8001FC30 0202C021 */  addu       $t8, $s0, $v0
/* 20834 8001FC34 00AF082A */  slt        $at, $a1, $t7
/* 20838 8001FC38 1420000E */  bnez       $at, .L8001FC74
/* 2083C 8001FC3C 00000000 */   nop
/* 20840 8001FC40 87190000 */  lh         $t9, ($t8)
/* 20844 8001FC44 02227021 */  addu       $t6, $s1, $v0
/* 20848 8001FC48 0326082A */  slt        $at, $t9, $a2
/* 2084C 8001FC4C 1420000A */  bnez       $at, .L8001FC78
/* 20850 8001FC50 3078FFFF */   andi      $t8, $v1, 0xffff
/* 20854 8001FC54 85CF0000 */  lh         $t7, ($t6)
/* 20858 8001FC58 00000000 */  nop
/* 2085C 8001FC5C 00CF082A */  slt        $at, $a2, $t7
/* 20860 8001FC60 14200004 */  bnez       $at, .L8001FC74
/* 20864 8001FC64 3C01800C */   lui       $at, %hi(D_800BE4DC)
/* 20868 8001FC68 A429E4DC */  sh         $t1, %lo(D_800BE4DC)($at)
/* 2086C 8001FC6C 10000008 */  b          .L8001FC90
/* 20870 8001FC70 24020040 */   addiu     $v0, $zero, 0x40
.L8001FC74:
/* 20874 8001FC74 3078FFFF */  andi       $t8, $v1, 0xffff
.L8001FC78:
/* 20878 8001FC78 0308082A */  slt        $at, $t8, $t0
/* 2087C 8001FC7C 1420FFDE */  bnez       $at, .L8001FBF8
/* 20880 8001FC80 03001825 */   or        $v1, $t8, $zero
.L8001FC84:
/* 20884 8001FC84 3C01800C */  lui        $at, %hi(D_800BE4DC)
/* 20888 8001FC88 A420E4DC */  sh         $zero, %lo(D_800BE4DC)($at)
/* 2088C 8001FC8C 00001025 */  or         $v0, $zero, $zero
.L8001FC90:
/* 20890 8001FC90 8FB00008 */  lw         $s0, 8($sp)
/* 20894 8001FC94 8FB1000C */  lw         $s1, 0xc($sp)
/* 20898 8001FC98 03E00008 */  jr         $ra
/* 2089C 8001FC9C 27BD0010 */   addiu     $sp, $sp, 0x10
