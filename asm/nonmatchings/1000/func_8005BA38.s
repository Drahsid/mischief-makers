glabel func_8005BA38
/* 5C638 8005BA38 3C028013 */  lui        $v0, %hi(D_8013745C)
/* 5C63C 8005BA3C 8C42745C */  lw         $v0, %lo(D_8013745C)($v0)
/* 5C640 8005BA40 3087FFFF */  andi       $a3, $a0, 0xffff
/* 5C644 8005BA44 24010005 */  addiu      $at, $zero, 5
/* 5C648 8005BA48 00474021 */  addu       $t0, $v0, $a3
/* 5C64C 8005BA4C 0101001A */  div        $zero, $t0, $at
/* 5C650 8005BA50 00077080 */  sll        $t6, $a3, 2
/* 5C654 8005BA54 01C77023 */  subu       $t6, $t6, $a3
/* 5C658 8005BA58 000E7080 */  sll        $t6, $t6, 2
/* 5C65C 8005BA5C 01C77021 */  addu       $t6, $t6, $a3
/* 5C660 8005BA60 3045000C */  andi       $a1, $v0, 0xc
/* 5C664 8005BA64 000E7080 */  sll        $t6, $t6, 2
/* 5C668 8005BA68 01C77023 */  subu       $t6, $t6, $a3
/* 5C66C 8005BA6C 3C0F800F */  lui        $t7, %hi(gActors)
/* 5C670 8005BA70 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 5C674 8005BA74 000E70C0 */  sll        $t6, $t6, 3
/* 5C678 8005BA78 00053080 */  sll        $a2, $a1, 2
/* 5C67C 8005BA7C 0005C0C0 */  sll        $t8, $a1, 3
/* 5C680 8005BA80 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5C684 8005BA84 00C53023 */  subu       $a2, $a2, $a1
/* 5C688 8005BA88 01CF1821 */  addu       $v1, $t6, $t7
/* 5C68C 8005BA8C 0305C023 */  subu       $t8, $t8, $a1
/* 5C690 8005BA90 AFA40040 */  sw         $a0, 0x40($sp)
/* 5C694 8005BA94 24C6000C */  addiu      $a2, $a2, 0xc
/* 5C698 8005BA98 2719001C */  addiu      $t9, $t8, 0x1c
/* 5C69C 8005BA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C6A0 8005BAA0 A066009C */  sb         $a2, 0x9c($v1)
/* 5C6A4 8005BAA4 A066009D */  sb         $a2, 0x9d($v1)
/* 5C6A8 8005BAA8 A079009E */  sb         $t9, 0x9e($v1)
/* 5C6AC 8005BAAC 2404000A */  addiu      $a0, $zero, 0xa
/* 5C6B0 8005BAB0 00004810 */  mfhi       $t1
/* 5C6B4 8005BAB4 1520003F */  bnez       $t1, .L8005BBB4
/* 5C6B8 8005BAB8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5C6BC 8005BABC AFA30024 */  sw         $v1, 0x24($sp)
/* 5C6C0 8005BAC0 0C0171C2 */  jal        func_8005C708
/* 5C6C4 8005BAC4 A7A70042 */   sh        $a3, 0x42($sp)
/* 5C6C8 8005BAC8 8FA30024 */  lw         $v1, 0x24($sp)
/* 5C6CC 8005BACC 24040012 */  addiu      $a0, $zero, 0x12
/* 5C6D0 8005BAD0 846A0088 */  lh         $t2, 0x88($v1)
/* 5C6D4 8005BAD4 00000000 */  nop
/* 5C6D8 8005BAD8 004A5821 */  addu       $t3, $v0, $t2
/* 5C6DC 8005BADC 0C0171C2 */  jal        func_8005C708
/* 5C6E0 8005BAE0 AFAB002C */   sw        $t3, 0x2c($sp)
/* 5C6E4 8005BAE4 8FA30024 */  lw         $v1, 0x24($sp)
/* 5C6E8 8005BAE8 97A40042 */  lhu        $a0, 0x42($sp)
/* 5C6EC 8005BAEC 846C008C */  lh         $t4, 0x8c($v1)
/* 5C6F0 8005BAF0 846E0090 */  lh         $t6, 0x90($v1)
/* 5C6F4 8005BAF4 004C6821 */  addu       $t5, $v0, $t4
/* 5C6F8 8005BAF8 25CF0001 */  addiu      $t7, $t6, 1
/* 5C6FC 8005BAFC AFAD0030 */  sw         $t5, 0x30($sp)
/* 5C700 8005BB00 AFAF0034 */  sw         $t7, 0x34($sp)
/* 5C704 8005BB04 0C0164A8 */  jal        func_800592A0
/* 5C708 8005BB08 27A5002C */   addiu     $a1, $sp, 0x2c
/* 5C70C 8005BB0C 10400028 */  beqz       $v0, .L8005BBB0
/* 5C710 8005BB10 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5C714 8005BB14 0004C080 */  sll        $t8, $a0, 2
/* 5C718 8005BB18 0304C023 */  subu       $t8, $t8, $a0
/* 5C71C 8005BB1C 3C013F00 */  lui        $at, 0x3f00
/* 5C720 8005BB20 0018C080 */  sll        $t8, $t8, 2
/* 5C724 8005BB24 44810000 */  mtc1       $at, $f0
/* 5C728 8005BB28 0304C021 */  addu       $t8, $t8, $a0
/* 5C72C 8005BB2C 3C01800F */  lui        $at, %hi(D_800EBF50)
/* 5C730 8005BB30 0018C080 */  sll        $t8, $t8, 2
/* 5C734 8005BB34 C422BF50 */  lwc1       $f2, %lo(D_800EBF50)($at)
/* 5C738 8005BB38 0304C023 */  subu       $t8, $t8, $a0
/* 5C73C 8005BB3C 3C19800F */  lui        $t9, %hi(gActors)
/* 5C740 8005BB40 3C01800F */  lui        $at, %hi(D_800EBF54)
/* 5C744 8005BB44 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 5C748 8005BB48 0018C0C0 */  sll        $t8, $t8, 3
/* 5C74C 8005BB4C C42CBF54 */  lwc1       $f12, %lo(D_800EBF54)($at)
/* 5C750 8005BB50 03191821 */  addu       $v1, $t8, $t9
/* 5C754 8005BB54 94680094 */  lhu        $t0, 0x94($v1)
/* 5C758 8005BB58 3C0141A0 */  lui        $at, 0x41a0
/* 5C75C 8005BB5C 44812000 */  mtc1       $at, $f4
/* 5C760 8005BB60 240A01D6 */  addiu      $t2, $zero, 0x1d6
/* 5C764 8005BB64 240B00C0 */  addiu      $t3, $zero, 0xc0
/* 5C768 8005BB68 3C0C000C */  lui        $t4, 0xc
/* 5C76C 8005BB6C 35090009 */  ori        $t1, $t0, 9
/* 5C770 8005BB70 A4690094 */  sh         $t1, 0x94($v1)
/* 5C774 8005BB74 A46A0084 */  sh         $t2, 0x84($v1)
/* 5C778 8005BB78 A06B009F */  sb         $t3, 0x9f($v1)
/* 5C77C 8005BB7C AC6C0150 */  sw         $t4, 0x150($v1)
/* 5C780 8005BB80 AFA30024 */  sw         $v1, 0x24($sp)
/* 5C784 8005BB84 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5C788 8005BB88 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5C78C 8005BB8C E4620114 */  swc1       $f2, 0x114($v1)
/* 5C790 8005BB90 E4620110 */  swc1       $f2, 0x110($v1)
/* 5C794 8005BB94 E46C011C */  swc1       $f12, 0x11c($v1)
/* 5C798 8005BB98 E46C0118 */  swc1       $f12, 0x118($v1)
/* 5C79C 8005BB9C 0C0005E3 */  jal        func_8000178C
/* 5C7A0 8005BBA0 E4640148 */   swc1      $f4, 0x148($v1)
/* 5C7A4 8005BBA4 8FA30024 */  lw         $v1, 0x24($sp)
/* 5C7A8 8005BBA8 000268C0 */  sll        $t5, $v0, 3
/* 5C7AC 8005BBAC AC6D015C */  sw         $t5, 0x15c($v1)
.L8005BBB0:
/* 5C7B0 8005BBB0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005BBB4:
/* 5C7B4 8005BBB4 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5C7B8 8005BBB8 03E00008 */  jr         $ra
/* 5C7BC 8005BBBC 00000000 */   nop
