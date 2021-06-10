glabel func_8006CC70
/* 6D870 8006CC70 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6D874 8006CC74 000E7880 */  sll        $t7, $t6, 2
/* 6D878 8006CC78 01EE7823 */  subu       $t7, $t7, $t6
/* 6D87C 8006CC7C 000F7880 */  sll        $t7, $t7, 2
/* 6D880 8006CC80 01EE7821 */  addu       $t7, $t7, $t6
/* 6D884 8006CC84 000F7880 */  sll        $t7, $t7, 2
/* 6D888 8006CC88 01EE7823 */  subu       $t7, $t7, $t6
/* 6D88C 8006CC8C 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6D890 8006CC90 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 6D894 8006CC94 000F78C0 */  sll        $t7, $t7, 3
/* 6D898 8006CC98 01F82821 */  addu       $a1, $t7, $t8
/* 6D89C 8006CC9C 94B900D8 */  lhu        $t9, 0xd8($a1)
/* 6D8A0 8006CCA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6D8A4 8006CCA4 33280F00 */  andi       $t0, $t9, 0xf00
/* 6D8A8 8006CCA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D8AC 8006CCAC 11000026 */  beqz       $t0, .L8006CD48
/* 6D8B0 8006CCB0 AFA40028 */   sw        $a0, 0x28($sp)
/* 6D8B4 8006CCB4 0C00A14A */  jal        func_80028528
/* 6D8B8 8006CCB8 AFA50020 */   sw        $a1, 0x20($sp)
/* 6D8BC 8006CCBC 8FA50020 */  lw         $a1, 0x20($sp)
/* 6D8C0 8006CCC0 1040001F */  beqz       $v0, .L8006CD40
/* 6D8C4 8006CCC4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 6D8C8 8006CCC8 44842000 */  mtc1       $a0, $f4
/* 6D8CC 8006CCCC 04810005 */  bgez       $a0, .L8006CCE4
/* 6D8D0 8006CCD0 468021A0 */   cvt.s.w   $f6, $f4
/* 6D8D4 8006CCD4 3C014F80 */  lui        $at, 0x4f80
/* 6D8D8 8006CCD8 44814000 */  mtc1       $at, $f8
/* 6D8DC 8006CCDC 00000000 */  nop
/* 6D8E0 8006CCE0 46083180 */  add.s      $f6, $f6, $f8
.L8006CCE4:
/* 6D8E4 8006CCE4 00044880 */  sll        $t1, $a0, 2
/* 6D8E8 8006CCE8 01244823 */  subu       $t1, $t1, $a0
/* 6D8EC 8006CCEC 00094880 */  sll        $t1, $t1, 2
/* 6D8F0 8006CCF0 01244821 */  addu       $t1, $t1, $a0
/* 6D8F4 8006CCF4 00094880 */  sll        $t1, $t1, 2
/* 6D8F8 8006CCF8 01244823 */  subu       $t1, $t1, $a0
/* 6D8FC 8006CCFC 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 6D900 8006CD00 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 6D904 8006CD04 000948C0 */  sll        $t1, $t1, 3
/* 6D908 8006CD08 E4A60140 */  swc1       $f6, 0x140($a1)
/* 6D90C 8006CD0C 012A1821 */  addu       $v1, $t1, $t2
/* 6D910 8006CD10 240B0034 */  addiu      $t3, $zero, 0x34
/* 6D914 8006CD14 A46B00D2 */  sh         $t3, 0xd2($v1)
/* 6D918 8006CD18 AFA3001C */  sw         $v1, 0x1c($sp)
/* 6D91C 8006CD1C 0C0078B4 */  jal        func_8001E2D0
/* 6D920 8006CD20 A7A40026 */   sh        $a0, 0x26($sp)
/* 6D924 8006CD24 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6D928 8006CD28 3C013F80 */  lui        $at, 0x3f80
/* 6D92C 8006CD2C 44815000 */  mtc1       $at, $f10
/* 6D930 8006CD30 240C0002 */  addiu      $t4, $zero, 2
/* 6D934 8006CD34 97A40026 */  lhu        $a0, 0x26($sp)
/* 6D938 8006CD38 AC6C0080 */  sw         $t4, 0x80($v1)
/* 6D93C 8006CD3C E46A0148 */  swc1       $f10, 0x148($v1)
.L8006CD40:
/* 6D940 8006CD40 10000002 */  b          .L8006CD4C
/* 6D944 8006CD44 00801025 */   or        $v0, $a0, $zero
.L8006CD48:
/* 6D948 8006CD48 00001025 */  or         $v0, $zero, $zero
.L8006CD4C:
/* 6D94C 8006CD4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D950 8006CD50 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6D954 8006CD54 03E00008 */  jr         $ra
/* 6D958 8006CD58 00000000 */   nop
