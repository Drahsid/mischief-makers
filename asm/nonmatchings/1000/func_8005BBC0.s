glabel func_8005BBC0
/* 5C7C0 8005BBC0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5C7C4 8005BBC4 AFA40040 */  sw         $a0, 0x40($sp)
/* 5C7C8 8005BBC8 97AE0042 */  lhu        $t6, 0x42($sp)
/* 5C7CC 8005BBCC 3C18800F */  lui        $t8, 0x800f
/* 5C7D0 8005BBD0 000E7880 */  sll        $t7, $t6, 2
/* 5C7D4 8005BBD4 01EE7823 */  subu       $t7, $t7, $t6
/* 5C7D8 8005BBD8 000F7880 */  sll        $t7, $t7, 2
/* 5C7DC 8005BBDC 01EE7821 */  addu       $t7, $t7, $t6
/* 5C7E0 8005BBE0 000F7880 */  sll        $t7, $t7, 2
/* 5C7E4 8005BBE4 01EE7823 */  subu       $t7, $t7, $t6
/* 5C7E8 8005BBE8 000F78C0 */  sll        $t7, $t7, 3
/* 5C7EC 8005BBEC 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 5C7F0 8005BBF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C7F4 8005BBF4 01F81821 */  addu       $v1, $t7, $t8
/* 5C7F8 8005BBF8 2419007F */  addiu      $t9, $zero, 0x7f
/* 5C7FC 8005BBFC A079009E */  sb         $t9, 0x9e($v1)
/* 5C800 8005BC00 0C0005E3 */  jal        func_8000178C
/* 5C804 8005BC04 AFA30018 */   sw        $v1, 0x18($sp)
/* 5C808 8005BC08 8FA30018 */  lw         $v1, 0x18($sp)
/* 5C80C 8005BC0C 97AA0042 */  lhu        $t2, 0x42($sp)
/* 5C810 8005BC10 846D0090 */  lh         $t5, 0x90($v1)
/* 5C814 8005BC14 846B0088 */  lh         $t3, 0x88($v1)
/* 5C818 8005BC18 846C008C */  lh         $t4, 0x8c($v1)
/* 5C81C 8005BC1C 3048003F */  andi       $t0, $v0, 0x3f
/* 5C820 8005BC20 25090040 */  addiu      $t1, $t0, 0x40
/* 5C824 8005BC24 240F01EE */  addiu      $t7, $zero, 0x1ee
/* 5C828 8005BC28 25AE0001 */  addiu      $t6, $t5, 1
/* 5C82C 8005BC2C AFAE002C */  sw         $t6, 0x2c($sp)
/* 5C830 8005BC30 AFAF0034 */  sw         $t7, 0x34($sp)
/* 5C834 8005BC34 24040009 */  addiu      $a0, $zero, 9
/* 5C838 8005BC38 A069009E */  sb         $t1, 0x9e($v1)
/* 5C83C 8005BC3C A7AA0020 */  sh         $t2, 0x20($sp)
/* 5C840 8005BC40 AFAB0024 */  sw         $t3, 0x24($sp)
/* 5C844 8005BC44 0C0171C2 */  jal        func_8005C708
/* 5C848 8005BC48 AFAC0028 */   sw        $t4, 0x28($sp)
/* 5C84C 8005BC4C 8FA30018 */  lw         $v1, 0x18($sp)
/* 5C850 8005BC50 00002025 */  or         $a0, $zero, $zero
/* 5C854 8005BC54 847800AE */  lh         $t8, 0xae($v1)
/* 5C858 8005BC58 00000000 */  nop
/* 5C85C 8005BC5C 0058C821 */  addu       $t9, $v0, $t8
/* 5C860 8005BC60 44992000 */  mtc1       $t9, $f4
/* 5C864 8005BC64 00000000 */  nop
/* 5C868 8005BC68 468021A0 */  cvt.s.w    $f6, $f4
/* 5C86C 8005BC6C 0C0171C2 */  jal        func_8005C708
/* 5C870 8005BC70 E7A6003C */   swc1      $f6, 0x3c($sp)
/* 5C874 8005BC74 00024480 */  sll        $t0, $v0, 0x12
/* 5C878 8005BC78 0C0005E3 */  jal        func_8000178C
/* 5C87C 8005BC7C AFA80038 */   sw        $t0, 0x38($sp)
/* 5C880 8005BC80 304300FF */  andi       $v1, $v0, 0xff
/* 5C884 8005BC84 28610080 */  slti       $at, $v1, 0x80
/* 5C888 8005BC88 10200003 */  beqz       $at, .L8005BC98
/* 5C88C 8005BC8C A3A2001F */   sb        $v0, 0x1f($sp)
/* 5C890 8005BC90 24690080 */  addiu      $t1, $v1, 0x80
/* 5C894 8005BC94 A3A9001F */  sb         $t1, 0x1f($sp)
.L8005BC98:
/* 5C898 8005BC98 0C0005E3 */  jal        func_8000178C
/* 5C89C 8005BC9C 00000000 */   nop
/* 5C8A0 8005BCA0 93AA001F */  lbu        $t2, 0x1f($sp)
/* 5C8A4 8005BCA4 240C0008 */  addiu      $t4, $zero, 8
/* 5C8A8 8005BCA8 004A001A */  div        $zero, $v0, $t2
/* 5C8AC 8005BCAC 15400002 */  bnez       $t2, .L8005BCB8
/* 5C8B0 8005BCB0 00000000 */   nop
/* 5C8B4 8005BCB4 0007000D */  break      7
.L8005BCB8:
/* 5C8B8 8005BCB8 2401FFFF */   addiu     $at, $zero, -1
/* 5C8BC 8005BCBC 15410004 */  bne        $t2, $at, .L8005BCD0
/* 5C8C0 8005BCC0 3C018000 */   lui       $at, 0x8000
/* 5C8C4 8005BCC4 14410002 */  bne        $v0, $at, .L8005BCD0
/* 5C8C8 8005BCC8 00000000 */   nop
/* 5C8CC 8005BCCC 0006000D */  break      6
.L8005BCD0:
/* 5C8D0 8005BCD0 A3AC001C */   sb        $t4, 0x1c($sp)
/* 5C8D4 8005BCD4 27A4001C */  addiu      $a0, $sp, 0x1c
/* 5C8D8 8005BCD8 00005810 */  mfhi       $t3
/* 5C8DC 8005BCDC A3AB001D */  sb         $t3, 0x1d($sp)
/* 5C8E0 8005BCE0 0C016A4C */  jal        func_8005A930
/* 5C8E4 8005BCE4 A3AB001E */   sb        $t3, 0x1e($sp)
/* 5C8E8 8005BCE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C8EC 8005BCEC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5C8F0 8005BCF0 03E00008 */  jr         $ra
/* 5C8F4 8005BCF4 00000000 */   nop
