glabel func_8008CC90
/* 8D890 8008CC90 3085FFFF */  andi       $a1, $a0, 0xffff
/* 8D894 8008CC94 00057080 */  sll        $t6, $a1, 2
/* 8D898 8008CC98 01C57023 */  subu       $t6, $t6, $a1
/* 8D89C 8008CC9C 000E7080 */  sll        $t6, $t6, 2
/* 8D8A0 8008CCA0 01C57021 */  addu       $t6, $t6, $a1
/* 8D8A4 8008CCA4 000E7080 */  sll        $t6, $t6, 2
/* 8D8A8 8008CCA8 01C57023 */  subu       $t6, $t6, $a1
/* 8D8AC 8008CCAC 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 8D8B0 8008CCB0 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 8D8B4 8008CCB4 000E70C0 */  sll        $t6, $t6, 3
/* 8D8B8 8008CCB8 01CF1821 */  addu       $v1, $t6, $t7
/* 8D8BC 8008CCBC 947800D0 */  lhu        $t8, 0xd0($v1)
/* 8D8C0 8008CCC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D8C4 8008CCC4 2B010021 */  slti       $at, $t8, 0x21
/* 8D8C8 8008CCC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8D8CC 8008CCCC 10200004 */  beqz       $at, .L8008CCE0
/* 8D8D0 8008CCD0 AFA40020 */   sw        $a0, 0x20($sp)
/* 8D8D4 8008CCD4 24190002 */  addiu      $t9, $zero, 2
/* 8D8D8 8008CCD8 10000036 */  b          .L8008CDB4
/* 8D8DC 8008CCDC AC790080 */   sw        $t9, 0x80($v1)
.L8008CCE0:
/* 8D8E0 8008CCE0 44801000 */  mtc1       $zero, $f2
/* 8D8E4 8008CCE4 C4600118 */  lwc1       $f0, 0x118($v1)
/* 8D8E8 8008CCE8 3C013F80 */  lui        $at, 0x3f80
/* 8D8EC 8008CCEC 46001032 */  c.eq.s     $f2, $f0
/* 8D8F0 8008CCF0 00000000 */  nop
/* 8D8F4 8008CCF4 45010021 */  bc1t       .L8008CD7C
/* 8D8F8 8008CCF8 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 8D8FC 8008CCFC 44812000 */  mtc1       $at, $f4
/* 8D900 8008CD00 00000000 */  nop
/* 8D904 8008CD04 46040181 */  sub.s      $f6, $f0, $f4
/* 8D908 8008CD08 E4660118 */  swc1       $f6, 0x118($v1)
/* 8D90C 8008CD0C C4680118 */  lwc1       $f8, 0x118($v1)
/* 8D910 8008CD10 00000000 */  nop
/* 8D914 8008CD14 46081032 */  c.eq.s     $f2, $f8
/* 8D918 8008CD18 00000000 */  nop
/* 8D91C 8008CD1C 45000017 */  bc1f       .L8008CD7C
/* 8D920 8008CD20 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 8D924 8008CD24 8C62018C */  lw         $v0, 0x18c($v1)
/* 8D928 8008CD28 00000000 */  nop
/* 8D92C 8008CD2C 84480000 */  lh         $t0, ($v0)
/* 8D930 8008CD30 24420004 */  addiu      $v0, $v0, 4
/* 8D934 8008CD34 A4680084 */  sh         $t0, 0x84($v1)
/* 8D938 8008CD38 8449FFFE */  lh         $t1, -2($v0)
/* 8D93C 8008CD3C 00000000 */  nop
/* 8D940 8008CD40 44895000 */  mtc1       $t1, $f10
/* 8D944 8008CD44 00000000 */  nop
/* 8D948 8008CD48 46805420 */  cvt.s.w    $f16, $f10
/* 8D94C 8008CD4C E4700118 */  swc1       $f16, 0x118($v1)
/* 8D950 8008CD50 84440000 */  lh         $a0, ($v0)
/* 8D954 8008CD54 00000000 */  nop
/* 8D958 8008CD58 14800003 */  bnez       $a0, .L8008CD68
/* 8D95C 8008CD5C 00000000 */   nop
/* 8D960 8008CD60 10000005 */  b          .L8008CD78
/* 8D964 8008CD64 E4620118 */   swc1      $f2, 0x118($v1)
.L8008CD68:
/* 8D968 8008CD68 04810002 */  bgez       $a0, .L8008CD74
/* 8D96C 8008CD6C 00045880 */   sll       $t3, $a0, 2
/* 8D970 8008CD70 004B1021 */  addu       $v0, $v0, $t3
.L8008CD74:
/* 8D974 8008CD74 AC62018C */  sw         $v0, 0x18c($v1)
.L8008CD78:
/* 8D978 8008CD78 30A4FFFF */  andi       $a0, $a1, 0xffff
.L8008CD7C:
/* 8D97C 8008CD7C 0C023544 */  jal        func_8008D510
/* 8D980 8008CD80 AFA30018 */   sw        $v1, 0x18($sp)
/* 8D984 8008CD84 8FA30018 */  lw         $v1, 0x18($sp)
/* 8D988 8008CD88 3C010800 */  lui        $at, 0x800
/* 8D98C 8008CD8C 8C6C0080 */  lw         $t4, 0x80($v1)
/* 8D990 8008CD90 34210001 */  ori        $at, $at, 1
/* 8D994 8008CD94 01816825 */  or         $t5, $t4, $at
/* 8D998 8008CD98 3C01800C */  lui        $at, %hi(D_800BE714)
/* 8D99C 8008CD9C 240E0001 */  addiu      $t6, $zero, 1
/* 8D9A0 8008CDA0 AC6D0080 */  sw         $t5, 0x80($v1)
/* 8D9A4 8008CDA4 A42EE714 */  sh         $t6, %lo(D_800BE714)($at)
/* 8D9A8 8008CDA8 946F0084 */  lhu        $t7, 0x84($v1)
/* 8D9AC 8008CDAC 3C01800F */  lui        $at, %hi(D_800EF594)
/* 8D9B0 8008CDB0 A42FF594 */  sh         $t7, %lo(D_800EF594)($at)
.L8008CDB4:
/* 8D9B4 8008CDB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8D9B8 8008CDB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8D9BC 8008CDBC 03E00008 */  jr         $ra
/* 8D9C0 8008CDC0 00000000 */   nop
