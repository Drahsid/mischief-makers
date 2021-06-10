glabel func_800AF1E0
/* AFDE0 800AF1E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFDE4 800AF1E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFDE8 800AF1E8 AFA40018 */  sw         $a0, 0x18($sp)
/* AFDEC 800AF1EC AFA5001C */  sw         $a1, 0x1c($sp)
/* AFDF0 800AF1F0 AFA60020 */  sw         $a2, 0x20($sp)
/* AFDF4 800AF1F4 AFA70024 */  sw         $a3, 0x24($sp)
/* AFDF8 800AF1F8 87B8001E */  lh         $t8, 0x1e($sp)
/* AFDFC 800AF1FC 8FAE0018 */  lw         $t6, 0x18($sp)
/* AFE00 800AF200 8FA50020 */  lw         $a1, 0x20($sp)
/* AFE04 800AF204 0018C880 */  sll        $t9, $t8, 2
/* AFE08 800AF208 0338C821 */  addu       $t9, $t9, $t8
/* AFE0C 800AF20C 8DCF0034 */  lw         $t7, 0x34($t6)
/* AFE10 800AF210 0019C880 */  sll        $t9, $t9, 2
/* AFE14 800AF214 0338C823 */  subu       $t9, $t9, $t8
/* AFE18 800AF218 0019C880 */  sll        $t9, $t9, 2
/* AFE1C 800AF21C 01F92021 */  addu       $a0, $t7, $t9
/* AFE20 800AF220 24840020 */  addiu      $a0, $a0, 0x20
/* AFE24 800AF224 0C02BA15 */  jal        func_800AE854
/* AFE28 800AF228 8FA60024 */   lw        $a2, 0x24($sp)
/* AFE2C 800AF22C 87AA001E */  lh         $t2, 0x1e($sp)
/* AFE30 800AF230 8FA80018 */  lw         $t0, 0x18($sp)
/* AFE34 800AF234 24050001 */  addiu      $a1, $zero, 1
/* AFE38 800AF238 000A5880 */  sll        $t3, $t2, 2
/* AFE3C 800AF23C 016A5821 */  addu       $t3, $t3, $t2
/* AFE40 800AF240 8D090034 */  lw         $t1, 0x34($t0)
/* AFE44 800AF244 000B5880 */  sll        $t3, $t3, 2
/* AFE48 800AF248 016A5823 */  subu       $t3, $t3, $t2
/* AFE4C 800AF24C 000B5880 */  sll        $t3, $t3, 2
/* AFE50 800AF250 012B6021 */  addu       $t4, $t1, $t3
/* AFE54 800AF254 25840020 */  addiu      $a0, $t4, 0x20
/* AFE58 800AF258 0C02E098 */  jal        func_800B8260
/* AFE5C 800AF25C 01803025 */   or        $a2, $t4, $zero
/* AFE60 800AF260 87B8001E */  lh         $t8, 0x1e($sp)
/* AFE64 800AF264 8FAD0018 */  lw         $t5, 0x18($sp)
/* AFE68 800AF268 24050002 */  addiu      $a1, $zero, 2
/* AFE6C 800AF26C 00187880 */  sll        $t7, $t8, 2
/* AFE70 800AF270 01F87821 */  addu       $t7, $t7, $t8
/* AFE74 800AF274 8DAE0034 */  lw         $t6, 0x34($t5)
/* AFE78 800AF278 000F7880 */  sll        $t7, $t7, 2
/* AFE7C 800AF27C 01F87823 */  subu       $t7, $t7, $t8
/* AFE80 800AF280 000F7880 */  sll        $t7, $t7, 2
/* AFE84 800AF284 01CF3021 */  addu       $a2, $t6, $t7
/* AFE88 800AF288 24C60020 */  addiu      $a2, $a2, 0x20
/* AFE8C 800AF28C 0C02BD24 */  jal        func_800AF490
/* AFE90 800AF290 8DA40030 */   lw        $a0, 0x30($t5)
/* AFE94 800AF294 87AA001E */  lh         $t2, 0x1e($sp)
/* AFE98 800AF298 8FB90018 */  lw         $t9, 0x18($sp)
/* AFE9C 800AF29C 000A4880 */  sll        $t1, $t2, 2
/* AFEA0 800AF2A0 012A4821 */  addu       $t1, $t1, $t2
/* AFEA4 800AF2A4 8F280034 */  lw         $t0, 0x34($t9)
/* AFEA8 800AF2A8 00094880 */  sll        $t1, $t1, 2
/* AFEAC 800AF2AC 012A4823 */  subu       $t1, $t1, $t2
/* AFEB0 800AF2B0 00094880 */  sll        $t1, $t1, 2
/* AFEB4 800AF2B4 01091021 */  addu       $v0, $t0, $t1
/* AFEB8 800AF2B8 10000003 */  b          .L800AF2C8
/* AFEBC 800AF2BC 24420020 */   addiu     $v0, $v0, 0x20
/* AFEC0 800AF2C0 10000001 */  b          .L800AF2C8
/* AFEC4 800AF2C4 00000000 */   nop
.L800AF2C8:
/* AFEC8 800AF2C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFECC 800AF2CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AFED0 800AF2D0 03E00008 */  jr         $ra
/* AFED4 800AF2D4 00000000 */   nop
/* AFED8 800AF2D8 00000000 */  nop
/* AFEDC 800AF2DC 00000000 */  nop
