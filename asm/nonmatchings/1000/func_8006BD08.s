glabel func_8006BD08
/* 6C908 8006BD08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6C90C 8006BD0C AFBF001C */  sw         $ra, 0x1c($sp)
/* 6C910 8006BD10 AFA40030 */  sw         $a0, 0x30($sp)
/* 6C914 8006BD14 AFB00018 */  sw         $s0, 0x18($sp)
/* 6C918 8006BD18 24040070 */  addiu      $a0, $zero, 0x70
/* 6C91C 8006BD1C 0C00A12E */  jal        func_800284B8
/* 6C920 8006BD20 2405007A */   addiu     $a1, $zero, 0x7a
/* 6C924 8006BD24 1040006E */  beqz       $v0, .L8006BEE0
/* 6C928 8006BD28 3050FFFF */   andi      $s0, $v0, 0xffff
/* 6C92C 8006BD2C 00107080 */  sll        $t6, $s0, 2
/* 6C930 8006BD30 01D07023 */  subu       $t6, $t6, $s0
/* 6C934 8006BD34 000E7080 */  sll        $t6, $t6, 2
/* 6C938 8006BD38 01D07021 */  addu       $t6, $t6, $s0
/* 6C93C 8006BD3C 000E7080 */  sll        $t6, $t6, 2
/* 6C940 8006BD40 01D07023 */  subu       $t6, $t6, $s0
/* 6C944 8006BD44 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6C948 8006BD48 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 6C94C 8006BD4C 000E70C0 */  sll        $t6, $t6, 3
/* 6C950 8006BD50 01CF3021 */  addu       $a2, $t6, $t7
/* 6C954 8006BD54 A4C000D2 */  sh         $zero, 0xd2($a2)
/* 6C958 8006BD58 AFA60028 */  sw         $a2, 0x28($sp)
/* 6C95C 8006BD5C 0C0078B4 */  jal        func_8001E2D0
/* 6C960 8006BD60 3204FFFF */   andi      $a0, $s0, 0xffff
/* 6C964 8006BD64 97A40032 */  lhu        $a0, 0x32($sp)
/* 6C968 8006BD68 3C19800F */  lui        $t9, 0x800f
/* 6C96C 8006BD6C 0004C080 */  sll        $t8, $a0, 2
/* 6C970 8006BD70 0304C023 */  subu       $t8, $t8, $a0
/* 6C974 8006BD74 0018C080 */  sll        $t8, $t8, 2
/* 6C978 8006BD78 0304C021 */  addu       $t8, $t8, $a0
/* 6C97C 8006BD7C 0018C080 */  sll        $t8, $t8, 2
/* 6C980 8006BD80 0304C023 */  subu       $t8, $t8, $a0
/* 6C984 8006BD84 0018C0C0 */  sll        $t8, $t8, 3
/* 6C988 8006BD88 2739F510 */  addiu      $t9, $t9, -0xaf0
/* 6C98C 8006BD8C 03191821 */  addu       $v1, $t8, $t9
/* 6C990 8006BD90 8FA60028 */  lw         $a2, 0x28($sp)
/* 6C994 8006BD94 84680088 */  lh         $t0, 0x88($v1)
/* 6C998 8006BD98 AFA30024 */  sw         $v1, 0x24($sp)
/* 6C99C 8006BD9C A4C80088 */  sh         $t0, 0x88($a2)
/* 6C9A0 8006BDA0 8469008C */  lh         $t1, 0x8c($v1)
/* 6C9A4 8006BDA4 3205FFFF */  andi       $a1, $s0, 0xffff
/* 6C9A8 8006BDA8 A4C9008C */  sh         $t1, 0x8c($a2)
/* 6C9AC 8006BDAC 846A0090 */  lh         $t2, 0x90($v1)
/* 6C9B0 8006BDB0 00000000 */  nop
/* 6C9B4 8006BDB4 254BFFFF */  addiu      $t3, $t2, -1
/* 6C9B8 8006BDB8 A4CB0090 */  sh         $t3, 0x90($a2)
/* 6C9BC 8006BDBC 8C790158 */  lw         $t9, 0x158($v1)
/* 6C9C0 8006BDC0 00000000 */  nop
/* 6C9C4 8006BDC4 0320F809 */  jalr       $t9
/* 6C9C8 8006BDC8 00000000 */   nop
/* 6C9CC 8006BDCC 44902000 */  mtc1       $s0, $f4
/* 6C9D0 8006BDD0 8FA30024 */  lw         $v1, 0x24($sp)
/* 6C9D4 8006BDD4 8FA60028 */  lw         $a2, 0x28($sp)
/* 6C9D8 8006BDD8 06010005 */  bgez       $s0, .L8006BDF0
/* 6C9DC 8006BDDC 468021A0 */   cvt.s.w   $f6, $f4
/* 6C9E0 8006BDE0 3C014F80 */  lui        $at, 0x4f80
/* 6C9E4 8006BDE4 44814000 */  mtc1       $at, $f8
/* 6C9E8 8006BDE8 00000000 */  nop
/* 6C9EC 8006BDEC 46083180 */  add.s      $f6, $f6, $f8
.L8006BDF0:
/* 6C9F0 8006BDF0 E466011C */  swc1       $f6, 0x11c($v1)
/* 6C9F4 8006BDF4 94CC00D2 */  lhu        $t4, 0xd2($a2)
/* 6C9F8 8006BDF8 3205FFFF */  andi       $a1, $s0, 0xffff
/* 6C9FC 8006BDFC 448C5000 */  mtc1       $t4, $f10
/* 6CA00 8006BE00 05810005 */  bgez       $t4, .L8006BE18
/* 6CA04 8006BE04 46805420 */   cvt.s.w   $f16, $f10
/* 6CA08 8006BE08 3C014F80 */  lui        $at, 0x4f80
/* 6CA0C 8006BE0C 44819000 */  mtc1       $at, $f18
/* 6CA10 8006BE10 00000000 */  nop
/* 6CA14 8006BE14 46128400 */  add.s      $f16, $f16, $f18
.L8006BE18:
/* 6CA18 8006BE18 E4700120 */  swc1       $f16, 0x120($v1)
/* 6CA1C 8006BE1C 8CCD00EC */  lw         $t5, 0xec($a2)
/* 6CA20 8006BE20 C46000B4 */  lwc1       $f0, 0xb4($v1)
/* 6CA24 8006BE24 448D2000 */  mtc1       $t5, $f4
/* 6CA28 8006BE28 8C640080 */  lw         $a0, 0x80($v1)
/* 6CA2C 8006BE2C 46802220 */  cvt.s.w    $f8, $f4
/* 6CA30 8006BE30 30820020 */  andi       $v0, $a0, 0x20
/* 6CA34 8006BE34 46080182 */  mul.s      $f6, $f0, $f8
/* 6CA38 8006BE38 444EF800 */  cfc1       $t6, $31
/* 6CA3C 8006BE3C 00000000 */  nop
/* 6CA40 8006BE40 35C10003 */  ori        $at, $t6, 3
/* 6CA44 8006BE44 38210002 */  xori       $at, $at, 2
/* 6CA48 8006BE48 44C1F800 */  ctc1       $at, $31
/* 6CA4C 8006BE4C 00000000 */  nop
/* 6CA50 8006BE50 460032A4 */  cvt.w.s    $f10, $f6
/* 6CA54 8006BE54 440F5000 */  mfc1       $t7, $f10
/* 6CA58 8006BE58 44CEF800 */  ctc1       $t6, $31
/* 6CA5C 8006BE5C AC6F0158 */  sw         $t7, 0x158($v1)
/* 6CA60 8006BE60 8CD800F0 */  lw         $t8, 0xf0($a2)
/* 6CA64 8006BE64 AC6000EC */  sw         $zero, 0xec($v1)
/* 6CA68 8006BE68 44989000 */  mtc1       $t8, $f18
/* 6CA6C 8006BE6C AC6000F0 */  sw         $zero, 0xf0($v1)
/* 6CA70 8006BE70 46809420 */  cvt.s.w    $f16, $f18
/* 6CA74 8006BE74 46100102 */  mul.s      $f4, $f0, $f16
/* 6CA78 8006BE78 4448F800 */  cfc1       $t0, $31
/* 6CA7C 8006BE7C 00000000 */  nop
/* 6CA80 8006BE80 35010003 */  ori        $at, $t0, 3
/* 6CA84 8006BE84 38210002 */  xori       $at, $at, 2
/* 6CA88 8006BE88 44C1F800 */  ctc1       $at, $31
/* 6CA8C 8006BE8C 3C013F80 */  lui        $at, 0x3f80
/* 6CA90 8006BE90 46002224 */  cvt.w.s    $f8, $f4
/* 6CA94 8006BE94 44815000 */  mtc1       $at, $f10
/* 6CA98 8006BE98 44094000 */  mfc1       $t1, $f8
/* 6CA9C 8006BE9C 44C8F800 */  ctc1       $t0, $31
/* 6CAA0 8006BEA0 10400003 */  beqz       $v0, .L8006BEB0
/* 6CAA4 8006BEA4 AC69015C */   sw        $t1, 0x15c($v1)
/* 6CAA8 8006BEA8 1DE00007 */  bgtz       $t7, .L8006BEC8
/* 6CAAC 8006BEAC 38990020 */   xori      $t9, $a0, 0x20
.L8006BEB0:
/* 6CAB0 8006BEB0 14400006 */  bnez       $v0, .L8006BECC
/* 6CAB4 8006BEB4 00000000 */   nop
/* 6CAB8 8006BEB8 8C6B0158 */  lw         $t3, 0x158($v1)
/* 6CABC 8006BEBC 00000000 */  nop
/* 6CAC0 8006BEC0 05610002 */  bgez       $t3, .L8006BECC
/* 6CAC4 8006BEC4 38990020 */   xori      $t9, $a0, 0x20
.L8006BEC8:
/* 6CAC8 8006BEC8 AC790080 */  sw         $t9, 0x80($v1)
.L8006BECC:
/* 6CACC 8006BECC C4660134 */  lwc1       $f6, 0x134($v1)
/* 6CAD0 8006BED0 97A40032 */  lhu        $a0, 0x32($sp)
/* 6CAD4 8006BED4 460A3481 */  sub.s      $f18, $f6, $f10
/* 6CAD8 8006BED8 0C01AF24 */  jal        func_8006BC90
/* 6CADC 8006BEDC E4720134 */   swc1      $f18, 0x134($v1)
.L8006BEE0:
/* 6CAE0 8006BEE0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6CAE4 8006BEE4 02001025 */  or         $v0, $s0, $zero
/* 6CAE8 8006BEE8 8FB00018 */  lw         $s0, 0x18($sp)
/* 6CAEC 8006BEEC 03E00008 */  jr         $ra
/* 6CAF0 8006BEF0 27BD0030 */   addiu     $sp, $sp, 0x30
